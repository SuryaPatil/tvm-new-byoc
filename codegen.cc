#include <tvm/relay/expr_functor.h>
#include <tvm/relay/transform.h>
#include <tvm/relay/type.h>
#include <tvm/runtime/module.h>
#include <tvm/runtime/object.h>
#include <fstream>
#include <sstream>
#include "codegen_c.h"
#include <tvm/runtime/object.h>
#include <tvm/relay/op.h>
#include <tvm/relay/op_attr_types.h>  // Include the necessary header

namespace tvm {
namespace relay {
namespace contrib {

/**
 * ExprVisitor provides abilities to traverse subgraphs and collects the required information and generate subgraph functions
 * CodegenCBase provides abilities and utilities to generate wrapper functions
*/
class CodegenC : public ExprVisitor, public CodegenCBase {
  public:
    explicit CodegenC(const std::string& id) { this->ext_func_id_ = id; }

    // public accessor function that other classes can use to access the out_ private variable
    const std::vector<Output>& GetOut() const {
        return out_;
    }

    // Helper function to check if the operator is a specific operation
    bool IsOp(const tvm::relay::CallNode* call, const std::string& op_name) {  
        const Expr& expr = call->op;

        // Attempt to cast the expression to an OpNode
        const tvm::relay::OpNode* op_node = expr.as<tvm::relay::OpNode>();

        // Check if the cast was successful and the name matches
        return op_node != nullptr && op_node->name == op_name;
    }
    
    // Function to get the shape from a tensor type
    std::vector<int64_t> GetShape(const tvm::relay::Type& type) {
        // Return an empty vector if the type is not a tensor type
        return {};
    }

    void VisitExpr(tvm::RelayExpr const&){
      printf("const&\n"); 
    }
    void VisitExpr_(tvm::relay::ConstantNode const*){
      printf("const*\n");
    }

    /* Visits all call nodes when traversing the subgraph. 
     *  Each call node contains an operator that we want to offload to your hardware.
    */
    void VisitExpr_(const CallNode* call) { 
      std::ostringstream macro_stream;
      std::ostringstream decl_stream;
      std::ostringstream buf_stream;

      /* (1) Generate the function declaration */

      // Generate a unique function name you like.
      std::string func_name = ext_func_id_ + "_" + std::to_string(func_idx++);

      // Make function declaration string.
      macro_stream << "CSOURCE_BINARY_OP_" << call->args.size() << "D(" << func_name << ", ";

      // Check the operator type. call = call node
      if (IsOp(call, "add")) {
        macro_stream << "+";
      } else if (IsOp(call, "subtract")) {
        macro_stream << "-";
      } else if (IsOp(call, "multiply")) {
        macro_stream << "*";
      } else {
        LOG(FATAL) << "Unrecognized op";
      }

      /* Extracting the input tensor shape. */
      Type type = call->args[0]->checked_type(); // call-<args is of type tvm::Array<relay::Expr> args;
                                                 // so args[0] is of type Expr
                                                 // see tvm/relay/expr.h line 282
      const auto* tensor_type = type.as<tvm::relay::TensorTypeNode>(); // cast the type of the CallNode to a tensor type
                                                                       // see tvm/ir/tensortype.h line 61
      auto in_shape = tensor_type->shape; // get the shape of the tensor, which is of type Array<PrimExpr>                             
      for (size_t i = 0; i < in_shape.size(); ++i) {
        macro_stream << ", " << in_shape[i];
      }
      macro_stream << ");";

      // push the generated code to class member variables func_decl_. It means after we finish traversing the entire subgraph, we have collected all required function declarations 
     // and the only thing we need to do is having them compiled by GCC. 
      func_decl_.push_back(macro_stream.str());

      /**
       * (2) Generate the function call
      */

      // After generating a function declation, generate a function call with proper inputs and outputs
      bool first = true;
      decl_stream << func_name << "(";

      // To know which inputs or buffers we should put when calling this function, we have to visit its arguments
      for (size_t i = 0; i < call->args.size(); ++i) {
        VisitExpr(call->args[i]); // recursive call to visit arguments of the current function. 
                                  // An argument could be an output of another node or an input tensor

        // make sure every node updates a class variable out_ before leaving the visitor
        // out is filled with the output buffer name and size of arg_node
        for (auto out : out_) { // iterate over out_ and append the variable names to decl_stream as arguments for the 
                               // function call
          if (!first) {
            decl_stream << ", ";
          }
          first = false;
          decl_stream << out.name;
        }
      }
      // Do not close decl_stream with ")" yet, because we have not put the last argument (i.e., the output) to this call

      /* (3) Generate output buffer */
      // allocate an output buffer for every call node and copy the result in the very last buffer to the output tensor

      // This example only supports single output.
      const TensorTypeNode* type_node = call->checked_type().as<TensorTypeNode>();
      ICHECK(type_node != nullptr && runtime::TypeMatch(type_node->dtype, kDLFloat, 32))
            << "Only support single output tensor with float type";

      // Generate a unique buffer name.
      std::string out = "buf_" + std::to_string(buf_idx_++);

      // Extract the shape to be the buffer size.
    //  auto out_shape = GetShape(call->checked_type());
      auto out_shape = type_node->shape;
      int out_size = 1;
      for (size_t i = 0; i < out_shape.size(); ++i) {
          const PrimExpr& dim_expr = out_shape[i];
          const tvm::IntImmNode* int_imm = dim_expr.as<tvm::IntImmNode>();

          // Check if the cast was successful
          if (int_imm != nullptr) {
              // The cast was successful, you can now use int_imm
              int64_t value = int_imm->value;
              out_size *= value;
          }          
      }

      // Make the buffer allocation and push to the buffer declarations.
      buf_stream << "float* " << out << " = (float*)std::malloc(4 * " << out_size << ");";
      buf_decl_.push_back(buf_stream.str());

      // After we have allocated the output buffer, we can now close the function call string and 
      // push the generated function call to a class variable ext_func_body
      decl_stream << ", " << out << ");";
      ext_func_body.push_back(decl_stream.str());

      /* (4) Update output buffer */

      // To let the next node, which accepts the output of the current call node as its input, know which buffer it should take, 
      // we need to update the class variable out_ before leaving this visit function
      out_.clear();
      out_.push_back(Output{out, "float" ,out_size, false});
    }

    /* Handle non-call nodes (VarNodes) */
        // When visiting a VarNode, we simply update class variable out_ to pass the name hint so that the descendant call nodes 
    // can generate the correct function call
    void VisitExpr_(const VarNode* node) {
      
   //   ext_func_args_.push_back(node);

      out_.clear();
      out_.push_back({node->name_hint(), 0});
    }
    //  If your subgraphs contain other types of nodes besides CallNodes and VarNodes, such as TupleNode, 
    // then you also need to visit them and bypass the output buffer information

    // JIT function that emits a C function for the subgraph and uses the C code we just generated as the function body.
    std::string JIT(const std::vector<Output>& out) override { 
      // Write function macros
      for (auto decl : func_decl_) {
        code_stream_ << decl << "\n";
      }
      // Generates 3 functions:
      // (1) subgraph function with all C code we generated to execute a subgraph
      // (2) The wrapper function with a list of DLTensor arguments that casts data to the right type and invokes 
      // subgraph function
      // (3) The TVM runtime compatible function with TVM unified function arguments that unpacks TVM packed 
      // tensors and invokes wrapper function
      // All paramaters are class variables that were filled when we traversed the subgraph
      return JitImpl(ext_func_id_, ext_func_args_, buf_decl_, ext_func_body,"my_constant_data", out);
    }
  private:
    /*! \brief The function id that represents a C source function. */
    std::string ext_func_id_ = "";
    /*! \brief The index of a wrapped C function. */
    int func_idx = 0;
    /*! \brief The index of allocated buffers. */
    int buf_idx_ = 0;
    /*! \brief The arguments of a C compiler compatible function. */
    Array<Var> ext_func_args_;
    /*! \brief The statements of a C compiler compatible function. */
    std::vector<std::string> ext_func_body;
    /*! \brief The declaration statements of a C compiler compatible function. */
    std::vector<std::string> func_decl_;
    /*! \brief The declaration statements of buffers. */
    std::vector<std::string> buf_decl_;
    /*! \brief The name and index pairs for output. */
    std::vector<Output> out_;
};

/**
 * Invoked when TVM backend finds a function (subgraph) in a Relay graph that is annotated with the registered compiler tag
*/
class CSourceCodegen : public CSourceModuleCodegenBase {
 public:

  // Declaration for GetExtSymbol
std::string GetExtSymbol(const tvm::relay::Function& func) {
    // Implementation logic goes here
    return "some_symbol";  // Replace with the actual symbol
}


  // Pass a subgraph function, and generate the C code.
  void GenCFunc(const Function& func) { 
      
      ICHECK(func.defined()) << "Input error: expect a Relay function.";

      // Declaration of GetExtSymbol
     // std::string GetExtSymbol(const Function& func);

      // Record the external symbol for runtime lookup.
      auto sid = GetExtSymbol(func);

      CodegenC builder(sid);
      builder.VisitExpr(func->body);
      code_stream_ << builder.JIT(builder.GetOut());
  }

    // Use GenCFunc to generate the C code and wrap it as a C source module.
  // Creates a runtime module for the external library
  runtime::Module CreateCSourceModule(const ObjectRef& ref) override { 
    // Create headers
    code_stream_ << "#include <cstdint>\n";
    code_stream_ << "#include <iostream>\n";
    code_stream_ << "#include <cstdlib>\n";
    code_stream_ << "#include <stdio.h>\n";
    code_stream_ << "#include <cstring>\n";
    code_stream_ << "#include <tvm/runtime/c_runtime_api.h>\n";
    code_stream_ << "#include <dlpack/dlpack.h>\n";

        // Append some common macro for operator definition.
    const char* operator_macro = R"op_macro(
    void mul(tensor& a, tensor& b, tensor& c) {
      asm("ttmul %0, %1, %2"
          : "=r" (c)
          : "r" (a), "r" (b)
          );
    }
    )op_macro";

    code_stream_ << operator_macro << "\n\n";

    // Generate C code for the subgraph.
    if (ref->IsInstance<FunctionNode>()) { //  If the input ref is an instance of FunctionNode, generate C code for a single function
      GenCFunc(Downcast<Function>(ref));
    } else if (ref->IsInstance<runtime::ModuleNode>()) {
       runtime::Module mod = Downcast<runtime::Module>(ref);

       /* I am unsure how to get the functions from a Module*/
      // for (const auto& it : mod->functions) {
      //   GenCFunc(Downcast<Function>(it.second));
      // }
      LOG(FATAL) << "Unsure how to get the functions from a Module"
                << "\n";
    }
    else{
      LOG(FATAL) << "The input ref is expected to be a Relay function"
                << "\n";
    }

    const auto* pf = runtime::Registry::Get("module.csource_module_create");
    ICHECK(pf != nullptr) << "Cannot find csource module to create the external runtime module";
    return (*pf)(code_stream_.str(), "cc");
  }
  
 private:
  std::ostringstream code_stream_;
};

  /*
 * Implement a simple function to invoke our codegen and generate a runtime module
*/
runtime::Module CCompiler(const ObjectRef& ref) {
  CSourceCodegen csource;
  return csource.CreateCSourceModule(ref);
}

/*
 * Register this function to TVM backend
*/
TVM_REGISTER_GLOBAL("relay.ext.ccompiler").set_body_typed(CCompiler);

}  // namespace contrib
}  // namespace relay
}  // namespace tvm

int main(){
    printf("codegen tutorial\n");
    return 0; 
}