# TVM-BYOC
The goal of this project is to implement a codegen that generates C code for Relay IR subgraphs and a C source module. The C source module will be compiled by a TVM backend and deployed on a RISC-V CPU. 

## Installing TVM
Install the latest version of TVM by following the instructions here: https://tvm.apache.org/docs/install/from_source.html. Also be sure to download a pre-built version of LLVM, as mentioned in the linked tutorial.

## Installing Python
I recommend using python 3.8 to run the Python files in this repository.

## Obtaining TVM Relay IR of Single-Layered BERT model
One purpose of this project is to explore how one can convert a single-layered BERT model into Apache TVM’s intermediate representation (IR) and subsequently transform this IR into an executable. Below are instructions on how to use the two source files `export-bery.py` and `lower.py`to accomplish this task.

