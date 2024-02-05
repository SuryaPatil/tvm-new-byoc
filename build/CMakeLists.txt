cmake_minimum_required(VERSION 3.14 FATAL_ERROR)
project(bert_codegen LANGUAGES C CXX)

add_library(bert_codegen MODULE bert_codegen.c)  # Replace my_custom_op.c with your generated C code
target_include_directories(bert_codegen PRIVATE /home/supatiltvm/include)
target_link_libraries(bert_codegen PRIVATE /home/supatil/tvm/build/libtvm.so pthread dl)
