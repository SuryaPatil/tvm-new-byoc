# TVM
The goal of this project is to use the Apache TVM deep learning compiler framework to optimize the BERT language model and deploy it RISC-V CPU backend. So far, I have taken two approaches to accomplishing this. The first involves taking the BERT model's TVM Relay IR and converting it to an LLVM IR specific to our RISC-V+ extensions. The second approach involves taking the Relay IR and writing it as C/C++ that uses specially-named functions or inline assembly commands. These commands will then be given to a regulat LLVM RISC-V compiler. Both approaches are further discussed below, along with details on how to set up this project.  

## Project Setup
Describes the necessary software used to run the source files in this repository.

### Operating System
The source files in this repository were tested on Ubuntu 22.

### Installing Python
I recommend using python 3.8 to run the Python files in this repository. 

### Installing and Building TVM
Install and build the latest version of TVM by following the instructions here: https://tvm.apache.org/docs/install/from_source.html. Also be sure to download a pre-built version of LLVM, as mentioned in the linked tutorial. Finally, make sure to install the Python dependencies mentioned near the bottom of tutorial.

Once you have built TVM, ensure that the path to libtvm.so is in the library search path. You can add the library path to the LD_LIBRARY_PATH environment variable:

`export LD_LIBRARY_PATH=/home/supatil/tvm/build:$LD_LIBRARY_PATH` 


## Obtaining TVM Relay IR and LLVM IR of Single-Layered BERT model
One approach in deploying the BERT model on our hardware backend is to convert a single-layered BERT model into Apache TVM’s intermediate representation (IR) and subsequently transform this IR into an executable. The first step involves exporting the BERT model to ONNX.

In the project directory, run:

`python3.8 export-bert.py`

After executing this command, you should see a file called `single-layer.onnx` appear in the project directory. This file represents the BERT model in ONNX format. 

Next, run execute the following command: 

`python3.8 lower.py`

This command lowers the single-layered BERT model to an LLVM IR and run an executable version of the model. You can see this IR in the newly created file `output.ll`. One problem with this LLVM source code is that it uses long for-loops to perform matrix multiplications. However, we want the RISC-V CPU's instructions to be written without these for-loops. Hence, teaching LLVM to generate source code that involves simple tensor multiplication instructions is a key goal/challenge in finishing this project. 

## Writing Relay IR as C/C++
The second approach of this project involves writing the Relay IR of the BERT model as C/C++. We can do this by implementing a codegen that generates C code for the subgraph and a C source module to integrate into TVM runtime module. This approach follows the tutorial: https://tvm.apache.org/docs/dev/how_to/relay_bring_your_own_codegen.html#.

My implementation of the codegen is in the source files `codegen.h` and `codegen.c`

### Install necessary packages
I have found that running Apache TVM with C++ requires installing [`dmlc`](https://github.com/dmlc/dlpack) and [`dmlc-core`](https://github.com/dmlc/dmlc-core) . Clone both these repositories before compiling `codegen.c`

### Compiling and Running 
To compile the code generator, run 

`g++ -w -std=c++17 -I/path/to/tvm/include -I/path/to/dlpack/include -I/path/to/dmlc-core/include codegen.cc -o codegen -L/path/to/tvm/build -ltvm -lpthread -ldl`

Then, run the executable:

`./codegen`

One must still figure out how to register this codegen with the TVM backend and call it on the BERT Relay IR. 
