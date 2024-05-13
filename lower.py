
import onnx
import numpy as np
import tvm
from tvm import te
import tvm.relay as relay
from tvm.contrib.download import download_testdata
from tvm.contrib import graph_executor
from tvm import autotvm

# Load the ONNX model
model = onnx.load("single-layer.onnx")
#print(model)
# Check that the model is well formed
onnx.checker.check_model(model)
# Specify the RISC-V target with the desired attributes
target = tvm.target.Target( "llvm -mtriple=riscv64-unknown-linux-gnu -mcpu=generic-rv64")

# Which device to run on. Should be one of tvm.cpu() or tvm.cuda().
dev = tvm.cpu()
input_name = "1"
shape_dict = {input_name: (1,5)}
mod, params = relay.frontend.from_onnx(model)

#print((mod))

# The number of batches in an input.
batch_size = 1
# The length of each input sequence.
seq_len = 5

shape_dict = {"input_1": (batch_size, seq_len)}

with relay.build_config(opt_level= 3):
    graph, lib, params = relay.build_module.build(
        mod, target, params=params)

print(type(lib.get_source()))
llvm_ir_code = lib.get_source()

# save the LLVM IR to a file
with open("output.ll", "w") as f:
    f.write(llvm_ir_code)