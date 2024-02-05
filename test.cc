#include <tvm/relay/expr_functor.h>
#include <tvm/relay/transform.h>
#include <tvm/relay/type.h>
#include <tvm/runtime/module.h>
#include <tvm/runtime/object.h>
#include <fstream>
#include <sstream>

int main(){

        // Create a simple Relay constant expression
    auto data = tvm::relay::Var("data", tvm::relay::TensorType({1}, tvm::DataType::Float(32)));
    auto expr = tvm::relay::Function({data}, data, tvm::relay::Type(), {});

    // Print the Relay expression
    std::ostringstream os;
    os << expr;
    std::cout << "Relay expression:\n" << os.str() << std::endl;

    // Compile the Relay expression to a TVM module
    // auto mod = tvm::relay::transform::MakeModule(expr);

    // // Save the compiled module to a file (optional)
    // tvm::runtime::SaveToFile("compiled_module.tar", mod, true);

    // // Execute the TVM module
    // tvm::runtime::Module exec = tvm::relay::transform::Compile(mod, "llvm");



    printf("hello\n");
    return 0; 
}