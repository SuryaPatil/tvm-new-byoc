# TVM-BYOC
The goal of this project is to implement a codegen that generates C code for Relay IR subgraphs and a C source module. The C source module will be compiled by a TVM backend and deployed on a RISC-V CPU. 

## Operating System
The source files in this repository were tested on Ubuntu 22.

## Installing Python
I recommend using python 3.8 to run the Python files in this repository. 

## Installing and Building TVM
Install and build the latest version of TVM by following the instructions here: https://tvm.apache.org/docs/install/from_source.html. Also be sure to download a pre-built version of LLVM, as mentioned in the linked tutorial. Finally, make sure to install the Python dependencies mentioned near the bottom of tutorial.

Once you have built TVM, ensure that the path to libtvm.so is in the library search path. You can add the library path to the LD_LIBRARY_PATH environment variable:

`export LD_LIBRARY_PATH=/home/supatil/tvm/build:$LD_LIBRARY_PATH` 


### Obtaining TVM Relay IR and LLVM IR of Single-Layered BERT model
One purpose of this project is to explore how one can convert a single-layered BERT model into Apache TVM’s intermediate representation (IR) and subsequently transform this IR into an executable. The first step involves exporting the BERT model to ONNX.

In the project directory, run:

`python3.8 export-bert.py`

After executing this command, you should see a file called `single-layer.onnx` appear in the project directory. This file represents the BERT model in ONNX format. 

Next, run execute the following command: 

`python3.8 lower.py`

This command lowers the single-layered BERT model to an LLVM IR and run an executable version of the model. You can see this IR in the newly created file `output.ll`

### 

