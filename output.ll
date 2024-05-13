; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-linux-gnu"

%0 = type { double }
%1 = type { ptr, %2, i32, %3, ptr, ptr, i64 }
%2 = type { i32, i32 }
%3 = type { i8, i8, i16 }
%4 = type { ptr, i32 }
%closure_loop_parallel_ax0.ax1.fused = type { ptr, ptr, ptr, ptr }
%closure_loop_parallel_ax0.ax1.fused.0 = type { ptr, ptr }
%closure_loop_parallel_ax0.ax1.fused.ax2.fused = type { ptr, ptr }
%closure_loop_parallel_b.i.outer.fused.j.outer.fused = type { ptr, ptr, ptr }
%closure_loop_parallel_b.i.outer.fused.j.outer.fused.1 = type { ptr, ptr, ptr }
%closure_loop_parallel_x.outer.y.outer.fused = type { ptr, ptr, ptr }
%closure_loop_parallel_x.outer.y.outer.fused.2 = type { ptr, ptr, ptr }
%closure_loop_parallel_x.outer.y.outer.fused.3 = type { ptr, ptr, ptr }
%closure_loop_parallel_ax1.outer.ax0.outer.fused = type { i32, ptr, ptr, ptr, ptr }
%closure_loop_parallel_i0.i1.fused.i2.fused = type { ptr, ptr }
%closure_loop_parallel_ax0 = type { ptr, ptr }
%closure_loop_parallel_ax0.ax1.fused.4 = type { ptr, ptr }
%closure_loop_parallel_ax0.ax1.fused.5 = type { ptr, ptr, ptr, ptr }
%closure_loop_parallel_ax0.6 = type { ptr, ptr, ptr }
%closure_loop_parallel_ax0.ax1.fused.7 = type { ptr, ptr, ptr }
%closure_loop_parallel_ax0.ax1.fused.8 = type { ptr, ptr, ptr }
%closure_loop_parallel_ax0.ax1.fused.9 = type { ptr, ptr, ptr }
%closure_loop_parallel_ax0.ax1.fused.10 = type { ptr, ptr, ptr }
%closure_loop_parallel_ax0.11 = type { ptr, ptr }
%closure_loop_parallel_ax0.ax1.fused.12 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%closure_loop_parallel_ax0.ax1.fused.14 = type { ptr, ptr }
%closure_loop_parallel_ax0.ax1.fused.ax2.fused.13 = type { ptr, ptr, ptr }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global ptr null, align 8
@__TVMBackendParallelLaunch = linkonce dllexport local_unnamed_addr global ptr null, align 8
@.str = private constant [95 x i8] c"Assert fail: num_args == 4, tvmgen_default_fused_less_add_where_take_add: num_args should be 4\00", align 1
@.str.1 = private constant [150 x i8] c"Assert fail: p0_code == 3 or p0_code == 13 or p0_code == 7 or p0_code == 4, tvmgen_default_fused_less_add_where_take_add: Expect arg[0] to be pointer\00", align 1
@.str.2 = private constant [150 x i8] c"Assert fail: p1_code == 3 or p1_code == 13 or p1_code == 7 or p1_code == 4, tvmgen_default_fused_less_add_where_take_add: Expect arg[1] to be pointer\00", align 1
@.str.3 = private constant [150 x i8] c"Assert fail: p2_code == 3 or p2_code == 13 or p2_code == 7 or p2_code == 4, tvmgen_default_fused_less_add_where_take_add: Expect arg[2] to be pointer\00", align 1
@.str.4 = private constant [162 x i8] c"Assert fail: T_add_code == 3 or T_add_code == 13 or T_add_code == 7 or T_add_code == 4, tvmgen_default_fused_less_add_where_take_add: Expect arg[3] to be pointer\00", align 1
@.str.5 = private constant [131 x i8] c"Assert fail: 2 == T.tvm_struct_get(p0, 0, 4, \22int32\22), tvmgen_default_fused_less_add_where_take_add.p0.ndim is expected to equal 2\00", align 1
@.str.6 = private constant [253 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 5, \22uint8\22) == T.uint8(0) and T.tvm_struct_get(p0, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p0, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_less_add_where_take_add.p0.dtype is expected to be int32\00", align 1
@.str.7 = private constant [269 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_p0_shape[0]) == 1, Argument tvmgen_default_fused_less_add_where_take_add.p0.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_p0_shape[0])\00", align 1
@.str.8 = private constant [269 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_p0_shape[1]) == 5, Argument tvmgen_default_fused_less_add_where_take_add.p0.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_p0_shape[1])\00", align 1
@.str.9 = private constant [181 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_p0_strides[1]), tvmgen_default_fused_less_add_where_take_add.p0.strides: expected to be compact array\00", align 1
@.str.10 = private constant [218 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22), Argument tvmgen_default_fused_less_add_where_take_add.p0.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22)\00", align 1
@.str.11 = private constant [198 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_less_add_where_take_add.p0.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p0, 0, 10, \22int32\22)\00", align 1
@.str.12 = private constant [131 x i8] c"Assert fail: 2 == T.tvm_struct_get(p1, 0, 4, \22int32\22), tvmgen_default_fused_less_add_where_take_add.p1.ndim is expected to equal 2\00", align 1
@.str.13 = private constant [255 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p1, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p1, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_less_add_where_take_add.p1.dtype is expected to be float32\00", align 1
@.str.14 = private constant [277 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_p1_shape[0]) == 30522, Argument tvmgen_default_fused_less_add_where_take_add.p1.shape[0] has an unsatisfied constraint: 30522 == T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_p1_shape[0])\00", align 1
@.str.15 = private constant [273 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_p1_shape[1]) == 768, Argument tvmgen_default_fused_less_add_where_take_add.p1.shape[1] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_p1_shape[1])\00", align 1
@.str.16 = private constant [268 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_p1_strides[1]) and 768 == T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_p1_strides[0]), tvmgen_default_fused_less_add_where_take_add.p1.strides: expected to be compact array\00", align 1
@.str.17 = private constant [218 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22), Argument tvmgen_default_fused_less_add_where_take_add.p1.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22)\00", align 1
@.str.18 = private constant [198 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_less_add_where_take_add.p1.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p1, 0, 10, \22int32\22)\00", align 1
@.str.19 = private constant [204 x i8] c"Assert fail: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22), Argument tvmgen_default_fused_less_add_where_take_add.p1.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22)\00", align 1
@.str.20 = private constant [131 x i8] c"Assert fail: 3 == T.tvm_struct_get(p2, 0, 4, \22int32\22), tvmgen_default_fused_less_add_where_take_add.p2.ndim is expected to equal 3\00", align 1
@.str.21 = private constant [255 x i8] c"Assert fail: T.tvm_struct_get(p2, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p2, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p2, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_less_add_where_take_add.p2.dtype is expected to be float32\00", align 1
@.str.22 = private constant [269 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_p2_shape[0]) == 1, Argument tvmgen_default_fused_less_add_where_take_add.p2.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_p2_shape[0])\00", align 1
@.str.23 = private constant [269 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_p2_shape[1]) == 5, Argument tvmgen_default_fused_less_add_where_take_add.p2.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_p2_shape[1])\00", align 1
@.str.24 = private constant [273 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_p2_shape[2]) == 768, Argument tvmgen_default_fused_less_add_where_take_add.p2.shape[2] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_p2_shape[2])\00", align 1
@.str.25 = private constant [268 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_p2_strides[2]) and 768 == T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_p2_strides[1]), tvmgen_default_fused_less_add_where_take_add.p2.strides: expected to be compact array\00", align 1
@.str.26 = private constant [218 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p2, 0, 8, \22uint64\22), Argument tvmgen_default_fused_less_add_where_take_add.p2.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p2, 0, 8, \22uint64\22)\00", align 1
@.str.27 = private constant [198 x i8] c"Assert fail: T.tvm_struct_get(p2, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_less_add_where_take_add.p2.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p2, 0, 10, \22int32\22)\00", align 1
@.str.28 = private constant [204 x i8] c"Assert fail: dev_id == T.tvm_struct_get(p2, 0, 9, \22int32\22), Argument tvmgen_default_fused_less_add_where_take_add.p2.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(p2, 0, 9, \22int32\22)\00", align 1
@.str.29 = private constant [137 x i8] c"Assert fail: 3 == T.tvm_struct_get(T_add, 0, 4, \22int32\22), tvmgen_default_fused_less_add_where_take_add.T_add.ndim is expected to equal 3\00", align 1
@.str.30 = private constant [267 x i8] c"Assert fail: T.tvm_struct_get(T_add, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(T_add, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(T_add, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_less_add_where_take_add.T_add.dtype is expected to be float32\00", align 1
@.str.31 = private constant [278 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_T_add_shape[0]) == 1, Argument tvmgen_default_fused_less_add_where_take_add.T_add.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_T_add_shape[0])\00", align 1
@.str.32 = private constant [278 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_T_add_shape[1]) == 5, Argument tvmgen_default_fused_less_add_where_take_add.T_add.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_T_add_shape[1])\00", align 1
@.str.33 = private constant [282 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_T_add_shape[2]) == 768, Argument tvmgen_default_fused_less_add_where_take_add.T_add.shape[2] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_T_add_shape[2])\00", align 1
@.str.34 = private constant [277 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_T_add_strides[2]) and 768 == T.Cast(\22int32\22, tvmgen_default_fused_less_add_where_take_add_T_add_strides[1]), tvmgen_default_fused_less_add_where_take_add.T_add.strides: expected to be compact array\00", align 1
@.str.35 = private constant [227 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(T_add, 0, 8, \22uint64\22), Argument tvmgen_default_fused_less_add_where_take_add.T_add.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(T_add, 0, 8, \22uint64\22)\00", align 1
@.str.36 = private constant [207 x i8] c"Assert fail: T.tvm_struct_get(T_add, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_less_add_where_take_add.T_add.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(T_add, 0, 10, \22int32\22)\00", align 1
@.str.37 = private constant [213 x i8] c"Assert fail: dev_id == T.tvm_struct_get(T_add, 0, 9, \22int32\22), Argument tvmgen_default_fused_less_add_where_take_add.T_add.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(T_add, 0, 9, \22int32\22)\00", align 1
@.str.38 = private constant [76 x i8] c"Assert fail: num_args == 2, tvmgen_default_fused_mean: num_args should be 2\00", align 1
@.str.39 = private constant [131 x i8] c"Assert fail: p0_code == 3 or p0_code == 13 or p0_code == 7 or p0_code == 4, tvmgen_default_fused_mean: Expect arg[0] to be pointer\00", align 1
@.str.40 = private constant [155 x i8] c"Assert fail: T_divide_code == 3 or T_divide_code == 13 or T_divide_code == 7 or T_divide_code == 4, tvmgen_default_fused_mean: Expect arg[1] to be pointer\00", align 1
@.str.41 = private constant [112 x i8] c"Assert fail: 3 == T.tvm_struct_get(p0, 0, 4, \22int32\22), tvmgen_default_fused_mean.p0.ndim is expected to equal 3\00", align 1
@.str.42 = private constant [236 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p0, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p0, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_mean.p0.dtype is expected to be float32\00", align 1
@.str.43 = private constant [212 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_mean_p0_shape[0]) == 1, Argument tvmgen_default_fused_mean.p0.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_mean_p0_shape[0])\00", align 1
@.str.44 = private constant [212 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_mean_p0_shape[1]) == 5, Argument tvmgen_default_fused_mean.p0.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_mean_p0_shape[1])\00", align 1
@.str.45 = private constant [216 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_mean_p0_shape[2]) == 768, Argument tvmgen_default_fused_mean.p0.shape[2] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_mean_p0_shape[2])\00", align 1
@.str.46 = private constant [211 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_mean_p0_strides[2]) and 768 == T.Cast(\22int32\22, tvmgen_default_fused_mean_p0_strides[1]), tvmgen_default_fused_mean.p0.strides: expected to be compact array\00", align 1
@.str.47 = private constant [199 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22), Argument tvmgen_default_fused_mean.p0.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22)\00", align 1
@.str.48 = private constant [179 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_mean.p0.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p0, 0, 10, \22int32\22)\00", align 1
@.str.49 = private constant [124 x i8] c"Assert fail: 3 == T.tvm_struct_get(T_divide, 0, 4, \22int32\22), tvmgen_default_fused_mean.T_divide.ndim is expected to equal 3\00", align 1
@.str.50 = private constant [260 x i8] c"Assert fail: T.tvm_struct_get(T_divide, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(T_divide, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(T_divide, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_mean.T_divide.dtype is expected to be float32\00", align 1
@.str.51 = private constant [230 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_mean_T_divide_shape[0]) == 1, Argument tvmgen_default_fused_mean.T_divide.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_mean_T_divide_shape[0])\00", align 1
@.str.52 = private constant [230 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_mean_T_divide_shape[1]) == 5, Argument tvmgen_default_fused_mean.T_divide.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_mean_T_divide_shape[1])\00", align 1
@.str.53 = private constant [230 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_mean_T_divide_shape[2]) == 1, Argument tvmgen_default_fused_mean.T_divide.shape[2] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_mean_T_divide_shape[2])\00", align 1
@.str.54 = private constant [155 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_mean_T_divide_strides[1]), tvmgen_default_fused_mean.T_divide.strides: expected to be compact array\00", align 1
@.str.55 = private constant [217 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(T_divide, 0, 8, \22uint64\22), Argument tvmgen_default_fused_mean.T_divide.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(T_divide, 0, 8, \22uint64\22)\00", align 1
@.str.56 = private constant [197 x i8] c"Assert fail: T.tvm_struct_get(T_divide, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_mean.T_divide.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(T_divide, 0, 10, \22int32\22)\00", align 1
@.str.57 = private constant [203 x i8] c"Assert fail: dev_id == T.tvm_struct_get(T_divide, 0, 9, \22int32\22), Argument tvmgen_default_fused_mean.T_divide.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(T_divide, 0, 9, \22int32\22)\00", align 1
@.str.60 = private constant [87 x i8] c"Assert fail: num_args == 3, tvmgen_default_fused_nn_batch_matmul: num_args should be 3\00", align 1
@.str.61 = private constant [142 x i8] c"Assert fail: p0_code == 3 or p0_code == 13 or p0_code == 7 or p0_code == 4, tvmgen_default_fused_nn_batch_matmul: Expect arg[0] to be pointer\00", align 1
@.str.62 = private constant [142 x i8] c"Assert fail: p1_code == 3 or p1_code == 13 or p1_code == 7 or p1_code == 4, tvmgen_default_fused_nn_batch_matmul: Expect arg[1] to be pointer\00", align 1
@.str.63 = private constant [202 x i8] c"Assert fail: T_batch_matmul_NT_code == 3 or T_batch_matmul_NT_code == 13 or T_batch_matmul_NT_code == 7 or T_batch_matmul_NT_code == 4, tvmgen_default_fused_nn_batch_matmul: Expect arg[2] to be pointer\00", align 1
@.str.64 = private constant [123 x i8] c"Assert fail: 3 == T.tvm_struct_get(p0, 0, 4, \22int32\22), tvmgen_default_fused_nn_batch_matmul.p0.ndim is expected to equal 3\00", align 1
@.str.65 = private constant [247 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p0, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p0, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_nn_batch_matmul.p0.dtype is expected to be float32\00", align 1
@.str.66 = private constant [247 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_p0_shape[0]) == 12, Argument tvmgen_default_fused_nn_batch_matmul.p0.shape[0] has an unsatisfied constraint: 12 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_p0_shape[0])\00", align 1
@.str.67 = private constant [245 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_p0_shape[1]) == 5, Argument tvmgen_default_fused_nn_batch_matmul.p0.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_p0_shape[1])\00", align 1
@.str.68 = private constant [247 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_p0_shape[2]) == 64, Argument tvmgen_default_fused_nn_batch_matmul.p0.shape[2] has an unsatisfied constraint: 64 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_p0_shape[2])\00", align 1
@.str.69 = private constant [322 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_p0_strides[2]) and 64 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_p0_strides[1]) and 320 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_p0_strides[0]), tvmgen_default_fused_nn_batch_matmul.p0.strides: expected to be compact array\00", align 1
@.str.70 = private constant [210 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22), Argument tvmgen_default_fused_nn_batch_matmul.p0.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22)\00", align 1
@.str.71 = private constant [190 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_nn_batch_matmul.p0.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p0, 0, 10, \22int32\22)\00", align 1
@.str.72 = private constant [123 x i8] c"Assert fail: 3 == T.tvm_struct_get(p1, 0, 4, \22int32\22), tvmgen_default_fused_nn_batch_matmul.p1.ndim is expected to equal 3\00", align 1
@.str.73 = private constant [247 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p1, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p1, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_nn_batch_matmul.p1.dtype is expected to be float32\00", align 1
@.str.74 = private constant [247 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_p1_shape[0]) == 12, Argument tvmgen_default_fused_nn_batch_matmul.p1.shape[0] has an unsatisfied constraint: 12 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_p1_shape[0])\00", align 1
@.str.75 = private constant [245 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_p1_shape[1]) == 5, Argument tvmgen_default_fused_nn_batch_matmul.p1.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_p1_shape[1])\00", align 1
@.str.76 = private constant [247 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_p1_shape[2]) == 64, Argument tvmgen_default_fused_nn_batch_matmul.p1.shape[2] has an unsatisfied constraint: 64 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_p1_shape[2])\00", align 1
@.str.77 = private constant [322 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_p1_strides[2]) and 64 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_p1_strides[1]) and 320 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_p1_strides[0]), tvmgen_default_fused_nn_batch_matmul.p1.strides: expected to be compact array\00", align 1
@.str.78 = private constant [210 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22), Argument tvmgen_default_fused_nn_batch_matmul.p1.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22)\00", align 1
@.str.79 = private constant [190 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_nn_batch_matmul.p1.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p1, 0, 10, \22int32\22)\00", align 1
@.str.80 = private constant [196 x i8] c"Assert fail: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22), Argument tvmgen_default_fused_nn_batch_matmul.p1.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22)\00", align 1
@.str.81 = private constant [153 x i8] c"Assert fail: 3 == T.tvm_struct_get(T_batch_matmul_NT, 0, 4, \22int32\22), tvmgen_default_fused_nn_batch_matmul.T_batch_matmul_NT.ndim is expected to equal 3\00", align 1
@.str.82 = private constant [307 x i8] c"Assert fail: T.tvm_struct_get(T_batch_matmul_NT, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(T_batch_matmul_NT, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(T_batch_matmul_NT, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_nn_batch_matmul.T_batch_matmul_NT.dtype is expected to be float32\00", align 1
@.str.83 = private constant [292 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_T_batch_matmul_NT_shape[0]) == 12, Argument tvmgen_default_fused_nn_batch_matmul.T_batch_matmul_NT.shape[0] has an unsatisfied constraint: 12 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_T_batch_matmul_NT_shape[0])\00", align 1
@.str.84 = private constant [290 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_T_batch_matmul_NT_shape[1]) == 5, Argument tvmgen_default_fused_nn_batch_matmul.T_batch_matmul_NT.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_T_batch_matmul_NT_shape[1])\00", align 1
@.str.85 = private constant [290 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_T_batch_matmul_NT_shape[2]) == 5, Argument tvmgen_default_fused_nn_batch_matmul.T_batch_matmul_NT.shape[2] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_T_batch_matmul_NT_shape[2])\00", align 1
@.str.86 = private constant [380 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_T_batch_matmul_NT_strides[2]) and 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_T_batch_matmul_NT_strides[1]) and 25 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_T_batch_matmul_NT_strides[0]), tvmgen_default_fused_nn_batch_matmul.T_batch_matmul_NT.strides: expected to be compact array\00", align 1
@.str.87 = private constant [255 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(T_batch_matmul_NT, 0, 8, \22uint64\22), Argument tvmgen_default_fused_nn_batch_matmul.T_batch_matmul_NT.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(T_batch_matmul_NT, 0, 8, \22uint64\22)\00", align 1
@.str.88 = private constant [235 x i8] c"Assert fail: T.tvm_struct_get(T_batch_matmul_NT, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_nn_batch_matmul.T_batch_matmul_NT.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(T_batch_matmul_NT, 0, 10, \22int32\22)\00", align 1
@.str.89 = private constant [241 x i8] c"Assert fail: dev_id == T.tvm_struct_get(T_batch_matmul_NT, 0, 9, \22int32\22), Argument tvmgen_default_fused_nn_batch_matmul.T_batch_matmul_NT.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(T_batch_matmul_NT, 0, 9, \22int32\22)\00", align 1
@.str.91 = private constant [89 x i8] c"Assert fail: num_args == 3, tvmgen_default_fused_nn_batch_matmul_1: num_args should be 3\00", align 1
@.str.92 = private constant [144 x i8] c"Assert fail: p0_code == 3 or p0_code == 13 or p0_code == 7 or p0_code == 4, tvmgen_default_fused_nn_batch_matmul_1: Expect arg[0] to be pointer\00", align 1
@.str.93 = private constant [144 x i8] c"Assert fail: p1_code == 3 or p1_code == 13 or p1_code == 7 or p1_code == 4, tvmgen_default_fused_nn_batch_matmul_1: Expect arg[1] to be pointer\00", align 1
@.str.94 = private constant [204 x i8] c"Assert fail: T_batch_matmul_NT_code == 3 or T_batch_matmul_NT_code == 13 or T_batch_matmul_NT_code == 7 or T_batch_matmul_NT_code == 4, tvmgen_default_fused_nn_batch_matmul_1: Expect arg[2] to be pointer\00", align 1
@.str.95 = private constant [125 x i8] c"Assert fail: 3 == T.tvm_struct_get(p0, 0, 4, \22int32\22), tvmgen_default_fused_nn_batch_matmul_1.p0.ndim is expected to equal 3\00", align 1
@.str.96 = private constant [249 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p0, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p0, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_nn_batch_matmul_1.p0.dtype is expected to be float32\00", align 1
@.str.97 = private constant [253 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_p0_shape[0]) == 12, Argument tvmgen_default_fused_nn_batch_matmul_1.p0.shape[0] has an unsatisfied constraint: 12 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_p0_shape[0])\00", align 1
@.str.98 = private constant [251 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_p0_shape[1]) == 5, Argument tvmgen_default_fused_nn_batch_matmul_1.p0.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_p0_shape[1])\00", align 1
@.str.99 = private constant [251 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_p0_shape[2]) == 5, Argument tvmgen_default_fused_nn_batch_matmul_1.p0.shape[2] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_p0_shape[2])\00", align 1
@.str.100 = private constant [328 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_p0_strides[2]) and 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_p0_strides[1]) and 25 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_p0_strides[0]), tvmgen_default_fused_nn_batch_matmul_1.p0.strides: expected to be compact array\00", align 1
@.str.101 = private constant [212 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22), Argument tvmgen_default_fused_nn_batch_matmul_1.p0.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22)\00", align 1
@.str.102 = private constant [192 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_nn_batch_matmul_1.p0.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p0, 0, 10, \22int32\22)\00", align 1
@.str.103 = private constant [125 x i8] c"Assert fail: 3 == T.tvm_struct_get(p1, 0, 4, \22int32\22), tvmgen_default_fused_nn_batch_matmul_1.p1.ndim is expected to equal 3\00", align 1
@.str.104 = private constant [249 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p1, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p1, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_nn_batch_matmul_1.p1.dtype is expected to be float32\00", align 1
@.str.105 = private constant [253 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_p1_shape[0]) == 12, Argument tvmgen_default_fused_nn_batch_matmul_1.p1.shape[0] has an unsatisfied constraint: 12 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_p1_shape[0])\00", align 1
@.str.106 = private constant [253 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_p1_shape[1]) == 64, Argument tvmgen_default_fused_nn_batch_matmul_1.p1.shape[1] has an unsatisfied constraint: 64 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_p1_shape[1])\00", align 1
@.str.107 = private constant [251 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_p1_shape[2]) == 5, Argument tvmgen_default_fused_nn_batch_matmul_1.p1.shape[2] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_p1_shape[2])\00", align 1
@.str.108 = private constant [329 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_p1_strides[2]) and 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_p1_strides[1]) and 320 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_p1_strides[0]), tvmgen_default_fused_nn_batch_matmul_1.p1.strides: expected to be compact array\00", align 1
@.str.109 = private constant [212 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22), Argument tvmgen_default_fused_nn_batch_matmul_1.p1.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22)\00", align 1
@.str.110 = private constant [192 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_nn_batch_matmul_1.p1.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p1, 0, 10, \22int32\22)\00", align 1
@.str.111 = private constant [198 x i8] c"Assert fail: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22), Argument tvmgen_default_fused_nn_batch_matmul_1.p1.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22)\00", align 1
@.str.112 = private constant [155 x i8] c"Assert fail: 3 == T.tvm_struct_get(T_batch_matmul_NT, 0, 4, \22int32\22), tvmgen_default_fused_nn_batch_matmul_1.T_batch_matmul_NT.ndim is expected to equal 3\00", align 1
@.str.113 = private constant [309 x i8] c"Assert fail: T.tvm_struct_get(T_batch_matmul_NT, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(T_batch_matmul_NT, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(T_batch_matmul_NT, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_nn_batch_matmul_1.T_batch_matmul_NT.dtype is expected to be float32\00", align 1
@.str.114 = private constant [298 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_T_batch_matmul_NT_shape[0]) == 12, Argument tvmgen_default_fused_nn_batch_matmul_1.T_batch_matmul_NT.shape[0] has an unsatisfied constraint: 12 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_T_batch_matmul_NT_shape[0])\00", align 1
@.str.115 = private constant [296 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_T_batch_matmul_NT_shape[1]) == 5, Argument tvmgen_default_fused_nn_batch_matmul_1.T_batch_matmul_NT.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_T_batch_matmul_NT_shape[1])\00", align 1
@.str.116 = private constant [298 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_T_batch_matmul_NT_shape[2]) == 64, Argument tvmgen_default_fused_nn_batch_matmul_1.T_batch_matmul_NT.shape[2] has an unsatisfied constraint: 64 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_T_batch_matmul_NT_shape[2])\00", align 1
@.str.117 = private constant [390 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_T_batch_matmul_NT_strides[2]) and 64 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_T_batch_matmul_NT_strides[1]) and 320 == T.Cast(\22int32\22, tvmgen_default_fused_nn_batch_matmul_1_T_batch_matmul_NT_strides[0]), tvmgen_default_fused_nn_batch_matmul_1.T_batch_matmul_NT.strides: expected to be compact array\00", align 1
@.str.118 = private constant [257 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(T_batch_matmul_NT, 0, 8, \22uint64\22), Argument tvmgen_default_fused_nn_batch_matmul_1.T_batch_matmul_NT.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(T_batch_matmul_NT, 0, 8, \22uint64\22)\00", align 1
@.str.119 = private constant [237 x i8] c"Assert fail: T.tvm_struct_get(T_batch_matmul_NT, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_nn_batch_matmul_1.T_batch_matmul_NT.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(T_batch_matmul_NT, 0, 10, \22int32\22)\00", align 1
@.str.120 = private constant [243 x i8] c"Assert fail: dev_id == T.tvm_struct_get(T_batch_matmul_NT, 0, 9, \22int32\22), Argument tvmgen_default_fused_nn_batch_matmul_1.T_batch_matmul_NT.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(T_batch_matmul_NT, 0, 9, \22int32\22)\00", align 1
@.str.122 = private constant [93 x i8] c"Assert fail: num_args == 3, tvmgen_default_fused_nn_contrib_dense_pack: num_args should be 3\00", align 1
@.str.123 = private constant [148 x i8] c"Assert fail: p0_code == 3 or p0_code == 13 or p0_code == 7 or p0_code == 4, tvmgen_default_fused_nn_contrib_dense_pack: Expect arg[0] to be pointer\00", align 1
@.str.124 = private constant [148 x i8] c"Assert fail: p1_code == 3 or p1_code == 13 or p1_code == 7 or p1_code == 4, tvmgen_default_fused_nn_contrib_dense_pack: Expect arg[1] to be pointer\00", align 1
@.str.125 = private constant [168 x i8] c"Assert fail: compute_code == 3 or compute_code == 13 or compute_code == 7 or compute_code == 4, tvmgen_default_fused_nn_contrib_dense_pack: Expect arg[2] to be pointer\00", align 1
@.str.126 = private constant [129 x i8] c"Assert fail: 2 == T.tvm_struct_get(p0, 0, 4, \22int32\22), tvmgen_default_fused_nn_contrib_dense_pack.p0.ndim is expected to equal 2\00", align 1
@.str.127 = private constant [253 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p0, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p0, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_nn_contrib_dense_pack.p0.dtype is expected to be float32\00", align 1
@.str.128 = private constant [263 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_p0_shape[0]) == 5, Argument tvmgen_default_fused_nn_contrib_dense_pack.p0.shape[0] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_p0_shape[0])\00", align 1
@.str.129 = private constant [267 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_p0_shape[1]) == 768, Argument tvmgen_default_fused_nn_contrib_dense_pack.p0.shape[1] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_p0_shape[1])\00", align 1
@.str.130 = private constant [262 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_p0_strides[1]) and 768 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_p0_strides[0]), tvmgen_default_fused_nn_contrib_dense_pack.p0.strides: expected to be compact array\00", align 1
@.str.131 = private constant [216 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22), Argument tvmgen_default_fused_nn_contrib_dense_pack.p0.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22)\00", align 1
@.str.132 = private constant [196 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_nn_contrib_dense_pack.p0.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p0, 0, 10, \22int32\22)\00", align 1
@.str.133 = private constant [129 x i8] c"Assert fail: 3 == T.tvm_struct_get(p1, 0, 4, \22int32\22), tvmgen_default_fused_nn_contrib_dense_pack.p1.ndim is expected to equal 3\00", align 1
@.str.134 = private constant [253 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p1, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p1, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_nn_contrib_dense_pack.p1.dtype is expected to be float32\00", align 1
@.str.135 = private constant [265 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_p1_shape[0]) == 96, Argument tvmgen_default_fused_nn_contrib_dense_pack.p1.shape[0] has an unsatisfied constraint: 96 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_p1_shape[0])\00", align 1
@.str.136 = private constant [267 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_p1_shape[1]) == 768, Argument tvmgen_default_fused_nn_contrib_dense_pack.p1.shape[1] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_p1_shape[1])\00", align 1
@.str.137 = private constant [263 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_p1_shape[2]) == 8, Argument tvmgen_default_fused_nn_contrib_dense_pack.p1.shape[2] has an unsatisfied constraint: 8 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_p1_shape[2])\00", align 1
@.str.138 = private constant [346 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_p1_strides[2]) and 8 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_p1_strides[1]) and 6144 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_p1_strides[0]), tvmgen_default_fused_nn_contrib_dense_pack.p1.strides: expected to be compact array\00", align 1
@.str.139 = private constant [216 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22), Argument tvmgen_default_fused_nn_contrib_dense_pack.p1.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22)\00", align 1
@.str.140 = private constant [196 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_nn_contrib_dense_pack.p1.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p1, 0, 10, \22int32\22)\00", align 1
@.str.141 = private constant [202 x i8] c"Assert fail: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22), Argument tvmgen_default_fused_nn_contrib_dense_pack.p1.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22)\00", align 1
@.str.142 = private constant [139 x i8] c"Assert fail: 2 == T.tvm_struct_get(compute, 0, 4, \22int32\22), tvmgen_default_fused_nn_contrib_dense_pack.compute.ndim is expected to equal 2\00", align 1
@.str.143 = private constant [273 x i8] c"Assert fail: T.tvm_struct_get(compute, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(compute, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(compute, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_nn_contrib_dense_pack.compute.dtype is expected to be float32\00", align 1
@.str.144 = private constant [278 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_compute_shape[0]) == 5, Argument tvmgen_default_fused_nn_contrib_dense_pack.compute.shape[0] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_compute_shape[0])\00", align 1
@.str.145 = private constant [282 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_compute_shape[1]) == 768, Argument tvmgen_default_fused_nn_contrib_dense_pack.compute.shape[1] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_compute_shape[1])\00", align 1
@.str.146 = private constant [277 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_compute_strides[1]) and 768 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_compute_strides[0]), tvmgen_default_fused_nn_contrib_dense_pack.compute.strides: expected to be compact array\00", align 1
@.str.147 = private constant [231 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(compute, 0, 8, \22uint64\22), Argument tvmgen_default_fused_nn_contrib_dense_pack.compute.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(compute, 0, 8, \22uint64\22)\00", align 1
@.str.148 = private constant [211 x i8] c"Assert fail: T.tvm_struct_get(compute, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_nn_contrib_dense_pack.compute.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(compute, 0, 10, \22int32\22)\00", align 1
@.str.149 = private constant [217 x i8] c"Assert fail: dev_id == T.tvm_struct_get(compute, 0, 9, \22int32\22), Argument tvmgen_default_fused_nn_contrib_dense_pack.compute.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(compute, 0, 9, \22int32\22)\00", align 1
@.str.151 = private constant [95 x i8] c"Assert fail: num_args == 3, tvmgen_default_fused_nn_contrib_dense_pack_1: num_args should be 3\00", align 1
@.str.152 = private constant [150 x i8] c"Assert fail: p0_code == 3 or p0_code == 13 or p0_code == 7 or p0_code == 4, tvmgen_default_fused_nn_contrib_dense_pack_1: Expect arg[0] to be pointer\00", align 1
@.str.153 = private constant [150 x i8] c"Assert fail: p1_code == 3 or p1_code == 13 or p1_code == 7 or p1_code == 4, tvmgen_default_fused_nn_contrib_dense_pack_1: Expect arg[1] to be pointer\00", align 1
@.str.154 = private constant [170 x i8] c"Assert fail: compute_code == 3 or compute_code == 13 or compute_code == 7 or compute_code == 4, tvmgen_default_fused_nn_contrib_dense_pack_1: Expect arg[2] to be pointer\00", align 1
@.str.155 = private constant [131 x i8] c"Assert fail: 2 == T.tvm_struct_get(p0, 0, 4, \22int32\22), tvmgen_default_fused_nn_contrib_dense_pack_1.p0.ndim is expected to equal 2\00", align 1
@.str.156 = private constant [255 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p0, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p0, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_nn_contrib_dense_pack_1.p0.dtype is expected to be float32\00", align 1
@.str.157 = private constant [269 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_1_p0_shape[0]) == 5, Argument tvmgen_default_fused_nn_contrib_dense_pack_1.p0.shape[0] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_1_p0_shape[0])\00", align 1
@.str.158 = private constant [273 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_1_p0_shape[1]) == 768, Argument tvmgen_default_fused_nn_contrib_dense_pack_1.p0.shape[1] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_1_p0_shape[1])\00", align 1
@.str.159 = private constant [268 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_1_p0_strides[1]) and 768 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_1_p0_strides[0]), tvmgen_default_fused_nn_contrib_dense_pack_1.p0.strides: expected to be compact array\00", align 1
@.str.160 = private constant [218 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22), Argument tvmgen_default_fused_nn_contrib_dense_pack_1.p0.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22)\00", align 1
@.str.161 = private constant [198 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_nn_contrib_dense_pack_1.p0.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p0, 0, 10, \22int32\22)\00", align 1
@.str.162 = private constant [131 x i8] c"Assert fail: 3 == T.tvm_struct_get(p1, 0, 4, \22int32\22), tvmgen_default_fused_nn_contrib_dense_pack_1.p1.ndim is expected to equal 3\00", align 1
@.str.163 = private constant [255 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p1, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p1, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_nn_contrib_dense_pack_1.p1.dtype is expected to be float32\00", align 1
@.str.164 = private constant [273 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_1_p1_shape[0]) == 384, Argument tvmgen_default_fused_nn_contrib_dense_pack_1.p1.shape[0] has an unsatisfied constraint: 384 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_1_p1_shape[0])\00", align 1
@.str.165 = private constant [273 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_1_p1_shape[1]) == 768, Argument tvmgen_default_fused_nn_contrib_dense_pack_1.p1.shape[1] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_1_p1_shape[1])\00", align 1
@.str.166 = private constant [269 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_1_p1_shape[2]) == 8, Argument tvmgen_default_fused_nn_contrib_dense_pack_1.p1.shape[2] has an unsatisfied constraint: 8 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_1_p1_shape[2])\00", align 1
@.str.167 = private constant [354 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_1_p1_strides[2]) and 8 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_1_p1_strides[1]) and 6144 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_1_p1_strides[0]), tvmgen_default_fused_nn_contrib_dense_pack_1.p1.strides: expected to be compact array\00", align 1
@.str.168 = private constant [218 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22), Argument tvmgen_default_fused_nn_contrib_dense_pack_1.p1.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22)\00", align 1
@.str.169 = private constant [198 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_nn_contrib_dense_pack_1.p1.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p1, 0, 10, \22int32\22)\00", align 1
@.str.170 = private constant [204 x i8] c"Assert fail: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22), Argument tvmgen_default_fused_nn_contrib_dense_pack_1.p1.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22)\00", align 1
@.str.171 = private constant [141 x i8] c"Assert fail: 2 == T.tvm_struct_get(compute, 0, 4, \22int32\22), tvmgen_default_fused_nn_contrib_dense_pack_1.compute.ndim is expected to equal 2\00", align 1
@.str.172 = private constant [275 x i8] c"Assert fail: T.tvm_struct_get(compute, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(compute, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(compute, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_nn_contrib_dense_pack_1.compute.dtype is expected to be float32\00", align 1
@.str.173 = private constant [284 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_1_compute_shape[0]) == 5, Argument tvmgen_default_fused_nn_contrib_dense_pack_1.compute.shape[0] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_1_compute_shape[0])\00", align 1
@.str.174 = private constant [290 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_1_compute_shape[1]) == 3072, Argument tvmgen_default_fused_nn_contrib_dense_pack_1.compute.shape[1] has an unsatisfied constraint: 3072 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_1_compute_shape[1])\00", align 1
@.str.175 = private constant [284 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_1_compute_strides[1]) and 3072 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_1_compute_strides[0]), tvmgen_default_fused_nn_contrib_dense_pack_1.compute.strides: expected to be compact array\00", align 1
@.str.176 = private constant [233 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(compute, 0, 8, \22uint64\22), Argument tvmgen_default_fused_nn_contrib_dense_pack_1.compute.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(compute, 0, 8, \22uint64\22)\00", align 1
@.str.177 = private constant [213 x i8] c"Assert fail: T.tvm_struct_get(compute, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_nn_contrib_dense_pack_1.compute.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(compute, 0, 10, \22int32\22)\00", align 1
@.str.178 = private constant [219 x i8] c"Assert fail: dev_id == T.tvm_struct_get(compute, 0, 9, \22int32\22), Argument tvmgen_default_fused_nn_contrib_dense_pack_1.compute.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(compute, 0, 9, \22int32\22)\00", align 1
@.str.180 = private constant [95 x i8] c"Assert fail: num_args == 3, tvmgen_default_fused_nn_contrib_dense_pack_2: num_args should be 3\00", align 1
@.str.181 = private constant [150 x i8] c"Assert fail: p0_code == 3 or p0_code == 13 or p0_code == 7 or p0_code == 4, tvmgen_default_fused_nn_contrib_dense_pack_2: Expect arg[0] to be pointer\00", align 1
@.str.182 = private constant [150 x i8] c"Assert fail: p1_code == 3 or p1_code == 13 or p1_code == 7 or p1_code == 4, tvmgen_default_fused_nn_contrib_dense_pack_2: Expect arg[1] to be pointer\00", align 1
@.str.183 = private constant [170 x i8] c"Assert fail: compute_code == 3 or compute_code == 13 or compute_code == 7 or compute_code == 4, tvmgen_default_fused_nn_contrib_dense_pack_2: Expect arg[2] to be pointer\00", align 1
@.str.184 = private constant [131 x i8] c"Assert fail: 2 == T.tvm_struct_get(p0, 0, 4, \22int32\22), tvmgen_default_fused_nn_contrib_dense_pack_2.p0.ndim is expected to equal 2\00", align 1
@.str.185 = private constant [255 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p0, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p0, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_nn_contrib_dense_pack_2.p0.dtype is expected to be float32\00", align 1
@.str.186 = private constant [269 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_2_p0_shape[0]) == 5, Argument tvmgen_default_fused_nn_contrib_dense_pack_2.p0.shape[0] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_2_p0_shape[0])\00", align 1
@.str.187 = private constant [275 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_2_p0_shape[1]) == 3072, Argument tvmgen_default_fused_nn_contrib_dense_pack_2.p0.shape[1] has an unsatisfied constraint: 3072 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_2_p0_shape[1])\00", align 1
@.str.188 = private constant [269 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_2_p0_strides[1]) and 3072 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_2_p0_strides[0]), tvmgen_default_fused_nn_contrib_dense_pack_2.p0.strides: expected to be compact array\00", align 1
@.str.189 = private constant [218 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22), Argument tvmgen_default_fused_nn_contrib_dense_pack_2.p0.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22)\00", align 1
@.str.190 = private constant [198 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_nn_contrib_dense_pack_2.p0.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p0, 0, 10, \22int32\22)\00", align 1
@.str.191 = private constant [131 x i8] c"Assert fail: 3 == T.tvm_struct_get(p1, 0, 4, \22int32\22), tvmgen_default_fused_nn_contrib_dense_pack_2.p1.ndim is expected to equal 3\00", align 1
@.str.192 = private constant [255 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p1, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p1, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_nn_contrib_dense_pack_2.p1.dtype is expected to be float32\00", align 1
@.str.193 = private constant [271 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_2_p1_shape[0]) == 96, Argument tvmgen_default_fused_nn_contrib_dense_pack_2.p1.shape[0] has an unsatisfied constraint: 96 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_2_p1_shape[0])\00", align 1
@.str.194 = private constant [275 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_2_p1_shape[1]) == 3072, Argument tvmgen_default_fused_nn_contrib_dense_pack_2.p1.shape[1] has an unsatisfied constraint: 3072 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_2_p1_shape[1])\00", align 1
@.str.195 = private constant [269 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_2_p1_shape[2]) == 8, Argument tvmgen_default_fused_nn_contrib_dense_pack_2.p1.shape[2] has an unsatisfied constraint: 8 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_2_p1_shape[2])\00", align 1
@.str.196 = private constant [355 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_2_p1_strides[2]) and 8 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_2_p1_strides[1]) and 24576 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_2_p1_strides[0]), tvmgen_default_fused_nn_contrib_dense_pack_2.p1.strides: expected to be compact array\00", align 1
@.str.197 = private constant [218 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22), Argument tvmgen_default_fused_nn_contrib_dense_pack_2.p1.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22)\00", align 1
@.str.198 = private constant [198 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_nn_contrib_dense_pack_2.p1.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p1, 0, 10, \22int32\22)\00", align 1
@.str.199 = private constant [204 x i8] c"Assert fail: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22), Argument tvmgen_default_fused_nn_contrib_dense_pack_2.p1.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22)\00", align 1
@.str.200 = private constant [141 x i8] c"Assert fail: 2 == T.tvm_struct_get(compute, 0, 4, \22int32\22), tvmgen_default_fused_nn_contrib_dense_pack_2.compute.ndim is expected to equal 2\00", align 1
@.str.201 = private constant [275 x i8] c"Assert fail: T.tvm_struct_get(compute, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(compute, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(compute, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_nn_contrib_dense_pack_2.compute.dtype is expected to be float32\00", align 1
@.str.202 = private constant [284 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_2_compute_shape[0]) == 5, Argument tvmgen_default_fused_nn_contrib_dense_pack_2.compute.shape[0] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_2_compute_shape[0])\00", align 1
@.str.203 = private constant [288 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_2_compute_shape[1]) == 768, Argument tvmgen_default_fused_nn_contrib_dense_pack_2.compute.shape[1] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_2_compute_shape[1])\00", align 1
@.str.204 = private constant [283 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_2_compute_strides[1]) and 768 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_2_compute_strides[0]), tvmgen_default_fused_nn_contrib_dense_pack_2.compute.strides: expected to be compact array\00", align 1
@.str.205 = private constant [233 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(compute, 0, 8, \22uint64\22), Argument tvmgen_default_fused_nn_contrib_dense_pack_2.compute.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(compute, 0, 8, \22uint64\22)\00", align 1
@.str.206 = private constant [213 x i8] c"Assert fail: T.tvm_struct_get(compute, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_nn_contrib_dense_pack_2.compute.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(compute, 0, 10, \22int32\22)\00", align 1
@.str.207 = private constant [219 x i8] c"Assert fail: dev_id == T.tvm_struct_get(compute, 0, 9, \22int32\22), Argument tvmgen_default_fused_nn_contrib_dense_pack_2.compute.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(compute, 0, 9, \22int32\22)\00", align 1
@.str.209 = private constant [102 x i8] c"Assert fail: num_args == 4, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh: num_args should be 4\00", align 1
@.str.210 = private constant [157 x i8] c"Assert fail: p0_code == 3 or p0_code == 13 or p0_code == 7 or p0_code == 4, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh: Expect arg[0] to be pointer\00", align 1
@.str.211 = private constant [157 x i8] c"Assert fail: p1_code == 3 or p1_code == 13 or p1_code == 7 or p1_code == 4, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh: Expect arg[1] to be pointer\00", align 1
@.str.212 = private constant [157 x i8] c"Assert fail: p2_code == 3 or p2_code == 13 or p2_code == 7 or p2_code == 4, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh: Expect arg[2] to be pointer\00", align 1
@.str.213 = private constant [173 x i8] c"Assert fail: T_tanh_code == 3 or T_tanh_code == 13 or T_tanh_code == 7 or T_tanh_code == 4, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh: Expect arg[3] to be pointer\00", align 1
@.str.214 = private constant [138 x i8] c"Assert fail: 2 == T.tvm_struct_get(p0, 0, 4, \22int32\22), tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p0.ndim is expected to equal 2\00", align 1
@.str.215 = private constant [262 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p0, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p0, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p0.dtype is expected to be float32\00", align 1
@.str.216 = private constant [290 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_p0_shape[0]) == 1, Argument tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p0.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_p0_shape[0])\00", align 1
@.str.217 = private constant [294 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_p0_shape[1]) == 768, Argument tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p0.shape[1] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_p0_shape[1])\00", align 1
@.str.218 = private constant [195 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_p0_strides[1]), tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p0.strides: expected to be compact array\00", align 1
@.str.219 = private constant [225 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22), Argument tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p0.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22)\00", align 1
@.str.220 = private constant [205 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p0.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p0, 0, 10, \22int32\22)\00", align 1
@.str.221 = private constant [138 x i8] c"Assert fail: 3 == T.tvm_struct_get(p1, 0, 4, \22int32\22), tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p1.ndim is expected to equal 3\00", align 1
@.str.222 = private constant [262 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p1, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p1, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p1.dtype is expected to be float32\00", align 1
@.str.223 = private constant [292 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_p1_shape[0]) == 96, Argument tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p1.shape[0] has an unsatisfied constraint: 96 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_p1_shape[0])\00", align 1
@.str.224 = private constant [294 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_p1_shape[1]) == 768, Argument tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p1.shape[1] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_p1_shape[1])\00", align 1
@.str.225 = private constant [290 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_p1_shape[2]) == 8, Argument tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p1.shape[2] has an unsatisfied constraint: 8 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_p1_shape[2])\00", align 1
@.str.226 = private constant [382 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_p1_strides[2]) and 8 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_p1_strides[1]) and 6144 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_p1_strides[0]), tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p1.strides: expected to be compact array\00", align 1
@.str.227 = private constant [225 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22), Argument tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p1.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22)\00", align 1
@.str.228 = private constant [205 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p1.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p1, 0, 10, \22int32\22)\00", align 1
@.str.229 = private constant [211 x i8] c"Assert fail: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22), Argument tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p1.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22)\00", align 1
@.str.230 = private constant [138 x i8] c"Assert fail: 2 == T.tvm_struct_get(p2, 0, 4, \22int32\22), tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p2.ndim is expected to equal 2\00", align 1
@.str.231 = private constant [262 x i8] c"Assert fail: T.tvm_struct_get(p2, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p2, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p2, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p2.dtype is expected to be float32\00", align 1
@.str.232 = private constant [290 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_p2_shape[0]) == 1, Argument tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p2.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_p2_shape[0])\00", align 1
@.str.233 = private constant [294 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_p2_shape[1]) == 768, Argument tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p2.shape[1] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_p2_shape[1])\00", align 1
@.str.234 = private constant [195 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_p2_strides[1]), tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p2.strides: expected to be compact array\00", align 1
@.str.235 = private constant [225 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p2, 0, 8, \22uint64\22), Argument tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p2.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p2, 0, 8, \22uint64\22)\00", align 1
@.str.236 = private constant [205 x i8] c"Assert fail: T.tvm_struct_get(p2, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p2.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p2, 0, 10, \22int32\22)\00", align 1
@.str.237 = private constant [211 x i8] c"Assert fail: dev_id == T.tvm_struct_get(p2, 0, 9, \22int32\22), Argument tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p2.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(p2, 0, 9, \22int32\22)\00", align 1
@.str.238 = private constant [146 x i8] c"Assert fail: 2 == T.tvm_struct_get(T_tanh, 0, 4, \22int32\22), tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.T_tanh.ndim is expected to equal 2\00", align 1
@.str.239 = private constant [278 x i8] c"Assert fail: T.tvm_struct_get(T_tanh, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(T_tanh, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(T_tanh, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.T_tanh.dtype is expected to be float32\00", align 1
@.str.240 = private constant [302 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_T_tanh_shape[0]) == 1, Argument tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.T_tanh.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_T_tanh_shape[0])\00", align 1
@.str.241 = private constant [306 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_T_tanh_shape[1]) == 768, Argument tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.T_tanh.shape[1] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_T_tanh_shape[1])\00", align 1
@.str.242 = private constant [203 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_T_tanh_strides[1]), tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.T_tanh.strides: expected to be compact array\00", align 1
@.str.243 = private constant [237 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(T_tanh, 0, 8, \22uint64\22), Argument tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.T_tanh.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(T_tanh, 0, 8, \22uint64\22)\00", align 1
@.str.244 = private constant [217 x i8] c"Assert fail: T.tvm_struct_get(T_tanh, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.T_tanh.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(T_tanh, 0, 10, \22int32\22)\00", align 1
@.str.245 = private constant [223 x i8] c"Assert fail: dev_id == T.tvm_struct_get(T_tanh, 0, 9, \22int32\22), Argument tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.T_tanh.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(T_tanh, 0, 9, \22int32\22)\00", align 1
@__TVMBackendAllocWorkspace = linkonce dllexport local_unnamed_addr global ptr null, align 8
@__TVMBackendFreeWorkspace = linkonce dllexport local_unnamed_addr global ptr null, align 8
@.str.247 = private constant [82 x i8] c"Assert fail: num_args == 2, tvmgen_default_fused_nn_softmax: num_args should be 2\00", align 1
@.str.248 = private constant [137 x i8] c"Assert fail: p0_code == 3 or p0_code == 13 or p0_code == 7 or p0_code == 4, tvmgen_default_fused_nn_softmax: Expect arg[0] to be pointer\00", align 1
@.str.249 = private constant [185 x i8] c"Assert fail: T_softmax_norm_code == 3 or T_softmax_norm_code == 13 or T_softmax_norm_code == 7 or T_softmax_norm_code == 4, tvmgen_default_fused_nn_softmax: Expect arg[1] to be pointer\00", align 1
@.str.250 = private constant [118 x i8] c"Assert fail: 4 == T.tvm_struct_get(p0, 0, 4, \22int32\22), tvmgen_default_fused_nn_softmax.p0.ndim is expected to equal 4\00", align 1
@.str.251 = private constant [242 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p0, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p0, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_nn_softmax.p0.dtype is expected to be float32\00", align 1
@.str.252 = private constant [230 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_p0_shape[0]) == 1, Argument tvmgen_default_fused_nn_softmax.p0.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_p0_shape[0])\00", align 1
@.str.253 = private constant [232 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_p0_shape[1]) == 12, Argument tvmgen_default_fused_nn_softmax.p0.shape[1] has an unsatisfied constraint: 12 == T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_p0_shape[1])\00", align 1
@.str.254 = private constant [230 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_p0_shape[2]) == 5, Argument tvmgen_default_fused_nn_softmax.p0.shape[2] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_p0_shape[2])\00", align 1
@.str.255 = private constant [230 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_p0_shape[3]) == 5, Argument tvmgen_default_fused_nn_softmax.p0.shape[3] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_p0_shape[3])\00", align 1
@.str.256 = private constant [300 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_p0_strides[3]) and 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_p0_strides[2]) and 25 == T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_p0_strides[1]), tvmgen_default_fused_nn_softmax.p0.strides: expected to be compact array\00", align 1
@.str.257 = private constant [205 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22), Argument tvmgen_default_fused_nn_softmax.p0.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22)\00", align 1
@.str.258 = private constant [185 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_nn_softmax.p0.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p0, 0, 10, \22int32\22)\00", align 1
@.str.259 = private constant [142 x i8] c"Assert fail: 4 == T.tvm_struct_get(T_softmax_norm, 0, 4, \22int32\22), tvmgen_default_fused_nn_softmax.T_softmax_norm.ndim is expected to equal 4\00", align 1
@.str.260 = private constant [290 x i8] c"Assert fail: T.tvm_struct_get(T_softmax_norm, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(T_softmax_norm, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(T_softmax_norm, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_nn_softmax.T_softmax_norm.dtype is expected to be float32\00", align 1
@.str.261 = private constant [266 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_T_softmax_norm_shape[0]) == 1, Argument tvmgen_default_fused_nn_softmax.T_softmax_norm.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_T_softmax_norm_shape[0])\00", align 1
@.str.262 = private constant [268 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_T_softmax_norm_shape[1]) == 12, Argument tvmgen_default_fused_nn_softmax.T_softmax_norm.shape[1] has an unsatisfied constraint: 12 == T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_T_softmax_norm_shape[1])\00", align 1
@.str.263 = private constant [266 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_T_softmax_norm_shape[2]) == 5, Argument tvmgen_default_fused_nn_softmax.T_softmax_norm.shape[2] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_T_softmax_norm_shape[2])\00", align 1
@.str.264 = private constant [266 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_T_softmax_norm_shape[3]) == 5, Argument tvmgen_default_fused_nn_softmax.T_softmax_norm.shape[3] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_T_softmax_norm_shape[3])\00", align 1
@.str.265 = private constant [348 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_T_softmax_norm_strides[3]) and 5 == T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_T_softmax_norm_strides[2]) and 25 == T.Cast(\22int32\22, tvmgen_default_fused_nn_softmax_T_softmax_norm_strides[1]), tvmgen_default_fused_nn_softmax.T_softmax_norm.strides: expected to be compact array\00", align 1
@.str.266 = private constant [241 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(T_softmax_norm, 0, 8, \22uint64\22), Argument tvmgen_default_fused_nn_softmax.T_softmax_norm.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(T_softmax_norm, 0, 8, \22uint64\22)\00", align 1
@.str.267 = private constant [221 x i8] c"Assert fail: T.tvm_struct_get(T_softmax_norm, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_nn_softmax.T_softmax_norm.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(T_softmax_norm, 0, 10, \22int32\22)\00", align 1
@.str.268 = private constant [227 x i8] c"Assert fail: dev_id == T.tvm_struct_get(T_softmax_norm, 0, 9, \22int32\22), Argument tvmgen_default_fused_nn_softmax.T_softmax_norm.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(T_softmax_norm, 0, 9, \22int32\22)\00", align 1
@.str.270 = private constant [79 x i8] c"Assert fail: num_args == 2, tvmgen_default_fused_reshape: num_args should be 2\00", align 1
@.str.271 = private constant [134 x i8] c"Assert fail: p0_code == 3 or p0_code == 13 or p0_code == 7 or p0_code == 4, tvmgen_default_fused_reshape: Expect arg[0] to be pointer\00", align 1
@.str.272 = private constant [162 x i8] c"Assert fail: T_reshape_code == 3 or T_reshape_code == 13 or T_reshape_code == 7 or T_reshape_code == 4, tvmgen_default_fused_reshape: Expect arg[1] to be pointer\00", align 1
@.str.273 = private constant [115 x i8] c"Assert fail: 3 == T.tvm_struct_get(p0, 0, 4, \22int32\22), tvmgen_default_fused_reshape.p0.ndim is expected to equal 3\00", align 1
@.str.274 = private constant [239 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p0, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p0, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape.p0.dtype is expected to be float32\00", align 1
@.str.275 = private constant [221 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_p0_shape[0]) == 1, Argument tvmgen_default_fused_reshape.p0.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_p0_shape[0])\00", align 1
@.str.276 = private constant [221 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_p0_shape[1]) == 5, Argument tvmgen_default_fused_reshape.p0.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_p0_shape[1])\00", align 1
@.str.277 = private constant [225 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_p0_shape[2]) == 768, Argument tvmgen_default_fused_reshape.p0.shape[2] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_p0_shape[2])\00", align 1
@.str.278 = private constant [220 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_p0_strides[2]) and 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_p0_strides[1]), tvmgen_default_fused_reshape.p0.strides: expected to be compact array\00", align 1
@.str.279 = private constant [202 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape.p0.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22)\00", align 1
@.str.280 = private constant [182 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape.p0.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p0, 0, 10, \22int32\22)\00", align 1
@.str.281 = private constant [129 x i8] c"Assert fail: 2 == T.tvm_struct_get(T_reshape, 0, 4, \22int32\22), tvmgen_default_fused_reshape.T_reshape.ndim is expected to equal 2\00", align 1
@.str.282 = private constant [267 x i8] c"Assert fail: T.tvm_struct_get(T_reshape, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(T_reshape, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(T_reshape, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape.T_reshape.dtype is expected to be float32\00", align 1
@.str.283 = private constant [242 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_T_reshape_shape[0]) == 5, Argument tvmgen_default_fused_reshape.T_reshape.shape[0] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_T_reshape_shape[0])\00", align 1
@.str.284 = private constant [246 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_T_reshape_shape[1]) == 768, Argument tvmgen_default_fused_reshape.T_reshape.shape[1] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_T_reshape_shape[1])\00", align 1
@.str.285 = private constant [241 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_T_reshape_strides[1]) and 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_T_reshape_strides[0]), tvmgen_default_fused_reshape.T_reshape.strides: expected to be compact array\00", align 1
@.str.286 = private constant [223 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(T_reshape, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape.T_reshape.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(T_reshape, 0, 8, \22uint64\22)\00", align 1
@.str.287 = private constant [203 x i8] c"Assert fail: T.tvm_struct_get(T_reshape, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape.T_reshape.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(T_reshape, 0, 10, \22int32\22)\00", align 1
@.str.288 = private constant [209 x i8] c"Assert fail: dev_id == T.tvm_struct_get(T_reshape, 0, 9, \22int32\22), Argument tvmgen_default_fused_reshape.T_reshape.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(T_reshape, 0, 9, \22int32\22)\00", align 1
@.str.290 = private constant [81 x i8] c"Assert fail: num_args == 2, tvmgen_default_fused_reshape_1: num_args should be 2\00", align 1
@.str.291 = private constant [136 x i8] c"Assert fail: p0_code == 3 or p0_code == 13 or p0_code == 7 or p0_code == 4, tvmgen_default_fused_reshape_1: Expect arg[0] to be pointer\00", align 1
@.str.292 = private constant [164 x i8] c"Assert fail: T_reshape_code == 3 or T_reshape_code == 13 or T_reshape_code == 7 or T_reshape_code == 4, tvmgen_default_fused_reshape_1: Expect arg[1] to be pointer\00", align 1
@.str.293 = private constant [117 x i8] c"Assert fail: 4 == T.tvm_struct_get(p0, 0, 4, \22int32\22), tvmgen_default_fused_reshape_1.p0.ndim is expected to equal 4\00", align 1
@.str.294 = private constant [241 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p0, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p0, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_1.p0.dtype is expected to be float32\00", align 1
@.str.295 = private constant [227 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_1_p0_shape[0]) == 1, Argument tvmgen_default_fused_reshape_1.p0.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_1_p0_shape[0])\00", align 1
@.str.296 = private constant [229 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_1_p0_shape[1]) == 12, Argument tvmgen_default_fused_reshape_1.p0.shape[1] has an unsatisfied constraint: 12 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_1_p0_shape[1])\00", align 1
@.str.297 = private constant [227 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_1_p0_shape[2]) == 5, Argument tvmgen_default_fused_reshape_1.p0.shape[2] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_1_p0_shape[2])\00", align 1
@.str.298 = private constant [227 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_1_p0_shape[3]) == 5, Argument tvmgen_default_fused_reshape_1.p0.shape[3] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_1_p0_shape[3])\00", align 1
@.str.299 = private constant [296 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_1_p0_strides[3]) and 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_1_p0_strides[2]) and 25 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_1_p0_strides[1]), tvmgen_default_fused_reshape_1.p0.strides: expected to be compact array\00", align 1
@.str.300 = private constant [204 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_1.p0.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22)\00", align 1
@.str.301 = private constant [184 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_1.p0.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p0, 0, 10, \22int32\22)\00", align 1
@.str.302 = private constant [131 x i8] c"Assert fail: 3 == T.tvm_struct_get(T_reshape, 0, 4, \22int32\22), tvmgen_default_fused_reshape_1.T_reshape.ndim is expected to equal 3\00", align 1
@.str.303 = private constant [269 x i8] c"Assert fail: T.tvm_struct_get(T_reshape, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(T_reshape, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(T_reshape, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_1.T_reshape.dtype is expected to be float32\00", align 1
@.str.304 = private constant [250 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_1_T_reshape_shape[0]) == 12, Argument tvmgen_default_fused_reshape_1.T_reshape.shape[0] has an unsatisfied constraint: 12 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_1_T_reshape_shape[0])\00", align 1
@.str.305 = private constant [248 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_1_T_reshape_shape[1]) == 5, Argument tvmgen_default_fused_reshape_1.T_reshape.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_1_T_reshape_shape[1])\00", align 1
@.str.306 = private constant [248 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_1_T_reshape_shape[2]) == 5, Argument tvmgen_default_fused_reshape_1.T_reshape.shape[2] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_1_T_reshape_shape[2])\00", align 1
@.str.307 = private constant [324 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_1_T_reshape_strides[2]) and 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_1_T_reshape_strides[1]) and 25 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_1_T_reshape_strides[0]), tvmgen_default_fused_reshape_1.T_reshape.strides: expected to be compact array\00", align 1
@.str.308 = private constant [225 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(T_reshape, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_1.T_reshape.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(T_reshape, 0, 8, \22uint64\22)\00", align 1
@.str.309 = private constant [205 x i8] c"Assert fail: T.tvm_struct_get(T_reshape, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_1.T_reshape.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(T_reshape, 0, 10, \22int32\22)\00", align 1
@.str.310 = private constant [211 x i8] c"Assert fail: dev_id == T.tvm_struct_get(T_reshape, 0, 9, \22int32\22), Argument tvmgen_default_fused_reshape_1.T_reshape.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(T_reshape, 0, 9, \22int32\22)\00", align 1
@.str.312 = private constant [87 x i8] c"Assert fail: num_args == 4, tvmgen_default_fused_reshape_add_add: num_args should be 4\00", align 1
@.str.313 = private constant [142 x i8] c"Assert fail: p0_code == 3 or p0_code == 13 or p0_code == 7 or p0_code == 4, tvmgen_default_fused_reshape_add_add: Expect arg[0] to be pointer\00", align 1
@.str.314 = private constant [142 x i8] c"Assert fail: p1_code == 3 or p1_code == 13 or p1_code == 7 or p1_code == 4, tvmgen_default_fused_reshape_add_add: Expect arg[1] to be pointer\00", align 1
@.str.315 = private constant [142 x i8] c"Assert fail: p2_code == 3 or p2_code == 13 or p2_code == 7 or p2_code == 4, tvmgen_default_fused_reshape_add_add: Expect arg[2] to be pointer\00", align 1
@.str.316 = private constant [154 x i8] c"Assert fail: T_add_code == 3 or T_add_code == 13 or T_add_code == 7 or T_add_code == 4, tvmgen_default_fused_reshape_add_add: Expect arg[3] to be pointer\00", align 1
@.str.317 = private constant [123 x i8] c"Assert fail: 2 == T.tvm_struct_get(p0, 0, 4, \22int32\22), tvmgen_default_fused_reshape_add_add.p0.ndim is expected to equal 2\00", align 1
@.str.318 = private constant [247 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p0, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p0, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_add_add.p0.dtype is expected to be float32\00", align 1
@.str.319 = private constant [245 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_p0_shape[0]) == 5, Argument tvmgen_default_fused_reshape_add_add.p0.shape[0] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_p0_shape[0])\00", align 1
@.str.320 = private constant [249 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_p0_shape[1]) == 768, Argument tvmgen_default_fused_reshape_add_add.p0.shape[1] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_p0_shape[1])\00", align 1
@.str.321 = private constant [244 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_p0_strides[1]) and 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_p0_strides[0]), tvmgen_default_fused_reshape_add_add.p0.strides: expected to be compact array\00", align 1
@.str.322 = private constant [210 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_add_add.p0.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22)\00", align 1
@.str.323 = private constant [190 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_add_add.p0.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p0, 0, 10, \22int32\22)\00", align 1
@.str.324 = private constant [123 x i8] c"Assert fail: 1 == T.tvm_struct_get(p1, 0, 4, \22int32\22), tvmgen_default_fused_reshape_add_add.p1.ndim is expected to equal 1\00", align 1
@.str.325 = private constant [247 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p1, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p1, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_add_add.p1.dtype is expected to be float32\00", align 1
@.str.326 = private constant [249 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_p1_shape[0]) == 768, Argument tvmgen_default_fused_reshape_add_add.p1.shape[0] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_p1_shape[0])\00", align 1
@.str.327 = private constant [165 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_p1_strides[0]), tvmgen_default_fused_reshape_add_add.p1.strides: expected to be compact array\00", align 1
@.str.328 = private constant [210 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_add_add.p1.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22)\00", align 1
@.str.329 = private constant [190 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_add_add.p1.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p1, 0, 10, \22int32\22)\00", align 1
@.str.330 = private constant [196 x i8] c"Assert fail: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22), Argument tvmgen_default_fused_reshape_add_add.p1.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22)\00", align 1
@.str.331 = private constant [123 x i8] c"Assert fail: 3 == T.tvm_struct_get(p2, 0, 4, \22int32\22), tvmgen_default_fused_reshape_add_add.p2.ndim is expected to equal 3\00", align 1
@.str.332 = private constant [247 x i8] c"Assert fail: T.tvm_struct_get(p2, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p2, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p2, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_add_add.p2.dtype is expected to be float32\00", align 1
@.str.333 = private constant [245 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_p2_shape[0]) == 1, Argument tvmgen_default_fused_reshape_add_add.p2.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_p2_shape[0])\00", align 1
@.str.334 = private constant [245 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_p2_shape[1]) == 5, Argument tvmgen_default_fused_reshape_add_add.p2.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_p2_shape[1])\00", align 1
@.str.335 = private constant [249 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_p2_shape[2]) == 768, Argument tvmgen_default_fused_reshape_add_add.p2.shape[2] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_p2_shape[2])\00", align 1
@.str.336 = private constant [244 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_p2_strides[2]) and 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_p2_strides[1]), tvmgen_default_fused_reshape_add_add.p2.strides: expected to be compact array\00", align 1
@.str.337 = private constant [210 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p2, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_add_add.p2.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p2, 0, 8, \22uint64\22)\00", align 1
@.str.338 = private constant [190 x i8] c"Assert fail: T.tvm_struct_get(p2, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_add_add.p2.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p2, 0, 10, \22int32\22)\00", align 1
@.str.339 = private constant [196 x i8] c"Assert fail: dev_id == T.tvm_struct_get(p2, 0, 9, \22int32\22), Argument tvmgen_default_fused_reshape_add_add.p2.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(p2, 0, 9, \22int32\22)\00", align 1
@.str.340 = private constant [129 x i8] c"Assert fail: 3 == T.tvm_struct_get(T_add, 0, 4, \22int32\22), tvmgen_default_fused_reshape_add_add.T_add.ndim is expected to equal 3\00", align 1
@.str.341 = private constant [259 x i8] c"Assert fail: T.tvm_struct_get(T_add, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(T_add, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(T_add, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_add_add.T_add.dtype is expected to be float32\00", align 1
@.str.342 = private constant [254 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_T_add_shape[0]) == 1, Argument tvmgen_default_fused_reshape_add_add.T_add.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_T_add_shape[0])\00", align 1
@.str.343 = private constant [254 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_T_add_shape[1]) == 5, Argument tvmgen_default_fused_reshape_add_add.T_add.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_T_add_shape[1])\00", align 1
@.str.344 = private constant [258 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_T_add_shape[2]) == 768, Argument tvmgen_default_fused_reshape_add_add.T_add.shape[2] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_T_add_shape[2])\00", align 1
@.str.345 = private constant [253 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_T_add_strides[2]) and 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_add_T_add_strides[1]), tvmgen_default_fused_reshape_add_add.T_add.strides: expected to be compact array\00", align 1
@.str.346 = private constant [219 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(T_add, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_add_add.T_add.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(T_add, 0, 8, \22uint64\22)\00", align 1
@.str.347 = private constant [199 x i8] c"Assert fail: T.tvm_struct_get(T_add, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_add_add.T_add.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(T_add, 0, 10, \22int32\22)\00", align 1
@.str.348 = private constant [205 x i8] c"Assert fail: dev_id == T.tvm_struct_get(T_add, 0, 9, \22int32\22), Argument tvmgen_default_fused_reshape_add_add.T_add.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(T_add, 0, 9, \22int32\22)\00", align 1
@.str.350 = private constant [124 x i8] c"Assert fail: num_args == 3, tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape: num_args should be 3\00", align 1
@.str.351 = private constant [179 x i8] c"Assert fail: p0_code == 3 or p0_code == 13 or p0_code == 7 or p0_code == 4, tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape: Expect arg[0] to be pointer\00", align 1
@.str.352 = private constant [179 x i8] c"Assert fail: p1_code == 3 or p1_code == 13 or p1_code == 7 or p1_code == 4, tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape: Expect arg[1] to be pointer\00", align 1
@.str.353 = private constant [207 x i8] c"Assert fail: T_reshape_code == 3 or T_reshape_code == 13 or T_reshape_code == 7 or T_reshape_code == 4, tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape: Expect arg[2] to be pointer\00", align 1
@.str.354 = private constant [160 x i8] c"Assert fail: 2 == T.tvm_struct_get(p0, 0, 4, \22int32\22), tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p0.ndim is expected to equal 2\00", align 1
@.str.355 = private constant [284 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p0, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p0, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p0.dtype is expected to be float32\00", align 1
@.str.356 = private constant [356 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape_p0_shape[0]) == 5, Argument tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p0.shape[0] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape_p0_shape[0])\00", align 1
@.str.357 = private constant [362 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape_p0_shape[1]) == 3072, Argument tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p0.shape[1] has an unsatisfied constraint: 3072 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape_p0_shape[1])\00", align 1
@.str.358 = private constant [356 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape_p0_strides[1]) and 3072 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape_p0_strides[0]), tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p0.strides: expected to be compact array\00", align 1
@.str.359 = private constant [247 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p0.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22)\00", align 1
@.str.360 = private constant [227 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p0.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p0, 0, 10, \22int32\22)\00", align 1
@.str.361 = private constant [160 x i8] c"Assert fail: 1 == T.tvm_struct_get(p1, 0, 4, \22int32\22), tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p1.ndim is expected to equal 1\00", align 1
@.str.362 = private constant [284 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p1, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p1, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p1.dtype is expected to be float32\00", align 1
@.str.363 = private constant [362 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape_p1_shape[0]) == 3072, Argument tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p1.shape[0] has an unsatisfied constraint: 3072 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape_p1_shape[0])\00", align 1
@.str.364 = private constant [239 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape_p1_strides[0]), tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p1.strides: expected to be compact array\00", align 1
@.str.365 = private constant [247 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p1.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22)\00", align 1
@.str.366 = private constant [227 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p1.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p1, 0, 10, \22int32\22)\00", align 1
@.str.367 = private constant [233 x i8] c"Assert fail: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22), Argument tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p1.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22)\00", align 1
@.str.368 = private constant [174 x i8] c"Assert fail: 2 == T.tvm_struct_get(T_reshape, 0, 4, \22int32\22), tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.T_reshape.ndim is expected to equal 2\00", align 1
@.str.369 = private constant [312 x i8] c"Assert fail: T.tvm_struct_get(T_reshape, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(T_reshape, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(T_reshape, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.T_reshape.dtype is expected to be float32\00", align 1
@.str.370 = private constant [377 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape_T_reshape_shape[0]) == 5, Argument tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.T_reshape.shape[0] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape_T_reshape_shape[0])\00", align 1
@.str.371 = private constant [383 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape_T_reshape_shape[1]) == 3072, Argument tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.T_reshape.shape[1] has an unsatisfied constraint: 3072 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape_T_reshape_shape[1])\00", align 1
@.str.372 = private constant [377 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape_T_reshape_strides[1]) and 3072 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape_T_reshape_strides[0]), tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.T_reshape.strides: expected to be compact array\00", align 1
@.str.373 = private constant [268 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(T_reshape, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.T_reshape.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(T_reshape, 0, 8, \22uint64\22)\00", align 1
@.str.374 = private constant [248 x i8] c"Assert fail: T.tvm_struct_get(T_reshape, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.T_reshape.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(T_reshape, 0, 10, \22int32\22)\00", align 1
@.str.375 = private constant [254 x i8] c"Assert fail: dev_id == T.tvm_struct_get(T_reshape, 0, 9, \22int32\22), Argument tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.T_reshape.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(T_reshape, 0, 9, \22int32\22)\00", align 1
@.str.377 = private constant [109 x i8] c"Assert fail: num_args == 3, tvmgen_default_fused_reshape_add_reshape_transpose_reshape: num_args should be 3\00", align 1
@.str.378 = private constant [164 x i8] c"Assert fail: p0_code == 3 or p0_code == 13 or p0_code == 7 or p0_code == 4, tvmgen_default_fused_reshape_add_reshape_transpose_reshape: Expect arg[0] to be pointer\00", align 1
@.str.379 = private constant [164 x i8] c"Assert fail: p1_code == 3 or p1_code == 13 or p1_code == 7 or p1_code == 4, tvmgen_default_fused_reshape_add_reshape_transpose_reshape: Expect arg[1] to be pointer\00", align 1
@.str.380 = private constant [192 x i8] c"Assert fail: T_reshape_code == 3 or T_reshape_code == 13 or T_reshape_code == 7 or T_reshape_code == 4, tvmgen_default_fused_reshape_add_reshape_transpose_reshape: Expect arg[2] to be pointer\00", align 1
@.str.381 = private constant [145 x i8] c"Assert fail: 2 == T.tvm_struct_get(p0, 0, 4, \22int32\22), tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p0.ndim is expected to equal 2\00", align 1
@.str.382 = private constant [269 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p0, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p0, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p0.dtype is expected to be float32\00", align 1
@.str.383 = private constant [311 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_p0_shape[0]) == 5, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p0.shape[0] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_p0_shape[0])\00", align 1
@.str.384 = private constant [315 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_p0_shape[1]) == 768, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p0.shape[1] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_p0_shape[1])\00", align 1
@.str.385 = private constant [310 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_p0_strides[1]) and 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_p0_strides[0]), tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p0.strides: expected to be compact array\00", align 1
@.str.386 = private constant [232 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p0.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22)\00", align 1
@.str.387 = private constant [212 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p0.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p0, 0, 10, \22int32\22)\00", align 1
@.str.388 = private constant [145 x i8] c"Assert fail: 1 == T.tvm_struct_get(p1, 0, 4, \22int32\22), tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p1.ndim is expected to equal 1\00", align 1
@.str.389 = private constant [269 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p1, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p1, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p1.dtype is expected to be float32\00", align 1
@.str.390 = private constant [315 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_p1_shape[0]) == 768, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p1.shape[0] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_p1_shape[0])\00", align 1
@.str.391 = private constant [209 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_p1_strides[0]), tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p1.strides: expected to be compact array\00", align 1
@.str.392 = private constant [232 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p1.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22)\00", align 1
@.str.393 = private constant [212 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p1.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p1, 0, 10, \22int32\22)\00", align 1
@.str.394 = private constant [218 x i8] c"Assert fail: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22), Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p1.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22)\00", align 1
@.str.395 = private constant [159 x i8] c"Assert fail: 3 == T.tvm_struct_get(T_reshape, 0, 4, \22int32\22), tvmgen_default_fused_reshape_add_reshape_transpose_reshape.T_reshape.ndim is expected to equal 3\00", align 1
@.str.396 = private constant [297 x i8] c"Assert fail: T.tvm_struct_get(T_reshape, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(T_reshape, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(T_reshape, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_add_reshape_transpose_reshape.T_reshape.dtype is expected to be float32\00", align 1
@.str.397 = private constant [334 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_T_reshape_shape[0]) == 12, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape.T_reshape.shape[0] has an unsatisfied constraint: 12 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_T_reshape_shape[0])\00", align 1
@.str.398 = private constant [332 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_T_reshape_shape[1]) == 5, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape.T_reshape.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_T_reshape_shape[1])\00", align 1
@.str.399 = private constant [334 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_T_reshape_shape[2]) == 64, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape.T_reshape.shape[2] has an unsatisfied constraint: 64 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_T_reshape_shape[2])\00", align 1
@.str.400 = private constant [438 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_T_reshape_strides[2]) and 64 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_T_reshape_strides[1]) and 320 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_T_reshape_strides[0]), tvmgen_default_fused_reshape_add_reshape_transpose_reshape.T_reshape.strides: expected to be compact array\00", align 1
@.str.401 = private constant [253 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(T_reshape, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape.T_reshape.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(T_reshape, 0, 8, \22uint64\22)\00", align 1
@.str.402 = private constant [233 x i8] c"Assert fail: T.tvm_struct_get(T_reshape, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape.T_reshape.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(T_reshape, 0, 10, \22int32\22)\00", align 1
@.str.403 = private constant [239 x i8] c"Assert fail: dev_id == T.tvm_struct_get(T_reshape, 0, 9, \22int32\22), Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape.T_reshape.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(T_reshape, 0, 9, \22int32\22)\00", align 1
@.str.405 = private constant [119 x i8] c"Assert fail: num_args == 3, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose: num_args should be 3\00", align 1
@.str.406 = private constant [174 x i8] c"Assert fail: p0_code == 3 or p0_code == 13 or p0_code == 7 or p0_code == 4, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose: Expect arg[0] to be pointer\00", align 1
@.str.407 = private constant [174 x i8] c"Assert fail: p1_code == 3 or p1_code == 13 or p1_code == 7 or p1_code == 4, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose: Expect arg[1] to be pointer\00", align 1
@.str.408 = private constant [210 x i8] c"Assert fail: T_transpose_code == 3 or T_transpose_code == 13 or T_transpose_code == 7 or T_transpose_code == 4, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose: Expect arg[2] to be pointer\00", align 1
@.str.409 = private constant [155 x i8] c"Assert fail: 2 == T.tvm_struct_get(p0, 0, 4, \22int32\22), tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p0.ndim is expected to equal 2\00", align 1
@.str.410 = private constant [279 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p0, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p0, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p0.dtype is expected to be float32\00", align 1
@.str.411 = private constant [341 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_p0_shape[0]) == 5, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p0.shape[0] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_p0_shape[0])\00", align 1
@.str.412 = private constant [345 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_p0_shape[1]) == 768, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p0.shape[1] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_p0_shape[1])\00", align 1
@.str.413 = private constant [340 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_p0_strides[1]) and 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_p0_strides[0]), tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p0.strides: expected to be compact array\00", align 1
@.str.414 = private constant [242 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p0.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22)\00", align 1
@.str.415 = private constant [222 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p0.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p0, 0, 10, \22int32\22)\00", align 1
@.str.416 = private constant [155 x i8] c"Assert fail: 1 == T.tvm_struct_get(p1, 0, 4, \22int32\22), tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p1.ndim is expected to equal 1\00", align 1
@.str.417 = private constant [279 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p1, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p1, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p1.dtype is expected to be float32\00", align 1
@.str.418 = private constant [345 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_p1_shape[0]) == 768, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p1.shape[0] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_p1_shape[0])\00", align 1
@.str.419 = private constant [229 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_p1_strides[0]), tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p1.strides: expected to be compact array\00", align 1
@.str.420 = private constant [242 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p1.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22)\00", align 1
@.str.421 = private constant [222 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p1.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p1, 0, 10, \22int32\22)\00", align 1
@.str.422 = private constant [228 x i8] c"Assert fail: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22), Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p1.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22)\00", align 1
@.str.423 = private constant [173 x i8] c"Assert fail: 3 == T.tvm_struct_get(T_transpose, 0, 4, \22int32\22), tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.T_transpose.ndim is expected to equal 3\00", align 1
@.str.424 = private constant [315 x i8] c"Assert fail: T.tvm_struct_get(T_transpose, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(T_transpose, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(T_transpose, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.T_transpose.dtype is expected to be float32\00", align 1
@.str.425 = private constant [370 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_T_transpose_shape[0]) == 12, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.T_transpose.shape[0] has an unsatisfied constraint: 12 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_T_transpose_shape[0])\00", align 1
@.str.426 = private constant [368 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_T_transpose_shape[1]) == 5, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.T_transpose.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_T_transpose_shape[1])\00", align 1
@.str.427 = private constant [370 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_T_transpose_shape[2]) == 64, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.T_transpose.shape[2] has an unsatisfied constraint: 64 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_T_transpose_shape[2])\00", align 1
@.str.428 = private constant [486 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_T_transpose_strides[2]) and 64 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_T_transpose_strides[1]) and 320 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_T_transpose_strides[0]), tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.T_transpose.strides: expected to be compact array\00", align 1
@.str.429 = private constant [269 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(T_transpose, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.T_transpose.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(T_transpose, 0, 8, \22uint64\22)\00", align 1
@.str.430 = private constant [249 x i8] c"Assert fail: T.tvm_struct_get(T_transpose, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.T_transpose.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(T_transpose, 0, 10, \22int32\22)\00", align 1
@.str.431 = private constant [255 x i8] c"Assert fail: dev_id == T.tvm_struct_get(T_transpose, 0, 9, \22int32\22), Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.T_transpose.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(T_transpose, 0, 9, \22int32\22)\00", align 1
@.str.433 = private constant [121 x i8] c"Assert fail: num_args == 3, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1: num_args should be 3\00", align 1
@.str.434 = private constant [176 x i8] c"Assert fail: p0_code == 3 or p0_code == 13 or p0_code == 7 or p0_code == 4, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1: Expect arg[0] to be pointer\00", align 1
@.str.435 = private constant [176 x i8] c"Assert fail: p1_code == 3 or p1_code == 13 or p1_code == 7 or p1_code == 4, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1: Expect arg[1] to be pointer\00", align 1
@.str.436 = private constant [212 x i8] c"Assert fail: T_transpose_code == 3 or T_transpose_code == 13 or T_transpose_code == 7 or T_transpose_code == 4, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1: Expect arg[2] to be pointer\00", align 1
@.str.437 = private constant [157 x i8] c"Assert fail: 2 == T.tvm_struct_get(p0, 0, 4, \22int32\22), tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p0.ndim is expected to equal 2\00", align 1
@.str.438 = private constant [281 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p0, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p0, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p0.dtype is expected to be float32\00", align 1
@.str.439 = private constant [347 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1_p0_shape[0]) == 5, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p0.shape[0] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1_p0_shape[0])\00", align 1
@.str.440 = private constant [351 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1_p0_shape[1]) == 768, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p0.shape[1] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1_p0_shape[1])\00", align 1
@.str.441 = private constant [346 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1_p0_strides[1]) and 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1_p0_strides[0]), tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p0.strides: expected to be compact array\00", align 1
@.str.442 = private constant [244 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p0.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22)\00", align 1
@.str.443 = private constant [224 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p0.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p0, 0, 10, \22int32\22)\00", align 1
@.str.444 = private constant [157 x i8] c"Assert fail: 1 == T.tvm_struct_get(p1, 0, 4, \22int32\22), tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p1.ndim is expected to equal 1\00", align 1
@.str.445 = private constant [281 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p1, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p1, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p1.dtype is expected to be float32\00", align 1
@.str.446 = private constant [351 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1_p1_shape[0]) == 768, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p1.shape[0] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1_p1_shape[0])\00", align 1
@.str.447 = private constant [233 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1_p1_strides[0]), tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p1.strides: expected to be compact array\00", align 1
@.str.448 = private constant [244 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p1.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22)\00", align 1
@.str.449 = private constant [224 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p1.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p1, 0, 10, \22int32\22)\00", align 1
@.str.450 = private constant [230 x i8] c"Assert fail: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22), Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p1.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22)\00", align 1
@.str.451 = private constant [175 x i8] c"Assert fail: 3 == T.tvm_struct_get(T_transpose, 0, 4, \22int32\22), tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.T_transpose.ndim is expected to equal 3\00", align 1
@.str.452 = private constant [317 x i8] c"Assert fail: T.tvm_struct_get(T_transpose, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(T_transpose, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(T_transpose, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.T_transpose.dtype is expected to be float32\00", align 1
@.str.453 = private constant [376 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1_T_transpose_shape[0]) == 12, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.T_transpose.shape[0] has an unsatisfied constraint: 12 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1_T_transpose_shape[0])\00", align 1
@.str.454 = private constant [376 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1_T_transpose_shape[1]) == 64, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.T_transpose.shape[1] has an unsatisfied constraint: 64 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1_T_transpose_shape[1])\00", align 1
@.str.455 = private constant [374 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1_T_transpose_shape[2]) == 5, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.T_transpose.shape[2] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1_T_transpose_shape[2])\00", align 1
@.str.456 = private constant [493 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1_T_transpose_strides[2]) and 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1_T_transpose_strides[1]) and 320 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1_T_transpose_strides[0]), tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.T_transpose.strides: expected to be compact array\00", align 1
@.str.457 = private constant [271 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(T_transpose, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.T_transpose.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(T_transpose, 0, 8, \22uint64\22)\00", align 1
@.str.458 = private constant [251 x i8] c"Assert fail: T.tvm_struct_get(T_transpose, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.T_transpose.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(T_transpose, 0, 10, \22int32\22)\00", align 1
@.str.459 = private constant [257 x i8] c"Assert fail: dev_id == T.tvm_struct_get(T_transpose, 0, 9, \22int32\22), Argument tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.T_transpose.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(T_transpose, 0, 9, \22int32\22)\00", align 1
@.str.461 = private constant [90 x i8] c"Assert fail: num_args == 3, tvmgen_default_fused_reshape_divide_add: num_args should be 3\00", align 1
@.str.462 = private constant [145 x i8] c"Assert fail: p0_code == 3 or p0_code == 13 or p0_code == 7 or p0_code == 4, tvmgen_default_fused_reshape_divide_add: Expect arg[0] to be pointer\00", align 1
@.str.463 = private constant [145 x i8] c"Assert fail: p1_code == 3 or p1_code == 13 or p1_code == 7 or p1_code == 4, tvmgen_default_fused_reshape_divide_add: Expect arg[1] to be pointer\00", align 1
@.str.464 = private constant [157 x i8] c"Assert fail: T_add_code == 3 or T_add_code == 13 or T_add_code == 7 or T_add_code == 4, tvmgen_default_fused_reshape_divide_add: Expect arg[2] to be pointer\00", align 1
@.str.465 = private constant [126 x i8] c"Assert fail: 3 == T.tvm_struct_get(p0, 0, 4, \22int32\22), tvmgen_default_fused_reshape_divide_add.p0.ndim is expected to equal 3\00", align 1
@.str.466 = private constant [250 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p0, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p0, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_divide_add.p0.dtype is expected to be float32\00", align 1
@.str.467 = private constant [256 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_p0_shape[0]) == 12, Argument tvmgen_default_fused_reshape_divide_add.p0.shape[0] has an unsatisfied constraint: 12 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_p0_shape[0])\00", align 1
@.str.468 = private constant [254 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_p0_shape[1]) == 5, Argument tvmgen_default_fused_reshape_divide_add.p0.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_p0_shape[1])\00", align 1
@.str.469 = private constant [254 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_p0_shape[2]) == 5, Argument tvmgen_default_fused_reshape_divide_add.p0.shape[2] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_p0_shape[2])\00", align 1
@.str.470 = private constant [332 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_p0_strides[2]) and 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_p0_strides[1]) and 25 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_p0_strides[0]), tvmgen_default_fused_reshape_divide_add.p0.strides: expected to be compact array\00", align 1
@.str.471 = private constant [213 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_divide_add.p0.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22)\00", align 1
@.str.472 = private constant [193 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_divide_add.p0.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p0, 0, 10, \22int32\22)\00", align 1
@.str.473 = private constant [126 x i8] c"Assert fail: 4 == T.tvm_struct_get(p1, 0, 4, \22int32\22), tvmgen_default_fused_reshape_divide_add.p1.ndim is expected to equal 4\00", align 1
@.str.474 = private constant [250 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p1, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p1, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_divide_add.p1.dtype is expected to be float32\00", align 1
@.str.475 = private constant [254 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_p1_shape[0]) == 1, Argument tvmgen_default_fused_reshape_divide_add.p1.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_p1_shape[0])\00", align 1
@.str.476 = private constant [254 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_p1_shape[1]) == 1, Argument tvmgen_default_fused_reshape_divide_add.p1.shape[1] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_p1_shape[1])\00", align 1
@.str.477 = private constant [254 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_p1_shape[2]) == 1, Argument tvmgen_default_fused_reshape_divide_add.p1.shape[2] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_p1_shape[2])\00", align 1
@.str.478 = private constant [254 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_p1_shape[3]) == 5, Argument tvmgen_default_fused_reshape_divide_add.p1.shape[3] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_p1_shape[3])\00", align 1
@.str.479 = private constant [171 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_p1_strides[3]), tvmgen_default_fused_reshape_divide_add.p1.strides: expected to be compact array\00", align 1
@.str.480 = private constant [213 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_divide_add.p1.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22)\00", align 1
@.str.481 = private constant [193 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_divide_add.p1.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p1, 0, 10, \22int32\22)\00", align 1
@.str.482 = private constant [199 x i8] c"Assert fail: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22), Argument tvmgen_default_fused_reshape_divide_add.p1.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22)\00", align 1
@.str.483 = private constant [132 x i8] c"Assert fail: 4 == T.tvm_struct_get(T_add, 0, 4, \22int32\22), tvmgen_default_fused_reshape_divide_add.T_add.ndim is expected to equal 4\00", align 1
@.str.484 = private constant [262 x i8] c"Assert fail: T.tvm_struct_get(T_add, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(T_add, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(T_add, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_divide_add.T_add.dtype is expected to be float32\00", align 1
@.str.485 = private constant [263 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_T_add_shape[0]) == 1, Argument tvmgen_default_fused_reshape_divide_add.T_add.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_T_add_shape[0])\00", align 1
@.str.486 = private constant [265 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_T_add_shape[1]) == 12, Argument tvmgen_default_fused_reshape_divide_add.T_add.shape[1] has an unsatisfied constraint: 12 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_T_add_shape[1])\00", align 1
@.str.487 = private constant [263 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_T_add_shape[2]) == 5, Argument tvmgen_default_fused_reshape_divide_add.T_add.shape[2] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_T_add_shape[2])\00", align 1
@.str.488 = private constant [263 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_T_add_shape[3]) == 5, Argument tvmgen_default_fused_reshape_divide_add.T_add.shape[3] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_T_add_shape[3])\00", align 1
@.str.489 = private constant [344 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_T_add_strides[3]) and 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_T_add_strides[2]) and 25 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_divide_add_T_add_strides[1]), tvmgen_default_fused_reshape_divide_add.T_add.strides: expected to be compact array\00", align 1
@.str.490 = private constant [222 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(T_add, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_divide_add.T_add.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(T_add, 0, 8, \22uint64\22)\00", align 1
@.str.491 = private constant [202 x i8] c"Assert fail: T.tvm_struct_get(T_add, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_divide_add.T_add.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(T_add, 0, 10, \22int32\22)\00", align 1
@.str.492 = private constant [208 x i8] c"Assert fail: dev_id == T.tvm_struct_get(T_add, 0, 9, \22int32\22), Argument tvmgen_default_fused_reshape_divide_add.T_add.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(T_add, 0, 9, \22int32\22)\00", align 1
@.str.494 = private constant [97 x i8] c"Assert fail: num_args == 2, tvmgen_default_fused_reshape_transpose_reshape: num_args should be 2\00", align 1
@.str.495 = private constant [152 x i8] c"Assert fail: p0_code == 3 or p0_code == 13 or p0_code == 7 or p0_code == 4, tvmgen_default_fused_reshape_transpose_reshape: Expect arg[0] to be pointer\00", align 1
@.str.496 = private constant [180 x i8] c"Assert fail: T_reshape_code == 3 or T_reshape_code == 13 or T_reshape_code == 7 or T_reshape_code == 4, tvmgen_default_fused_reshape_transpose_reshape: Expect arg[1] to be pointer\00", align 1
@.str.497 = private constant [133 x i8] c"Assert fail: 3 == T.tvm_struct_get(p0, 0, 4, \22int32\22), tvmgen_default_fused_reshape_transpose_reshape.p0.ndim is expected to equal 3\00", align 1
@.str.498 = private constant [257 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p0, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p0, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_transpose_reshape.p0.dtype is expected to be float32\00", align 1
@.str.499 = private constant [277 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_transpose_reshape_p0_shape[0]) == 12, Argument tvmgen_default_fused_reshape_transpose_reshape.p0.shape[0] has an unsatisfied constraint: 12 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_transpose_reshape_p0_shape[0])\00", align 1
@.str.500 = private constant [275 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_transpose_reshape_p0_shape[1]) == 5, Argument tvmgen_default_fused_reshape_transpose_reshape.p0.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_transpose_reshape_p0_shape[1])\00", align 1
@.str.501 = private constant [277 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_transpose_reshape_p0_shape[2]) == 64, Argument tvmgen_default_fused_reshape_transpose_reshape.p0.shape[2] has an unsatisfied constraint: 64 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_transpose_reshape_p0_shape[2])\00", align 1
@.str.502 = private constant [362 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_transpose_reshape_p0_strides[2]) and 64 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_transpose_reshape_p0_strides[1]) and 320 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_transpose_reshape_p0_strides[0]), tvmgen_default_fused_reshape_transpose_reshape.p0.strides: expected to be compact array\00", align 1
@.str.503 = private constant [220 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_transpose_reshape.p0.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22)\00", align 1
@.str.504 = private constant [200 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_transpose_reshape.p0.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p0, 0, 10, \22int32\22)\00", align 1
@.str.505 = private constant [147 x i8] c"Assert fail: 2 == T.tvm_struct_get(T_reshape, 0, 4, \22int32\22), tvmgen_default_fused_reshape_transpose_reshape.T_reshape.ndim is expected to equal 2\00", align 1
@.str.506 = private constant [285 x i8] c"Assert fail: T.tvm_struct_get(T_reshape, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(T_reshape, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(T_reshape, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_reshape_transpose_reshape.T_reshape.dtype is expected to be float32\00", align 1
@.str.507 = private constant [296 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_transpose_reshape_T_reshape_shape[0]) == 5, Argument tvmgen_default_fused_reshape_transpose_reshape.T_reshape.shape[0] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_transpose_reshape_T_reshape_shape[0])\00", align 1
@.str.508 = private constant [300 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_reshape_transpose_reshape_T_reshape_shape[1]) == 768, Argument tvmgen_default_fused_reshape_transpose_reshape.T_reshape.shape[1] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_transpose_reshape_T_reshape_shape[1])\00", align 1
@.str.509 = private constant [295 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_transpose_reshape_T_reshape_strides[1]) and 768 == T.Cast(\22int32\22, tvmgen_default_fused_reshape_transpose_reshape_T_reshape_strides[0]), tvmgen_default_fused_reshape_transpose_reshape.T_reshape.strides: expected to be compact array\00", align 1
@.str.510 = private constant [241 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(T_reshape, 0, 8, \22uint64\22), Argument tvmgen_default_fused_reshape_transpose_reshape.T_reshape.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(T_reshape, 0, 8, \22uint64\22)\00", align 1
@.str.511 = private constant [221 x i8] c"Assert fail: T.tvm_struct_get(T_reshape, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_reshape_transpose_reshape.T_reshape.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(T_reshape, 0, 10, \22int32\22)\00", align 1
@.str.512 = private constant [227 x i8] c"Assert fail: dev_id == T.tvm_struct_get(T_reshape, 0, 9, \22int32\22), Argument tvmgen_default_fused_reshape_transpose_reshape.T_reshape.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(T_reshape, 0, 9, \22int32\22)\00", align 1
@.str.514 = private constant [112 x i8] c"Assert fail: num_args == 6, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add: num_args should be 6\00", align 1
@.str.515 = private constant [167 x i8] c"Assert fail: p0_code == 3 or p0_code == 13 or p0_code == 7 or p0_code == 4, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add: Expect arg[0] to be pointer\00", align 1
@.str.516 = private constant [167 x i8] c"Assert fail: p1_code == 3 or p1_code == 13 or p1_code == 7 or p1_code == 4, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add: Expect arg[1] to be pointer\00", align 1
@.str.517 = private constant [167 x i8] c"Assert fail: p2_code == 3 or p2_code == 13 or p2_code == 7 or p2_code == 4, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add: Expect arg[2] to be pointer\00", align 1
@.str.518 = private constant [167 x i8] c"Assert fail: p3_code == 3 or p3_code == 13 or p3_code == 7 or p3_code == 4, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add: Expect arg[3] to be pointer\00", align 1
@.str.519 = private constant [167 x i8] c"Assert fail: p4_code == 3 or p4_code == 13 or p4_code == 7 or p4_code == 4, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add: Expect arg[4] to be pointer\00", align 1
@.str.520 = private constant [179 x i8] c"Assert fail: T_add_code == 3 or T_add_code == 13 or T_add_code == 7 or T_add_code == 4, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add: Expect arg[5] to be pointer\00", align 1
@.str.521 = private constant [148 x i8] c"Assert fail: 3 == T.tvm_struct_get(p0, 0, 4, \22int32\22), tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p0.ndim is expected to equal 3\00", align 1
@.str.522 = private constant [272 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p0, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p0, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p0.dtype is expected to be float32\00", align 1
@.str.523 = private constant [320 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p0_shape[0]) == 1, Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p0.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p0_shape[0])\00", align 1
@.str.524 = private constant [320 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p0_shape[1]) == 5, Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p0.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p0_shape[1])\00", align 1
@.str.525 = private constant [324 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p0_shape[2]) == 768, Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p0.shape[2] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p0_shape[2])\00", align 1
@.str.526 = private constant [319 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p0_strides[2]) and 768 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p0_strides[1]), tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p0.strides: expected to be compact array\00", align 1
@.str.527 = private constant [235 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22), Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p0.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22)\00", align 1
@.str.528 = private constant [215 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p0.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p0, 0, 10, \22int32\22)\00", align 1
@.str.529 = private constant [148 x i8] c"Assert fail: 3 == T.tvm_struct_get(p1, 0, 4, \22int32\22), tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p1.ndim is expected to equal 3\00", align 1
@.str.530 = private constant [272 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p1, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p1, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p1.dtype is expected to be float32\00", align 1
@.str.531 = private constant [320 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p1_shape[0]) == 1, Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p1.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p1_shape[0])\00", align 1
@.str.532 = private constant [320 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p1_shape[1]) == 5, Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p1.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p1_shape[1])\00", align 1
@.str.533 = private constant [320 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p1_shape[2]) == 1, Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p1.shape[2] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p1_shape[2])\00", align 1
@.str.534 = private constant [215 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p1_strides[1]), tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p1.strides: expected to be compact array\00", align 1
@.str.535 = private constant [235 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22), Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p1.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22)\00", align 1
@.str.536 = private constant [215 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p1.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p1, 0, 10, \22int32\22)\00", align 1
@.str.537 = private constant [221 x i8] c"Assert fail: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22), Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p1.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22)\00", align 1
@.str.538 = private constant [148 x i8] c"Assert fail: 3 == T.tvm_struct_get(p2, 0, 4, \22int32\22), tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p2.ndim is expected to equal 3\00", align 1
@.str.539 = private constant [272 x i8] c"Assert fail: T.tvm_struct_get(p2, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p2, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p2, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p2.dtype is expected to be float32\00", align 1
@.str.540 = private constant [320 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p2_shape[0]) == 1, Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p2.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p2_shape[0])\00", align 1
@.str.541 = private constant [320 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p2_shape[1]) == 5, Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p2.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p2_shape[1])\00", align 1
@.str.542 = private constant [320 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p2_shape[2]) == 1, Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p2.shape[2] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p2_shape[2])\00", align 1
@.str.543 = private constant [215 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p2_strides[1]), tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p2.strides: expected to be compact array\00", align 1
@.str.544 = private constant [235 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p2, 0, 8, \22uint64\22), Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p2.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p2, 0, 8, \22uint64\22)\00", align 1
@.str.545 = private constant [215 x i8] c"Assert fail: T.tvm_struct_get(p2, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p2.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p2, 0, 10, \22int32\22)\00", align 1
@.str.546 = private constant [221 x i8] c"Assert fail: dev_id == T.tvm_struct_get(p2, 0, 9, \22int32\22), Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p2.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(p2, 0, 9, \22int32\22)\00", align 1
@.str.547 = private constant [148 x i8] c"Assert fail: 1 == T.tvm_struct_get(p3, 0, 4, \22int32\22), tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p3.ndim is expected to equal 1\00", align 1
@.str.548 = private constant [272 x i8] c"Assert fail: T.tvm_struct_get(p3, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p3, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p3, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p3.dtype is expected to be float32\00", align 1
@.str.549 = private constant [324 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p3_shape[0]) == 768, Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p3.shape[0] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p3_shape[0])\00", align 1
@.str.550 = private constant [215 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p3_strides[0]), tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p3.strides: expected to be compact array\00", align 1
@.str.551 = private constant [235 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p3, 0, 8, \22uint64\22), Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p3.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p3, 0, 8, \22uint64\22)\00", align 1
@.str.552 = private constant [215 x i8] c"Assert fail: T.tvm_struct_get(p3, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p3.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p3, 0, 10, \22int32\22)\00", align 1
@.str.553 = private constant [221 x i8] c"Assert fail: dev_id == T.tvm_struct_get(p3, 0, 9, \22int32\22), Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p3.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(p3, 0, 9, \22int32\22)\00", align 1
@.str.554 = private constant [148 x i8] c"Assert fail: 1 == T.tvm_struct_get(p4, 0, 4, \22int32\22), tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p4.ndim is expected to equal 1\00", align 1
@.str.555 = private constant [272 x i8] c"Assert fail: T.tvm_struct_get(p4, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p4, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p4, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p4.dtype is expected to be float32\00", align 1
@.str.556 = private constant [324 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p4_shape[0]) == 768, Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p4.shape[0] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p4_shape[0])\00", align 1
@.str.557 = private constant [215 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_p4_strides[0]), tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p4.strides: expected to be compact array\00", align 1
@.str.558 = private constant [235 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p4, 0, 8, \22uint64\22), Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p4.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p4, 0, 8, \22uint64\22)\00", align 1
@.str.559 = private constant [215 x i8] c"Assert fail: T.tvm_struct_get(p4, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p4.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p4, 0, 10, \22int32\22)\00", align 1
@.str.560 = private constant [221 x i8] c"Assert fail: dev_id == T.tvm_struct_get(p4, 0, 9, \22int32\22), Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p4.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(p4, 0, 9, \22int32\22)\00", align 1
@.str.561 = private constant [154 x i8] c"Assert fail: 3 == T.tvm_struct_get(T_add, 0, 4, \22int32\22), tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.T_add.ndim is expected to equal 3\00", align 1
@.str.562 = private constant [284 x i8] c"Assert fail: T.tvm_struct_get(T_add, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(T_add, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(T_add, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.T_add.dtype is expected to be float32\00", align 1
@.str.563 = private constant [329 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_T_add_shape[0]) == 1, Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.T_add.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_T_add_shape[0])\00", align 1
@.str.564 = private constant [329 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_T_add_shape[1]) == 5, Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.T_add.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_T_add_shape[1])\00", align 1
@.str.565 = private constant [333 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_T_add_shape[2]) == 768, Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.T_add.shape[2] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_T_add_shape[2])\00", align 1
@.str.566 = private constant [328 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_T_add_strides[2]) and 768 == T.Cast(\22int32\22, tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_T_add_strides[1]), tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.T_add.strides: expected to be compact array\00", align 1
@.str.567 = private constant [244 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(T_add, 0, 8, \22uint64\22), Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.T_add.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(T_add, 0, 8, \22uint64\22)\00", align 1
@.str.568 = private constant [224 x i8] c"Assert fail: T.tvm_struct_get(T_add, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.T_add.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(T_add, 0, 10, \22int32\22)\00", align 1
@.str.569 = private constant [230 x i8] c"Assert fail: dev_id == T.tvm_struct_get(T_add, 0, 9, \22int32\22), Argument tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.T_add.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(T_add, 0, 9, \22int32\22)\00", align 1
@.str.571 = private constant [76 x i8] c"Assert fail: num_args == 2, tvmgen_default_fused_take: num_args should be 2\00", align 1
@.str.572 = private constant [131 x i8] c"Assert fail: p0_code == 3 or p0_code == 13 or p0_code == 7 or p0_code == 4, tvmgen_default_fused_take: Expect arg[0] to be pointer\00", align 1
@.str.573 = private constant [147 x i8] c"Assert fail: T_take_code == 3 or T_take_code == 13 or T_take_code == 7 or T_take_code == 4, tvmgen_default_fused_take: Expect arg[1] to be pointer\00", align 1
@.str.574 = private constant [112 x i8] c"Assert fail: 3 == T.tvm_struct_get(p0, 0, 4, \22int32\22), tvmgen_default_fused_take.p0.ndim is expected to equal 3\00", align 1
@.str.575 = private constant [236 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p0, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p0, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_take.p0.dtype is expected to be float32\00", align 1
@.str.576 = private constant [212 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_take_p0_shape[0]) == 1, Argument tvmgen_default_fused_take.p0.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_take_p0_shape[0])\00", align 1
@.str.577 = private constant [212 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_take_p0_shape[1]) == 5, Argument tvmgen_default_fused_take.p0.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_take_p0_shape[1])\00", align 1
@.str.578 = private constant [216 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_take_p0_shape[2]) == 768, Argument tvmgen_default_fused_take.p0.shape[2] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_take_p0_shape[2])\00", align 1
@.str.579 = private constant [211 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_take_p0_strides[2]) and 768 == T.Cast(\22int32\22, tvmgen_default_fused_take_p0_strides[1]), tvmgen_default_fused_take.p0.strides: expected to be compact array\00", align 1
@.str.580 = private constant [199 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22), Argument tvmgen_default_fused_take.p0.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22)\00", align 1
@.str.581 = private constant [179 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_take.p0.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p0, 0, 10, \22int32\22)\00", align 1
@.str.582 = private constant [120 x i8] c"Assert fail: 2 == T.tvm_struct_get(T_take, 0, 4, \22int32\22), tvmgen_default_fused_take.T_take.ndim is expected to equal 2\00", align 1
@.str.583 = private constant [252 x i8] c"Assert fail: T.tvm_struct_get(T_take, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(T_take, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(T_take, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_take.T_take.dtype is expected to be float32\00", align 1
@.str.584 = private constant [224 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_take_T_take_shape[0]) == 1, Argument tvmgen_default_fused_take.T_take.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_take_T_take_shape[0])\00", align 1
@.str.585 = private constant [228 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_take_T_take_shape[1]) == 768, Argument tvmgen_default_fused_take.T_take.shape[1] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_take_T_take_shape[1])\00", align 1
@.str.586 = private constant [151 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_take_T_take_strides[1]), tvmgen_default_fused_take.T_take.strides: expected to be compact array\00", align 1
@.str.587 = private constant [211 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(T_take, 0, 8, \22uint64\22), Argument tvmgen_default_fused_take.T_take.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(T_take, 0, 8, \22uint64\22)\00", align 1
@.str.588 = private constant [191 x i8] c"Assert fail: T.tvm_struct_get(T_take, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_take.T_take.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(T_take, 0, 10, \22int32\22)\00", align 1
@.str.589 = private constant [197 x i8] c"Assert fail: dev_id == T.tvm_struct_get(T_take, 0, 9, \22int32\22), Argument tvmgen_default_fused_take.T_take.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(T_take, 0, 9, \22int32\22)\00", align 1
@.str.590 = private constant [80 x i8] c"Assert fail: num_args == 3, tvmgen_default_fused_variance: num_args should be 3\00", align 1
@.str.591 = private constant [135 x i8] c"Assert fail: p0_code == 3 or p0_code == 13 or p0_code == 7 or p0_code == 4, tvmgen_default_fused_variance: Expect arg[0] to be pointer\00", align 1
@.str.592 = private constant [135 x i8] c"Assert fail: p1_code == 3 or p1_code == 13 or p1_code == 7 or p1_code == 4, tvmgen_default_fused_variance: Expect arg[1] to be pointer\00", align 1
@.str.593 = private constant [159 x i8] c"Assert fail: T_divide_code == 3 or T_divide_code == 13 or T_divide_code == 7 or T_divide_code == 4, tvmgen_default_fused_variance: Expect arg[2] to be pointer\00", align 1
@.str.594 = private constant [116 x i8] c"Assert fail: 3 == T.tvm_struct_get(p0, 0, 4, \22int32\22), tvmgen_default_fused_variance.p0.ndim is expected to equal 3\00", align 1
@.str.595 = private constant [240 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p0, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p0, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_variance.p0.dtype is expected to be float32\00", align 1
@.str.596 = private constant [224 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_variance_p0_shape[0]) == 1, Argument tvmgen_default_fused_variance.p0.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_variance_p0_shape[0])\00", align 1
@.str.597 = private constant [224 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_variance_p0_shape[1]) == 5, Argument tvmgen_default_fused_variance.p0.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_variance_p0_shape[1])\00", align 1
@.str.598 = private constant [228 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_variance_p0_shape[2]) == 768, Argument tvmgen_default_fused_variance.p0.shape[2] has an unsatisfied constraint: 768 == T.Cast(\22int32\22, tvmgen_default_fused_variance_p0_shape[2])\00", align 1
@.str.599 = private constant [223 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_variance_p0_strides[2]) and 768 == T.Cast(\22int32\22, tvmgen_default_fused_variance_p0_strides[1]), tvmgen_default_fused_variance.p0.strides: expected to be compact array\00", align 1
@.str.600 = private constant [203 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22), Argument tvmgen_default_fused_variance.p0.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p0, 0, 8, \22uint64\22)\00", align 1
@.str.601 = private constant [183 x i8] c"Assert fail: T.tvm_struct_get(p0, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_variance.p0.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p0, 0, 10, \22int32\22)\00", align 1
@.str.602 = private constant [116 x i8] c"Assert fail: 3 == T.tvm_struct_get(p1, 0, 4, \22int32\22), tvmgen_default_fused_variance.p1.ndim is expected to equal 3\00", align 1
@.str.603 = private constant [240 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(p1, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(p1, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_variance.p1.dtype is expected to be float32\00", align 1
@.str.604 = private constant [224 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_variance_p1_shape[0]) == 1, Argument tvmgen_default_fused_variance.p1.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_variance_p1_shape[0])\00", align 1
@.str.605 = private constant [224 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_variance_p1_shape[1]) == 5, Argument tvmgen_default_fused_variance.p1.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_variance_p1_shape[1])\00", align 1
@.str.606 = private constant [224 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_variance_p1_shape[2]) == 1, Argument tvmgen_default_fused_variance.p1.shape[2] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_variance_p1_shape[2])\00", align 1
@.str.607 = private constant [151 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_variance_p1_strides[1]), tvmgen_default_fused_variance.p1.strides: expected to be compact array\00", align 1
@.str.608 = private constant [203 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22), Argument tvmgen_default_fused_variance.p1.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(p1, 0, 8, \22uint64\22)\00", align 1
@.str.609 = private constant [183 x i8] c"Assert fail: T.tvm_struct_get(p1, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_variance.p1.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(p1, 0, 10, \22int32\22)\00", align 1
@.str.610 = private constant [189 x i8] c"Assert fail: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22), Argument tvmgen_default_fused_variance.p1.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(p1, 0, 9, \22int32\22)\00", align 1
@.str.611 = private constant [128 x i8] c"Assert fail: 3 == T.tvm_struct_get(T_divide, 0, 4, \22int32\22), tvmgen_default_fused_variance.T_divide.ndim is expected to equal 3\00", align 1
@.str.612 = private constant [264 x i8] c"Assert fail: T.tvm_struct_get(T_divide, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(T_divide, 0, 6, \22uint8\22) == T.uint8(32) and T.tvm_struct_get(T_divide, 0, 7, \22uint16\22) == T.uint16(1), tvmgen_default_fused_variance.T_divide.dtype is expected to be float32\00", align 1
@.str.613 = private constant [242 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_variance_T_divide_shape[0]) == 1, Argument tvmgen_default_fused_variance.T_divide.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_variance_T_divide_shape[0])\00", align 1
@.str.614 = private constant [242 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_variance_T_divide_shape[1]) == 5, Argument tvmgen_default_fused_variance.T_divide.shape[1] has an unsatisfied constraint: 5 == T.Cast(\22int32\22, tvmgen_default_fused_variance_T_divide_shape[1])\00", align 1
@.str.615 = private constant [242 x i8] c"Assert fail: T.Cast(\22int32\22, tvmgen_default_fused_variance_T_divide_shape[2]) == 1, Argument tvmgen_default_fused_variance.T_divide.shape[2] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, tvmgen_default_fused_variance_T_divide_shape[2])\00", align 1
@.str.616 = private constant [163 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, tvmgen_default_fused_variance_T_divide_strides[1]), tvmgen_default_fused_variance.T_divide.strides: expected to be compact array\00", align 1
@.str.617 = private constant [221 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(T_divide, 0, 8, \22uint64\22), Argument tvmgen_default_fused_variance.T_divide.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(T_divide, 0, 8, \22uint64\22)\00", align 1
@.str.618 = private constant [201 x i8] c"Assert fail: T.tvm_struct_get(T_divide, 0, 10, \22int32\22) == 1, Argument tvmgen_default_fused_variance.T_divide.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(T_divide, 0, 10, \22int32\22)\00", align 1
@.str.619 = private constant [207 x i8] c"Assert fail: dev_id == T.tvm_struct_get(T_divide, 0, 9, \22int32\22), Argument tvmgen_default_fused_variance.T_divide.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(T_divide, 0, 9, \22int32\22)\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

define dllexport i32 @tvmgen_default_fused_less_add_where_take_add(ptr noalias nocapture readonly %args, ptr noalias nocapture readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !4 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !11, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !12, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !13, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !14, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !15, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !16, metadata !DIExpression()), !dbg !17
  %0 = icmp eq i32 %num_args, 4, !dbg !17
  br i1 %0, label %assert_end, label %assert_fail, !dbg !17, !prof !18

common.ret:                                       ; preds = %assert_end92, %assert_fail91, %assert_fail89, %assert_fail87, %assert_fail85, %assert_fail81, %assert_fail79, %assert_fail77, %assert_fail75, %assert_fail71, %assert_fail69, %assert_fail67, %assert_fail65, %assert_fail63, %assert_fail59, %assert_fail57, %assert_fail55, %assert_fail53, %assert_fail49, %assert_fail47, %assert_fail45, %assert_fail43, %assert_fail41, %assert_fail37, %assert_fail35, %assert_fail33, %assert_fail29, %assert_fail27, %assert_fail25, %assert_fail23, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail7, %assert_fail5, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail27 ], [ -1, %assert_fail29 ], [ -1, %assert_fail33 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail45 ], [ -1, %assert_fail47 ], [ -1, %assert_fail49 ], [ -1, %assert_fail53 ], [ -1, %assert_fail55 ], [ -1, %assert_fail57 ], [ -1, %assert_fail59 ], [ -1, %assert_fail63 ], [ -1, %assert_fail65 ], [ -1, %assert_fail67 ], [ -1, %assert_fail69 ], [ -1, %assert_fail71 ], [ -1, %assert_fail75 ], [ -1, %assert_fail77 ], [ -1, %assert_fail79 ], [ -1, %assert_fail81 ], [ -1, %assert_fail85 ], [ -1, %assert_fail87 ], [ -1, %assert_fail89 ], [ -1, %assert_fail91 ], [ %209, %assert_end92 ]
  ret i32 %common.ret.op, !dbg !17

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %1(ptr nonnull @.str), !dbg !17
  br label %common.ret

assert_end:                                       ; preds = %entry
  %p0.code = load i32, ptr %arg_type_ids, align 4, !dbg !17, !tbaa !22
  %2 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !17
  %p1.code = load i32, ptr %2, align 4, !dbg !17, !tbaa !33
  %3 = getelementptr inbounds i32, ptr %arg_type_ids, i64 2, !dbg !17
  %p2.code = load i32, ptr %3, align 4, !dbg !17, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %arg_type_ids, i64 3, !dbg !17
  %T_add.code = load i32, ptr %4, align 4, !dbg !17, !tbaa !38
  %p0 = load ptr, ptr %args, align 8, !dbg !17
  %5 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !17
  %p1 = load ptr, ptr %5, align 8, !dbg !17
  %6 = getelementptr inbounds %0, ptr %args, i64 2, !dbg !17
  %p2 = load ptr, ptr %6, align 8, !dbg !17
  %7 = getelementptr inbounds %0, ptr %args, i64 3, !dbg !17
  %T_add = load ptr, ptr %7, align 8, !dbg !17
  %p095 = load ptr, ptr %p0, align 8, !dbg !17
  call void @llvm.assume(i1 true) [ "align"(ptr %p095, i64 64) ], !dbg !17
  %8 = getelementptr inbounds %1, ptr %p0, i64 0, i32 4, !dbg !17
  %tvmgen_default_fused_less_add_where_take_add.p0.shape = load ptr, ptr %8, align 8, !dbg !17
  %9 = getelementptr inbounds %1, ptr %p0, i64 0, i32 5, !dbg !17
  %tvmgen_default_fused_less_add_where_take_add.p0.strides = load ptr, ptr %9, align 8, !dbg !17
  %10 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 1, !dbg !17
  %dev_id = load i32, ptr %10, align 4, !dbg !17
  %p194 = load ptr, ptr %p1, align 8, !dbg !17
  call void @llvm.assume(i1 true) [ "align"(ptr %p194, i64 64) ], !dbg !17
  %11 = getelementptr inbounds %1, ptr %p1, i64 0, i32 4, !dbg !17
  %tvmgen_default_fused_less_add_where_take_add.p1.shape = load ptr, ptr %11, align 8, !dbg !17
  %12 = getelementptr inbounds %1, ptr %p1, i64 0, i32 5, !dbg !17
  %tvmgen_default_fused_less_add_where_take_add.p1.strides = load ptr, ptr %12, align 8, !dbg !17
  %p296 = load ptr, ptr %p2, align 8, !dbg !17
  call void @llvm.assume(i1 true) [ "align"(ptr %p296, i64 64) ], !dbg !17
  %13 = getelementptr inbounds %1, ptr %p2, i64 0, i32 4, !dbg !17
  %tvmgen_default_fused_less_add_where_take_add.p2.shape = load ptr, ptr %13, align 8, !dbg !17
  %14 = getelementptr inbounds %1, ptr %p2, i64 0, i32 5, !dbg !17
  %tvmgen_default_fused_less_add_where_take_add.p2.strides = load ptr, ptr %14, align 8, !dbg !17
  %T_add93 = load ptr, ptr %T_add, align 8, !dbg !17
  call void @llvm.assume(i1 true) [ "align"(ptr %T_add93, i64 64) ], !dbg !17
  %15 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 4, !dbg !17
  %tvmgen_default_fused_less_add_where_take_add.T_add.shape = load ptr, ptr %15, align 8, !dbg !17
  %16 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 5, !dbg !17
  %tvmgen_default_fused_less_add_where_take_add.T_add.strides = load ptr, ptr %16, align 8, !dbg !17
  switch i32 %p0.code, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ], !dbg !17

assert_fail5:                                     ; preds = %assert_end
  %17 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %17(ptr nonnull @.str.1), !dbg !17
  br label %common.ret

assert_end6:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %p1.code, label %assert_fail7 [
    i32 13, label %assert_end8
    i32 7, label %assert_end8
    i32 4, label %assert_end8
    i32 3, label %assert_end8
  ], !dbg !17

assert_fail7:                                     ; preds = %assert_end6
  %18 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %18(ptr nonnull @.str.2), !dbg !17
  br label %common.ret

assert_end8:                                      ; preds = %assert_end6, %assert_end6, %assert_end6, %assert_end6
  switch i32 %p2.code, label %assert_fail9 [
    i32 13, label %assert_end10
    i32 7, label %assert_end10
    i32 4, label %assert_end10
    i32 3, label %assert_end10
  ], !dbg !17

assert_fail9:                                     ; preds = %assert_end8
  %19 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %19(ptr nonnull @.str.3), !dbg !17
  br label %common.ret

assert_end10:                                     ; preds = %assert_end8, %assert_end8, %assert_end8, %assert_end8
  switch i32 %T_add.code, label %assert_fail11 [
    i32 13, label %assert_end12
    i32 7, label %assert_end12
    i32 4, label %assert_end12
    i32 3, label %assert_end12
  ], !dbg !17

assert_fail11:                                    ; preds = %assert_end10
  %20 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %20(ptr nonnull @.str.4), !dbg !17
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10, %assert_end10, %assert_end10, %assert_end10
  %21 = getelementptr inbounds %1, ptr %p0, i64 0, i32 2, !dbg !17
  %22 = load i32, ptr %21, align 4, !dbg !17
  %23 = icmp eq i32 %22, 2, !dbg !17
  br i1 %23, label %assert_end16, label %assert_fail13, !dbg !17, !prof !18

assert_fail13:                                    ; preds = %assert_end12
  %24 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %24(ptr nonnull @.str.5), !dbg !17
  br label %common.ret

assert_end16:                                     ; preds = %assert_end12
  %25 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 2, !dbg !17
  %26 = load i16, ptr %25, align 2, !dbg !17
  %27 = icmp eq i16 %26, 1, !dbg !17
  %28 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 1, !dbg !17
  %29 = load i8, ptr %28, align 1, !dbg !17
  %30 = icmp eq i8 %29, 32, !dbg !17
  %31 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 0, !dbg !17
  %32 = load i8, ptr %31, align 1, !dbg !17
  %33 = icmp eq i8 %32, 0, !dbg !17
  %34 = and i1 %30, %33, !dbg !17
  %35 = and i1 %27, %34, !dbg !17
  br i1 %35, label %assert_end18, label %assert_fail17, !dbg !17, !prof !18

assert_fail17:                                    ; preds = %assert_end16
  %36 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %36(ptr nonnull @.str.6), !dbg !17
  br label %common.ret

assert_end18:                                     ; preds = %assert_end16
  %37 = load i64, ptr %tvmgen_default_fused_less_add_where_take_add.p0.shape, align 8, !dbg !17, !tbaa !40
  %38 = and i64 %37, 4294967295, !dbg !17
  %39 = icmp eq i64 %38, 1, !dbg !17
  br i1 %39, label %assert_end20, label %assert_fail19, !dbg !17, !prof !18

assert_fail19:                                    ; preds = %assert_end18
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %40(ptr nonnull @.str.7), !dbg !17
  br label %common.ret

assert_end20:                                     ; preds = %assert_end18
  %41 = getelementptr inbounds i64, ptr %tvmgen_default_fused_less_add_where_take_add.p0.shape, i64 1, !dbg !17
  %42 = load i64, ptr %41, align 8, !dbg !17, !tbaa !50
  %43 = and i64 %42, 4294967295, !dbg !17
  %44 = icmp eq i64 %43, 5, !dbg !17
  br i1 %44, label %assert_end22, label %assert_fail21, !dbg !17, !prof !18

assert_fail21:                                    ; preds = %assert_end20
  %45 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %45(ptr nonnull @.str.8), !dbg !17
  br label %common.ret

assert_end22:                                     ; preds = %assert_end20
  %.not = icmp eq ptr %tvmgen_default_fused_less_add_where_take_add.p0.strides, null, !dbg !17
  br i1 %.not, label %if_end, label %if_then, !dbg !17, !prof !52

if_then:                                          ; preds = %assert_end22
  %46 = getelementptr inbounds i64, ptr %tvmgen_default_fused_less_add_where_take_add.p0.strides, i64 1, !dbg !17
  %47 = load i64, ptr %46, align 8, !dbg !17, !tbaa !53
  %48 = and i64 %47, 4294967295, !dbg !17
  %49 = icmp eq i64 %48, 1, !dbg !17
  br i1 %49, label %if_end, label %assert_fail23, !dbg !17, !prof !18

if_end:                                           ; preds = %if_then, %assert_end22
  %50 = getelementptr inbounds %1, ptr %p0, i64 0, i32 6, !dbg !17
  %51 = load i64, ptr %50, align 8, !dbg !17
  %52 = icmp eq i64 %51, 0, !dbg !17
  br i1 %52, label %assert_end26, label %assert_fail25, !dbg !17, !prof !18

assert_fail23:                                    ; preds = %if_then
  %53 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %53(ptr nonnull @.str.9), !dbg !17
  br label %common.ret

assert_fail25:                                    ; preds = %if_end
  %54 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %54(ptr nonnull @.str.10), !dbg !17
  br label %common.ret

assert_end26:                                     ; preds = %if_end
  %55 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 0, !dbg !17
  %56 = load i32, ptr %55, align 4, !dbg !17
  %57 = icmp eq i32 %56, 1, !dbg !17
  br i1 %57, label %assert_end28, label %assert_fail27, !dbg !17, !prof !18

assert_fail27:                                    ; preds = %assert_end26
  %58 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %58(ptr nonnull @.str.11), !dbg !17
  br label %common.ret

assert_end28:                                     ; preds = %assert_end26
  %59 = getelementptr inbounds %1, ptr %p1, i64 0, i32 2, !dbg !17
  %60 = load i32, ptr %59, align 4, !dbg !17
  %61 = icmp eq i32 %60, 2, !dbg !17
  br i1 %61, label %assert_end32, label %assert_fail29, !dbg !17, !prof !18

assert_fail29:                                    ; preds = %assert_end28
  %62 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %62(ptr nonnull @.str.12), !dbg !17
  br label %common.ret

assert_end32:                                     ; preds = %assert_end28
  %63 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 2, !dbg !17
  %64 = load i16, ptr %63, align 2, !dbg !17
  %65 = icmp eq i16 %64, 1, !dbg !17
  %66 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 1, !dbg !17
  %67 = load i8, ptr %66, align 1, !dbg !17
  %68 = icmp eq i8 %67, 32, !dbg !17
  %69 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 0, !dbg !17
  %70 = load i8, ptr %69, align 1, !dbg !17
  %71 = icmp eq i8 %70, 2, !dbg !17
  %72 = and i1 %68, %71, !dbg !17
  %73 = and i1 %65, %72, !dbg !17
  br i1 %73, label %assert_end34, label %assert_fail33, !dbg !17, !prof !18

assert_fail33:                                    ; preds = %assert_end32
  %74 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %74(ptr nonnull @.str.13), !dbg !17
  br label %common.ret

assert_end34:                                     ; preds = %assert_end32
  %75 = load i64, ptr %tvmgen_default_fused_less_add_where_take_add.p1.shape, align 8, !dbg !17, !tbaa !63
  %76 = and i64 %75, 4294967295, !dbg !17
  %77 = icmp eq i64 %76, 30522, !dbg !17
  br i1 %77, label %assert_end36, label %assert_fail35, !dbg !17, !prof !18

assert_fail35:                                    ; preds = %assert_end34
  %78 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %78(ptr nonnull @.str.14), !dbg !17
  br label %common.ret

assert_end36:                                     ; preds = %assert_end34
  %79 = getelementptr inbounds i64, ptr %tvmgen_default_fused_less_add_where_take_add.p1.shape, i64 1, !dbg !17
  %80 = load i64, ptr %79, align 8, !dbg !17, !tbaa !73
  %81 = and i64 %80, 4294967295, !dbg !17
  %82 = icmp eq i64 %81, 768, !dbg !17
  br i1 %82, label %assert_end38, label %assert_fail37, !dbg !17, !prof !18

assert_fail37:                                    ; preds = %assert_end36
  %83 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %83(ptr nonnull @.str.15), !dbg !17
  br label %common.ret

assert_end38:                                     ; preds = %assert_end36
  %.not97 = icmp eq ptr %tvmgen_default_fused_less_add_where_take_add.p1.strides, null, !dbg !17
  br i1 %.not97, label %if_end40, label %if_then39, !dbg !17, !prof !52

if_then39:                                        ; preds = %assert_end38
  %84 = load i64, ptr %tvmgen_default_fused_less_add_where_take_add.p1.strides, align 8, !dbg !17, !tbaa !75
  %85 = and i64 %84, 4294967295, !dbg !17
  %86 = icmp eq i64 %85, 768, !dbg !17
  %87 = getelementptr inbounds i64, ptr %tvmgen_default_fused_less_add_where_take_add.p1.strides, i64 1, !dbg !17
  %88 = load i64, ptr %87, align 8, !dbg !17, !tbaa !85
  %89 = and i64 %88, 4294967295, !dbg !17
  %90 = icmp eq i64 %89, 1, !dbg !17
  %91 = and i1 %86, %90, !dbg !17
  br i1 %91, label %if_end40, label %assert_fail41, !dbg !17, !prof !18

if_end40:                                         ; preds = %if_then39, %assert_end38
  %92 = getelementptr inbounds %1, ptr %p1, i64 0, i32 6, !dbg !17
  %93 = load i64, ptr %92, align 8, !dbg !17
  %94 = icmp eq i64 %93, 0, !dbg !17
  br i1 %94, label %assert_end44, label %assert_fail43, !dbg !17, !prof !18

assert_fail41:                                    ; preds = %if_then39
  %95 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %95(ptr nonnull @.str.16), !dbg !17
  br label %common.ret

assert_fail43:                                    ; preds = %if_end40
  %96 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %96(ptr nonnull @.str.17), !dbg !17
  br label %common.ret

assert_end44:                                     ; preds = %if_end40
  %97 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 0, !dbg !17
  %98 = load i32, ptr %97, align 4, !dbg !17
  %99 = icmp eq i32 %98, 1, !dbg !17
  br i1 %99, label %assert_end46, label %assert_fail45, !dbg !17, !prof !18

assert_fail45:                                    ; preds = %assert_end44
  %100 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %100(ptr nonnull @.str.18), !dbg !17
  br label %common.ret

assert_end46:                                     ; preds = %assert_end44
  %101 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 1, !dbg !17
  %102 = load i32, ptr %101, align 4, !dbg !17
  %103 = icmp eq i32 %dev_id, %102, !dbg !17
  br i1 %103, label %assert_end48, label %assert_fail47, !dbg !17, !prof !18

assert_fail47:                                    ; preds = %assert_end46
  %104 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %104(ptr nonnull @.str.19), !dbg !17
  br label %common.ret

assert_end48:                                     ; preds = %assert_end46
  %105 = getelementptr inbounds %1, ptr %p2, i64 0, i32 2, !dbg !17
  %106 = load i32, ptr %105, align 4, !dbg !17
  %107 = icmp eq i32 %106, 3, !dbg !17
  br i1 %107, label %assert_end52, label %assert_fail49, !dbg !17, !prof !18

assert_fail49:                                    ; preds = %assert_end48
  %108 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %108(ptr nonnull @.str.20), !dbg !17
  br label %common.ret

assert_end52:                                     ; preds = %assert_end48
  %109 = getelementptr inbounds %1, ptr %p2, i64 0, i32 3, i32 2, !dbg !17
  %110 = load i16, ptr %109, align 2, !dbg !17
  %111 = icmp eq i16 %110, 1, !dbg !17
  %112 = getelementptr inbounds %1, ptr %p2, i64 0, i32 3, i32 1, !dbg !17
  %113 = load i8, ptr %112, align 1, !dbg !17
  %114 = icmp eq i8 %113, 32, !dbg !17
  %115 = getelementptr inbounds %1, ptr %p2, i64 0, i32 3, i32 0, !dbg !17
  %116 = load i8, ptr %115, align 1, !dbg !17
  %117 = icmp eq i8 %116, 2, !dbg !17
  %118 = and i1 %114, %117, !dbg !17
  %119 = and i1 %111, %118, !dbg !17
  br i1 %119, label %assert_end54, label %assert_fail53, !dbg !17, !prof !18

assert_fail53:                                    ; preds = %assert_end52
  %120 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %120(ptr nonnull @.str.21), !dbg !17
  br label %common.ret

assert_end54:                                     ; preds = %assert_end52
  %121 = load i64, ptr %tvmgen_default_fused_less_add_where_take_add.p2.shape, align 8, !dbg !17, !tbaa !87
  %122 = and i64 %121, 4294967295, !dbg !17
  %123 = icmp eq i64 %122, 1, !dbg !17
  br i1 %123, label %assert_end56, label %assert_fail55, !dbg !17, !prof !18

assert_fail55:                                    ; preds = %assert_end54
  %124 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %124(ptr nonnull @.str.22), !dbg !17
  br label %common.ret

assert_end56:                                     ; preds = %assert_end54
  %125 = getelementptr inbounds i64, ptr %tvmgen_default_fused_less_add_where_take_add.p2.shape, i64 1, !dbg !17
  %126 = load i64, ptr %125, align 8, !dbg !17, !tbaa !97
  %127 = and i64 %126, 4294967295, !dbg !17
  %128 = icmp eq i64 %127, 5, !dbg !17
  br i1 %128, label %assert_end58, label %assert_fail57, !dbg !17, !prof !18

assert_fail57:                                    ; preds = %assert_end56
  %129 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %129(ptr nonnull @.str.23), !dbg !17
  br label %common.ret

assert_end58:                                     ; preds = %assert_end56
  %130 = getelementptr inbounds i64, ptr %tvmgen_default_fused_less_add_where_take_add.p2.shape, i64 2, !dbg !17
  %131 = load i64, ptr %130, align 8, !dbg !17, !tbaa !99
  %132 = and i64 %131, 4294967295, !dbg !17
  %133 = icmp eq i64 %132, 768, !dbg !17
  br i1 %133, label %assert_end60, label %assert_fail59, !dbg !17, !prof !18

assert_fail59:                                    ; preds = %assert_end58
  %134 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %134(ptr nonnull @.str.24), !dbg !17
  br label %common.ret

assert_end60:                                     ; preds = %assert_end58
  %.not98 = icmp eq ptr %tvmgen_default_fused_less_add_where_take_add.p2.strides, null, !dbg !17
  br i1 %.not98, label %if_end62, label %if_then61, !dbg !17, !prof !52

if_then61:                                        ; preds = %assert_end60
  %135 = getelementptr inbounds i64, ptr %tvmgen_default_fused_less_add_where_take_add.p2.strides, i64 1, !dbg !17
  %136 = load i64, ptr %135, align 8, !dbg !17, !tbaa !102
  %137 = and i64 %136, 4294967295, !dbg !17
  %138 = icmp eq i64 %137, 768, !dbg !17
  %139 = getelementptr inbounds i64, ptr %tvmgen_default_fused_less_add_where_take_add.p2.strides, i64 2, !dbg !17
  %140 = load i64, ptr %139, align 8, !dbg !17, !tbaa !112
  %141 = and i64 %140, 4294967295, !dbg !17
  %142 = icmp eq i64 %141, 1, !dbg !17
  %143 = and i1 %138, %142, !dbg !17
  br i1 %143, label %if_end62, label %assert_fail63, !dbg !17, !prof !18

if_end62:                                         ; preds = %if_then61, %assert_end60
  %144 = getelementptr inbounds %1, ptr %p2, i64 0, i32 6, !dbg !17
  %145 = load i64, ptr %144, align 8, !dbg !17
  %146 = icmp eq i64 %145, 0, !dbg !17
  br i1 %146, label %assert_end66, label %assert_fail65, !dbg !17, !prof !18

assert_fail63:                                    ; preds = %if_then61
  %147 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %147(ptr nonnull @.str.25), !dbg !17
  br label %common.ret

assert_fail65:                                    ; preds = %if_end62
  %148 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %148(ptr nonnull @.str.26), !dbg !17
  br label %common.ret

assert_end66:                                     ; preds = %if_end62
  %149 = getelementptr inbounds %1, ptr %p2, i64 0, i32 1, i32 0, !dbg !17
  %150 = load i32, ptr %149, align 4, !dbg !17
  %151 = icmp eq i32 %150, 1, !dbg !17
  br i1 %151, label %assert_end68, label %assert_fail67, !dbg !17, !prof !18

assert_fail67:                                    ; preds = %assert_end66
  %152 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %152(ptr nonnull @.str.27), !dbg !17
  br label %common.ret

assert_end68:                                     ; preds = %assert_end66
  %153 = getelementptr inbounds %1, ptr %p2, i64 0, i32 1, i32 1, !dbg !17
  %154 = load i32, ptr %153, align 4, !dbg !17
  %155 = icmp eq i32 %dev_id, %154, !dbg !17
  br i1 %155, label %assert_end70, label %assert_fail69, !dbg !17, !prof !18

assert_fail69:                                    ; preds = %assert_end68
  %156 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %156(ptr nonnull @.str.28), !dbg !17
  br label %common.ret

assert_end70:                                     ; preds = %assert_end68
  %157 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 2, !dbg !17
  %158 = load i32, ptr %157, align 4, !dbg !17
  %159 = icmp eq i32 %158, 3, !dbg !17
  br i1 %159, label %assert_end74, label %assert_fail71, !dbg !17, !prof !18

assert_fail71:                                    ; preds = %assert_end70
  %160 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %160(ptr nonnull @.str.29), !dbg !17
  br label %common.ret

assert_end74:                                     ; preds = %assert_end70
  %161 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 3, i32 2, !dbg !17
  %162 = load i16, ptr %161, align 2, !dbg !17
  %163 = icmp eq i16 %162, 1, !dbg !17
  %164 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 3, i32 1, !dbg !17
  %165 = load i8, ptr %164, align 1, !dbg !17
  %166 = icmp eq i8 %165, 32, !dbg !17
  %167 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 3, i32 0, !dbg !17
  %168 = load i8, ptr %167, align 1, !dbg !17
  %169 = icmp eq i8 %168, 2, !dbg !17
  %170 = and i1 %166, %169, !dbg !17
  %171 = and i1 %163, %170, !dbg !17
  br i1 %171, label %assert_end76, label %assert_fail75, !dbg !17, !prof !18

assert_fail75:                                    ; preds = %assert_end74
  %172 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %172(ptr nonnull @.str.30), !dbg !17
  br label %common.ret

assert_end76:                                     ; preds = %assert_end74
  %173 = load i64, ptr %tvmgen_default_fused_less_add_where_take_add.T_add.shape, align 8, !dbg !17, !tbaa !115
  %174 = and i64 %173, 4294967295, !dbg !17
  %175 = icmp eq i64 %174, 1, !dbg !17
  br i1 %175, label %assert_end78, label %assert_fail77, !dbg !17, !prof !18

assert_fail77:                                    ; preds = %assert_end76
  %176 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %176(ptr nonnull @.str.31), !dbg !17
  br label %common.ret

assert_end78:                                     ; preds = %assert_end76
  %177 = getelementptr inbounds i64, ptr %tvmgen_default_fused_less_add_where_take_add.T_add.shape, i64 1, !dbg !17
  %178 = load i64, ptr %177, align 8, !dbg !17, !tbaa !125
  %179 = and i64 %178, 4294967295, !dbg !17
  %180 = icmp eq i64 %179, 5, !dbg !17
  br i1 %180, label %assert_end80, label %assert_fail79, !dbg !17, !prof !18

assert_fail79:                                    ; preds = %assert_end78
  %181 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %181(ptr nonnull @.str.32), !dbg !17
  br label %common.ret

assert_end80:                                     ; preds = %assert_end78
  %182 = getelementptr inbounds i64, ptr %tvmgen_default_fused_less_add_where_take_add.T_add.shape, i64 2, !dbg !17
  %183 = load i64, ptr %182, align 8, !dbg !17, !tbaa !127
  %184 = and i64 %183, 4294967295, !dbg !17
  %185 = icmp eq i64 %184, 768, !dbg !17
  br i1 %185, label %assert_end82, label %assert_fail81, !dbg !17, !prof !18

assert_fail81:                                    ; preds = %assert_end80
  %186 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %186(ptr nonnull @.str.33), !dbg !17
  br label %common.ret

assert_end82:                                     ; preds = %assert_end80
  %.not99 = icmp eq ptr %tvmgen_default_fused_less_add_where_take_add.T_add.strides, null, !dbg !17
  br i1 %.not99, label %if_end84, label %if_then83, !dbg !17, !prof !52

if_then83:                                        ; preds = %assert_end82
  %187 = getelementptr inbounds i64, ptr %tvmgen_default_fused_less_add_where_take_add.T_add.strides, i64 1, !dbg !17
  %188 = load i64, ptr %187, align 8, !dbg !17, !tbaa !130
  %189 = and i64 %188, 4294967295, !dbg !17
  %190 = icmp eq i64 %189, 768, !dbg !17
  %191 = getelementptr inbounds i64, ptr %tvmgen_default_fused_less_add_where_take_add.T_add.strides, i64 2, !dbg !17
  %192 = load i64, ptr %191, align 8, !dbg !17, !tbaa !140
  %193 = and i64 %192, 4294967295, !dbg !17
  %194 = icmp eq i64 %193, 1, !dbg !17
  %195 = and i1 %190, %194, !dbg !17
  br i1 %195, label %if_end84, label %assert_fail85, !dbg !17, !prof !18

if_end84:                                         ; preds = %if_then83, %assert_end82
  %196 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 6, !dbg !17
  %197 = load i64, ptr %196, align 8, !dbg !17
  %198 = icmp eq i64 %197, 0, !dbg !17
  br i1 %198, label %assert_end88, label %assert_fail87, !dbg !17, !prof !18

assert_fail85:                                    ; preds = %if_then83
  %199 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %199(ptr nonnull @.str.34), !dbg !17
  br label %common.ret

assert_fail87:                                    ; preds = %if_end84
  %200 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %200(ptr nonnull @.str.35), !dbg !17
  br label %common.ret

assert_end88:                                     ; preds = %if_end84
  %201 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 1, i32 0, !dbg !17
  %202 = load i32, ptr %201, align 4, !dbg !17
  %203 = icmp eq i32 %202, 1, !dbg !17
  br i1 %203, label %assert_end90, label %assert_fail89, !dbg !17, !prof !18

assert_fail89:                                    ; preds = %assert_end88
  %204 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %204(ptr nonnull @.str.36), !dbg !17
  br label %common.ret

assert_end90:                                     ; preds = %assert_end88
  %205 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 1, i32 1, !dbg !17
  %206 = load i32, ptr %205, align 4, !dbg !17
  %207 = icmp eq i32 %dev_id, %206, !dbg !17
  br i1 %207, label %assert_end92, label %assert_fail91, !dbg !17, !prof !18

assert_fail91:                                    ; preds = %assert_end90
  %208 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !17, !tbaa !19
  tail call void %208(ptr nonnull @.str.37), !dbg !17
  br label %common.ret

assert_end92:                                     ; preds = %assert_end90
  %209 = tail call fastcc i32 @tvmgen_default_fused_less_add_where_take_add_compute_(ptr %T_add93, ptr %p194, ptr %p095, ptr %p296), !dbg !17
  br label %common.ret
}

define dllexport i32 @tvmgen_default_fused_mean(ptr noalias nocapture readonly %args, ptr noalias nocapture readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !143 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !145, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !146, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !147, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !148, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !149, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !150, metadata !DIExpression()), !dbg !151
  %0 = icmp eq i32 %num_args, 2, !dbg !151
  br i1 %0, label %assert_end, label %assert_fail, !dbg !151, !prof !18

common.ret:                                       ; preds = %assert_end46, %assert_fail45, %assert_fail43, %assert_fail41, %assert_fail39, %assert_fail35, %assert_fail33, %assert_fail31, %assert_fail29, %assert_fail25, %assert_fail23, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail7, %assert_fail5, %assert_fail3, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail33 ], [ -1, %assert_fail35 ], [ -1, %assert_fail39 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail45 ], [ %106, %assert_end46 ]
  ret i32 %common.ret.op, !dbg !151

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !151, !tbaa !19
  tail call void %1(ptr nonnull @.str.38), !dbg !151
  br label %common.ret

assert_end:                                       ; preds = %entry
  %p0.code = load i32, ptr %arg_type_ids, align 4, !dbg !151, !tbaa !152
  %2 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !151
  %T_divide.code = load i32, ptr %2, align 4, !dbg !151, !tbaa !163
  %p0 = load ptr, ptr %args, align 8, !dbg !151
  %3 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !151
  %T_divide = load ptr, ptr %3, align 8, !dbg !151
  %p047 = load ptr, ptr %p0, align 8, !dbg !151
  call void @llvm.assume(i1 true) [ "align"(ptr %p047, i64 64) ], !dbg !151
  %4 = getelementptr inbounds %1, ptr %p0, i64 0, i32 4, !dbg !151
  %tvmgen_default_fused_mean.p0.shape = load ptr, ptr %4, align 8, !dbg !151
  %5 = getelementptr inbounds %1, ptr %p0, i64 0, i32 5, !dbg !151
  %tvmgen_default_fused_mean.p0.strides = load ptr, ptr %5, align 8, !dbg !151
  %6 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 1, !dbg !151
  %dev_id = load i32, ptr %6, align 4, !dbg !151
  %T_divide48 = load ptr, ptr %T_divide, align 8, !dbg !151
  call void @llvm.assume(i1 true) [ "align"(ptr %T_divide48, i64 64) ], !dbg !151
  %7 = getelementptr inbounds %1, ptr %T_divide, i64 0, i32 4, !dbg !151
  %tvmgen_default_fused_mean.T_divide.shape = load ptr, ptr %7, align 8, !dbg !151
  %8 = getelementptr inbounds %1, ptr %T_divide, i64 0, i32 5, !dbg !151
  %tvmgen_default_fused_mean.T_divide.strides = load ptr, ptr %8, align 8, !dbg !151
  switch i32 %p0.code, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ], !dbg !151

assert_fail3:                                     ; preds = %assert_end
  %9 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !151, !tbaa !19
  tail call void %9(ptr nonnull @.str.39), !dbg !151
  br label %common.ret

assert_end4:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %T_divide.code, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ], !dbg !151

assert_fail5:                                     ; preds = %assert_end4
  %10 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !151, !tbaa !19
  tail call void %10(ptr nonnull @.str.40), !dbg !151
  br label %common.ret

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  %11 = getelementptr inbounds %1, ptr %p0, i64 0, i32 2, !dbg !151
  %12 = load i32, ptr %11, align 4, !dbg !151
  %13 = icmp eq i32 %12, 3, !dbg !151
  br i1 %13, label %assert_end10, label %assert_fail7, !dbg !151, !prof !18

assert_fail7:                                     ; preds = %assert_end6
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !151, !tbaa !19
  tail call void %14(ptr nonnull @.str.41), !dbg !151
  br label %common.ret

assert_end10:                                     ; preds = %assert_end6
  %15 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 2, !dbg !151
  %16 = load i16, ptr %15, align 2, !dbg !151
  %17 = icmp eq i16 %16, 1, !dbg !151
  %18 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 1, !dbg !151
  %19 = load i8, ptr %18, align 1, !dbg !151
  %20 = icmp eq i8 %19, 32, !dbg !151
  %21 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 0, !dbg !151
  %22 = load i8, ptr %21, align 1, !dbg !151
  %23 = icmp eq i8 %22, 2, !dbg !151
  %24 = and i1 %20, %23, !dbg !151
  %25 = and i1 %17, %24, !dbg !151
  br i1 %25, label %assert_end12, label %assert_fail11, !dbg !151, !prof !18

assert_fail11:                                    ; preds = %assert_end10
  %26 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !151, !tbaa !19
  tail call void %26(ptr nonnull @.str.42), !dbg !151
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10
  %27 = load i64, ptr %tvmgen_default_fused_mean.p0.shape, align 8, !dbg !151, !tbaa !165
  %28 = and i64 %27, 4294967295, !dbg !151
  %29 = icmp eq i64 %28, 1, !dbg !151
  br i1 %29, label %assert_end14, label %assert_fail13, !dbg !151, !prof !18

assert_fail13:                                    ; preds = %assert_end12
  %30 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !151, !tbaa !19
  tail call void %30(ptr nonnull @.str.43), !dbg !151
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12
  %31 = getelementptr inbounds i64, ptr %tvmgen_default_fused_mean.p0.shape, i64 1, !dbg !151
  %32 = load i64, ptr %31, align 8, !dbg !151, !tbaa !175
  %33 = and i64 %32, 4294967295, !dbg !151
  %34 = icmp eq i64 %33, 5, !dbg !151
  br i1 %34, label %assert_end16, label %assert_fail15, !dbg !151, !prof !18

assert_fail15:                                    ; preds = %assert_end14
  %35 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !151, !tbaa !19
  tail call void %35(ptr nonnull @.str.44), !dbg !151
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14
  %36 = getelementptr inbounds i64, ptr %tvmgen_default_fused_mean.p0.shape, i64 2, !dbg !151
  %37 = load i64, ptr %36, align 8, !dbg !151, !tbaa !177
  %38 = and i64 %37, 4294967295, !dbg !151
  %39 = icmp eq i64 %38, 768, !dbg !151
  br i1 %39, label %assert_end18, label %assert_fail17, !dbg !151, !prof !18

assert_fail17:                                    ; preds = %assert_end16
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !151, !tbaa !19
  tail call void %40(ptr nonnull @.str.45), !dbg !151
  br label %common.ret

assert_end18:                                     ; preds = %assert_end16
  %.not = icmp eq ptr %tvmgen_default_fused_mean.p0.strides, null, !dbg !151
  br i1 %.not, label %if_end, label %if_then, !dbg !151, !prof !52

if_then:                                          ; preds = %assert_end18
  %41 = getelementptr inbounds i64, ptr %tvmgen_default_fused_mean.p0.strides, i64 1, !dbg !151
  %42 = load i64, ptr %41, align 8, !dbg !151, !tbaa !180
  %43 = and i64 %42, 4294967295, !dbg !151
  %44 = icmp eq i64 %43, 768, !dbg !151
  %45 = getelementptr inbounds i64, ptr %tvmgen_default_fused_mean.p0.strides, i64 2, !dbg !151
  %46 = load i64, ptr %45, align 8, !dbg !151, !tbaa !190
  %47 = and i64 %46, 4294967295, !dbg !151
  %48 = icmp eq i64 %47, 1, !dbg !151
  %49 = and i1 %44, %48, !dbg !151
  br i1 %49, label %if_end, label %assert_fail19, !dbg !151, !prof !18

if_end:                                           ; preds = %if_then, %assert_end18
  %50 = getelementptr inbounds %1, ptr %p0, i64 0, i32 6, !dbg !151
  %51 = load i64, ptr %50, align 8, !dbg !151
  %52 = icmp eq i64 %51, 0, !dbg !151
  br i1 %52, label %assert_end22, label %assert_fail21, !dbg !151, !prof !18

assert_fail19:                                    ; preds = %if_then
  %53 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !151, !tbaa !19
  tail call void %53(ptr nonnull @.str.46), !dbg !151
  br label %common.ret

assert_fail21:                                    ; preds = %if_end
  %54 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !151, !tbaa !19
  tail call void %54(ptr nonnull @.str.47), !dbg !151
  br label %common.ret

assert_end22:                                     ; preds = %if_end
  %55 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 0, !dbg !151
  %56 = load i32, ptr %55, align 4, !dbg !151
  %57 = icmp eq i32 %56, 1, !dbg !151
  br i1 %57, label %assert_end24, label %assert_fail23, !dbg !151, !prof !18

assert_fail23:                                    ; preds = %assert_end22
  %58 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !151, !tbaa !19
  tail call void %58(ptr nonnull @.str.48), !dbg !151
  br label %common.ret

assert_end24:                                     ; preds = %assert_end22
  %59 = getelementptr inbounds %1, ptr %T_divide, i64 0, i32 2, !dbg !151
  %60 = load i32, ptr %59, align 4, !dbg !151
  %61 = icmp eq i32 %60, 3, !dbg !151
  br i1 %61, label %assert_end28, label %assert_fail25, !dbg !151, !prof !18

assert_fail25:                                    ; preds = %assert_end24
  %62 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !151, !tbaa !19
  tail call void %62(ptr nonnull @.str.49), !dbg !151
  br label %common.ret

assert_end28:                                     ; preds = %assert_end24
  %63 = getelementptr inbounds %1, ptr %T_divide, i64 0, i32 3, i32 2, !dbg !151
  %64 = load i16, ptr %63, align 2, !dbg !151
  %65 = icmp eq i16 %64, 1, !dbg !151
  %66 = getelementptr inbounds %1, ptr %T_divide, i64 0, i32 3, i32 1, !dbg !151
  %67 = load i8, ptr %66, align 1, !dbg !151
  %68 = icmp eq i8 %67, 32, !dbg !151
  %69 = getelementptr inbounds %1, ptr %T_divide, i64 0, i32 3, i32 0, !dbg !151
  %70 = load i8, ptr %69, align 1, !dbg !151
  %71 = icmp eq i8 %70, 2, !dbg !151
  %72 = and i1 %68, %71, !dbg !151
  %73 = and i1 %65, %72, !dbg !151
  br i1 %73, label %assert_end30, label %assert_fail29, !dbg !151, !prof !18

assert_fail29:                                    ; preds = %assert_end28
  %74 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !151, !tbaa !19
  tail call void %74(ptr nonnull @.str.50), !dbg !151
  br label %common.ret

assert_end30:                                     ; preds = %assert_end28
  %75 = load i64, ptr %tvmgen_default_fused_mean.T_divide.shape, align 8, !dbg !151, !tbaa !193
  %76 = and i64 %75, 4294967295, !dbg !151
  %77 = icmp eq i64 %76, 1, !dbg !151
  br i1 %77, label %assert_end32, label %assert_fail31, !dbg !151, !prof !18

assert_fail31:                                    ; preds = %assert_end30
  %78 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !151, !tbaa !19
  tail call void %78(ptr nonnull @.str.51), !dbg !151
  br label %common.ret

assert_end32:                                     ; preds = %assert_end30
  %79 = getelementptr inbounds i64, ptr %tvmgen_default_fused_mean.T_divide.shape, i64 1, !dbg !151
  %80 = load i64, ptr %79, align 8, !dbg !151, !tbaa !203
  %81 = and i64 %80, 4294967295, !dbg !151
  %82 = icmp eq i64 %81, 5, !dbg !151
  br i1 %82, label %assert_end34, label %assert_fail33, !dbg !151, !prof !18

assert_fail33:                                    ; preds = %assert_end32
  %83 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !151, !tbaa !19
  tail call void %83(ptr nonnull @.str.52), !dbg !151
  br label %common.ret

assert_end34:                                     ; preds = %assert_end32
  %84 = getelementptr inbounds i64, ptr %tvmgen_default_fused_mean.T_divide.shape, i64 2, !dbg !151
  %85 = load i64, ptr %84, align 8, !dbg !151, !tbaa !205
  %86 = and i64 %85, 4294967295, !dbg !151
  %87 = icmp eq i64 %86, 1, !dbg !151
  br i1 %87, label %assert_end36, label %assert_fail35, !dbg !151, !prof !18

assert_fail35:                                    ; preds = %assert_end34
  %88 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !151, !tbaa !19
  tail call void %88(ptr nonnull @.str.53), !dbg !151
  br label %common.ret

assert_end36:                                     ; preds = %assert_end34
  %.not49 = icmp eq ptr %tvmgen_default_fused_mean.T_divide.strides, null, !dbg !151
  br i1 %.not49, label %if_end38, label %if_then37, !dbg !151, !prof !52

if_then37:                                        ; preds = %assert_end36
  %89 = getelementptr inbounds i64, ptr %tvmgen_default_fused_mean.T_divide.strides, i64 1, !dbg !151
  %90 = load i64, ptr %89, align 8, !dbg !151, !tbaa !208
  %91 = and i64 %90, 4294967295, !dbg !151
  %92 = icmp eq i64 %91, 1, !dbg !151
  br i1 %92, label %if_end38, label %assert_fail39, !dbg !151, !prof !18

if_end38:                                         ; preds = %if_then37, %assert_end36
  %93 = getelementptr inbounds %1, ptr %T_divide, i64 0, i32 6, !dbg !151
  %94 = load i64, ptr %93, align 8, !dbg !151
  %95 = icmp eq i64 %94, 0, !dbg !151
  br i1 %95, label %assert_end42, label %assert_fail41, !dbg !151, !prof !18

assert_fail39:                                    ; preds = %if_then37
  %96 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !151, !tbaa !19
  tail call void %96(ptr nonnull @.str.54), !dbg !151
  br label %common.ret

assert_fail41:                                    ; preds = %if_end38
  %97 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !151, !tbaa !19
  tail call void %97(ptr nonnull @.str.55), !dbg !151
  br label %common.ret

assert_end42:                                     ; preds = %if_end38
  %98 = getelementptr inbounds %1, ptr %T_divide, i64 0, i32 1, i32 0, !dbg !151
  %99 = load i32, ptr %98, align 4, !dbg !151
  %100 = icmp eq i32 %99, 1, !dbg !151
  br i1 %100, label %assert_end44, label %assert_fail43, !dbg !151, !prof !18

assert_fail43:                                    ; preds = %assert_end42
  %101 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !151, !tbaa !19
  tail call void %101(ptr nonnull @.str.56), !dbg !151
  br label %common.ret

assert_end44:                                     ; preds = %assert_end42
  %102 = getelementptr inbounds %1, ptr %T_divide, i64 0, i32 1, i32 1, !dbg !151
  %103 = load i32, ptr %102, align 4, !dbg !151
  %104 = icmp eq i32 %dev_id, %103, !dbg !151
  br i1 %104, label %assert_end46, label %assert_fail45, !dbg !151, !prof !18

assert_fail45:                                    ; preds = %assert_end44
  %105 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !151, !tbaa !19
  tail call void %105(ptr nonnull @.str.57), !dbg !151
  br label %common.ret

assert_end46:                                     ; preds = %assert_end44
  %106 = tail call fastcc i32 @tvmgen_default_fused_mean_compute_(ptr %p047, ptr %T_divide48), !dbg !151
  br label %common.ret
}

define dllexport i32 @tvmgen_default_fused_nn_batch_matmul(ptr noalias nocapture readonly %args, ptr noalias nocapture readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !218 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !220, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !221, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !222, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !223, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !224, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !225, metadata !DIExpression()), !dbg !226
  %0 = icmp eq i32 %num_args, 3, !dbg !226
  br i1 %0, label %assert_end, label %assert_fail, !dbg !226, !prof !18

common.ret:                                       ; preds = %assert_end71, %assert_fail70, %assert_fail68, %assert_fail66, %assert_fail64, %assert_fail60, %assert_fail58, %assert_fail56, %assert_fail54, %assert_fail50, %assert_fail48, %assert_fail46, %assert_fail44, %assert_fail42, %assert_fail38, %assert_fail36, %assert_fail34, %assert_fail32, %assert_fail28, %assert_fail26, %assert_fail24, %assert_fail22, %assert_fail20, %assert_fail18, %assert_fail16, %assert_fail14, %assert_fail10, %assert_fail8, %assert_fail6, %assert_fail4, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail4 ], [ -1, %assert_fail6 ], [ -1, %assert_fail8 ], [ -1, %assert_fail10 ], [ -1, %assert_fail14 ], [ -1, %assert_fail16 ], [ -1, %assert_fail18 ], [ -1, %assert_fail20 ], [ -1, %assert_fail22 ], [ -1, %assert_fail24 ], [ -1, %assert_fail26 ], [ -1, %assert_fail28 ], [ -1, %assert_fail32 ], [ -1, %assert_fail34 ], [ -1, %assert_fail36 ], [ -1, %assert_fail38 ], [ -1, %assert_fail42 ], [ -1, %assert_fail44 ], [ -1, %assert_fail46 ], [ -1, %assert_fail48 ], [ -1, %assert_fail50 ], [ -1, %assert_fail54 ], [ -1, %assert_fail56 ], [ -1, %assert_fail58 ], [ -1, %assert_fail60 ], [ -1, %assert_fail64 ], [ -1, %assert_fail66 ], [ -1, %assert_fail68 ], [ -1, %assert_fail70 ], [ %180, %assert_end71 ]
  ret i32 %common.ret.op, !dbg !226

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %1(ptr nonnull @.str.60), !dbg !226
  br label %common.ret

assert_end:                                       ; preds = %entry
  %p0.code = load i32, ptr %arg_type_ids, align 4, !dbg !226, !tbaa !227
  %2 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !226
  %p1.code = load i32, ptr %2, align 4, !dbg !226, !tbaa !238
  %3 = getelementptr inbounds i32, ptr %arg_type_ids, i64 2, !dbg !226
  %T_batch_matmul_NT.code = load i32, ptr %3, align 4, !dbg !226, !tbaa !240
  %p0 = load ptr, ptr %args, align 8, !dbg !226
  %4 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !226
  %p1 = load ptr, ptr %4, align 8, !dbg !226
  %5 = getelementptr inbounds %0, ptr %args, i64 2, !dbg !226
  %T_batch_matmul_NT = load ptr, ptr %5, align 8, !dbg !226
  %p072 = load ptr, ptr %p0, align 8, !dbg !226
  call void @llvm.assume(i1 true) [ "align"(ptr %p072, i64 64) ], !dbg !226
  %6 = getelementptr inbounds %1, ptr %p0, i64 0, i32 4, !dbg !226
  %tvmgen_default_fused_nn_batch_matmul.p0.shape = load ptr, ptr %6, align 8, !dbg !226
  %7 = getelementptr inbounds %1, ptr %p0, i64 0, i32 5, !dbg !226
  %tvmgen_default_fused_nn_batch_matmul.p0.strides = load ptr, ptr %7, align 8, !dbg !226
  %8 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 1, !dbg !226
  %dev_id = load i32, ptr %8, align 4, !dbg !226
  %p173 = load ptr, ptr %p1, align 8, !dbg !226
  call void @llvm.assume(i1 true) [ "align"(ptr %p173, i64 64) ], !dbg !226
  %9 = getelementptr inbounds %1, ptr %p1, i64 0, i32 4, !dbg !226
  %tvmgen_default_fused_nn_batch_matmul.p1.shape = load ptr, ptr %9, align 8, !dbg !226
  %10 = getelementptr inbounds %1, ptr %p1, i64 0, i32 5, !dbg !226
  %tvmgen_default_fused_nn_batch_matmul.p1.strides = load ptr, ptr %10, align 8, !dbg !226
  %T_batch_matmul_NT74 = load ptr, ptr %T_batch_matmul_NT, align 8, !dbg !226
  call void @llvm.assume(i1 true) [ "align"(ptr %T_batch_matmul_NT74, i64 64) ], !dbg !226
  %11 = getelementptr inbounds %1, ptr %T_batch_matmul_NT, i64 0, i32 4, !dbg !226
  %tvmgen_default_fused_nn_batch_matmul.T_batch_matmul_NT.shape = load ptr, ptr %11, align 8, !dbg !226
  %12 = getelementptr inbounds %1, ptr %T_batch_matmul_NT, i64 0, i32 5, !dbg !226
  %tvmgen_default_fused_nn_batch_matmul.T_batch_matmul_NT.strides = load ptr, ptr %12, align 8, !dbg !226
  switch i32 %p0.code, label %assert_fail4 [
    i32 13, label %assert_end5
    i32 7, label %assert_end5
    i32 4, label %assert_end5
    i32 3, label %assert_end5
  ], !dbg !226

assert_fail4:                                     ; preds = %assert_end
  %13 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %13(ptr nonnull @.str.61), !dbg !226
  br label %common.ret

assert_end5:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %p1.code, label %assert_fail6 [
    i32 13, label %assert_end7
    i32 7, label %assert_end7
    i32 4, label %assert_end7
    i32 3, label %assert_end7
  ], !dbg !226

assert_fail6:                                     ; preds = %assert_end5
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %14(ptr nonnull @.str.62), !dbg !226
  br label %common.ret

assert_end7:                                      ; preds = %assert_end5, %assert_end5, %assert_end5, %assert_end5
  switch i32 %T_batch_matmul_NT.code, label %assert_fail8 [
    i32 13, label %assert_end9
    i32 7, label %assert_end9
    i32 4, label %assert_end9
    i32 3, label %assert_end9
  ], !dbg !226

assert_fail8:                                     ; preds = %assert_end7
  %15 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %15(ptr nonnull @.str.63), !dbg !226
  br label %common.ret

assert_end9:                                      ; preds = %assert_end7, %assert_end7, %assert_end7, %assert_end7
  %16 = getelementptr inbounds %1, ptr %p0, i64 0, i32 2, !dbg !226
  %17 = load i32, ptr %16, align 4, !dbg !226
  %18 = icmp eq i32 %17, 3, !dbg !226
  br i1 %18, label %assert_end13, label %assert_fail10, !dbg !226, !prof !18

assert_fail10:                                    ; preds = %assert_end9
  %19 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %19(ptr nonnull @.str.64), !dbg !226
  br label %common.ret

assert_end13:                                     ; preds = %assert_end9
  %20 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 2, !dbg !226
  %21 = load i16, ptr %20, align 2, !dbg !226
  %22 = icmp eq i16 %21, 1, !dbg !226
  %23 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 1, !dbg !226
  %24 = load i8, ptr %23, align 1, !dbg !226
  %25 = icmp eq i8 %24, 32, !dbg !226
  %26 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 0, !dbg !226
  %27 = load i8, ptr %26, align 1, !dbg !226
  %28 = icmp eq i8 %27, 2, !dbg !226
  %29 = and i1 %25, %28, !dbg !226
  %30 = and i1 %22, %29, !dbg !226
  br i1 %30, label %assert_end15, label %assert_fail14, !dbg !226, !prof !18

assert_fail14:                                    ; preds = %assert_end13
  %31 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %31(ptr nonnull @.str.65), !dbg !226
  br label %common.ret

assert_end15:                                     ; preds = %assert_end13
  %32 = load i64, ptr %tvmgen_default_fused_nn_batch_matmul.p0.shape, align 8, !dbg !226, !tbaa !243
  %33 = and i64 %32, 4294967295, !dbg !226
  %34 = icmp eq i64 %33, 12, !dbg !226
  br i1 %34, label %assert_end17, label %assert_fail16, !dbg !226, !prof !18

assert_fail16:                                    ; preds = %assert_end15
  %35 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %35(ptr nonnull @.str.66), !dbg !226
  br label %common.ret

assert_end17:                                     ; preds = %assert_end15
  %36 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul.p0.shape, i64 1, !dbg !226
  %37 = load i64, ptr %36, align 8, !dbg !226, !tbaa !253
  %38 = and i64 %37, 4294967295, !dbg !226
  %39 = icmp eq i64 %38, 5, !dbg !226
  br i1 %39, label %assert_end19, label %assert_fail18, !dbg !226, !prof !18

assert_fail18:                                    ; preds = %assert_end17
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %40(ptr nonnull @.str.67), !dbg !226
  br label %common.ret

assert_end19:                                     ; preds = %assert_end17
  %41 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul.p0.shape, i64 2, !dbg !226
  %42 = load i64, ptr %41, align 8, !dbg !226, !tbaa !255
  %43 = and i64 %42, 4294967295, !dbg !226
  %44 = icmp eq i64 %43, 64, !dbg !226
  br i1 %44, label %assert_end21, label %assert_fail20, !dbg !226, !prof !18

assert_fail20:                                    ; preds = %assert_end19
  %45 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %45(ptr nonnull @.str.68), !dbg !226
  br label %common.ret

assert_end21:                                     ; preds = %assert_end19
  %.not = icmp eq ptr %tvmgen_default_fused_nn_batch_matmul.p0.strides, null, !dbg !226
  br i1 %.not, label %if_end, label %if_then, !dbg !226, !prof !52

if_then:                                          ; preds = %assert_end21
  %46 = load i64, ptr %tvmgen_default_fused_nn_batch_matmul.p0.strides, align 8, !dbg !226, !tbaa !258
  %47 = and i64 %46, 4294967295, !dbg !226
  %48 = icmp eq i64 %47, 320, !dbg !226
  %49 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul.p0.strides, i64 1, !dbg !226
  %50 = load i64, ptr %49, align 8, !dbg !226, !tbaa !268
  %51 = and i64 %50, 4294967295, !dbg !226
  %52 = icmp eq i64 %51, 64, !dbg !226
  %53 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul.p0.strides, i64 2, !dbg !226
  %54 = load i64, ptr %53, align 8, !dbg !226, !tbaa !270
  %55 = and i64 %54, 4294967295, !dbg !226
  %56 = icmp eq i64 %55, 1, !dbg !226
  %57 = and i1 %52, %56, !dbg !226
  %58 = and i1 %48, %57, !dbg !226
  br i1 %58, label %if_end, label %assert_fail22, !dbg !226, !prof !18

if_end:                                           ; preds = %if_then, %assert_end21
  %59 = getelementptr inbounds %1, ptr %p0, i64 0, i32 6, !dbg !226
  %60 = load i64, ptr %59, align 8, !dbg !226
  %61 = icmp eq i64 %60, 0, !dbg !226
  br i1 %61, label %assert_end25, label %assert_fail24, !dbg !226, !prof !18

assert_fail22:                                    ; preds = %if_then
  %62 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %62(ptr nonnull @.str.69), !dbg !226
  br label %common.ret

assert_fail24:                                    ; preds = %if_end
  %63 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %63(ptr nonnull @.str.70), !dbg !226
  br label %common.ret

assert_end25:                                     ; preds = %if_end
  %64 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 0, !dbg !226
  %65 = load i32, ptr %64, align 4, !dbg !226
  %66 = icmp eq i32 %65, 1, !dbg !226
  br i1 %66, label %assert_end27, label %assert_fail26, !dbg !226, !prof !18

assert_fail26:                                    ; preds = %assert_end25
  %67 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %67(ptr nonnull @.str.71), !dbg !226
  br label %common.ret

assert_end27:                                     ; preds = %assert_end25
  %68 = getelementptr inbounds %1, ptr %p1, i64 0, i32 2, !dbg !226
  %69 = load i32, ptr %68, align 4, !dbg !226
  %70 = icmp eq i32 %69, 3, !dbg !226
  br i1 %70, label %assert_end31, label %assert_fail28, !dbg !226, !prof !18

assert_fail28:                                    ; preds = %assert_end27
  %71 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %71(ptr nonnull @.str.72), !dbg !226
  br label %common.ret

assert_end31:                                     ; preds = %assert_end27
  %72 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 2, !dbg !226
  %73 = load i16, ptr %72, align 2, !dbg !226
  %74 = icmp eq i16 %73, 1, !dbg !226
  %75 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 1, !dbg !226
  %76 = load i8, ptr %75, align 1, !dbg !226
  %77 = icmp eq i8 %76, 32, !dbg !226
  %78 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 0, !dbg !226
  %79 = load i8, ptr %78, align 1, !dbg !226
  %80 = icmp eq i8 %79, 2, !dbg !226
  %81 = and i1 %77, %80, !dbg !226
  %82 = and i1 %74, %81, !dbg !226
  br i1 %82, label %assert_end33, label %assert_fail32, !dbg !226, !prof !18

assert_fail32:                                    ; preds = %assert_end31
  %83 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %83(ptr nonnull @.str.73), !dbg !226
  br label %common.ret

assert_end33:                                     ; preds = %assert_end31
  %84 = load i64, ptr %tvmgen_default_fused_nn_batch_matmul.p1.shape, align 8, !dbg !226, !tbaa !273
  %85 = and i64 %84, 4294967295, !dbg !226
  %86 = icmp eq i64 %85, 12, !dbg !226
  br i1 %86, label %assert_end35, label %assert_fail34, !dbg !226, !prof !18

assert_fail34:                                    ; preds = %assert_end33
  %87 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %87(ptr nonnull @.str.74), !dbg !226
  br label %common.ret

assert_end35:                                     ; preds = %assert_end33
  %88 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul.p1.shape, i64 1, !dbg !226
  %89 = load i64, ptr %88, align 8, !dbg !226, !tbaa !283
  %90 = and i64 %89, 4294967295, !dbg !226
  %91 = icmp eq i64 %90, 5, !dbg !226
  br i1 %91, label %assert_end37, label %assert_fail36, !dbg !226, !prof !18

assert_fail36:                                    ; preds = %assert_end35
  %92 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %92(ptr nonnull @.str.75), !dbg !226
  br label %common.ret

assert_end37:                                     ; preds = %assert_end35
  %93 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul.p1.shape, i64 2, !dbg !226
  %94 = load i64, ptr %93, align 8, !dbg !226, !tbaa !285
  %95 = and i64 %94, 4294967295, !dbg !226
  %96 = icmp eq i64 %95, 64, !dbg !226
  br i1 %96, label %assert_end39, label %assert_fail38, !dbg !226, !prof !18

assert_fail38:                                    ; preds = %assert_end37
  %97 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %97(ptr nonnull @.str.76), !dbg !226
  br label %common.ret

assert_end39:                                     ; preds = %assert_end37
  %.not75 = icmp eq ptr %tvmgen_default_fused_nn_batch_matmul.p1.strides, null, !dbg !226
  br i1 %.not75, label %if_end41, label %if_then40, !dbg !226, !prof !52

if_then40:                                        ; preds = %assert_end39
  %98 = load i64, ptr %tvmgen_default_fused_nn_batch_matmul.p1.strides, align 8, !dbg !226, !tbaa !288
  %99 = and i64 %98, 4294967295, !dbg !226
  %100 = icmp eq i64 %99, 320, !dbg !226
  %101 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul.p1.strides, i64 1, !dbg !226
  %102 = load i64, ptr %101, align 8, !dbg !226, !tbaa !298
  %103 = and i64 %102, 4294967295, !dbg !226
  %104 = icmp eq i64 %103, 64, !dbg !226
  %105 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul.p1.strides, i64 2, !dbg !226
  %106 = load i64, ptr %105, align 8, !dbg !226, !tbaa !300
  %107 = and i64 %106, 4294967295, !dbg !226
  %108 = icmp eq i64 %107, 1, !dbg !226
  %109 = and i1 %104, %108, !dbg !226
  %110 = and i1 %100, %109, !dbg !226
  br i1 %110, label %if_end41, label %assert_fail42, !dbg !226, !prof !18

if_end41:                                         ; preds = %if_then40, %assert_end39
  %111 = getelementptr inbounds %1, ptr %p1, i64 0, i32 6, !dbg !226
  %112 = load i64, ptr %111, align 8, !dbg !226
  %113 = icmp eq i64 %112, 0, !dbg !226
  br i1 %113, label %assert_end45, label %assert_fail44, !dbg !226, !prof !18

assert_fail42:                                    ; preds = %if_then40
  %114 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %114(ptr nonnull @.str.77), !dbg !226
  br label %common.ret

assert_fail44:                                    ; preds = %if_end41
  %115 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %115(ptr nonnull @.str.78), !dbg !226
  br label %common.ret

assert_end45:                                     ; preds = %if_end41
  %116 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 0, !dbg !226
  %117 = load i32, ptr %116, align 4, !dbg !226
  %118 = icmp eq i32 %117, 1, !dbg !226
  br i1 %118, label %assert_end47, label %assert_fail46, !dbg !226, !prof !18

assert_fail46:                                    ; preds = %assert_end45
  %119 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %119(ptr nonnull @.str.79), !dbg !226
  br label %common.ret

assert_end47:                                     ; preds = %assert_end45
  %120 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 1, !dbg !226
  %121 = load i32, ptr %120, align 4, !dbg !226
  %122 = icmp eq i32 %dev_id, %121, !dbg !226
  br i1 %122, label %assert_end49, label %assert_fail48, !dbg !226, !prof !18

assert_fail48:                                    ; preds = %assert_end47
  %123 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %123(ptr nonnull @.str.80), !dbg !226
  br label %common.ret

assert_end49:                                     ; preds = %assert_end47
  %124 = getelementptr inbounds %1, ptr %T_batch_matmul_NT, i64 0, i32 2, !dbg !226
  %125 = load i32, ptr %124, align 4, !dbg !226
  %126 = icmp eq i32 %125, 3, !dbg !226
  br i1 %126, label %assert_end53, label %assert_fail50, !dbg !226, !prof !18

assert_fail50:                                    ; preds = %assert_end49
  %127 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %127(ptr nonnull @.str.81), !dbg !226
  br label %common.ret

assert_end53:                                     ; preds = %assert_end49
  %128 = getelementptr inbounds %1, ptr %T_batch_matmul_NT, i64 0, i32 3, i32 2, !dbg !226
  %129 = load i16, ptr %128, align 2, !dbg !226
  %130 = icmp eq i16 %129, 1, !dbg !226
  %131 = getelementptr inbounds %1, ptr %T_batch_matmul_NT, i64 0, i32 3, i32 1, !dbg !226
  %132 = load i8, ptr %131, align 1, !dbg !226
  %133 = icmp eq i8 %132, 32, !dbg !226
  %134 = getelementptr inbounds %1, ptr %T_batch_matmul_NT, i64 0, i32 3, i32 0, !dbg !226
  %135 = load i8, ptr %134, align 1, !dbg !226
  %136 = icmp eq i8 %135, 2, !dbg !226
  %137 = and i1 %133, %136, !dbg !226
  %138 = and i1 %130, %137, !dbg !226
  br i1 %138, label %assert_end55, label %assert_fail54, !dbg !226, !prof !18

assert_fail54:                                    ; preds = %assert_end53
  %139 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %139(ptr nonnull @.str.82), !dbg !226
  br label %common.ret

assert_end55:                                     ; preds = %assert_end53
  %140 = load i64, ptr %tvmgen_default_fused_nn_batch_matmul.T_batch_matmul_NT.shape, align 8, !dbg !226, !tbaa !303
  %141 = and i64 %140, 4294967295, !dbg !226
  %142 = icmp eq i64 %141, 12, !dbg !226
  br i1 %142, label %assert_end57, label %assert_fail56, !dbg !226, !prof !18

assert_fail56:                                    ; preds = %assert_end55
  %143 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %143(ptr nonnull @.str.83), !dbg !226
  br label %common.ret

assert_end57:                                     ; preds = %assert_end55
  %144 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul.T_batch_matmul_NT.shape, i64 1, !dbg !226
  %145 = load i64, ptr %144, align 8, !dbg !226, !tbaa !313
  %146 = and i64 %145, 4294967295, !dbg !226
  %147 = icmp eq i64 %146, 5, !dbg !226
  br i1 %147, label %assert_end59, label %assert_fail58, !dbg !226, !prof !18

assert_fail58:                                    ; preds = %assert_end57
  %148 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %148(ptr nonnull @.str.84), !dbg !226
  br label %common.ret

assert_end59:                                     ; preds = %assert_end57
  %149 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul.T_batch_matmul_NT.shape, i64 2, !dbg !226
  %150 = load i64, ptr %149, align 8, !dbg !226, !tbaa !315
  %151 = and i64 %150, 4294967295, !dbg !226
  %152 = icmp eq i64 %151, 5, !dbg !226
  br i1 %152, label %assert_end61, label %assert_fail60, !dbg !226, !prof !18

assert_fail60:                                    ; preds = %assert_end59
  %153 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %153(ptr nonnull @.str.85), !dbg !226
  br label %common.ret

assert_end61:                                     ; preds = %assert_end59
  %.not76 = icmp eq ptr %tvmgen_default_fused_nn_batch_matmul.T_batch_matmul_NT.strides, null, !dbg !226
  br i1 %.not76, label %if_end63, label %if_then62, !dbg !226, !prof !52

if_then62:                                        ; preds = %assert_end61
  %154 = load i64, ptr %tvmgen_default_fused_nn_batch_matmul.T_batch_matmul_NT.strides, align 8, !dbg !226, !tbaa !318
  %155 = and i64 %154, 4294967295, !dbg !226
  %156 = icmp eq i64 %155, 25, !dbg !226
  %157 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul.T_batch_matmul_NT.strides, i64 1, !dbg !226
  %158 = load i64, ptr %157, align 8, !dbg !226, !tbaa !328
  %159 = and i64 %158, 4294967295, !dbg !226
  %160 = icmp eq i64 %159, 5, !dbg !226
  %161 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul.T_batch_matmul_NT.strides, i64 2, !dbg !226
  %162 = load i64, ptr %161, align 8, !dbg !226, !tbaa !330
  %163 = and i64 %162, 4294967295, !dbg !226
  %164 = icmp eq i64 %163, 1, !dbg !226
  %165 = and i1 %160, %164, !dbg !226
  %166 = and i1 %156, %165, !dbg !226
  br i1 %166, label %if_end63, label %assert_fail64, !dbg !226, !prof !18

if_end63:                                         ; preds = %if_then62, %assert_end61
  %167 = getelementptr inbounds %1, ptr %T_batch_matmul_NT, i64 0, i32 6, !dbg !226
  %168 = load i64, ptr %167, align 8, !dbg !226
  %169 = icmp eq i64 %168, 0, !dbg !226
  br i1 %169, label %assert_end67, label %assert_fail66, !dbg !226, !prof !18

assert_fail64:                                    ; preds = %if_then62
  %170 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %170(ptr nonnull @.str.86), !dbg !226
  br label %common.ret

assert_fail66:                                    ; preds = %if_end63
  %171 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %171(ptr nonnull @.str.87), !dbg !226
  br label %common.ret

assert_end67:                                     ; preds = %if_end63
  %172 = getelementptr inbounds %1, ptr %T_batch_matmul_NT, i64 0, i32 1, i32 0, !dbg !226
  %173 = load i32, ptr %172, align 4, !dbg !226
  %174 = icmp eq i32 %173, 1, !dbg !226
  br i1 %174, label %assert_end69, label %assert_fail68, !dbg !226, !prof !18

assert_fail68:                                    ; preds = %assert_end67
  %175 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %175(ptr nonnull @.str.88), !dbg !226
  br label %common.ret

assert_end69:                                     ; preds = %assert_end67
  %176 = getelementptr inbounds %1, ptr %T_batch_matmul_NT, i64 0, i32 1, i32 1, !dbg !226
  %177 = load i32, ptr %176, align 4, !dbg !226
  %178 = icmp eq i32 %dev_id, %177, !dbg !226
  br i1 %178, label %assert_end71, label %assert_fail70, !dbg !226, !prof !18

assert_fail70:                                    ; preds = %assert_end69
  %179 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !226, !tbaa !19
  tail call void %179(ptr nonnull @.str.89), !dbg !226
  br label %common.ret

assert_end71:                                     ; preds = %assert_end69
  %180 = tail call fastcc i32 @tvmgen_default_fused_nn_batch_matmul_compute_(ptr %p072, ptr %p173, ptr %T_batch_matmul_NT74), !dbg !226
  br label %common.ret
}

define dllexport i32 @tvmgen_default_fused_nn_batch_matmul_1(ptr noalias nocapture readonly %args, ptr noalias nocapture readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !333 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !335, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !336, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !337, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !338, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !339, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !340, metadata !DIExpression()), !dbg !341
  %0 = icmp eq i32 %num_args, 3, !dbg !341
  br i1 %0, label %assert_end, label %assert_fail, !dbg !341, !prof !18

common.ret:                                       ; preds = %assert_end71, %assert_fail70, %assert_fail68, %assert_fail66, %assert_fail64, %assert_fail60, %assert_fail58, %assert_fail56, %assert_fail54, %assert_fail50, %assert_fail48, %assert_fail46, %assert_fail44, %assert_fail42, %assert_fail38, %assert_fail36, %assert_fail34, %assert_fail32, %assert_fail28, %assert_fail26, %assert_fail24, %assert_fail22, %assert_fail20, %assert_fail18, %assert_fail16, %assert_fail14, %assert_fail10, %assert_fail8, %assert_fail6, %assert_fail4, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail4 ], [ -1, %assert_fail6 ], [ -1, %assert_fail8 ], [ -1, %assert_fail10 ], [ -1, %assert_fail14 ], [ -1, %assert_fail16 ], [ -1, %assert_fail18 ], [ -1, %assert_fail20 ], [ -1, %assert_fail22 ], [ -1, %assert_fail24 ], [ -1, %assert_fail26 ], [ -1, %assert_fail28 ], [ -1, %assert_fail32 ], [ -1, %assert_fail34 ], [ -1, %assert_fail36 ], [ -1, %assert_fail38 ], [ -1, %assert_fail42 ], [ -1, %assert_fail44 ], [ -1, %assert_fail46 ], [ -1, %assert_fail48 ], [ -1, %assert_fail50 ], [ -1, %assert_fail54 ], [ -1, %assert_fail56 ], [ -1, %assert_fail58 ], [ -1, %assert_fail60 ], [ -1, %assert_fail64 ], [ -1, %assert_fail66 ], [ -1, %assert_fail68 ], [ -1, %assert_fail70 ], [ %180, %assert_end71 ]
  ret i32 %common.ret.op, !dbg !341

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %1(ptr nonnull @.str.91), !dbg !341
  br label %common.ret

assert_end:                                       ; preds = %entry
  %p0.code = load i32, ptr %arg_type_ids, align 4, !dbg !341, !tbaa !342
  %2 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !341
  %p1.code = load i32, ptr %2, align 4, !dbg !341, !tbaa !353
  %3 = getelementptr inbounds i32, ptr %arg_type_ids, i64 2, !dbg !341
  %T_batch_matmul_NT.code = load i32, ptr %3, align 4, !dbg !341, !tbaa !355
  %p0 = load ptr, ptr %args, align 8, !dbg !341
  %4 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !341
  %p1 = load ptr, ptr %4, align 8, !dbg !341
  %5 = getelementptr inbounds %0, ptr %args, i64 2, !dbg !341
  %T_batch_matmul_NT = load ptr, ptr %5, align 8, !dbg !341
  %p072 = load ptr, ptr %p0, align 8, !dbg !341
  call void @llvm.assume(i1 true) [ "align"(ptr %p072, i64 64) ], !dbg !341
  %6 = getelementptr inbounds %1, ptr %p0, i64 0, i32 4, !dbg !341
  %tvmgen_default_fused_nn_batch_matmul_1.p0.shape = load ptr, ptr %6, align 8, !dbg !341
  %7 = getelementptr inbounds %1, ptr %p0, i64 0, i32 5, !dbg !341
  %tvmgen_default_fused_nn_batch_matmul_1.p0.strides = load ptr, ptr %7, align 8, !dbg !341
  %8 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 1, !dbg !341
  %dev_id = load i32, ptr %8, align 4, !dbg !341
  %p173 = load ptr, ptr %p1, align 8, !dbg !341
  call void @llvm.assume(i1 true) [ "align"(ptr %p173, i64 64) ], !dbg !341
  %9 = getelementptr inbounds %1, ptr %p1, i64 0, i32 4, !dbg !341
  %tvmgen_default_fused_nn_batch_matmul_1.p1.shape = load ptr, ptr %9, align 8, !dbg !341
  %10 = getelementptr inbounds %1, ptr %p1, i64 0, i32 5, !dbg !341
  %tvmgen_default_fused_nn_batch_matmul_1.p1.strides = load ptr, ptr %10, align 8, !dbg !341
  %T_batch_matmul_NT74 = load ptr, ptr %T_batch_matmul_NT, align 8, !dbg !341
  call void @llvm.assume(i1 true) [ "align"(ptr %T_batch_matmul_NT74, i64 64) ], !dbg !341
  %11 = getelementptr inbounds %1, ptr %T_batch_matmul_NT, i64 0, i32 4, !dbg !341
  %tvmgen_default_fused_nn_batch_matmul_1.T_batch_matmul_NT.shape = load ptr, ptr %11, align 8, !dbg !341
  %12 = getelementptr inbounds %1, ptr %T_batch_matmul_NT, i64 0, i32 5, !dbg !341
  %tvmgen_default_fused_nn_batch_matmul_1.T_batch_matmul_NT.strides = load ptr, ptr %12, align 8, !dbg !341
  switch i32 %p0.code, label %assert_fail4 [
    i32 13, label %assert_end5
    i32 7, label %assert_end5
    i32 4, label %assert_end5
    i32 3, label %assert_end5
  ], !dbg !341

assert_fail4:                                     ; preds = %assert_end
  %13 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %13(ptr nonnull @.str.92), !dbg !341
  br label %common.ret

assert_end5:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %p1.code, label %assert_fail6 [
    i32 13, label %assert_end7
    i32 7, label %assert_end7
    i32 4, label %assert_end7
    i32 3, label %assert_end7
  ], !dbg !341

assert_fail6:                                     ; preds = %assert_end5
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %14(ptr nonnull @.str.93), !dbg !341
  br label %common.ret

assert_end7:                                      ; preds = %assert_end5, %assert_end5, %assert_end5, %assert_end5
  switch i32 %T_batch_matmul_NT.code, label %assert_fail8 [
    i32 13, label %assert_end9
    i32 7, label %assert_end9
    i32 4, label %assert_end9
    i32 3, label %assert_end9
  ], !dbg !341

assert_fail8:                                     ; preds = %assert_end7
  %15 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %15(ptr nonnull @.str.94), !dbg !341
  br label %common.ret

assert_end9:                                      ; preds = %assert_end7, %assert_end7, %assert_end7, %assert_end7
  %16 = getelementptr inbounds %1, ptr %p0, i64 0, i32 2, !dbg !341
  %17 = load i32, ptr %16, align 4, !dbg !341
  %18 = icmp eq i32 %17, 3, !dbg !341
  br i1 %18, label %assert_end13, label %assert_fail10, !dbg !341, !prof !18

assert_fail10:                                    ; preds = %assert_end9
  %19 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %19(ptr nonnull @.str.95), !dbg !341
  br label %common.ret

assert_end13:                                     ; preds = %assert_end9
  %20 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 2, !dbg !341
  %21 = load i16, ptr %20, align 2, !dbg !341
  %22 = icmp eq i16 %21, 1, !dbg !341
  %23 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 1, !dbg !341
  %24 = load i8, ptr %23, align 1, !dbg !341
  %25 = icmp eq i8 %24, 32, !dbg !341
  %26 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 0, !dbg !341
  %27 = load i8, ptr %26, align 1, !dbg !341
  %28 = icmp eq i8 %27, 2, !dbg !341
  %29 = and i1 %25, %28, !dbg !341
  %30 = and i1 %22, %29, !dbg !341
  br i1 %30, label %assert_end15, label %assert_fail14, !dbg !341, !prof !18

assert_fail14:                                    ; preds = %assert_end13
  %31 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %31(ptr nonnull @.str.96), !dbg !341
  br label %common.ret

assert_end15:                                     ; preds = %assert_end13
  %32 = load i64, ptr %tvmgen_default_fused_nn_batch_matmul_1.p0.shape, align 8, !dbg !341, !tbaa !358
  %33 = and i64 %32, 4294967295, !dbg !341
  %34 = icmp eq i64 %33, 12, !dbg !341
  br i1 %34, label %assert_end17, label %assert_fail16, !dbg !341, !prof !18

assert_fail16:                                    ; preds = %assert_end15
  %35 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %35(ptr nonnull @.str.97), !dbg !341
  br label %common.ret

assert_end17:                                     ; preds = %assert_end15
  %36 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul_1.p0.shape, i64 1, !dbg !341
  %37 = load i64, ptr %36, align 8, !dbg !341, !tbaa !368
  %38 = and i64 %37, 4294967295, !dbg !341
  %39 = icmp eq i64 %38, 5, !dbg !341
  br i1 %39, label %assert_end19, label %assert_fail18, !dbg !341, !prof !18

assert_fail18:                                    ; preds = %assert_end17
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %40(ptr nonnull @.str.98), !dbg !341
  br label %common.ret

assert_end19:                                     ; preds = %assert_end17
  %41 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul_1.p0.shape, i64 2, !dbg !341
  %42 = load i64, ptr %41, align 8, !dbg !341, !tbaa !370
  %43 = and i64 %42, 4294967295, !dbg !341
  %44 = icmp eq i64 %43, 5, !dbg !341
  br i1 %44, label %assert_end21, label %assert_fail20, !dbg !341, !prof !18

assert_fail20:                                    ; preds = %assert_end19
  %45 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %45(ptr nonnull @.str.99), !dbg !341
  br label %common.ret

assert_end21:                                     ; preds = %assert_end19
  %.not = icmp eq ptr %tvmgen_default_fused_nn_batch_matmul_1.p0.strides, null, !dbg !341
  br i1 %.not, label %if_end, label %if_then, !dbg !341, !prof !52

if_then:                                          ; preds = %assert_end21
  %46 = load i64, ptr %tvmgen_default_fused_nn_batch_matmul_1.p0.strides, align 8, !dbg !341, !tbaa !373
  %47 = and i64 %46, 4294967295, !dbg !341
  %48 = icmp eq i64 %47, 25, !dbg !341
  %49 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul_1.p0.strides, i64 1, !dbg !341
  %50 = load i64, ptr %49, align 8, !dbg !341, !tbaa !383
  %51 = and i64 %50, 4294967295, !dbg !341
  %52 = icmp eq i64 %51, 5, !dbg !341
  %53 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul_1.p0.strides, i64 2, !dbg !341
  %54 = load i64, ptr %53, align 8, !dbg !341, !tbaa !385
  %55 = and i64 %54, 4294967295, !dbg !341
  %56 = icmp eq i64 %55, 1, !dbg !341
  %57 = and i1 %52, %56, !dbg !341
  %58 = and i1 %48, %57, !dbg !341
  br i1 %58, label %if_end, label %assert_fail22, !dbg !341, !prof !18

if_end:                                           ; preds = %if_then, %assert_end21
  %59 = getelementptr inbounds %1, ptr %p0, i64 0, i32 6, !dbg !341
  %60 = load i64, ptr %59, align 8, !dbg !341
  %61 = icmp eq i64 %60, 0, !dbg !341
  br i1 %61, label %assert_end25, label %assert_fail24, !dbg !341, !prof !18

assert_fail22:                                    ; preds = %if_then
  %62 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %62(ptr nonnull @.str.100), !dbg !341
  br label %common.ret

assert_fail24:                                    ; preds = %if_end
  %63 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %63(ptr nonnull @.str.101), !dbg !341
  br label %common.ret

assert_end25:                                     ; preds = %if_end
  %64 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 0, !dbg !341
  %65 = load i32, ptr %64, align 4, !dbg !341
  %66 = icmp eq i32 %65, 1, !dbg !341
  br i1 %66, label %assert_end27, label %assert_fail26, !dbg !341, !prof !18

assert_fail26:                                    ; preds = %assert_end25
  %67 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %67(ptr nonnull @.str.102), !dbg !341
  br label %common.ret

assert_end27:                                     ; preds = %assert_end25
  %68 = getelementptr inbounds %1, ptr %p1, i64 0, i32 2, !dbg !341
  %69 = load i32, ptr %68, align 4, !dbg !341
  %70 = icmp eq i32 %69, 3, !dbg !341
  br i1 %70, label %assert_end31, label %assert_fail28, !dbg !341, !prof !18

assert_fail28:                                    ; preds = %assert_end27
  %71 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %71(ptr nonnull @.str.103), !dbg !341
  br label %common.ret

assert_end31:                                     ; preds = %assert_end27
  %72 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 2, !dbg !341
  %73 = load i16, ptr %72, align 2, !dbg !341
  %74 = icmp eq i16 %73, 1, !dbg !341
  %75 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 1, !dbg !341
  %76 = load i8, ptr %75, align 1, !dbg !341
  %77 = icmp eq i8 %76, 32, !dbg !341
  %78 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 0, !dbg !341
  %79 = load i8, ptr %78, align 1, !dbg !341
  %80 = icmp eq i8 %79, 2, !dbg !341
  %81 = and i1 %77, %80, !dbg !341
  %82 = and i1 %74, %81, !dbg !341
  br i1 %82, label %assert_end33, label %assert_fail32, !dbg !341, !prof !18

assert_fail32:                                    ; preds = %assert_end31
  %83 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %83(ptr nonnull @.str.104), !dbg !341
  br label %common.ret

assert_end33:                                     ; preds = %assert_end31
  %84 = load i64, ptr %tvmgen_default_fused_nn_batch_matmul_1.p1.shape, align 8, !dbg !341, !tbaa !388
  %85 = and i64 %84, 4294967295, !dbg !341
  %86 = icmp eq i64 %85, 12, !dbg !341
  br i1 %86, label %assert_end35, label %assert_fail34, !dbg !341, !prof !18

assert_fail34:                                    ; preds = %assert_end33
  %87 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %87(ptr nonnull @.str.105), !dbg !341
  br label %common.ret

assert_end35:                                     ; preds = %assert_end33
  %88 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul_1.p1.shape, i64 1, !dbg !341
  %89 = load i64, ptr %88, align 8, !dbg !341, !tbaa !398
  %90 = and i64 %89, 4294967295, !dbg !341
  %91 = icmp eq i64 %90, 64, !dbg !341
  br i1 %91, label %assert_end37, label %assert_fail36, !dbg !341, !prof !18

assert_fail36:                                    ; preds = %assert_end35
  %92 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %92(ptr nonnull @.str.106), !dbg !341
  br label %common.ret

assert_end37:                                     ; preds = %assert_end35
  %93 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul_1.p1.shape, i64 2, !dbg !341
  %94 = load i64, ptr %93, align 8, !dbg !341, !tbaa !400
  %95 = and i64 %94, 4294967295, !dbg !341
  %96 = icmp eq i64 %95, 5, !dbg !341
  br i1 %96, label %assert_end39, label %assert_fail38, !dbg !341, !prof !18

assert_fail38:                                    ; preds = %assert_end37
  %97 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %97(ptr nonnull @.str.107), !dbg !341
  br label %common.ret

assert_end39:                                     ; preds = %assert_end37
  %.not75 = icmp eq ptr %tvmgen_default_fused_nn_batch_matmul_1.p1.strides, null, !dbg !341
  br i1 %.not75, label %if_end41, label %if_then40, !dbg !341, !prof !52

if_then40:                                        ; preds = %assert_end39
  %98 = load i64, ptr %tvmgen_default_fused_nn_batch_matmul_1.p1.strides, align 8, !dbg !341, !tbaa !403
  %99 = and i64 %98, 4294967295, !dbg !341
  %100 = icmp eq i64 %99, 320, !dbg !341
  %101 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul_1.p1.strides, i64 1, !dbg !341
  %102 = load i64, ptr %101, align 8, !dbg !341, !tbaa !413
  %103 = and i64 %102, 4294967295, !dbg !341
  %104 = icmp eq i64 %103, 5, !dbg !341
  %105 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul_1.p1.strides, i64 2, !dbg !341
  %106 = load i64, ptr %105, align 8, !dbg !341, !tbaa !415
  %107 = and i64 %106, 4294967295, !dbg !341
  %108 = icmp eq i64 %107, 1, !dbg !341
  %109 = and i1 %104, %108, !dbg !341
  %110 = and i1 %100, %109, !dbg !341
  br i1 %110, label %if_end41, label %assert_fail42, !dbg !341, !prof !18

if_end41:                                         ; preds = %if_then40, %assert_end39
  %111 = getelementptr inbounds %1, ptr %p1, i64 0, i32 6, !dbg !341
  %112 = load i64, ptr %111, align 8, !dbg !341
  %113 = icmp eq i64 %112, 0, !dbg !341
  br i1 %113, label %assert_end45, label %assert_fail44, !dbg !341, !prof !18

assert_fail42:                                    ; preds = %if_then40
  %114 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %114(ptr nonnull @.str.108), !dbg !341
  br label %common.ret

assert_fail44:                                    ; preds = %if_end41
  %115 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %115(ptr nonnull @.str.109), !dbg !341
  br label %common.ret

assert_end45:                                     ; preds = %if_end41
  %116 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 0, !dbg !341
  %117 = load i32, ptr %116, align 4, !dbg !341
  %118 = icmp eq i32 %117, 1, !dbg !341
  br i1 %118, label %assert_end47, label %assert_fail46, !dbg !341, !prof !18

assert_fail46:                                    ; preds = %assert_end45
  %119 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %119(ptr nonnull @.str.110), !dbg !341
  br label %common.ret

assert_end47:                                     ; preds = %assert_end45
  %120 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 1, !dbg !341
  %121 = load i32, ptr %120, align 4, !dbg !341
  %122 = icmp eq i32 %dev_id, %121, !dbg !341
  br i1 %122, label %assert_end49, label %assert_fail48, !dbg !341, !prof !18

assert_fail48:                                    ; preds = %assert_end47
  %123 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %123(ptr nonnull @.str.111), !dbg !341
  br label %common.ret

assert_end49:                                     ; preds = %assert_end47
  %124 = getelementptr inbounds %1, ptr %T_batch_matmul_NT, i64 0, i32 2, !dbg !341
  %125 = load i32, ptr %124, align 4, !dbg !341
  %126 = icmp eq i32 %125, 3, !dbg !341
  br i1 %126, label %assert_end53, label %assert_fail50, !dbg !341, !prof !18

assert_fail50:                                    ; preds = %assert_end49
  %127 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %127(ptr nonnull @.str.112), !dbg !341
  br label %common.ret

assert_end53:                                     ; preds = %assert_end49
  %128 = getelementptr inbounds %1, ptr %T_batch_matmul_NT, i64 0, i32 3, i32 2, !dbg !341
  %129 = load i16, ptr %128, align 2, !dbg !341
  %130 = icmp eq i16 %129, 1, !dbg !341
  %131 = getelementptr inbounds %1, ptr %T_batch_matmul_NT, i64 0, i32 3, i32 1, !dbg !341
  %132 = load i8, ptr %131, align 1, !dbg !341
  %133 = icmp eq i8 %132, 32, !dbg !341
  %134 = getelementptr inbounds %1, ptr %T_batch_matmul_NT, i64 0, i32 3, i32 0, !dbg !341
  %135 = load i8, ptr %134, align 1, !dbg !341
  %136 = icmp eq i8 %135, 2, !dbg !341
  %137 = and i1 %133, %136, !dbg !341
  %138 = and i1 %130, %137, !dbg !341
  br i1 %138, label %assert_end55, label %assert_fail54, !dbg !341, !prof !18

assert_fail54:                                    ; preds = %assert_end53
  %139 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %139(ptr nonnull @.str.113), !dbg !341
  br label %common.ret

assert_end55:                                     ; preds = %assert_end53
  %140 = load i64, ptr %tvmgen_default_fused_nn_batch_matmul_1.T_batch_matmul_NT.shape, align 8, !dbg !341, !tbaa !418
  %141 = and i64 %140, 4294967295, !dbg !341
  %142 = icmp eq i64 %141, 12, !dbg !341
  br i1 %142, label %assert_end57, label %assert_fail56, !dbg !341, !prof !18

assert_fail56:                                    ; preds = %assert_end55
  %143 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %143(ptr nonnull @.str.114), !dbg !341
  br label %common.ret

assert_end57:                                     ; preds = %assert_end55
  %144 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul_1.T_batch_matmul_NT.shape, i64 1, !dbg !341
  %145 = load i64, ptr %144, align 8, !dbg !341, !tbaa !428
  %146 = and i64 %145, 4294967295, !dbg !341
  %147 = icmp eq i64 %146, 5, !dbg !341
  br i1 %147, label %assert_end59, label %assert_fail58, !dbg !341, !prof !18

assert_fail58:                                    ; preds = %assert_end57
  %148 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %148(ptr nonnull @.str.115), !dbg !341
  br label %common.ret

assert_end59:                                     ; preds = %assert_end57
  %149 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul_1.T_batch_matmul_NT.shape, i64 2, !dbg !341
  %150 = load i64, ptr %149, align 8, !dbg !341, !tbaa !430
  %151 = and i64 %150, 4294967295, !dbg !341
  %152 = icmp eq i64 %151, 64, !dbg !341
  br i1 %152, label %assert_end61, label %assert_fail60, !dbg !341, !prof !18

assert_fail60:                                    ; preds = %assert_end59
  %153 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %153(ptr nonnull @.str.116), !dbg !341
  br label %common.ret

assert_end61:                                     ; preds = %assert_end59
  %.not76 = icmp eq ptr %tvmgen_default_fused_nn_batch_matmul_1.T_batch_matmul_NT.strides, null, !dbg !341
  br i1 %.not76, label %if_end63, label %if_then62, !dbg !341, !prof !52

if_then62:                                        ; preds = %assert_end61
  %154 = load i64, ptr %tvmgen_default_fused_nn_batch_matmul_1.T_batch_matmul_NT.strides, align 8, !dbg !341, !tbaa !433
  %155 = and i64 %154, 4294967295, !dbg !341
  %156 = icmp eq i64 %155, 320, !dbg !341
  %157 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul_1.T_batch_matmul_NT.strides, i64 1, !dbg !341
  %158 = load i64, ptr %157, align 8, !dbg !341, !tbaa !443
  %159 = and i64 %158, 4294967295, !dbg !341
  %160 = icmp eq i64 %159, 64, !dbg !341
  %161 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_batch_matmul_1.T_batch_matmul_NT.strides, i64 2, !dbg !341
  %162 = load i64, ptr %161, align 8, !dbg !341, !tbaa !445
  %163 = and i64 %162, 4294967295, !dbg !341
  %164 = icmp eq i64 %163, 1, !dbg !341
  %165 = and i1 %160, %164, !dbg !341
  %166 = and i1 %156, %165, !dbg !341
  br i1 %166, label %if_end63, label %assert_fail64, !dbg !341, !prof !18

if_end63:                                         ; preds = %if_then62, %assert_end61
  %167 = getelementptr inbounds %1, ptr %T_batch_matmul_NT, i64 0, i32 6, !dbg !341
  %168 = load i64, ptr %167, align 8, !dbg !341
  %169 = icmp eq i64 %168, 0, !dbg !341
  br i1 %169, label %assert_end67, label %assert_fail66, !dbg !341, !prof !18

assert_fail64:                                    ; preds = %if_then62
  %170 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %170(ptr nonnull @.str.117), !dbg !341
  br label %common.ret

assert_fail66:                                    ; preds = %if_end63
  %171 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %171(ptr nonnull @.str.118), !dbg !341
  br label %common.ret

assert_end67:                                     ; preds = %if_end63
  %172 = getelementptr inbounds %1, ptr %T_batch_matmul_NT, i64 0, i32 1, i32 0, !dbg !341
  %173 = load i32, ptr %172, align 4, !dbg !341
  %174 = icmp eq i32 %173, 1, !dbg !341
  br i1 %174, label %assert_end69, label %assert_fail68, !dbg !341, !prof !18

assert_fail68:                                    ; preds = %assert_end67
  %175 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %175(ptr nonnull @.str.119), !dbg !341
  br label %common.ret

assert_end69:                                     ; preds = %assert_end67
  %176 = getelementptr inbounds %1, ptr %T_batch_matmul_NT, i64 0, i32 1, i32 1, !dbg !341
  %177 = load i32, ptr %176, align 4, !dbg !341
  %178 = icmp eq i32 %dev_id, %177, !dbg !341
  br i1 %178, label %assert_end71, label %assert_fail70, !dbg !341, !prof !18

assert_fail70:                                    ; preds = %assert_end69
  %179 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !341, !tbaa !19
  tail call void %179(ptr nonnull @.str.120), !dbg !341
  br label %common.ret

assert_end71:                                     ; preds = %assert_end69
  %180 = tail call fastcc i32 @tvmgen_default_fused_nn_batch_matmul_1_compute_(ptr %p072, ptr %p173, ptr %T_batch_matmul_NT74), !dbg !341
  br label %common.ret
}

define dllexport i32 @tvmgen_default_fused_nn_contrib_dense_pack(ptr noalias nocapture readonly %args, ptr noalias nocapture readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !448 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !450, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !451, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !452, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !453, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !454, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !455, metadata !DIExpression()), !dbg !456
  %0 = icmp eq i32 %num_args, 3, !dbg !456
  br i1 %0, label %assert_end, label %assert_fail, !dbg !456, !prof !18

common.ret:                                       ; preds = %assert_end67, %assert_fail66, %assert_fail64, %assert_fail62, %assert_fail60, %assert_fail56, %assert_fail54, %assert_fail52, %assert_fail48, %assert_fail46, %assert_fail44, %assert_fail42, %assert_fail40, %assert_fail36, %assert_fail34, %assert_fail32, %assert_fail30, %assert_fail26, %assert_fail24, %assert_fail22, %assert_fail20, %assert_fail18, %assert_fail16, %assert_fail14, %assert_fail10, %assert_fail8, %assert_fail6, %assert_fail4, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail4 ], [ -1, %assert_fail6 ], [ -1, %assert_fail8 ], [ -1, %assert_fail10 ], [ -1, %assert_fail14 ], [ -1, %assert_fail16 ], [ -1, %assert_fail18 ], [ -1, %assert_fail20 ], [ -1, %assert_fail22 ], [ -1, %assert_fail24 ], [ -1, %assert_fail26 ], [ -1, %assert_fail30 ], [ -1, %assert_fail32 ], [ -1, %assert_fail34 ], [ -1, %assert_fail36 ], [ -1, %assert_fail40 ], [ -1, %assert_fail42 ], [ -1, %assert_fail44 ], [ -1, %assert_fail46 ], [ -1, %assert_fail48 ], [ -1, %assert_fail52 ], [ -1, %assert_fail54 ], [ -1, %assert_fail56 ], [ -1, %assert_fail60 ], [ -1, %assert_fail62 ], [ -1, %assert_fail64 ], [ -1, %assert_fail66 ], [ %160, %assert_end67 ]
  ret i32 %common.ret.op, !dbg !456

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %1(ptr nonnull @.str.122), !dbg !456
  br label %common.ret

assert_end:                                       ; preds = %entry
  %p0.code = load i32, ptr %arg_type_ids, align 4, !dbg !456, !tbaa !457
  %2 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !456
  %p1.code = load i32, ptr %2, align 4, !dbg !456, !tbaa !468
  %3 = getelementptr inbounds i32, ptr %arg_type_ids, i64 2, !dbg !456
  %compute.code = load i32, ptr %3, align 4, !dbg !456, !tbaa !470
  %p0 = load ptr, ptr %args, align 8, !dbg !456
  %4 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !456
  %p1 = load ptr, ptr %4, align 8, !dbg !456
  %5 = getelementptr inbounds %0, ptr %args, i64 2, !dbg !456
  %compute = load ptr, ptr %5, align 8, !dbg !456
  %p068 = load ptr, ptr %p0, align 8, !dbg !456
  call void @llvm.assume(i1 true) [ "align"(ptr %p068, i64 64) ], !dbg !456
  %6 = getelementptr inbounds %1, ptr %p0, i64 0, i32 4, !dbg !456
  %tvmgen_default_fused_nn_contrib_dense_pack.p0.shape = load ptr, ptr %6, align 8, !dbg !456
  %7 = getelementptr inbounds %1, ptr %p0, i64 0, i32 5, !dbg !456
  %tvmgen_default_fused_nn_contrib_dense_pack.p0.strides = load ptr, ptr %7, align 8, !dbg !456
  %8 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 1, !dbg !456
  %dev_id = load i32, ptr %8, align 4, !dbg !456
  %p169 = load ptr, ptr %p1, align 8, !dbg !456
  call void @llvm.assume(i1 true) [ "align"(ptr %p169, i64 64) ], !dbg !456
  %9 = getelementptr inbounds %1, ptr %p1, i64 0, i32 4, !dbg !456
  %tvmgen_default_fused_nn_contrib_dense_pack.p1.shape = load ptr, ptr %9, align 8, !dbg !456
  %10 = getelementptr inbounds %1, ptr %p1, i64 0, i32 5, !dbg !456
  %tvmgen_default_fused_nn_contrib_dense_pack.p1.strides = load ptr, ptr %10, align 8, !dbg !456
  %compute70 = load ptr, ptr %compute, align 8, !dbg !456
  call void @llvm.assume(i1 true) [ "align"(ptr %compute70, i64 64) ], !dbg !456
  %11 = getelementptr inbounds %1, ptr %compute, i64 0, i32 4, !dbg !456
  %tvmgen_default_fused_nn_contrib_dense_pack.compute.shape = load ptr, ptr %11, align 8, !dbg !456
  %12 = getelementptr inbounds %1, ptr %compute, i64 0, i32 5, !dbg !456
  %tvmgen_default_fused_nn_contrib_dense_pack.compute.strides = load ptr, ptr %12, align 8, !dbg !456
  switch i32 %p0.code, label %assert_fail4 [
    i32 13, label %assert_end5
    i32 7, label %assert_end5
    i32 4, label %assert_end5
    i32 3, label %assert_end5
  ], !dbg !456

assert_fail4:                                     ; preds = %assert_end
  %13 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %13(ptr nonnull @.str.123), !dbg !456
  br label %common.ret

assert_end5:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %p1.code, label %assert_fail6 [
    i32 13, label %assert_end7
    i32 7, label %assert_end7
    i32 4, label %assert_end7
    i32 3, label %assert_end7
  ], !dbg !456

assert_fail6:                                     ; preds = %assert_end5
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %14(ptr nonnull @.str.124), !dbg !456
  br label %common.ret

assert_end7:                                      ; preds = %assert_end5, %assert_end5, %assert_end5, %assert_end5
  switch i32 %compute.code, label %assert_fail8 [
    i32 13, label %assert_end9
    i32 7, label %assert_end9
    i32 4, label %assert_end9
    i32 3, label %assert_end9
  ], !dbg !456

assert_fail8:                                     ; preds = %assert_end7
  %15 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %15(ptr nonnull @.str.125), !dbg !456
  br label %common.ret

assert_end9:                                      ; preds = %assert_end7, %assert_end7, %assert_end7, %assert_end7
  %16 = getelementptr inbounds %1, ptr %p0, i64 0, i32 2, !dbg !456
  %17 = load i32, ptr %16, align 4, !dbg !456
  %18 = icmp eq i32 %17, 2, !dbg !456
  br i1 %18, label %assert_end13, label %assert_fail10, !dbg !456, !prof !18

assert_fail10:                                    ; preds = %assert_end9
  %19 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %19(ptr nonnull @.str.126), !dbg !456
  br label %common.ret

assert_end13:                                     ; preds = %assert_end9
  %20 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 2, !dbg !456
  %21 = load i16, ptr %20, align 2, !dbg !456
  %22 = icmp eq i16 %21, 1, !dbg !456
  %23 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 1, !dbg !456
  %24 = load i8, ptr %23, align 1, !dbg !456
  %25 = icmp eq i8 %24, 32, !dbg !456
  %26 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 0, !dbg !456
  %27 = load i8, ptr %26, align 1, !dbg !456
  %28 = icmp eq i8 %27, 2, !dbg !456
  %29 = and i1 %25, %28, !dbg !456
  %30 = and i1 %22, %29, !dbg !456
  br i1 %30, label %assert_end15, label %assert_fail14, !dbg !456, !prof !18

assert_fail14:                                    ; preds = %assert_end13
  %31 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %31(ptr nonnull @.str.127), !dbg !456
  br label %common.ret

assert_end15:                                     ; preds = %assert_end13
  %32 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack.p0.shape, align 8, !dbg !456, !tbaa !473
  %33 = and i64 %32, 4294967295, !dbg !456
  %34 = icmp eq i64 %33, 5, !dbg !456
  br i1 %34, label %assert_end17, label %assert_fail16, !dbg !456, !prof !18

assert_fail16:                                    ; preds = %assert_end15
  %35 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %35(ptr nonnull @.str.128), !dbg !456
  br label %common.ret

assert_end17:                                     ; preds = %assert_end15
  %36 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack.p0.shape, i64 1, !dbg !456
  %37 = load i64, ptr %36, align 8, !dbg !456, !tbaa !483
  %38 = and i64 %37, 4294967295, !dbg !456
  %39 = icmp eq i64 %38, 768, !dbg !456
  br i1 %39, label %assert_end19, label %assert_fail18, !dbg !456, !prof !18

assert_fail18:                                    ; preds = %assert_end17
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %40(ptr nonnull @.str.129), !dbg !456
  br label %common.ret

assert_end19:                                     ; preds = %assert_end17
  %.not = icmp eq ptr %tvmgen_default_fused_nn_contrib_dense_pack.p0.strides, null, !dbg !456
  br i1 %.not, label %if_end, label %if_then, !dbg !456, !prof !52

if_then:                                          ; preds = %assert_end19
  %41 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack.p0.strides, align 8, !dbg !456, !tbaa !485
  %42 = and i64 %41, 4294967295, !dbg !456
  %43 = icmp eq i64 %42, 768, !dbg !456
  %44 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack.p0.strides, i64 1, !dbg !456
  %45 = load i64, ptr %44, align 8, !dbg !456, !tbaa !495
  %46 = and i64 %45, 4294967295, !dbg !456
  %47 = icmp eq i64 %46, 1, !dbg !456
  %48 = and i1 %43, %47, !dbg !456
  br i1 %48, label %if_end, label %assert_fail20, !dbg !456, !prof !18

if_end:                                           ; preds = %if_then, %assert_end19
  %49 = getelementptr inbounds %1, ptr %p0, i64 0, i32 6, !dbg !456
  %50 = load i64, ptr %49, align 8, !dbg !456
  %51 = icmp eq i64 %50, 0, !dbg !456
  br i1 %51, label %assert_end23, label %assert_fail22, !dbg !456, !prof !18

assert_fail20:                                    ; preds = %if_then
  %52 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %52(ptr nonnull @.str.130), !dbg !456
  br label %common.ret

assert_fail22:                                    ; preds = %if_end
  %53 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %53(ptr nonnull @.str.131), !dbg !456
  br label %common.ret

assert_end23:                                     ; preds = %if_end
  %54 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 0, !dbg !456
  %55 = load i32, ptr %54, align 4, !dbg !456
  %56 = icmp eq i32 %55, 1, !dbg !456
  br i1 %56, label %assert_end25, label %assert_fail24, !dbg !456, !prof !18

assert_fail24:                                    ; preds = %assert_end23
  %57 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %57(ptr nonnull @.str.132), !dbg !456
  br label %common.ret

assert_end25:                                     ; preds = %assert_end23
  %58 = getelementptr inbounds %1, ptr %p1, i64 0, i32 2, !dbg !456
  %59 = load i32, ptr %58, align 4, !dbg !456
  %60 = icmp eq i32 %59, 3, !dbg !456
  br i1 %60, label %assert_end29, label %assert_fail26, !dbg !456, !prof !18

assert_fail26:                                    ; preds = %assert_end25
  %61 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %61(ptr nonnull @.str.133), !dbg !456
  br label %common.ret

assert_end29:                                     ; preds = %assert_end25
  %62 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 2, !dbg !456
  %63 = load i16, ptr %62, align 2, !dbg !456
  %64 = icmp eq i16 %63, 1, !dbg !456
  %65 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 1, !dbg !456
  %66 = load i8, ptr %65, align 1, !dbg !456
  %67 = icmp eq i8 %66, 32, !dbg !456
  %68 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 0, !dbg !456
  %69 = load i8, ptr %68, align 1, !dbg !456
  %70 = icmp eq i8 %69, 2, !dbg !456
  %71 = and i1 %67, %70, !dbg !456
  %72 = and i1 %64, %71, !dbg !456
  br i1 %72, label %assert_end31, label %assert_fail30, !dbg !456, !prof !18

assert_fail30:                                    ; preds = %assert_end29
  %73 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %73(ptr nonnull @.str.134), !dbg !456
  br label %common.ret

assert_end31:                                     ; preds = %assert_end29
  %74 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack.p1.shape, align 8, !dbg !456, !tbaa !497
  %75 = and i64 %74, 4294967295, !dbg !456
  %76 = icmp eq i64 %75, 96, !dbg !456
  br i1 %76, label %assert_end33, label %assert_fail32, !dbg !456, !prof !18

assert_fail32:                                    ; preds = %assert_end31
  %77 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %77(ptr nonnull @.str.135), !dbg !456
  br label %common.ret

assert_end33:                                     ; preds = %assert_end31
  %78 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack.p1.shape, i64 1, !dbg !456
  %79 = load i64, ptr %78, align 8, !dbg !456, !tbaa !507
  %80 = and i64 %79, 4294967295, !dbg !456
  %81 = icmp eq i64 %80, 768, !dbg !456
  br i1 %81, label %assert_end35, label %assert_fail34, !dbg !456, !prof !18

assert_fail34:                                    ; preds = %assert_end33
  %82 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %82(ptr nonnull @.str.136), !dbg !456
  br label %common.ret

assert_end35:                                     ; preds = %assert_end33
  %83 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack.p1.shape, i64 2, !dbg !456
  %84 = load i64, ptr %83, align 8, !dbg !456, !tbaa !509
  %85 = and i64 %84, 4294967295, !dbg !456
  %86 = icmp eq i64 %85, 8, !dbg !456
  br i1 %86, label %assert_end37, label %assert_fail36, !dbg !456, !prof !18

assert_fail36:                                    ; preds = %assert_end35
  %87 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %87(ptr nonnull @.str.137), !dbg !456
  br label %common.ret

assert_end37:                                     ; preds = %assert_end35
  %.not71 = icmp eq ptr %tvmgen_default_fused_nn_contrib_dense_pack.p1.strides, null, !dbg !456
  br i1 %.not71, label %if_end39, label %if_then38, !dbg !456, !prof !52

if_then38:                                        ; preds = %assert_end37
  %88 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack.p1.strides, align 8, !dbg !456, !tbaa !512
  %89 = and i64 %88, 4294967295, !dbg !456
  %90 = icmp eq i64 %89, 6144, !dbg !456
  %91 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack.p1.strides, i64 1, !dbg !456
  %92 = load i64, ptr %91, align 8, !dbg !456, !tbaa !522
  %93 = and i64 %92, 4294967295, !dbg !456
  %94 = icmp eq i64 %93, 8, !dbg !456
  %95 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack.p1.strides, i64 2, !dbg !456
  %96 = load i64, ptr %95, align 8, !dbg !456, !tbaa !524
  %97 = and i64 %96, 4294967295, !dbg !456
  %98 = icmp eq i64 %97, 1, !dbg !456
  %99 = and i1 %94, %98, !dbg !456
  %100 = and i1 %90, %99, !dbg !456
  br i1 %100, label %if_end39, label %assert_fail40, !dbg !456, !prof !18

if_end39:                                         ; preds = %if_then38, %assert_end37
  %101 = getelementptr inbounds %1, ptr %p1, i64 0, i32 6, !dbg !456
  %102 = load i64, ptr %101, align 8, !dbg !456
  %103 = icmp eq i64 %102, 0, !dbg !456
  br i1 %103, label %assert_end43, label %assert_fail42, !dbg !456, !prof !18

assert_fail40:                                    ; preds = %if_then38
  %104 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %104(ptr nonnull @.str.138), !dbg !456
  br label %common.ret

assert_fail42:                                    ; preds = %if_end39
  %105 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %105(ptr nonnull @.str.139), !dbg !456
  br label %common.ret

assert_end43:                                     ; preds = %if_end39
  %106 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 0, !dbg !456
  %107 = load i32, ptr %106, align 4, !dbg !456
  %108 = icmp eq i32 %107, 1, !dbg !456
  br i1 %108, label %assert_end45, label %assert_fail44, !dbg !456, !prof !18

assert_fail44:                                    ; preds = %assert_end43
  %109 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %109(ptr nonnull @.str.140), !dbg !456
  br label %common.ret

assert_end45:                                     ; preds = %assert_end43
  %110 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 1, !dbg !456
  %111 = load i32, ptr %110, align 4, !dbg !456
  %112 = icmp eq i32 %dev_id, %111, !dbg !456
  br i1 %112, label %assert_end47, label %assert_fail46, !dbg !456, !prof !18

assert_fail46:                                    ; preds = %assert_end45
  %113 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %113(ptr nonnull @.str.141), !dbg !456
  br label %common.ret

assert_end47:                                     ; preds = %assert_end45
  %114 = getelementptr inbounds %1, ptr %compute, i64 0, i32 2, !dbg !456
  %115 = load i32, ptr %114, align 4, !dbg !456
  %116 = icmp eq i32 %115, 2, !dbg !456
  br i1 %116, label %assert_end51, label %assert_fail48, !dbg !456, !prof !18

assert_fail48:                                    ; preds = %assert_end47
  %117 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %117(ptr nonnull @.str.142), !dbg !456
  br label %common.ret

assert_end51:                                     ; preds = %assert_end47
  %118 = getelementptr inbounds %1, ptr %compute, i64 0, i32 3, i32 2, !dbg !456
  %119 = load i16, ptr %118, align 2, !dbg !456
  %120 = icmp eq i16 %119, 1, !dbg !456
  %121 = getelementptr inbounds %1, ptr %compute, i64 0, i32 3, i32 1, !dbg !456
  %122 = load i8, ptr %121, align 1, !dbg !456
  %123 = icmp eq i8 %122, 32, !dbg !456
  %124 = getelementptr inbounds %1, ptr %compute, i64 0, i32 3, i32 0, !dbg !456
  %125 = load i8, ptr %124, align 1, !dbg !456
  %126 = icmp eq i8 %125, 2, !dbg !456
  %127 = and i1 %123, %126, !dbg !456
  %128 = and i1 %120, %127, !dbg !456
  br i1 %128, label %assert_end53, label %assert_fail52, !dbg !456, !prof !18

assert_fail52:                                    ; preds = %assert_end51
  %129 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %129(ptr nonnull @.str.143), !dbg !456
  br label %common.ret

assert_end53:                                     ; preds = %assert_end51
  %130 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack.compute.shape, align 8, !dbg !456, !tbaa !527
  %131 = and i64 %130, 4294967295, !dbg !456
  %132 = icmp eq i64 %131, 5, !dbg !456
  br i1 %132, label %assert_end55, label %assert_fail54, !dbg !456, !prof !18

assert_fail54:                                    ; preds = %assert_end53
  %133 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %133(ptr nonnull @.str.144), !dbg !456
  br label %common.ret

assert_end55:                                     ; preds = %assert_end53
  %134 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack.compute.shape, i64 1, !dbg !456
  %135 = load i64, ptr %134, align 8, !dbg !456, !tbaa !537
  %136 = and i64 %135, 4294967295, !dbg !456
  %137 = icmp eq i64 %136, 768, !dbg !456
  br i1 %137, label %assert_end57, label %assert_fail56, !dbg !456, !prof !18

assert_fail56:                                    ; preds = %assert_end55
  %138 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %138(ptr nonnull @.str.145), !dbg !456
  br label %common.ret

assert_end57:                                     ; preds = %assert_end55
  %.not72 = icmp eq ptr %tvmgen_default_fused_nn_contrib_dense_pack.compute.strides, null, !dbg !456
  br i1 %.not72, label %if_end59, label %if_then58, !dbg !456, !prof !52

if_then58:                                        ; preds = %assert_end57
  %139 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack.compute.strides, align 8, !dbg !456, !tbaa !539
  %140 = and i64 %139, 4294967295, !dbg !456
  %141 = icmp eq i64 %140, 768, !dbg !456
  %142 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack.compute.strides, i64 1, !dbg !456
  %143 = load i64, ptr %142, align 8, !dbg !456, !tbaa !549
  %144 = and i64 %143, 4294967295, !dbg !456
  %145 = icmp eq i64 %144, 1, !dbg !456
  %146 = and i1 %141, %145, !dbg !456
  br i1 %146, label %if_end59, label %assert_fail60, !dbg !456, !prof !18

if_end59:                                         ; preds = %if_then58, %assert_end57
  %147 = getelementptr inbounds %1, ptr %compute, i64 0, i32 6, !dbg !456
  %148 = load i64, ptr %147, align 8, !dbg !456
  %149 = icmp eq i64 %148, 0, !dbg !456
  br i1 %149, label %assert_end63, label %assert_fail62, !dbg !456, !prof !18

assert_fail60:                                    ; preds = %if_then58
  %150 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %150(ptr nonnull @.str.146), !dbg !456
  br label %common.ret

assert_fail62:                                    ; preds = %if_end59
  %151 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %151(ptr nonnull @.str.147), !dbg !456
  br label %common.ret

assert_end63:                                     ; preds = %if_end59
  %152 = getelementptr inbounds %1, ptr %compute, i64 0, i32 1, i32 0, !dbg !456
  %153 = load i32, ptr %152, align 4, !dbg !456
  %154 = icmp eq i32 %153, 1, !dbg !456
  br i1 %154, label %assert_end65, label %assert_fail64, !dbg !456, !prof !18

assert_fail64:                                    ; preds = %assert_end63
  %155 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %155(ptr nonnull @.str.148), !dbg !456
  br label %common.ret

assert_end65:                                     ; preds = %assert_end63
  %156 = getelementptr inbounds %1, ptr %compute, i64 0, i32 1, i32 1, !dbg !456
  %157 = load i32, ptr %156, align 4, !dbg !456
  %158 = icmp eq i32 %dev_id, %157, !dbg !456
  br i1 %158, label %assert_end67, label %assert_fail66, !dbg !456, !prof !18

assert_fail66:                                    ; preds = %assert_end65
  %159 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !456, !tbaa !19
  tail call void %159(ptr nonnull @.str.149), !dbg !456
  br label %common.ret

assert_end67:                                     ; preds = %assert_end65
  %160 = tail call fastcc i32 @tvmgen_default_fused_nn_contrib_dense_pack_compute_(ptr %p068, ptr %p169, ptr %compute70), !dbg !456
  br label %common.ret
}

define dllexport i32 @tvmgen_default_fused_nn_contrib_dense_pack_1(ptr noalias nocapture readonly %args, ptr noalias nocapture readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !551 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !553, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !554, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !555, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !556, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !557, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !558, metadata !DIExpression()), !dbg !559
  %0 = icmp eq i32 %num_args, 3, !dbg !559
  br i1 %0, label %assert_end, label %assert_fail, !dbg !559, !prof !18

common.ret:                                       ; preds = %assert_end67, %assert_fail66, %assert_fail64, %assert_fail62, %assert_fail60, %assert_fail56, %assert_fail54, %assert_fail52, %assert_fail48, %assert_fail46, %assert_fail44, %assert_fail42, %assert_fail40, %assert_fail36, %assert_fail34, %assert_fail32, %assert_fail30, %assert_fail26, %assert_fail24, %assert_fail22, %assert_fail20, %assert_fail18, %assert_fail16, %assert_fail14, %assert_fail10, %assert_fail8, %assert_fail6, %assert_fail4, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail4 ], [ -1, %assert_fail6 ], [ -1, %assert_fail8 ], [ -1, %assert_fail10 ], [ -1, %assert_fail14 ], [ -1, %assert_fail16 ], [ -1, %assert_fail18 ], [ -1, %assert_fail20 ], [ -1, %assert_fail22 ], [ -1, %assert_fail24 ], [ -1, %assert_fail26 ], [ -1, %assert_fail30 ], [ -1, %assert_fail32 ], [ -1, %assert_fail34 ], [ -1, %assert_fail36 ], [ -1, %assert_fail40 ], [ -1, %assert_fail42 ], [ -1, %assert_fail44 ], [ -1, %assert_fail46 ], [ -1, %assert_fail48 ], [ -1, %assert_fail52 ], [ -1, %assert_fail54 ], [ -1, %assert_fail56 ], [ -1, %assert_fail60 ], [ -1, %assert_fail62 ], [ -1, %assert_fail64 ], [ -1, %assert_fail66 ], [ %160, %assert_end67 ]
  ret i32 %common.ret.op, !dbg !559

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %1(ptr nonnull @.str.151), !dbg !559
  br label %common.ret

assert_end:                                       ; preds = %entry
  %p0.code = load i32, ptr %arg_type_ids, align 4, !dbg !559, !tbaa !560
  %2 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !559
  %p1.code = load i32, ptr %2, align 4, !dbg !559, !tbaa !571
  %3 = getelementptr inbounds i32, ptr %arg_type_ids, i64 2, !dbg !559
  %compute.code = load i32, ptr %3, align 4, !dbg !559, !tbaa !573
  %p0 = load ptr, ptr %args, align 8, !dbg !559
  %4 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !559
  %p1 = load ptr, ptr %4, align 8, !dbg !559
  %5 = getelementptr inbounds %0, ptr %args, i64 2, !dbg !559
  %compute = load ptr, ptr %5, align 8, !dbg !559
  %p068 = load ptr, ptr %p0, align 8, !dbg !559
  call void @llvm.assume(i1 true) [ "align"(ptr %p068, i64 64) ], !dbg !559
  %6 = getelementptr inbounds %1, ptr %p0, i64 0, i32 4, !dbg !559
  %tvmgen_default_fused_nn_contrib_dense_pack_1.p0.shape = load ptr, ptr %6, align 8, !dbg !559
  %7 = getelementptr inbounds %1, ptr %p0, i64 0, i32 5, !dbg !559
  %tvmgen_default_fused_nn_contrib_dense_pack_1.p0.strides = load ptr, ptr %7, align 8, !dbg !559
  %8 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 1, !dbg !559
  %dev_id = load i32, ptr %8, align 4, !dbg !559
  %p169 = load ptr, ptr %p1, align 8, !dbg !559
  call void @llvm.assume(i1 true) [ "align"(ptr %p169, i64 64) ], !dbg !559
  %9 = getelementptr inbounds %1, ptr %p1, i64 0, i32 4, !dbg !559
  %tvmgen_default_fused_nn_contrib_dense_pack_1.p1.shape = load ptr, ptr %9, align 8, !dbg !559
  %10 = getelementptr inbounds %1, ptr %p1, i64 0, i32 5, !dbg !559
  %tvmgen_default_fused_nn_contrib_dense_pack_1.p1.strides = load ptr, ptr %10, align 8, !dbg !559
  %compute70 = load ptr, ptr %compute, align 8, !dbg !559
  call void @llvm.assume(i1 true) [ "align"(ptr %compute70, i64 64) ], !dbg !559
  %11 = getelementptr inbounds %1, ptr %compute, i64 0, i32 4, !dbg !559
  %tvmgen_default_fused_nn_contrib_dense_pack_1.compute.shape = load ptr, ptr %11, align 8, !dbg !559
  %12 = getelementptr inbounds %1, ptr %compute, i64 0, i32 5, !dbg !559
  %tvmgen_default_fused_nn_contrib_dense_pack_1.compute.strides = load ptr, ptr %12, align 8, !dbg !559
  switch i32 %p0.code, label %assert_fail4 [
    i32 13, label %assert_end5
    i32 7, label %assert_end5
    i32 4, label %assert_end5
    i32 3, label %assert_end5
  ], !dbg !559

assert_fail4:                                     ; preds = %assert_end
  %13 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %13(ptr nonnull @.str.152), !dbg !559
  br label %common.ret

assert_end5:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %p1.code, label %assert_fail6 [
    i32 13, label %assert_end7
    i32 7, label %assert_end7
    i32 4, label %assert_end7
    i32 3, label %assert_end7
  ], !dbg !559

assert_fail6:                                     ; preds = %assert_end5
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %14(ptr nonnull @.str.153), !dbg !559
  br label %common.ret

assert_end7:                                      ; preds = %assert_end5, %assert_end5, %assert_end5, %assert_end5
  switch i32 %compute.code, label %assert_fail8 [
    i32 13, label %assert_end9
    i32 7, label %assert_end9
    i32 4, label %assert_end9
    i32 3, label %assert_end9
  ], !dbg !559

assert_fail8:                                     ; preds = %assert_end7
  %15 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %15(ptr nonnull @.str.154), !dbg !559
  br label %common.ret

assert_end9:                                      ; preds = %assert_end7, %assert_end7, %assert_end7, %assert_end7
  %16 = getelementptr inbounds %1, ptr %p0, i64 0, i32 2, !dbg !559
  %17 = load i32, ptr %16, align 4, !dbg !559
  %18 = icmp eq i32 %17, 2, !dbg !559
  br i1 %18, label %assert_end13, label %assert_fail10, !dbg !559, !prof !18

assert_fail10:                                    ; preds = %assert_end9
  %19 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %19(ptr nonnull @.str.155), !dbg !559
  br label %common.ret

assert_end13:                                     ; preds = %assert_end9
  %20 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 2, !dbg !559
  %21 = load i16, ptr %20, align 2, !dbg !559
  %22 = icmp eq i16 %21, 1, !dbg !559
  %23 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 1, !dbg !559
  %24 = load i8, ptr %23, align 1, !dbg !559
  %25 = icmp eq i8 %24, 32, !dbg !559
  %26 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 0, !dbg !559
  %27 = load i8, ptr %26, align 1, !dbg !559
  %28 = icmp eq i8 %27, 2, !dbg !559
  %29 = and i1 %25, %28, !dbg !559
  %30 = and i1 %22, %29, !dbg !559
  br i1 %30, label %assert_end15, label %assert_fail14, !dbg !559, !prof !18

assert_fail14:                                    ; preds = %assert_end13
  %31 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %31(ptr nonnull @.str.156), !dbg !559
  br label %common.ret

assert_end15:                                     ; preds = %assert_end13
  %32 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_1.p0.shape, align 8, !dbg !559, !tbaa !576
  %33 = and i64 %32, 4294967295, !dbg !559
  %34 = icmp eq i64 %33, 5, !dbg !559
  br i1 %34, label %assert_end17, label %assert_fail16, !dbg !559, !prof !18

assert_fail16:                                    ; preds = %assert_end15
  %35 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %35(ptr nonnull @.str.157), !dbg !559
  br label %common.ret

assert_end17:                                     ; preds = %assert_end15
  %36 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_1.p0.shape, i64 1, !dbg !559
  %37 = load i64, ptr %36, align 8, !dbg !559, !tbaa !586
  %38 = and i64 %37, 4294967295, !dbg !559
  %39 = icmp eq i64 %38, 768, !dbg !559
  br i1 %39, label %assert_end19, label %assert_fail18, !dbg !559, !prof !18

assert_fail18:                                    ; preds = %assert_end17
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %40(ptr nonnull @.str.158), !dbg !559
  br label %common.ret

assert_end19:                                     ; preds = %assert_end17
  %.not = icmp eq ptr %tvmgen_default_fused_nn_contrib_dense_pack_1.p0.strides, null, !dbg !559
  br i1 %.not, label %if_end, label %if_then, !dbg !559, !prof !52

if_then:                                          ; preds = %assert_end19
  %41 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_1.p0.strides, align 8, !dbg !559, !tbaa !588
  %42 = and i64 %41, 4294967295, !dbg !559
  %43 = icmp eq i64 %42, 768, !dbg !559
  %44 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_1.p0.strides, i64 1, !dbg !559
  %45 = load i64, ptr %44, align 8, !dbg !559, !tbaa !598
  %46 = and i64 %45, 4294967295, !dbg !559
  %47 = icmp eq i64 %46, 1, !dbg !559
  %48 = and i1 %43, %47, !dbg !559
  br i1 %48, label %if_end, label %assert_fail20, !dbg !559, !prof !18

if_end:                                           ; preds = %if_then, %assert_end19
  %49 = getelementptr inbounds %1, ptr %p0, i64 0, i32 6, !dbg !559
  %50 = load i64, ptr %49, align 8, !dbg !559
  %51 = icmp eq i64 %50, 0, !dbg !559
  br i1 %51, label %assert_end23, label %assert_fail22, !dbg !559, !prof !18

assert_fail20:                                    ; preds = %if_then
  %52 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %52(ptr nonnull @.str.159), !dbg !559
  br label %common.ret

assert_fail22:                                    ; preds = %if_end
  %53 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %53(ptr nonnull @.str.160), !dbg !559
  br label %common.ret

assert_end23:                                     ; preds = %if_end
  %54 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 0, !dbg !559
  %55 = load i32, ptr %54, align 4, !dbg !559
  %56 = icmp eq i32 %55, 1, !dbg !559
  br i1 %56, label %assert_end25, label %assert_fail24, !dbg !559, !prof !18

assert_fail24:                                    ; preds = %assert_end23
  %57 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %57(ptr nonnull @.str.161), !dbg !559
  br label %common.ret

assert_end25:                                     ; preds = %assert_end23
  %58 = getelementptr inbounds %1, ptr %p1, i64 0, i32 2, !dbg !559
  %59 = load i32, ptr %58, align 4, !dbg !559
  %60 = icmp eq i32 %59, 3, !dbg !559
  br i1 %60, label %assert_end29, label %assert_fail26, !dbg !559, !prof !18

assert_fail26:                                    ; preds = %assert_end25
  %61 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %61(ptr nonnull @.str.162), !dbg !559
  br label %common.ret

assert_end29:                                     ; preds = %assert_end25
  %62 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 2, !dbg !559
  %63 = load i16, ptr %62, align 2, !dbg !559
  %64 = icmp eq i16 %63, 1, !dbg !559
  %65 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 1, !dbg !559
  %66 = load i8, ptr %65, align 1, !dbg !559
  %67 = icmp eq i8 %66, 32, !dbg !559
  %68 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 0, !dbg !559
  %69 = load i8, ptr %68, align 1, !dbg !559
  %70 = icmp eq i8 %69, 2, !dbg !559
  %71 = and i1 %67, %70, !dbg !559
  %72 = and i1 %64, %71, !dbg !559
  br i1 %72, label %assert_end31, label %assert_fail30, !dbg !559, !prof !18

assert_fail30:                                    ; preds = %assert_end29
  %73 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %73(ptr nonnull @.str.163), !dbg !559
  br label %common.ret

assert_end31:                                     ; preds = %assert_end29
  %74 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_1.p1.shape, align 8, !dbg !559, !tbaa !600
  %75 = and i64 %74, 4294967295, !dbg !559
  %76 = icmp eq i64 %75, 384, !dbg !559
  br i1 %76, label %assert_end33, label %assert_fail32, !dbg !559, !prof !18

assert_fail32:                                    ; preds = %assert_end31
  %77 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %77(ptr nonnull @.str.164), !dbg !559
  br label %common.ret

assert_end33:                                     ; preds = %assert_end31
  %78 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_1.p1.shape, i64 1, !dbg !559
  %79 = load i64, ptr %78, align 8, !dbg !559, !tbaa !610
  %80 = and i64 %79, 4294967295, !dbg !559
  %81 = icmp eq i64 %80, 768, !dbg !559
  br i1 %81, label %assert_end35, label %assert_fail34, !dbg !559, !prof !18

assert_fail34:                                    ; preds = %assert_end33
  %82 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %82(ptr nonnull @.str.165), !dbg !559
  br label %common.ret

assert_end35:                                     ; preds = %assert_end33
  %83 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_1.p1.shape, i64 2, !dbg !559
  %84 = load i64, ptr %83, align 8, !dbg !559, !tbaa !612
  %85 = and i64 %84, 4294967295, !dbg !559
  %86 = icmp eq i64 %85, 8, !dbg !559
  br i1 %86, label %assert_end37, label %assert_fail36, !dbg !559, !prof !18

assert_fail36:                                    ; preds = %assert_end35
  %87 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %87(ptr nonnull @.str.166), !dbg !559
  br label %common.ret

assert_end37:                                     ; preds = %assert_end35
  %.not71 = icmp eq ptr %tvmgen_default_fused_nn_contrib_dense_pack_1.p1.strides, null, !dbg !559
  br i1 %.not71, label %if_end39, label %if_then38, !dbg !559, !prof !52

if_then38:                                        ; preds = %assert_end37
  %88 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_1.p1.strides, align 8, !dbg !559, !tbaa !615
  %89 = and i64 %88, 4294967295, !dbg !559
  %90 = icmp eq i64 %89, 6144, !dbg !559
  %91 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_1.p1.strides, i64 1, !dbg !559
  %92 = load i64, ptr %91, align 8, !dbg !559, !tbaa !625
  %93 = and i64 %92, 4294967295, !dbg !559
  %94 = icmp eq i64 %93, 8, !dbg !559
  %95 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_1.p1.strides, i64 2, !dbg !559
  %96 = load i64, ptr %95, align 8, !dbg !559, !tbaa !627
  %97 = and i64 %96, 4294967295, !dbg !559
  %98 = icmp eq i64 %97, 1, !dbg !559
  %99 = and i1 %94, %98, !dbg !559
  %100 = and i1 %90, %99, !dbg !559
  br i1 %100, label %if_end39, label %assert_fail40, !dbg !559, !prof !18

if_end39:                                         ; preds = %if_then38, %assert_end37
  %101 = getelementptr inbounds %1, ptr %p1, i64 0, i32 6, !dbg !559
  %102 = load i64, ptr %101, align 8, !dbg !559
  %103 = icmp eq i64 %102, 0, !dbg !559
  br i1 %103, label %assert_end43, label %assert_fail42, !dbg !559, !prof !18

assert_fail40:                                    ; preds = %if_then38
  %104 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %104(ptr nonnull @.str.167), !dbg !559
  br label %common.ret

assert_fail42:                                    ; preds = %if_end39
  %105 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %105(ptr nonnull @.str.168), !dbg !559
  br label %common.ret

assert_end43:                                     ; preds = %if_end39
  %106 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 0, !dbg !559
  %107 = load i32, ptr %106, align 4, !dbg !559
  %108 = icmp eq i32 %107, 1, !dbg !559
  br i1 %108, label %assert_end45, label %assert_fail44, !dbg !559, !prof !18

assert_fail44:                                    ; preds = %assert_end43
  %109 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %109(ptr nonnull @.str.169), !dbg !559
  br label %common.ret

assert_end45:                                     ; preds = %assert_end43
  %110 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 1, !dbg !559
  %111 = load i32, ptr %110, align 4, !dbg !559
  %112 = icmp eq i32 %dev_id, %111, !dbg !559
  br i1 %112, label %assert_end47, label %assert_fail46, !dbg !559, !prof !18

assert_fail46:                                    ; preds = %assert_end45
  %113 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %113(ptr nonnull @.str.170), !dbg !559
  br label %common.ret

assert_end47:                                     ; preds = %assert_end45
  %114 = getelementptr inbounds %1, ptr %compute, i64 0, i32 2, !dbg !559
  %115 = load i32, ptr %114, align 4, !dbg !559
  %116 = icmp eq i32 %115, 2, !dbg !559
  br i1 %116, label %assert_end51, label %assert_fail48, !dbg !559, !prof !18

assert_fail48:                                    ; preds = %assert_end47
  %117 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %117(ptr nonnull @.str.171), !dbg !559
  br label %common.ret

assert_end51:                                     ; preds = %assert_end47
  %118 = getelementptr inbounds %1, ptr %compute, i64 0, i32 3, i32 2, !dbg !559
  %119 = load i16, ptr %118, align 2, !dbg !559
  %120 = icmp eq i16 %119, 1, !dbg !559
  %121 = getelementptr inbounds %1, ptr %compute, i64 0, i32 3, i32 1, !dbg !559
  %122 = load i8, ptr %121, align 1, !dbg !559
  %123 = icmp eq i8 %122, 32, !dbg !559
  %124 = getelementptr inbounds %1, ptr %compute, i64 0, i32 3, i32 0, !dbg !559
  %125 = load i8, ptr %124, align 1, !dbg !559
  %126 = icmp eq i8 %125, 2, !dbg !559
  %127 = and i1 %123, %126, !dbg !559
  %128 = and i1 %120, %127, !dbg !559
  br i1 %128, label %assert_end53, label %assert_fail52, !dbg !559, !prof !18

assert_fail52:                                    ; preds = %assert_end51
  %129 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %129(ptr nonnull @.str.172), !dbg !559
  br label %common.ret

assert_end53:                                     ; preds = %assert_end51
  %130 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_1.compute.shape, align 8, !dbg !559, !tbaa !630
  %131 = and i64 %130, 4294967295, !dbg !559
  %132 = icmp eq i64 %131, 5, !dbg !559
  br i1 %132, label %assert_end55, label %assert_fail54, !dbg !559, !prof !18

assert_fail54:                                    ; preds = %assert_end53
  %133 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %133(ptr nonnull @.str.173), !dbg !559
  br label %common.ret

assert_end55:                                     ; preds = %assert_end53
  %134 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_1.compute.shape, i64 1, !dbg !559
  %135 = load i64, ptr %134, align 8, !dbg !559, !tbaa !640
  %136 = and i64 %135, 4294967295, !dbg !559
  %137 = icmp eq i64 %136, 3072, !dbg !559
  br i1 %137, label %assert_end57, label %assert_fail56, !dbg !559, !prof !18

assert_fail56:                                    ; preds = %assert_end55
  %138 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %138(ptr nonnull @.str.174), !dbg !559
  br label %common.ret

assert_end57:                                     ; preds = %assert_end55
  %.not72 = icmp eq ptr %tvmgen_default_fused_nn_contrib_dense_pack_1.compute.strides, null, !dbg !559
  br i1 %.not72, label %if_end59, label %if_then58, !dbg !559, !prof !52

if_then58:                                        ; preds = %assert_end57
  %139 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_1.compute.strides, align 8, !dbg !559, !tbaa !642
  %140 = and i64 %139, 4294967295, !dbg !559
  %141 = icmp eq i64 %140, 3072, !dbg !559
  %142 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_1.compute.strides, i64 1, !dbg !559
  %143 = load i64, ptr %142, align 8, !dbg !559, !tbaa !652
  %144 = and i64 %143, 4294967295, !dbg !559
  %145 = icmp eq i64 %144, 1, !dbg !559
  %146 = and i1 %141, %145, !dbg !559
  br i1 %146, label %if_end59, label %assert_fail60, !dbg !559, !prof !18

if_end59:                                         ; preds = %if_then58, %assert_end57
  %147 = getelementptr inbounds %1, ptr %compute, i64 0, i32 6, !dbg !559
  %148 = load i64, ptr %147, align 8, !dbg !559
  %149 = icmp eq i64 %148, 0, !dbg !559
  br i1 %149, label %assert_end63, label %assert_fail62, !dbg !559, !prof !18

assert_fail60:                                    ; preds = %if_then58
  %150 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %150(ptr nonnull @.str.175), !dbg !559
  br label %common.ret

assert_fail62:                                    ; preds = %if_end59
  %151 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %151(ptr nonnull @.str.176), !dbg !559
  br label %common.ret

assert_end63:                                     ; preds = %if_end59
  %152 = getelementptr inbounds %1, ptr %compute, i64 0, i32 1, i32 0, !dbg !559
  %153 = load i32, ptr %152, align 4, !dbg !559
  %154 = icmp eq i32 %153, 1, !dbg !559
  br i1 %154, label %assert_end65, label %assert_fail64, !dbg !559, !prof !18

assert_fail64:                                    ; preds = %assert_end63
  %155 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %155(ptr nonnull @.str.177), !dbg !559
  br label %common.ret

assert_end65:                                     ; preds = %assert_end63
  %156 = getelementptr inbounds %1, ptr %compute, i64 0, i32 1, i32 1, !dbg !559
  %157 = load i32, ptr %156, align 4, !dbg !559
  %158 = icmp eq i32 %dev_id, %157, !dbg !559
  br i1 %158, label %assert_end67, label %assert_fail66, !dbg !559, !prof !18

assert_fail66:                                    ; preds = %assert_end65
  %159 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !559, !tbaa !19
  tail call void %159(ptr nonnull @.str.178), !dbg !559
  br label %common.ret

assert_end67:                                     ; preds = %assert_end65
  %160 = tail call fastcc i32 @tvmgen_default_fused_nn_contrib_dense_pack_1_compute_(ptr %p068, ptr %p169, ptr %compute70), !dbg !559
  br label %common.ret
}

define dllexport i32 @tvmgen_default_fused_nn_contrib_dense_pack_2(ptr noalias nocapture readonly %args, ptr noalias nocapture readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !654 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !656, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !657, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !658, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !659, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !660, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !661, metadata !DIExpression()), !dbg !662
  %0 = icmp eq i32 %num_args, 3, !dbg !662
  br i1 %0, label %assert_end, label %assert_fail, !dbg !662, !prof !18

common.ret:                                       ; preds = %assert_end67, %assert_fail66, %assert_fail64, %assert_fail62, %assert_fail60, %assert_fail56, %assert_fail54, %assert_fail52, %assert_fail48, %assert_fail46, %assert_fail44, %assert_fail42, %assert_fail40, %assert_fail36, %assert_fail34, %assert_fail32, %assert_fail30, %assert_fail26, %assert_fail24, %assert_fail22, %assert_fail20, %assert_fail18, %assert_fail16, %assert_fail14, %assert_fail10, %assert_fail8, %assert_fail6, %assert_fail4, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail4 ], [ -1, %assert_fail6 ], [ -1, %assert_fail8 ], [ -1, %assert_fail10 ], [ -1, %assert_fail14 ], [ -1, %assert_fail16 ], [ -1, %assert_fail18 ], [ -1, %assert_fail20 ], [ -1, %assert_fail22 ], [ -1, %assert_fail24 ], [ -1, %assert_fail26 ], [ -1, %assert_fail30 ], [ -1, %assert_fail32 ], [ -1, %assert_fail34 ], [ -1, %assert_fail36 ], [ -1, %assert_fail40 ], [ -1, %assert_fail42 ], [ -1, %assert_fail44 ], [ -1, %assert_fail46 ], [ -1, %assert_fail48 ], [ -1, %assert_fail52 ], [ -1, %assert_fail54 ], [ -1, %assert_fail56 ], [ -1, %assert_fail60 ], [ -1, %assert_fail62 ], [ -1, %assert_fail64 ], [ -1, %assert_fail66 ], [ %160, %assert_end67 ]
  ret i32 %common.ret.op, !dbg !662

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %1(ptr nonnull @.str.180), !dbg !662
  br label %common.ret

assert_end:                                       ; preds = %entry
  %p0.code = load i32, ptr %arg_type_ids, align 4, !dbg !662, !tbaa !663
  %2 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !662
  %p1.code = load i32, ptr %2, align 4, !dbg !662, !tbaa !674
  %3 = getelementptr inbounds i32, ptr %arg_type_ids, i64 2, !dbg !662
  %compute.code = load i32, ptr %3, align 4, !dbg !662, !tbaa !676
  %p0 = load ptr, ptr %args, align 8, !dbg !662
  %4 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !662
  %p1 = load ptr, ptr %4, align 8, !dbg !662
  %5 = getelementptr inbounds %0, ptr %args, i64 2, !dbg !662
  %compute = load ptr, ptr %5, align 8, !dbg !662
  %p068 = load ptr, ptr %p0, align 8, !dbg !662
  call void @llvm.assume(i1 true) [ "align"(ptr %p068, i64 64) ], !dbg !662
  %6 = getelementptr inbounds %1, ptr %p0, i64 0, i32 4, !dbg !662
  %tvmgen_default_fused_nn_contrib_dense_pack_2.p0.shape = load ptr, ptr %6, align 8, !dbg !662
  %7 = getelementptr inbounds %1, ptr %p0, i64 0, i32 5, !dbg !662
  %tvmgen_default_fused_nn_contrib_dense_pack_2.p0.strides = load ptr, ptr %7, align 8, !dbg !662
  %8 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 1, !dbg !662
  %dev_id = load i32, ptr %8, align 4, !dbg !662
  %p169 = load ptr, ptr %p1, align 8, !dbg !662
  call void @llvm.assume(i1 true) [ "align"(ptr %p169, i64 64) ], !dbg !662
  %9 = getelementptr inbounds %1, ptr %p1, i64 0, i32 4, !dbg !662
  %tvmgen_default_fused_nn_contrib_dense_pack_2.p1.shape = load ptr, ptr %9, align 8, !dbg !662
  %10 = getelementptr inbounds %1, ptr %p1, i64 0, i32 5, !dbg !662
  %tvmgen_default_fused_nn_contrib_dense_pack_2.p1.strides = load ptr, ptr %10, align 8, !dbg !662
  %compute70 = load ptr, ptr %compute, align 8, !dbg !662
  call void @llvm.assume(i1 true) [ "align"(ptr %compute70, i64 64) ], !dbg !662
  %11 = getelementptr inbounds %1, ptr %compute, i64 0, i32 4, !dbg !662
  %tvmgen_default_fused_nn_contrib_dense_pack_2.compute.shape = load ptr, ptr %11, align 8, !dbg !662
  %12 = getelementptr inbounds %1, ptr %compute, i64 0, i32 5, !dbg !662
  %tvmgen_default_fused_nn_contrib_dense_pack_2.compute.strides = load ptr, ptr %12, align 8, !dbg !662
  switch i32 %p0.code, label %assert_fail4 [
    i32 13, label %assert_end5
    i32 7, label %assert_end5
    i32 4, label %assert_end5
    i32 3, label %assert_end5
  ], !dbg !662

assert_fail4:                                     ; preds = %assert_end
  %13 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %13(ptr nonnull @.str.181), !dbg !662
  br label %common.ret

assert_end5:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %p1.code, label %assert_fail6 [
    i32 13, label %assert_end7
    i32 7, label %assert_end7
    i32 4, label %assert_end7
    i32 3, label %assert_end7
  ], !dbg !662

assert_fail6:                                     ; preds = %assert_end5
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %14(ptr nonnull @.str.182), !dbg !662
  br label %common.ret

assert_end7:                                      ; preds = %assert_end5, %assert_end5, %assert_end5, %assert_end5
  switch i32 %compute.code, label %assert_fail8 [
    i32 13, label %assert_end9
    i32 7, label %assert_end9
    i32 4, label %assert_end9
    i32 3, label %assert_end9
  ], !dbg !662

assert_fail8:                                     ; preds = %assert_end7
  %15 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %15(ptr nonnull @.str.183), !dbg !662
  br label %common.ret

assert_end9:                                      ; preds = %assert_end7, %assert_end7, %assert_end7, %assert_end7
  %16 = getelementptr inbounds %1, ptr %p0, i64 0, i32 2, !dbg !662
  %17 = load i32, ptr %16, align 4, !dbg !662
  %18 = icmp eq i32 %17, 2, !dbg !662
  br i1 %18, label %assert_end13, label %assert_fail10, !dbg !662, !prof !18

assert_fail10:                                    ; preds = %assert_end9
  %19 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %19(ptr nonnull @.str.184), !dbg !662
  br label %common.ret

assert_end13:                                     ; preds = %assert_end9
  %20 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 2, !dbg !662
  %21 = load i16, ptr %20, align 2, !dbg !662
  %22 = icmp eq i16 %21, 1, !dbg !662
  %23 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 1, !dbg !662
  %24 = load i8, ptr %23, align 1, !dbg !662
  %25 = icmp eq i8 %24, 32, !dbg !662
  %26 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 0, !dbg !662
  %27 = load i8, ptr %26, align 1, !dbg !662
  %28 = icmp eq i8 %27, 2, !dbg !662
  %29 = and i1 %25, %28, !dbg !662
  %30 = and i1 %22, %29, !dbg !662
  br i1 %30, label %assert_end15, label %assert_fail14, !dbg !662, !prof !18

assert_fail14:                                    ; preds = %assert_end13
  %31 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %31(ptr nonnull @.str.185), !dbg !662
  br label %common.ret

assert_end15:                                     ; preds = %assert_end13
  %32 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_2.p0.shape, align 8, !dbg !662, !tbaa !679
  %33 = and i64 %32, 4294967295, !dbg !662
  %34 = icmp eq i64 %33, 5, !dbg !662
  br i1 %34, label %assert_end17, label %assert_fail16, !dbg !662, !prof !18

assert_fail16:                                    ; preds = %assert_end15
  %35 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %35(ptr nonnull @.str.186), !dbg !662
  br label %common.ret

assert_end17:                                     ; preds = %assert_end15
  %36 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_2.p0.shape, i64 1, !dbg !662
  %37 = load i64, ptr %36, align 8, !dbg !662, !tbaa !689
  %38 = and i64 %37, 4294967295, !dbg !662
  %39 = icmp eq i64 %38, 3072, !dbg !662
  br i1 %39, label %assert_end19, label %assert_fail18, !dbg !662, !prof !18

assert_fail18:                                    ; preds = %assert_end17
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %40(ptr nonnull @.str.187), !dbg !662
  br label %common.ret

assert_end19:                                     ; preds = %assert_end17
  %.not = icmp eq ptr %tvmgen_default_fused_nn_contrib_dense_pack_2.p0.strides, null, !dbg !662
  br i1 %.not, label %if_end, label %if_then, !dbg !662, !prof !52

if_then:                                          ; preds = %assert_end19
  %41 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_2.p0.strides, align 8, !dbg !662, !tbaa !691
  %42 = and i64 %41, 4294967295, !dbg !662
  %43 = icmp eq i64 %42, 3072, !dbg !662
  %44 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_2.p0.strides, i64 1, !dbg !662
  %45 = load i64, ptr %44, align 8, !dbg !662, !tbaa !701
  %46 = and i64 %45, 4294967295, !dbg !662
  %47 = icmp eq i64 %46, 1, !dbg !662
  %48 = and i1 %43, %47, !dbg !662
  br i1 %48, label %if_end, label %assert_fail20, !dbg !662, !prof !18

if_end:                                           ; preds = %if_then, %assert_end19
  %49 = getelementptr inbounds %1, ptr %p0, i64 0, i32 6, !dbg !662
  %50 = load i64, ptr %49, align 8, !dbg !662
  %51 = icmp eq i64 %50, 0, !dbg !662
  br i1 %51, label %assert_end23, label %assert_fail22, !dbg !662, !prof !18

assert_fail20:                                    ; preds = %if_then
  %52 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %52(ptr nonnull @.str.188), !dbg !662
  br label %common.ret

assert_fail22:                                    ; preds = %if_end
  %53 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %53(ptr nonnull @.str.189), !dbg !662
  br label %common.ret

assert_end23:                                     ; preds = %if_end
  %54 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 0, !dbg !662
  %55 = load i32, ptr %54, align 4, !dbg !662
  %56 = icmp eq i32 %55, 1, !dbg !662
  br i1 %56, label %assert_end25, label %assert_fail24, !dbg !662, !prof !18

assert_fail24:                                    ; preds = %assert_end23
  %57 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %57(ptr nonnull @.str.190), !dbg !662
  br label %common.ret

assert_end25:                                     ; preds = %assert_end23
  %58 = getelementptr inbounds %1, ptr %p1, i64 0, i32 2, !dbg !662
  %59 = load i32, ptr %58, align 4, !dbg !662
  %60 = icmp eq i32 %59, 3, !dbg !662
  br i1 %60, label %assert_end29, label %assert_fail26, !dbg !662, !prof !18

assert_fail26:                                    ; preds = %assert_end25
  %61 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %61(ptr nonnull @.str.191), !dbg !662
  br label %common.ret

assert_end29:                                     ; preds = %assert_end25
  %62 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 2, !dbg !662
  %63 = load i16, ptr %62, align 2, !dbg !662
  %64 = icmp eq i16 %63, 1, !dbg !662
  %65 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 1, !dbg !662
  %66 = load i8, ptr %65, align 1, !dbg !662
  %67 = icmp eq i8 %66, 32, !dbg !662
  %68 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 0, !dbg !662
  %69 = load i8, ptr %68, align 1, !dbg !662
  %70 = icmp eq i8 %69, 2, !dbg !662
  %71 = and i1 %67, %70, !dbg !662
  %72 = and i1 %64, %71, !dbg !662
  br i1 %72, label %assert_end31, label %assert_fail30, !dbg !662, !prof !18

assert_fail30:                                    ; preds = %assert_end29
  %73 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %73(ptr nonnull @.str.192), !dbg !662
  br label %common.ret

assert_end31:                                     ; preds = %assert_end29
  %74 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_2.p1.shape, align 8, !dbg !662, !tbaa !703
  %75 = and i64 %74, 4294967295, !dbg !662
  %76 = icmp eq i64 %75, 96, !dbg !662
  br i1 %76, label %assert_end33, label %assert_fail32, !dbg !662, !prof !18

assert_fail32:                                    ; preds = %assert_end31
  %77 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %77(ptr nonnull @.str.193), !dbg !662
  br label %common.ret

assert_end33:                                     ; preds = %assert_end31
  %78 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_2.p1.shape, i64 1, !dbg !662
  %79 = load i64, ptr %78, align 8, !dbg !662, !tbaa !713
  %80 = and i64 %79, 4294967295, !dbg !662
  %81 = icmp eq i64 %80, 3072, !dbg !662
  br i1 %81, label %assert_end35, label %assert_fail34, !dbg !662, !prof !18

assert_fail34:                                    ; preds = %assert_end33
  %82 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %82(ptr nonnull @.str.194), !dbg !662
  br label %common.ret

assert_end35:                                     ; preds = %assert_end33
  %83 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_2.p1.shape, i64 2, !dbg !662
  %84 = load i64, ptr %83, align 8, !dbg !662, !tbaa !715
  %85 = and i64 %84, 4294967295, !dbg !662
  %86 = icmp eq i64 %85, 8, !dbg !662
  br i1 %86, label %assert_end37, label %assert_fail36, !dbg !662, !prof !18

assert_fail36:                                    ; preds = %assert_end35
  %87 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %87(ptr nonnull @.str.195), !dbg !662
  br label %common.ret

assert_end37:                                     ; preds = %assert_end35
  %.not71 = icmp eq ptr %tvmgen_default_fused_nn_contrib_dense_pack_2.p1.strides, null, !dbg !662
  br i1 %.not71, label %if_end39, label %if_then38, !dbg !662, !prof !52

if_then38:                                        ; preds = %assert_end37
  %88 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_2.p1.strides, align 8, !dbg !662, !tbaa !718
  %89 = and i64 %88, 4294967295, !dbg !662
  %90 = icmp eq i64 %89, 24576, !dbg !662
  %91 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_2.p1.strides, i64 1, !dbg !662
  %92 = load i64, ptr %91, align 8, !dbg !662, !tbaa !728
  %93 = and i64 %92, 4294967295, !dbg !662
  %94 = icmp eq i64 %93, 8, !dbg !662
  %95 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_2.p1.strides, i64 2, !dbg !662
  %96 = load i64, ptr %95, align 8, !dbg !662, !tbaa !730
  %97 = and i64 %96, 4294967295, !dbg !662
  %98 = icmp eq i64 %97, 1, !dbg !662
  %99 = and i1 %94, %98, !dbg !662
  %100 = and i1 %90, %99, !dbg !662
  br i1 %100, label %if_end39, label %assert_fail40, !dbg !662, !prof !18

if_end39:                                         ; preds = %if_then38, %assert_end37
  %101 = getelementptr inbounds %1, ptr %p1, i64 0, i32 6, !dbg !662
  %102 = load i64, ptr %101, align 8, !dbg !662
  %103 = icmp eq i64 %102, 0, !dbg !662
  br i1 %103, label %assert_end43, label %assert_fail42, !dbg !662, !prof !18

assert_fail40:                                    ; preds = %if_then38
  %104 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %104(ptr nonnull @.str.196), !dbg !662
  br label %common.ret

assert_fail42:                                    ; preds = %if_end39
  %105 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %105(ptr nonnull @.str.197), !dbg !662
  br label %common.ret

assert_end43:                                     ; preds = %if_end39
  %106 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 0, !dbg !662
  %107 = load i32, ptr %106, align 4, !dbg !662
  %108 = icmp eq i32 %107, 1, !dbg !662
  br i1 %108, label %assert_end45, label %assert_fail44, !dbg !662, !prof !18

assert_fail44:                                    ; preds = %assert_end43
  %109 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %109(ptr nonnull @.str.198), !dbg !662
  br label %common.ret

assert_end45:                                     ; preds = %assert_end43
  %110 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 1, !dbg !662
  %111 = load i32, ptr %110, align 4, !dbg !662
  %112 = icmp eq i32 %dev_id, %111, !dbg !662
  br i1 %112, label %assert_end47, label %assert_fail46, !dbg !662, !prof !18

assert_fail46:                                    ; preds = %assert_end45
  %113 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %113(ptr nonnull @.str.199), !dbg !662
  br label %common.ret

assert_end47:                                     ; preds = %assert_end45
  %114 = getelementptr inbounds %1, ptr %compute, i64 0, i32 2, !dbg !662
  %115 = load i32, ptr %114, align 4, !dbg !662
  %116 = icmp eq i32 %115, 2, !dbg !662
  br i1 %116, label %assert_end51, label %assert_fail48, !dbg !662, !prof !18

assert_fail48:                                    ; preds = %assert_end47
  %117 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %117(ptr nonnull @.str.200), !dbg !662
  br label %common.ret

assert_end51:                                     ; preds = %assert_end47
  %118 = getelementptr inbounds %1, ptr %compute, i64 0, i32 3, i32 2, !dbg !662
  %119 = load i16, ptr %118, align 2, !dbg !662
  %120 = icmp eq i16 %119, 1, !dbg !662
  %121 = getelementptr inbounds %1, ptr %compute, i64 0, i32 3, i32 1, !dbg !662
  %122 = load i8, ptr %121, align 1, !dbg !662
  %123 = icmp eq i8 %122, 32, !dbg !662
  %124 = getelementptr inbounds %1, ptr %compute, i64 0, i32 3, i32 0, !dbg !662
  %125 = load i8, ptr %124, align 1, !dbg !662
  %126 = icmp eq i8 %125, 2, !dbg !662
  %127 = and i1 %123, %126, !dbg !662
  %128 = and i1 %120, %127, !dbg !662
  br i1 %128, label %assert_end53, label %assert_fail52, !dbg !662, !prof !18

assert_fail52:                                    ; preds = %assert_end51
  %129 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %129(ptr nonnull @.str.201), !dbg !662
  br label %common.ret

assert_end53:                                     ; preds = %assert_end51
  %130 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_2.compute.shape, align 8, !dbg !662, !tbaa !733
  %131 = and i64 %130, 4294967295, !dbg !662
  %132 = icmp eq i64 %131, 5, !dbg !662
  br i1 %132, label %assert_end55, label %assert_fail54, !dbg !662, !prof !18

assert_fail54:                                    ; preds = %assert_end53
  %133 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %133(ptr nonnull @.str.202), !dbg !662
  br label %common.ret

assert_end55:                                     ; preds = %assert_end53
  %134 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_2.compute.shape, i64 1, !dbg !662
  %135 = load i64, ptr %134, align 8, !dbg !662, !tbaa !743
  %136 = and i64 %135, 4294967295, !dbg !662
  %137 = icmp eq i64 %136, 768, !dbg !662
  br i1 %137, label %assert_end57, label %assert_fail56, !dbg !662, !prof !18

assert_fail56:                                    ; preds = %assert_end55
  %138 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %138(ptr nonnull @.str.203), !dbg !662
  br label %common.ret

assert_end57:                                     ; preds = %assert_end55
  %.not72 = icmp eq ptr %tvmgen_default_fused_nn_contrib_dense_pack_2.compute.strides, null, !dbg !662
  br i1 %.not72, label %if_end59, label %if_then58, !dbg !662, !prof !52

if_then58:                                        ; preds = %assert_end57
  %139 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_2.compute.strides, align 8, !dbg !662, !tbaa !745
  %140 = and i64 %139, 4294967295, !dbg !662
  %141 = icmp eq i64 %140, 768, !dbg !662
  %142 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_2.compute.strides, i64 1, !dbg !662
  %143 = load i64, ptr %142, align 8, !dbg !662, !tbaa !755
  %144 = and i64 %143, 4294967295, !dbg !662
  %145 = icmp eq i64 %144, 1, !dbg !662
  %146 = and i1 %141, %145, !dbg !662
  br i1 %146, label %if_end59, label %assert_fail60, !dbg !662, !prof !18

if_end59:                                         ; preds = %if_then58, %assert_end57
  %147 = getelementptr inbounds %1, ptr %compute, i64 0, i32 6, !dbg !662
  %148 = load i64, ptr %147, align 8, !dbg !662
  %149 = icmp eq i64 %148, 0, !dbg !662
  br i1 %149, label %assert_end63, label %assert_fail62, !dbg !662, !prof !18

assert_fail60:                                    ; preds = %if_then58
  %150 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %150(ptr nonnull @.str.204), !dbg !662
  br label %common.ret

assert_fail62:                                    ; preds = %if_end59
  %151 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %151(ptr nonnull @.str.205), !dbg !662
  br label %common.ret

assert_end63:                                     ; preds = %if_end59
  %152 = getelementptr inbounds %1, ptr %compute, i64 0, i32 1, i32 0, !dbg !662
  %153 = load i32, ptr %152, align 4, !dbg !662
  %154 = icmp eq i32 %153, 1, !dbg !662
  br i1 %154, label %assert_end65, label %assert_fail64, !dbg !662, !prof !18

assert_fail64:                                    ; preds = %assert_end63
  %155 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %155(ptr nonnull @.str.206), !dbg !662
  br label %common.ret

assert_end65:                                     ; preds = %assert_end63
  %156 = getelementptr inbounds %1, ptr %compute, i64 0, i32 1, i32 1, !dbg !662
  %157 = load i32, ptr %156, align 4, !dbg !662
  %158 = icmp eq i32 %dev_id, %157, !dbg !662
  br i1 %158, label %assert_end67, label %assert_fail66, !dbg !662, !prof !18

assert_fail66:                                    ; preds = %assert_end65
  %159 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !662, !tbaa !19
  tail call void %159(ptr nonnull @.str.207), !dbg !662
  br label %common.ret

assert_end67:                                     ; preds = %assert_end65
  %160 = tail call fastcc i32 @tvmgen_default_fused_nn_contrib_dense_pack_2_compute_(ptr %p068, ptr %p169, ptr %compute70), !dbg !662
  br label %common.ret
}

define dllexport i32 @tvmgen_default_fused_nn_contrib_dense_pack_add_tanh(ptr noalias nocapture readonly %args, ptr noalias nocapture readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !757 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !759, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !760, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !761, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !762, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !763, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !764, metadata !DIExpression()), !dbg !765
  %0 = icmp eq i32 %num_args, 4, !dbg !765
  br i1 %0, label %assert_end, label %assert_fail, !dbg !765, !prof !18

common.ret:                                       ; preds = %assert_end90, %assert_fail89, %assert_fail87, %assert_fail85, %assert_fail83, %assert_fail79, %assert_fail77, %assert_fail75, %assert_fail71, %assert_fail69, %assert_fail67, %assert_fail65, %assert_fail63, %assert_fail59, %assert_fail57, %assert_fail55, %assert_fail51, %assert_fail49, %assert_fail47, %assert_fail45, %assert_fail43, %assert_fail39, %assert_fail37, %assert_fail35, %assert_fail33, %assert_fail29, %assert_fail27, %assert_fail25, %assert_fail23, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail7, %assert_fail5, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail27 ], [ -1, %assert_fail29 ], [ -1, %assert_fail33 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail39 ], [ -1, %assert_fail43 ], [ -1, %assert_fail45 ], [ -1, %assert_fail47 ], [ -1, %assert_fail49 ], [ -1, %assert_fail51 ], [ -1, %assert_fail55 ], [ -1, %assert_fail57 ], [ -1, %assert_fail59 ], [ -1, %assert_fail63 ], [ -1, %assert_fail65 ], [ -1, %assert_fail67 ], [ -1, %assert_fail69 ], [ -1, %assert_fail71 ], [ -1, %assert_fail75 ], [ -1, %assert_fail77 ], [ -1, %assert_fail79 ], [ -1, %assert_fail83 ], [ -1, %assert_fail85 ], [ -1, %assert_fail87 ], [ -1, %assert_fail89 ], [ %199, %assert_end90 ]
  ret i32 %common.ret.op, !dbg !765

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %1(ptr nonnull @.str.209), !dbg !765
  br label %common.ret

assert_end:                                       ; preds = %entry
  %p0.code = load i32, ptr %arg_type_ids, align 4, !dbg !765, !tbaa !766
  %2 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !765
  %p1.code = load i32, ptr %2, align 4, !dbg !765, !tbaa !777
  %3 = getelementptr inbounds i32, ptr %arg_type_ids, i64 2, !dbg !765
  %p2.code = load i32, ptr %3, align 4, !dbg !765, !tbaa !779
  %4 = getelementptr inbounds i32, ptr %arg_type_ids, i64 3, !dbg !765
  %T_tanh.code = load i32, ptr %4, align 4, !dbg !765, !tbaa !782
  %p0 = load ptr, ptr %args, align 8, !dbg !765
  %5 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !765
  %p1 = load ptr, ptr %5, align 8, !dbg !765
  %6 = getelementptr inbounds %0, ptr %args, i64 2, !dbg !765
  %p2 = load ptr, ptr %6, align 8, !dbg !765
  %7 = getelementptr inbounds %0, ptr %args, i64 3, !dbg !765
  %T_tanh = load ptr, ptr %7, align 8, !dbg !765
  %p091 = load ptr, ptr %p0, align 8, !dbg !765
  call void @llvm.assume(i1 true) [ "align"(ptr %p091, i64 64) ], !dbg !765
  %8 = getelementptr inbounds %1, ptr %p0, i64 0, i32 4, !dbg !765
  %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p0.shape = load ptr, ptr %8, align 8, !dbg !765
  %9 = getelementptr inbounds %1, ptr %p0, i64 0, i32 5, !dbg !765
  %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p0.strides = load ptr, ptr %9, align 8, !dbg !765
  %10 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 1, !dbg !765
  %dev_id = load i32, ptr %10, align 4, !dbg !765
  %p192 = load ptr, ptr %p1, align 8, !dbg !765
  call void @llvm.assume(i1 true) [ "align"(ptr %p192, i64 64) ], !dbg !765
  %11 = getelementptr inbounds %1, ptr %p1, i64 0, i32 4, !dbg !765
  %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p1.shape = load ptr, ptr %11, align 8, !dbg !765
  %12 = getelementptr inbounds %1, ptr %p1, i64 0, i32 5, !dbg !765
  %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p1.strides = load ptr, ptr %12, align 8, !dbg !765
  %p294 = load ptr, ptr %p2, align 8, !dbg !765
  call void @llvm.assume(i1 true) [ "align"(ptr %p294, i64 64) ], !dbg !765
  %13 = getelementptr inbounds %1, ptr %p2, i64 0, i32 4, !dbg !765
  %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p2.shape = load ptr, ptr %13, align 8, !dbg !765
  %14 = getelementptr inbounds %1, ptr %p2, i64 0, i32 5, !dbg !765
  %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p2.strides = load ptr, ptr %14, align 8, !dbg !765
  %T_tanh93 = load ptr, ptr %T_tanh, align 8, !dbg !765
  call void @llvm.assume(i1 true) [ "align"(ptr %T_tanh93, i64 64) ], !dbg !765
  %15 = getelementptr inbounds %1, ptr %T_tanh, i64 0, i32 4, !dbg !765
  %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.T_tanh.shape = load ptr, ptr %15, align 8, !dbg !765
  %16 = getelementptr inbounds %1, ptr %T_tanh, i64 0, i32 5, !dbg !765
  %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.T_tanh.strides = load ptr, ptr %16, align 8, !dbg !765
  switch i32 %p0.code, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ], !dbg !765

assert_fail5:                                     ; preds = %assert_end
  %17 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %17(ptr nonnull @.str.210), !dbg !765
  br label %common.ret

assert_end6:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %p1.code, label %assert_fail7 [
    i32 13, label %assert_end8
    i32 7, label %assert_end8
    i32 4, label %assert_end8
    i32 3, label %assert_end8
  ], !dbg !765

assert_fail7:                                     ; preds = %assert_end6
  %18 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %18(ptr nonnull @.str.211), !dbg !765
  br label %common.ret

assert_end8:                                      ; preds = %assert_end6, %assert_end6, %assert_end6, %assert_end6
  switch i32 %p2.code, label %assert_fail9 [
    i32 13, label %assert_end10
    i32 7, label %assert_end10
    i32 4, label %assert_end10
    i32 3, label %assert_end10
  ], !dbg !765

assert_fail9:                                     ; preds = %assert_end8
  %19 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %19(ptr nonnull @.str.212), !dbg !765
  br label %common.ret

assert_end10:                                     ; preds = %assert_end8, %assert_end8, %assert_end8, %assert_end8
  switch i32 %T_tanh.code, label %assert_fail11 [
    i32 13, label %assert_end12
    i32 7, label %assert_end12
    i32 4, label %assert_end12
    i32 3, label %assert_end12
  ], !dbg !765

assert_fail11:                                    ; preds = %assert_end10
  %20 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %20(ptr nonnull @.str.213), !dbg !765
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10, %assert_end10, %assert_end10, %assert_end10
  %21 = getelementptr inbounds %1, ptr %p0, i64 0, i32 2, !dbg !765
  %22 = load i32, ptr %21, align 4, !dbg !765
  %23 = icmp eq i32 %22, 2, !dbg !765
  br i1 %23, label %assert_end16, label %assert_fail13, !dbg !765, !prof !18

assert_fail13:                                    ; preds = %assert_end12
  %24 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %24(ptr nonnull @.str.214), !dbg !765
  br label %common.ret

assert_end16:                                     ; preds = %assert_end12
  %25 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 2, !dbg !765
  %26 = load i16, ptr %25, align 2, !dbg !765
  %27 = icmp eq i16 %26, 1, !dbg !765
  %28 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 1, !dbg !765
  %29 = load i8, ptr %28, align 1, !dbg !765
  %30 = icmp eq i8 %29, 32, !dbg !765
  %31 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 0, !dbg !765
  %32 = load i8, ptr %31, align 1, !dbg !765
  %33 = icmp eq i8 %32, 2, !dbg !765
  %34 = and i1 %30, %33, !dbg !765
  %35 = and i1 %27, %34, !dbg !765
  br i1 %35, label %assert_end18, label %assert_fail17, !dbg !765, !prof !18

assert_fail17:                                    ; preds = %assert_end16
  %36 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %36(ptr nonnull @.str.215), !dbg !765
  br label %common.ret

assert_end18:                                     ; preds = %assert_end16
  %37 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p0.shape, align 8, !dbg !765, !tbaa !784
  %38 = and i64 %37, 4294967295, !dbg !765
  %39 = icmp eq i64 %38, 1, !dbg !765
  br i1 %39, label %assert_end20, label %assert_fail19, !dbg !765, !prof !18

assert_fail19:                                    ; preds = %assert_end18
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %40(ptr nonnull @.str.216), !dbg !765
  br label %common.ret

assert_end20:                                     ; preds = %assert_end18
  %41 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p0.shape, i64 1, !dbg !765
  %42 = load i64, ptr %41, align 8, !dbg !765, !tbaa !794
  %43 = and i64 %42, 4294967295, !dbg !765
  %44 = icmp eq i64 %43, 768, !dbg !765
  br i1 %44, label %assert_end22, label %assert_fail21, !dbg !765, !prof !18

assert_fail21:                                    ; preds = %assert_end20
  %45 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %45(ptr nonnull @.str.217), !dbg !765
  br label %common.ret

assert_end22:                                     ; preds = %assert_end20
  %.not = icmp eq ptr %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p0.strides, null, !dbg !765
  br i1 %.not, label %if_end, label %if_then, !dbg !765, !prof !52

if_then:                                          ; preds = %assert_end22
  %46 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p0.strides, i64 1, !dbg !765
  %47 = load i64, ptr %46, align 8, !dbg !765, !tbaa !796
  %48 = and i64 %47, 4294967295, !dbg !765
  %49 = icmp eq i64 %48, 1, !dbg !765
  br i1 %49, label %if_end, label %assert_fail23, !dbg !765, !prof !18

if_end:                                           ; preds = %if_then, %assert_end22
  %50 = getelementptr inbounds %1, ptr %p0, i64 0, i32 6, !dbg !765
  %51 = load i64, ptr %50, align 8, !dbg !765
  %52 = icmp eq i64 %51, 0, !dbg !765
  br i1 %52, label %assert_end26, label %assert_fail25, !dbg !765, !prof !18

assert_fail23:                                    ; preds = %if_then
  %53 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %53(ptr nonnull @.str.218), !dbg !765
  br label %common.ret

assert_fail25:                                    ; preds = %if_end
  %54 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %54(ptr nonnull @.str.219), !dbg !765
  br label %common.ret

assert_end26:                                     ; preds = %if_end
  %55 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 0, !dbg !765
  %56 = load i32, ptr %55, align 4, !dbg !765
  %57 = icmp eq i32 %56, 1, !dbg !765
  br i1 %57, label %assert_end28, label %assert_fail27, !dbg !765, !prof !18

assert_fail27:                                    ; preds = %assert_end26
  %58 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %58(ptr nonnull @.str.220), !dbg !765
  br label %common.ret

assert_end28:                                     ; preds = %assert_end26
  %59 = getelementptr inbounds %1, ptr %p1, i64 0, i32 2, !dbg !765
  %60 = load i32, ptr %59, align 4, !dbg !765
  %61 = icmp eq i32 %60, 3, !dbg !765
  br i1 %61, label %assert_end32, label %assert_fail29, !dbg !765, !prof !18

assert_fail29:                                    ; preds = %assert_end28
  %62 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %62(ptr nonnull @.str.221), !dbg !765
  br label %common.ret

assert_end32:                                     ; preds = %assert_end28
  %63 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 2, !dbg !765
  %64 = load i16, ptr %63, align 2, !dbg !765
  %65 = icmp eq i16 %64, 1, !dbg !765
  %66 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 1, !dbg !765
  %67 = load i8, ptr %66, align 1, !dbg !765
  %68 = icmp eq i8 %67, 32, !dbg !765
  %69 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 0, !dbg !765
  %70 = load i8, ptr %69, align 1, !dbg !765
  %71 = icmp eq i8 %70, 2, !dbg !765
  %72 = and i1 %68, %71, !dbg !765
  %73 = and i1 %65, %72, !dbg !765
  br i1 %73, label %assert_end34, label %assert_fail33, !dbg !765, !prof !18

assert_fail33:                                    ; preds = %assert_end32
  %74 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %74(ptr nonnull @.str.222), !dbg !765
  br label %common.ret

assert_end34:                                     ; preds = %assert_end32
  %75 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p1.shape, align 8, !dbg !765, !tbaa !806
  %76 = and i64 %75, 4294967295, !dbg !765
  %77 = icmp eq i64 %76, 96, !dbg !765
  br i1 %77, label %assert_end36, label %assert_fail35, !dbg !765, !prof !18

assert_fail35:                                    ; preds = %assert_end34
  %78 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %78(ptr nonnull @.str.223), !dbg !765
  br label %common.ret

assert_end36:                                     ; preds = %assert_end34
  %79 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p1.shape, i64 1, !dbg !765
  %80 = load i64, ptr %79, align 8, !dbg !765, !tbaa !816
  %81 = and i64 %80, 4294967295, !dbg !765
  %82 = icmp eq i64 %81, 768, !dbg !765
  br i1 %82, label %assert_end38, label %assert_fail37, !dbg !765, !prof !18

assert_fail37:                                    ; preds = %assert_end36
  %83 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %83(ptr nonnull @.str.224), !dbg !765
  br label %common.ret

assert_end38:                                     ; preds = %assert_end36
  %84 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p1.shape, i64 2, !dbg !765
  %85 = load i64, ptr %84, align 8, !dbg !765, !tbaa !818
  %86 = and i64 %85, 4294967295, !dbg !765
  %87 = icmp eq i64 %86, 8, !dbg !765
  br i1 %87, label %assert_end40, label %assert_fail39, !dbg !765, !prof !18

assert_fail39:                                    ; preds = %assert_end38
  %88 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %88(ptr nonnull @.str.225), !dbg !765
  br label %common.ret

assert_end40:                                     ; preds = %assert_end38
  %.not95 = icmp eq ptr %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p1.strides, null, !dbg !765
  br i1 %.not95, label %if_end42, label %if_then41, !dbg !765, !prof !52

if_then41:                                        ; preds = %assert_end40
  %89 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p1.strides, align 8, !dbg !765, !tbaa !821
  %90 = and i64 %89, 4294967295, !dbg !765
  %91 = icmp eq i64 %90, 6144, !dbg !765
  %92 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p1.strides, i64 1, !dbg !765
  %93 = load i64, ptr %92, align 8, !dbg !765, !tbaa !831
  %94 = and i64 %93, 4294967295, !dbg !765
  %95 = icmp eq i64 %94, 8, !dbg !765
  %96 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p1.strides, i64 2, !dbg !765
  %97 = load i64, ptr %96, align 8, !dbg !765, !tbaa !833
  %98 = and i64 %97, 4294967295, !dbg !765
  %99 = icmp eq i64 %98, 1, !dbg !765
  %100 = and i1 %95, %99, !dbg !765
  %101 = and i1 %91, %100, !dbg !765
  br i1 %101, label %if_end42, label %assert_fail43, !dbg !765, !prof !18

if_end42:                                         ; preds = %if_then41, %assert_end40
  %102 = getelementptr inbounds %1, ptr %p1, i64 0, i32 6, !dbg !765
  %103 = load i64, ptr %102, align 8, !dbg !765
  %104 = icmp eq i64 %103, 0, !dbg !765
  br i1 %104, label %assert_end46, label %assert_fail45, !dbg !765, !prof !18

assert_fail43:                                    ; preds = %if_then41
  %105 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %105(ptr nonnull @.str.226), !dbg !765
  br label %common.ret

assert_fail45:                                    ; preds = %if_end42
  %106 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %106(ptr nonnull @.str.227), !dbg !765
  br label %common.ret

assert_end46:                                     ; preds = %if_end42
  %107 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 0, !dbg !765
  %108 = load i32, ptr %107, align 4, !dbg !765
  %109 = icmp eq i32 %108, 1, !dbg !765
  br i1 %109, label %assert_end48, label %assert_fail47, !dbg !765, !prof !18

assert_fail47:                                    ; preds = %assert_end46
  %110 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %110(ptr nonnull @.str.228), !dbg !765
  br label %common.ret

assert_end48:                                     ; preds = %assert_end46
  %111 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 1, !dbg !765
  %112 = load i32, ptr %111, align 4, !dbg !765
  %113 = icmp eq i32 %dev_id, %112, !dbg !765
  br i1 %113, label %assert_end50, label %assert_fail49, !dbg !765, !prof !18

assert_fail49:                                    ; preds = %assert_end48
  %114 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %114(ptr nonnull @.str.229), !dbg !765
  br label %common.ret

assert_end50:                                     ; preds = %assert_end48
  %115 = getelementptr inbounds %1, ptr %p2, i64 0, i32 2, !dbg !765
  %116 = load i32, ptr %115, align 4, !dbg !765
  %117 = icmp eq i32 %116, 2, !dbg !765
  br i1 %117, label %assert_end54, label %assert_fail51, !dbg !765, !prof !18

assert_fail51:                                    ; preds = %assert_end50
  %118 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %118(ptr nonnull @.str.230), !dbg !765
  br label %common.ret

assert_end54:                                     ; preds = %assert_end50
  %119 = getelementptr inbounds %1, ptr %p2, i64 0, i32 3, i32 2, !dbg !765
  %120 = load i16, ptr %119, align 2, !dbg !765
  %121 = icmp eq i16 %120, 1, !dbg !765
  %122 = getelementptr inbounds %1, ptr %p2, i64 0, i32 3, i32 1, !dbg !765
  %123 = load i8, ptr %122, align 1, !dbg !765
  %124 = icmp eq i8 %123, 32, !dbg !765
  %125 = getelementptr inbounds %1, ptr %p2, i64 0, i32 3, i32 0, !dbg !765
  %126 = load i8, ptr %125, align 1, !dbg !765
  %127 = icmp eq i8 %126, 2, !dbg !765
  %128 = and i1 %124, %127, !dbg !765
  %129 = and i1 %121, %128, !dbg !765
  br i1 %129, label %assert_end56, label %assert_fail55, !dbg !765, !prof !18

assert_fail55:                                    ; preds = %assert_end54
  %130 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %130(ptr nonnull @.str.231), !dbg !765
  br label %common.ret

assert_end56:                                     ; preds = %assert_end54
  %131 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p2.shape, align 8, !dbg !765, !tbaa !836
  %132 = and i64 %131, 4294967295, !dbg !765
  %133 = icmp eq i64 %132, 1, !dbg !765
  br i1 %133, label %assert_end58, label %assert_fail57, !dbg !765, !prof !18

assert_fail57:                                    ; preds = %assert_end56
  %134 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %134(ptr nonnull @.str.232), !dbg !765
  br label %common.ret

assert_end58:                                     ; preds = %assert_end56
  %135 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p2.shape, i64 1, !dbg !765
  %136 = load i64, ptr %135, align 8, !dbg !765, !tbaa !846
  %137 = and i64 %136, 4294967295, !dbg !765
  %138 = icmp eq i64 %137, 768, !dbg !765
  br i1 %138, label %assert_end60, label %assert_fail59, !dbg !765, !prof !18

assert_fail59:                                    ; preds = %assert_end58
  %139 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %139(ptr nonnull @.str.233), !dbg !765
  br label %common.ret

assert_end60:                                     ; preds = %assert_end58
  %.not96 = icmp eq ptr %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p2.strides, null, !dbg !765
  br i1 %.not96, label %if_end62, label %if_then61, !dbg !765, !prof !52

if_then61:                                        ; preds = %assert_end60
  %140 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.p2.strides, i64 1, !dbg !765
  %141 = load i64, ptr %140, align 8, !dbg !765, !tbaa !848
  %142 = and i64 %141, 4294967295, !dbg !765
  %143 = icmp eq i64 %142, 1, !dbg !765
  br i1 %143, label %if_end62, label %assert_fail63, !dbg !765, !prof !18

if_end62:                                         ; preds = %if_then61, %assert_end60
  %144 = getelementptr inbounds %1, ptr %p2, i64 0, i32 6, !dbg !765
  %145 = load i64, ptr %144, align 8, !dbg !765
  %146 = icmp eq i64 %145, 0, !dbg !765
  br i1 %146, label %assert_end66, label %assert_fail65, !dbg !765, !prof !18

assert_fail63:                                    ; preds = %if_then61
  %147 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %147(ptr nonnull @.str.234), !dbg !765
  br label %common.ret

assert_fail65:                                    ; preds = %if_end62
  %148 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %148(ptr nonnull @.str.235), !dbg !765
  br label %common.ret

assert_end66:                                     ; preds = %if_end62
  %149 = getelementptr inbounds %1, ptr %p2, i64 0, i32 1, i32 0, !dbg !765
  %150 = load i32, ptr %149, align 4, !dbg !765
  %151 = icmp eq i32 %150, 1, !dbg !765
  br i1 %151, label %assert_end68, label %assert_fail67, !dbg !765, !prof !18

assert_fail67:                                    ; preds = %assert_end66
  %152 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %152(ptr nonnull @.str.236), !dbg !765
  br label %common.ret

assert_end68:                                     ; preds = %assert_end66
  %153 = getelementptr inbounds %1, ptr %p2, i64 0, i32 1, i32 1, !dbg !765
  %154 = load i32, ptr %153, align 4, !dbg !765
  %155 = icmp eq i32 %dev_id, %154, !dbg !765
  br i1 %155, label %assert_end70, label %assert_fail69, !dbg !765, !prof !18

assert_fail69:                                    ; preds = %assert_end68
  %156 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %156(ptr nonnull @.str.237), !dbg !765
  br label %common.ret

assert_end70:                                     ; preds = %assert_end68
  %157 = getelementptr inbounds %1, ptr %T_tanh, i64 0, i32 2, !dbg !765
  %158 = load i32, ptr %157, align 4, !dbg !765
  %159 = icmp eq i32 %158, 2, !dbg !765
  br i1 %159, label %assert_end74, label %assert_fail71, !dbg !765, !prof !18

assert_fail71:                                    ; preds = %assert_end70
  %160 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %160(ptr nonnull @.str.238), !dbg !765
  br label %common.ret

assert_end74:                                     ; preds = %assert_end70
  %161 = getelementptr inbounds %1, ptr %T_tanh, i64 0, i32 3, i32 2, !dbg !765
  %162 = load i16, ptr %161, align 2, !dbg !765
  %163 = icmp eq i16 %162, 1, !dbg !765
  %164 = getelementptr inbounds %1, ptr %T_tanh, i64 0, i32 3, i32 1, !dbg !765
  %165 = load i8, ptr %164, align 1, !dbg !765
  %166 = icmp eq i8 %165, 32, !dbg !765
  %167 = getelementptr inbounds %1, ptr %T_tanh, i64 0, i32 3, i32 0, !dbg !765
  %168 = load i8, ptr %167, align 1, !dbg !765
  %169 = icmp eq i8 %168, 2, !dbg !765
  %170 = and i1 %166, %169, !dbg !765
  %171 = and i1 %163, %170, !dbg !765
  br i1 %171, label %assert_end76, label %assert_fail75, !dbg !765, !prof !18

assert_fail75:                                    ; preds = %assert_end74
  %172 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %172(ptr nonnull @.str.239), !dbg !765
  br label %common.ret

assert_end76:                                     ; preds = %assert_end74
  %173 = load i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.T_tanh.shape, align 8, !dbg !765, !tbaa !858
  %174 = and i64 %173, 4294967295, !dbg !765
  %175 = icmp eq i64 %174, 1, !dbg !765
  br i1 %175, label %assert_end78, label %assert_fail77, !dbg !765, !prof !18

assert_fail77:                                    ; preds = %assert_end76
  %176 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %176(ptr nonnull @.str.240), !dbg !765
  br label %common.ret

assert_end78:                                     ; preds = %assert_end76
  %177 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.T_tanh.shape, i64 1, !dbg !765
  %178 = load i64, ptr %177, align 8, !dbg !765, !tbaa !868
  %179 = and i64 %178, 4294967295, !dbg !765
  %180 = icmp eq i64 %179, 768, !dbg !765
  br i1 %180, label %assert_end80, label %assert_fail79, !dbg !765, !prof !18

assert_fail79:                                    ; preds = %assert_end78
  %181 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %181(ptr nonnull @.str.241), !dbg !765
  br label %common.ret

assert_end80:                                     ; preds = %assert_end78
  %.not97 = icmp eq ptr %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.T_tanh.strides, null, !dbg !765
  br i1 %.not97, label %if_end82, label %if_then81, !dbg !765, !prof !52

if_then81:                                        ; preds = %assert_end80
  %182 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_contrib_dense_pack_add_tanh.T_tanh.strides, i64 1, !dbg !765
  %183 = load i64, ptr %182, align 8, !dbg !765, !tbaa !870
  %184 = and i64 %183, 4294967295, !dbg !765
  %185 = icmp eq i64 %184, 1, !dbg !765
  br i1 %185, label %if_end82, label %assert_fail83, !dbg !765, !prof !18

if_end82:                                         ; preds = %if_then81, %assert_end80
  %186 = getelementptr inbounds %1, ptr %T_tanh, i64 0, i32 6, !dbg !765
  %187 = load i64, ptr %186, align 8, !dbg !765
  %188 = icmp eq i64 %187, 0, !dbg !765
  br i1 %188, label %assert_end86, label %assert_fail85, !dbg !765, !prof !18

assert_fail83:                                    ; preds = %if_then81
  %189 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %189(ptr nonnull @.str.242), !dbg !765
  br label %common.ret

assert_fail85:                                    ; preds = %if_end82
  %190 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %190(ptr nonnull @.str.243), !dbg !765
  br label %common.ret

assert_end86:                                     ; preds = %if_end82
  %191 = getelementptr inbounds %1, ptr %T_tanh, i64 0, i32 1, i32 0, !dbg !765
  %192 = load i32, ptr %191, align 4, !dbg !765
  %193 = icmp eq i32 %192, 1, !dbg !765
  br i1 %193, label %assert_end88, label %assert_fail87, !dbg !765, !prof !18

assert_fail87:                                    ; preds = %assert_end86
  %194 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %194(ptr nonnull @.str.244), !dbg !765
  br label %common.ret

assert_end88:                                     ; preds = %assert_end86
  %195 = getelementptr inbounds %1, ptr %T_tanh, i64 0, i32 1, i32 1, !dbg !765
  %196 = load i32, ptr %195, align 4, !dbg !765
  %197 = icmp eq i32 %dev_id, %196, !dbg !765
  br i1 %197, label %assert_end90, label %assert_fail89, !dbg !765, !prof !18

assert_fail89:                                    ; preds = %assert_end88
  %198 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !765, !tbaa !19
  tail call void %198(ptr nonnull @.str.245), !dbg !765
  br label %common.ret

assert_end90:                                     ; preds = %assert_end88
  %199 = tail call fastcc i32 @tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_compute_(i32 %dev_id, ptr %p091, ptr %p192, ptr %T_tanh93, ptr %p294), !dbg !765
  br label %common.ret
}

define dllexport i32 @tvmgen_default_fused_nn_softmax(ptr noalias nocapture readonly %args, ptr noalias nocapture readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !880 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !882, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !883, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !884, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !885, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !886, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !887, metadata !DIExpression()), !dbg !888
  %0 = icmp eq i32 %num_args, 2, !dbg !888
  br i1 %0, label %assert_end, label %assert_fail, !dbg !888, !prof !18

common.ret:                                       ; preds = %assert_end50, %assert_fail49, %assert_fail47, %assert_fail45, %assert_fail43, %assert_fail39, %assert_fail37, %assert_fail35, %assert_fail33, %assert_fail31, %assert_fail27, %assert_fail25, %assert_fail23, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail7, %assert_fail5, %assert_fail3, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail27 ], [ -1, %assert_fail31 ], [ -1, %assert_fail33 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail39 ], [ -1, %assert_fail43 ], [ -1, %assert_fail45 ], [ -1, %assert_fail47 ], [ -1, %assert_fail49 ], [ %131, %assert_end50 ]
  ret i32 %common.ret.op, !dbg !888

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %1(ptr nonnull @.str.247), !dbg !888
  br label %common.ret

assert_end:                                       ; preds = %entry
  %p0.code = load i32, ptr %arg_type_ids, align 4, !dbg !888, !tbaa !889
  %2 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !888
  %T_softmax_norm.code = load i32, ptr %2, align 4, !dbg !888, !tbaa !900
  %p0 = load ptr, ptr %args, align 8, !dbg !888
  %3 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !888
  %T_softmax_norm = load ptr, ptr %3, align 8, !dbg !888
  %p051 = load ptr, ptr %p0, align 8, !dbg !888
  call void @llvm.assume(i1 true) [ "align"(ptr %p051, i64 64) ], !dbg !888
  %4 = getelementptr inbounds %1, ptr %p0, i64 0, i32 4, !dbg !888
  %tvmgen_default_fused_nn_softmax.p0.shape = load ptr, ptr %4, align 8, !dbg !888
  %5 = getelementptr inbounds %1, ptr %p0, i64 0, i32 5, !dbg !888
  %tvmgen_default_fused_nn_softmax.p0.strides = load ptr, ptr %5, align 8, !dbg !888
  %6 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 1, !dbg !888
  %dev_id = load i32, ptr %6, align 4, !dbg !888
  %T_softmax_norm52 = load ptr, ptr %T_softmax_norm, align 8, !dbg !888
  call void @llvm.assume(i1 true) [ "align"(ptr %T_softmax_norm52, i64 64) ], !dbg !888
  %7 = getelementptr inbounds %1, ptr %T_softmax_norm, i64 0, i32 4, !dbg !888
  %tvmgen_default_fused_nn_softmax.T_softmax_norm.shape = load ptr, ptr %7, align 8, !dbg !888
  %8 = getelementptr inbounds %1, ptr %T_softmax_norm, i64 0, i32 5, !dbg !888
  %tvmgen_default_fused_nn_softmax.T_softmax_norm.strides = load ptr, ptr %8, align 8, !dbg !888
  switch i32 %p0.code, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ], !dbg !888

assert_fail3:                                     ; preds = %assert_end
  %9 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %9(ptr nonnull @.str.248), !dbg !888
  br label %common.ret

assert_end4:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %T_softmax_norm.code, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ], !dbg !888

assert_fail5:                                     ; preds = %assert_end4
  %10 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %10(ptr nonnull @.str.249), !dbg !888
  br label %common.ret

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  %11 = getelementptr inbounds %1, ptr %p0, i64 0, i32 2, !dbg !888
  %12 = load i32, ptr %11, align 4, !dbg !888
  %13 = icmp eq i32 %12, 4, !dbg !888
  br i1 %13, label %assert_end10, label %assert_fail7, !dbg !888, !prof !18

assert_fail7:                                     ; preds = %assert_end6
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %14(ptr nonnull @.str.250), !dbg !888
  br label %common.ret

assert_end10:                                     ; preds = %assert_end6
  %15 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 2, !dbg !888
  %16 = load i16, ptr %15, align 2, !dbg !888
  %17 = icmp eq i16 %16, 1, !dbg !888
  %18 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 1, !dbg !888
  %19 = load i8, ptr %18, align 1, !dbg !888
  %20 = icmp eq i8 %19, 32, !dbg !888
  %21 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 0, !dbg !888
  %22 = load i8, ptr %21, align 1, !dbg !888
  %23 = icmp eq i8 %22, 2, !dbg !888
  %24 = and i1 %20, %23, !dbg !888
  %25 = and i1 %17, %24, !dbg !888
  br i1 %25, label %assert_end12, label %assert_fail11, !dbg !888, !prof !18

assert_fail11:                                    ; preds = %assert_end10
  %26 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %26(ptr nonnull @.str.251), !dbg !888
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10
  %27 = load i64, ptr %tvmgen_default_fused_nn_softmax.p0.shape, align 8, !dbg !888, !tbaa !902
  %28 = and i64 %27, 4294967295, !dbg !888
  %29 = icmp eq i64 %28, 1, !dbg !888
  br i1 %29, label %assert_end14, label %assert_fail13, !dbg !888, !prof !18

assert_fail13:                                    ; preds = %assert_end12
  %30 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %30(ptr nonnull @.str.252), !dbg !888
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12
  %31 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_softmax.p0.shape, i64 1, !dbg !888
  %32 = load i64, ptr %31, align 8, !dbg !888, !tbaa !912
  %33 = and i64 %32, 4294967295, !dbg !888
  %34 = icmp eq i64 %33, 12, !dbg !888
  br i1 %34, label %assert_end16, label %assert_fail15, !dbg !888, !prof !18

assert_fail15:                                    ; preds = %assert_end14
  %35 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %35(ptr nonnull @.str.253), !dbg !888
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14
  %36 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_softmax.p0.shape, i64 2, !dbg !888
  %37 = load i64, ptr %36, align 8, !dbg !888, !tbaa !914
  %38 = and i64 %37, 4294967295, !dbg !888
  %39 = icmp eq i64 %38, 5, !dbg !888
  br i1 %39, label %assert_end18, label %assert_fail17, !dbg !888, !prof !18

assert_fail17:                                    ; preds = %assert_end16
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %40(ptr nonnull @.str.254), !dbg !888
  br label %common.ret

assert_end18:                                     ; preds = %assert_end16
  %41 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_softmax.p0.shape, i64 3, !dbg !888
  %42 = load i64, ptr %41, align 8, !dbg !888, !tbaa !917
  %43 = and i64 %42, 4294967295, !dbg !888
  %44 = icmp eq i64 %43, 5, !dbg !888
  br i1 %44, label %assert_end20, label %assert_fail19, !dbg !888, !prof !18

assert_fail19:                                    ; preds = %assert_end18
  %45 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %45(ptr nonnull @.str.255), !dbg !888
  br label %common.ret

assert_end20:                                     ; preds = %assert_end18
  %.not = icmp eq ptr %tvmgen_default_fused_nn_softmax.p0.strides, null, !dbg !888
  br i1 %.not, label %if_end, label %if_then, !dbg !888, !prof !52

if_then:                                          ; preds = %assert_end20
  %46 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_softmax.p0.strides, i64 1, !dbg !888
  %47 = load i64, ptr %46, align 8, !dbg !888, !tbaa !919
  %48 = and i64 %47, 4294967295, !dbg !888
  %49 = icmp eq i64 %48, 25, !dbg !888
  %50 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_softmax.p0.strides, i64 2, !dbg !888
  %51 = load i64, ptr %50, align 8, !dbg !888, !tbaa !929
  %52 = and i64 %51, 4294967295, !dbg !888
  %53 = icmp eq i64 %52, 5, !dbg !888
  %54 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_softmax.p0.strides, i64 3, !dbg !888
  %55 = load i64, ptr %54, align 8, !dbg !888, !tbaa !932
  %56 = and i64 %55, 4294967295, !dbg !888
  %57 = icmp eq i64 %56, 1, !dbg !888
  %58 = and i1 %53, %57, !dbg !888
  %59 = and i1 %49, %58, !dbg !888
  br i1 %59, label %if_end, label %assert_fail21, !dbg !888, !prof !18

if_end:                                           ; preds = %if_then, %assert_end20
  %60 = getelementptr inbounds %1, ptr %p0, i64 0, i32 6, !dbg !888
  %61 = load i64, ptr %60, align 8, !dbg !888
  %62 = icmp eq i64 %61, 0, !dbg !888
  br i1 %62, label %assert_end24, label %assert_fail23, !dbg !888, !prof !18

assert_fail21:                                    ; preds = %if_then
  %63 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %63(ptr nonnull @.str.256), !dbg !888
  br label %common.ret

assert_fail23:                                    ; preds = %if_end
  %64 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %64(ptr nonnull @.str.257), !dbg !888
  br label %common.ret

assert_end24:                                     ; preds = %if_end
  %65 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 0, !dbg !888
  %66 = load i32, ptr %65, align 4, !dbg !888
  %67 = icmp eq i32 %66, 1, !dbg !888
  br i1 %67, label %assert_end26, label %assert_fail25, !dbg !888, !prof !18

assert_fail25:                                    ; preds = %assert_end24
  %68 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %68(ptr nonnull @.str.258), !dbg !888
  br label %common.ret

assert_end26:                                     ; preds = %assert_end24
  %69 = getelementptr inbounds %1, ptr %T_softmax_norm, i64 0, i32 2, !dbg !888
  %70 = load i32, ptr %69, align 4, !dbg !888
  %71 = icmp eq i32 %70, 4, !dbg !888
  br i1 %71, label %assert_end30, label %assert_fail27, !dbg !888, !prof !18

assert_fail27:                                    ; preds = %assert_end26
  %72 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %72(ptr nonnull @.str.259), !dbg !888
  br label %common.ret

assert_end30:                                     ; preds = %assert_end26
  %73 = getelementptr inbounds %1, ptr %T_softmax_norm, i64 0, i32 3, i32 2, !dbg !888
  %74 = load i16, ptr %73, align 2, !dbg !888
  %75 = icmp eq i16 %74, 1, !dbg !888
  %76 = getelementptr inbounds %1, ptr %T_softmax_norm, i64 0, i32 3, i32 1, !dbg !888
  %77 = load i8, ptr %76, align 1, !dbg !888
  %78 = icmp eq i8 %77, 32, !dbg !888
  %79 = getelementptr inbounds %1, ptr %T_softmax_norm, i64 0, i32 3, i32 0, !dbg !888
  %80 = load i8, ptr %79, align 1, !dbg !888
  %81 = icmp eq i8 %80, 2, !dbg !888
  %82 = and i1 %78, %81, !dbg !888
  %83 = and i1 %75, %82, !dbg !888
  br i1 %83, label %assert_end32, label %assert_fail31, !dbg !888, !prof !18

assert_fail31:                                    ; preds = %assert_end30
  %84 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %84(ptr nonnull @.str.260), !dbg !888
  br label %common.ret

assert_end32:                                     ; preds = %assert_end30
  %85 = load i64, ptr %tvmgen_default_fused_nn_softmax.T_softmax_norm.shape, align 8, !dbg !888, !tbaa !934
  %86 = and i64 %85, 4294967295, !dbg !888
  %87 = icmp eq i64 %86, 1, !dbg !888
  br i1 %87, label %assert_end34, label %assert_fail33, !dbg !888, !prof !18

assert_fail33:                                    ; preds = %assert_end32
  %88 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %88(ptr nonnull @.str.261), !dbg !888
  br label %common.ret

assert_end34:                                     ; preds = %assert_end32
  %89 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_softmax.T_softmax_norm.shape, i64 1, !dbg !888
  %90 = load i64, ptr %89, align 8, !dbg !888, !tbaa !944
  %91 = and i64 %90, 4294967295, !dbg !888
  %92 = icmp eq i64 %91, 12, !dbg !888
  br i1 %92, label %assert_end36, label %assert_fail35, !dbg !888, !prof !18

assert_fail35:                                    ; preds = %assert_end34
  %93 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %93(ptr nonnull @.str.262), !dbg !888
  br label %common.ret

assert_end36:                                     ; preds = %assert_end34
  %94 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_softmax.T_softmax_norm.shape, i64 2, !dbg !888
  %95 = load i64, ptr %94, align 8, !dbg !888, !tbaa !946
  %96 = and i64 %95, 4294967295, !dbg !888
  %97 = icmp eq i64 %96, 5, !dbg !888
  br i1 %97, label %assert_end38, label %assert_fail37, !dbg !888, !prof !18

assert_fail37:                                    ; preds = %assert_end36
  %98 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %98(ptr nonnull @.str.263), !dbg !888
  br label %common.ret

assert_end38:                                     ; preds = %assert_end36
  %99 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_softmax.T_softmax_norm.shape, i64 3, !dbg !888
  %100 = load i64, ptr %99, align 8, !dbg !888, !tbaa !949
  %101 = and i64 %100, 4294967295, !dbg !888
  %102 = icmp eq i64 %101, 5, !dbg !888
  br i1 %102, label %assert_end40, label %assert_fail39, !dbg !888, !prof !18

assert_fail39:                                    ; preds = %assert_end38
  %103 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %103(ptr nonnull @.str.264), !dbg !888
  br label %common.ret

assert_end40:                                     ; preds = %assert_end38
  %.not53 = icmp eq ptr %tvmgen_default_fused_nn_softmax.T_softmax_norm.strides, null, !dbg !888
  br i1 %.not53, label %if_end42, label %if_then41, !dbg !888, !prof !52

if_then41:                                        ; preds = %assert_end40
  %104 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_softmax.T_softmax_norm.strides, i64 1, !dbg !888
  %105 = load i64, ptr %104, align 8, !dbg !888, !tbaa !951
  %106 = and i64 %105, 4294967295, !dbg !888
  %107 = icmp eq i64 %106, 25, !dbg !888
  %108 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_softmax.T_softmax_norm.strides, i64 2, !dbg !888
  %109 = load i64, ptr %108, align 8, !dbg !888, !tbaa !961
  %110 = and i64 %109, 4294967295, !dbg !888
  %111 = icmp eq i64 %110, 5, !dbg !888
  %112 = getelementptr inbounds i64, ptr %tvmgen_default_fused_nn_softmax.T_softmax_norm.strides, i64 3, !dbg !888
  %113 = load i64, ptr %112, align 8, !dbg !888, !tbaa !964
  %114 = and i64 %113, 4294967295, !dbg !888
  %115 = icmp eq i64 %114, 1, !dbg !888
  %116 = and i1 %111, %115, !dbg !888
  %117 = and i1 %107, %116, !dbg !888
  br i1 %117, label %if_end42, label %assert_fail43, !dbg !888, !prof !18

if_end42:                                         ; preds = %if_then41, %assert_end40
  %118 = getelementptr inbounds %1, ptr %T_softmax_norm, i64 0, i32 6, !dbg !888
  %119 = load i64, ptr %118, align 8, !dbg !888
  %120 = icmp eq i64 %119, 0, !dbg !888
  br i1 %120, label %assert_end46, label %assert_fail45, !dbg !888, !prof !18

assert_fail43:                                    ; preds = %if_then41
  %121 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %121(ptr nonnull @.str.265), !dbg !888
  br label %common.ret

assert_fail45:                                    ; preds = %if_end42
  %122 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %122(ptr nonnull @.str.266), !dbg !888
  br label %common.ret

assert_end46:                                     ; preds = %if_end42
  %123 = getelementptr inbounds %1, ptr %T_softmax_norm, i64 0, i32 1, i32 0, !dbg !888
  %124 = load i32, ptr %123, align 4, !dbg !888
  %125 = icmp eq i32 %124, 1, !dbg !888
  br i1 %125, label %assert_end48, label %assert_fail47, !dbg !888, !prof !18

assert_fail47:                                    ; preds = %assert_end46
  %126 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %126(ptr nonnull @.str.267), !dbg !888
  br label %common.ret

assert_end48:                                     ; preds = %assert_end46
  %127 = getelementptr inbounds %1, ptr %T_softmax_norm, i64 0, i32 1, i32 1, !dbg !888
  %128 = load i32, ptr %127, align 4, !dbg !888
  %129 = icmp eq i32 %dev_id, %128, !dbg !888
  br i1 %129, label %assert_end50, label %assert_fail49, !dbg !888, !prof !18

assert_fail49:                                    ; preds = %assert_end48
  %130 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !888, !tbaa !19
  tail call void %130(ptr nonnull @.str.268), !dbg !888
  br label %common.ret

assert_end50:                                     ; preds = %assert_end48
  %131 = tail call fastcc i32 @tvmgen_default_fused_nn_softmax_compute_(ptr %p051, ptr %T_softmax_norm52), !dbg !888
  br label %common.ret
}

define dllexport i32 @tvmgen_default_fused_reshape(ptr noalias nocapture readonly %args, ptr noalias nocapture readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !966 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !968, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !969, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !970, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !971, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !972, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !973, metadata !DIExpression()), !dbg !974
  %0 = icmp eq i32 %num_args, 2, !dbg !974
  br i1 %0, label %assert_end, label %assert_fail, !dbg !974, !prof !18

common.ret:                                       ; preds = %assert_end44, %assert_fail43, %assert_fail41, %assert_fail39, %assert_fail37, %assert_fail33, %assert_fail31, %assert_fail29, %assert_fail25, %assert_fail23, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail7, %assert_fail5, %assert_fail3, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail33 ], [ -1, %assert_fail37 ], [ -1, %assert_fail39 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ %105, %assert_end44 ]
  ret i32 %common.ret.op, !dbg !974

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !974, !tbaa !19
  tail call void %1(ptr nonnull @.str.270), !dbg !974
  br label %common.ret

assert_end:                                       ; preds = %entry
  %p0.code = load i32, ptr %arg_type_ids, align 4, !dbg !974, !tbaa !975
  %2 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !974
  %T_reshape.code = load i32, ptr %2, align 4, !dbg !974, !tbaa !986
  %p0 = load ptr, ptr %args, align 8, !dbg !974
  %3 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !974
  %T_reshape = load ptr, ptr %3, align 8, !dbg !974
  %p046 = load ptr, ptr %p0, align 8, !dbg !974
  call void @llvm.assume(i1 true) [ "align"(ptr %p046, i64 64) ], !dbg !974
  %4 = getelementptr inbounds %1, ptr %p0, i64 0, i32 4, !dbg !974
  %tvmgen_default_fused_reshape.p0.shape = load ptr, ptr %4, align 8, !dbg !974
  %5 = getelementptr inbounds %1, ptr %p0, i64 0, i32 5, !dbg !974
  %tvmgen_default_fused_reshape.p0.strides = load ptr, ptr %5, align 8, !dbg !974
  %6 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 1, !dbg !974
  %dev_id = load i32, ptr %6, align 4, !dbg !974
  %T_reshape45 = load ptr, ptr %T_reshape, align 8, !dbg !974
  call void @llvm.assume(i1 true) [ "align"(ptr %T_reshape45, i64 64) ], !dbg !974
  %7 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 4, !dbg !974
  %tvmgen_default_fused_reshape.T_reshape.shape = load ptr, ptr %7, align 8, !dbg !974
  %8 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 5, !dbg !974
  %tvmgen_default_fused_reshape.T_reshape.strides = load ptr, ptr %8, align 8, !dbg !974
  switch i32 %p0.code, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ], !dbg !974

assert_fail3:                                     ; preds = %assert_end
  %9 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !974, !tbaa !19
  tail call void %9(ptr nonnull @.str.271), !dbg !974
  br label %common.ret

assert_end4:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %T_reshape.code, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ], !dbg !974

assert_fail5:                                     ; preds = %assert_end4
  %10 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !974, !tbaa !19
  tail call void %10(ptr nonnull @.str.272), !dbg !974
  br label %common.ret

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  %11 = getelementptr inbounds %1, ptr %p0, i64 0, i32 2, !dbg !974
  %12 = load i32, ptr %11, align 4, !dbg !974
  %13 = icmp eq i32 %12, 3, !dbg !974
  br i1 %13, label %assert_end10, label %assert_fail7, !dbg !974, !prof !18

assert_fail7:                                     ; preds = %assert_end6
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !974, !tbaa !19
  tail call void %14(ptr nonnull @.str.273), !dbg !974
  br label %common.ret

assert_end10:                                     ; preds = %assert_end6
  %15 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 2, !dbg !974
  %16 = load i16, ptr %15, align 2, !dbg !974
  %17 = icmp eq i16 %16, 1, !dbg !974
  %18 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 1, !dbg !974
  %19 = load i8, ptr %18, align 1, !dbg !974
  %20 = icmp eq i8 %19, 32, !dbg !974
  %21 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 0, !dbg !974
  %22 = load i8, ptr %21, align 1, !dbg !974
  %23 = icmp eq i8 %22, 2, !dbg !974
  %24 = and i1 %20, %23, !dbg !974
  %25 = and i1 %17, %24, !dbg !974
  br i1 %25, label %assert_end12, label %assert_fail11, !dbg !974, !prof !18

assert_fail11:                                    ; preds = %assert_end10
  %26 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !974, !tbaa !19
  tail call void %26(ptr nonnull @.str.274), !dbg !974
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10
  %27 = load i64, ptr %tvmgen_default_fused_reshape.p0.shape, align 8, !dbg !974, !tbaa !988
  %28 = and i64 %27, 4294967295, !dbg !974
  %29 = icmp eq i64 %28, 1, !dbg !974
  br i1 %29, label %assert_end14, label %assert_fail13, !dbg !974, !prof !18

assert_fail13:                                    ; preds = %assert_end12
  %30 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !974, !tbaa !19
  tail call void %30(ptr nonnull @.str.275), !dbg !974
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12
  %31 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape.p0.shape, i64 1, !dbg !974
  %32 = load i64, ptr %31, align 8, !dbg !974, !tbaa !998
  %33 = and i64 %32, 4294967295, !dbg !974
  %34 = icmp eq i64 %33, 5, !dbg !974
  br i1 %34, label %assert_end16, label %assert_fail15, !dbg !974, !prof !18

assert_fail15:                                    ; preds = %assert_end14
  %35 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !974, !tbaa !19
  tail call void %35(ptr nonnull @.str.276), !dbg !974
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14
  %36 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape.p0.shape, i64 2, !dbg !974
  %37 = load i64, ptr %36, align 8, !dbg !974, !tbaa !1000
  %38 = and i64 %37, 4294967295, !dbg !974
  %39 = icmp eq i64 %38, 768, !dbg !974
  br i1 %39, label %assert_end18, label %assert_fail17, !dbg !974, !prof !18

assert_fail17:                                    ; preds = %assert_end16
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !974, !tbaa !19
  tail call void %40(ptr nonnull @.str.277), !dbg !974
  br label %common.ret

assert_end18:                                     ; preds = %assert_end16
  %.not = icmp eq ptr %tvmgen_default_fused_reshape.p0.strides, null, !dbg !974
  br i1 %.not, label %if_end, label %if_then, !dbg !974, !prof !52

if_then:                                          ; preds = %assert_end18
  %41 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape.p0.strides, i64 1, !dbg !974
  %42 = load i64, ptr %41, align 8, !dbg !974, !tbaa !1003
  %43 = and i64 %42, 4294967295, !dbg !974
  %44 = icmp eq i64 %43, 768, !dbg !974
  %45 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape.p0.strides, i64 2, !dbg !974
  %46 = load i64, ptr %45, align 8, !dbg !974, !tbaa !1013
  %47 = and i64 %46, 4294967295, !dbg !974
  %48 = icmp eq i64 %47, 1, !dbg !974
  %49 = and i1 %44, %48, !dbg !974
  br i1 %49, label %if_end, label %assert_fail19, !dbg !974, !prof !18

if_end:                                           ; preds = %if_then, %assert_end18
  %50 = getelementptr inbounds %1, ptr %p0, i64 0, i32 6, !dbg !974
  %51 = load i64, ptr %50, align 8, !dbg !974
  %52 = icmp eq i64 %51, 0, !dbg !974
  br i1 %52, label %assert_end22, label %assert_fail21, !dbg !974, !prof !18

assert_fail19:                                    ; preds = %if_then
  %53 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !974, !tbaa !19
  tail call void %53(ptr nonnull @.str.278), !dbg !974
  br label %common.ret

assert_fail21:                                    ; preds = %if_end
  %54 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !974, !tbaa !19
  tail call void %54(ptr nonnull @.str.279), !dbg !974
  br label %common.ret

assert_end22:                                     ; preds = %if_end
  %55 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 0, !dbg !974
  %56 = load i32, ptr %55, align 4, !dbg !974
  %57 = icmp eq i32 %56, 1, !dbg !974
  br i1 %57, label %assert_end24, label %assert_fail23, !dbg !974, !prof !18

assert_fail23:                                    ; preds = %assert_end22
  %58 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !974, !tbaa !19
  tail call void %58(ptr nonnull @.str.280), !dbg !974
  br label %common.ret

assert_end24:                                     ; preds = %assert_end22
  %59 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 2, !dbg !974
  %60 = load i32, ptr %59, align 4, !dbg !974
  %61 = icmp eq i32 %60, 2, !dbg !974
  br i1 %61, label %assert_end28, label %assert_fail25, !dbg !974, !prof !18

assert_fail25:                                    ; preds = %assert_end24
  %62 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !974, !tbaa !19
  tail call void %62(ptr nonnull @.str.281), !dbg !974
  br label %common.ret

assert_end28:                                     ; preds = %assert_end24
  %63 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 3, i32 2, !dbg !974
  %64 = load i16, ptr %63, align 2, !dbg !974
  %65 = icmp eq i16 %64, 1, !dbg !974
  %66 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 3, i32 1, !dbg !974
  %67 = load i8, ptr %66, align 1, !dbg !974
  %68 = icmp eq i8 %67, 32, !dbg !974
  %69 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 3, i32 0, !dbg !974
  %70 = load i8, ptr %69, align 1, !dbg !974
  %71 = icmp eq i8 %70, 2, !dbg !974
  %72 = and i1 %68, %71, !dbg !974
  %73 = and i1 %65, %72, !dbg !974
  br i1 %73, label %assert_end30, label %assert_fail29, !dbg !974, !prof !18

assert_fail29:                                    ; preds = %assert_end28
  %74 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !974, !tbaa !19
  tail call void %74(ptr nonnull @.str.282), !dbg !974
  br label %common.ret

assert_end30:                                     ; preds = %assert_end28
  %75 = load i64, ptr %tvmgen_default_fused_reshape.T_reshape.shape, align 8, !dbg !974, !tbaa !1016
  %76 = and i64 %75, 4294967295, !dbg !974
  %77 = icmp eq i64 %76, 5, !dbg !974
  br i1 %77, label %assert_end32, label %assert_fail31, !dbg !974, !prof !18

assert_fail31:                                    ; preds = %assert_end30
  %78 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !974, !tbaa !19
  tail call void %78(ptr nonnull @.str.283), !dbg !974
  br label %common.ret

assert_end32:                                     ; preds = %assert_end30
  %79 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape.T_reshape.shape, i64 1, !dbg !974
  %80 = load i64, ptr %79, align 8, !dbg !974, !tbaa !1026
  %81 = and i64 %80, 4294967295, !dbg !974
  %82 = icmp eq i64 %81, 768, !dbg !974
  br i1 %82, label %assert_end34, label %assert_fail33, !dbg !974, !prof !18

assert_fail33:                                    ; preds = %assert_end32
  %83 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !974, !tbaa !19
  tail call void %83(ptr nonnull @.str.284), !dbg !974
  br label %common.ret

assert_end34:                                     ; preds = %assert_end32
  %.not47 = icmp eq ptr %tvmgen_default_fused_reshape.T_reshape.strides, null, !dbg !974
  br i1 %.not47, label %if_end36, label %if_then35, !dbg !974, !prof !52

if_then35:                                        ; preds = %assert_end34
  %84 = load i64, ptr %tvmgen_default_fused_reshape.T_reshape.strides, align 8, !dbg !974, !tbaa !1028
  %85 = and i64 %84, 4294967295, !dbg !974
  %86 = icmp eq i64 %85, 768, !dbg !974
  %87 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape.T_reshape.strides, i64 1, !dbg !974
  %88 = load i64, ptr %87, align 8, !dbg !974, !tbaa !1038
  %89 = and i64 %88, 4294967295, !dbg !974
  %90 = icmp eq i64 %89, 1, !dbg !974
  %91 = and i1 %86, %90, !dbg !974
  br i1 %91, label %if_end36, label %assert_fail37, !dbg !974, !prof !18

if_end36:                                         ; preds = %if_then35, %assert_end34
  %92 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 6, !dbg !974
  %93 = load i64, ptr %92, align 8, !dbg !974
  %94 = icmp eq i64 %93, 0, !dbg !974
  br i1 %94, label %assert_end40, label %assert_fail39, !dbg !974, !prof !18

assert_fail37:                                    ; preds = %if_then35
  %95 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !974, !tbaa !19
  tail call void %95(ptr nonnull @.str.285), !dbg !974
  br label %common.ret

assert_fail39:                                    ; preds = %if_end36
  %96 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !974, !tbaa !19
  tail call void %96(ptr nonnull @.str.286), !dbg !974
  br label %common.ret

assert_end40:                                     ; preds = %if_end36
  %97 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 1, i32 0, !dbg !974
  %98 = load i32, ptr %97, align 4, !dbg !974
  %99 = icmp eq i32 %98, 1, !dbg !974
  br i1 %99, label %assert_end42, label %assert_fail41, !dbg !974, !prof !18

assert_fail41:                                    ; preds = %assert_end40
  %100 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !974, !tbaa !19
  tail call void %100(ptr nonnull @.str.287), !dbg !974
  br label %common.ret

assert_end42:                                     ; preds = %assert_end40
  %101 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 1, i32 1, !dbg !974
  %102 = load i32, ptr %101, align 4, !dbg !974
  %103 = icmp eq i32 %dev_id, %102, !dbg !974
  br i1 %103, label %assert_end44, label %assert_fail43, !dbg !974, !prof !18

assert_fail43:                                    ; preds = %assert_end42
  %104 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !974, !tbaa !19
  tail call void %104(ptr nonnull @.str.288), !dbg !974
  br label %common.ret

assert_end44:                                     ; preds = %assert_end42
  %105 = tail call fastcc i32 @tvmgen_default_fused_reshape_compute_(ptr %T_reshape45, ptr %p046), !dbg !974
  br label %common.ret
}

define dllexport i32 @tvmgen_default_fused_reshape_1(ptr noalias nocapture readonly %args, ptr noalias nocapture readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !1040 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !1042, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !1043, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !1044, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !1045, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !1046, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !1047, metadata !DIExpression()), !dbg !1048
  %0 = icmp eq i32 %num_args, 2, !dbg !1048
  br i1 %0, label %assert_end, label %assert_fail, !dbg !1048, !prof !18

common.ret:                                       ; preds = %assert_end48, %assert_fail47, %assert_fail45, %assert_fail43, %assert_fail41, %assert_fail37, %assert_fail35, %assert_fail33, %assert_fail31, %assert_fail27, %assert_fail25, %assert_fail23, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail7, %assert_fail5, %assert_fail3, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail27 ], [ -1, %assert_fail31 ], [ -1, %assert_fail33 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail45 ], [ -1, %assert_fail47 ], [ %125, %assert_end48 ]
  ret i32 %common.ret.op, !dbg !1048

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1048, !tbaa !19
  tail call void %1(ptr nonnull @.str.290), !dbg !1048
  br label %common.ret

assert_end:                                       ; preds = %entry
  %p0.code = load i32, ptr %arg_type_ids, align 4, !dbg !1048, !tbaa !1049
  %2 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !1048
  %T_reshape.code = load i32, ptr %2, align 4, !dbg !1048, !tbaa !1060
  %p0 = load ptr, ptr %args, align 8, !dbg !1048
  %3 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !1048
  %T_reshape = load ptr, ptr %3, align 8, !dbg !1048
  %p050 = load ptr, ptr %p0, align 8, !dbg !1048
  call void @llvm.assume(i1 true) [ "align"(ptr %p050, i64 64) ], !dbg !1048
  %4 = getelementptr inbounds %1, ptr %p0, i64 0, i32 4, !dbg !1048
  %tvmgen_default_fused_reshape_1.p0.shape = load ptr, ptr %4, align 8, !dbg !1048
  %5 = getelementptr inbounds %1, ptr %p0, i64 0, i32 5, !dbg !1048
  %tvmgen_default_fused_reshape_1.p0.strides = load ptr, ptr %5, align 8, !dbg !1048
  %6 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 1, !dbg !1048
  %dev_id = load i32, ptr %6, align 4, !dbg !1048
  %T_reshape49 = load ptr, ptr %T_reshape, align 8, !dbg !1048
  call void @llvm.assume(i1 true) [ "align"(ptr %T_reshape49, i64 64) ], !dbg !1048
  %7 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 4, !dbg !1048
  %tvmgen_default_fused_reshape_1.T_reshape.shape = load ptr, ptr %7, align 8, !dbg !1048
  %8 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 5, !dbg !1048
  %tvmgen_default_fused_reshape_1.T_reshape.strides = load ptr, ptr %8, align 8, !dbg !1048
  switch i32 %p0.code, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ], !dbg !1048

assert_fail3:                                     ; preds = %assert_end
  %9 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1048, !tbaa !19
  tail call void %9(ptr nonnull @.str.291), !dbg !1048
  br label %common.ret

assert_end4:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %T_reshape.code, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ], !dbg !1048

assert_fail5:                                     ; preds = %assert_end4
  %10 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1048, !tbaa !19
  tail call void %10(ptr nonnull @.str.292), !dbg !1048
  br label %common.ret

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  %11 = getelementptr inbounds %1, ptr %p0, i64 0, i32 2, !dbg !1048
  %12 = load i32, ptr %11, align 4, !dbg !1048
  %13 = icmp eq i32 %12, 4, !dbg !1048
  br i1 %13, label %assert_end10, label %assert_fail7, !dbg !1048, !prof !18

assert_fail7:                                     ; preds = %assert_end6
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1048, !tbaa !19
  tail call void %14(ptr nonnull @.str.293), !dbg !1048
  br label %common.ret

assert_end10:                                     ; preds = %assert_end6
  %15 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 2, !dbg !1048
  %16 = load i16, ptr %15, align 2, !dbg !1048
  %17 = icmp eq i16 %16, 1, !dbg !1048
  %18 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 1, !dbg !1048
  %19 = load i8, ptr %18, align 1, !dbg !1048
  %20 = icmp eq i8 %19, 32, !dbg !1048
  %21 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 0, !dbg !1048
  %22 = load i8, ptr %21, align 1, !dbg !1048
  %23 = icmp eq i8 %22, 2, !dbg !1048
  %24 = and i1 %20, %23, !dbg !1048
  %25 = and i1 %17, %24, !dbg !1048
  br i1 %25, label %assert_end12, label %assert_fail11, !dbg !1048, !prof !18

assert_fail11:                                    ; preds = %assert_end10
  %26 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1048, !tbaa !19
  tail call void %26(ptr nonnull @.str.294), !dbg !1048
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10
  %27 = load i64, ptr %tvmgen_default_fused_reshape_1.p0.shape, align 8, !dbg !1048, !tbaa !1062
  %28 = and i64 %27, 4294967295, !dbg !1048
  %29 = icmp eq i64 %28, 1, !dbg !1048
  br i1 %29, label %assert_end14, label %assert_fail13, !dbg !1048, !prof !18

assert_fail13:                                    ; preds = %assert_end12
  %30 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1048, !tbaa !19
  tail call void %30(ptr nonnull @.str.295), !dbg !1048
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12
  %31 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_1.p0.shape, i64 1, !dbg !1048
  %32 = load i64, ptr %31, align 8, !dbg !1048, !tbaa !1072
  %33 = and i64 %32, 4294967295, !dbg !1048
  %34 = icmp eq i64 %33, 12, !dbg !1048
  br i1 %34, label %assert_end16, label %assert_fail15, !dbg !1048, !prof !18

assert_fail15:                                    ; preds = %assert_end14
  %35 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1048, !tbaa !19
  tail call void %35(ptr nonnull @.str.296), !dbg !1048
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14
  %36 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_1.p0.shape, i64 2, !dbg !1048
  %37 = load i64, ptr %36, align 8, !dbg !1048, !tbaa !1074
  %38 = and i64 %37, 4294967295, !dbg !1048
  %39 = icmp eq i64 %38, 5, !dbg !1048
  br i1 %39, label %assert_end18, label %assert_fail17, !dbg !1048, !prof !18

assert_fail17:                                    ; preds = %assert_end16
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1048, !tbaa !19
  tail call void %40(ptr nonnull @.str.297), !dbg !1048
  br label %common.ret

assert_end18:                                     ; preds = %assert_end16
  %41 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_1.p0.shape, i64 3, !dbg !1048
  %42 = load i64, ptr %41, align 8, !dbg !1048, !tbaa !1077
  %43 = and i64 %42, 4294967295, !dbg !1048
  %44 = icmp eq i64 %43, 5, !dbg !1048
  br i1 %44, label %assert_end20, label %assert_fail19, !dbg !1048, !prof !18

assert_fail19:                                    ; preds = %assert_end18
  %45 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1048, !tbaa !19
  tail call void %45(ptr nonnull @.str.298), !dbg !1048
  br label %common.ret

assert_end20:                                     ; preds = %assert_end18
  %.not = icmp eq ptr %tvmgen_default_fused_reshape_1.p0.strides, null, !dbg !1048
  br i1 %.not, label %if_end, label %if_then, !dbg !1048, !prof !52

if_then:                                          ; preds = %assert_end20
  %46 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_1.p0.strides, i64 1, !dbg !1048
  %47 = load i64, ptr %46, align 8, !dbg !1048, !tbaa !1079
  %48 = and i64 %47, 4294967295, !dbg !1048
  %49 = icmp eq i64 %48, 25, !dbg !1048
  %50 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_1.p0.strides, i64 2, !dbg !1048
  %51 = load i64, ptr %50, align 8, !dbg !1048, !tbaa !1089
  %52 = and i64 %51, 4294967295, !dbg !1048
  %53 = icmp eq i64 %52, 5, !dbg !1048
  %54 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_1.p0.strides, i64 3, !dbg !1048
  %55 = load i64, ptr %54, align 8, !dbg !1048, !tbaa !1092
  %56 = and i64 %55, 4294967295, !dbg !1048
  %57 = icmp eq i64 %56, 1, !dbg !1048
  %58 = and i1 %53, %57, !dbg !1048
  %59 = and i1 %49, %58, !dbg !1048
  br i1 %59, label %if_end, label %assert_fail21, !dbg !1048, !prof !18

if_end:                                           ; preds = %if_then, %assert_end20
  %60 = getelementptr inbounds %1, ptr %p0, i64 0, i32 6, !dbg !1048
  %61 = load i64, ptr %60, align 8, !dbg !1048
  %62 = icmp eq i64 %61, 0, !dbg !1048
  br i1 %62, label %assert_end24, label %assert_fail23, !dbg !1048, !prof !18

assert_fail21:                                    ; preds = %if_then
  %63 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1048, !tbaa !19
  tail call void %63(ptr nonnull @.str.299), !dbg !1048
  br label %common.ret

assert_fail23:                                    ; preds = %if_end
  %64 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1048, !tbaa !19
  tail call void %64(ptr nonnull @.str.300), !dbg !1048
  br label %common.ret

assert_end24:                                     ; preds = %if_end
  %65 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 0, !dbg !1048
  %66 = load i32, ptr %65, align 4, !dbg !1048
  %67 = icmp eq i32 %66, 1, !dbg !1048
  br i1 %67, label %assert_end26, label %assert_fail25, !dbg !1048, !prof !18

assert_fail25:                                    ; preds = %assert_end24
  %68 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1048, !tbaa !19
  tail call void %68(ptr nonnull @.str.301), !dbg !1048
  br label %common.ret

assert_end26:                                     ; preds = %assert_end24
  %69 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 2, !dbg !1048
  %70 = load i32, ptr %69, align 4, !dbg !1048
  %71 = icmp eq i32 %70, 3, !dbg !1048
  br i1 %71, label %assert_end30, label %assert_fail27, !dbg !1048, !prof !18

assert_fail27:                                    ; preds = %assert_end26
  %72 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1048, !tbaa !19
  tail call void %72(ptr nonnull @.str.302), !dbg !1048
  br label %common.ret

assert_end30:                                     ; preds = %assert_end26
  %73 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 3, i32 2, !dbg !1048
  %74 = load i16, ptr %73, align 2, !dbg !1048
  %75 = icmp eq i16 %74, 1, !dbg !1048
  %76 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 3, i32 1, !dbg !1048
  %77 = load i8, ptr %76, align 1, !dbg !1048
  %78 = icmp eq i8 %77, 32, !dbg !1048
  %79 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 3, i32 0, !dbg !1048
  %80 = load i8, ptr %79, align 1, !dbg !1048
  %81 = icmp eq i8 %80, 2, !dbg !1048
  %82 = and i1 %78, %81, !dbg !1048
  %83 = and i1 %75, %82, !dbg !1048
  br i1 %83, label %assert_end32, label %assert_fail31, !dbg !1048, !prof !18

assert_fail31:                                    ; preds = %assert_end30
  %84 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1048, !tbaa !19
  tail call void %84(ptr nonnull @.str.303), !dbg !1048
  br label %common.ret

assert_end32:                                     ; preds = %assert_end30
  %85 = load i64, ptr %tvmgen_default_fused_reshape_1.T_reshape.shape, align 8, !dbg !1048, !tbaa !1094
  %86 = and i64 %85, 4294967295, !dbg !1048
  %87 = icmp eq i64 %86, 12, !dbg !1048
  br i1 %87, label %assert_end34, label %assert_fail33, !dbg !1048, !prof !18

assert_fail33:                                    ; preds = %assert_end32
  %88 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1048, !tbaa !19
  tail call void %88(ptr nonnull @.str.304), !dbg !1048
  br label %common.ret

assert_end34:                                     ; preds = %assert_end32
  %89 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_1.T_reshape.shape, i64 1, !dbg !1048
  %90 = load i64, ptr %89, align 8, !dbg !1048, !tbaa !1104
  %91 = and i64 %90, 4294967295, !dbg !1048
  %92 = icmp eq i64 %91, 5, !dbg !1048
  br i1 %92, label %assert_end36, label %assert_fail35, !dbg !1048, !prof !18

assert_fail35:                                    ; preds = %assert_end34
  %93 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1048, !tbaa !19
  tail call void %93(ptr nonnull @.str.305), !dbg !1048
  br label %common.ret

assert_end36:                                     ; preds = %assert_end34
  %94 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_1.T_reshape.shape, i64 2, !dbg !1048
  %95 = load i64, ptr %94, align 8, !dbg !1048, !tbaa !1106
  %96 = and i64 %95, 4294967295, !dbg !1048
  %97 = icmp eq i64 %96, 5, !dbg !1048
  br i1 %97, label %assert_end38, label %assert_fail37, !dbg !1048, !prof !18

assert_fail37:                                    ; preds = %assert_end36
  %98 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1048, !tbaa !19
  tail call void %98(ptr nonnull @.str.306), !dbg !1048
  br label %common.ret

assert_end38:                                     ; preds = %assert_end36
  %.not51 = icmp eq ptr %tvmgen_default_fused_reshape_1.T_reshape.strides, null, !dbg !1048
  br i1 %.not51, label %if_end40, label %if_then39, !dbg !1048, !prof !52

if_then39:                                        ; preds = %assert_end38
  %99 = load i64, ptr %tvmgen_default_fused_reshape_1.T_reshape.strides, align 8, !dbg !1048, !tbaa !1109
  %100 = and i64 %99, 4294967295, !dbg !1048
  %101 = icmp eq i64 %100, 25, !dbg !1048
  %102 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_1.T_reshape.strides, i64 1, !dbg !1048
  %103 = load i64, ptr %102, align 8, !dbg !1048, !tbaa !1119
  %104 = and i64 %103, 4294967295, !dbg !1048
  %105 = icmp eq i64 %104, 5, !dbg !1048
  %106 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_1.T_reshape.strides, i64 2, !dbg !1048
  %107 = load i64, ptr %106, align 8, !dbg !1048, !tbaa !1121
  %108 = and i64 %107, 4294967295, !dbg !1048
  %109 = icmp eq i64 %108, 1, !dbg !1048
  %110 = and i1 %105, %109, !dbg !1048
  %111 = and i1 %101, %110, !dbg !1048
  br i1 %111, label %if_end40, label %assert_fail41, !dbg !1048, !prof !18

if_end40:                                         ; preds = %if_then39, %assert_end38
  %112 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 6, !dbg !1048
  %113 = load i64, ptr %112, align 8, !dbg !1048
  %114 = icmp eq i64 %113, 0, !dbg !1048
  br i1 %114, label %assert_end44, label %assert_fail43, !dbg !1048, !prof !18

assert_fail41:                                    ; preds = %if_then39
  %115 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1048, !tbaa !19
  tail call void %115(ptr nonnull @.str.307), !dbg !1048
  br label %common.ret

assert_fail43:                                    ; preds = %if_end40
  %116 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1048, !tbaa !19
  tail call void %116(ptr nonnull @.str.308), !dbg !1048
  br label %common.ret

assert_end44:                                     ; preds = %if_end40
  %117 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 1, i32 0, !dbg !1048
  %118 = load i32, ptr %117, align 4, !dbg !1048
  %119 = icmp eq i32 %118, 1, !dbg !1048
  br i1 %119, label %assert_end46, label %assert_fail45, !dbg !1048, !prof !18

assert_fail45:                                    ; preds = %assert_end44
  %120 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1048, !tbaa !19
  tail call void %120(ptr nonnull @.str.309), !dbg !1048
  br label %common.ret

assert_end46:                                     ; preds = %assert_end44
  %121 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 1, i32 1, !dbg !1048
  %122 = load i32, ptr %121, align 4, !dbg !1048
  %123 = icmp eq i32 %dev_id, %122, !dbg !1048
  br i1 %123, label %assert_end48, label %assert_fail47, !dbg !1048, !prof !18

assert_fail47:                                    ; preds = %assert_end46
  %124 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1048, !tbaa !19
  tail call void %124(ptr nonnull @.str.310), !dbg !1048
  br label %common.ret

assert_end48:                                     ; preds = %assert_end46
  %125 = tail call fastcc i32 @tvmgen_default_fused_reshape_1_compute_(ptr %T_reshape49, ptr %p050), !dbg !1048
  br label %common.ret
}

define dllexport i32 @tvmgen_default_fused_reshape_add_add(ptr noalias nocapture readonly %args, ptr noalias nocapture readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !1124 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !1126, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !1127, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !1128, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !1129, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !1130, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !1131, metadata !DIExpression()), !dbg !1132
  %0 = icmp eq i32 %num_args, 4, !dbg !1132
  br i1 %0, label %assert_end, label %assert_fail, !dbg !1132, !prof !18

common.ret:                                       ; preds = %assert_end90, %assert_fail89, %assert_fail87, %assert_fail85, %assert_fail83, %assert_fail79, %assert_fail77, %assert_fail75, %assert_fail73, %assert_fail69, %assert_fail67, %assert_fail65, %assert_fail63, %assert_fail61, %assert_fail57, %assert_fail55, %assert_fail53, %assert_fail51, %assert_fail47, %assert_fail45, %assert_fail43, %assert_fail41, %assert_fail39, %assert_fail35, %assert_fail33, %assert_fail29, %assert_fail27, %assert_fail25, %assert_fail23, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail7, %assert_fail5, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail27 ], [ -1, %assert_fail29 ], [ -1, %assert_fail33 ], [ -1, %assert_fail35 ], [ -1, %assert_fail39 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail45 ], [ -1, %assert_fail47 ], [ -1, %assert_fail51 ], [ -1, %assert_fail53 ], [ -1, %assert_fail55 ], [ -1, %assert_fail57 ], [ -1, %assert_fail61 ], [ -1, %assert_fail63 ], [ -1, %assert_fail65 ], [ -1, %assert_fail67 ], [ -1, %assert_fail69 ], [ -1, %assert_fail73 ], [ -1, %assert_fail75 ], [ -1, %assert_fail77 ], [ -1, %assert_fail79 ], [ -1, %assert_fail83 ], [ -1, %assert_fail85 ], [ -1, %assert_fail87 ], [ -1, %assert_fail89 ], [ %203, %assert_end90 ]
  ret i32 %common.ret.op, !dbg !1132

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %1(ptr nonnull @.str.312), !dbg !1132
  br label %common.ret

assert_end:                                       ; preds = %entry
  %p0.code = load i32, ptr %arg_type_ids, align 4, !dbg !1132, !tbaa !1133
  %2 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !1132
  %p1.code = load i32, ptr %2, align 4, !dbg !1132, !tbaa !1144
  %3 = getelementptr inbounds i32, ptr %arg_type_ids, i64 2, !dbg !1132
  %p2.code = load i32, ptr %3, align 4, !dbg !1132, !tbaa !1146
  %4 = getelementptr inbounds i32, ptr %arg_type_ids, i64 3, !dbg !1132
  %T_add.code = load i32, ptr %4, align 4, !dbg !1132, !tbaa !1149
  %p0 = load ptr, ptr %args, align 8, !dbg !1132
  %5 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !1132
  %p1 = load ptr, ptr %5, align 8, !dbg !1132
  %6 = getelementptr inbounds %0, ptr %args, i64 2, !dbg !1132
  %p2 = load ptr, ptr %6, align 8, !dbg !1132
  %7 = getelementptr inbounds %0, ptr %args, i64 3, !dbg !1132
  %T_add = load ptr, ptr %7, align 8, !dbg !1132
  %p093 = load ptr, ptr %p0, align 8, !dbg !1132
  call void @llvm.assume(i1 true) [ "align"(ptr %p093, i64 64) ], !dbg !1132
  %8 = getelementptr inbounds %1, ptr %p0, i64 0, i32 4, !dbg !1132
  %tvmgen_default_fused_reshape_add_add.p0.shape = load ptr, ptr %8, align 8, !dbg !1132
  %9 = getelementptr inbounds %1, ptr %p0, i64 0, i32 5, !dbg !1132
  %tvmgen_default_fused_reshape_add_add.p0.strides = load ptr, ptr %9, align 8, !dbg !1132
  %10 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 1, !dbg !1132
  %dev_id = load i32, ptr %10, align 4, !dbg !1132
  %p192 = load ptr, ptr %p1, align 8, !dbg !1132
  call void @llvm.assume(i1 true) [ "align"(ptr %p192, i64 64) ], !dbg !1132
  %11 = getelementptr inbounds %1, ptr %p1, i64 0, i32 4, !dbg !1132
  %tvmgen_default_fused_reshape_add_add.p1.shape = load ptr, ptr %11, align 8, !dbg !1132
  %12 = getelementptr inbounds %1, ptr %p1, i64 0, i32 5, !dbg !1132
  %tvmgen_default_fused_reshape_add_add.p1.strides = load ptr, ptr %12, align 8, !dbg !1132
  %p294 = load ptr, ptr %p2, align 8, !dbg !1132
  call void @llvm.assume(i1 true) [ "align"(ptr %p294, i64 64) ], !dbg !1132
  %13 = getelementptr inbounds %1, ptr %p2, i64 0, i32 4, !dbg !1132
  %tvmgen_default_fused_reshape_add_add.p2.shape = load ptr, ptr %13, align 8, !dbg !1132
  %14 = getelementptr inbounds %1, ptr %p2, i64 0, i32 5, !dbg !1132
  %tvmgen_default_fused_reshape_add_add.p2.strides = load ptr, ptr %14, align 8, !dbg !1132
  %T_add91 = load ptr, ptr %T_add, align 8, !dbg !1132
  call void @llvm.assume(i1 true) [ "align"(ptr %T_add91, i64 64) ], !dbg !1132
  %15 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 4, !dbg !1132
  %tvmgen_default_fused_reshape_add_add.T_add.shape = load ptr, ptr %15, align 8, !dbg !1132
  %16 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 5, !dbg !1132
  %tvmgen_default_fused_reshape_add_add.T_add.strides = load ptr, ptr %16, align 8, !dbg !1132
  switch i32 %p0.code, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ], !dbg !1132

assert_fail5:                                     ; preds = %assert_end
  %17 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %17(ptr nonnull @.str.313), !dbg !1132
  br label %common.ret

assert_end6:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %p1.code, label %assert_fail7 [
    i32 13, label %assert_end8
    i32 7, label %assert_end8
    i32 4, label %assert_end8
    i32 3, label %assert_end8
  ], !dbg !1132

assert_fail7:                                     ; preds = %assert_end6
  %18 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %18(ptr nonnull @.str.314), !dbg !1132
  br label %common.ret

assert_end8:                                      ; preds = %assert_end6, %assert_end6, %assert_end6, %assert_end6
  switch i32 %p2.code, label %assert_fail9 [
    i32 13, label %assert_end10
    i32 7, label %assert_end10
    i32 4, label %assert_end10
    i32 3, label %assert_end10
  ], !dbg !1132

assert_fail9:                                     ; preds = %assert_end8
  %19 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %19(ptr nonnull @.str.315), !dbg !1132
  br label %common.ret

assert_end10:                                     ; preds = %assert_end8, %assert_end8, %assert_end8, %assert_end8
  switch i32 %T_add.code, label %assert_fail11 [
    i32 13, label %assert_end12
    i32 7, label %assert_end12
    i32 4, label %assert_end12
    i32 3, label %assert_end12
  ], !dbg !1132

assert_fail11:                                    ; preds = %assert_end10
  %20 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %20(ptr nonnull @.str.316), !dbg !1132
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10, %assert_end10, %assert_end10, %assert_end10
  %21 = getelementptr inbounds %1, ptr %p0, i64 0, i32 2, !dbg !1132
  %22 = load i32, ptr %21, align 4, !dbg !1132
  %23 = icmp eq i32 %22, 2, !dbg !1132
  br i1 %23, label %assert_end16, label %assert_fail13, !dbg !1132, !prof !18

assert_fail13:                                    ; preds = %assert_end12
  %24 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %24(ptr nonnull @.str.317), !dbg !1132
  br label %common.ret

assert_end16:                                     ; preds = %assert_end12
  %25 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 2, !dbg !1132
  %26 = load i16, ptr %25, align 2, !dbg !1132
  %27 = icmp eq i16 %26, 1, !dbg !1132
  %28 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 1, !dbg !1132
  %29 = load i8, ptr %28, align 1, !dbg !1132
  %30 = icmp eq i8 %29, 32, !dbg !1132
  %31 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 0, !dbg !1132
  %32 = load i8, ptr %31, align 1, !dbg !1132
  %33 = icmp eq i8 %32, 2, !dbg !1132
  %34 = and i1 %30, %33, !dbg !1132
  %35 = and i1 %27, %34, !dbg !1132
  br i1 %35, label %assert_end18, label %assert_fail17, !dbg !1132, !prof !18

assert_fail17:                                    ; preds = %assert_end16
  %36 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %36(ptr nonnull @.str.318), !dbg !1132
  br label %common.ret

assert_end18:                                     ; preds = %assert_end16
  %37 = load i64, ptr %tvmgen_default_fused_reshape_add_add.p0.shape, align 8, !dbg !1132, !tbaa !1151
  %38 = and i64 %37, 4294967295, !dbg !1132
  %39 = icmp eq i64 %38, 5, !dbg !1132
  br i1 %39, label %assert_end20, label %assert_fail19, !dbg !1132, !prof !18

assert_fail19:                                    ; preds = %assert_end18
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %40(ptr nonnull @.str.319), !dbg !1132
  br label %common.ret

assert_end20:                                     ; preds = %assert_end18
  %41 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_add.p0.shape, i64 1, !dbg !1132
  %42 = load i64, ptr %41, align 8, !dbg !1132, !tbaa !1161
  %43 = and i64 %42, 4294967295, !dbg !1132
  %44 = icmp eq i64 %43, 768, !dbg !1132
  br i1 %44, label %assert_end22, label %assert_fail21, !dbg !1132, !prof !18

assert_fail21:                                    ; preds = %assert_end20
  %45 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %45(ptr nonnull @.str.320), !dbg !1132
  br label %common.ret

assert_end22:                                     ; preds = %assert_end20
  %.not = icmp eq ptr %tvmgen_default_fused_reshape_add_add.p0.strides, null, !dbg !1132
  br i1 %.not, label %if_end, label %if_then, !dbg !1132, !prof !52

if_then:                                          ; preds = %assert_end22
  %46 = load i64, ptr %tvmgen_default_fused_reshape_add_add.p0.strides, align 8, !dbg !1132, !tbaa !1163
  %47 = and i64 %46, 4294967295, !dbg !1132
  %48 = icmp eq i64 %47, 768, !dbg !1132
  %49 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_add.p0.strides, i64 1, !dbg !1132
  %50 = load i64, ptr %49, align 8, !dbg !1132, !tbaa !1173
  %51 = and i64 %50, 4294967295, !dbg !1132
  %52 = icmp eq i64 %51, 1, !dbg !1132
  %53 = and i1 %48, %52, !dbg !1132
  br i1 %53, label %if_end, label %assert_fail23, !dbg !1132, !prof !18

if_end:                                           ; preds = %if_then, %assert_end22
  %54 = getelementptr inbounds %1, ptr %p0, i64 0, i32 6, !dbg !1132
  %55 = load i64, ptr %54, align 8, !dbg !1132
  %56 = icmp eq i64 %55, 0, !dbg !1132
  br i1 %56, label %assert_end26, label %assert_fail25, !dbg !1132, !prof !18

assert_fail23:                                    ; preds = %if_then
  %57 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %57(ptr nonnull @.str.321), !dbg !1132
  br label %common.ret

assert_fail25:                                    ; preds = %if_end
  %58 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %58(ptr nonnull @.str.322), !dbg !1132
  br label %common.ret

assert_end26:                                     ; preds = %if_end
  %59 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 0, !dbg !1132
  %60 = load i32, ptr %59, align 4, !dbg !1132
  %61 = icmp eq i32 %60, 1, !dbg !1132
  br i1 %61, label %assert_end28, label %assert_fail27, !dbg !1132, !prof !18

assert_fail27:                                    ; preds = %assert_end26
  %62 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %62(ptr nonnull @.str.323), !dbg !1132
  br label %common.ret

assert_end28:                                     ; preds = %assert_end26
  %63 = getelementptr inbounds %1, ptr %p1, i64 0, i32 2, !dbg !1132
  %64 = load i32, ptr %63, align 4, !dbg !1132
  %65 = icmp eq i32 %64, 1, !dbg !1132
  br i1 %65, label %assert_end32, label %assert_fail29, !dbg !1132, !prof !18

assert_fail29:                                    ; preds = %assert_end28
  %66 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %66(ptr nonnull @.str.324), !dbg !1132
  br label %common.ret

assert_end32:                                     ; preds = %assert_end28
  %67 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 2, !dbg !1132
  %68 = load i16, ptr %67, align 2, !dbg !1132
  %69 = icmp eq i16 %68, 1, !dbg !1132
  %70 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 1, !dbg !1132
  %71 = load i8, ptr %70, align 1, !dbg !1132
  %72 = icmp eq i8 %71, 32, !dbg !1132
  %73 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 0, !dbg !1132
  %74 = load i8, ptr %73, align 1, !dbg !1132
  %75 = icmp eq i8 %74, 2, !dbg !1132
  %76 = and i1 %72, %75, !dbg !1132
  %77 = and i1 %69, %76, !dbg !1132
  br i1 %77, label %assert_end34, label %assert_fail33, !dbg !1132, !prof !18

assert_fail33:                                    ; preds = %assert_end32
  %78 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %78(ptr nonnull @.str.325), !dbg !1132
  br label %common.ret

assert_end34:                                     ; preds = %assert_end32
  %79 = load i64, ptr %tvmgen_default_fused_reshape_add_add.p1.shape, align 8, !dbg !1132, !tbaa !1175
  %80 = and i64 %79, 4294967295, !dbg !1132
  %81 = icmp eq i64 %80, 768, !dbg !1132
  br i1 %81, label %assert_end36, label %assert_fail35, !dbg !1132, !prof !18

assert_fail35:                                    ; preds = %assert_end34
  %82 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %82(ptr nonnull @.str.326), !dbg !1132
  br label %common.ret

assert_end36:                                     ; preds = %assert_end34
  %.not95 = icmp eq ptr %tvmgen_default_fused_reshape_add_add.p1.strides, null, !dbg !1132
  br i1 %.not95, label %if_end38, label %if_then37, !dbg !1132, !prof !52

if_then37:                                        ; preds = %assert_end36
  %83 = load i64, ptr %tvmgen_default_fused_reshape_add_add.p1.strides, align 8, !dbg !1132, !tbaa !1185
  %84 = and i64 %83, 4294967295, !dbg !1132
  %85 = icmp eq i64 %84, 1, !dbg !1132
  br i1 %85, label %if_end38, label %assert_fail39, !dbg !1132, !prof !18

if_end38:                                         ; preds = %if_then37, %assert_end36
  %86 = getelementptr inbounds %1, ptr %p1, i64 0, i32 6, !dbg !1132
  %87 = load i64, ptr %86, align 8, !dbg !1132
  %88 = icmp eq i64 %87, 0, !dbg !1132
  br i1 %88, label %assert_end42, label %assert_fail41, !dbg !1132, !prof !18

assert_fail39:                                    ; preds = %if_then37
  %89 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %89(ptr nonnull @.str.327), !dbg !1132
  br label %common.ret

assert_fail41:                                    ; preds = %if_end38
  %90 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %90(ptr nonnull @.str.328), !dbg !1132
  br label %common.ret

assert_end42:                                     ; preds = %if_end38
  %91 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 0, !dbg !1132
  %92 = load i32, ptr %91, align 4, !dbg !1132
  %93 = icmp eq i32 %92, 1, !dbg !1132
  br i1 %93, label %assert_end44, label %assert_fail43, !dbg !1132, !prof !18

assert_fail43:                                    ; preds = %assert_end42
  %94 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %94(ptr nonnull @.str.329), !dbg !1132
  br label %common.ret

assert_end44:                                     ; preds = %assert_end42
  %95 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 1, !dbg !1132
  %96 = load i32, ptr %95, align 4, !dbg !1132
  %97 = icmp eq i32 %dev_id, %96, !dbg !1132
  br i1 %97, label %assert_end46, label %assert_fail45, !dbg !1132, !prof !18

assert_fail45:                                    ; preds = %assert_end44
  %98 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %98(ptr nonnull @.str.330), !dbg !1132
  br label %common.ret

assert_end46:                                     ; preds = %assert_end44
  %99 = getelementptr inbounds %1, ptr %p2, i64 0, i32 2, !dbg !1132
  %100 = load i32, ptr %99, align 4, !dbg !1132
  %101 = icmp eq i32 %100, 3, !dbg !1132
  br i1 %101, label %assert_end50, label %assert_fail47, !dbg !1132, !prof !18

assert_fail47:                                    ; preds = %assert_end46
  %102 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %102(ptr nonnull @.str.331), !dbg !1132
  br label %common.ret

assert_end50:                                     ; preds = %assert_end46
  %103 = getelementptr inbounds %1, ptr %p2, i64 0, i32 3, i32 2, !dbg !1132
  %104 = load i16, ptr %103, align 2, !dbg !1132
  %105 = icmp eq i16 %104, 1, !dbg !1132
  %106 = getelementptr inbounds %1, ptr %p2, i64 0, i32 3, i32 1, !dbg !1132
  %107 = load i8, ptr %106, align 1, !dbg !1132
  %108 = icmp eq i8 %107, 32, !dbg !1132
  %109 = getelementptr inbounds %1, ptr %p2, i64 0, i32 3, i32 0, !dbg !1132
  %110 = load i8, ptr %109, align 1, !dbg !1132
  %111 = icmp eq i8 %110, 2, !dbg !1132
  %112 = and i1 %108, %111, !dbg !1132
  %113 = and i1 %105, %112, !dbg !1132
  br i1 %113, label %assert_end52, label %assert_fail51, !dbg !1132, !prof !18

assert_fail51:                                    ; preds = %assert_end50
  %114 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %114(ptr nonnull @.str.332), !dbg !1132
  br label %common.ret

assert_end52:                                     ; preds = %assert_end50
  %115 = load i64, ptr %tvmgen_default_fused_reshape_add_add.p2.shape, align 8, !dbg !1132, !tbaa !1195
  %116 = and i64 %115, 4294967295, !dbg !1132
  %117 = icmp eq i64 %116, 1, !dbg !1132
  br i1 %117, label %assert_end54, label %assert_fail53, !dbg !1132, !prof !18

assert_fail53:                                    ; preds = %assert_end52
  %118 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %118(ptr nonnull @.str.333), !dbg !1132
  br label %common.ret

assert_end54:                                     ; preds = %assert_end52
  %119 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_add.p2.shape, i64 1, !dbg !1132
  %120 = load i64, ptr %119, align 8, !dbg !1132, !tbaa !1205
  %121 = and i64 %120, 4294967295, !dbg !1132
  %122 = icmp eq i64 %121, 5, !dbg !1132
  br i1 %122, label %assert_end56, label %assert_fail55, !dbg !1132, !prof !18

assert_fail55:                                    ; preds = %assert_end54
  %123 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %123(ptr nonnull @.str.334), !dbg !1132
  br label %common.ret

assert_end56:                                     ; preds = %assert_end54
  %124 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_add.p2.shape, i64 2, !dbg !1132
  %125 = load i64, ptr %124, align 8, !dbg !1132, !tbaa !1207
  %126 = and i64 %125, 4294967295, !dbg !1132
  %127 = icmp eq i64 %126, 768, !dbg !1132
  br i1 %127, label %assert_end58, label %assert_fail57, !dbg !1132, !prof !18

assert_fail57:                                    ; preds = %assert_end56
  %128 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %128(ptr nonnull @.str.335), !dbg !1132
  br label %common.ret

assert_end58:                                     ; preds = %assert_end56
  %.not96 = icmp eq ptr %tvmgen_default_fused_reshape_add_add.p2.strides, null, !dbg !1132
  br i1 %.not96, label %if_end60, label %if_then59, !dbg !1132, !prof !52

if_then59:                                        ; preds = %assert_end58
  %129 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_add.p2.strides, i64 1, !dbg !1132
  %130 = load i64, ptr %129, align 8, !dbg !1132, !tbaa !1210
  %131 = and i64 %130, 4294967295, !dbg !1132
  %132 = icmp eq i64 %131, 768, !dbg !1132
  %133 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_add.p2.strides, i64 2, !dbg !1132
  %134 = load i64, ptr %133, align 8, !dbg !1132, !tbaa !1220
  %135 = and i64 %134, 4294967295, !dbg !1132
  %136 = icmp eq i64 %135, 1, !dbg !1132
  %137 = and i1 %132, %136, !dbg !1132
  br i1 %137, label %if_end60, label %assert_fail61, !dbg !1132, !prof !18

if_end60:                                         ; preds = %if_then59, %assert_end58
  %138 = getelementptr inbounds %1, ptr %p2, i64 0, i32 6, !dbg !1132
  %139 = load i64, ptr %138, align 8, !dbg !1132
  %140 = icmp eq i64 %139, 0, !dbg !1132
  br i1 %140, label %assert_end64, label %assert_fail63, !dbg !1132, !prof !18

assert_fail61:                                    ; preds = %if_then59
  %141 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %141(ptr nonnull @.str.336), !dbg !1132
  br label %common.ret

assert_fail63:                                    ; preds = %if_end60
  %142 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %142(ptr nonnull @.str.337), !dbg !1132
  br label %common.ret

assert_end64:                                     ; preds = %if_end60
  %143 = getelementptr inbounds %1, ptr %p2, i64 0, i32 1, i32 0, !dbg !1132
  %144 = load i32, ptr %143, align 4, !dbg !1132
  %145 = icmp eq i32 %144, 1, !dbg !1132
  br i1 %145, label %assert_end66, label %assert_fail65, !dbg !1132, !prof !18

assert_fail65:                                    ; preds = %assert_end64
  %146 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %146(ptr nonnull @.str.338), !dbg !1132
  br label %common.ret

assert_end66:                                     ; preds = %assert_end64
  %147 = getelementptr inbounds %1, ptr %p2, i64 0, i32 1, i32 1, !dbg !1132
  %148 = load i32, ptr %147, align 4, !dbg !1132
  %149 = icmp eq i32 %dev_id, %148, !dbg !1132
  br i1 %149, label %assert_end68, label %assert_fail67, !dbg !1132, !prof !18

assert_fail67:                                    ; preds = %assert_end66
  %150 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %150(ptr nonnull @.str.339), !dbg !1132
  br label %common.ret

assert_end68:                                     ; preds = %assert_end66
  %151 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 2, !dbg !1132
  %152 = load i32, ptr %151, align 4, !dbg !1132
  %153 = icmp eq i32 %152, 3, !dbg !1132
  br i1 %153, label %assert_end72, label %assert_fail69, !dbg !1132, !prof !18

assert_fail69:                                    ; preds = %assert_end68
  %154 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %154(ptr nonnull @.str.340), !dbg !1132
  br label %common.ret

assert_end72:                                     ; preds = %assert_end68
  %155 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 3, i32 2, !dbg !1132
  %156 = load i16, ptr %155, align 2, !dbg !1132
  %157 = icmp eq i16 %156, 1, !dbg !1132
  %158 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 3, i32 1, !dbg !1132
  %159 = load i8, ptr %158, align 1, !dbg !1132
  %160 = icmp eq i8 %159, 32, !dbg !1132
  %161 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 3, i32 0, !dbg !1132
  %162 = load i8, ptr %161, align 1, !dbg !1132
  %163 = icmp eq i8 %162, 2, !dbg !1132
  %164 = and i1 %160, %163, !dbg !1132
  %165 = and i1 %157, %164, !dbg !1132
  br i1 %165, label %assert_end74, label %assert_fail73, !dbg !1132, !prof !18

assert_fail73:                                    ; preds = %assert_end72
  %166 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %166(ptr nonnull @.str.341), !dbg !1132
  br label %common.ret

assert_end74:                                     ; preds = %assert_end72
  %167 = load i64, ptr %tvmgen_default_fused_reshape_add_add.T_add.shape, align 8, !dbg !1132, !tbaa !1223
  %168 = and i64 %167, 4294967295, !dbg !1132
  %169 = icmp eq i64 %168, 1, !dbg !1132
  br i1 %169, label %assert_end76, label %assert_fail75, !dbg !1132, !prof !18

assert_fail75:                                    ; preds = %assert_end74
  %170 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %170(ptr nonnull @.str.342), !dbg !1132
  br label %common.ret

assert_end76:                                     ; preds = %assert_end74
  %171 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_add.T_add.shape, i64 1, !dbg !1132
  %172 = load i64, ptr %171, align 8, !dbg !1132, !tbaa !1233
  %173 = and i64 %172, 4294967295, !dbg !1132
  %174 = icmp eq i64 %173, 5, !dbg !1132
  br i1 %174, label %assert_end78, label %assert_fail77, !dbg !1132, !prof !18

assert_fail77:                                    ; preds = %assert_end76
  %175 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %175(ptr nonnull @.str.343), !dbg !1132
  br label %common.ret

assert_end78:                                     ; preds = %assert_end76
  %176 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_add.T_add.shape, i64 2, !dbg !1132
  %177 = load i64, ptr %176, align 8, !dbg !1132, !tbaa !1235
  %178 = and i64 %177, 4294967295, !dbg !1132
  %179 = icmp eq i64 %178, 768, !dbg !1132
  br i1 %179, label %assert_end80, label %assert_fail79, !dbg !1132, !prof !18

assert_fail79:                                    ; preds = %assert_end78
  %180 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %180(ptr nonnull @.str.344), !dbg !1132
  br label %common.ret

assert_end80:                                     ; preds = %assert_end78
  %.not97 = icmp eq ptr %tvmgen_default_fused_reshape_add_add.T_add.strides, null, !dbg !1132
  br i1 %.not97, label %if_end82, label %if_then81, !dbg !1132, !prof !52

if_then81:                                        ; preds = %assert_end80
  %181 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_add.T_add.strides, i64 1, !dbg !1132
  %182 = load i64, ptr %181, align 8, !dbg !1132, !tbaa !1238
  %183 = and i64 %182, 4294967295, !dbg !1132
  %184 = icmp eq i64 %183, 768, !dbg !1132
  %185 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_add.T_add.strides, i64 2, !dbg !1132
  %186 = load i64, ptr %185, align 8, !dbg !1132, !tbaa !1248
  %187 = and i64 %186, 4294967295, !dbg !1132
  %188 = icmp eq i64 %187, 1, !dbg !1132
  %189 = and i1 %184, %188, !dbg !1132
  br i1 %189, label %if_end82, label %assert_fail83, !dbg !1132, !prof !18

if_end82:                                         ; preds = %if_then81, %assert_end80
  %190 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 6, !dbg !1132
  %191 = load i64, ptr %190, align 8, !dbg !1132
  %192 = icmp eq i64 %191, 0, !dbg !1132
  br i1 %192, label %assert_end86, label %assert_fail85, !dbg !1132, !prof !18

assert_fail83:                                    ; preds = %if_then81
  %193 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %193(ptr nonnull @.str.345), !dbg !1132
  br label %common.ret

assert_fail85:                                    ; preds = %if_end82
  %194 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %194(ptr nonnull @.str.346), !dbg !1132
  br label %common.ret

assert_end86:                                     ; preds = %if_end82
  %195 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 1, i32 0, !dbg !1132
  %196 = load i32, ptr %195, align 4, !dbg !1132
  %197 = icmp eq i32 %196, 1, !dbg !1132
  br i1 %197, label %assert_end88, label %assert_fail87, !dbg !1132, !prof !18

assert_fail87:                                    ; preds = %assert_end86
  %198 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %198(ptr nonnull @.str.347), !dbg !1132
  br label %common.ret

assert_end88:                                     ; preds = %assert_end86
  %199 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 1, i32 1, !dbg !1132
  %200 = load i32, ptr %199, align 4, !dbg !1132
  %201 = icmp eq i32 %dev_id, %200, !dbg !1132
  br i1 %201, label %assert_end90, label %assert_fail89, !dbg !1132, !prof !18

assert_fail89:                                    ; preds = %assert_end88
  %202 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1132, !tbaa !19
  tail call void %202(ptr nonnull @.str.348), !dbg !1132
  br label %common.ret

assert_end90:                                     ; preds = %assert_end88
  %203 = tail call fastcc i32 @tvmgen_default_fused_reshape_add_add_compute_(ptr %T_add91, ptr %p192, ptr %p093, ptr %p294), !dbg !1132
  br label %common.ret
}

define dllexport i32 @tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape(ptr noalias nocapture readonly %args, ptr noalias nocapture readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !1251 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !1253, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !1254, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !1255, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !1256, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !1257, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !1258, metadata !DIExpression()), !dbg !1259
  %0 = icmp eq i32 %num_args, 3, !dbg !1259
  br i1 %0, label %assert_end, label %assert_fail, !dbg !1259, !prof !18

common.ret:                                       ; preds = %assert_end63, %assert_fail62, %assert_fail60, %assert_fail58, %assert_fail56, %assert_fail52, %assert_fail50, %assert_fail48, %assert_fail44, %assert_fail42, %assert_fail40, %assert_fail38, %assert_fail36, %assert_fail32, %assert_fail30, %assert_fail26, %assert_fail24, %assert_fail22, %assert_fail20, %assert_fail18, %assert_fail16, %assert_fail14, %assert_fail10, %assert_fail8, %assert_fail6, %assert_fail4, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail4 ], [ -1, %assert_fail6 ], [ -1, %assert_fail8 ], [ -1, %assert_fail10 ], [ -1, %assert_fail14 ], [ -1, %assert_fail16 ], [ -1, %assert_fail18 ], [ -1, %assert_fail20 ], [ -1, %assert_fail22 ], [ -1, %assert_fail24 ], [ -1, %assert_fail26 ], [ -1, %assert_fail30 ], [ -1, %assert_fail32 ], [ -1, %assert_fail36 ], [ -1, %assert_fail38 ], [ -1, %assert_fail40 ], [ -1, %assert_fail42 ], [ -1, %assert_fail44 ], [ -1, %assert_fail48 ], [ -1, %assert_fail50 ], [ -1, %assert_fail52 ], [ -1, %assert_fail56 ], [ -1, %assert_fail58 ], [ -1, %assert_fail60 ], [ -1, %assert_fail62 ], [ %140, %assert_end63 ]
  ret i32 %common.ret.op, !dbg !1259

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %1(ptr nonnull @.str.350), !dbg !1259
  br label %common.ret

assert_end:                                       ; preds = %entry
  %p0.code = load i32, ptr %arg_type_ids, align 4, !dbg !1259, !tbaa !1260
  %2 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !1259
  %p1.code = load i32, ptr %2, align 4, !dbg !1259, !tbaa !1271
  %3 = getelementptr inbounds i32, ptr %arg_type_ids, i64 2, !dbg !1259
  %T_reshape.code = load i32, ptr %3, align 4, !dbg !1259, !tbaa !1273
  %p0 = load ptr, ptr %args, align 8, !dbg !1259
  %4 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !1259
  %p1 = load ptr, ptr %4, align 8, !dbg !1259
  %5 = getelementptr inbounds %0, ptr %args, i64 2, !dbg !1259
  %T_reshape = load ptr, ptr %5, align 8, !dbg !1259
  %p066 = load ptr, ptr %p0, align 8, !dbg !1259
  call void @llvm.assume(i1 true) [ "align"(ptr %p066, i64 64) ], !dbg !1259
  %6 = getelementptr inbounds %1, ptr %p0, i64 0, i32 4, !dbg !1259
  %tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p0.shape = load ptr, ptr %6, align 8, !dbg !1259
  %7 = getelementptr inbounds %1, ptr %p0, i64 0, i32 5, !dbg !1259
  %tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p0.strides = load ptr, ptr %7, align 8, !dbg !1259
  %8 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 1, !dbg !1259
  %dev_id = load i32, ptr %8, align 4, !dbg !1259
  %p165 = load ptr, ptr %p1, align 8, !dbg !1259
  call void @llvm.assume(i1 true) [ "align"(ptr %p165, i64 64) ], !dbg !1259
  %9 = getelementptr inbounds %1, ptr %p1, i64 0, i32 4, !dbg !1259
  %tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p1.shape = load ptr, ptr %9, align 8, !dbg !1259
  %10 = getelementptr inbounds %1, ptr %p1, i64 0, i32 5, !dbg !1259
  %tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p1.strides = load ptr, ptr %10, align 8, !dbg !1259
  %T_reshape64 = load ptr, ptr %T_reshape, align 8, !dbg !1259
  call void @llvm.assume(i1 true) [ "align"(ptr %T_reshape64, i64 64) ], !dbg !1259
  %11 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 4, !dbg !1259
  %tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.T_reshape.shape = load ptr, ptr %11, align 8, !dbg !1259
  %12 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 5, !dbg !1259
  %tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.T_reshape.strides = load ptr, ptr %12, align 8, !dbg !1259
  switch i32 %p0.code, label %assert_fail4 [
    i32 13, label %assert_end5
    i32 7, label %assert_end5
    i32 4, label %assert_end5
    i32 3, label %assert_end5
  ], !dbg !1259

assert_fail4:                                     ; preds = %assert_end
  %13 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %13(ptr nonnull @.str.351), !dbg !1259
  br label %common.ret

assert_end5:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %p1.code, label %assert_fail6 [
    i32 13, label %assert_end7
    i32 7, label %assert_end7
    i32 4, label %assert_end7
    i32 3, label %assert_end7
  ], !dbg !1259

assert_fail6:                                     ; preds = %assert_end5
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %14(ptr nonnull @.str.352), !dbg !1259
  br label %common.ret

assert_end7:                                      ; preds = %assert_end5, %assert_end5, %assert_end5, %assert_end5
  switch i32 %T_reshape.code, label %assert_fail8 [
    i32 13, label %assert_end9
    i32 7, label %assert_end9
    i32 4, label %assert_end9
    i32 3, label %assert_end9
  ], !dbg !1259

assert_fail8:                                     ; preds = %assert_end7
  %15 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %15(ptr nonnull @.str.353), !dbg !1259
  br label %common.ret

assert_end9:                                      ; preds = %assert_end7, %assert_end7, %assert_end7, %assert_end7
  %16 = getelementptr inbounds %1, ptr %p0, i64 0, i32 2, !dbg !1259
  %17 = load i32, ptr %16, align 4, !dbg !1259
  %18 = icmp eq i32 %17, 2, !dbg !1259
  br i1 %18, label %assert_end13, label %assert_fail10, !dbg !1259, !prof !18

assert_fail10:                                    ; preds = %assert_end9
  %19 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %19(ptr nonnull @.str.354), !dbg !1259
  br label %common.ret

assert_end13:                                     ; preds = %assert_end9
  %20 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 2, !dbg !1259
  %21 = load i16, ptr %20, align 2, !dbg !1259
  %22 = icmp eq i16 %21, 1, !dbg !1259
  %23 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 1, !dbg !1259
  %24 = load i8, ptr %23, align 1, !dbg !1259
  %25 = icmp eq i8 %24, 32, !dbg !1259
  %26 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 0, !dbg !1259
  %27 = load i8, ptr %26, align 1, !dbg !1259
  %28 = icmp eq i8 %27, 2, !dbg !1259
  %29 = and i1 %25, %28, !dbg !1259
  %30 = and i1 %22, %29, !dbg !1259
  br i1 %30, label %assert_end15, label %assert_fail14, !dbg !1259, !prof !18

assert_fail14:                                    ; preds = %assert_end13
  %31 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %31(ptr nonnull @.str.355), !dbg !1259
  br label %common.ret

assert_end15:                                     ; preds = %assert_end13
  %32 = load i64, ptr %tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p0.shape, align 8, !dbg !1259, !tbaa !1276
  %33 = and i64 %32, 4294967295, !dbg !1259
  %34 = icmp eq i64 %33, 5, !dbg !1259
  br i1 %34, label %assert_end17, label %assert_fail16, !dbg !1259, !prof !18

assert_fail16:                                    ; preds = %assert_end15
  %35 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %35(ptr nonnull @.str.356), !dbg !1259
  br label %common.ret

assert_end17:                                     ; preds = %assert_end15
  %36 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p0.shape, i64 1, !dbg !1259
  %37 = load i64, ptr %36, align 8, !dbg !1259, !tbaa !1286
  %38 = and i64 %37, 4294967295, !dbg !1259
  %39 = icmp eq i64 %38, 3072, !dbg !1259
  br i1 %39, label %assert_end19, label %assert_fail18, !dbg !1259, !prof !18

assert_fail18:                                    ; preds = %assert_end17
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %40(ptr nonnull @.str.357), !dbg !1259
  br label %common.ret

assert_end19:                                     ; preds = %assert_end17
  %.not = icmp eq ptr %tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p0.strides, null, !dbg !1259
  br i1 %.not, label %if_end, label %if_then, !dbg !1259, !prof !52

if_then:                                          ; preds = %assert_end19
  %41 = load i64, ptr %tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p0.strides, align 8, !dbg !1259, !tbaa !1288
  %42 = and i64 %41, 4294967295, !dbg !1259
  %43 = icmp eq i64 %42, 3072, !dbg !1259
  %44 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p0.strides, i64 1, !dbg !1259
  %45 = load i64, ptr %44, align 8, !dbg !1259, !tbaa !1298
  %46 = and i64 %45, 4294967295, !dbg !1259
  %47 = icmp eq i64 %46, 1, !dbg !1259
  %48 = and i1 %43, %47, !dbg !1259
  br i1 %48, label %if_end, label %assert_fail20, !dbg !1259, !prof !18

if_end:                                           ; preds = %if_then, %assert_end19
  %49 = getelementptr inbounds %1, ptr %p0, i64 0, i32 6, !dbg !1259
  %50 = load i64, ptr %49, align 8, !dbg !1259
  %51 = icmp eq i64 %50, 0, !dbg !1259
  br i1 %51, label %assert_end23, label %assert_fail22, !dbg !1259, !prof !18

assert_fail20:                                    ; preds = %if_then
  %52 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %52(ptr nonnull @.str.358), !dbg !1259
  br label %common.ret

assert_fail22:                                    ; preds = %if_end
  %53 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %53(ptr nonnull @.str.359), !dbg !1259
  br label %common.ret

assert_end23:                                     ; preds = %if_end
  %54 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 0, !dbg !1259
  %55 = load i32, ptr %54, align 4, !dbg !1259
  %56 = icmp eq i32 %55, 1, !dbg !1259
  br i1 %56, label %assert_end25, label %assert_fail24, !dbg !1259, !prof !18

assert_fail24:                                    ; preds = %assert_end23
  %57 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %57(ptr nonnull @.str.360), !dbg !1259
  br label %common.ret

assert_end25:                                     ; preds = %assert_end23
  %58 = getelementptr inbounds %1, ptr %p1, i64 0, i32 2, !dbg !1259
  %59 = load i32, ptr %58, align 4, !dbg !1259
  %60 = icmp eq i32 %59, 1, !dbg !1259
  br i1 %60, label %assert_end29, label %assert_fail26, !dbg !1259, !prof !18

assert_fail26:                                    ; preds = %assert_end25
  %61 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %61(ptr nonnull @.str.361), !dbg !1259
  br label %common.ret

assert_end29:                                     ; preds = %assert_end25
  %62 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 2, !dbg !1259
  %63 = load i16, ptr %62, align 2, !dbg !1259
  %64 = icmp eq i16 %63, 1, !dbg !1259
  %65 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 1, !dbg !1259
  %66 = load i8, ptr %65, align 1, !dbg !1259
  %67 = icmp eq i8 %66, 32, !dbg !1259
  %68 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 0, !dbg !1259
  %69 = load i8, ptr %68, align 1, !dbg !1259
  %70 = icmp eq i8 %69, 2, !dbg !1259
  %71 = and i1 %67, %70, !dbg !1259
  %72 = and i1 %64, %71, !dbg !1259
  br i1 %72, label %assert_end31, label %assert_fail30, !dbg !1259, !prof !18

assert_fail30:                                    ; preds = %assert_end29
  %73 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %73(ptr nonnull @.str.362), !dbg !1259
  br label %common.ret

assert_end31:                                     ; preds = %assert_end29
  %74 = load i64, ptr %tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p1.shape, align 8, !dbg !1259, !tbaa !1300
  %75 = and i64 %74, 4294967295, !dbg !1259
  %76 = icmp eq i64 %75, 3072, !dbg !1259
  br i1 %76, label %assert_end33, label %assert_fail32, !dbg !1259, !prof !18

assert_fail32:                                    ; preds = %assert_end31
  %77 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %77(ptr nonnull @.str.363), !dbg !1259
  br label %common.ret

assert_end33:                                     ; preds = %assert_end31
  %.not67 = icmp eq ptr %tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p1.strides, null, !dbg !1259
  br i1 %.not67, label %if_end35, label %if_then34, !dbg !1259, !prof !52

if_then34:                                        ; preds = %assert_end33
  %78 = load i64, ptr %tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.p1.strides, align 8, !dbg !1259, !tbaa !1310
  %79 = and i64 %78, 4294967295, !dbg !1259
  %80 = icmp eq i64 %79, 1, !dbg !1259
  br i1 %80, label %if_end35, label %assert_fail36, !dbg !1259, !prof !18

if_end35:                                         ; preds = %if_then34, %assert_end33
  %81 = getelementptr inbounds %1, ptr %p1, i64 0, i32 6, !dbg !1259
  %82 = load i64, ptr %81, align 8, !dbg !1259
  %83 = icmp eq i64 %82, 0, !dbg !1259
  br i1 %83, label %assert_end39, label %assert_fail38, !dbg !1259, !prof !18

assert_fail36:                                    ; preds = %if_then34
  %84 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %84(ptr nonnull @.str.364), !dbg !1259
  br label %common.ret

assert_fail38:                                    ; preds = %if_end35
  %85 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %85(ptr nonnull @.str.365), !dbg !1259
  br label %common.ret

assert_end39:                                     ; preds = %if_end35
  %86 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 0, !dbg !1259
  %87 = load i32, ptr %86, align 4, !dbg !1259
  %88 = icmp eq i32 %87, 1, !dbg !1259
  br i1 %88, label %assert_end41, label %assert_fail40, !dbg !1259, !prof !18

assert_fail40:                                    ; preds = %assert_end39
  %89 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %89(ptr nonnull @.str.366), !dbg !1259
  br label %common.ret

assert_end41:                                     ; preds = %assert_end39
  %90 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 1, !dbg !1259
  %91 = load i32, ptr %90, align 4, !dbg !1259
  %92 = icmp eq i32 %dev_id, %91, !dbg !1259
  br i1 %92, label %assert_end43, label %assert_fail42, !dbg !1259, !prof !18

assert_fail42:                                    ; preds = %assert_end41
  %93 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %93(ptr nonnull @.str.367), !dbg !1259
  br label %common.ret

assert_end43:                                     ; preds = %assert_end41
  %94 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 2, !dbg !1259
  %95 = load i32, ptr %94, align 4, !dbg !1259
  %96 = icmp eq i32 %95, 2, !dbg !1259
  br i1 %96, label %assert_end47, label %assert_fail44, !dbg !1259, !prof !18

assert_fail44:                                    ; preds = %assert_end43
  %97 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %97(ptr nonnull @.str.368), !dbg !1259
  br label %common.ret

assert_end47:                                     ; preds = %assert_end43
  %98 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 3, i32 2, !dbg !1259
  %99 = load i16, ptr %98, align 2, !dbg !1259
  %100 = icmp eq i16 %99, 1, !dbg !1259
  %101 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 3, i32 1, !dbg !1259
  %102 = load i8, ptr %101, align 1, !dbg !1259
  %103 = icmp eq i8 %102, 32, !dbg !1259
  %104 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 3, i32 0, !dbg !1259
  %105 = load i8, ptr %104, align 1, !dbg !1259
  %106 = icmp eq i8 %105, 2, !dbg !1259
  %107 = and i1 %103, %106, !dbg !1259
  %108 = and i1 %100, %107, !dbg !1259
  br i1 %108, label %assert_end49, label %assert_fail48, !dbg !1259, !prof !18

assert_fail48:                                    ; preds = %assert_end47
  %109 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %109(ptr nonnull @.str.369), !dbg !1259
  br label %common.ret

assert_end49:                                     ; preds = %assert_end47
  %110 = load i64, ptr %tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.T_reshape.shape, align 8, !dbg !1259, !tbaa !1320
  %111 = and i64 %110, 4294967295, !dbg !1259
  %112 = icmp eq i64 %111, 5, !dbg !1259
  br i1 %112, label %assert_end51, label %assert_fail50, !dbg !1259, !prof !18

assert_fail50:                                    ; preds = %assert_end49
  %113 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %113(ptr nonnull @.str.370), !dbg !1259
  br label %common.ret

assert_end51:                                     ; preds = %assert_end49
  %114 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.T_reshape.shape, i64 1, !dbg !1259
  %115 = load i64, ptr %114, align 8, !dbg !1259, !tbaa !1330
  %116 = and i64 %115, 4294967295, !dbg !1259
  %117 = icmp eq i64 %116, 3072, !dbg !1259
  br i1 %117, label %assert_end53, label %assert_fail52, !dbg !1259, !prof !18

assert_fail52:                                    ; preds = %assert_end51
  %118 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %118(ptr nonnull @.str.371), !dbg !1259
  br label %common.ret

assert_end53:                                     ; preds = %assert_end51
  %.not68 = icmp eq ptr %tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.T_reshape.strides, null, !dbg !1259
  br i1 %.not68, label %if_end55, label %if_then54, !dbg !1259, !prof !52

if_then54:                                        ; preds = %assert_end53
  %119 = load i64, ptr %tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.T_reshape.strides, align 8, !dbg !1259, !tbaa !1332
  %120 = and i64 %119, 4294967295, !dbg !1259
  %121 = icmp eq i64 %120, 3072, !dbg !1259
  %122 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape.T_reshape.strides, i64 1, !dbg !1259
  %123 = load i64, ptr %122, align 8, !dbg !1259, !tbaa !1342
  %124 = and i64 %123, 4294967295, !dbg !1259
  %125 = icmp eq i64 %124, 1, !dbg !1259
  %126 = and i1 %121, %125, !dbg !1259
  br i1 %126, label %if_end55, label %assert_fail56, !dbg !1259, !prof !18

if_end55:                                         ; preds = %if_then54, %assert_end53
  %127 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 6, !dbg !1259
  %128 = load i64, ptr %127, align 8, !dbg !1259
  %129 = icmp eq i64 %128, 0, !dbg !1259
  br i1 %129, label %assert_end59, label %assert_fail58, !dbg !1259, !prof !18

assert_fail56:                                    ; preds = %if_then54
  %130 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %130(ptr nonnull @.str.372), !dbg !1259
  br label %common.ret

assert_fail58:                                    ; preds = %if_end55
  %131 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %131(ptr nonnull @.str.373), !dbg !1259
  br label %common.ret

assert_end59:                                     ; preds = %if_end55
  %132 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 1, i32 0, !dbg !1259
  %133 = load i32, ptr %132, align 4, !dbg !1259
  %134 = icmp eq i32 %133, 1, !dbg !1259
  br i1 %134, label %assert_end61, label %assert_fail60, !dbg !1259, !prof !18

assert_fail60:                                    ; preds = %assert_end59
  %135 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %135(ptr nonnull @.str.374), !dbg !1259
  br label %common.ret

assert_end61:                                     ; preds = %assert_end59
  %136 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 1, i32 1, !dbg !1259
  %137 = load i32, ptr %136, align 4, !dbg !1259
  %138 = icmp eq i32 %dev_id, %137, !dbg !1259
  br i1 %138, label %assert_end63, label %assert_fail62, !dbg !1259, !prof !18

assert_fail62:                                    ; preds = %assert_end61
  %139 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1259, !tbaa !19
  tail call void %139(ptr nonnull @.str.375), !dbg !1259
  br label %common.ret

assert_end63:                                     ; preds = %assert_end61
  %140 = tail call fastcc i32 @tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape_compute_(ptr %T_reshape64, ptr %p165, ptr %p066), !dbg !1259
  br label %common.ret
}

define dllexport i32 @tvmgen_default_fused_reshape_add_reshape_transpose_reshape(ptr noalias nocapture readonly %args, ptr noalias nocapture readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !1344 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !1346, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !1347, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !1348, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !1349, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !1350, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !1351, metadata !DIExpression()), !dbg !1352
  %0 = icmp eq i32 %num_args, 3, !dbg !1352
  br i1 %0, label %assert_end, label %assert_fail, !dbg !1352, !prof !18

common.ret:                                       ; preds = %assert_end65, %assert_fail64, %assert_fail62, %assert_fail60, %assert_fail58, %assert_fail54, %assert_fail52, %assert_fail50, %assert_fail48, %assert_fail44, %assert_fail42, %assert_fail40, %assert_fail38, %assert_fail36, %assert_fail32, %assert_fail30, %assert_fail26, %assert_fail24, %assert_fail22, %assert_fail20, %assert_fail18, %assert_fail16, %assert_fail14, %assert_fail10, %assert_fail8, %assert_fail6, %assert_fail4, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail4 ], [ -1, %assert_fail6 ], [ -1, %assert_fail8 ], [ -1, %assert_fail10 ], [ -1, %assert_fail14 ], [ -1, %assert_fail16 ], [ -1, %assert_fail18 ], [ -1, %assert_fail20 ], [ -1, %assert_fail22 ], [ -1, %assert_fail24 ], [ -1, %assert_fail26 ], [ -1, %assert_fail30 ], [ -1, %assert_fail32 ], [ -1, %assert_fail36 ], [ -1, %assert_fail38 ], [ -1, %assert_fail40 ], [ -1, %assert_fail42 ], [ -1, %assert_fail44 ], [ -1, %assert_fail48 ], [ -1, %assert_fail50 ], [ -1, %assert_fail52 ], [ -1, %assert_fail54 ], [ -1, %assert_fail58 ], [ -1, %assert_fail60 ], [ -1, %assert_fail62 ], [ -1, %assert_fail64 ], [ %150, %assert_end65 ]
  ret i32 %common.ret.op, !dbg !1352

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %1(ptr nonnull @.str.377), !dbg !1352
  br label %common.ret

assert_end:                                       ; preds = %entry
  %p0.code = load i32, ptr %arg_type_ids, align 4, !dbg !1352, !tbaa !1353
  %2 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !1352
  %p1.code = load i32, ptr %2, align 4, !dbg !1352, !tbaa !1364
  %3 = getelementptr inbounds i32, ptr %arg_type_ids, i64 2, !dbg !1352
  %T_reshape.code = load i32, ptr %3, align 4, !dbg !1352, !tbaa !1366
  %p0 = load ptr, ptr %args, align 8, !dbg !1352
  %4 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !1352
  %p1 = load ptr, ptr %4, align 8, !dbg !1352
  %5 = getelementptr inbounds %0, ptr %args, i64 2, !dbg !1352
  %T_reshape = load ptr, ptr %5, align 8, !dbg !1352
  %p068 = load ptr, ptr %p0, align 8, !dbg !1352
  call void @llvm.assume(i1 true) [ "align"(ptr %p068, i64 64) ], !dbg !1352
  %6 = getelementptr inbounds %1, ptr %p0, i64 0, i32 4, !dbg !1352
  %tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p0.shape = load ptr, ptr %6, align 8, !dbg !1352
  %7 = getelementptr inbounds %1, ptr %p0, i64 0, i32 5, !dbg !1352
  %tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p0.strides = load ptr, ptr %7, align 8, !dbg !1352
  %8 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 1, !dbg !1352
  %dev_id = load i32, ptr %8, align 4, !dbg !1352
  %p167 = load ptr, ptr %p1, align 8, !dbg !1352
  call void @llvm.assume(i1 true) [ "align"(ptr %p167, i64 64) ], !dbg !1352
  %9 = getelementptr inbounds %1, ptr %p1, i64 0, i32 4, !dbg !1352
  %tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p1.shape = load ptr, ptr %9, align 8, !dbg !1352
  %10 = getelementptr inbounds %1, ptr %p1, i64 0, i32 5, !dbg !1352
  %tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p1.strides = load ptr, ptr %10, align 8, !dbg !1352
  %T_reshape66 = load ptr, ptr %T_reshape, align 8, !dbg !1352
  call void @llvm.assume(i1 true) [ "align"(ptr %T_reshape66, i64 64) ], !dbg !1352
  %11 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 4, !dbg !1352
  %tvmgen_default_fused_reshape_add_reshape_transpose_reshape.T_reshape.shape = load ptr, ptr %11, align 8, !dbg !1352
  %12 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 5, !dbg !1352
  %tvmgen_default_fused_reshape_add_reshape_transpose_reshape.T_reshape.strides = load ptr, ptr %12, align 8, !dbg !1352
  switch i32 %p0.code, label %assert_fail4 [
    i32 13, label %assert_end5
    i32 7, label %assert_end5
    i32 4, label %assert_end5
    i32 3, label %assert_end5
  ], !dbg !1352

assert_fail4:                                     ; preds = %assert_end
  %13 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %13(ptr nonnull @.str.378), !dbg !1352
  br label %common.ret

assert_end5:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %p1.code, label %assert_fail6 [
    i32 13, label %assert_end7
    i32 7, label %assert_end7
    i32 4, label %assert_end7
    i32 3, label %assert_end7
  ], !dbg !1352

assert_fail6:                                     ; preds = %assert_end5
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %14(ptr nonnull @.str.379), !dbg !1352
  br label %common.ret

assert_end7:                                      ; preds = %assert_end5, %assert_end5, %assert_end5, %assert_end5
  switch i32 %T_reshape.code, label %assert_fail8 [
    i32 13, label %assert_end9
    i32 7, label %assert_end9
    i32 4, label %assert_end9
    i32 3, label %assert_end9
  ], !dbg !1352

assert_fail8:                                     ; preds = %assert_end7
  %15 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %15(ptr nonnull @.str.380), !dbg !1352
  br label %common.ret

assert_end9:                                      ; preds = %assert_end7, %assert_end7, %assert_end7, %assert_end7
  %16 = getelementptr inbounds %1, ptr %p0, i64 0, i32 2, !dbg !1352
  %17 = load i32, ptr %16, align 4, !dbg !1352
  %18 = icmp eq i32 %17, 2, !dbg !1352
  br i1 %18, label %assert_end13, label %assert_fail10, !dbg !1352, !prof !18

assert_fail10:                                    ; preds = %assert_end9
  %19 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %19(ptr nonnull @.str.381), !dbg !1352
  br label %common.ret

assert_end13:                                     ; preds = %assert_end9
  %20 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 2, !dbg !1352
  %21 = load i16, ptr %20, align 2, !dbg !1352
  %22 = icmp eq i16 %21, 1, !dbg !1352
  %23 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 1, !dbg !1352
  %24 = load i8, ptr %23, align 1, !dbg !1352
  %25 = icmp eq i8 %24, 32, !dbg !1352
  %26 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 0, !dbg !1352
  %27 = load i8, ptr %26, align 1, !dbg !1352
  %28 = icmp eq i8 %27, 2, !dbg !1352
  %29 = and i1 %25, %28, !dbg !1352
  %30 = and i1 %22, %29, !dbg !1352
  br i1 %30, label %assert_end15, label %assert_fail14, !dbg !1352, !prof !18

assert_fail14:                                    ; preds = %assert_end13
  %31 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %31(ptr nonnull @.str.382), !dbg !1352
  br label %common.ret

assert_end15:                                     ; preds = %assert_end13
  %32 = load i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p0.shape, align 8, !dbg !1352, !tbaa !1369
  %33 = and i64 %32, 4294967295, !dbg !1352
  %34 = icmp eq i64 %33, 5, !dbg !1352
  br i1 %34, label %assert_end17, label %assert_fail16, !dbg !1352, !prof !18

assert_fail16:                                    ; preds = %assert_end15
  %35 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %35(ptr nonnull @.str.383), !dbg !1352
  br label %common.ret

assert_end17:                                     ; preds = %assert_end15
  %36 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p0.shape, i64 1, !dbg !1352
  %37 = load i64, ptr %36, align 8, !dbg !1352, !tbaa !1379
  %38 = and i64 %37, 4294967295, !dbg !1352
  %39 = icmp eq i64 %38, 768, !dbg !1352
  br i1 %39, label %assert_end19, label %assert_fail18, !dbg !1352, !prof !18

assert_fail18:                                    ; preds = %assert_end17
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %40(ptr nonnull @.str.384), !dbg !1352
  br label %common.ret

assert_end19:                                     ; preds = %assert_end17
  %.not = icmp eq ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p0.strides, null, !dbg !1352
  br i1 %.not, label %if_end, label %if_then, !dbg !1352, !prof !52

if_then:                                          ; preds = %assert_end19
  %41 = load i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p0.strides, align 8, !dbg !1352, !tbaa !1381
  %42 = and i64 %41, 4294967295, !dbg !1352
  %43 = icmp eq i64 %42, 768, !dbg !1352
  %44 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p0.strides, i64 1, !dbg !1352
  %45 = load i64, ptr %44, align 8, !dbg !1352, !tbaa !1391
  %46 = and i64 %45, 4294967295, !dbg !1352
  %47 = icmp eq i64 %46, 1, !dbg !1352
  %48 = and i1 %43, %47, !dbg !1352
  br i1 %48, label %if_end, label %assert_fail20, !dbg !1352, !prof !18

if_end:                                           ; preds = %if_then, %assert_end19
  %49 = getelementptr inbounds %1, ptr %p0, i64 0, i32 6, !dbg !1352
  %50 = load i64, ptr %49, align 8, !dbg !1352
  %51 = icmp eq i64 %50, 0, !dbg !1352
  br i1 %51, label %assert_end23, label %assert_fail22, !dbg !1352, !prof !18

assert_fail20:                                    ; preds = %if_then
  %52 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %52(ptr nonnull @.str.385), !dbg !1352
  br label %common.ret

assert_fail22:                                    ; preds = %if_end
  %53 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %53(ptr nonnull @.str.386), !dbg !1352
  br label %common.ret

assert_end23:                                     ; preds = %if_end
  %54 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 0, !dbg !1352
  %55 = load i32, ptr %54, align 4, !dbg !1352
  %56 = icmp eq i32 %55, 1, !dbg !1352
  br i1 %56, label %assert_end25, label %assert_fail24, !dbg !1352, !prof !18

assert_fail24:                                    ; preds = %assert_end23
  %57 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %57(ptr nonnull @.str.387), !dbg !1352
  br label %common.ret

assert_end25:                                     ; preds = %assert_end23
  %58 = getelementptr inbounds %1, ptr %p1, i64 0, i32 2, !dbg !1352
  %59 = load i32, ptr %58, align 4, !dbg !1352
  %60 = icmp eq i32 %59, 1, !dbg !1352
  br i1 %60, label %assert_end29, label %assert_fail26, !dbg !1352, !prof !18

assert_fail26:                                    ; preds = %assert_end25
  %61 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %61(ptr nonnull @.str.388), !dbg !1352
  br label %common.ret

assert_end29:                                     ; preds = %assert_end25
  %62 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 2, !dbg !1352
  %63 = load i16, ptr %62, align 2, !dbg !1352
  %64 = icmp eq i16 %63, 1, !dbg !1352
  %65 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 1, !dbg !1352
  %66 = load i8, ptr %65, align 1, !dbg !1352
  %67 = icmp eq i8 %66, 32, !dbg !1352
  %68 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 0, !dbg !1352
  %69 = load i8, ptr %68, align 1, !dbg !1352
  %70 = icmp eq i8 %69, 2, !dbg !1352
  %71 = and i1 %67, %70, !dbg !1352
  %72 = and i1 %64, %71, !dbg !1352
  br i1 %72, label %assert_end31, label %assert_fail30, !dbg !1352, !prof !18

assert_fail30:                                    ; preds = %assert_end29
  %73 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %73(ptr nonnull @.str.389), !dbg !1352
  br label %common.ret

assert_end31:                                     ; preds = %assert_end29
  %74 = load i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p1.shape, align 8, !dbg !1352, !tbaa !1393
  %75 = and i64 %74, 4294967295, !dbg !1352
  %76 = icmp eq i64 %75, 768, !dbg !1352
  br i1 %76, label %assert_end33, label %assert_fail32, !dbg !1352, !prof !18

assert_fail32:                                    ; preds = %assert_end31
  %77 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %77(ptr nonnull @.str.390), !dbg !1352
  br label %common.ret

assert_end33:                                     ; preds = %assert_end31
  %.not69 = icmp eq ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p1.strides, null, !dbg !1352
  br i1 %.not69, label %if_end35, label %if_then34, !dbg !1352, !prof !52

if_then34:                                        ; preds = %assert_end33
  %78 = load i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape.p1.strides, align 8, !dbg !1352, !tbaa !1403
  %79 = and i64 %78, 4294967295, !dbg !1352
  %80 = icmp eq i64 %79, 1, !dbg !1352
  br i1 %80, label %if_end35, label %assert_fail36, !dbg !1352, !prof !18

if_end35:                                         ; preds = %if_then34, %assert_end33
  %81 = getelementptr inbounds %1, ptr %p1, i64 0, i32 6, !dbg !1352
  %82 = load i64, ptr %81, align 8, !dbg !1352
  %83 = icmp eq i64 %82, 0, !dbg !1352
  br i1 %83, label %assert_end39, label %assert_fail38, !dbg !1352, !prof !18

assert_fail36:                                    ; preds = %if_then34
  %84 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %84(ptr nonnull @.str.391), !dbg !1352
  br label %common.ret

assert_fail38:                                    ; preds = %if_end35
  %85 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %85(ptr nonnull @.str.392), !dbg !1352
  br label %common.ret

assert_end39:                                     ; preds = %if_end35
  %86 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 0, !dbg !1352
  %87 = load i32, ptr %86, align 4, !dbg !1352
  %88 = icmp eq i32 %87, 1, !dbg !1352
  br i1 %88, label %assert_end41, label %assert_fail40, !dbg !1352, !prof !18

assert_fail40:                                    ; preds = %assert_end39
  %89 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %89(ptr nonnull @.str.393), !dbg !1352
  br label %common.ret

assert_end41:                                     ; preds = %assert_end39
  %90 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 1, !dbg !1352
  %91 = load i32, ptr %90, align 4, !dbg !1352
  %92 = icmp eq i32 %dev_id, %91, !dbg !1352
  br i1 %92, label %assert_end43, label %assert_fail42, !dbg !1352, !prof !18

assert_fail42:                                    ; preds = %assert_end41
  %93 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %93(ptr nonnull @.str.394), !dbg !1352
  br label %common.ret

assert_end43:                                     ; preds = %assert_end41
  %94 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 2, !dbg !1352
  %95 = load i32, ptr %94, align 4, !dbg !1352
  %96 = icmp eq i32 %95, 3, !dbg !1352
  br i1 %96, label %assert_end47, label %assert_fail44, !dbg !1352, !prof !18

assert_fail44:                                    ; preds = %assert_end43
  %97 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %97(ptr nonnull @.str.395), !dbg !1352
  br label %common.ret

assert_end47:                                     ; preds = %assert_end43
  %98 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 3, i32 2, !dbg !1352
  %99 = load i16, ptr %98, align 2, !dbg !1352
  %100 = icmp eq i16 %99, 1, !dbg !1352
  %101 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 3, i32 1, !dbg !1352
  %102 = load i8, ptr %101, align 1, !dbg !1352
  %103 = icmp eq i8 %102, 32, !dbg !1352
  %104 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 3, i32 0, !dbg !1352
  %105 = load i8, ptr %104, align 1, !dbg !1352
  %106 = icmp eq i8 %105, 2, !dbg !1352
  %107 = and i1 %103, %106, !dbg !1352
  %108 = and i1 %100, %107, !dbg !1352
  br i1 %108, label %assert_end49, label %assert_fail48, !dbg !1352, !prof !18

assert_fail48:                                    ; preds = %assert_end47
  %109 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %109(ptr nonnull @.str.396), !dbg !1352
  br label %common.ret

assert_end49:                                     ; preds = %assert_end47
  %110 = load i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape.T_reshape.shape, align 8, !dbg !1352, !tbaa !1413
  %111 = and i64 %110, 4294967295, !dbg !1352
  %112 = icmp eq i64 %111, 12, !dbg !1352
  br i1 %112, label %assert_end51, label %assert_fail50, !dbg !1352, !prof !18

assert_fail50:                                    ; preds = %assert_end49
  %113 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %113(ptr nonnull @.str.397), !dbg !1352
  br label %common.ret

assert_end51:                                     ; preds = %assert_end49
  %114 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape.T_reshape.shape, i64 1, !dbg !1352
  %115 = load i64, ptr %114, align 8, !dbg !1352, !tbaa !1423
  %116 = and i64 %115, 4294967295, !dbg !1352
  %117 = icmp eq i64 %116, 5, !dbg !1352
  br i1 %117, label %assert_end53, label %assert_fail52, !dbg !1352, !prof !18

assert_fail52:                                    ; preds = %assert_end51
  %118 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %118(ptr nonnull @.str.398), !dbg !1352
  br label %common.ret

assert_end53:                                     ; preds = %assert_end51
  %119 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape.T_reshape.shape, i64 2, !dbg !1352
  %120 = load i64, ptr %119, align 8, !dbg !1352, !tbaa !1425
  %121 = and i64 %120, 4294967295, !dbg !1352
  %122 = icmp eq i64 %121, 64, !dbg !1352
  br i1 %122, label %assert_end55, label %assert_fail54, !dbg !1352, !prof !18

assert_fail54:                                    ; preds = %assert_end53
  %123 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %123(ptr nonnull @.str.399), !dbg !1352
  br label %common.ret

assert_end55:                                     ; preds = %assert_end53
  %.not70 = icmp eq ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape.T_reshape.strides, null, !dbg !1352
  br i1 %.not70, label %if_end57, label %if_then56, !dbg !1352, !prof !52

if_then56:                                        ; preds = %assert_end55
  %124 = load i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape.T_reshape.strides, align 8, !dbg !1352, !tbaa !1428
  %125 = and i64 %124, 4294967295, !dbg !1352
  %126 = icmp eq i64 %125, 320, !dbg !1352
  %127 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape.T_reshape.strides, i64 1, !dbg !1352
  %128 = load i64, ptr %127, align 8, !dbg !1352, !tbaa !1438
  %129 = and i64 %128, 4294967295, !dbg !1352
  %130 = icmp eq i64 %129, 64, !dbg !1352
  %131 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape.T_reshape.strides, i64 2, !dbg !1352
  %132 = load i64, ptr %131, align 8, !dbg !1352, !tbaa !1440
  %133 = and i64 %132, 4294967295, !dbg !1352
  %134 = icmp eq i64 %133, 1, !dbg !1352
  %135 = and i1 %130, %134, !dbg !1352
  %136 = and i1 %126, %135, !dbg !1352
  br i1 %136, label %if_end57, label %assert_fail58, !dbg !1352, !prof !18

if_end57:                                         ; preds = %if_then56, %assert_end55
  %137 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 6, !dbg !1352
  %138 = load i64, ptr %137, align 8, !dbg !1352
  %139 = icmp eq i64 %138, 0, !dbg !1352
  br i1 %139, label %assert_end61, label %assert_fail60, !dbg !1352, !prof !18

assert_fail58:                                    ; preds = %if_then56
  %140 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %140(ptr nonnull @.str.400), !dbg !1352
  br label %common.ret

assert_fail60:                                    ; preds = %if_end57
  %141 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %141(ptr nonnull @.str.401), !dbg !1352
  br label %common.ret

assert_end61:                                     ; preds = %if_end57
  %142 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 1, i32 0, !dbg !1352
  %143 = load i32, ptr %142, align 4, !dbg !1352
  %144 = icmp eq i32 %143, 1, !dbg !1352
  br i1 %144, label %assert_end63, label %assert_fail62, !dbg !1352, !prof !18

assert_fail62:                                    ; preds = %assert_end61
  %145 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %145(ptr nonnull @.str.402), !dbg !1352
  br label %common.ret

assert_end63:                                     ; preds = %assert_end61
  %146 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 1, i32 1, !dbg !1352
  %147 = load i32, ptr %146, align 4, !dbg !1352
  %148 = icmp eq i32 %dev_id, %147, !dbg !1352
  br i1 %148, label %assert_end65, label %assert_fail64, !dbg !1352, !prof !18

assert_fail64:                                    ; preds = %assert_end63
  %149 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1352, !tbaa !19
  tail call void %149(ptr nonnull @.str.403), !dbg !1352
  br label %common.ret

assert_end65:                                     ; preds = %assert_end63
  %150 = tail call fastcc i32 @tvmgen_default_fused_reshape_add_reshape_transpose_reshape_compute_(ptr %T_reshape66, ptr %p167, ptr %p068), !dbg !1352
  br label %common.ret
}

define dllexport i32 @tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose(ptr noalias nocapture readonly %args, ptr noalias nocapture readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !1443 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !1445, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !1446, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !1447, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !1448, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !1449, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !1450, metadata !DIExpression()), !dbg !1451
  %0 = icmp eq i32 %num_args, 3, !dbg !1451
  br i1 %0, label %assert_end, label %assert_fail, !dbg !1451, !prof !18

common.ret:                                       ; preds = %assert_end65, %assert_fail64, %assert_fail62, %assert_fail60, %assert_fail58, %assert_fail54, %assert_fail52, %assert_fail50, %assert_fail48, %assert_fail44, %assert_fail42, %assert_fail40, %assert_fail38, %assert_fail36, %assert_fail32, %assert_fail30, %assert_fail26, %assert_fail24, %assert_fail22, %assert_fail20, %assert_fail18, %assert_fail16, %assert_fail14, %assert_fail10, %assert_fail8, %assert_fail6, %assert_fail4, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail4 ], [ -1, %assert_fail6 ], [ -1, %assert_fail8 ], [ -1, %assert_fail10 ], [ -1, %assert_fail14 ], [ -1, %assert_fail16 ], [ -1, %assert_fail18 ], [ -1, %assert_fail20 ], [ -1, %assert_fail22 ], [ -1, %assert_fail24 ], [ -1, %assert_fail26 ], [ -1, %assert_fail30 ], [ -1, %assert_fail32 ], [ -1, %assert_fail36 ], [ -1, %assert_fail38 ], [ -1, %assert_fail40 ], [ -1, %assert_fail42 ], [ -1, %assert_fail44 ], [ -1, %assert_fail48 ], [ -1, %assert_fail50 ], [ -1, %assert_fail52 ], [ -1, %assert_fail54 ], [ -1, %assert_fail58 ], [ -1, %assert_fail60 ], [ -1, %assert_fail62 ], [ -1, %assert_fail64 ], [ %150, %assert_end65 ]
  ret i32 %common.ret.op, !dbg !1451

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %1(ptr nonnull @.str.405), !dbg !1451
  br label %common.ret

assert_end:                                       ; preds = %entry
  %p0.code = load i32, ptr %arg_type_ids, align 4, !dbg !1451, !tbaa !1452
  %2 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !1451
  %p1.code = load i32, ptr %2, align 4, !dbg !1451, !tbaa !1463
  %3 = getelementptr inbounds i32, ptr %arg_type_ids, i64 2, !dbg !1451
  %T_transpose.code = load i32, ptr %3, align 4, !dbg !1451, !tbaa !1465
  %p0 = load ptr, ptr %args, align 8, !dbg !1451
  %4 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !1451
  %p1 = load ptr, ptr %4, align 8, !dbg !1451
  %5 = getelementptr inbounds %0, ptr %args, i64 2, !dbg !1451
  %T_transpose = load ptr, ptr %5, align 8, !dbg !1451
  %p068 = load ptr, ptr %p0, align 8, !dbg !1451
  call void @llvm.assume(i1 true) [ "align"(ptr %p068, i64 64) ], !dbg !1451
  %6 = getelementptr inbounds %1, ptr %p0, i64 0, i32 4, !dbg !1451
  %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p0.shape = load ptr, ptr %6, align 8, !dbg !1451
  %7 = getelementptr inbounds %1, ptr %p0, i64 0, i32 5, !dbg !1451
  %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p0.strides = load ptr, ptr %7, align 8, !dbg !1451
  %8 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 1, !dbg !1451
  %dev_id = load i32, ptr %8, align 4, !dbg !1451
  %p167 = load ptr, ptr %p1, align 8, !dbg !1451
  call void @llvm.assume(i1 true) [ "align"(ptr %p167, i64 64) ], !dbg !1451
  %9 = getelementptr inbounds %1, ptr %p1, i64 0, i32 4, !dbg !1451
  %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p1.shape = load ptr, ptr %9, align 8, !dbg !1451
  %10 = getelementptr inbounds %1, ptr %p1, i64 0, i32 5, !dbg !1451
  %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p1.strides = load ptr, ptr %10, align 8, !dbg !1451
  %T_transpose66 = load ptr, ptr %T_transpose, align 8, !dbg !1451
  call void @llvm.assume(i1 true) [ "align"(ptr %T_transpose66, i64 64) ], !dbg !1451
  %11 = getelementptr inbounds %1, ptr %T_transpose, i64 0, i32 4, !dbg !1451
  %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.T_transpose.shape = load ptr, ptr %11, align 8, !dbg !1451
  %12 = getelementptr inbounds %1, ptr %T_transpose, i64 0, i32 5, !dbg !1451
  %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.T_transpose.strides = load ptr, ptr %12, align 8, !dbg !1451
  switch i32 %p0.code, label %assert_fail4 [
    i32 13, label %assert_end5
    i32 7, label %assert_end5
    i32 4, label %assert_end5
    i32 3, label %assert_end5
  ], !dbg !1451

assert_fail4:                                     ; preds = %assert_end
  %13 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %13(ptr nonnull @.str.406), !dbg !1451
  br label %common.ret

assert_end5:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %p1.code, label %assert_fail6 [
    i32 13, label %assert_end7
    i32 7, label %assert_end7
    i32 4, label %assert_end7
    i32 3, label %assert_end7
  ], !dbg !1451

assert_fail6:                                     ; preds = %assert_end5
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %14(ptr nonnull @.str.407), !dbg !1451
  br label %common.ret

assert_end7:                                      ; preds = %assert_end5, %assert_end5, %assert_end5, %assert_end5
  switch i32 %T_transpose.code, label %assert_fail8 [
    i32 13, label %assert_end9
    i32 7, label %assert_end9
    i32 4, label %assert_end9
    i32 3, label %assert_end9
  ], !dbg !1451

assert_fail8:                                     ; preds = %assert_end7
  %15 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %15(ptr nonnull @.str.408), !dbg !1451
  br label %common.ret

assert_end9:                                      ; preds = %assert_end7, %assert_end7, %assert_end7, %assert_end7
  %16 = getelementptr inbounds %1, ptr %p0, i64 0, i32 2, !dbg !1451
  %17 = load i32, ptr %16, align 4, !dbg !1451
  %18 = icmp eq i32 %17, 2, !dbg !1451
  br i1 %18, label %assert_end13, label %assert_fail10, !dbg !1451, !prof !18

assert_fail10:                                    ; preds = %assert_end9
  %19 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %19(ptr nonnull @.str.409), !dbg !1451
  br label %common.ret

assert_end13:                                     ; preds = %assert_end9
  %20 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 2, !dbg !1451
  %21 = load i16, ptr %20, align 2, !dbg !1451
  %22 = icmp eq i16 %21, 1, !dbg !1451
  %23 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 1, !dbg !1451
  %24 = load i8, ptr %23, align 1, !dbg !1451
  %25 = icmp eq i8 %24, 32, !dbg !1451
  %26 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 0, !dbg !1451
  %27 = load i8, ptr %26, align 1, !dbg !1451
  %28 = icmp eq i8 %27, 2, !dbg !1451
  %29 = and i1 %25, %28, !dbg !1451
  %30 = and i1 %22, %29, !dbg !1451
  br i1 %30, label %assert_end15, label %assert_fail14, !dbg !1451, !prof !18

assert_fail14:                                    ; preds = %assert_end13
  %31 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %31(ptr nonnull @.str.410), !dbg !1451
  br label %common.ret

assert_end15:                                     ; preds = %assert_end13
  %32 = load i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p0.shape, align 8, !dbg !1451, !tbaa !1468
  %33 = and i64 %32, 4294967295, !dbg !1451
  %34 = icmp eq i64 %33, 5, !dbg !1451
  br i1 %34, label %assert_end17, label %assert_fail16, !dbg !1451, !prof !18

assert_fail16:                                    ; preds = %assert_end15
  %35 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %35(ptr nonnull @.str.411), !dbg !1451
  br label %common.ret

assert_end17:                                     ; preds = %assert_end15
  %36 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p0.shape, i64 1, !dbg !1451
  %37 = load i64, ptr %36, align 8, !dbg !1451, !tbaa !1478
  %38 = and i64 %37, 4294967295, !dbg !1451
  %39 = icmp eq i64 %38, 768, !dbg !1451
  br i1 %39, label %assert_end19, label %assert_fail18, !dbg !1451, !prof !18

assert_fail18:                                    ; preds = %assert_end17
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %40(ptr nonnull @.str.412), !dbg !1451
  br label %common.ret

assert_end19:                                     ; preds = %assert_end17
  %.not = icmp eq ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p0.strides, null, !dbg !1451
  br i1 %.not, label %if_end, label %if_then, !dbg !1451, !prof !52

if_then:                                          ; preds = %assert_end19
  %41 = load i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p0.strides, align 8, !dbg !1451, !tbaa !1480
  %42 = and i64 %41, 4294967295, !dbg !1451
  %43 = icmp eq i64 %42, 768, !dbg !1451
  %44 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p0.strides, i64 1, !dbg !1451
  %45 = load i64, ptr %44, align 8, !dbg !1451, !tbaa !1490
  %46 = and i64 %45, 4294967295, !dbg !1451
  %47 = icmp eq i64 %46, 1, !dbg !1451
  %48 = and i1 %43, %47, !dbg !1451
  br i1 %48, label %if_end, label %assert_fail20, !dbg !1451, !prof !18

if_end:                                           ; preds = %if_then, %assert_end19
  %49 = getelementptr inbounds %1, ptr %p0, i64 0, i32 6, !dbg !1451
  %50 = load i64, ptr %49, align 8, !dbg !1451
  %51 = icmp eq i64 %50, 0, !dbg !1451
  br i1 %51, label %assert_end23, label %assert_fail22, !dbg !1451, !prof !18

assert_fail20:                                    ; preds = %if_then
  %52 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %52(ptr nonnull @.str.413), !dbg !1451
  br label %common.ret

assert_fail22:                                    ; preds = %if_end
  %53 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %53(ptr nonnull @.str.414), !dbg !1451
  br label %common.ret

assert_end23:                                     ; preds = %if_end
  %54 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 0, !dbg !1451
  %55 = load i32, ptr %54, align 4, !dbg !1451
  %56 = icmp eq i32 %55, 1, !dbg !1451
  br i1 %56, label %assert_end25, label %assert_fail24, !dbg !1451, !prof !18

assert_fail24:                                    ; preds = %assert_end23
  %57 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %57(ptr nonnull @.str.415), !dbg !1451
  br label %common.ret

assert_end25:                                     ; preds = %assert_end23
  %58 = getelementptr inbounds %1, ptr %p1, i64 0, i32 2, !dbg !1451
  %59 = load i32, ptr %58, align 4, !dbg !1451
  %60 = icmp eq i32 %59, 1, !dbg !1451
  br i1 %60, label %assert_end29, label %assert_fail26, !dbg !1451, !prof !18

assert_fail26:                                    ; preds = %assert_end25
  %61 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %61(ptr nonnull @.str.416), !dbg !1451
  br label %common.ret

assert_end29:                                     ; preds = %assert_end25
  %62 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 2, !dbg !1451
  %63 = load i16, ptr %62, align 2, !dbg !1451
  %64 = icmp eq i16 %63, 1, !dbg !1451
  %65 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 1, !dbg !1451
  %66 = load i8, ptr %65, align 1, !dbg !1451
  %67 = icmp eq i8 %66, 32, !dbg !1451
  %68 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 0, !dbg !1451
  %69 = load i8, ptr %68, align 1, !dbg !1451
  %70 = icmp eq i8 %69, 2, !dbg !1451
  %71 = and i1 %67, %70, !dbg !1451
  %72 = and i1 %64, %71, !dbg !1451
  br i1 %72, label %assert_end31, label %assert_fail30, !dbg !1451, !prof !18

assert_fail30:                                    ; preds = %assert_end29
  %73 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %73(ptr nonnull @.str.417), !dbg !1451
  br label %common.ret

assert_end31:                                     ; preds = %assert_end29
  %74 = load i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p1.shape, align 8, !dbg !1451, !tbaa !1492
  %75 = and i64 %74, 4294967295, !dbg !1451
  %76 = icmp eq i64 %75, 768, !dbg !1451
  br i1 %76, label %assert_end33, label %assert_fail32, !dbg !1451, !prof !18

assert_fail32:                                    ; preds = %assert_end31
  %77 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %77(ptr nonnull @.str.418), !dbg !1451
  br label %common.ret

assert_end33:                                     ; preds = %assert_end31
  %.not69 = icmp eq ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p1.strides, null, !dbg !1451
  br i1 %.not69, label %if_end35, label %if_then34, !dbg !1451, !prof !52

if_then34:                                        ; preds = %assert_end33
  %78 = load i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.p1.strides, align 8, !dbg !1451, !tbaa !1502
  %79 = and i64 %78, 4294967295, !dbg !1451
  %80 = icmp eq i64 %79, 1, !dbg !1451
  br i1 %80, label %if_end35, label %assert_fail36, !dbg !1451, !prof !18

if_end35:                                         ; preds = %if_then34, %assert_end33
  %81 = getelementptr inbounds %1, ptr %p1, i64 0, i32 6, !dbg !1451
  %82 = load i64, ptr %81, align 8, !dbg !1451
  %83 = icmp eq i64 %82, 0, !dbg !1451
  br i1 %83, label %assert_end39, label %assert_fail38, !dbg !1451, !prof !18

assert_fail36:                                    ; preds = %if_then34
  %84 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %84(ptr nonnull @.str.419), !dbg !1451
  br label %common.ret

assert_fail38:                                    ; preds = %if_end35
  %85 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %85(ptr nonnull @.str.420), !dbg !1451
  br label %common.ret

assert_end39:                                     ; preds = %if_end35
  %86 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 0, !dbg !1451
  %87 = load i32, ptr %86, align 4, !dbg !1451
  %88 = icmp eq i32 %87, 1, !dbg !1451
  br i1 %88, label %assert_end41, label %assert_fail40, !dbg !1451, !prof !18

assert_fail40:                                    ; preds = %assert_end39
  %89 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %89(ptr nonnull @.str.421), !dbg !1451
  br label %common.ret

assert_end41:                                     ; preds = %assert_end39
  %90 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 1, !dbg !1451
  %91 = load i32, ptr %90, align 4, !dbg !1451
  %92 = icmp eq i32 %dev_id, %91, !dbg !1451
  br i1 %92, label %assert_end43, label %assert_fail42, !dbg !1451, !prof !18

assert_fail42:                                    ; preds = %assert_end41
  %93 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %93(ptr nonnull @.str.422), !dbg !1451
  br label %common.ret

assert_end43:                                     ; preds = %assert_end41
  %94 = getelementptr inbounds %1, ptr %T_transpose, i64 0, i32 2, !dbg !1451
  %95 = load i32, ptr %94, align 4, !dbg !1451
  %96 = icmp eq i32 %95, 3, !dbg !1451
  br i1 %96, label %assert_end47, label %assert_fail44, !dbg !1451, !prof !18

assert_fail44:                                    ; preds = %assert_end43
  %97 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %97(ptr nonnull @.str.423), !dbg !1451
  br label %common.ret

assert_end47:                                     ; preds = %assert_end43
  %98 = getelementptr inbounds %1, ptr %T_transpose, i64 0, i32 3, i32 2, !dbg !1451
  %99 = load i16, ptr %98, align 2, !dbg !1451
  %100 = icmp eq i16 %99, 1, !dbg !1451
  %101 = getelementptr inbounds %1, ptr %T_transpose, i64 0, i32 3, i32 1, !dbg !1451
  %102 = load i8, ptr %101, align 1, !dbg !1451
  %103 = icmp eq i8 %102, 32, !dbg !1451
  %104 = getelementptr inbounds %1, ptr %T_transpose, i64 0, i32 3, i32 0, !dbg !1451
  %105 = load i8, ptr %104, align 1, !dbg !1451
  %106 = icmp eq i8 %105, 2, !dbg !1451
  %107 = and i1 %103, %106, !dbg !1451
  %108 = and i1 %100, %107, !dbg !1451
  br i1 %108, label %assert_end49, label %assert_fail48, !dbg !1451, !prof !18

assert_fail48:                                    ; preds = %assert_end47
  %109 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %109(ptr nonnull @.str.424), !dbg !1451
  br label %common.ret

assert_end49:                                     ; preds = %assert_end47
  %110 = load i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.T_transpose.shape, align 8, !dbg !1451, !tbaa !1512
  %111 = and i64 %110, 4294967295, !dbg !1451
  %112 = icmp eq i64 %111, 12, !dbg !1451
  br i1 %112, label %assert_end51, label %assert_fail50, !dbg !1451, !prof !18

assert_fail50:                                    ; preds = %assert_end49
  %113 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %113(ptr nonnull @.str.425), !dbg !1451
  br label %common.ret

assert_end51:                                     ; preds = %assert_end49
  %114 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.T_transpose.shape, i64 1, !dbg !1451
  %115 = load i64, ptr %114, align 8, !dbg !1451, !tbaa !1522
  %116 = and i64 %115, 4294967295, !dbg !1451
  %117 = icmp eq i64 %116, 5, !dbg !1451
  br i1 %117, label %assert_end53, label %assert_fail52, !dbg !1451, !prof !18

assert_fail52:                                    ; preds = %assert_end51
  %118 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %118(ptr nonnull @.str.426), !dbg !1451
  br label %common.ret

assert_end53:                                     ; preds = %assert_end51
  %119 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.T_transpose.shape, i64 2, !dbg !1451
  %120 = load i64, ptr %119, align 8, !dbg !1451, !tbaa !1524
  %121 = and i64 %120, 4294967295, !dbg !1451
  %122 = icmp eq i64 %121, 64, !dbg !1451
  br i1 %122, label %assert_end55, label %assert_fail54, !dbg !1451, !prof !18

assert_fail54:                                    ; preds = %assert_end53
  %123 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %123(ptr nonnull @.str.427), !dbg !1451
  br label %common.ret

assert_end55:                                     ; preds = %assert_end53
  %.not70 = icmp eq ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.T_transpose.strides, null, !dbg !1451
  br i1 %.not70, label %if_end57, label %if_then56, !dbg !1451, !prof !52

if_then56:                                        ; preds = %assert_end55
  %124 = load i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.T_transpose.strides, align 8, !dbg !1451, !tbaa !1527
  %125 = and i64 %124, 4294967295, !dbg !1451
  %126 = icmp eq i64 %125, 320, !dbg !1451
  %127 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.T_transpose.strides, i64 1, !dbg !1451
  %128 = load i64, ptr %127, align 8, !dbg !1451, !tbaa !1537
  %129 = and i64 %128, 4294967295, !dbg !1451
  %130 = icmp eq i64 %129, 64, !dbg !1451
  %131 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose.T_transpose.strides, i64 2, !dbg !1451
  %132 = load i64, ptr %131, align 8, !dbg !1451, !tbaa !1539
  %133 = and i64 %132, 4294967295, !dbg !1451
  %134 = icmp eq i64 %133, 1, !dbg !1451
  %135 = and i1 %130, %134, !dbg !1451
  %136 = and i1 %126, %135, !dbg !1451
  br i1 %136, label %if_end57, label %assert_fail58, !dbg !1451, !prof !18

if_end57:                                         ; preds = %if_then56, %assert_end55
  %137 = getelementptr inbounds %1, ptr %T_transpose, i64 0, i32 6, !dbg !1451
  %138 = load i64, ptr %137, align 8, !dbg !1451
  %139 = icmp eq i64 %138, 0, !dbg !1451
  br i1 %139, label %assert_end61, label %assert_fail60, !dbg !1451, !prof !18

assert_fail58:                                    ; preds = %if_then56
  %140 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %140(ptr nonnull @.str.428), !dbg !1451
  br label %common.ret

assert_fail60:                                    ; preds = %if_end57
  %141 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %141(ptr nonnull @.str.429), !dbg !1451
  br label %common.ret

assert_end61:                                     ; preds = %if_end57
  %142 = getelementptr inbounds %1, ptr %T_transpose, i64 0, i32 1, i32 0, !dbg !1451
  %143 = load i32, ptr %142, align 4, !dbg !1451
  %144 = icmp eq i32 %143, 1, !dbg !1451
  br i1 %144, label %assert_end63, label %assert_fail62, !dbg !1451, !prof !18

assert_fail62:                                    ; preds = %assert_end61
  %145 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %145(ptr nonnull @.str.430), !dbg !1451
  br label %common.ret

assert_end63:                                     ; preds = %assert_end61
  %146 = getelementptr inbounds %1, ptr %T_transpose, i64 0, i32 1, i32 1, !dbg !1451
  %147 = load i32, ptr %146, align 4, !dbg !1451
  %148 = icmp eq i32 %dev_id, %147, !dbg !1451
  br i1 %148, label %assert_end65, label %assert_fail64, !dbg !1451, !prof !18

assert_fail64:                                    ; preds = %assert_end63
  %149 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1451, !tbaa !19
  tail call void %149(ptr nonnull @.str.431), !dbg !1451
  br label %common.ret

assert_end65:                                     ; preds = %assert_end63
  %150 = tail call fastcc i32 @tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_compute_(ptr %T_transpose66, ptr %p167, ptr %p068), !dbg !1451
  br label %common.ret
}

define dllexport i32 @tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1(ptr noalias nocapture readonly %args, ptr noalias nocapture readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !1542 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !1544, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !1545, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !1546, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !1547, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !1548, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !1549, metadata !DIExpression()), !dbg !1550
  %0 = icmp eq i32 %num_args, 3, !dbg !1550
  br i1 %0, label %assert_end, label %assert_fail, !dbg !1550, !prof !18

common.ret:                                       ; preds = %assert_end65, %assert_fail64, %assert_fail62, %assert_fail60, %assert_fail58, %assert_fail54, %assert_fail52, %assert_fail50, %assert_fail48, %assert_fail44, %assert_fail42, %assert_fail40, %assert_fail38, %assert_fail36, %assert_fail32, %assert_fail30, %assert_fail26, %assert_fail24, %assert_fail22, %assert_fail20, %assert_fail18, %assert_fail16, %assert_fail14, %assert_fail10, %assert_fail8, %assert_fail6, %assert_fail4, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail4 ], [ -1, %assert_fail6 ], [ -1, %assert_fail8 ], [ -1, %assert_fail10 ], [ -1, %assert_fail14 ], [ -1, %assert_fail16 ], [ -1, %assert_fail18 ], [ -1, %assert_fail20 ], [ -1, %assert_fail22 ], [ -1, %assert_fail24 ], [ -1, %assert_fail26 ], [ -1, %assert_fail30 ], [ -1, %assert_fail32 ], [ -1, %assert_fail36 ], [ -1, %assert_fail38 ], [ -1, %assert_fail40 ], [ -1, %assert_fail42 ], [ -1, %assert_fail44 ], [ -1, %assert_fail48 ], [ -1, %assert_fail50 ], [ -1, %assert_fail52 ], [ -1, %assert_fail54 ], [ -1, %assert_fail58 ], [ -1, %assert_fail60 ], [ -1, %assert_fail62 ], [ -1, %assert_fail64 ], [ %150, %assert_end65 ]
  ret i32 %common.ret.op, !dbg !1550

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %1(ptr nonnull @.str.433), !dbg !1550
  br label %common.ret

assert_end:                                       ; preds = %entry
  %p0.code = load i32, ptr %arg_type_ids, align 4, !dbg !1550, !tbaa !1551
  %2 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !1550
  %p1.code = load i32, ptr %2, align 4, !dbg !1550, !tbaa !1562
  %3 = getelementptr inbounds i32, ptr %arg_type_ids, i64 2, !dbg !1550
  %T_transpose.code = load i32, ptr %3, align 4, !dbg !1550, !tbaa !1564
  %p0 = load ptr, ptr %args, align 8, !dbg !1550
  %4 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !1550
  %p1 = load ptr, ptr %4, align 8, !dbg !1550
  %5 = getelementptr inbounds %0, ptr %args, i64 2, !dbg !1550
  %T_transpose = load ptr, ptr %5, align 8, !dbg !1550
  %p068 = load ptr, ptr %p0, align 8, !dbg !1550
  call void @llvm.assume(i1 true) [ "align"(ptr %p068, i64 64) ], !dbg !1550
  %6 = getelementptr inbounds %1, ptr %p0, i64 0, i32 4, !dbg !1550
  %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p0.shape = load ptr, ptr %6, align 8, !dbg !1550
  %7 = getelementptr inbounds %1, ptr %p0, i64 0, i32 5, !dbg !1550
  %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p0.strides = load ptr, ptr %7, align 8, !dbg !1550
  %8 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 1, !dbg !1550
  %dev_id = load i32, ptr %8, align 4, !dbg !1550
  %p167 = load ptr, ptr %p1, align 8, !dbg !1550
  call void @llvm.assume(i1 true) [ "align"(ptr %p167, i64 64) ], !dbg !1550
  %9 = getelementptr inbounds %1, ptr %p1, i64 0, i32 4, !dbg !1550
  %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p1.shape = load ptr, ptr %9, align 8, !dbg !1550
  %10 = getelementptr inbounds %1, ptr %p1, i64 0, i32 5, !dbg !1550
  %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p1.strides = load ptr, ptr %10, align 8, !dbg !1550
  %T_transpose66 = load ptr, ptr %T_transpose, align 8, !dbg !1550
  call void @llvm.assume(i1 true) [ "align"(ptr %T_transpose66, i64 64) ], !dbg !1550
  %11 = getelementptr inbounds %1, ptr %T_transpose, i64 0, i32 4, !dbg !1550
  %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.T_transpose.shape = load ptr, ptr %11, align 8, !dbg !1550
  %12 = getelementptr inbounds %1, ptr %T_transpose, i64 0, i32 5, !dbg !1550
  %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.T_transpose.strides = load ptr, ptr %12, align 8, !dbg !1550
  switch i32 %p0.code, label %assert_fail4 [
    i32 13, label %assert_end5
    i32 7, label %assert_end5
    i32 4, label %assert_end5
    i32 3, label %assert_end5
  ], !dbg !1550

assert_fail4:                                     ; preds = %assert_end
  %13 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %13(ptr nonnull @.str.434), !dbg !1550
  br label %common.ret

assert_end5:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %p1.code, label %assert_fail6 [
    i32 13, label %assert_end7
    i32 7, label %assert_end7
    i32 4, label %assert_end7
    i32 3, label %assert_end7
  ], !dbg !1550

assert_fail6:                                     ; preds = %assert_end5
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %14(ptr nonnull @.str.435), !dbg !1550
  br label %common.ret

assert_end7:                                      ; preds = %assert_end5, %assert_end5, %assert_end5, %assert_end5
  switch i32 %T_transpose.code, label %assert_fail8 [
    i32 13, label %assert_end9
    i32 7, label %assert_end9
    i32 4, label %assert_end9
    i32 3, label %assert_end9
  ], !dbg !1550

assert_fail8:                                     ; preds = %assert_end7
  %15 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %15(ptr nonnull @.str.436), !dbg !1550
  br label %common.ret

assert_end9:                                      ; preds = %assert_end7, %assert_end7, %assert_end7, %assert_end7
  %16 = getelementptr inbounds %1, ptr %p0, i64 0, i32 2, !dbg !1550
  %17 = load i32, ptr %16, align 4, !dbg !1550
  %18 = icmp eq i32 %17, 2, !dbg !1550
  br i1 %18, label %assert_end13, label %assert_fail10, !dbg !1550, !prof !18

assert_fail10:                                    ; preds = %assert_end9
  %19 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %19(ptr nonnull @.str.437), !dbg !1550
  br label %common.ret

assert_end13:                                     ; preds = %assert_end9
  %20 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 2, !dbg !1550
  %21 = load i16, ptr %20, align 2, !dbg !1550
  %22 = icmp eq i16 %21, 1, !dbg !1550
  %23 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 1, !dbg !1550
  %24 = load i8, ptr %23, align 1, !dbg !1550
  %25 = icmp eq i8 %24, 32, !dbg !1550
  %26 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 0, !dbg !1550
  %27 = load i8, ptr %26, align 1, !dbg !1550
  %28 = icmp eq i8 %27, 2, !dbg !1550
  %29 = and i1 %25, %28, !dbg !1550
  %30 = and i1 %22, %29, !dbg !1550
  br i1 %30, label %assert_end15, label %assert_fail14, !dbg !1550, !prof !18

assert_fail14:                                    ; preds = %assert_end13
  %31 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %31(ptr nonnull @.str.438), !dbg !1550
  br label %common.ret

assert_end15:                                     ; preds = %assert_end13
  %32 = load i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p0.shape, align 8, !dbg !1550, !tbaa !1567
  %33 = and i64 %32, 4294967295, !dbg !1550
  %34 = icmp eq i64 %33, 5, !dbg !1550
  br i1 %34, label %assert_end17, label %assert_fail16, !dbg !1550, !prof !18

assert_fail16:                                    ; preds = %assert_end15
  %35 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %35(ptr nonnull @.str.439), !dbg !1550
  br label %common.ret

assert_end17:                                     ; preds = %assert_end15
  %36 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p0.shape, i64 1, !dbg !1550
  %37 = load i64, ptr %36, align 8, !dbg !1550, !tbaa !1577
  %38 = and i64 %37, 4294967295, !dbg !1550
  %39 = icmp eq i64 %38, 768, !dbg !1550
  br i1 %39, label %assert_end19, label %assert_fail18, !dbg !1550, !prof !18

assert_fail18:                                    ; preds = %assert_end17
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %40(ptr nonnull @.str.440), !dbg !1550
  br label %common.ret

assert_end19:                                     ; preds = %assert_end17
  %.not = icmp eq ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p0.strides, null, !dbg !1550
  br i1 %.not, label %if_end, label %if_then, !dbg !1550, !prof !52

if_then:                                          ; preds = %assert_end19
  %41 = load i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p0.strides, align 8, !dbg !1550, !tbaa !1579
  %42 = and i64 %41, 4294967295, !dbg !1550
  %43 = icmp eq i64 %42, 768, !dbg !1550
  %44 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p0.strides, i64 1, !dbg !1550
  %45 = load i64, ptr %44, align 8, !dbg !1550, !tbaa !1589
  %46 = and i64 %45, 4294967295, !dbg !1550
  %47 = icmp eq i64 %46, 1, !dbg !1550
  %48 = and i1 %43, %47, !dbg !1550
  br i1 %48, label %if_end, label %assert_fail20, !dbg !1550, !prof !18

if_end:                                           ; preds = %if_then, %assert_end19
  %49 = getelementptr inbounds %1, ptr %p0, i64 0, i32 6, !dbg !1550
  %50 = load i64, ptr %49, align 8, !dbg !1550
  %51 = icmp eq i64 %50, 0, !dbg !1550
  br i1 %51, label %assert_end23, label %assert_fail22, !dbg !1550, !prof !18

assert_fail20:                                    ; preds = %if_then
  %52 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %52(ptr nonnull @.str.441), !dbg !1550
  br label %common.ret

assert_fail22:                                    ; preds = %if_end
  %53 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %53(ptr nonnull @.str.442), !dbg !1550
  br label %common.ret

assert_end23:                                     ; preds = %if_end
  %54 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 0, !dbg !1550
  %55 = load i32, ptr %54, align 4, !dbg !1550
  %56 = icmp eq i32 %55, 1, !dbg !1550
  br i1 %56, label %assert_end25, label %assert_fail24, !dbg !1550, !prof !18

assert_fail24:                                    ; preds = %assert_end23
  %57 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %57(ptr nonnull @.str.443), !dbg !1550
  br label %common.ret

assert_end25:                                     ; preds = %assert_end23
  %58 = getelementptr inbounds %1, ptr %p1, i64 0, i32 2, !dbg !1550
  %59 = load i32, ptr %58, align 4, !dbg !1550
  %60 = icmp eq i32 %59, 1, !dbg !1550
  br i1 %60, label %assert_end29, label %assert_fail26, !dbg !1550, !prof !18

assert_fail26:                                    ; preds = %assert_end25
  %61 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %61(ptr nonnull @.str.444), !dbg !1550
  br label %common.ret

assert_end29:                                     ; preds = %assert_end25
  %62 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 2, !dbg !1550
  %63 = load i16, ptr %62, align 2, !dbg !1550
  %64 = icmp eq i16 %63, 1, !dbg !1550
  %65 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 1, !dbg !1550
  %66 = load i8, ptr %65, align 1, !dbg !1550
  %67 = icmp eq i8 %66, 32, !dbg !1550
  %68 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 0, !dbg !1550
  %69 = load i8, ptr %68, align 1, !dbg !1550
  %70 = icmp eq i8 %69, 2, !dbg !1550
  %71 = and i1 %67, %70, !dbg !1550
  %72 = and i1 %64, %71, !dbg !1550
  br i1 %72, label %assert_end31, label %assert_fail30, !dbg !1550, !prof !18

assert_fail30:                                    ; preds = %assert_end29
  %73 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %73(ptr nonnull @.str.445), !dbg !1550
  br label %common.ret

assert_end31:                                     ; preds = %assert_end29
  %74 = load i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p1.shape, align 8, !dbg !1550, !tbaa !1591
  %75 = and i64 %74, 4294967295, !dbg !1550
  %76 = icmp eq i64 %75, 768, !dbg !1550
  br i1 %76, label %assert_end33, label %assert_fail32, !dbg !1550, !prof !18

assert_fail32:                                    ; preds = %assert_end31
  %77 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %77(ptr nonnull @.str.446), !dbg !1550
  br label %common.ret

assert_end33:                                     ; preds = %assert_end31
  %.not69 = icmp eq ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p1.strides, null, !dbg !1550
  br i1 %.not69, label %if_end35, label %if_then34, !dbg !1550, !prof !52

if_then34:                                        ; preds = %assert_end33
  %78 = load i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.p1.strides, align 8, !dbg !1550, !tbaa !1601
  %79 = and i64 %78, 4294967295, !dbg !1550
  %80 = icmp eq i64 %79, 1, !dbg !1550
  br i1 %80, label %if_end35, label %assert_fail36, !dbg !1550, !prof !18

if_end35:                                         ; preds = %if_then34, %assert_end33
  %81 = getelementptr inbounds %1, ptr %p1, i64 0, i32 6, !dbg !1550
  %82 = load i64, ptr %81, align 8, !dbg !1550
  %83 = icmp eq i64 %82, 0, !dbg !1550
  br i1 %83, label %assert_end39, label %assert_fail38, !dbg !1550, !prof !18

assert_fail36:                                    ; preds = %if_then34
  %84 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %84(ptr nonnull @.str.447), !dbg !1550
  br label %common.ret

assert_fail38:                                    ; preds = %if_end35
  %85 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %85(ptr nonnull @.str.448), !dbg !1550
  br label %common.ret

assert_end39:                                     ; preds = %if_end35
  %86 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 0, !dbg !1550
  %87 = load i32, ptr %86, align 4, !dbg !1550
  %88 = icmp eq i32 %87, 1, !dbg !1550
  br i1 %88, label %assert_end41, label %assert_fail40, !dbg !1550, !prof !18

assert_fail40:                                    ; preds = %assert_end39
  %89 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %89(ptr nonnull @.str.449), !dbg !1550
  br label %common.ret

assert_end41:                                     ; preds = %assert_end39
  %90 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 1, !dbg !1550
  %91 = load i32, ptr %90, align 4, !dbg !1550
  %92 = icmp eq i32 %dev_id, %91, !dbg !1550
  br i1 %92, label %assert_end43, label %assert_fail42, !dbg !1550, !prof !18

assert_fail42:                                    ; preds = %assert_end41
  %93 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %93(ptr nonnull @.str.450), !dbg !1550
  br label %common.ret

assert_end43:                                     ; preds = %assert_end41
  %94 = getelementptr inbounds %1, ptr %T_transpose, i64 0, i32 2, !dbg !1550
  %95 = load i32, ptr %94, align 4, !dbg !1550
  %96 = icmp eq i32 %95, 3, !dbg !1550
  br i1 %96, label %assert_end47, label %assert_fail44, !dbg !1550, !prof !18

assert_fail44:                                    ; preds = %assert_end43
  %97 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %97(ptr nonnull @.str.451), !dbg !1550
  br label %common.ret

assert_end47:                                     ; preds = %assert_end43
  %98 = getelementptr inbounds %1, ptr %T_transpose, i64 0, i32 3, i32 2, !dbg !1550
  %99 = load i16, ptr %98, align 2, !dbg !1550
  %100 = icmp eq i16 %99, 1, !dbg !1550
  %101 = getelementptr inbounds %1, ptr %T_transpose, i64 0, i32 3, i32 1, !dbg !1550
  %102 = load i8, ptr %101, align 1, !dbg !1550
  %103 = icmp eq i8 %102, 32, !dbg !1550
  %104 = getelementptr inbounds %1, ptr %T_transpose, i64 0, i32 3, i32 0, !dbg !1550
  %105 = load i8, ptr %104, align 1, !dbg !1550
  %106 = icmp eq i8 %105, 2, !dbg !1550
  %107 = and i1 %103, %106, !dbg !1550
  %108 = and i1 %100, %107, !dbg !1550
  br i1 %108, label %assert_end49, label %assert_fail48, !dbg !1550, !prof !18

assert_fail48:                                    ; preds = %assert_end47
  %109 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %109(ptr nonnull @.str.452), !dbg !1550
  br label %common.ret

assert_end49:                                     ; preds = %assert_end47
  %110 = load i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.T_transpose.shape, align 8, !dbg !1550, !tbaa !1611
  %111 = and i64 %110, 4294967295, !dbg !1550
  %112 = icmp eq i64 %111, 12, !dbg !1550
  br i1 %112, label %assert_end51, label %assert_fail50, !dbg !1550, !prof !18

assert_fail50:                                    ; preds = %assert_end49
  %113 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %113(ptr nonnull @.str.453), !dbg !1550
  br label %common.ret

assert_end51:                                     ; preds = %assert_end49
  %114 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.T_transpose.shape, i64 1, !dbg !1550
  %115 = load i64, ptr %114, align 8, !dbg !1550, !tbaa !1621
  %116 = and i64 %115, 4294967295, !dbg !1550
  %117 = icmp eq i64 %116, 64, !dbg !1550
  br i1 %117, label %assert_end53, label %assert_fail52, !dbg !1550, !prof !18

assert_fail52:                                    ; preds = %assert_end51
  %118 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %118(ptr nonnull @.str.454), !dbg !1550
  br label %common.ret

assert_end53:                                     ; preds = %assert_end51
  %119 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.T_transpose.shape, i64 2, !dbg !1550
  %120 = load i64, ptr %119, align 8, !dbg !1550, !tbaa !1623
  %121 = and i64 %120, 4294967295, !dbg !1550
  %122 = icmp eq i64 %121, 5, !dbg !1550
  br i1 %122, label %assert_end55, label %assert_fail54, !dbg !1550, !prof !18

assert_fail54:                                    ; preds = %assert_end53
  %123 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %123(ptr nonnull @.str.455), !dbg !1550
  br label %common.ret

assert_end55:                                     ; preds = %assert_end53
  %.not70 = icmp eq ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.T_transpose.strides, null, !dbg !1550
  br i1 %.not70, label %if_end57, label %if_then56, !dbg !1550, !prof !52

if_then56:                                        ; preds = %assert_end55
  %124 = load i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.T_transpose.strides, align 8, !dbg !1550, !tbaa !1626
  %125 = and i64 %124, 4294967295, !dbg !1550
  %126 = icmp eq i64 %125, 320, !dbg !1550
  %127 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.T_transpose.strides, i64 1, !dbg !1550
  %128 = load i64, ptr %127, align 8, !dbg !1550, !tbaa !1636
  %129 = and i64 %128, 4294967295, !dbg !1550
  %130 = icmp eq i64 %129, 5, !dbg !1550
  %131 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1.T_transpose.strides, i64 2, !dbg !1550
  %132 = load i64, ptr %131, align 8, !dbg !1550, !tbaa !1638
  %133 = and i64 %132, 4294967295, !dbg !1550
  %134 = icmp eq i64 %133, 1, !dbg !1550
  %135 = and i1 %130, %134, !dbg !1550
  %136 = and i1 %126, %135, !dbg !1550
  br i1 %136, label %if_end57, label %assert_fail58, !dbg !1550, !prof !18

if_end57:                                         ; preds = %if_then56, %assert_end55
  %137 = getelementptr inbounds %1, ptr %T_transpose, i64 0, i32 6, !dbg !1550
  %138 = load i64, ptr %137, align 8, !dbg !1550
  %139 = icmp eq i64 %138, 0, !dbg !1550
  br i1 %139, label %assert_end61, label %assert_fail60, !dbg !1550, !prof !18

assert_fail58:                                    ; preds = %if_then56
  %140 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %140(ptr nonnull @.str.456), !dbg !1550
  br label %common.ret

assert_fail60:                                    ; preds = %if_end57
  %141 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %141(ptr nonnull @.str.457), !dbg !1550
  br label %common.ret

assert_end61:                                     ; preds = %if_end57
  %142 = getelementptr inbounds %1, ptr %T_transpose, i64 0, i32 1, i32 0, !dbg !1550
  %143 = load i32, ptr %142, align 4, !dbg !1550
  %144 = icmp eq i32 %143, 1, !dbg !1550
  br i1 %144, label %assert_end63, label %assert_fail62, !dbg !1550, !prof !18

assert_fail62:                                    ; preds = %assert_end61
  %145 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %145(ptr nonnull @.str.458), !dbg !1550
  br label %common.ret

assert_end63:                                     ; preds = %assert_end61
  %146 = getelementptr inbounds %1, ptr %T_transpose, i64 0, i32 1, i32 1, !dbg !1550
  %147 = load i32, ptr %146, align 4, !dbg !1550
  %148 = icmp eq i32 %dev_id, %147, !dbg !1550
  br i1 %148, label %assert_end65, label %assert_fail64, !dbg !1550, !prof !18

assert_fail64:                                    ; preds = %assert_end63
  %149 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1550, !tbaa !19
  tail call void %149(ptr nonnull @.str.459), !dbg !1550
  br label %common.ret

assert_end65:                                     ; preds = %assert_end63
  %150 = tail call fastcc i32 @tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1_compute_(ptr %T_transpose66, ptr %p167, ptr %p068), !dbg !1550
  br label %common.ret
}

define dllexport i32 @tvmgen_default_fused_reshape_divide_add(ptr noalias nocapture readonly %args, ptr noalias nocapture readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !1641 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !1643, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !1644, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !1645, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !1646, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !1647, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !1648, metadata !DIExpression()), !dbg !1649
  %0 = icmp eq i32 %num_args, 3, !dbg !1649
  br i1 %0, label %assert_end, label %assert_fail, !dbg !1649, !prof !18

common.ret:                                       ; preds = %assert_end75, %assert_fail74, %assert_fail72, %assert_fail70, %assert_fail68, %assert_fail64, %assert_fail62, %assert_fail60, %assert_fail58, %assert_fail56, %assert_fail52, %assert_fail50, %assert_fail48, %assert_fail46, %assert_fail44, %assert_fail40, %assert_fail38, %assert_fail36, %assert_fail34, %assert_fail32, %assert_fail28, %assert_fail26, %assert_fail24, %assert_fail22, %assert_fail20, %assert_fail18, %assert_fail16, %assert_fail14, %assert_fail10, %assert_fail8, %assert_fail6, %assert_fail4, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail4 ], [ -1, %assert_fail6 ], [ -1, %assert_fail8 ], [ -1, %assert_fail10 ], [ -1, %assert_fail14 ], [ -1, %assert_fail16 ], [ -1, %assert_fail18 ], [ -1, %assert_fail20 ], [ -1, %assert_fail22 ], [ -1, %assert_fail24 ], [ -1, %assert_fail26 ], [ -1, %assert_fail28 ], [ -1, %assert_fail32 ], [ -1, %assert_fail34 ], [ -1, %assert_fail36 ], [ -1, %assert_fail38 ], [ -1, %assert_fail40 ], [ -1, %assert_fail44 ], [ -1, %assert_fail46 ], [ -1, %assert_fail48 ], [ -1, %assert_fail50 ], [ -1, %assert_fail52 ], [ -1, %assert_fail56 ], [ -1, %assert_fail58 ], [ -1, %assert_fail60 ], [ -1, %assert_fail62 ], [ -1, %assert_fail64 ], [ -1, %assert_fail68 ], [ -1, %assert_fail70 ], [ -1, %assert_fail72 ], [ -1, %assert_fail74 ], [ %182, %assert_end75 ]
  ret i32 %common.ret.op, !dbg !1649

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %1(ptr nonnull @.str.461), !dbg !1649
  br label %common.ret

assert_end:                                       ; preds = %entry
  %p0.code = load i32, ptr %arg_type_ids, align 4, !dbg !1649, !tbaa !1650
  %2 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !1649
  %p1.code = load i32, ptr %2, align 4, !dbg !1649, !tbaa !1661
  %3 = getelementptr inbounds i32, ptr %arg_type_ids, i64 2, !dbg !1649
  %T_add.code = load i32, ptr %3, align 4, !dbg !1649, !tbaa !1663
  %p0 = load ptr, ptr %args, align 8, !dbg !1649
  %4 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !1649
  %p1 = load ptr, ptr %4, align 8, !dbg !1649
  %5 = getelementptr inbounds %0, ptr %args, i64 2, !dbg !1649
  %T_add = load ptr, ptr %5, align 8, !dbg !1649
  %p077 = load ptr, ptr %p0, align 8, !dbg !1649
  call void @llvm.assume(i1 true) [ "align"(ptr %p077, i64 64) ], !dbg !1649
  %6 = getelementptr inbounds %1, ptr %p0, i64 0, i32 4, !dbg !1649
  %tvmgen_default_fused_reshape_divide_add.p0.shape = load ptr, ptr %6, align 8, !dbg !1649
  %7 = getelementptr inbounds %1, ptr %p0, i64 0, i32 5, !dbg !1649
  %tvmgen_default_fused_reshape_divide_add.p0.strides = load ptr, ptr %7, align 8, !dbg !1649
  %8 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 1, !dbg !1649
  %dev_id = load i32, ptr %8, align 4, !dbg !1649
  %p178 = load ptr, ptr %p1, align 8, !dbg !1649
  call void @llvm.assume(i1 true) [ "align"(ptr %p178, i64 64) ], !dbg !1649
  %9 = getelementptr inbounds %1, ptr %p1, i64 0, i32 4, !dbg !1649
  %tvmgen_default_fused_reshape_divide_add.p1.shape = load ptr, ptr %9, align 8, !dbg !1649
  %10 = getelementptr inbounds %1, ptr %p1, i64 0, i32 5, !dbg !1649
  %tvmgen_default_fused_reshape_divide_add.p1.strides = load ptr, ptr %10, align 8, !dbg !1649
  %T_add76 = load ptr, ptr %T_add, align 8, !dbg !1649
  call void @llvm.assume(i1 true) [ "align"(ptr %T_add76, i64 64) ], !dbg !1649
  %11 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 4, !dbg !1649
  %tvmgen_default_fused_reshape_divide_add.T_add.shape = load ptr, ptr %11, align 8, !dbg !1649
  %12 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 5, !dbg !1649
  %tvmgen_default_fused_reshape_divide_add.T_add.strides = load ptr, ptr %12, align 8, !dbg !1649
  switch i32 %p0.code, label %assert_fail4 [
    i32 13, label %assert_end5
    i32 7, label %assert_end5
    i32 4, label %assert_end5
    i32 3, label %assert_end5
  ], !dbg !1649

assert_fail4:                                     ; preds = %assert_end
  %13 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %13(ptr nonnull @.str.462), !dbg !1649
  br label %common.ret

assert_end5:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %p1.code, label %assert_fail6 [
    i32 13, label %assert_end7
    i32 7, label %assert_end7
    i32 4, label %assert_end7
    i32 3, label %assert_end7
  ], !dbg !1649

assert_fail6:                                     ; preds = %assert_end5
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %14(ptr nonnull @.str.463), !dbg !1649
  br label %common.ret

assert_end7:                                      ; preds = %assert_end5, %assert_end5, %assert_end5, %assert_end5
  switch i32 %T_add.code, label %assert_fail8 [
    i32 13, label %assert_end9
    i32 7, label %assert_end9
    i32 4, label %assert_end9
    i32 3, label %assert_end9
  ], !dbg !1649

assert_fail8:                                     ; preds = %assert_end7
  %15 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %15(ptr nonnull @.str.464), !dbg !1649
  br label %common.ret

assert_end9:                                      ; preds = %assert_end7, %assert_end7, %assert_end7, %assert_end7
  %16 = getelementptr inbounds %1, ptr %p0, i64 0, i32 2, !dbg !1649
  %17 = load i32, ptr %16, align 4, !dbg !1649
  %18 = icmp eq i32 %17, 3, !dbg !1649
  br i1 %18, label %assert_end13, label %assert_fail10, !dbg !1649, !prof !18

assert_fail10:                                    ; preds = %assert_end9
  %19 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %19(ptr nonnull @.str.465), !dbg !1649
  br label %common.ret

assert_end13:                                     ; preds = %assert_end9
  %20 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 2, !dbg !1649
  %21 = load i16, ptr %20, align 2, !dbg !1649
  %22 = icmp eq i16 %21, 1, !dbg !1649
  %23 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 1, !dbg !1649
  %24 = load i8, ptr %23, align 1, !dbg !1649
  %25 = icmp eq i8 %24, 32, !dbg !1649
  %26 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 0, !dbg !1649
  %27 = load i8, ptr %26, align 1, !dbg !1649
  %28 = icmp eq i8 %27, 2, !dbg !1649
  %29 = and i1 %25, %28, !dbg !1649
  %30 = and i1 %22, %29, !dbg !1649
  br i1 %30, label %assert_end15, label %assert_fail14, !dbg !1649, !prof !18

assert_fail14:                                    ; preds = %assert_end13
  %31 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %31(ptr nonnull @.str.466), !dbg !1649
  br label %common.ret

assert_end15:                                     ; preds = %assert_end13
  %32 = load i64, ptr %tvmgen_default_fused_reshape_divide_add.p0.shape, align 8, !dbg !1649, !tbaa !1666
  %33 = and i64 %32, 4294967295, !dbg !1649
  %34 = icmp eq i64 %33, 12, !dbg !1649
  br i1 %34, label %assert_end17, label %assert_fail16, !dbg !1649, !prof !18

assert_fail16:                                    ; preds = %assert_end15
  %35 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %35(ptr nonnull @.str.467), !dbg !1649
  br label %common.ret

assert_end17:                                     ; preds = %assert_end15
  %36 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_divide_add.p0.shape, i64 1, !dbg !1649
  %37 = load i64, ptr %36, align 8, !dbg !1649, !tbaa !1676
  %38 = and i64 %37, 4294967295, !dbg !1649
  %39 = icmp eq i64 %38, 5, !dbg !1649
  br i1 %39, label %assert_end19, label %assert_fail18, !dbg !1649, !prof !18

assert_fail18:                                    ; preds = %assert_end17
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %40(ptr nonnull @.str.468), !dbg !1649
  br label %common.ret

assert_end19:                                     ; preds = %assert_end17
  %41 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_divide_add.p0.shape, i64 2, !dbg !1649
  %42 = load i64, ptr %41, align 8, !dbg !1649, !tbaa !1678
  %43 = and i64 %42, 4294967295, !dbg !1649
  %44 = icmp eq i64 %43, 5, !dbg !1649
  br i1 %44, label %assert_end21, label %assert_fail20, !dbg !1649, !prof !18

assert_fail20:                                    ; preds = %assert_end19
  %45 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %45(ptr nonnull @.str.469), !dbg !1649
  br label %common.ret

assert_end21:                                     ; preds = %assert_end19
  %.not = icmp eq ptr %tvmgen_default_fused_reshape_divide_add.p0.strides, null, !dbg !1649
  br i1 %.not, label %if_end, label %if_then, !dbg !1649, !prof !52

if_then:                                          ; preds = %assert_end21
  %46 = load i64, ptr %tvmgen_default_fused_reshape_divide_add.p0.strides, align 8, !dbg !1649, !tbaa !1681
  %47 = and i64 %46, 4294967295, !dbg !1649
  %48 = icmp eq i64 %47, 25, !dbg !1649
  %49 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_divide_add.p0.strides, i64 1, !dbg !1649
  %50 = load i64, ptr %49, align 8, !dbg !1649, !tbaa !1691
  %51 = and i64 %50, 4294967295, !dbg !1649
  %52 = icmp eq i64 %51, 5, !dbg !1649
  %53 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_divide_add.p0.strides, i64 2, !dbg !1649
  %54 = load i64, ptr %53, align 8, !dbg !1649, !tbaa !1693
  %55 = and i64 %54, 4294967295, !dbg !1649
  %56 = icmp eq i64 %55, 1, !dbg !1649
  %57 = and i1 %52, %56, !dbg !1649
  %58 = and i1 %48, %57, !dbg !1649
  br i1 %58, label %if_end, label %assert_fail22, !dbg !1649, !prof !18

if_end:                                           ; preds = %if_then, %assert_end21
  %59 = getelementptr inbounds %1, ptr %p0, i64 0, i32 6, !dbg !1649
  %60 = load i64, ptr %59, align 8, !dbg !1649
  %61 = icmp eq i64 %60, 0, !dbg !1649
  br i1 %61, label %assert_end25, label %assert_fail24, !dbg !1649, !prof !18

assert_fail22:                                    ; preds = %if_then
  %62 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %62(ptr nonnull @.str.470), !dbg !1649
  br label %common.ret

assert_fail24:                                    ; preds = %if_end
  %63 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %63(ptr nonnull @.str.471), !dbg !1649
  br label %common.ret

assert_end25:                                     ; preds = %if_end
  %64 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 0, !dbg !1649
  %65 = load i32, ptr %64, align 4, !dbg !1649
  %66 = icmp eq i32 %65, 1, !dbg !1649
  br i1 %66, label %assert_end27, label %assert_fail26, !dbg !1649, !prof !18

assert_fail26:                                    ; preds = %assert_end25
  %67 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %67(ptr nonnull @.str.472), !dbg !1649
  br label %common.ret

assert_end27:                                     ; preds = %assert_end25
  %68 = getelementptr inbounds %1, ptr %p1, i64 0, i32 2, !dbg !1649
  %69 = load i32, ptr %68, align 4, !dbg !1649
  %70 = icmp eq i32 %69, 4, !dbg !1649
  br i1 %70, label %assert_end31, label %assert_fail28, !dbg !1649, !prof !18

assert_fail28:                                    ; preds = %assert_end27
  %71 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %71(ptr nonnull @.str.473), !dbg !1649
  br label %common.ret

assert_end31:                                     ; preds = %assert_end27
  %72 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 2, !dbg !1649
  %73 = load i16, ptr %72, align 2, !dbg !1649
  %74 = icmp eq i16 %73, 1, !dbg !1649
  %75 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 1, !dbg !1649
  %76 = load i8, ptr %75, align 1, !dbg !1649
  %77 = icmp eq i8 %76, 32, !dbg !1649
  %78 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 0, !dbg !1649
  %79 = load i8, ptr %78, align 1, !dbg !1649
  %80 = icmp eq i8 %79, 2, !dbg !1649
  %81 = and i1 %77, %80, !dbg !1649
  %82 = and i1 %74, %81, !dbg !1649
  br i1 %82, label %assert_end33, label %assert_fail32, !dbg !1649, !prof !18

assert_fail32:                                    ; preds = %assert_end31
  %83 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %83(ptr nonnull @.str.474), !dbg !1649
  br label %common.ret

assert_end33:                                     ; preds = %assert_end31
  %84 = load i64, ptr %tvmgen_default_fused_reshape_divide_add.p1.shape, align 8, !dbg !1649, !tbaa !1696
  %85 = and i64 %84, 4294967295, !dbg !1649
  %86 = icmp eq i64 %85, 1, !dbg !1649
  br i1 %86, label %assert_end35, label %assert_fail34, !dbg !1649, !prof !18

assert_fail34:                                    ; preds = %assert_end33
  %87 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %87(ptr nonnull @.str.475), !dbg !1649
  br label %common.ret

assert_end35:                                     ; preds = %assert_end33
  %88 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_divide_add.p1.shape, i64 1, !dbg !1649
  %89 = load i64, ptr %88, align 8, !dbg !1649, !tbaa !1706
  %90 = and i64 %89, 4294967295, !dbg !1649
  %91 = icmp eq i64 %90, 1, !dbg !1649
  br i1 %91, label %assert_end37, label %assert_fail36, !dbg !1649, !prof !18

assert_fail36:                                    ; preds = %assert_end35
  %92 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %92(ptr nonnull @.str.476), !dbg !1649
  br label %common.ret

assert_end37:                                     ; preds = %assert_end35
  %93 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_divide_add.p1.shape, i64 2, !dbg !1649
  %94 = load i64, ptr %93, align 8, !dbg !1649, !tbaa !1708
  %95 = and i64 %94, 4294967295, !dbg !1649
  %96 = icmp eq i64 %95, 1, !dbg !1649
  br i1 %96, label %assert_end39, label %assert_fail38, !dbg !1649, !prof !18

assert_fail38:                                    ; preds = %assert_end37
  %97 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %97(ptr nonnull @.str.477), !dbg !1649
  br label %common.ret

assert_end39:                                     ; preds = %assert_end37
  %98 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_divide_add.p1.shape, i64 3, !dbg !1649
  %99 = load i64, ptr %98, align 8, !dbg !1649, !tbaa !1711
  %100 = and i64 %99, 4294967295, !dbg !1649
  %101 = icmp eq i64 %100, 5, !dbg !1649
  br i1 %101, label %assert_end41, label %assert_fail40, !dbg !1649, !prof !18

assert_fail40:                                    ; preds = %assert_end39
  %102 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %102(ptr nonnull @.str.478), !dbg !1649
  br label %common.ret

assert_end41:                                     ; preds = %assert_end39
  %.not79 = icmp eq ptr %tvmgen_default_fused_reshape_divide_add.p1.strides, null, !dbg !1649
  br i1 %.not79, label %if_end43, label %if_then42, !dbg !1649, !prof !52

if_then42:                                        ; preds = %assert_end41
  %103 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_divide_add.p1.strides, i64 3, !dbg !1649
  %104 = load i64, ptr %103, align 8, !dbg !1649, !tbaa !1713
  %105 = and i64 %104, 4294967295, !dbg !1649
  %106 = icmp eq i64 %105, 1, !dbg !1649
  br i1 %106, label %if_end43, label %assert_fail44, !dbg !1649, !prof !18

if_end43:                                         ; preds = %if_then42, %assert_end41
  %107 = getelementptr inbounds %1, ptr %p1, i64 0, i32 6, !dbg !1649
  %108 = load i64, ptr %107, align 8, !dbg !1649
  %109 = icmp eq i64 %108, 0, !dbg !1649
  br i1 %109, label %assert_end47, label %assert_fail46, !dbg !1649, !prof !18

assert_fail44:                                    ; preds = %if_then42
  %110 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %110(ptr nonnull @.str.479), !dbg !1649
  br label %common.ret

assert_fail46:                                    ; preds = %if_end43
  %111 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %111(ptr nonnull @.str.480), !dbg !1649
  br label %common.ret

assert_end47:                                     ; preds = %if_end43
  %112 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 0, !dbg !1649
  %113 = load i32, ptr %112, align 4, !dbg !1649
  %114 = icmp eq i32 %113, 1, !dbg !1649
  br i1 %114, label %assert_end49, label %assert_fail48, !dbg !1649, !prof !18

assert_fail48:                                    ; preds = %assert_end47
  %115 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %115(ptr nonnull @.str.481), !dbg !1649
  br label %common.ret

assert_end49:                                     ; preds = %assert_end47
  %116 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 1, !dbg !1649
  %117 = load i32, ptr %116, align 4, !dbg !1649
  %118 = icmp eq i32 %dev_id, %117, !dbg !1649
  br i1 %118, label %assert_end51, label %assert_fail50, !dbg !1649, !prof !18

assert_fail50:                                    ; preds = %assert_end49
  %119 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %119(ptr nonnull @.str.482), !dbg !1649
  br label %common.ret

assert_end51:                                     ; preds = %assert_end49
  %120 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 2, !dbg !1649
  %121 = load i32, ptr %120, align 4, !dbg !1649
  %122 = icmp eq i32 %121, 4, !dbg !1649
  br i1 %122, label %assert_end55, label %assert_fail52, !dbg !1649, !prof !18

assert_fail52:                                    ; preds = %assert_end51
  %123 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %123(ptr nonnull @.str.483), !dbg !1649
  br label %common.ret

assert_end55:                                     ; preds = %assert_end51
  %124 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 3, i32 2, !dbg !1649
  %125 = load i16, ptr %124, align 2, !dbg !1649
  %126 = icmp eq i16 %125, 1, !dbg !1649
  %127 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 3, i32 1, !dbg !1649
  %128 = load i8, ptr %127, align 1, !dbg !1649
  %129 = icmp eq i8 %128, 32, !dbg !1649
  %130 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 3, i32 0, !dbg !1649
  %131 = load i8, ptr %130, align 1, !dbg !1649
  %132 = icmp eq i8 %131, 2, !dbg !1649
  %133 = and i1 %129, %132, !dbg !1649
  %134 = and i1 %126, %133, !dbg !1649
  br i1 %134, label %assert_end57, label %assert_fail56, !dbg !1649, !prof !18

assert_fail56:                                    ; preds = %assert_end55
  %135 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %135(ptr nonnull @.str.484), !dbg !1649
  br label %common.ret

assert_end57:                                     ; preds = %assert_end55
  %136 = load i64, ptr %tvmgen_default_fused_reshape_divide_add.T_add.shape, align 8, !dbg !1649, !tbaa !1723
  %137 = and i64 %136, 4294967295, !dbg !1649
  %138 = icmp eq i64 %137, 1, !dbg !1649
  br i1 %138, label %assert_end59, label %assert_fail58, !dbg !1649, !prof !18

assert_fail58:                                    ; preds = %assert_end57
  %139 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %139(ptr nonnull @.str.485), !dbg !1649
  br label %common.ret

assert_end59:                                     ; preds = %assert_end57
  %140 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_divide_add.T_add.shape, i64 1, !dbg !1649
  %141 = load i64, ptr %140, align 8, !dbg !1649, !tbaa !1733
  %142 = and i64 %141, 4294967295, !dbg !1649
  %143 = icmp eq i64 %142, 12, !dbg !1649
  br i1 %143, label %assert_end61, label %assert_fail60, !dbg !1649, !prof !18

assert_fail60:                                    ; preds = %assert_end59
  %144 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %144(ptr nonnull @.str.486), !dbg !1649
  br label %common.ret

assert_end61:                                     ; preds = %assert_end59
  %145 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_divide_add.T_add.shape, i64 2, !dbg !1649
  %146 = load i64, ptr %145, align 8, !dbg !1649, !tbaa !1735
  %147 = and i64 %146, 4294967295, !dbg !1649
  %148 = icmp eq i64 %147, 5, !dbg !1649
  br i1 %148, label %assert_end63, label %assert_fail62, !dbg !1649, !prof !18

assert_fail62:                                    ; preds = %assert_end61
  %149 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %149(ptr nonnull @.str.487), !dbg !1649
  br label %common.ret

assert_end63:                                     ; preds = %assert_end61
  %150 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_divide_add.T_add.shape, i64 3, !dbg !1649
  %151 = load i64, ptr %150, align 8, !dbg !1649, !tbaa !1738
  %152 = and i64 %151, 4294967295, !dbg !1649
  %153 = icmp eq i64 %152, 5, !dbg !1649
  br i1 %153, label %assert_end65, label %assert_fail64, !dbg !1649, !prof !18

assert_fail64:                                    ; preds = %assert_end63
  %154 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %154(ptr nonnull @.str.488), !dbg !1649
  br label %common.ret

assert_end65:                                     ; preds = %assert_end63
  %.not80 = icmp eq ptr %tvmgen_default_fused_reshape_divide_add.T_add.strides, null, !dbg !1649
  br i1 %.not80, label %if_end67, label %if_then66, !dbg !1649, !prof !52

if_then66:                                        ; preds = %assert_end65
  %155 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_divide_add.T_add.strides, i64 1, !dbg !1649
  %156 = load i64, ptr %155, align 8, !dbg !1649, !tbaa !1740
  %157 = and i64 %156, 4294967295, !dbg !1649
  %158 = icmp eq i64 %157, 25, !dbg !1649
  %159 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_divide_add.T_add.strides, i64 2, !dbg !1649
  %160 = load i64, ptr %159, align 8, !dbg !1649, !tbaa !1750
  %161 = and i64 %160, 4294967295, !dbg !1649
  %162 = icmp eq i64 %161, 5, !dbg !1649
  %163 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_divide_add.T_add.strides, i64 3, !dbg !1649
  %164 = load i64, ptr %163, align 8, !dbg !1649, !tbaa !1753
  %165 = and i64 %164, 4294967295, !dbg !1649
  %166 = icmp eq i64 %165, 1, !dbg !1649
  %167 = and i1 %162, %166, !dbg !1649
  %168 = and i1 %158, %167, !dbg !1649
  br i1 %168, label %if_end67, label %assert_fail68, !dbg !1649, !prof !18

if_end67:                                         ; preds = %if_then66, %assert_end65
  %169 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 6, !dbg !1649
  %170 = load i64, ptr %169, align 8, !dbg !1649
  %171 = icmp eq i64 %170, 0, !dbg !1649
  br i1 %171, label %assert_end71, label %assert_fail70, !dbg !1649, !prof !18

assert_fail68:                                    ; preds = %if_then66
  %172 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %172(ptr nonnull @.str.489), !dbg !1649
  br label %common.ret

assert_fail70:                                    ; preds = %if_end67
  %173 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %173(ptr nonnull @.str.490), !dbg !1649
  br label %common.ret

assert_end71:                                     ; preds = %if_end67
  %174 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 1, i32 0, !dbg !1649
  %175 = load i32, ptr %174, align 4, !dbg !1649
  %176 = icmp eq i32 %175, 1, !dbg !1649
  br i1 %176, label %assert_end73, label %assert_fail72, !dbg !1649, !prof !18

assert_fail72:                                    ; preds = %assert_end71
  %177 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %177(ptr nonnull @.str.491), !dbg !1649
  br label %common.ret

assert_end73:                                     ; preds = %assert_end71
  %178 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 1, i32 1, !dbg !1649
  %179 = load i32, ptr %178, align 4, !dbg !1649
  %180 = icmp eq i32 %dev_id, %179, !dbg !1649
  br i1 %180, label %assert_end75, label %assert_fail74, !dbg !1649, !prof !18

assert_fail74:                                    ; preds = %assert_end73
  %181 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1649, !tbaa !19
  tail call void %181(ptr nonnull @.str.492), !dbg !1649
  br label %common.ret

assert_end75:                                     ; preds = %assert_end73
  %182 = tail call fastcc i32 @tvmgen_default_fused_reshape_divide_add_compute_(ptr %T_add76, ptr %p077, ptr %p178), !dbg !1649
  br label %common.ret
}

define dllexport i32 @tvmgen_default_fused_reshape_transpose_reshape(ptr noalias nocapture readonly %args, ptr noalias nocapture readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !1755 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !1757, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !1758, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !1759, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !1760, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !1761, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !1762, metadata !DIExpression()), !dbg !1763
  %0 = icmp eq i32 %num_args, 2, !dbg !1763
  br i1 %0, label %assert_end, label %assert_fail, !dbg !1763, !prof !18

common.ret:                                       ; preds = %assert_end44, %assert_fail43, %assert_fail41, %assert_fail39, %assert_fail37, %assert_fail33, %assert_fail31, %assert_fail29, %assert_fail25, %assert_fail23, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail7, %assert_fail5, %assert_fail3, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail33 ], [ -1, %assert_fail37 ], [ -1, %assert_fail39 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ %109, %assert_end44 ]
  ret i32 %common.ret.op, !dbg !1763

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1763, !tbaa !19
  tail call void %1(ptr nonnull @.str.494), !dbg !1763
  br label %common.ret

assert_end:                                       ; preds = %entry
  %p0.code = load i32, ptr %arg_type_ids, align 4, !dbg !1763, !tbaa !1764
  %2 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !1763
  %T_reshape.code = load i32, ptr %2, align 4, !dbg !1763, !tbaa !1775
  %p0 = load ptr, ptr %args, align 8, !dbg !1763
  %3 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !1763
  %T_reshape = load ptr, ptr %3, align 8, !dbg !1763
  %p046 = load ptr, ptr %p0, align 8, !dbg !1763
  call void @llvm.assume(i1 true) [ "align"(ptr %p046, i64 64) ], !dbg !1763
  %4 = getelementptr inbounds %1, ptr %p0, i64 0, i32 4, !dbg !1763
  %tvmgen_default_fused_reshape_transpose_reshape.p0.shape = load ptr, ptr %4, align 8, !dbg !1763
  %5 = getelementptr inbounds %1, ptr %p0, i64 0, i32 5, !dbg !1763
  %tvmgen_default_fused_reshape_transpose_reshape.p0.strides = load ptr, ptr %5, align 8, !dbg !1763
  %6 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 1, !dbg !1763
  %dev_id = load i32, ptr %6, align 4, !dbg !1763
  %T_reshape45 = load ptr, ptr %T_reshape, align 8, !dbg !1763
  call void @llvm.assume(i1 true) [ "align"(ptr %T_reshape45, i64 64) ], !dbg !1763
  %7 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 4, !dbg !1763
  %tvmgen_default_fused_reshape_transpose_reshape.T_reshape.shape = load ptr, ptr %7, align 8, !dbg !1763
  %8 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 5, !dbg !1763
  %tvmgen_default_fused_reshape_transpose_reshape.T_reshape.strides = load ptr, ptr %8, align 8, !dbg !1763
  switch i32 %p0.code, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ], !dbg !1763

assert_fail3:                                     ; preds = %assert_end
  %9 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1763, !tbaa !19
  tail call void %9(ptr nonnull @.str.495), !dbg !1763
  br label %common.ret

assert_end4:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %T_reshape.code, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ], !dbg !1763

assert_fail5:                                     ; preds = %assert_end4
  %10 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1763, !tbaa !19
  tail call void %10(ptr nonnull @.str.496), !dbg !1763
  br label %common.ret

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  %11 = getelementptr inbounds %1, ptr %p0, i64 0, i32 2, !dbg !1763
  %12 = load i32, ptr %11, align 4, !dbg !1763
  %13 = icmp eq i32 %12, 3, !dbg !1763
  br i1 %13, label %assert_end10, label %assert_fail7, !dbg !1763, !prof !18

assert_fail7:                                     ; preds = %assert_end6
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1763, !tbaa !19
  tail call void %14(ptr nonnull @.str.497), !dbg !1763
  br label %common.ret

assert_end10:                                     ; preds = %assert_end6
  %15 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 2, !dbg !1763
  %16 = load i16, ptr %15, align 2, !dbg !1763
  %17 = icmp eq i16 %16, 1, !dbg !1763
  %18 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 1, !dbg !1763
  %19 = load i8, ptr %18, align 1, !dbg !1763
  %20 = icmp eq i8 %19, 32, !dbg !1763
  %21 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 0, !dbg !1763
  %22 = load i8, ptr %21, align 1, !dbg !1763
  %23 = icmp eq i8 %22, 2, !dbg !1763
  %24 = and i1 %20, %23, !dbg !1763
  %25 = and i1 %17, %24, !dbg !1763
  br i1 %25, label %assert_end12, label %assert_fail11, !dbg !1763, !prof !18

assert_fail11:                                    ; preds = %assert_end10
  %26 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1763, !tbaa !19
  tail call void %26(ptr nonnull @.str.498), !dbg !1763
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10
  %27 = load i64, ptr %tvmgen_default_fused_reshape_transpose_reshape.p0.shape, align 8, !dbg !1763, !tbaa !1777
  %28 = and i64 %27, 4294967295, !dbg !1763
  %29 = icmp eq i64 %28, 12, !dbg !1763
  br i1 %29, label %assert_end14, label %assert_fail13, !dbg !1763, !prof !18

assert_fail13:                                    ; preds = %assert_end12
  %30 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1763, !tbaa !19
  tail call void %30(ptr nonnull @.str.499), !dbg !1763
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12
  %31 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_transpose_reshape.p0.shape, i64 1, !dbg !1763
  %32 = load i64, ptr %31, align 8, !dbg !1763, !tbaa !1787
  %33 = and i64 %32, 4294967295, !dbg !1763
  %34 = icmp eq i64 %33, 5, !dbg !1763
  br i1 %34, label %assert_end16, label %assert_fail15, !dbg !1763, !prof !18

assert_fail15:                                    ; preds = %assert_end14
  %35 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1763, !tbaa !19
  tail call void %35(ptr nonnull @.str.500), !dbg !1763
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14
  %36 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_transpose_reshape.p0.shape, i64 2, !dbg !1763
  %37 = load i64, ptr %36, align 8, !dbg !1763, !tbaa !1789
  %38 = and i64 %37, 4294967295, !dbg !1763
  %39 = icmp eq i64 %38, 64, !dbg !1763
  br i1 %39, label %assert_end18, label %assert_fail17, !dbg !1763, !prof !18

assert_fail17:                                    ; preds = %assert_end16
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1763, !tbaa !19
  tail call void %40(ptr nonnull @.str.501), !dbg !1763
  br label %common.ret

assert_end18:                                     ; preds = %assert_end16
  %.not = icmp eq ptr %tvmgen_default_fused_reshape_transpose_reshape.p0.strides, null, !dbg !1763
  br i1 %.not, label %if_end, label %if_then, !dbg !1763, !prof !52

if_then:                                          ; preds = %assert_end18
  %41 = load i64, ptr %tvmgen_default_fused_reshape_transpose_reshape.p0.strides, align 8, !dbg !1763, !tbaa !1792
  %42 = and i64 %41, 4294967295, !dbg !1763
  %43 = icmp eq i64 %42, 320, !dbg !1763
  %44 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_transpose_reshape.p0.strides, i64 1, !dbg !1763
  %45 = load i64, ptr %44, align 8, !dbg !1763, !tbaa !1802
  %46 = and i64 %45, 4294967295, !dbg !1763
  %47 = icmp eq i64 %46, 64, !dbg !1763
  %48 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_transpose_reshape.p0.strides, i64 2, !dbg !1763
  %49 = load i64, ptr %48, align 8, !dbg !1763, !tbaa !1804
  %50 = and i64 %49, 4294967295, !dbg !1763
  %51 = icmp eq i64 %50, 1, !dbg !1763
  %52 = and i1 %47, %51, !dbg !1763
  %53 = and i1 %43, %52, !dbg !1763
  br i1 %53, label %if_end, label %assert_fail19, !dbg !1763, !prof !18

if_end:                                           ; preds = %if_then, %assert_end18
  %54 = getelementptr inbounds %1, ptr %p0, i64 0, i32 6, !dbg !1763
  %55 = load i64, ptr %54, align 8, !dbg !1763
  %56 = icmp eq i64 %55, 0, !dbg !1763
  br i1 %56, label %assert_end22, label %assert_fail21, !dbg !1763, !prof !18

assert_fail19:                                    ; preds = %if_then
  %57 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1763, !tbaa !19
  tail call void %57(ptr nonnull @.str.502), !dbg !1763
  br label %common.ret

assert_fail21:                                    ; preds = %if_end
  %58 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1763, !tbaa !19
  tail call void %58(ptr nonnull @.str.503), !dbg !1763
  br label %common.ret

assert_end22:                                     ; preds = %if_end
  %59 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 0, !dbg !1763
  %60 = load i32, ptr %59, align 4, !dbg !1763
  %61 = icmp eq i32 %60, 1, !dbg !1763
  br i1 %61, label %assert_end24, label %assert_fail23, !dbg !1763, !prof !18

assert_fail23:                                    ; preds = %assert_end22
  %62 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1763, !tbaa !19
  tail call void %62(ptr nonnull @.str.504), !dbg !1763
  br label %common.ret

assert_end24:                                     ; preds = %assert_end22
  %63 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 2, !dbg !1763
  %64 = load i32, ptr %63, align 4, !dbg !1763
  %65 = icmp eq i32 %64, 2, !dbg !1763
  br i1 %65, label %assert_end28, label %assert_fail25, !dbg !1763, !prof !18

assert_fail25:                                    ; preds = %assert_end24
  %66 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1763, !tbaa !19
  tail call void %66(ptr nonnull @.str.505), !dbg !1763
  br label %common.ret

assert_end28:                                     ; preds = %assert_end24
  %67 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 3, i32 2, !dbg !1763
  %68 = load i16, ptr %67, align 2, !dbg !1763
  %69 = icmp eq i16 %68, 1, !dbg !1763
  %70 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 3, i32 1, !dbg !1763
  %71 = load i8, ptr %70, align 1, !dbg !1763
  %72 = icmp eq i8 %71, 32, !dbg !1763
  %73 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 3, i32 0, !dbg !1763
  %74 = load i8, ptr %73, align 1, !dbg !1763
  %75 = icmp eq i8 %74, 2, !dbg !1763
  %76 = and i1 %72, %75, !dbg !1763
  %77 = and i1 %69, %76, !dbg !1763
  br i1 %77, label %assert_end30, label %assert_fail29, !dbg !1763, !prof !18

assert_fail29:                                    ; preds = %assert_end28
  %78 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1763, !tbaa !19
  tail call void %78(ptr nonnull @.str.506), !dbg !1763
  br label %common.ret

assert_end30:                                     ; preds = %assert_end28
  %79 = load i64, ptr %tvmgen_default_fused_reshape_transpose_reshape.T_reshape.shape, align 8, !dbg !1763, !tbaa !1807
  %80 = and i64 %79, 4294967295, !dbg !1763
  %81 = icmp eq i64 %80, 5, !dbg !1763
  br i1 %81, label %assert_end32, label %assert_fail31, !dbg !1763, !prof !18

assert_fail31:                                    ; preds = %assert_end30
  %82 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1763, !tbaa !19
  tail call void %82(ptr nonnull @.str.507), !dbg !1763
  br label %common.ret

assert_end32:                                     ; preds = %assert_end30
  %83 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_transpose_reshape.T_reshape.shape, i64 1, !dbg !1763
  %84 = load i64, ptr %83, align 8, !dbg !1763, !tbaa !1817
  %85 = and i64 %84, 4294967295, !dbg !1763
  %86 = icmp eq i64 %85, 768, !dbg !1763
  br i1 %86, label %assert_end34, label %assert_fail33, !dbg !1763, !prof !18

assert_fail33:                                    ; preds = %assert_end32
  %87 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1763, !tbaa !19
  tail call void %87(ptr nonnull @.str.508), !dbg !1763
  br label %common.ret

assert_end34:                                     ; preds = %assert_end32
  %.not47 = icmp eq ptr %tvmgen_default_fused_reshape_transpose_reshape.T_reshape.strides, null, !dbg !1763
  br i1 %.not47, label %if_end36, label %if_then35, !dbg !1763, !prof !52

if_then35:                                        ; preds = %assert_end34
  %88 = load i64, ptr %tvmgen_default_fused_reshape_transpose_reshape.T_reshape.strides, align 8, !dbg !1763, !tbaa !1819
  %89 = and i64 %88, 4294967295, !dbg !1763
  %90 = icmp eq i64 %89, 768, !dbg !1763
  %91 = getelementptr inbounds i64, ptr %tvmgen_default_fused_reshape_transpose_reshape.T_reshape.strides, i64 1, !dbg !1763
  %92 = load i64, ptr %91, align 8, !dbg !1763, !tbaa !1829
  %93 = and i64 %92, 4294967295, !dbg !1763
  %94 = icmp eq i64 %93, 1, !dbg !1763
  %95 = and i1 %90, %94, !dbg !1763
  br i1 %95, label %if_end36, label %assert_fail37, !dbg !1763, !prof !18

if_end36:                                         ; preds = %if_then35, %assert_end34
  %96 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 6, !dbg !1763
  %97 = load i64, ptr %96, align 8, !dbg !1763
  %98 = icmp eq i64 %97, 0, !dbg !1763
  br i1 %98, label %assert_end40, label %assert_fail39, !dbg !1763, !prof !18

assert_fail37:                                    ; preds = %if_then35
  %99 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1763, !tbaa !19
  tail call void %99(ptr nonnull @.str.509), !dbg !1763
  br label %common.ret

assert_fail39:                                    ; preds = %if_end36
  %100 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1763, !tbaa !19
  tail call void %100(ptr nonnull @.str.510), !dbg !1763
  br label %common.ret

assert_end40:                                     ; preds = %if_end36
  %101 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 1, i32 0, !dbg !1763
  %102 = load i32, ptr %101, align 4, !dbg !1763
  %103 = icmp eq i32 %102, 1, !dbg !1763
  br i1 %103, label %assert_end42, label %assert_fail41, !dbg !1763, !prof !18

assert_fail41:                                    ; preds = %assert_end40
  %104 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1763, !tbaa !19
  tail call void %104(ptr nonnull @.str.511), !dbg !1763
  br label %common.ret

assert_end42:                                     ; preds = %assert_end40
  %105 = getelementptr inbounds %1, ptr %T_reshape, i64 0, i32 1, i32 1, !dbg !1763
  %106 = load i32, ptr %105, align 4, !dbg !1763
  %107 = icmp eq i32 %dev_id, %106, !dbg !1763
  br i1 %107, label %assert_end44, label %assert_fail43, !dbg !1763, !prof !18

assert_fail43:                                    ; preds = %assert_end42
  %108 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1763, !tbaa !19
  tail call void %108(ptr nonnull @.str.512), !dbg !1763
  br label %common.ret

assert_end44:                                     ; preds = %assert_end42
  %109 = tail call fastcc i32 @tvmgen_default_fused_reshape_transpose_reshape_compute_(ptr %T_reshape45, ptr %p046), !dbg !1763
  br label %common.ret
}

define dllexport i32 @tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add(ptr noalias nocapture readonly %args, ptr noalias nocapture readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !1831 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !1833, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !1834, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !1835, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !1836, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !1837, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !1838, metadata !DIExpression()), !dbg !1839
  %0 = icmp eq i32 %num_args, 6, !dbg !1839
  br i1 %0, label %assert_end, label %assert_fail, !dbg !1839, !prof !18

common.ret:                                       ; preds = %assert_end138, %assert_fail137, %assert_fail135, %assert_fail133, %assert_fail131, %assert_fail127, %assert_fail125, %assert_fail123, %assert_fail121, %assert_fail117, %assert_fail115, %assert_fail113, %assert_fail111, %assert_fail109, %assert_fail105, %assert_fail103, %assert_fail99, %assert_fail97, %assert_fail95, %assert_fail93, %assert_fail91, %assert_fail87, %assert_fail85, %assert_fail81, %assert_fail79, %assert_fail77, %assert_fail75, %assert_fail73, %assert_fail69, %assert_fail67, %assert_fail65, %assert_fail63, %assert_fail59, %assert_fail57, %assert_fail55, %assert_fail53, %assert_fail51, %assert_fail47, %assert_fail45, %assert_fail43, %assert_fail41, %assert_fail37, %assert_fail35, %assert_fail33, %assert_fail31, %assert_fail29, %assert_fail27, %assert_fail25, %assert_fail23, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail7, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail7 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail27 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail33 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail45 ], [ -1, %assert_fail47 ], [ -1, %assert_fail51 ], [ -1, %assert_fail53 ], [ -1, %assert_fail55 ], [ -1, %assert_fail57 ], [ -1, %assert_fail59 ], [ -1, %assert_fail63 ], [ -1, %assert_fail65 ], [ -1, %assert_fail67 ], [ -1, %assert_fail69 ], [ -1, %assert_fail73 ], [ -1, %assert_fail75 ], [ -1, %assert_fail77 ], [ -1, %assert_fail79 ], [ -1, %assert_fail81 ], [ -1, %assert_fail85 ], [ -1, %assert_fail87 ], [ -1, %assert_fail91 ], [ -1, %assert_fail93 ], [ -1, %assert_fail95 ], [ -1, %assert_fail97 ], [ -1, %assert_fail99 ], [ -1, %assert_fail103 ], [ -1, %assert_fail105 ], [ -1, %assert_fail109 ], [ -1, %assert_fail111 ], [ -1, %assert_fail113 ], [ -1, %assert_fail115 ], [ -1, %assert_fail117 ], [ -1, %assert_fail121 ], [ -1, %assert_fail123 ], [ -1, %assert_fail125 ], [ -1, %assert_fail127 ], [ -1, %assert_fail131 ], [ -1, %assert_fail133 ], [ -1, %assert_fail135 ], [ -1, %assert_fail137 ], [ %297, %assert_end138 ]
  ret i32 %common.ret.op, !dbg !1839

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %1(ptr nonnull @.str.514), !dbg !1839
  br label %common.ret

assert_end:                                       ; preds = %entry
  %p0.code = load i32, ptr %arg_type_ids, align 4, !dbg !1839, !tbaa !1840
  %2 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !1839
  %p1.code = load i32, ptr %2, align 4, !dbg !1839, !tbaa !1851
  %3 = getelementptr inbounds i32, ptr %arg_type_ids, i64 2, !dbg !1839
  %p2.code = load i32, ptr %3, align 4, !dbg !1839, !tbaa !1853
  %4 = getelementptr inbounds i32, ptr %arg_type_ids, i64 3, !dbg !1839
  %p3.code = load i32, ptr %4, align 4, !dbg !1839, !tbaa !1856
  %5 = getelementptr inbounds i32, ptr %arg_type_ids, i64 4, !dbg !1839
  %p4.code = load i32, ptr %5, align 4, !dbg !1839, !tbaa !1858
  %6 = getelementptr inbounds i32, ptr %arg_type_ids, i64 5, !dbg !1839
  %T_add.code = load i32, ptr %6, align 4, !dbg !1839, !tbaa !1862
  %p0 = load ptr, ptr %args, align 8, !dbg !1839
  %7 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !1839
  %p1 = load ptr, ptr %7, align 8, !dbg !1839
  %8 = getelementptr inbounds %0, ptr %args, i64 2, !dbg !1839
  %p2 = load ptr, ptr %8, align 8, !dbg !1839
  %9 = getelementptr inbounds %0, ptr %args, i64 3, !dbg !1839
  %p3 = load ptr, ptr %9, align 8, !dbg !1839
  %10 = getelementptr inbounds %0, ptr %args, i64 4, !dbg !1839
  %p4 = load ptr, ptr %10, align 8, !dbg !1839
  %11 = getelementptr inbounds %0, ptr %args, i64 5, !dbg !1839
  %T_add = load ptr, ptr %11, align 8, !dbg !1839
  %p0140 = load ptr, ptr %p0, align 8, !dbg !1839
  call void @llvm.assume(i1 true) [ "align"(ptr %p0140, i64 64) ], !dbg !1839
  %12 = getelementptr inbounds %1, ptr %p0, i64 0, i32 4, !dbg !1839
  %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p0.shape = load ptr, ptr %12, align 8, !dbg !1839
  %13 = getelementptr inbounds %1, ptr %p0, i64 0, i32 5, !dbg !1839
  %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p0.strides = load ptr, ptr %13, align 8, !dbg !1839
  %14 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 1, !dbg !1839
  %dev_id = load i32, ptr %14, align 4, !dbg !1839
  %p1141 = load ptr, ptr %p1, align 8, !dbg !1839
  call void @llvm.assume(i1 true) [ "align"(ptr %p1141, i64 64) ], !dbg !1839
  %15 = getelementptr inbounds %1, ptr %p1, i64 0, i32 4, !dbg !1839
  %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p1.shape = load ptr, ptr %15, align 8, !dbg !1839
  %16 = getelementptr inbounds %1, ptr %p1, i64 0, i32 5, !dbg !1839
  %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p1.strides = load ptr, ptr %16, align 8, !dbg !1839
  %p2142 = load ptr, ptr %p2, align 8, !dbg !1839
  call void @llvm.assume(i1 true) [ "align"(ptr %p2142, i64 64) ], !dbg !1839
  %17 = getelementptr inbounds %1, ptr %p2, i64 0, i32 4, !dbg !1839
  %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p2.shape = load ptr, ptr %17, align 8, !dbg !1839
  %18 = getelementptr inbounds %1, ptr %p2, i64 0, i32 5, !dbg !1839
  %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p2.strides = load ptr, ptr %18, align 8, !dbg !1839
  %p3143 = load ptr, ptr %p3, align 8, !dbg !1839
  call void @llvm.assume(i1 true) [ "align"(ptr %p3143, i64 64) ], !dbg !1839
  %19 = getelementptr inbounds %1, ptr %p3, i64 0, i32 4, !dbg !1839
  %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p3.shape = load ptr, ptr %19, align 8, !dbg !1839
  %20 = getelementptr inbounds %1, ptr %p3, i64 0, i32 5, !dbg !1839
  %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p3.strides = load ptr, ptr %20, align 8, !dbg !1839
  %p4144 = load ptr, ptr %p4, align 8, !dbg !1839
  call void @llvm.assume(i1 true) [ "align"(ptr %p4144, i64 64) ], !dbg !1839
  %21 = getelementptr inbounds %1, ptr %p4, i64 0, i32 4, !dbg !1839
  %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p4.shape = load ptr, ptr %21, align 8, !dbg !1839
  %22 = getelementptr inbounds %1, ptr %p4, i64 0, i32 5, !dbg !1839
  %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p4.strides = load ptr, ptr %22, align 8, !dbg !1839
  %T_add139 = load ptr, ptr %T_add, align 8, !dbg !1839
  call void @llvm.assume(i1 true) [ "align"(ptr %T_add139, i64 64) ], !dbg !1839
  %23 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 4, !dbg !1839
  %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.T_add.shape = load ptr, ptr %23, align 8, !dbg !1839
  %24 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 5, !dbg !1839
  %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.T_add.strides = load ptr, ptr %24, align 8, !dbg !1839
  switch i32 %p0.code, label %assert_fail7 [
    i32 13, label %assert_end8
    i32 7, label %assert_end8
    i32 4, label %assert_end8
    i32 3, label %assert_end8
  ], !dbg !1839

assert_fail7:                                     ; preds = %assert_end
  %25 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %25(ptr nonnull @.str.515), !dbg !1839
  br label %common.ret

assert_end8:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %p1.code, label %assert_fail9 [
    i32 13, label %assert_end10
    i32 7, label %assert_end10
    i32 4, label %assert_end10
    i32 3, label %assert_end10
  ], !dbg !1839

assert_fail9:                                     ; preds = %assert_end8
  %26 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %26(ptr nonnull @.str.516), !dbg !1839
  br label %common.ret

assert_end10:                                     ; preds = %assert_end8, %assert_end8, %assert_end8, %assert_end8
  switch i32 %p2.code, label %assert_fail11 [
    i32 13, label %assert_end12
    i32 7, label %assert_end12
    i32 4, label %assert_end12
    i32 3, label %assert_end12
  ], !dbg !1839

assert_fail11:                                    ; preds = %assert_end10
  %27 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %27(ptr nonnull @.str.517), !dbg !1839
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10, %assert_end10, %assert_end10, %assert_end10
  switch i32 %p3.code, label %assert_fail13 [
    i32 13, label %assert_end14
    i32 7, label %assert_end14
    i32 4, label %assert_end14
    i32 3, label %assert_end14
  ], !dbg !1839

assert_fail13:                                    ; preds = %assert_end12
  %28 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %28(ptr nonnull @.str.518), !dbg !1839
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12, %assert_end12, %assert_end12, %assert_end12
  switch i32 %p4.code, label %assert_fail15 [
    i32 13, label %assert_end16
    i32 7, label %assert_end16
    i32 4, label %assert_end16
    i32 3, label %assert_end16
  ], !dbg !1839

assert_fail15:                                    ; preds = %assert_end14
  %29 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %29(ptr nonnull @.str.519), !dbg !1839
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14, %assert_end14, %assert_end14, %assert_end14
  switch i32 %T_add.code, label %assert_fail17 [
    i32 13, label %assert_end18
    i32 7, label %assert_end18
    i32 4, label %assert_end18
    i32 3, label %assert_end18
  ], !dbg !1839

assert_fail17:                                    ; preds = %assert_end16
  %30 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %30(ptr nonnull @.str.520), !dbg !1839
  br label %common.ret

assert_end18:                                     ; preds = %assert_end16, %assert_end16, %assert_end16, %assert_end16
  %31 = getelementptr inbounds %1, ptr %p0, i64 0, i32 2, !dbg !1839
  %32 = load i32, ptr %31, align 4, !dbg !1839
  %33 = icmp eq i32 %32, 3, !dbg !1839
  br i1 %33, label %assert_end22, label %assert_fail19, !dbg !1839, !prof !18

assert_fail19:                                    ; preds = %assert_end18
  %34 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %34(ptr nonnull @.str.521), !dbg !1839
  br label %common.ret

assert_end22:                                     ; preds = %assert_end18
  %35 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 2, !dbg !1839
  %36 = load i16, ptr %35, align 2, !dbg !1839
  %37 = icmp eq i16 %36, 1, !dbg !1839
  %38 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 1, !dbg !1839
  %39 = load i8, ptr %38, align 1, !dbg !1839
  %40 = icmp eq i8 %39, 32, !dbg !1839
  %41 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 0, !dbg !1839
  %42 = load i8, ptr %41, align 1, !dbg !1839
  %43 = icmp eq i8 %42, 2, !dbg !1839
  %44 = and i1 %40, %43, !dbg !1839
  %45 = and i1 %37, %44, !dbg !1839
  br i1 %45, label %assert_end24, label %assert_fail23, !dbg !1839, !prof !18

assert_fail23:                                    ; preds = %assert_end22
  %46 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %46(ptr nonnull @.str.522), !dbg !1839
  br label %common.ret

assert_end24:                                     ; preds = %assert_end22
  %47 = load i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p0.shape, align 8, !dbg !1839, !tbaa !1864
  %48 = and i64 %47, 4294967295, !dbg !1839
  %49 = icmp eq i64 %48, 1, !dbg !1839
  br i1 %49, label %assert_end26, label %assert_fail25, !dbg !1839, !prof !18

assert_fail25:                                    ; preds = %assert_end24
  %50 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %50(ptr nonnull @.str.523), !dbg !1839
  br label %common.ret

assert_end26:                                     ; preds = %assert_end24
  %51 = getelementptr inbounds i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p0.shape, i64 1, !dbg !1839
  %52 = load i64, ptr %51, align 8, !dbg !1839, !tbaa !1874
  %53 = and i64 %52, 4294967295, !dbg !1839
  %54 = icmp eq i64 %53, 5, !dbg !1839
  br i1 %54, label %assert_end28, label %assert_fail27, !dbg !1839, !prof !18

assert_fail27:                                    ; preds = %assert_end26
  %55 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %55(ptr nonnull @.str.524), !dbg !1839
  br label %common.ret

assert_end28:                                     ; preds = %assert_end26
  %56 = getelementptr inbounds i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p0.shape, i64 2, !dbg !1839
  %57 = load i64, ptr %56, align 8, !dbg !1839, !tbaa !1876
  %58 = and i64 %57, 4294967295, !dbg !1839
  %59 = icmp eq i64 %58, 768, !dbg !1839
  br i1 %59, label %assert_end30, label %assert_fail29, !dbg !1839, !prof !18

assert_fail29:                                    ; preds = %assert_end28
  %60 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %60(ptr nonnull @.str.525), !dbg !1839
  br label %common.ret

assert_end30:                                     ; preds = %assert_end28
  %.not = icmp eq ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p0.strides, null, !dbg !1839
  br i1 %.not, label %if_end, label %if_then, !dbg !1839, !prof !52

if_then:                                          ; preds = %assert_end30
  %61 = getelementptr inbounds i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p0.strides, i64 1, !dbg !1839
  %62 = load i64, ptr %61, align 8, !dbg !1839, !tbaa !1879
  %63 = and i64 %62, 4294967295, !dbg !1839
  %64 = icmp eq i64 %63, 768, !dbg !1839
  %65 = getelementptr inbounds i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p0.strides, i64 2, !dbg !1839
  %66 = load i64, ptr %65, align 8, !dbg !1839, !tbaa !1889
  %67 = and i64 %66, 4294967295, !dbg !1839
  %68 = icmp eq i64 %67, 1, !dbg !1839
  %69 = and i1 %64, %68, !dbg !1839
  br i1 %69, label %if_end, label %assert_fail31, !dbg !1839, !prof !18

if_end:                                           ; preds = %if_then, %assert_end30
  %70 = getelementptr inbounds %1, ptr %p0, i64 0, i32 6, !dbg !1839
  %71 = load i64, ptr %70, align 8, !dbg !1839
  %72 = icmp eq i64 %71, 0, !dbg !1839
  br i1 %72, label %assert_end34, label %assert_fail33, !dbg !1839, !prof !18

assert_fail31:                                    ; preds = %if_then
  %73 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %73(ptr nonnull @.str.526), !dbg !1839
  br label %common.ret

assert_fail33:                                    ; preds = %if_end
  %74 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %74(ptr nonnull @.str.527), !dbg !1839
  br label %common.ret

assert_end34:                                     ; preds = %if_end
  %75 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 0, !dbg !1839
  %76 = load i32, ptr %75, align 4, !dbg !1839
  %77 = icmp eq i32 %76, 1, !dbg !1839
  br i1 %77, label %assert_end36, label %assert_fail35, !dbg !1839, !prof !18

assert_fail35:                                    ; preds = %assert_end34
  %78 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %78(ptr nonnull @.str.528), !dbg !1839
  br label %common.ret

assert_end36:                                     ; preds = %assert_end34
  %79 = getelementptr inbounds %1, ptr %p1, i64 0, i32 2, !dbg !1839
  %80 = load i32, ptr %79, align 4, !dbg !1839
  %81 = icmp eq i32 %80, 3, !dbg !1839
  br i1 %81, label %assert_end40, label %assert_fail37, !dbg !1839, !prof !18

assert_fail37:                                    ; preds = %assert_end36
  %82 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %82(ptr nonnull @.str.529), !dbg !1839
  br label %common.ret

assert_end40:                                     ; preds = %assert_end36
  %83 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 2, !dbg !1839
  %84 = load i16, ptr %83, align 2, !dbg !1839
  %85 = icmp eq i16 %84, 1, !dbg !1839
  %86 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 1, !dbg !1839
  %87 = load i8, ptr %86, align 1, !dbg !1839
  %88 = icmp eq i8 %87, 32, !dbg !1839
  %89 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 0, !dbg !1839
  %90 = load i8, ptr %89, align 1, !dbg !1839
  %91 = icmp eq i8 %90, 2, !dbg !1839
  %92 = and i1 %88, %91, !dbg !1839
  %93 = and i1 %85, %92, !dbg !1839
  br i1 %93, label %assert_end42, label %assert_fail41, !dbg !1839, !prof !18

assert_fail41:                                    ; preds = %assert_end40
  %94 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %94(ptr nonnull @.str.530), !dbg !1839
  br label %common.ret

assert_end42:                                     ; preds = %assert_end40
  %95 = load i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p1.shape, align 8, !dbg !1839, !tbaa !1892
  %96 = and i64 %95, 4294967295, !dbg !1839
  %97 = icmp eq i64 %96, 1, !dbg !1839
  br i1 %97, label %assert_end44, label %assert_fail43, !dbg !1839, !prof !18

assert_fail43:                                    ; preds = %assert_end42
  %98 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %98(ptr nonnull @.str.531), !dbg !1839
  br label %common.ret

assert_end44:                                     ; preds = %assert_end42
  %99 = getelementptr inbounds i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p1.shape, i64 1, !dbg !1839
  %100 = load i64, ptr %99, align 8, !dbg !1839, !tbaa !1902
  %101 = and i64 %100, 4294967295, !dbg !1839
  %102 = icmp eq i64 %101, 5, !dbg !1839
  br i1 %102, label %assert_end46, label %assert_fail45, !dbg !1839, !prof !18

assert_fail45:                                    ; preds = %assert_end44
  %103 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %103(ptr nonnull @.str.532), !dbg !1839
  br label %common.ret

assert_end46:                                     ; preds = %assert_end44
  %104 = getelementptr inbounds i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p1.shape, i64 2, !dbg !1839
  %105 = load i64, ptr %104, align 8, !dbg !1839, !tbaa !1904
  %106 = and i64 %105, 4294967295, !dbg !1839
  %107 = icmp eq i64 %106, 1, !dbg !1839
  br i1 %107, label %assert_end48, label %assert_fail47, !dbg !1839, !prof !18

assert_fail47:                                    ; preds = %assert_end46
  %108 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %108(ptr nonnull @.str.533), !dbg !1839
  br label %common.ret

assert_end48:                                     ; preds = %assert_end46
  %.not145 = icmp eq ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p1.strides, null, !dbg !1839
  br i1 %.not145, label %if_end50, label %if_then49, !dbg !1839, !prof !52

if_then49:                                        ; preds = %assert_end48
  %109 = getelementptr inbounds i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p1.strides, i64 1, !dbg !1839
  %110 = load i64, ptr %109, align 8, !dbg !1839, !tbaa !1907
  %111 = and i64 %110, 4294967295, !dbg !1839
  %112 = icmp eq i64 %111, 1, !dbg !1839
  br i1 %112, label %if_end50, label %assert_fail51, !dbg !1839, !prof !18

if_end50:                                         ; preds = %if_then49, %assert_end48
  %113 = getelementptr inbounds %1, ptr %p1, i64 0, i32 6, !dbg !1839
  %114 = load i64, ptr %113, align 8, !dbg !1839
  %115 = icmp eq i64 %114, 0, !dbg !1839
  br i1 %115, label %assert_end54, label %assert_fail53, !dbg !1839, !prof !18

assert_fail51:                                    ; preds = %if_then49
  %116 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %116(ptr nonnull @.str.534), !dbg !1839
  br label %common.ret

assert_fail53:                                    ; preds = %if_end50
  %117 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %117(ptr nonnull @.str.535), !dbg !1839
  br label %common.ret

assert_end54:                                     ; preds = %if_end50
  %118 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 0, !dbg !1839
  %119 = load i32, ptr %118, align 4, !dbg !1839
  %120 = icmp eq i32 %119, 1, !dbg !1839
  br i1 %120, label %assert_end56, label %assert_fail55, !dbg !1839, !prof !18

assert_fail55:                                    ; preds = %assert_end54
  %121 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %121(ptr nonnull @.str.536), !dbg !1839
  br label %common.ret

assert_end56:                                     ; preds = %assert_end54
  %122 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 1, !dbg !1839
  %123 = load i32, ptr %122, align 4, !dbg !1839
  %124 = icmp eq i32 %dev_id, %123, !dbg !1839
  br i1 %124, label %assert_end58, label %assert_fail57, !dbg !1839, !prof !18

assert_fail57:                                    ; preds = %assert_end56
  %125 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %125(ptr nonnull @.str.537), !dbg !1839
  br label %common.ret

assert_end58:                                     ; preds = %assert_end56
  %126 = getelementptr inbounds %1, ptr %p2, i64 0, i32 2, !dbg !1839
  %127 = load i32, ptr %126, align 4, !dbg !1839
  %128 = icmp eq i32 %127, 3, !dbg !1839
  br i1 %128, label %assert_end62, label %assert_fail59, !dbg !1839, !prof !18

assert_fail59:                                    ; preds = %assert_end58
  %129 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %129(ptr nonnull @.str.538), !dbg !1839
  br label %common.ret

assert_end62:                                     ; preds = %assert_end58
  %130 = getelementptr inbounds %1, ptr %p2, i64 0, i32 3, i32 2, !dbg !1839
  %131 = load i16, ptr %130, align 2, !dbg !1839
  %132 = icmp eq i16 %131, 1, !dbg !1839
  %133 = getelementptr inbounds %1, ptr %p2, i64 0, i32 3, i32 1, !dbg !1839
  %134 = load i8, ptr %133, align 1, !dbg !1839
  %135 = icmp eq i8 %134, 32, !dbg !1839
  %136 = getelementptr inbounds %1, ptr %p2, i64 0, i32 3, i32 0, !dbg !1839
  %137 = load i8, ptr %136, align 1, !dbg !1839
  %138 = icmp eq i8 %137, 2, !dbg !1839
  %139 = and i1 %135, %138, !dbg !1839
  %140 = and i1 %132, %139, !dbg !1839
  br i1 %140, label %assert_end64, label %assert_fail63, !dbg !1839, !prof !18

assert_fail63:                                    ; preds = %assert_end62
  %141 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %141(ptr nonnull @.str.539), !dbg !1839
  br label %common.ret

assert_end64:                                     ; preds = %assert_end62
  %142 = load i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p2.shape, align 8, !dbg !1839, !tbaa !1917
  %143 = and i64 %142, 4294967295, !dbg !1839
  %144 = icmp eq i64 %143, 1, !dbg !1839
  br i1 %144, label %assert_end66, label %assert_fail65, !dbg !1839, !prof !18

assert_fail65:                                    ; preds = %assert_end64
  %145 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %145(ptr nonnull @.str.540), !dbg !1839
  br label %common.ret

assert_end66:                                     ; preds = %assert_end64
  %146 = getelementptr inbounds i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p2.shape, i64 1, !dbg !1839
  %147 = load i64, ptr %146, align 8, !dbg !1839, !tbaa !1927
  %148 = and i64 %147, 4294967295, !dbg !1839
  %149 = icmp eq i64 %148, 5, !dbg !1839
  br i1 %149, label %assert_end68, label %assert_fail67, !dbg !1839, !prof !18

assert_fail67:                                    ; preds = %assert_end66
  %150 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %150(ptr nonnull @.str.541), !dbg !1839
  br label %common.ret

assert_end68:                                     ; preds = %assert_end66
  %151 = getelementptr inbounds i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p2.shape, i64 2, !dbg !1839
  %152 = load i64, ptr %151, align 8, !dbg !1839, !tbaa !1929
  %153 = and i64 %152, 4294967295, !dbg !1839
  %154 = icmp eq i64 %153, 1, !dbg !1839
  br i1 %154, label %assert_end70, label %assert_fail69, !dbg !1839, !prof !18

assert_fail69:                                    ; preds = %assert_end68
  %155 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %155(ptr nonnull @.str.542), !dbg !1839
  br label %common.ret

assert_end70:                                     ; preds = %assert_end68
  %.not146 = icmp eq ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p2.strides, null, !dbg !1839
  br i1 %.not146, label %if_end72, label %if_then71, !dbg !1839, !prof !52

if_then71:                                        ; preds = %assert_end70
  %156 = getelementptr inbounds i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p2.strides, i64 1, !dbg !1839
  %157 = load i64, ptr %156, align 8, !dbg !1839, !tbaa !1932
  %158 = and i64 %157, 4294967295, !dbg !1839
  %159 = icmp eq i64 %158, 1, !dbg !1839
  br i1 %159, label %if_end72, label %assert_fail73, !dbg !1839, !prof !18

if_end72:                                         ; preds = %if_then71, %assert_end70
  %160 = getelementptr inbounds %1, ptr %p2, i64 0, i32 6, !dbg !1839
  %161 = load i64, ptr %160, align 8, !dbg !1839
  %162 = icmp eq i64 %161, 0, !dbg !1839
  br i1 %162, label %assert_end76, label %assert_fail75, !dbg !1839, !prof !18

assert_fail73:                                    ; preds = %if_then71
  %163 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %163(ptr nonnull @.str.543), !dbg !1839
  br label %common.ret

assert_fail75:                                    ; preds = %if_end72
  %164 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %164(ptr nonnull @.str.544), !dbg !1839
  br label %common.ret

assert_end76:                                     ; preds = %if_end72
  %165 = getelementptr inbounds %1, ptr %p2, i64 0, i32 1, i32 0, !dbg !1839
  %166 = load i32, ptr %165, align 4, !dbg !1839
  %167 = icmp eq i32 %166, 1, !dbg !1839
  br i1 %167, label %assert_end78, label %assert_fail77, !dbg !1839, !prof !18

assert_fail77:                                    ; preds = %assert_end76
  %168 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %168(ptr nonnull @.str.545), !dbg !1839
  br label %common.ret

assert_end78:                                     ; preds = %assert_end76
  %169 = getelementptr inbounds %1, ptr %p2, i64 0, i32 1, i32 1, !dbg !1839
  %170 = load i32, ptr %169, align 4, !dbg !1839
  %171 = icmp eq i32 %dev_id, %170, !dbg !1839
  br i1 %171, label %assert_end80, label %assert_fail79, !dbg !1839, !prof !18

assert_fail79:                                    ; preds = %assert_end78
  %172 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %172(ptr nonnull @.str.546), !dbg !1839
  br label %common.ret

assert_end80:                                     ; preds = %assert_end78
  %173 = getelementptr inbounds %1, ptr %p3, i64 0, i32 2, !dbg !1839
  %174 = load i32, ptr %173, align 4, !dbg !1839
  %175 = icmp eq i32 %174, 1, !dbg !1839
  br i1 %175, label %assert_end84, label %assert_fail81, !dbg !1839, !prof !18

assert_fail81:                                    ; preds = %assert_end80
  %176 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %176(ptr nonnull @.str.547), !dbg !1839
  br label %common.ret

assert_end84:                                     ; preds = %assert_end80
  %177 = getelementptr inbounds %1, ptr %p3, i64 0, i32 3, i32 2, !dbg !1839
  %178 = load i16, ptr %177, align 2, !dbg !1839
  %179 = icmp eq i16 %178, 1, !dbg !1839
  %180 = getelementptr inbounds %1, ptr %p3, i64 0, i32 3, i32 1, !dbg !1839
  %181 = load i8, ptr %180, align 1, !dbg !1839
  %182 = icmp eq i8 %181, 32, !dbg !1839
  %183 = getelementptr inbounds %1, ptr %p3, i64 0, i32 3, i32 0, !dbg !1839
  %184 = load i8, ptr %183, align 1, !dbg !1839
  %185 = icmp eq i8 %184, 2, !dbg !1839
  %186 = and i1 %182, %185, !dbg !1839
  %187 = and i1 %179, %186, !dbg !1839
  br i1 %187, label %assert_end86, label %assert_fail85, !dbg !1839, !prof !18

assert_fail85:                                    ; preds = %assert_end84
  %188 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %188(ptr nonnull @.str.548), !dbg !1839
  br label %common.ret

assert_end86:                                     ; preds = %assert_end84
  %189 = load i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p3.shape, align 8, !dbg !1839, !tbaa !1942
  %190 = and i64 %189, 4294967295, !dbg !1839
  %191 = icmp eq i64 %190, 768, !dbg !1839
  br i1 %191, label %assert_end88, label %assert_fail87, !dbg !1839, !prof !18

assert_fail87:                                    ; preds = %assert_end86
  %192 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %192(ptr nonnull @.str.549), !dbg !1839
  br label %common.ret

assert_end88:                                     ; preds = %assert_end86
  %.not147 = icmp eq ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p3.strides, null, !dbg !1839
  br i1 %.not147, label %if_end90, label %if_then89, !dbg !1839, !prof !52

if_then89:                                        ; preds = %assert_end88
  %193 = load i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p3.strides, align 8, !dbg !1839, !tbaa !1952
  %194 = and i64 %193, 4294967295, !dbg !1839
  %195 = icmp eq i64 %194, 1, !dbg !1839
  br i1 %195, label %if_end90, label %assert_fail91, !dbg !1839, !prof !18

if_end90:                                         ; preds = %if_then89, %assert_end88
  %196 = getelementptr inbounds %1, ptr %p3, i64 0, i32 6, !dbg !1839
  %197 = load i64, ptr %196, align 8, !dbg !1839
  %198 = icmp eq i64 %197, 0, !dbg !1839
  br i1 %198, label %assert_end94, label %assert_fail93, !dbg !1839, !prof !18

assert_fail91:                                    ; preds = %if_then89
  %199 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %199(ptr nonnull @.str.550), !dbg !1839
  br label %common.ret

assert_fail93:                                    ; preds = %if_end90
  %200 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %200(ptr nonnull @.str.551), !dbg !1839
  br label %common.ret

assert_end94:                                     ; preds = %if_end90
  %201 = getelementptr inbounds %1, ptr %p3, i64 0, i32 1, i32 0, !dbg !1839
  %202 = load i32, ptr %201, align 4, !dbg !1839
  %203 = icmp eq i32 %202, 1, !dbg !1839
  br i1 %203, label %assert_end96, label %assert_fail95, !dbg !1839, !prof !18

assert_fail95:                                    ; preds = %assert_end94
  %204 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %204(ptr nonnull @.str.552), !dbg !1839
  br label %common.ret

assert_end96:                                     ; preds = %assert_end94
  %205 = getelementptr inbounds %1, ptr %p3, i64 0, i32 1, i32 1, !dbg !1839
  %206 = load i32, ptr %205, align 4, !dbg !1839
  %207 = icmp eq i32 %dev_id, %206, !dbg !1839
  br i1 %207, label %assert_end98, label %assert_fail97, !dbg !1839, !prof !18

assert_fail97:                                    ; preds = %assert_end96
  %208 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %208(ptr nonnull @.str.553), !dbg !1839
  br label %common.ret

assert_end98:                                     ; preds = %assert_end96
  %209 = getelementptr inbounds %1, ptr %p4, i64 0, i32 2, !dbg !1839
  %210 = load i32, ptr %209, align 4, !dbg !1839
  %211 = icmp eq i32 %210, 1, !dbg !1839
  br i1 %211, label %assert_end102, label %assert_fail99, !dbg !1839, !prof !18

assert_fail99:                                    ; preds = %assert_end98
  %212 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %212(ptr nonnull @.str.554), !dbg !1839
  br label %common.ret

assert_end102:                                    ; preds = %assert_end98
  %213 = getelementptr inbounds %1, ptr %p4, i64 0, i32 3, i32 2, !dbg !1839
  %214 = load i16, ptr %213, align 2, !dbg !1839
  %215 = icmp eq i16 %214, 1, !dbg !1839
  %216 = getelementptr inbounds %1, ptr %p4, i64 0, i32 3, i32 1, !dbg !1839
  %217 = load i8, ptr %216, align 1, !dbg !1839
  %218 = icmp eq i8 %217, 32, !dbg !1839
  %219 = getelementptr inbounds %1, ptr %p4, i64 0, i32 3, i32 0, !dbg !1839
  %220 = load i8, ptr %219, align 1, !dbg !1839
  %221 = icmp eq i8 %220, 2, !dbg !1839
  %222 = and i1 %218, %221, !dbg !1839
  %223 = and i1 %215, %222, !dbg !1839
  br i1 %223, label %assert_end104, label %assert_fail103, !dbg !1839, !prof !18

assert_fail103:                                   ; preds = %assert_end102
  %224 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %224(ptr nonnull @.str.555), !dbg !1839
  br label %common.ret

assert_end104:                                    ; preds = %assert_end102
  %225 = load i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p4.shape, align 8, !dbg !1839, !tbaa !1962
  %226 = and i64 %225, 4294967295, !dbg !1839
  %227 = icmp eq i64 %226, 768, !dbg !1839
  br i1 %227, label %assert_end106, label %assert_fail105, !dbg !1839, !prof !18

assert_fail105:                                   ; preds = %assert_end104
  %228 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %228(ptr nonnull @.str.556), !dbg !1839
  br label %common.ret

assert_end106:                                    ; preds = %assert_end104
  %.not148 = icmp eq ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p4.strides, null, !dbg !1839
  br i1 %.not148, label %if_end108, label %if_then107, !dbg !1839, !prof !52

if_then107:                                       ; preds = %assert_end106
  %229 = load i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.p4.strides, align 8, !dbg !1839, !tbaa !1972
  %230 = and i64 %229, 4294967295, !dbg !1839
  %231 = icmp eq i64 %230, 1, !dbg !1839
  br i1 %231, label %if_end108, label %assert_fail109, !dbg !1839, !prof !18

if_end108:                                        ; preds = %if_then107, %assert_end106
  %232 = getelementptr inbounds %1, ptr %p4, i64 0, i32 6, !dbg !1839
  %233 = load i64, ptr %232, align 8, !dbg !1839
  %234 = icmp eq i64 %233, 0, !dbg !1839
  br i1 %234, label %assert_end112, label %assert_fail111, !dbg !1839, !prof !18

assert_fail109:                                   ; preds = %if_then107
  %235 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %235(ptr nonnull @.str.557), !dbg !1839
  br label %common.ret

assert_fail111:                                   ; preds = %if_end108
  %236 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %236(ptr nonnull @.str.558), !dbg !1839
  br label %common.ret

assert_end112:                                    ; preds = %if_end108
  %237 = getelementptr inbounds %1, ptr %p4, i64 0, i32 1, i32 0, !dbg !1839
  %238 = load i32, ptr %237, align 4, !dbg !1839
  %239 = icmp eq i32 %238, 1, !dbg !1839
  br i1 %239, label %assert_end114, label %assert_fail113, !dbg !1839, !prof !18

assert_fail113:                                   ; preds = %assert_end112
  %240 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %240(ptr nonnull @.str.559), !dbg !1839
  br label %common.ret

assert_end114:                                    ; preds = %assert_end112
  %241 = getelementptr inbounds %1, ptr %p4, i64 0, i32 1, i32 1, !dbg !1839
  %242 = load i32, ptr %241, align 4, !dbg !1839
  %243 = icmp eq i32 %dev_id, %242, !dbg !1839
  br i1 %243, label %assert_end116, label %assert_fail115, !dbg !1839, !prof !18

assert_fail115:                                   ; preds = %assert_end114
  %244 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %244(ptr nonnull @.str.560), !dbg !1839
  br label %common.ret

assert_end116:                                    ; preds = %assert_end114
  %245 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 2, !dbg !1839
  %246 = load i32, ptr %245, align 4, !dbg !1839
  %247 = icmp eq i32 %246, 3, !dbg !1839
  br i1 %247, label %assert_end120, label %assert_fail117, !dbg !1839, !prof !18

assert_fail117:                                   ; preds = %assert_end116
  %248 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %248(ptr nonnull @.str.561), !dbg !1839
  br label %common.ret

assert_end120:                                    ; preds = %assert_end116
  %249 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 3, i32 2, !dbg !1839
  %250 = load i16, ptr %249, align 2, !dbg !1839
  %251 = icmp eq i16 %250, 1, !dbg !1839
  %252 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 3, i32 1, !dbg !1839
  %253 = load i8, ptr %252, align 1, !dbg !1839
  %254 = icmp eq i8 %253, 32, !dbg !1839
  %255 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 3, i32 0, !dbg !1839
  %256 = load i8, ptr %255, align 1, !dbg !1839
  %257 = icmp eq i8 %256, 2, !dbg !1839
  %258 = and i1 %254, %257, !dbg !1839
  %259 = and i1 %251, %258, !dbg !1839
  br i1 %259, label %assert_end122, label %assert_fail121, !dbg !1839, !prof !18

assert_fail121:                                   ; preds = %assert_end120
  %260 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %260(ptr nonnull @.str.562), !dbg !1839
  br label %common.ret

assert_end122:                                    ; preds = %assert_end120
  %261 = load i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.T_add.shape, align 8, !dbg !1839, !tbaa !1982
  %262 = and i64 %261, 4294967295, !dbg !1839
  %263 = icmp eq i64 %262, 1, !dbg !1839
  br i1 %263, label %assert_end124, label %assert_fail123, !dbg !1839, !prof !18

assert_fail123:                                   ; preds = %assert_end122
  %264 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %264(ptr nonnull @.str.563), !dbg !1839
  br label %common.ret

assert_end124:                                    ; preds = %assert_end122
  %265 = getelementptr inbounds i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.T_add.shape, i64 1, !dbg !1839
  %266 = load i64, ptr %265, align 8, !dbg !1839, !tbaa !1992
  %267 = and i64 %266, 4294967295, !dbg !1839
  %268 = icmp eq i64 %267, 5, !dbg !1839
  br i1 %268, label %assert_end126, label %assert_fail125, !dbg !1839, !prof !18

assert_fail125:                                   ; preds = %assert_end124
  %269 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %269(ptr nonnull @.str.564), !dbg !1839
  br label %common.ret

assert_end126:                                    ; preds = %assert_end124
  %270 = getelementptr inbounds i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.T_add.shape, i64 2, !dbg !1839
  %271 = load i64, ptr %270, align 8, !dbg !1839, !tbaa !1994
  %272 = and i64 %271, 4294967295, !dbg !1839
  %273 = icmp eq i64 %272, 768, !dbg !1839
  br i1 %273, label %assert_end128, label %assert_fail127, !dbg !1839, !prof !18

assert_fail127:                                   ; preds = %assert_end126
  %274 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %274(ptr nonnull @.str.565), !dbg !1839
  br label %common.ret

assert_end128:                                    ; preds = %assert_end126
  %.not149 = icmp eq ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.T_add.strides, null, !dbg !1839
  br i1 %.not149, label %if_end130, label %if_then129, !dbg !1839, !prof !52

if_then129:                                       ; preds = %assert_end128
  %275 = getelementptr inbounds i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.T_add.strides, i64 1, !dbg !1839
  %276 = load i64, ptr %275, align 8, !dbg !1839, !tbaa !1997
  %277 = and i64 %276, 4294967295, !dbg !1839
  %278 = icmp eq i64 %277, 768, !dbg !1839
  %279 = getelementptr inbounds i64, ptr %tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add.T_add.strides, i64 2, !dbg !1839
  %280 = load i64, ptr %279, align 8, !dbg !1839, !tbaa !2007
  %281 = and i64 %280, 4294967295, !dbg !1839
  %282 = icmp eq i64 %281, 1, !dbg !1839
  %283 = and i1 %278, %282, !dbg !1839
  br i1 %283, label %if_end130, label %assert_fail131, !dbg !1839, !prof !18

if_end130:                                        ; preds = %if_then129, %assert_end128
  %284 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 6, !dbg !1839
  %285 = load i64, ptr %284, align 8, !dbg !1839
  %286 = icmp eq i64 %285, 0, !dbg !1839
  br i1 %286, label %assert_end134, label %assert_fail133, !dbg !1839, !prof !18

assert_fail131:                                   ; preds = %if_then129
  %287 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %287(ptr nonnull @.str.566), !dbg !1839
  br label %common.ret

assert_fail133:                                   ; preds = %if_end130
  %288 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %288(ptr nonnull @.str.567), !dbg !1839
  br label %common.ret

assert_end134:                                    ; preds = %if_end130
  %289 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 1, i32 0, !dbg !1839
  %290 = load i32, ptr %289, align 4, !dbg !1839
  %291 = icmp eq i32 %290, 1, !dbg !1839
  br i1 %291, label %assert_end136, label %assert_fail135, !dbg !1839, !prof !18

assert_fail135:                                   ; preds = %assert_end134
  %292 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %292(ptr nonnull @.str.568), !dbg !1839
  br label %common.ret

assert_end136:                                    ; preds = %assert_end134
  %293 = getelementptr inbounds %1, ptr %T_add, i64 0, i32 1, i32 1, !dbg !1839
  %294 = load i32, ptr %293, align 4, !dbg !1839
  %295 = icmp eq i32 %dev_id, %294, !dbg !1839
  br i1 %295, label %assert_end138, label %assert_fail137, !dbg !1839, !prof !18

assert_fail137:                                   ; preds = %assert_end136
  %296 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !1839, !tbaa !19
  tail call void %296(ptr nonnull @.str.569), !dbg !1839
  br label %common.ret

assert_end138:                                    ; preds = %assert_end136
  %297 = tail call fastcc i32 @tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_compute_(ptr %T_add139, ptr %p0140, ptr %p1141, ptr %p2142, ptr %p3143, ptr %p4144), !dbg !1839
  br label %common.ret
}

define dllexport i32 @tvmgen_default_fused_take(ptr noalias nocapture readonly %args, ptr noalias nocapture readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !2010 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !2012, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !2013, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !2014, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !2015, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !2016, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !2017, metadata !DIExpression()), !dbg !2018
  %0 = icmp eq i32 %num_args, 2, !dbg !2018
  br i1 %0, label %assert_end, label %assert_fail, !dbg !2018, !prof !18

common.ret:                                       ; preds = %assert_end44, %assert_fail43, %assert_fail41, %assert_fail39, %assert_fail37, %assert_fail33, %assert_fail31, %assert_fail29, %assert_fail25, %assert_fail23, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail7, %assert_fail5, %assert_fail3, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail33 ], [ -1, %assert_fail37 ], [ -1, %assert_fail39 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ 0, %assert_end44 ]
  ret i32 %common.ret.op, !dbg !2018

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2018, !tbaa !19
  tail call void %1(ptr nonnull @.str.571), !dbg !2018
  br label %common.ret

assert_end:                                       ; preds = %entry
  %p0.code = load i32, ptr %arg_type_ids, align 4, !dbg !2018, !tbaa !2019
  %2 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !2018
  %T_take.code = load i32, ptr %2, align 4, !dbg !2018, !tbaa !2030
  %p0 = load ptr, ptr %args, align 8, !dbg !2018
  %3 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !2018
  %T_take = load ptr, ptr %3, align 8, !dbg !2018
  %p046 = load ptr, ptr %p0, align 8, !dbg !2018
  call void @llvm.assume(i1 true) [ "align"(ptr %p046, i64 64) ], !dbg !2018
  %4 = getelementptr inbounds %1, ptr %p0, i64 0, i32 4, !dbg !2018
  %tvmgen_default_fused_take.p0.shape = load ptr, ptr %4, align 8, !dbg !2018
  %5 = getelementptr inbounds %1, ptr %p0, i64 0, i32 5, !dbg !2018
  %tvmgen_default_fused_take.p0.strides = load ptr, ptr %5, align 8, !dbg !2018
  %6 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 1, !dbg !2018
  %dev_id = load i32, ptr %6, align 4, !dbg !2018
  %T_take45 = load ptr, ptr %T_take, align 8, !dbg !2018
  call void @llvm.assume(i1 true) [ "align"(ptr %T_take45, i64 64) ], !dbg !2018
  %7 = getelementptr inbounds %1, ptr %T_take, i64 0, i32 4, !dbg !2018
  %tvmgen_default_fused_take.T_take.shape = load ptr, ptr %7, align 8, !dbg !2018
  %8 = getelementptr inbounds %1, ptr %T_take, i64 0, i32 5, !dbg !2018
  %tvmgen_default_fused_take.T_take.strides = load ptr, ptr %8, align 8, !dbg !2018
  switch i32 %p0.code, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ], !dbg !2018

assert_fail3:                                     ; preds = %assert_end
  %9 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2018, !tbaa !19
  tail call void %9(ptr nonnull @.str.572), !dbg !2018
  br label %common.ret

assert_end4:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %T_take.code, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ], !dbg !2018

assert_fail5:                                     ; preds = %assert_end4
  %10 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2018, !tbaa !19
  tail call void %10(ptr nonnull @.str.573), !dbg !2018
  br label %common.ret

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  %11 = getelementptr inbounds %1, ptr %p0, i64 0, i32 2, !dbg !2018
  %12 = load i32, ptr %11, align 4, !dbg !2018
  %13 = icmp eq i32 %12, 3, !dbg !2018
  br i1 %13, label %assert_end10, label %assert_fail7, !dbg !2018, !prof !18

assert_fail7:                                     ; preds = %assert_end6
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2018, !tbaa !19
  tail call void %14(ptr nonnull @.str.574), !dbg !2018
  br label %common.ret

assert_end10:                                     ; preds = %assert_end6
  %15 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 2, !dbg !2018
  %16 = load i16, ptr %15, align 2, !dbg !2018
  %17 = icmp eq i16 %16, 1, !dbg !2018
  %18 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 1, !dbg !2018
  %19 = load i8, ptr %18, align 1, !dbg !2018
  %20 = icmp eq i8 %19, 32, !dbg !2018
  %21 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 0, !dbg !2018
  %22 = load i8, ptr %21, align 1, !dbg !2018
  %23 = icmp eq i8 %22, 2, !dbg !2018
  %24 = and i1 %20, %23, !dbg !2018
  %25 = and i1 %17, %24, !dbg !2018
  br i1 %25, label %assert_end12, label %assert_fail11, !dbg !2018, !prof !18

assert_fail11:                                    ; preds = %assert_end10
  %26 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2018, !tbaa !19
  tail call void %26(ptr nonnull @.str.575), !dbg !2018
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10
  %27 = load i64, ptr %tvmgen_default_fused_take.p0.shape, align 8, !dbg !2018, !tbaa !2032
  %28 = and i64 %27, 4294967295, !dbg !2018
  %29 = icmp eq i64 %28, 1, !dbg !2018
  br i1 %29, label %assert_end14, label %assert_fail13, !dbg !2018, !prof !18

assert_fail13:                                    ; preds = %assert_end12
  %30 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2018, !tbaa !19
  tail call void %30(ptr nonnull @.str.576), !dbg !2018
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12
  %31 = getelementptr inbounds i64, ptr %tvmgen_default_fused_take.p0.shape, i64 1, !dbg !2018
  %32 = load i64, ptr %31, align 8, !dbg !2018, !tbaa !2042
  %33 = and i64 %32, 4294967295, !dbg !2018
  %34 = icmp eq i64 %33, 5, !dbg !2018
  br i1 %34, label %assert_end16, label %assert_fail15, !dbg !2018, !prof !18

assert_fail15:                                    ; preds = %assert_end14
  %35 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2018, !tbaa !19
  tail call void %35(ptr nonnull @.str.577), !dbg !2018
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14
  %36 = getelementptr inbounds i64, ptr %tvmgen_default_fused_take.p0.shape, i64 2, !dbg !2018
  %37 = load i64, ptr %36, align 8, !dbg !2018, !tbaa !2044
  %38 = and i64 %37, 4294967295, !dbg !2018
  %39 = icmp eq i64 %38, 768, !dbg !2018
  br i1 %39, label %assert_end18, label %assert_fail17, !dbg !2018, !prof !18

assert_fail17:                                    ; preds = %assert_end16
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2018, !tbaa !19
  tail call void %40(ptr nonnull @.str.578), !dbg !2018
  br label %common.ret

assert_end18:                                     ; preds = %assert_end16
  %.not = icmp eq ptr %tvmgen_default_fused_take.p0.strides, null, !dbg !2018
  br i1 %.not, label %if_end, label %if_then, !dbg !2018, !prof !52

if_then:                                          ; preds = %assert_end18
  %41 = getelementptr inbounds i64, ptr %tvmgen_default_fused_take.p0.strides, i64 1, !dbg !2018
  %42 = load i64, ptr %41, align 8, !dbg !2018, !tbaa !2047
  %43 = and i64 %42, 4294967295, !dbg !2018
  %44 = icmp eq i64 %43, 768, !dbg !2018
  %45 = getelementptr inbounds i64, ptr %tvmgen_default_fused_take.p0.strides, i64 2, !dbg !2018
  %46 = load i64, ptr %45, align 8, !dbg !2018, !tbaa !2057
  %47 = and i64 %46, 4294967295, !dbg !2018
  %48 = icmp eq i64 %47, 1, !dbg !2018
  %49 = and i1 %44, %48, !dbg !2018
  br i1 %49, label %if_end, label %assert_fail19, !dbg !2018, !prof !18

if_end:                                           ; preds = %if_then, %assert_end18
  %50 = getelementptr inbounds %1, ptr %p0, i64 0, i32 6, !dbg !2018
  %51 = load i64, ptr %50, align 8, !dbg !2018
  %52 = icmp eq i64 %51, 0, !dbg !2018
  br i1 %52, label %assert_end22, label %assert_fail21, !dbg !2018, !prof !18

assert_fail19:                                    ; preds = %if_then
  %53 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2018, !tbaa !19
  tail call void %53(ptr nonnull @.str.579), !dbg !2018
  br label %common.ret

assert_fail21:                                    ; preds = %if_end
  %54 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2018, !tbaa !19
  tail call void %54(ptr nonnull @.str.580), !dbg !2018
  br label %common.ret

assert_end22:                                     ; preds = %if_end
  %55 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 0, !dbg !2018
  %56 = load i32, ptr %55, align 4, !dbg !2018
  %57 = icmp eq i32 %56, 1, !dbg !2018
  br i1 %57, label %assert_end24, label %assert_fail23, !dbg !2018, !prof !18

assert_fail23:                                    ; preds = %assert_end22
  %58 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2018, !tbaa !19
  tail call void %58(ptr nonnull @.str.581), !dbg !2018
  br label %common.ret

assert_end24:                                     ; preds = %assert_end22
  %59 = getelementptr inbounds %1, ptr %T_take, i64 0, i32 2, !dbg !2018
  %60 = load i32, ptr %59, align 4, !dbg !2018
  %61 = icmp eq i32 %60, 2, !dbg !2018
  br i1 %61, label %assert_end28, label %assert_fail25, !dbg !2018, !prof !18

assert_fail25:                                    ; preds = %assert_end24
  %62 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2018, !tbaa !19
  tail call void %62(ptr nonnull @.str.582), !dbg !2018
  br label %common.ret

assert_end28:                                     ; preds = %assert_end24
  %63 = getelementptr inbounds %1, ptr %T_take, i64 0, i32 3, i32 2, !dbg !2018
  %64 = load i16, ptr %63, align 2, !dbg !2018
  %65 = icmp eq i16 %64, 1, !dbg !2018
  %66 = getelementptr inbounds %1, ptr %T_take, i64 0, i32 3, i32 1, !dbg !2018
  %67 = load i8, ptr %66, align 1, !dbg !2018
  %68 = icmp eq i8 %67, 32, !dbg !2018
  %69 = getelementptr inbounds %1, ptr %T_take, i64 0, i32 3, i32 0, !dbg !2018
  %70 = load i8, ptr %69, align 1, !dbg !2018
  %71 = icmp eq i8 %70, 2, !dbg !2018
  %72 = and i1 %68, %71, !dbg !2018
  %73 = and i1 %65, %72, !dbg !2018
  br i1 %73, label %assert_end30, label %assert_fail29, !dbg !2018, !prof !18

assert_fail29:                                    ; preds = %assert_end28
  %74 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2018, !tbaa !19
  tail call void %74(ptr nonnull @.str.583), !dbg !2018
  br label %common.ret

assert_end30:                                     ; preds = %assert_end28
  %75 = load i64, ptr %tvmgen_default_fused_take.T_take.shape, align 8, !dbg !2018, !tbaa !2060
  %76 = and i64 %75, 4294967295, !dbg !2018
  %77 = icmp eq i64 %76, 1, !dbg !2018
  br i1 %77, label %assert_end32, label %assert_fail31, !dbg !2018, !prof !18

assert_fail31:                                    ; preds = %assert_end30
  %78 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2018, !tbaa !19
  tail call void %78(ptr nonnull @.str.584), !dbg !2018
  br label %common.ret

assert_end32:                                     ; preds = %assert_end30
  %79 = getelementptr inbounds i64, ptr %tvmgen_default_fused_take.T_take.shape, i64 1, !dbg !2018
  %80 = load i64, ptr %79, align 8, !dbg !2018, !tbaa !2070
  %81 = and i64 %80, 4294967295, !dbg !2018
  %82 = icmp eq i64 %81, 768, !dbg !2018
  br i1 %82, label %assert_end34, label %assert_fail33, !dbg !2018, !prof !18

assert_fail33:                                    ; preds = %assert_end32
  %83 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2018, !tbaa !19
  tail call void %83(ptr nonnull @.str.585), !dbg !2018
  br label %common.ret

assert_end34:                                     ; preds = %assert_end32
  %.not47 = icmp eq ptr %tvmgen_default_fused_take.T_take.strides, null, !dbg !2018
  br i1 %.not47, label %if_end36, label %if_then35, !dbg !2018, !prof !52

if_then35:                                        ; preds = %assert_end34
  %84 = getelementptr inbounds i64, ptr %tvmgen_default_fused_take.T_take.strides, i64 1, !dbg !2018
  %85 = load i64, ptr %84, align 8, !dbg !2018, !tbaa !2072
  %86 = and i64 %85, 4294967295, !dbg !2018
  %87 = icmp eq i64 %86, 1, !dbg !2018
  br i1 %87, label %if_end36, label %assert_fail37, !dbg !2018, !prof !18

if_end36:                                         ; preds = %if_then35, %assert_end34
  %88 = getelementptr inbounds %1, ptr %T_take, i64 0, i32 6, !dbg !2018
  %89 = load i64, ptr %88, align 8, !dbg !2018
  %90 = icmp eq i64 %89, 0, !dbg !2018
  br i1 %90, label %assert_end40, label %assert_fail39, !dbg !2018, !prof !18

assert_fail37:                                    ; preds = %if_then35
  %91 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2018, !tbaa !19
  tail call void %91(ptr nonnull @.str.586), !dbg !2018
  br label %common.ret

assert_fail39:                                    ; preds = %if_end36
  %92 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2018, !tbaa !19
  tail call void %92(ptr nonnull @.str.587), !dbg !2018
  br label %common.ret

assert_end40:                                     ; preds = %if_end36
  %93 = getelementptr inbounds %1, ptr %T_take, i64 0, i32 1, i32 0, !dbg !2018
  %94 = load i32, ptr %93, align 4, !dbg !2018
  %95 = icmp eq i32 %94, 1, !dbg !2018
  br i1 %95, label %assert_end42, label %assert_fail41, !dbg !2018, !prof !18

assert_fail41:                                    ; preds = %assert_end40
  %96 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2018, !tbaa !19
  tail call void %96(ptr nonnull @.str.588), !dbg !2018
  br label %common.ret

assert_end42:                                     ; preds = %assert_end40
  %97 = getelementptr inbounds %1, ptr %T_take, i64 0, i32 1, i32 1, !dbg !2018
  %98 = load i32, ptr %97, align 4, !dbg !2018
  %99 = icmp eq i32 %dev_id, %98, !dbg !2018
  br i1 %99, label %assert_end44, label %assert_fail43, !dbg !2018, !prof !18

assert_fail43:                                    ; preds = %assert_end42
  %100 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2018, !tbaa !19
  tail call void %100(ptr nonnull @.str.589), !dbg !2018
  br label %common.ret

assert_end44:                                     ; preds = %assert_end42
  tail call fastcc void @tvmgen_default_fused_take_compute_(ptr %T_take45, ptr %p046), !dbg !2018
  br label %common.ret
}

define dllexport i32 @tvmgen_default_fused_variance(ptr noalias nocapture readonly %args, ptr noalias nocapture readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !2082 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !2084, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !2085, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !2086, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !2087, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !2088, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !2089, metadata !DIExpression()), !dbg !2090
  %0 = icmp eq i32 %num_args, 3, !dbg !2090
  br i1 %0, label %assert_end, label %assert_fail, !dbg !2090, !prof !18

common.ret:                                       ; preds = %assert_end71, %assert_fail70, %assert_fail68, %assert_fail66, %assert_fail64, %assert_fail60, %assert_fail58, %assert_fail56, %assert_fail54, %assert_fail50, %assert_fail48, %assert_fail46, %assert_fail44, %assert_fail42, %assert_fail38, %assert_fail36, %assert_fail34, %assert_fail32, %assert_fail28, %assert_fail26, %assert_fail24, %assert_fail22, %assert_fail20, %assert_fail18, %assert_fail16, %assert_fail14, %assert_fail10, %assert_fail8, %assert_fail6, %assert_fail4, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail4 ], [ -1, %assert_fail6 ], [ -1, %assert_fail8 ], [ -1, %assert_fail10 ], [ -1, %assert_fail14 ], [ -1, %assert_fail16 ], [ -1, %assert_fail18 ], [ -1, %assert_fail20 ], [ -1, %assert_fail22 ], [ -1, %assert_fail24 ], [ -1, %assert_fail26 ], [ -1, %assert_fail28 ], [ -1, %assert_fail32 ], [ -1, %assert_fail34 ], [ -1, %assert_fail36 ], [ -1, %assert_fail38 ], [ -1, %assert_fail42 ], [ -1, %assert_fail44 ], [ -1, %assert_fail46 ], [ -1, %assert_fail48 ], [ -1, %assert_fail50 ], [ -1, %assert_fail54 ], [ -1, %assert_fail56 ], [ -1, %assert_fail58 ], [ -1, %assert_fail60 ], [ -1, %assert_fail64 ], [ -1, %assert_fail66 ], [ -1, %assert_fail68 ], [ -1, %assert_fail70 ], [ %158, %assert_end71 ]
  ret i32 %common.ret.op, !dbg !2090

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %1(ptr nonnull @.str.590), !dbg !2090
  br label %common.ret

assert_end:                                       ; preds = %entry
  %p0.code = load i32, ptr %arg_type_ids, align 4, !dbg !2090, !tbaa !2091
  %2 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !2090
  %p1.code = load i32, ptr %2, align 4, !dbg !2090, !tbaa !2102
  %3 = getelementptr inbounds i32, ptr %arg_type_ids, i64 2, !dbg !2090
  %T_divide.code = load i32, ptr %3, align 4, !dbg !2090, !tbaa !2104
  %p0 = load ptr, ptr %args, align 8, !dbg !2090
  %4 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !2090
  %p1 = load ptr, ptr %4, align 8, !dbg !2090
  %5 = getelementptr inbounds %0, ptr %args, i64 2, !dbg !2090
  %T_divide = load ptr, ptr %5, align 8, !dbg !2090
  %p072 = load ptr, ptr %p0, align 8, !dbg !2090
  call void @llvm.assume(i1 true) [ "align"(ptr %p072, i64 64) ], !dbg !2090
  %6 = getelementptr inbounds %1, ptr %p0, i64 0, i32 4, !dbg !2090
  %tvmgen_default_fused_variance.p0.shape = load ptr, ptr %6, align 8, !dbg !2090
  %7 = getelementptr inbounds %1, ptr %p0, i64 0, i32 5, !dbg !2090
  %tvmgen_default_fused_variance.p0.strides = load ptr, ptr %7, align 8, !dbg !2090
  %8 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 1, !dbg !2090
  %dev_id = load i32, ptr %8, align 4, !dbg !2090
  %p173 = load ptr, ptr %p1, align 8, !dbg !2090
  call void @llvm.assume(i1 true) [ "align"(ptr %p173, i64 64) ], !dbg !2090
  %9 = getelementptr inbounds %1, ptr %p1, i64 0, i32 4, !dbg !2090
  %tvmgen_default_fused_variance.p1.shape = load ptr, ptr %9, align 8, !dbg !2090
  %10 = getelementptr inbounds %1, ptr %p1, i64 0, i32 5, !dbg !2090
  %tvmgen_default_fused_variance.p1.strides = load ptr, ptr %10, align 8, !dbg !2090
  %T_divide74 = load ptr, ptr %T_divide, align 8, !dbg !2090
  call void @llvm.assume(i1 true) [ "align"(ptr %T_divide74, i64 64) ], !dbg !2090
  %11 = getelementptr inbounds %1, ptr %T_divide, i64 0, i32 4, !dbg !2090
  %tvmgen_default_fused_variance.T_divide.shape = load ptr, ptr %11, align 8, !dbg !2090
  %12 = getelementptr inbounds %1, ptr %T_divide, i64 0, i32 5, !dbg !2090
  %tvmgen_default_fused_variance.T_divide.strides = load ptr, ptr %12, align 8, !dbg !2090
  switch i32 %p0.code, label %assert_fail4 [
    i32 13, label %assert_end5
    i32 7, label %assert_end5
    i32 4, label %assert_end5
    i32 3, label %assert_end5
  ], !dbg !2090

assert_fail4:                                     ; preds = %assert_end
  %13 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %13(ptr nonnull @.str.591), !dbg !2090
  br label %common.ret

assert_end5:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %p1.code, label %assert_fail6 [
    i32 13, label %assert_end7
    i32 7, label %assert_end7
    i32 4, label %assert_end7
    i32 3, label %assert_end7
  ], !dbg !2090

assert_fail6:                                     ; preds = %assert_end5
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %14(ptr nonnull @.str.592), !dbg !2090
  br label %common.ret

assert_end7:                                      ; preds = %assert_end5, %assert_end5, %assert_end5, %assert_end5
  switch i32 %T_divide.code, label %assert_fail8 [
    i32 13, label %assert_end9
    i32 7, label %assert_end9
    i32 4, label %assert_end9
    i32 3, label %assert_end9
  ], !dbg !2090

assert_fail8:                                     ; preds = %assert_end7
  %15 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %15(ptr nonnull @.str.593), !dbg !2090
  br label %common.ret

assert_end9:                                      ; preds = %assert_end7, %assert_end7, %assert_end7, %assert_end7
  %16 = getelementptr inbounds %1, ptr %p0, i64 0, i32 2, !dbg !2090
  %17 = load i32, ptr %16, align 4, !dbg !2090
  %18 = icmp eq i32 %17, 3, !dbg !2090
  br i1 %18, label %assert_end13, label %assert_fail10, !dbg !2090, !prof !18

assert_fail10:                                    ; preds = %assert_end9
  %19 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %19(ptr nonnull @.str.594), !dbg !2090
  br label %common.ret

assert_end13:                                     ; preds = %assert_end9
  %20 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 2, !dbg !2090
  %21 = load i16, ptr %20, align 2, !dbg !2090
  %22 = icmp eq i16 %21, 1, !dbg !2090
  %23 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 1, !dbg !2090
  %24 = load i8, ptr %23, align 1, !dbg !2090
  %25 = icmp eq i8 %24, 32, !dbg !2090
  %26 = getelementptr inbounds %1, ptr %p0, i64 0, i32 3, i32 0, !dbg !2090
  %27 = load i8, ptr %26, align 1, !dbg !2090
  %28 = icmp eq i8 %27, 2, !dbg !2090
  %29 = and i1 %25, %28, !dbg !2090
  %30 = and i1 %22, %29, !dbg !2090
  br i1 %30, label %assert_end15, label %assert_fail14, !dbg !2090, !prof !18

assert_fail14:                                    ; preds = %assert_end13
  %31 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %31(ptr nonnull @.str.595), !dbg !2090
  br label %common.ret

assert_end15:                                     ; preds = %assert_end13
  %32 = load i64, ptr %tvmgen_default_fused_variance.p0.shape, align 8, !dbg !2090, !tbaa !2107
  %33 = and i64 %32, 4294967295, !dbg !2090
  %34 = icmp eq i64 %33, 1, !dbg !2090
  br i1 %34, label %assert_end17, label %assert_fail16, !dbg !2090, !prof !18

assert_fail16:                                    ; preds = %assert_end15
  %35 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %35(ptr nonnull @.str.596), !dbg !2090
  br label %common.ret

assert_end17:                                     ; preds = %assert_end15
  %36 = getelementptr inbounds i64, ptr %tvmgen_default_fused_variance.p0.shape, i64 1, !dbg !2090
  %37 = load i64, ptr %36, align 8, !dbg !2090, !tbaa !2117
  %38 = and i64 %37, 4294967295, !dbg !2090
  %39 = icmp eq i64 %38, 5, !dbg !2090
  br i1 %39, label %assert_end19, label %assert_fail18, !dbg !2090, !prof !18

assert_fail18:                                    ; preds = %assert_end17
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %40(ptr nonnull @.str.597), !dbg !2090
  br label %common.ret

assert_end19:                                     ; preds = %assert_end17
  %41 = getelementptr inbounds i64, ptr %tvmgen_default_fused_variance.p0.shape, i64 2, !dbg !2090
  %42 = load i64, ptr %41, align 8, !dbg !2090, !tbaa !2119
  %43 = and i64 %42, 4294967295, !dbg !2090
  %44 = icmp eq i64 %43, 768, !dbg !2090
  br i1 %44, label %assert_end21, label %assert_fail20, !dbg !2090, !prof !18

assert_fail20:                                    ; preds = %assert_end19
  %45 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %45(ptr nonnull @.str.598), !dbg !2090
  br label %common.ret

assert_end21:                                     ; preds = %assert_end19
  %.not = icmp eq ptr %tvmgen_default_fused_variance.p0.strides, null, !dbg !2090
  br i1 %.not, label %if_end, label %if_then, !dbg !2090, !prof !52

if_then:                                          ; preds = %assert_end21
  %46 = getelementptr inbounds i64, ptr %tvmgen_default_fused_variance.p0.strides, i64 1, !dbg !2090
  %47 = load i64, ptr %46, align 8, !dbg !2090, !tbaa !2122
  %48 = and i64 %47, 4294967295, !dbg !2090
  %49 = icmp eq i64 %48, 768, !dbg !2090
  %50 = getelementptr inbounds i64, ptr %tvmgen_default_fused_variance.p0.strides, i64 2, !dbg !2090
  %51 = load i64, ptr %50, align 8, !dbg !2090, !tbaa !2132
  %52 = and i64 %51, 4294967295, !dbg !2090
  %53 = icmp eq i64 %52, 1, !dbg !2090
  %54 = and i1 %49, %53, !dbg !2090
  br i1 %54, label %if_end, label %assert_fail22, !dbg !2090, !prof !18

if_end:                                           ; preds = %if_then, %assert_end21
  %55 = getelementptr inbounds %1, ptr %p0, i64 0, i32 6, !dbg !2090
  %56 = load i64, ptr %55, align 8, !dbg !2090
  %57 = icmp eq i64 %56, 0, !dbg !2090
  br i1 %57, label %assert_end25, label %assert_fail24, !dbg !2090, !prof !18

assert_fail22:                                    ; preds = %if_then
  %58 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %58(ptr nonnull @.str.599), !dbg !2090
  br label %common.ret

assert_fail24:                                    ; preds = %if_end
  %59 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %59(ptr nonnull @.str.600), !dbg !2090
  br label %common.ret

assert_end25:                                     ; preds = %if_end
  %60 = getelementptr inbounds %1, ptr %p0, i64 0, i32 1, i32 0, !dbg !2090
  %61 = load i32, ptr %60, align 4, !dbg !2090
  %62 = icmp eq i32 %61, 1, !dbg !2090
  br i1 %62, label %assert_end27, label %assert_fail26, !dbg !2090, !prof !18

assert_fail26:                                    ; preds = %assert_end25
  %63 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %63(ptr nonnull @.str.601), !dbg !2090
  br label %common.ret

assert_end27:                                     ; preds = %assert_end25
  %64 = getelementptr inbounds %1, ptr %p1, i64 0, i32 2, !dbg !2090
  %65 = load i32, ptr %64, align 4, !dbg !2090
  %66 = icmp eq i32 %65, 3, !dbg !2090
  br i1 %66, label %assert_end31, label %assert_fail28, !dbg !2090, !prof !18

assert_fail28:                                    ; preds = %assert_end27
  %67 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %67(ptr nonnull @.str.602), !dbg !2090
  br label %common.ret

assert_end31:                                     ; preds = %assert_end27
  %68 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 2, !dbg !2090
  %69 = load i16, ptr %68, align 2, !dbg !2090
  %70 = icmp eq i16 %69, 1, !dbg !2090
  %71 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 1, !dbg !2090
  %72 = load i8, ptr %71, align 1, !dbg !2090
  %73 = icmp eq i8 %72, 32, !dbg !2090
  %74 = getelementptr inbounds %1, ptr %p1, i64 0, i32 3, i32 0, !dbg !2090
  %75 = load i8, ptr %74, align 1, !dbg !2090
  %76 = icmp eq i8 %75, 2, !dbg !2090
  %77 = and i1 %73, %76, !dbg !2090
  %78 = and i1 %70, %77, !dbg !2090
  br i1 %78, label %assert_end33, label %assert_fail32, !dbg !2090, !prof !18

assert_fail32:                                    ; preds = %assert_end31
  %79 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %79(ptr nonnull @.str.603), !dbg !2090
  br label %common.ret

assert_end33:                                     ; preds = %assert_end31
  %80 = load i64, ptr %tvmgen_default_fused_variance.p1.shape, align 8, !dbg !2090, !tbaa !2135
  %81 = and i64 %80, 4294967295, !dbg !2090
  %82 = icmp eq i64 %81, 1, !dbg !2090
  br i1 %82, label %assert_end35, label %assert_fail34, !dbg !2090, !prof !18

assert_fail34:                                    ; preds = %assert_end33
  %83 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %83(ptr nonnull @.str.604), !dbg !2090
  br label %common.ret

assert_end35:                                     ; preds = %assert_end33
  %84 = getelementptr inbounds i64, ptr %tvmgen_default_fused_variance.p1.shape, i64 1, !dbg !2090
  %85 = load i64, ptr %84, align 8, !dbg !2090, !tbaa !2145
  %86 = and i64 %85, 4294967295, !dbg !2090
  %87 = icmp eq i64 %86, 5, !dbg !2090
  br i1 %87, label %assert_end37, label %assert_fail36, !dbg !2090, !prof !18

assert_fail36:                                    ; preds = %assert_end35
  %88 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %88(ptr nonnull @.str.605), !dbg !2090
  br label %common.ret

assert_end37:                                     ; preds = %assert_end35
  %89 = getelementptr inbounds i64, ptr %tvmgen_default_fused_variance.p1.shape, i64 2, !dbg !2090
  %90 = load i64, ptr %89, align 8, !dbg !2090, !tbaa !2147
  %91 = and i64 %90, 4294967295, !dbg !2090
  %92 = icmp eq i64 %91, 1, !dbg !2090
  br i1 %92, label %assert_end39, label %assert_fail38, !dbg !2090, !prof !18

assert_fail38:                                    ; preds = %assert_end37
  %93 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %93(ptr nonnull @.str.606), !dbg !2090
  br label %common.ret

assert_end39:                                     ; preds = %assert_end37
  %.not75 = icmp eq ptr %tvmgen_default_fused_variance.p1.strides, null, !dbg !2090
  br i1 %.not75, label %if_end41, label %if_then40, !dbg !2090, !prof !52

if_then40:                                        ; preds = %assert_end39
  %94 = getelementptr inbounds i64, ptr %tvmgen_default_fused_variance.p1.strides, i64 1, !dbg !2090
  %95 = load i64, ptr %94, align 8, !dbg !2090, !tbaa !2150
  %96 = and i64 %95, 4294967295, !dbg !2090
  %97 = icmp eq i64 %96, 1, !dbg !2090
  br i1 %97, label %if_end41, label %assert_fail42, !dbg !2090, !prof !18

if_end41:                                         ; preds = %if_then40, %assert_end39
  %98 = getelementptr inbounds %1, ptr %p1, i64 0, i32 6, !dbg !2090
  %99 = load i64, ptr %98, align 8, !dbg !2090
  %100 = icmp eq i64 %99, 0, !dbg !2090
  br i1 %100, label %assert_end45, label %assert_fail44, !dbg !2090, !prof !18

assert_fail42:                                    ; preds = %if_then40
  %101 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %101(ptr nonnull @.str.607), !dbg !2090
  br label %common.ret

assert_fail44:                                    ; preds = %if_end41
  %102 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %102(ptr nonnull @.str.608), !dbg !2090
  br label %common.ret

assert_end45:                                     ; preds = %if_end41
  %103 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 0, !dbg !2090
  %104 = load i32, ptr %103, align 4, !dbg !2090
  %105 = icmp eq i32 %104, 1, !dbg !2090
  br i1 %105, label %assert_end47, label %assert_fail46, !dbg !2090, !prof !18

assert_fail46:                                    ; preds = %assert_end45
  %106 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %106(ptr nonnull @.str.609), !dbg !2090
  br label %common.ret

assert_end47:                                     ; preds = %assert_end45
  %107 = getelementptr inbounds %1, ptr %p1, i64 0, i32 1, i32 1, !dbg !2090
  %108 = load i32, ptr %107, align 4, !dbg !2090
  %109 = icmp eq i32 %dev_id, %108, !dbg !2090
  br i1 %109, label %assert_end49, label %assert_fail48, !dbg !2090, !prof !18

assert_fail48:                                    ; preds = %assert_end47
  %110 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %110(ptr nonnull @.str.610), !dbg !2090
  br label %common.ret

assert_end49:                                     ; preds = %assert_end47
  %111 = getelementptr inbounds %1, ptr %T_divide, i64 0, i32 2, !dbg !2090
  %112 = load i32, ptr %111, align 4, !dbg !2090
  %113 = icmp eq i32 %112, 3, !dbg !2090
  br i1 %113, label %assert_end53, label %assert_fail50, !dbg !2090, !prof !18

assert_fail50:                                    ; preds = %assert_end49
  %114 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %114(ptr nonnull @.str.611), !dbg !2090
  br label %common.ret

assert_end53:                                     ; preds = %assert_end49
  %115 = getelementptr inbounds %1, ptr %T_divide, i64 0, i32 3, i32 2, !dbg !2090
  %116 = load i16, ptr %115, align 2, !dbg !2090
  %117 = icmp eq i16 %116, 1, !dbg !2090
  %118 = getelementptr inbounds %1, ptr %T_divide, i64 0, i32 3, i32 1, !dbg !2090
  %119 = load i8, ptr %118, align 1, !dbg !2090
  %120 = icmp eq i8 %119, 32, !dbg !2090
  %121 = getelementptr inbounds %1, ptr %T_divide, i64 0, i32 3, i32 0, !dbg !2090
  %122 = load i8, ptr %121, align 1, !dbg !2090
  %123 = icmp eq i8 %122, 2, !dbg !2090
  %124 = and i1 %120, %123, !dbg !2090
  %125 = and i1 %117, %124, !dbg !2090
  br i1 %125, label %assert_end55, label %assert_fail54, !dbg !2090, !prof !18

assert_fail54:                                    ; preds = %assert_end53
  %126 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %126(ptr nonnull @.str.612), !dbg !2090
  br label %common.ret

assert_end55:                                     ; preds = %assert_end53
  %127 = load i64, ptr %tvmgen_default_fused_variance.T_divide.shape, align 8, !dbg !2090, !tbaa !2160
  %128 = and i64 %127, 4294967295, !dbg !2090
  %129 = icmp eq i64 %128, 1, !dbg !2090
  br i1 %129, label %assert_end57, label %assert_fail56, !dbg !2090, !prof !18

assert_fail56:                                    ; preds = %assert_end55
  %130 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %130(ptr nonnull @.str.613), !dbg !2090
  br label %common.ret

assert_end57:                                     ; preds = %assert_end55
  %131 = getelementptr inbounds i64, ptr %tvmgen_default_fused_variance.T_divide.shape, i64 1, !dbg !2090
  %132 = load i64, ptr %131, align 8, !dbg !2090, !tbaa !2170
  %133 = and i64 %132, 4294967295, !dbg !2090
  %134 = icmp eq i64 %133, 5, !dbg !2090
  br i1 %134, label %assert_end59, label %assert_fail58, !dbg !2090, !prof !18

assert_fail58:                                    ; preds = %assert_end57
  %135 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %135(ptr nonnull @.str.614), !dbg !2090
  br label %common.ret

assert_end59:                                     ; preds = %assert_end57
  %136 = getelementptr inbounds i64, ptr %tvmgen_default_fused_variance.T_divide.shape, i64 2, !dbg !2090
  %137 = load i64, ptr %136, align 8, !dbg !2090, !tbaa !2172
  %138 = and i64 %137, 4294967295, !dbg !2090
  %139 = icmp eq i64 %138, 1, !dbg !2090
  br i1 %139, label %assert_end61, label %assert_fail60, !dbg !2090, !prof !18

assert_fail60:                                    ; preds = %assert_end59
  %140 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %140(ptr nonnull @.str.615), !dbg !2090
  br label %common.ret

assert_end61:                                     ; preds = %assert_end59
  %.not76 = icmp eq ptr %tvmgen_default_fused_variance.T_divide.strides, null, !dbg !2090
  br i1 %.not76, label %if_end63, label %if_then62, !dbg !2090, !prof !52

if_then62:                                        ; preds = %assert_end61
  %141 = getelementptr inbounds i64, ptr %tvmgen_default_fused_variance.T_divide.strides, i64 1, !dbg !2090
  %142 = load i64, ptr %141, align 8, !dbg !2090, !tbaa !2175
  %143 = and i64 %142, 4294967295, !dbg !2090
  %144 = icmp eq i64 %143, 1, !dbg !2090
  br i1 %144, label %if_end63, label %assert_fail64, !dbg !2090, !prof !18

if_end63:                                         ; preds = %if_then62, %assert_end61
  %145 = getelementptr inbounds %1, ptr %T_divide, i64 0, i32 6, !dbg !2090
  %146 = load i64, ptr %145, align 8, !dbg !2090
  %147 = icmp eq i64 %146, 0, !dbg !2090
  br i1 %147, label %assert_end67, label %assert_fail66, !dbg !2090, !prof !18

assert_fail64:                                    ; preds = %if_then62
  %148 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %148(ptr nonnull @.str.616), !dbg !2090
  br label %common.ret

assert_fail66:                                    ; preds = %if_end63
  %149 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %149(ptr nonnull @.str.617), !dbg !2090
  br label %common.ret

assert_end67:                                     ; preds = %if_end63
  %150 = getelementptr inbounds %1, ptr %T_divide, i64 0, i32 1, i32 0, !dbg !2090
  %151 = load i32, ptr %150, align 4, !dbg !2090
  %152 = icmp eq i32 %151, 1, !dbg !2090
  br i1 %152, label %assert_end69, label %assert_fail68, !dbg !2090, !prof !18

assert_fail68:                                    ; preds = %assert_end67
  %153 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %153(ptr nonnull @.str.618), !dbg !2090
  br label %common.ret

assert_end69:                                     ; preds = %assert_end67
  %154 = getelementptr inbounds %1, ptr %T_divide, i64 0, i32 1, i32 1, !dbg !2090
  %155 = load i32, ptr %154, align 4, !dbg !2090
  %156 = icmp eq i32 %dev_id, %155, !dbg !2090
  br i1 %156, label %assert_end71, label %assert_fail70, !dbg !2090, !prof !18

assert_fail70:                                    ; preds = %assert_end69
  %157 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !2090, !tbaa !19
  tail call void %157(ptr nonnull @.str.619), !dbg !2090
  br label %common.ret

assert_end71:                                     ; preds = %assert_end69
  %158 = tail call fastcc i32 @tvmgen_default_fused_variance_compute_(ptr %p072, ptr %p173, ptr %T_divide74), !dbg !2090
  br label %common.ret
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_less_add_where_take_add_compute_(ptr noalias align 64 %0, ptr noalias align 64 %1, ptr noalias align 64 %2, ptr noalias align 64 %3) unnamed_addr #2 {
entry:
  %4 = alloca %closure_loop_parallel_ax0.ax1.fused, align 8
  store ptr %0, ptr %4, align 8
  %5 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8
  %6 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused, ptr %4, i64 0, i32 2
  store ptr %2, ptr %6, align 8
  %7 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused, ptr %4, i64 0, i32 3
  store ptr %3, ptr %7, align 8
  %8 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %9 = call i32 %8(ptr nonnull @__tvm_parallel_lambda, ptr nonnull %4, i32 0)
  ret i32 %9
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %T_add = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused, ptr %1, i64 0, i32 1
  %p1 = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused, ptr %1, i64 0, i32 2
  %p0 = load ptr, ptr %3, align 8
  %4 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused, ptr %1, i64 0, i32 3
  %p2 = load ptr, ptr %4, align 8
  %5 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %5, align 4
  %6 = add nsw i32 %num_task, 4
  %7 = sdiv i32 %6, %num_task
  %8 = add nsw i32 %task_id, 1
  %9 = mul nsw i32 %7, %8
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 5)
  %11 = mul i32 %7, %task_id
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 5)
  %13 = icmp slt i32 %12, %10
  br i1 %13, label %for_begin_ax2.outer.preheader.preheader, label %for_end_ax0.ax1.fused, !prof !18

for_begin_ax2.outer.preheader.preheader:          ; preds = %parallel_closure_entry
  %14 = tail call i32 @llvm.smin.i32(i32 %11, i32 5)
  %smin = sext i32 %14 to i64
  %15 = add i32 %10, %14
  %16 = sub i32 %15, %12
  br label %for_begin_ax2.outer.preheader

for_begin_ax2.outer.preheader:                    ; preds = %for_begin_ax2.outer.preheader.preheader, %for_end_ax2.outer
  %indvars.iv5 = phi i64 [ %smin, %for_begin_ax2.outer.preheader.preheader ], [ %indvars.iv.next6, %for_end_ax2.outer ]
  %17 = mul nsw i64 %indvars.iv5, 768
  %18 = getelementptr inbounds i32, ptr %p0, i64 %indvars.iv5
  %19 = load i32, ptr %18, align 4, !tbaa !2185
  %20 = icmp slt i32 %19, 0
  %21 = add nsw i32 %19, 30522
  %22 = select i1 %20, i32 %21, i32 %19
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 0)
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 30521)
  %25 = mul nuw nsw i32 %24, 768
  %26 = zext i32 %25 to i64
  br label %for_body_ax2.outer

for_end_ax0.ax1.fused:                            ; preds = %for_end_ax2.outer, %parallel_closure_entry
  ret i32 0

for_body_ax2.outer:                               ; preds = %for_begin_ax2.outer.preheader, %for_body_ax2.outer
  %indvars.iv = phi i64 [ 0, %for_begin_ax2.outer.preheader ], [ %indvars.iv.next, %for_body_ax2.outer ]
  %27 = shl nuw nsw i64 %indvars.iv, 4
  %28 = add nsw i64 %27, %17
  %29 = getelementptr inbounds float, ptr %p2, i64 %28
  %30 = load <16 x float>, ptr %29, align 64, !tbaa !2187
  %31 = add nuw nsw i64 %27, %26
  %32 = getelementptr inbounds float, ptr %p1, i64 %31
  %33 = load <16 x float>, ptr %32, align 64, !tbaa !2189
  %34 = fadd <16 x float> %30, %33
  %35 = getelementptr inbounds float, ptr %T_add, i64 %28
  store <16 x float> %34, ptr %35, align 64, !tbaa !2191
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 48
  br i1 %exitcond.not, label %for_end_ax2.outer, label %for_body_ax2.outer, !prof !52

for_end_ax2.outer:                                ; preds = %for_body_ax2.outer
  %indvars.iv.next6 = add nsw i64 %indvars.iv5, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next6 to i32
  %exitcond7.not = icmp eq i32 %16, %lftr.wideiv
  br i1 %exitcond7.not, label %for_end_ax0.ax1.fused, label %for_begin_ax2.outer.preheader, !prof !52
}

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_mean_compute_(ptr noalias align 64 %0, ptr noalias align 64 %1) unnamed_addr #2 {
entry:
  %2 = alloca %closure_loop_parallel_ax0.ax1.fused.0, align 8
  %3 = alloca %closure_loop_parallel_ax0.ax1.fused.ax2.fused, align 8
  %p0_red3 = alloca [5 x float], align 4
  store ptr %p0_red3, ptr %3, align 8
  %4 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.ax2.fused, ptr %3, i64 0, i32 1
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %6 = call i32 %5(ptr nonnull @__tvm_parallel_lambda.58, ptr nonnull %3, i32 0)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %call_end, label %common.ret, !prof !18

common.ret:                                       ; preds = %call_end, %entry
  %common.ret.op = phi i32 [ %6, %entry ], [ %10, %call_end ]
  ret i32 %common.ret.op

call_end:                                         ; preds = %entry
  store ptr %1, ptr %2, align 8
  %8 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.0, ptr %2, i64 0, i32 1
  store ptr %p0_red3, ptr %8, align 8
  %9 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %10 = call i32 %9(ptr nonnull @__tvm_parallel_lambda.59, ptr nonnull %2, i32 0)
  br label %common.ret
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda.58(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %p0_red = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.ax2.fused, ptr %1, i64 0, i32 1
  %p0 = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %3, align 4
  %4 = add nsw i32 %num_task, 4
  %5 = sdiv i32 %4, %num_task
  %6 = add nsw i32 %task_id, 1
  %7 = mul nsw i32 %5, %6
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 5)
  %9 = mul i32 %5, %task_id
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 5)
  %11 = icmp slt i32 %10, %8
  br i1 %11, label %for_body_ax0.ax1.fused.ax2.fused.preheader, label %for_end_ax0.ax1.fused.ax2.fused, !prof !18

for_body_ax0.ax1.fused.ax2.fused.preheader:       ; preds = %parallel_closure_entry
  %12 = tail call i32 @llvm.smin.i32(i32 %9, i32 5)
  %smin = sext i32 %12 to i64
  %13 = add i32 %8, %12
  %14 = sub i32 %13, %10
  br label %for_body_ax0.ax1.fused.ax2.fused

for_body_ax0.ax1.fused.ax2.fused:                 ; preds = %for_body_ax0.ax1.fused.ax2.fused.preheader, %for_end_k2
  %indvars.iv3 = phi i64 [ %smin, %for_body_ax0.ax1.fused.ax2.fused.preheader ], [ %indvars.iv.next4, %for_end_k2 ]
  %15 = getelementptr inbounds float, ptr %p0_red, i64 %indvars.iv3
  %16 = mul nsw i64 %indvars.iv3, 768
  br label %for_body_k2

for_end_ax0.ax1.fused.ax2.fused:                  ; preds = %for_end_k2, %parallel_closure_entry
  ret i32 0

for_body_k2:                                      ; preds = %for_body_ax0.ax1.fused.ax2.fused, %for_body_k2
  %indvars.iv = phi i64 [ 0, %for_body_ax0.ax1.fused.ax2.fused ], [ %indvars.iv.next, %for_body_k2 ]
  %17 = phi float [ 0.000000e+00, %for_body_ax0.ax1.fused.ax2.fused ], [ %21, %for_body_k2 ]
  %18 = add nsw i64 %indvars.iv, %16
  %19 = getelementptr inbounds float, ptr %p0, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !2193
  %21 = fadd float %20, %17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 768
  br i1 %exitcond.not, label %for_end_k2, label %for_body_k2, !prof !52

for_end_k2:                                       ; preds = %for_body_k2
  store float %21, ptr %15, align 4, !tbaa !2195
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next4 to i32
  %exitcond5.not = icmp eq i32 %14, %lftr.wideiv
  br i1 %exitcond5.not, label %for_end_ax0.ax1.fused.ax2.fused, label %for_body_ax0.ax1.fused.ax2.fused, !prof !52
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda.59(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %T_divide = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.0, ptr %1, i64 0, i32 1
  %p0_red = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %3, align 4
  %4 = add nsw i32 %num_task, 4
  %5 = sdiv i32 %4, %num_task
  %6 = add nsw i32 %task_id, 1
  %7 = mul nsw i32 %5, %6
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 5)
  %9 = mul i32 %5, %task_id
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 5)
  %11 = icmp slt i32 %10, %8
  br i1 %11, label %for_body_ax0.ax1.fused.preheader, label %for_end_ax0.ax1.fused, !prof !18

for_body_ax0.ax1.fused.preheader:                 ; preds = %parallel_closure_entry
  %12 = tail call i32 @llvm.smin.i32(i32 %9, i32 5)
  %smin = sext i32 %12 to i64
  %13 = add i32 %8, %12
  %14 = sub i32 %13, %10
  br label %for_body_ax0.ax1.fused

for_body_ax0.ax1.fused:                           ; preds = %for_body_ax0.ax1.fused.preheader, %for_body_ax0.ax1.fused
  %indvars.iv = phi i64 [ %smin, %for_body_ax0.ax1.fused.preheader ], [ %indvars.iv.next, %for_body_ax0.ax1.fused ]
  %15 = getelementptr inbounds float, ptr %p0_red, i64 %indvars.iv
  %16 = load float, ptr %15, align 4, !tbaa !2195
  %17 = fmul float %16, 0x3F55555560000000
  %18 = getelementptr inbounds float, ptr %T_divide, i64 %indvars.iv
  store float %17, ptr %18, align 4, !tbaa !2197
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %14, %lftr.wideiv
  br i1 %exitcond.not, label %for_end_ax0.ax1.fused, label %for_body_ax0.ax1.fused, !prof !52

for_end_ax0.ax1.fused:                            ; preds = %for_body_ax0.ax1.fused, %parallel_closure_entry
  ret i32 0
}

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_nn_batch_matmul_compute_(ptr noalias align 64 %0, ptr noalias align 64 %1, ptr noalias align 64 %2) unnamed_addr #2 {
entry:
  %3 = alloca %closure_loop_parallel_b.i.outer.fused.j.outer.fused, align 8
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds %closure_loop_parallel_b.i.outer.fused.j.outer.fused, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds %closure_loop_parallel_b.i.outer.fused.j.outer.fused, ptr %3, i64 0, i32 2
  store ptr %2, ptr %5, align 8
  %6 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %7 = call i32 %6(ptr nonnull @__tvm_parallel_lambda.90, ptr nonnull %3, i32 0)
  ret i32 %7
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda.90(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %p0 = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %closure_loop_parallel_b.i.outer.fused.j.outer.fused, ptr %1, i64 0, i32 1
  %p1 = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %closure_loop_parallel_b.i.outer.fused.j.outer.fused, ptr %1, i64 0, i32 2
  %T_batch_matmul_NT = load ptr, ptr %3, align 8
  %4 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %4, align 4
  %5 = add nsw i32 %num_task, 299
  %6 = sdiv i32 %5, %num_task
  %7 = add nsw i32 %task_id, 1
  %8 = mul nsw i32 %6, %7
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 300)
  %10 = mul i32 %6, %task_id
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 300)
  %12 = icmp slt i32 %11, %9
  br i1 %12, label %for_body_b.i.outer.fused.j.outer.fused.preheader, label %for_end_b.i.outer.fused.j.outer.fused, !prof !18

for_body_b.i.outer.fused.j.outer.fused.preheader: ; preds = %parallel_closure_entry
  %13 = tail call i32 @llvm.smin.i32(i32 %10, i32 300)
  %smin = sext i32 %13 to i64
  %14 = add i32 %9, %13
  %15 = sub i32 %14, %11
  br label %for_body_b.i.outer.fused.j.outer.fused

for_body_b.i.outer.fused.j.outer.fused:           ; preds = %for_body_b.i.outer.fused.j.outer.fused.preheader, %for_body_b.i.outer.fused.j.outer.fused
  %indvars.iv = phi i64 [ %smin, %for_body_b.i.outer.fused.j.outer.fused.preheader ], [ %indvars.iv.next, %for_body_b.i.outer.fused.j.outer.fused ]
  %16 = trunc i64 %indvars.iv to i32
  %.frozen = freeze i32 %16
  %17 = sdiv i32 %.frozen, 5
  %cse_var_2 = shl nsw i32 %17, 6
  %18 = mul i32 %17, 5
  %.decomposed = sub i32 %.frozen, %18
  %19 = shl nsw i32 %.decomposed, 6
  %20 = sdiv i32 %16, 25
  %21 = mul nsw i32 %20, 320
  %cse_var_1 = add nsw i32 %21, %19
  %22 = sext i32 %cse_var_2 to i64
  %23 = getelementptr inbounds float, ptr %p0, i64 %22
  %24 = load <16 x float>, ptr %23, align 64, !tbaa !2199
  %25 = sext i32 %cse_var_1 to i64
  %26 = getelementptr inbounds float, ptr %p1, i64 %25
  %27 = load <16 x float>, ptr %26, align 64, !tbaa !2201
  %28 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %24, <16 x float> %27, <16 x float> zeroinitializer)
  %29 = or i32 %cse_var_2, 16
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, ptr %p0, i64 %30
  %32 = load <16 x float>, ptr %31, align 64, !tbaa !2199
  %33 = or i32 %cse_var_1, 16
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, ptr %p1, i64 %34
  %36 = load <16 x float>, ptr %35, align 64, !tbaa !2201
  %37 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %32, <16 x float> %36, <16 x float> %28)
  %38 = or i32 %cse_var_2, 32
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, ptr %p0, i64 %39
  %41 = load <16 x float>, ptr %40, align 64, !tbaa !2199
  %42 = or i32 %cse_var_1, 32
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, ptr %p1, i64 %43
  %45 = load <16 x float>, ptr %44, align 64, !tbaa !2201
  %46 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %41, <16 x float> %45, <16 x float> %37)
  %47 = or i32 %cse_var_2, 48
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, ptr %p0, i64 %48
  %50 = load <16 x float>, ptr %49, align 64, !tbaa !2199
  %51 = or i32 %cse_var_1, 48
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, ptr %p1, i64 %52
  %54 = load <16 x float>, ptr %53, align 64, !tbaa !2201
  %55 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %50, <16 x float> %54, <16 x float> %46)
  %T_batch_matmul_NT.global.rf17.sroa.0.0.vec.extract = extractelement <16 x float> %55, i64 0
  %56 = fadd float %T_batch_matmul_NT.global.rf17.sroa.0.0.vec.extract, 0.000000e+00
  %T_batch_matmul_NT.global.rf17.sroa.0.4.vec.extract = extractelement <16 x float> %55, i64 1
  %57 = fadd float %T_batch_matmul_NT.global.rf17.sroa.0.4.vec.extract, %56
  %T_batch_matmul_NT.global.rf17.sroa.0.8.vec.extract = extractelement <16 x float> %55, i64 2
  %58 = fadd float %T_batch_matmul_NT.global.rf17.sroa.0.8.vec.extract, %57
  %T_batch_matmul_NT.global.rf17.sroa.0.12.vec.extract = extractelement <16 x float> %55, i64 3
  %59 = fadd float %T_batch_matmul_NT.global.rf17.sroa.0.12.vec.extract, %58
  %T_batch_matmul_NT.global.rf17.sroa.0.16.vec.extract = extractelement <16 x float> %55, i64 4
  %60 = fadd float %T_batch_matmul_NT.global.rf17.sroa.0.16.vec.extract, %59
  %T_batch_matmul_NT.global.rf17.sroa.0.20.vec.extract = extractelement <16 x float> %55, i64 5
  %61 = fadd float %T_batch_matmul_NT.global.rf17.sroa.0.20.vec.extract, %60
  %T_batch_matmul_NT.global.rf17.sroa.0.24.vec.extract = extractelement <16 x float> %55, i64 6
  %62 = fadd float %T_batch_matmul_NT.global.rf17.sroa.0.24.vec.extract, %61
  %T_batch_matmul_NT.global.rf17.sroa.0.28.vec.extract = extractelement <16 x float> %55, i64 7
  %63 = fadd float %T_batch_matmul_NT.global.rf17.sroa.0.28.vec.extract, %62
  %T_batch_matmul_NT.global.rf17.sroa.0.32.vec.extract = extractelement <16 x float> %55, i64 8
  %64 = fadd float %T_batch_matmul_NT.global.rf17.sroa.0.32.vec.extract, %63
  %T_batch_matmul_NT.global.rf17.sroa.0.36.vec.extract = extractelement <16 x float> %55, i64 9
  %65 = fadd float %T_batch_matmul_NT.global.rf17.sroa.0.36.vec.extract, %64
  %T_batch_matmul_NT.global.rf17.sroa.0.40.vec.extract = extractelement <16 x float> %55, i64 10
  %66 = fadd float %T_batch_matmul_NT.global.rf17.sroa.0.40.vec.extract, %65
  %T_batch_matmul_NT.global.rf17.sroa.0.44.vec.extract = extractelement <16 x float> %55, i64 11
  %67 = fadd float %T_batch_matmul_NT.global.rf17.sroa.0.44.vec.extract, %66
  %T_batch_matmul_NT.global.rf17.sroa.0.48.vec.extract = extractelement <16 x float> %55, i64 12
  %68 = fadd float %T_batch_matmul_NT.global.rf17.sroa.0.48.vec.extract, %67
  %T_batch_matmul_NT.global.rf17.sroa.0.52.vec.extract = extractelement <16 x float> %55, i64 13
  %69 = fadd float %T_batch_matmul_NT.global.rf17.sroa.0.52.vec.extract, %68
  %T_batch_matmul_NT.global.rf17.sroa.0.56.vec.extract = extractelement <16 x float> %55, i64 14
  %70 = fadd float %T_batch_matmul_NT.global.rf17.sroa.0.56.vec.extract, %69
  %T_batch_matmul_NT.global.rf17.sroa.0.60.vec.extract = extractelement <16 x float> %55, i64 15
  %71 = fadd float %T_batch_matmul_NT.global.rf17.sroa.0.60.vec.extract, %70
  %72 = getelementptr inbounds float, ptr %T_batch_matmul_NT, i64 %indvars.iv
  store float %71, ptr %72, align 4, !tbaa !2203
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %15, %lftr.wideiv
  br i1 %exitcond.not, label %for_end_b.i.outer.fused.j.outer.fused, label %for_body_b.i.outer.fused.j.outer.fused, !prof !52

for_end_b.i.outer.fused.j.outer.fused:            ; preds = %for_body_b.i.outer.fused.j.outer.fused, %parallel_closure_entry
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #4

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_nn_batch_matmul_1_compute_(ptr noalias align 64 %0, ptr noalias align 64 %1, ptr noalias align 64 %2) unnamed_addr #2 {
entry:
  %3 = alloca %closure_loop_parallel_b.i.outer.fused.j.outer.fused.1, align 8
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds %closure_loop_parallel_b.i.outer.fused.j.outer.fused.1, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds %closure_loop_parallel_b.i.outer.fused.j.outer.fused.1, ptr %3, i64 0, i32 2
  store ptr %2, ptr %5, align 8
  %6 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %7 = call i32 %6(ptr nonnull @__tvm_parallel_lambda.121, ptr nonnull %3, i32 0)
  ret i32 %7
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda.121(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %T_batch_matmul_NT.global.rf2 = alloca [128 x float], align 16
  %p0 = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %closure_loop_parallel_b.i.outer.fused.j.outer.fused.1, ptr %1, i64 0, i32 1
  %p1 = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %closure_loop_parallel_b.i.outer.fused.j.outer.fused.1, ptr %1, i64 0, i32 2
  %T_batch_matmul_NT = load ptr, ptr %3, align 8
  %4 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %4, align 4
  %5 = add nsw i32 %num_task, 479
  %6 = sdiv i32 %5, %num_task
  %7 = add nsw i32 %task_id, 1
  %8 = mul nsw i32 %6, %7
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 480)
  %10 = mul i32 %6, %task_id
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 480)
  %12 = icmp slt i32 %11, %9
  br i1 %12, label %for_body_b.i.outer.fused.j.outer.fused.lr.ph, label %for_end_b.i.outer.fused.j.outer.fused, !prof !18

for_body_b.i.outer.fused.j.outer.fused.lr.ph:     ; preds = %parallel_closure_entry
  %13 = tail call i32 @llvm.smin.i32(i32 %10, i32 480)
  %smin = sext i32 %13 to i64
  %14 = add i32 %9, %13
  %15 = sub i32 %14, %11
  %16 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 8
  %17 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 16
  %18 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 24
  %19 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 32
  %20 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 40
  %21 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 48
  %22 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 56
  %23 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 64
  %24 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 72
  %25 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 80
  %26 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 88
  %27 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 96
  %28 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 104
  %29 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 112
  %30 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 120
  %31 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 1
  %32 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 9
  %33 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 17
  %34 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 25
  %35 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 33
  %36 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 41
  %37 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 49
  %38 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 57
  %39 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 65
  %40 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 73
  %41 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 81
  %42 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 89
  %43 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 97
  %44 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 105
  %45 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 113
  %46 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 121
  %47 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 2
  %48 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 10
  %49 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 18
  %50 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 26
  %51 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 34
  %52 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 42
  %53 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 50
  %54 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 58
  %55 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 66
  %56 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 74
  %57 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 82
  %58 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 90
  %59 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 98
  %60 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 106
  %61 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 114
  %62 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 122
  %63 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 3
  %64 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 11
  %65 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 19
  %66 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 27
  %67 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 35
  %68 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 43
  %69 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 51
  %70 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 59
  %71 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 67
  %72 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 75
  %73 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 83
  %74 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 91
  %75 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 99
  %76 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 107
  %77 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 115
  %78 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 123
  %79 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 4
  %80 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 12
  %81 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 20
  %82 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 28
  %83 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 36
  %84 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 44
  %85 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 52
  %86 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 60
  %87 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 68
  %88 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 76
  %89 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 84
  %90 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 92
  %91 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 100
  %92 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 108
  %93 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 116
  %94 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 124
  %95 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 5
  %96 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 13
  %97 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 21
  %98 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 29
  %99 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 37
  %100 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 45
  %101 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 53
  %102 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 61
  %103 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 69
  %104 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 77
  %105 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 85
  %106 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 93
  %107 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 101
  %108 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 109
  %109 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 117
  %110 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 125
  %111 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 6
  %112 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 14
  %113 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 22
  %114 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 30
  %115 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 38
  %116 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 46
  %117 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 54
  %118 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 62
  %119 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 70
  %120 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 78
  %121 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 86
  %122 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 94
  %123 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 102
  %124 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 110
  %125 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 118
  %126 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 126
  %127 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 7
  %128 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 15
  %129 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 23
  %130 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 31
  %131 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 39
  %132 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 47
  %133 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 55
  %134 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 63
  %135 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 71
  %136 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 79
  %137 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 87
  %138 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 95
  %139 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 103
  %140 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 111
  %141 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 119
  %142 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 127
  br label %for_body_b.i.outer.fused.j.outer.fused

for_body_b.i.outer.fused.j.outer.fused:           ; preds = %for_body_b.i.outer.fused.j.outer.fused.lr.ph, %for_body_ax2
  %indvars.iv14 = phi i64 [ %smin, %for_body_b.i.outer.fused.j.outer.fused.lr.ph ], [ %indvars.iv.next15, %for_body_ax2 ]
  %143 = trunc i64 %indvars.iv14 to i32
  %144 = ashr i32 %143, 3
  %cse_var_3 = mul nsw i32 %144, 5
  %145 = and i32 %143, 7
  %146 = mul nuw nsw i32 %145, 40
  %147 = sdiv i32 %143, 40
  %148 = mul nsw i32 %147, 320
  %149 = add nsw i32 %148, %146
  %150 = sext i32 %cse_var_3 to i64
  %151 = getelementptr inbounds float, ptr %p0, i64 %150
  %152 = load float, ptr %151, align 4, !tbaa !2205
  %153 = add nsw i32 %cse_var_3, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, ptr %p0, i64 %154
  %156 = load float, ptr %155, align 4, !tbaa !2205
  %157 = add nsw i32 %cse_var_3, 2
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, ptr %p0, i64 %158
  %160 = load float, ptr %159, align 4, !tbaa !2205
  %161 = add nsw i32 %cse_var_3, 3
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, ptr %p0, i64 %162
  %164 = load float, ptr %163, align 4, !tbaa !2205
  %165 = add nsw i32 %cse_var_3, 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, ptr %p0, i64 %166
  %168 = load float, ptr %167, align 4, !tbaa !2205
  %169 = sext i32 %149 to i64
  br label %for_body_i.c.j.c.fused

for_end_b.i.outer.fused.j.outer.fused:            ; preds = %for_body_ax2, %parallel_closure_entry
  ret i32 0

for_body_i.c.j.c.fused:                           ; preds = %for_body_b.i.outer.fused.j.outer.fused, %for_body_i.c.j.c.fused
  %indvars.iv = phi i64 [ 0, %for_body_b.i.outer.fused.j.outer.fused ], [ %indvars.iv.next, %for_body_i.c.j.c.fused ]
  %170 = add nuw nsw i64 %indvars.iv, 8
  %171 = add nuw nsw i64 %indvars.iv, 32
  %172 = add nuw nsw i64 %indvars.iv, 24
  %173 = add nuw nsw i64 %indvars.iv, 16
  %174 = mul nuw nsw i64 %indvars.iv, 5
  %175 = add nsw i64 %174, %169
  %176 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 %indvars.iv
  %177 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 %170
  %178 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 %173
  %179 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 %172
  %180 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 %171
  %181 = add nuw nsw i64 %indvars.iv, 40
  %182 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 %181
  store float 0.000000e+00, ptr %182, align 4, !tbaa !2207
  %183 = add nuw nsw i64 %indvars.iv, 48
  %184 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 %183
  store float 0.000000e+00, ptr %184, align 4, !tbaa !2207
  %185 = add nuw nsw i64 %indvars.iv, 56
  %186 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 %185
  store float 0.000000e+00, ptr %186, align 4, !tbaa !2207
  %187 = add nuw nsw i64 %indvars.iv, 64
  %188 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 %187
  store float 0.000000e+00, ptr %188, align 4, !tbaa !2207
  %189 = add nuw nsw i64 %indvars.iv, 72
  %190 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 %189
  store float 0.000000e+00, ptr %190, align 4, !tbaa !2207
  %191 = add nuw nsw i64 %indvars.iv, 80
  %192 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 %191
  store float 0.000000e+00, ptr %192, align 4, !tbaa !2207
  %193 = add nuw nsw i64 %indvars.iv, 88
  %194 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 %193
  store float 0.000000e+00, ptr %194, align 4, !tbaa !2207
  %195 = add nuw nsw i64 %indvars.iv, 96
  %196 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 %195
  store float 0.000000e+00, ptr %196, align 4, !tbaa !2207
  %197 = add nuw nsw i64 %indvars.iv, 104
  %198 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 %197
  store float 0.000000e+00, ptr %198, align 4, !tbaa !2207
  %199 = add nuw nsw i64 %indvars.iv, 112
  %200 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 %199
  store float 0.000000e+00, ptr %200, align 4, !tbaa !2207
  %201 = add nuw nsw i64 %indvars.iv, 120
  %202 = getelementptr inbounds float, ptr %T_batch_matmul_NT.global.rf2, i64 %201
  store float 0.000000e+00, ptr %202, align 4, !tbaa !2207
  %203 = getelementptr inbounds float, ptr %p1, i64 %175
  %204 = load float, ptr %203, align 4, !tbaa !2209
  %205 = tail call float @llvm.fmuladd.f32(float %152, float %204, float 0.000000e+00)
  store float %205, ptr %176, align 4, !tbaa !2207
  %206 = add nsw i64 %175, 1
  %207 = getelementptr inbounds float, ptr %p1, i64 %206
  %208 = load float, ptr %207, align 4, !tbaa !2209
  %209 = tail call float @llvm.fmuladd.f32(float %156, float %208, float 0.000000e+00)
  store float %209, ptr %177, align 4, !tbaa !2207
  %210 = add nsw i64 %175, 2
  %211 = getelementptr inbounds float, ptr %p1, i64 %210
  %212 = load float, ptr %211, align 4, !tbaa !2209
  %213 = tail call float @llvm.fmuladd.f32(float %160, float %212, float 0.000000e+00)
  store float %213, ptr %178, align 4, !tbaa !2207
  %214 = add nsw i64 %175, 3
  %215 = getelementptr inbounds float, ptr %p1, i64 %214
  %216 = load float, ptr %215, align 4, !tbaa !2209
  %217 = tail call float @llvm.fmuladd.f32(float %164, float %216, float 0.000000e+00)
  store float %217, ptr %179, align 4, !tbaa !2207
  %218 = add nsw i64 %175, 4
  %219 = getelementptr inbounds float, ptr %p1, i64 %218
  %220 = load float, ptr %219, align 4, !tbaa !2209
  %221 = tail call float @llvm.fmuladd.f32(float %168, float %220, float 0.000000e+00)
  store float %221, ptr %180, align 4, !tbaa !2207
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for_body_ax2, label %for_body_i.c.j.c.fused, !prof !52

for_body_ax2:                                     ; preds = %for_body_i.c.j.c.fused
  %222 = load float, ptr %T_batch_matmul_NT.global.rf2, align 16, !tbaa !2207
  %223 = fadd float %222, 0.000000e+00
  %224 = load float, ptr %16, align 16, !tbaa !2207
  %225 = fadd float %223, %224
  %226 = load float, ptr %17, align 16, !tbaa !2207
  %227 = fadd float %225, %226
  %228 = load float, ptr %18, align 16, !tbaa !2207
  %229 = fadd float %227, %228
  %230 = load float, ptr %19, align 16, !tbaa !2207
  %231 = fadd float %229, %230
  %232 = load float, ptr %20, align 16, !tbaa !2207
  %233 = fadd float %231, %232
  %234 = load float, ptr %21, align 16, !tbaa !2207
  %235 = fadd float %233, %234
  %236 = load float, ptr %22, align 16, !tbaa !2207
  %237 = fadd float %235, %236
  %238 = load float, ptr %23, align 16, !tbaa !2207
  %239 = fadd float %237, %238
  %240 = load float, ptr %24, align 16, !tbaa !2207
  %241 = fadd float %239, %240
  %242 = load float, ptr %25, align 16, !tbaa !2207
  %243 = fadd float %241, %242
  %244 = load float, ptr %26, align 16, !tbaa !2207
  %245 = fadd float %243, %244
  %246 = load float, ptr %27, align 16, !tbaa !2207
  %247 = fadd float %245, %246
  %248 = load float, ptr %28, align 16, !tbaa !2207
  %249 = fadd float %247, %248
  %250 = load float, ptr %29, align 16, !tbaa !2207
  %251 = fadd float %249, %250
  %252 = load float, ptr %30, align 16, !tbaa !2207
  %253 = fadd float %251, %252
  %254 = load float, ptr %31, align 4, !tbaa !2207
  %255 = fadd float %254, 0.000000e+00
  %256 = load float, ptr %32, align 4, !tbaa !2207
  %257 = fadd float %255, %256
  %258 = load float, ptr %33, align 4, !tbaa !2207
  %259 = fadd float %257, %258
  %260 = load float, ptr %34, align 4, !tbaa !2207
  %261 = fadd float %259, %260
  %262 = load float, ptr %35, align 4, !tbaa !2207
  %263 = fadd float %261, %262
  %264 = load float, ptr %36, align 4, !tbaa !2207
  %265 = fadd float %263, %264
  %266 = load float, ptr %37, align 4, !tbaa !2207
  %267 = fadd float %265, %266
  %268 = load float, ptr %38, align 4, !tbaa !2207
  %269 = fadd float %267, %268
  %270 = load float, ptr %39, align 4, !tbaa !2207
  %271 = fadd float %269, %270
  %272 = load float, ptr %40, align 4, !tbaa !2207
  %273 = fadd float %271, %272
  %274 = load float, ptr %41, align 4, !tbaa !2207
  %275 = fadd float %273, %274
  %276 = load float, ptr %42, align 4, !tbaa !2207
  %277 = fadd float %275, %276
  %278 = load float, ptr %43, align 4, !tbaa !2207
  %279 = fadd float %277, %278
  %280 = load float, ptr %44, align 4, !tbaa !2207
  %281 = fadd float %279, %280
  %282 = load float, ptr %45, align 4, !tbaa !2207
  %283 = fadd float %281, %282
  %284 = load float, ptr %46, align 4, !tbaa !2207
  %285 = fadd float %283, %284
  %286 = load float, ptr %47, align 8, !tbaa !2207
  %287 = fadd float %286, 0.000000e+00
  %288 = load float, ptr %48, align 8, !tbaa !2207
  %289 = fadd float %287, %288
  %290 = load float, ptr %49, align 8, !tbaa !2207
  %291 = fadd float %289, %290
  %292 = load float, ptr %50, align 8, !tbaa !2207
  %293 = fadd float %291, %292
  %294 = load float, ptr %51, align 8, !tbaa !2207
  %295 = fadd float %293, %294
  %296 = load float, ptr %52, align 8, !tbaa !2207
  %297 = fadd float %295, %296
  %298 = load float, ptr %53, align 8, !tbaa !2207
  %299 = fadd float %297, %298
  %300 = load float, ptr %54, align 8, !tbaa !2207
  %301 = fadd float %299, %300
  %302 = load float, ptr %55, align 8, !tbaa !2207
  %303 = fadd float %301, %302
  %304 = load float, ptr %56, align 8, !tbaa !2207
  %305 = fadd float %303, %304
  %306 = load float, ptr %57, align 8, !tbaa !2207
  %307 = fadd float %305, %306
  %308 = load float, ptr %58, align 8, !tbaa !2207
  %309 = fadd float %307, %308
  %310 = load float, ptr %59, align 8, !tbaa !2207
  %311 = fadd float %309, %310
  %312 = load float, ptr %60, align 8, !tbaa !2207
  %313 = fadd float %311, %312
  %314 = load float, ptr %61, align 8, !tbaa !2207
  %315 = fadd float %313, %314
  %316 = load float, ptr %62, align 8, !tbaa !2207
  %317 = fadd float %315, %316
  %318 = load float, ptr %63, align 4, !tbaa !2207
  %319 = fadd float %318, 0.000000e+00
  %320 = load float, ptr %64, align 4, !tbaa !2207
  %321 = fadd float %319, %320
  %322 = load float, ptr %65, align 4, !tbaa !2207
  %323 = fadd float %321, %322
  %324 = load float, ptr %66, align 4, !tbaa !2207
  %325 = fadd float %323, %324
  %326 = load float, ptr %67, align 4, !tbaa !2207
  %327 = fadd float %325, %326
  %328 = load float, ptr %68, align 4, !tbaa !2207
  %329 = fadd float %327, %328
  %330 = load float, ptr %69, align 4, !tbaa !2207
  %331 = fadd float %329, %330
  %332 = load float, ptr %70, align 4, !tbaa !2207
  %333 = fadd float %331, %332
  %334 = load float, ptr %71, align 4, !tbaa !2207
  %335 = fadd float %333, %334
  %336 = load float, ptr %72, align 4, !tbaa !2207
  %337 = fadd float %335, %336
  %338 = load float, ptr %73, align 4, !tbaa !2207
  %339 = fadd float %337, %338
  %340 = load float, ptr %74, align 4, !tbaa !2207
  %341 = fadd float %339, %340
  %342 = load float, ptr %75, align 4, !tbaa !2207
  %343 = fadd float %341, %342
  %344 = load float, ptr %76, align 4, !tbaa !2207
  %345 = fadd float %343, %344
  %346 = load float, ptr %77, align 4, !tbaa !2207
  %347 = fadd float %345, %346
  %348 = load float, ptr %78, align 4, !tbaa !2207
  %349 = fadd float %347, %348
  %350 = load float, ptr %79, align 16, !tbaa !2207
  %351 = fadd float %350, 0.000000e+00
  %352 = load float, ptr %80, align 16, !tbaa !2207
  %353 = fadd float %351, %352
  %354 = load float, ptr %81, align 16, !tbaa !2207
  %355 = fadd float %353, %354
  %356 = load float, ptr %82, align 16, !tbaa !2207
  %357 = fadd float %355, %356
  %358 = load float, ptr %83, align 16, !tbaa !2207
  %359 = fadd float %357, %358
  %360 = load float, ptr %84, align 16, !tbaa !2207
  %361 = fadd float %359, %360
  %362 = load float, ptr %85, align 16, !tbaa !2207
  %363 = fadd float %361, %362
  %364 = load float, ptr %86, align 16, !tbaa !2207
  %365 = fadd float %363, %364
  %366 = load float, ptr %87, align 16, !tbaa !2207
  %367 = fadd float %365, %366
  %368 = load float, ptr %88, align 16, !tbaa !2207
  %369 = fadd float %367, %368
  %370 = load float, ptr %89, align 16, !tbaa !2207
  %371 = fadd float %369, %370
  %372 = load float, ptr %90, align 16, !tbaa !2207
  %373 = fadd float %371, %372
  %374 = load float, ptr %91, align 16, !tbaa !2207
  %375 = fadd float %373, %374
  %376 = load float, ptr %92, align 16, !tbaa !2207
  %377 = fadd float %375, %376
  %378 = load float, ptr %93, align 16, !tbaa !2207
  %379 = fadd float %377, %378
  %380 = load float, ptr %94, align 16, !tbaa !2207
  %381 = fadd float %379, %380
  %382 = load float, ptr %95, align 4, !tbaa !2207
  %383 = fadd float %382, 0.000000e+00
  %384 = load float, ptr %96, align 4, !tbaa !2207
  %385 = fadd float %383, %384
  %386 = load float, ptr %97, align 4, !tbaa !2207
  %387 = fadd float %385, %386
  %388 = load float, ptr %98, align 4, !tbaa !2207
  %389 = fadd float %387, %388
  %390 = load float, ptr %99, align 4, !tbaa !2207
  %391 = fadd float %389, %390
  %392 = load float, ptr %100, align 4, !tbaa !2207
  %393 = fadd float %391, %392
  %394 = load float, ptr %101, align 4, !tbaa !2207
  %395 = fadd float %393, %394
  %396 = load float, ptr %102, align 4, !tbaa !2207
  %397 = fadd float %395, %396
  %398 = load float, ptr %103, align 4, !tbaa !2207
  %399 = fadd float %397, %398
  %400 = load float, ptr %104, align 4, !tbaa !2207
  %401 = fadd float %399, %400
  %402 = load float, ptr %105, align 4, !tbaa !2207
  %403 = fadd float %401, %402
  %404 = load float, ptr %106, align 4, !tbaa !2207
  %405 = fadd float %403, %404
  %406 = load float, ptr %107, align 4, !tbaa !2207
  %407 = fadd float %405, %406
  %408 = load float, ptr %108, align 4, !tbaa !2207
  %409 = fadd float %407, %408
  %410 = load float, ptr %109, align 4, !tbaa !2207
  %411 = fadd float %409, %410
  %412 = load float, ptr %110, align 4, !tbaa !2207
  %413 = fadd float %411, %412
  %414 = load float, ptr %111, align 8, !tbaa !2207
  %415 = fadd float %414, 0.000000e+00
  %416 = load float, ptr %112, align 8, !tbaa !2207
  %417 = fadd float %415, %416
  %418 = load float, ptr %113, align 8, !tbaa !2207
  %419 = fadd float %417, %418
  %420 = load float, ptr %114, align 8, !tbaa !2207
  %421 = fadd float %419, %420
  %422 = load float, ptr %115, align 8, !tbaa !2207
  %423 = fadd float %421, %422
  %424 = load float, ptr %116, align 8, !tbaa !2207
  %425 = fadd float %423, %424
  %426 = load float, ptr %117, align 8, !tbaa !2207
  %427 = fadd float %425, %426
  %428 = load float, ptr %118, align 8, !tbaa !2207
  %429 = fadd float %427, %428
  %430 = load float, ptr %119, align 8, !tbaa !2207
  %431 = fadd float %429, %430
  %432 = load float, ptr %120, align 8, !tbaa !2207
  %433 = fadd float %431, %432
  %434 = load float, ptr %121, align 8, !tbaa !2207
  %435 = fadd float %433, %434
  %436 = load float, ptr %122, align 8, !tbaa !2207
  %437 = fadd float %435, %436
  %438 = load float, ptr %123, align 8, !tbaa !2207
  %439 = fadd float %437, %438
  %440 = load float, ptr %124, align 8, !tbaa !2207
  %441 = fadd float %439, %440
  %442 = load float, ptr %125, align 8, !tbaa !2207
  %443 = fadd float %441, %442
  %444 = load float, ptr %126, align 8, !tbaa !2207
  %445 = fadd float %443, %444
  %446 = load float, ptr %127, align 4, !tbaa !2207
  %447 = fadd float %446, 0.000000e+00
  %448 = load float, ptr %128, align 4, !tbaa !2207
  %449 = fadd float %447, %448
  %450 = load float, ptr %129, align 4, !tbaa !2207
  %451 = fadd float %449, %450
  %452 = load float, ptr %130, align 4, !tbaa !2207
  %453 = fadd float %451, %452
  %454 = load float, ptr %131, align 4, !tbaa !2207
  %455 = fadd float %453, %454
  %456 = load float, ptr %132, align 4, !tbaa !2207
  %457 = fadd float %455, %456
  %458 = load float, ptr %133, align 4, !tbaa !2207
  %459 = fadd float %457, %458
  %460 = load float, ptr %134, align 4, !tbaa !2207
  %461 = fadd float %459, %460
  %462 = load float, ptr %135, align 4, !tbaa !2207
  %463 = fadd float %461, %462
  %464 = load float, ptr %136, align 4, !tbaa !2207
  %465 = fadd float %463, %464
  %466 = load float, ptr %137, align 4, !tbaa !2207
  %467 = fadd float %465, %466
  %468 = load float, ptr %138, align 4, !tbaa !2207
  %469 = fadd float %467, %468
  %470 = load float, ptr %139, align 4, !tbaa !2207
  %471 = fadd float %469, %470
  %472 = load float, ptr %140, align 4, !tbaa !2207
  %473 = fadd float %471, %472
  %474 = load float, ptr %141, align 4, !tbaa !2207
  %475 = fadd float %473, %474
  %476 = load float, ptr %142, align 4, !tbaa !2207
  %477 = fadd float %475, %476
  %cse_var_1 = shl nsw i32 %143, 3
  %478 = sext i32 %cse_var_1 to i64
  %479 = getelementptr inbounds float, ptr %T_batch_matmul_NT, i64 %478
  store float %253, ptr %479, align 32, !tbaa !2211
  %480 = or i32 %cse_var_1, 1
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds float, ptr %T_batch_matmul_NT, i64 %481
  store float %285, ptr %482, align 4, !tbaa !2211
  %483 = or i32 %cse_var_1, 2
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds float, ptr %T_batch_matmul_NT, i64 %484
  store float %317, ptr %485, align 8, !tbaa !2211
  %486 = or i32 %cse_var_1, 3
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds float, ptr %T_batch_matmul_NT, i64 %487
  store float %349, ptr %488, align 4, !tbaa !2211
  %489 = or i32 %cse_var_1, 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds float, ptr %T_batch_matmul_NT, i64 %490
  store float %381, ptr %491, align 16, !tbaa !2211
  %492 = or i32 %cse_var_1, 5
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds float, ptr %T_batch_matmul_NT, i64 %493
  store float %413, ptr %494, align 4, !tbaa !2211
  %495 = or i32 %cse_var_1, 6
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds float, ptr %T_batch_matmul_NT, i64 %496
  store float %445, ptr %497, align 8, !tbaa !2211
  %498 = or i32 %cse_var_1, 7
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds float, ptr %T_batch_matmul_NT, i64 %499
  store float %477, ptr %500, align 4, !tbaa !2211
  %indvars.iv.next15 = add nsw i64 %indvars.iv14, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next15 to i32
  %exitcond16.not = icmp eq i32 %15, %lftr.wideiv
  br i1 %exitcond16.not, label %for_end_b.i.outer.fused.j.outer.fused, label %for_body_b.i.outer.fused.j.outer.fused, !prof !52
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_nn_contrib_dense_pack_compute_(ptr noalias align 64 %0, ptr noalias align 64 %1, ptr noalias align 64 %2) unnamed_addr #2 {
entry:
  %3 = alloca %closure_loop_parallel_x.outer.y.outer.fused, align 8
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds %closure_loop_parallel_x.outer.y.outer.fused, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds %closure_loop_parallel_x.outer.y.outer.fused, ptr %3, i64 0, i32 2
  store ptr %2, ptr %5, align 8
  %6 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %7 = call i32 %6(ptr nonnull @__tvm_parallel_lambda.150, ptr nonnull %3, i32 0)
  ret i32 %7
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda.150(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %p0 = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %closure_loop_parallel_x.outer.y.outer.fused, ptr %1, i64 0, i32 1
  %p1 = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %closure_loop_parallel_x.outer.y.outer.fused, ptr %1, i64 0, i32 2
  %compute = load ptr, ptr %3, align 8
  %4 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %4, align 4
  %5 = add nsw i32 %num_task, 14
  %6 = sdiv i32 %5, %num_task
  %7 = add nsw i32 %task_id, 1
  %8 = mul nsw i32 %6, %7
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 15)
  %10 = mul nsw i32 %6, %task_id
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 15)
  %12 = icmp slt i32 %11, %9
  br i1 %12, label %for_begin_y.inner.outer.x.inner.outer.fused.preheader, label %for_end_x.outer.y.outer.fused, !prof !18

for_begin_y.inner.outer.x.inner.outer.fused.preheader: ; preds = %parallel_closure_entry, %for_end_y.inner.outer.x.inner.outer.fused
  %x.outer.y.outer.fused5 = phi i32 [ %24, %for_end_y.inner.outer.x.inner.outer.fused ], [ %11, %parallel_closure_entry ]
  %x.outer.y.outer.fused5.frozen = freeze i32 %x.outer.y.outer.fused5
  %13 = sdiv i32 %x.outer.y.outer.fused5.frozen, 5
  %14 = mul i32 %13, 5
  %.decomposed = sub i32 %x.outer.y.outer.fused5.frozen, %14
  %15 = mul nsw i32 %.decomposed, 768
  %16 = mul nsw i32 %13, 196608
  %17 = shl nsw i32 %13, 8
  %18 = add nsw i32 %15, %17
  %19 = sext i32 %15 to i64
  %20 = sext i32 %16 to i64
  %21 = sext i32 %18 to i64
  br label %for_begin_k.outer.preheader

for_end_x.outer.y.outer.fused:                    ; preds = %for_end_y.inner.outer.x.inner.outer.fused, %parallel_closure_entry
  ret i32 0

for_begin_k.outer.preheader:                      ; preds = %for_begin_y.inner.outer.x.inner.outer.fused.preheader, %for_end_k.outer
  %indvars.iv6 = phi i64 [ 0, %for_begin_y.inner.outer.x.inner.outer.fused.preheader ], [ %indvars.iv.next7, %for_end_k.outer ]
  %22 = mul nuw nsw i64 %indvars.iv6, 6144
  %23 = add nsw i64 %22, %20
  br label %for_body_k.outer

for_end_y.inner.outer.x.inner.outer.fused:        ; preds = %for_end_k.outer
  %24 = add nsw i32 %x.outer.y.outer.fused5, 1
  %exitcond9.not = icmp eq i32 %24, %9
  br i1 %exitcond9.not, label %for_end_x.outer.y.outer.fused, label %for_begin_y.inner.outer.x.inner.outer.fused.preheader, !prof !52

for_body_k.outer:                                 ; preds = %for_begin_k.outer.preheader, %for_body_k.outer
  %indvars.iv = phi i64 [ 0, %for_begin_k.outer.preheader ], [ %indvars.iv.next, %for_body_k.outer ]
  %compute.global.02 = phi <8 x float> [ zeroinitializer, %for_begin_k.outer.preheader ], [ %34, %for_body_k.outer ]
  %25 = add nsw i64 %indvars.iv, %19
  %26 = getelementptr inbounds float, ptr %p0, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !2213
  %28 = insertelement <8 x float> undef, float %27, i64 0
  %29 = shufflevector <8 x float> %28, <8 x float> undef, <8 x i32> zeroinitializer
  %30 = shl nuw nsw i64 %indvars.iv, 3
  %31 = add nsw i64 %23, %30
  %32 = getelementptr inbounds float, ptr %p1, i64 %31
  %33 = load <8 x float>, ptr %32, align 32, !tbaa !2215
  %34 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %29, <8 x float> %33, <8 x float> %compute.global.02)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 768
  br i1 %exitcond.not, label %for_end_k.outer, label %for_body_k.outer, !prof !52

for_end_k.outer:                                  ; preds = %for_body_k.outer
  %35 = shl nsw i64 %indvars.iv6, 3
  %36 = add nuw nsw i64 %35, %21
  %37 = getelementptr inbounds float, ptr %compute, i64 %36
  store <8 x float> %34, ptr %37, align 32, !tbaa !2217
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond8.not = icmp eq i64 %indvars.iv.next7, 32
  br i1 %exitcond8.not, label %for_end_y.inner.outer.x.inner.outer.fused, label %for_begin_k.outer.preheader, !prof !52
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #4

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_nn_contrib_dense_pack_1_compute_(ptr noalias align 64 %0, ptr noalias align 64 %1, ptr noalias align 64 %2) unnamed_addr #2 {
entry:
  %3 = alloca %closure_loop_parallel_x.outer.y.outer.fused.2, align 8
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds %closure_loop_parallel_x.outer.y.outer.fused.2, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds %closure_loop_parallel_x.outer.y.outer.fused.2, ptr %3, i64 0, i32 2
  store ptr %2, ptr %5, align 8
  %6 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %7 = call i32 %6(ptr nonnull @__tvm_parallel_lambda.179, ptr nonnull %3, i32 0)
  ret i32 %7
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda.179(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %p0 = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %closure_loop_parallel_x.outer.y.outer.fused.2, ptr %1, i64 0, i32 1
  %p1 = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %closure_loop_parallel_x.outer.y.outer.fused.2, ptr %1, i64 0, i32 2
  %compute = load ptr, ptr %3, align 8
  %4 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %4, align 4
  %5 = add nsw i32 %num_task, 14
  %6 = sdiv i32 %5, %num_task
  %7 = add nsw i32 %task_id, 1
  %8 = mul nsw i32 %6, %7
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 15)
  %10 = mul nsw i32 %6, %task_id
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 15)
  %12 = icmp slt i32 %11, %9
  br i1 %12, label %for_begin_y.inner.outer.x.inner.outer.fused.preheader, label %for_end_x.outer.y.outer.fused, !prof !18

for_begin_y.inner.outer.x.inner.outer.fused.preheader: ; preds = %parallel_closure_entry, %for_end_y.inner.outer.x.inner.outer.fused
  %x.outer.y.outer.fused5 = phi i32 [ %25, %for_end_y.inner.outer.x.inner.outer.fused ], [ %11, %parallel_closure_entry ]
  %x.outer.y.outer.fused5.frozen = freeze i32 %x.outer.y.outer.fused5
  %13 = sdiv i32 %x.outer.y.outer.fused5.frozen, 5
  %14 = mul i32 %13, 5
  %.decomposed = sub i32 %x.outer.y.outer.fused5.frozen, %14
  %15 = mul nsw i32 %.decomposed, 768
  %16 = mul nsw i32 %13, 786432
  %17 = shl nsw i32 %13, 10
  %18 = mul nsw i32 %.decomposed, 3072
  %19 = add nsw i32 %18, %17
  %20 = sext i32 %15 to i64
  %21 = sext i32 %16 to i64
  %22 = sext i32 %19 to i64
  br label %for_begin_k.outer.preheader

for_end_x.outer.y.outer.fused:                    ; preds = %for_end_y.inner.outer.x.inner.outer.fused, %parallel_closure_entry
  ret i32 0

for_begin_k.outer.preheader:                      ; preds = %for_begin_y.inner.outer.x.inner.outer.fused.preheader, %for_end_k.outer
  %indvars.iv6 = phi i64 [ 0, %for_begin_y.inner.outer.x.inner.outer.fused.preheader ], [ %indvars.iv.next7, %for_end_k.outer ]
  %23 = mul nuw nsw i64 %indvars.iv6, 6144
  %24 = add nsw i64 %23, %21
  br label %for_body_k.outer

for_end_y.inner.outer.x.inner.outer.fused:        ; preds = %for_end_k.outer
  %25 = add nsw i32 %x.outer.y.outer.fused5, 1
  %exitcond9.not = icmp eq i32 %25, %9
  br i1 %exitcond9.not, label %for_end_x.outer.y.outer.fused, label %for_begin_y.inner.outer.x.inner.outer.fused.preheader, !prof !52

for_body_k.outer:                                 ; preds = %for_begin_k.outer.preheader, %for_body_k.outer
  %indvars.iv = phi i64 [ 0, %for_begin_k.outer.preheader ], [ %indvars.iv.next, %for_body_k.outer ]
  %compute.global.02 = phi <8 x float> [ zeroinitializer, %for_begin_k.outer.preheader ], [ %35, %for_body_k.outer ]
  %26 = add nsw i64 %indvars.iv, %20
  %27 = getelementptr inbounds float, ptr %p0, i64 %26
  %28 = load float, ptr %27, align 4, !tbaa !2219
  %29 = insertelement <8 x float> undef, float %28, i64 0
  %30 = shufflevector <8 x float> %29, <8 x float> undef, <8 x i32> zeroinitializer
  %31 = shl nuw nsw i64 %indvars.iv, 3
  %32 = add nsw i64 %24, %31
  %33 = getelementptr inbounds float, ptr %p1, i64 %32
  %34 = load <8 x float>, ptr %33, align 32, !tbaa !2221
  %35 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %30, <8 x float> %34, <8 x float> %compute.global.02)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 768
  br i1 %exitcond.not, label %for_end_k.outer, label %for_body_k.outer, !prof !52

for_end_k.outer:                                  ; preds = %for_body_k.outer
  %36 = shl nsw i64 %indvars.iv6, 3
  %37 = add nuw nsw i64 %36, %22
  %38 = getelementptr inbounds float, ptr %compute, i64 %37
  store <8 x float> %35, ptr %38, align 32, !tbaa !2223
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond8.not = icmp eq i64 %indvars.iv.next7, 128
  br i1 %exitcond8.not, label %for_end_y.inner.outer.x.inner.outer.fused, label %for_begin_k.outer.preheader, !prof !52
}

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_nn_contrib_dense_pack_2_compute_(ptr noalias align 64 %0, ptr noalias align 64 %1, ptr noalias align 64 %2) unnamed_addr #2 {
entry:
  %3 = alloca %closure_loop_parallel_x.outer.y.outer.fused.3, align 8
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds %closure_loop_parallel_x.outer.y.outer.fused.3, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds %closure_loop_parallel_x.outer.y.outer.fused.3, ptr %3, i64 0, i32 2
  store ptr %2, ptr %5, align 8
  %6 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %7 = call i32 %6(ptr nonnull @__tvm_parallel_lambda.208, ptr nonnull %3, i32 0)
  ret i32 %7
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda.208(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %p0 = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %closure_loop_parallel_x.outer.y.outer.fused.3, ptr %1, i64 0, i32 1
  %p1 = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %closure_loop_parallel_x.outer.y.outer.fused.3, ptr %1, i64 0, i32 2
  %compute = load ptr, ptr %3, align 8
  %4 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %4, align 4
  %5 = add nsw i32 %num_task, 14
  %6 = sdiv i32 %5, %num_task
  %7 = add nsw i32 %task_id, 1
  %8 = mul nsw i32 %6, %7
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 15)
  %10 = mul nsw i32 %6, %task_id
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 15)
  %12 = icmp slt i32 %11, %9
  br i1 %12, label %for_begin_y.inner.outer.x.inner.outer.fused.preheader, label %for_end_x.outer.y.outer.fused, !prof !18

for_begin_y.inner.outer.x.inner.outer.fused.preheader: ; preds = %parallel_closure_entry, %for_end_y.inner.outer.x.inner.outer.fused
  %x.outer.y.outer.fused5 = phi i32 [ %25, %for_end_y.inner.outer.x.inner.outer.fused ], [ %11, %parallel_closure_entry ]
  %x.outer.y.outer.fused5.frozen = freeze i32 %x.outer.y.outer.fused5
  %13 = sdiv i32 %x.outer.y.outer.fused5.frozen, 5
  %14 = mul i32 %13, 5
  %.decomposed = sub i32 %x.outer.y.outer.fused5.frozen, %14
  %15 = mul nsw i32 %.decomposed, 3072
  %16 = mul nsw i32 %13, 786432
  %17 = shl nsw i32 %13, 8
  %18 = mul nsw i32 %.decomposed, 768
  %19 = add nsw i32 %18, %17
  %20 = sext i32 %15 to i64
  %21 = sext i32 %16 to i64
  %22 = sext i32 %19 to i64
  br label %for_begin_k.outer.preheader

for_end_x.outer.y.outer.fused:                    ; preds = %for_end_y.inner.outer.x.inner.outer.fused, %parallel_closure_entry
  ret i32 0

for_begin_k.outer.preheader:                      ; preds = %for_begin_y.inner.outer.x.inner.outer.fused.preheader, %for_end_k.outer
  %indvars.iv6 = phi i64 [ 0, %for_begin_y.inner.outer.x.inner.outer.fused.preheader ], [ %indvars.iv.next7, %for_end_k.outer ]
  %23 = mul nuw nsw i64 %indvars.iv6, 24576
  %24 = add nsw i64 %23, %21
  br label %for_body_k.outer

for_end_y.inner.outer.x.inner.outer.fused:        ; preds = %for_end_k.outer
  %25 = add nsw i32 %x.outer.y.outer.fused5, 1
  %exitcond9.not = icmp eq i32 %25, %9
  br i1 %exitcond9.not, label %for_end_x.outer.y.outer.fused, label %for_begin_y.inner.outer.x.inner.outer.fused.preheader, !prof !52

for_body_k.outer:                                 ; preds = %for_begin_k.outer.preheader, %for_body_k.outer
  %indvars.iv = phi i64 [ 0, %for_begin_k.outer.preheader ], [ %indvars.iv.next, %for_body_k.outer ]
  %compute.global.02 = phi <8 x float> [ zeroinitializer, %for_begin_k.outer.preheader ], [ %35, %for_body_k.outer ]
  %26 = add nsw i64 %indvars.iv, %20
  %27 = getelementptr inbounds float, ptr %p0, i64 %26
  %28 = load float, ptr %27, align 4, !tbaa !2225
  %29 = insertelement <8 x float> undef, float %28, i64 0
  %30 = shufflevector <8 x float> %29, <8 x float> undef, <8 x i32> zeroinitializer
  %31 = shl nuw nsw i64 %indvars.iv, 3
  %32 = add nsw i64 %24, %31
  %33 = getelementptr inbounds float, ptr %p1, i64 %32
  %34 = load <8 x float>, ptr %33, align 32, !tbaa !2227
  %35 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %30, <8 x float> %34, <8 x float> %compute.global.02)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3072
  br i1 %exitcond.not, label %for_end_k.outer, label %for_body_k.outer, !prof !52

for_end_k.outer:                                  ; preds = %for_body_k.outer
  %36 = shl nsw i64 %indvars.iv6, 3
  %37 = add nuw nsw i64 %36, %22
  %38 = getelementptr inbounds float, ptr %compute, i64 %37
  store <8 x float> %35, ptr %38, align 32, !tbaa !2229
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond8.not = icmp eq i64 %indvars.iv.next7, 32
  br i1 %exitcond8.not, label %for_end_y.inner.outer.x.inner.outer.fused, label %for_begin_k.outer.preheader, !prof !52
}

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_nn_contrib_dense_pack_add_tanh_compute_(i32 %0, ptr noalias align 64 %1, ptr noalias align 64 %2, ptr noalias align 64 %3, ptr noalias align 64 %4) unnamed_addr #2 {
entry:
  %5 = alloca %closure_loop_parallel_ax1.outer.ax0.outer.fused, align 8
  store i32 %0, ptr %5, align 8
  %6 = getelementptr inbounds %closure_loop_parallel_ax1.outer.ax0.outer.fused, ptr %5, i64 0, i32 1
  store ptr %1, ptr %6, align 8
  %7 = getelementptr inbounds %closure_loop_parallel_ax1.outer.ax0.outer.fused, ptr %5, i64 0, i32 2
  store ptr %2, ptr %7, align 8
  %8 = getelementptr inbounds %closure_loop_parallel_ax1.outer.ax0.outer.fused, ptr %5, i64 0, i32 3
  store ptr %3, ptr %8, align 8
  %9 = getelementptr inbounds %closure_loop_parallel_ax1.outer.ax0.outer.fused, ptr %5, i64 0, i32 4
  store ptr %4, ptr %9, align 8
  %10 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %11 = call i32 %10(ptr nonnull @__tvm_parallel_lambda.246, ptr nonnull %5, i32 0)
  ret i32 %11
}

define private i32 @__tvm_parallel_lambda.246(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #0 {
parallel_closure_entry:
  %dev_id = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %closure_loop_parallel_ax1.outer.ax0.outer.fused, ptr %1, i64 0, i32 1
  %p0 = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %closure_loop_parallel_ax1.outer.ax0.outer.fused, ptr %1, i64 0, i32 2
  %p1 = load ptr, ptr %3, align 8
  %4 = getelementptr inbounds %closure_loop_parallel_ax1.outer.ax0.outer.fused, ptr %1, i64 0, i32 3
  %T_tanh = load ptr, ptr %4, align 8
  %5 = getelementptr inbounds %closure_loop_parallel_ax1.outer.ax0.outer.fused, ptr %1, i64 0, i32 4
  %p2 = load ptr, ptr %5, align 8
  %6 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %6, align 4
  %7 = add nsw i32 %num_task, 2
  %8 = sdiv i32 %7, %num_task
  %9 = add nsw i32 %task_id, 1
  %10 = mul nsw i32 %8, %9
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 3)
  %12 = mul i32 %8, %task_id
  %13 = tail call i32 @llvm.smin.i32(i32 %12, i32 3)
  %14 = icmp slt i32 %13, %11
  br i1 %14, label %for_body_ax1.outer.ax0.outer.fused.preheader, label %common.ret, !prof !18

for_body_ax1.outer.ax0.outer.fused.preheader:     ; preds = %parallel_closure_entry
  %15 = tail call i32 @llvm.smin.i32(i32 %12, i32 3)
  %smin = sext i32 %15 to i64
  %16 = add i32 %11, %15
  %17 = sub i32 %16, %13
  br label %for_body_ax1.outer.ax0.outer.fused

for_begin_ax1.outer.ax0.outer.fused:              ; preds = %for_end_ax1.inner.outer
  %indvars.iv.next20 = add nsw i64 %indvars.iv19, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next20 to i32
  %exitcond21.not = icmp eq i32 %17, %lftr.wideiv
  br i1 %exitcond21.not, label %common.ret, label %for_body_ax1.outer.ax0.outer.fused, !prof !52

for_body_ax1.outer.ax0.outer.fused:               ; preds = %for_body_ax1.outer.ax0.outer.fused.preheader, %for_begin_ax1.outer.ax0.outer.fused
  %indvars.iv19 = phi i64 [ %smin, %for_body_ax1.outer.ax0.outer.fused.preheader ], [ %indvars.iv.next20, %for_begin_ax1.outer.ax0.outer.fused ]
  %18 = load ptr, ptr @__TVMBackendAllocWorkspace, align 8, !tbaa !19
  %compute = tail call ptr %18(i32 1, i32 %dev_id, i64 1024, i32 2, i32 32)
  call void @llvm.assume(i1 true) [ "align"(ptr %compute, i64 64) ]
  %19 = icmp eq ptr %compute, null
  br i1 %19, label %common.ret, label %for_begin_y.inner.outer.x.inner.outer.fused.preheader, !prof !18

for_begin_y.inner.outer.x.inner.outer.fused.preheader: ; preds = %for_body_ax1.outer.ax0.outer.fused
  %20 = mul nsw i64 %indvars.iv19, 196608
  br label %for_begin_k.outer.preheader

common.ret:                                       ; preds = %for_begin_ax1.outer.ax0.outer.fused, %for_body_ax1.outer.ax0.outer.fused, %for_end_ax1.inner.outer, %parallel_closure_entry
  %common.ret.op = phi i32 [ 0, %parallel_closure_entry ], [ -1, %for_end_ax1.inner.outer ], [ -1, %for_body_ax1.outer.ax0.outer.fused ], [ 0, %for_begin_ax1.outer.ax0.outer.fused ]
  ret i32 %common.ret.op

for_begin_ax1.inner.outer.preheader:              ; preds = %for_end_k.outer
  %21 = trunc i64 %indvars.iv19 to i32
  %22 = shl nsw i32 %21, 8
  %23 = sext i32 %22 to i64
  br label %for_body_ax1.inner.outer

for_begin_k.outer.preheader:                      ; preds = %for_begin_y.inner.outer.x.inner.outer.fused.preheader, %for_end_k.outer
  %indvars.iv12 = phi i64 [ 0, %for_begin_y.inner.outer.x.inner.outer.fused.preheader ], [ %indvars.iv.next13, %for_end_k.outer ]
  %24 = mul nuw nsw i64 %indvars.iv12, 6144
  %25 = add nsw i64 %24, %20
  br label %for_body_k.outer

for_body_k.outer:                                 ; preds = %for_begin_k.outer.preheader, %for_body_k.outer
  %indvars.iv = phi i64 [ 0, %for_begin_k.outer.preheader ], [ %indvars.iv.next, %for_body_k.outer ]
  %compute.global.05 = phi <8 x float> [ zeroinitializer, %for_begin_k.outer.preheader ], [ %34, %for_body_k.outer ]
  %26 = getelementptr inbounds float, ptr %p0, i64 %indvars.iv
  %27 = load float, ptr %26, align 4, !tbaa !2231
  %28 = insertelement <8 x float> undef, float %27, i64 0
  %29 = shufflevector <8 x float> %28, <8 x float> undef, <8 x i32> zeroinitializer
  %30 = shl nuw nsw i64 %indvars.iv, 3
  %31 = add nsw i64 %25, %30
  %32 = getelementptr inbounds float, ptr %p1, i64 %31
  %33 = load <8 x float>, ptr %32, align 32, !tbaa !2233
  %34 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %29, <8 x float> %33, <8 x float> %compute.global.05)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 768
  br i1 %exitcond.not, label %for_end_k.outer, label %for_body_k.outer, !prof !52

for_end_k.outer:                                  ; preds = %for_body_k.outer
  %35 = getelementptr inbounds <8 x float>, ptr %compute, i64 %indvars.iv12
  store <8 x float> %34, ptr %35, align 32, !tbaa !2235
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond14.not = icmp eq i64 %indvars.iv.next13, 32
  br i1 %exitcond14.not, label %for_begin_ax1.inner.outer.preheader, label %for_begin_k.outer.preheader, !prof !52

for_body_ax1.inner.outer:                         ; preds = %for_begin_ax1.inner.outer.preheader, %for_body_ax1.inner.outer
  %indvars.iv15 = phi i64 [ 0, %for_begin_ax1.inner.outer.preheader ], [ %indvars.iv.next16, %for_body_ax1.inner.outer ]
  %36 = shl nuw nsw i64 %indvars.iv15, 3
  %37 = add nuw nsw i64 %36, %23
  %38 = getelementptr inbounds float, ptr %p2, i64 %37
  %39 = load <8 x float>, ptr %38, align 32, !tbaa !2237
  %40 = getelementptr inbounds <8 x float>, ptr %compute, i64 %indvars.iv15
  %41 = load <8 x float>, ptr %40, align 32, !tbaa !2235
  %42 = fadd <8 x float> %39, %41
  %43 = fmul <8 x float> %42, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %44 = tail call <8 x float> @llvm.exp.v8f32(<8 x float> %43)
  %45 = fadd <8 x float> %44, <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>
  %46 = fadd <8 x float> %44, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %47 = fdiv <8 x float> %45, %46
  %48 = fmul <8 x float> %42, <float -2.000000e+00, float -2.000000e+00, float -2.000000e+00, float -2.000000e+00, float -2.000000e+00, float -2.000000e+00, float -2.000000e+00, float -2.000000e+00>
  %49 = tail call <8 x float> @llvm.exp.v8f32(<8 x float> %48)
  %50 = fsub <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %49
  %51 = fadd <8 x float> %49, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %52 = fdiv <8 x float> %50, %51
  %53 = fcmp oge <8 x float> %42, zeroinitializer
  %54 = select <8 x i1> %53, <8 x float> %52, <8 x float> %47
  %55 = getelementptr inbounds float, ptr %T_tanh, i64 %37
  store <8 x float> %54, ptr %55, align 32, !tbaa !2239
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %exitcond18.not = icmp eq i64 %indvars.iv.next16, 32
  br i1 %exitcond18.not, label %for_end_ax1.inner.outer, label %for_body_ax1.inner.outer, !prof !52

for_end_ax1.inner.outer:                          ; preds = %for_body_ax1.inner.outer
  %56 = load ptr, ptr @__TVMBackendFreeWorkspace, align 8, !tbaa !19
  %57 = tail call i32 %56(i32 1, i32 %dev_id, ptr nonnull %compute)
  %.not = icmp eq i32 %57, 0
  br i1 %.not, label %for_begin_ax1.outer.ax0.outer.fused, label %common.ret, !prof !52
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #4

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_nn_softmax_compute_(ptr noalias align 64 %0, ptr noalias align 64 %1) unnamed_addr #2 {
entry:
  %2 = alloca %closure_loop_parallel_i0.i1.fused.i2.fused, align 8
  store ptr %0, ptr %2, align 8
  %3 = getelementptr inbounds %closure_loop_parallel_i0.i1.fused.i2.fused, ptr %2, i64 0, i32 1
  store ptr %1, ptr %3, align 8
  %4 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %5 = call i32 %4(ptr nonnull @__tvm_parallel_lambda.269, ptr nonnull %2, i32 0)
  ret i32 %5
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda.269(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %p0 = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %closure_loop_parallel_i0.i1.fused.i2.fused, ptr %1, i64 0, i32 1
  %T_softmax_norm = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %3, align 4
  %4 = add nsw i32 %num_task, 59
  %5 = sdiv i32 %4, %num_task
  %6 = add nsw i32 %task_id, 1
  %7 = mul nsw i32 %5, %6
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 60)
  %9 = mul i32 %5, %task_id
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 60)
  %11 = icmp slt i32 %10, %8
  br i1 %11, label %for_begin_k.preheader.preheader, label %for_end_i0.i1.fused.i2.fused, !prof !18

for_begin_k.preheader.preheader:                  ; preds = %parallel_closure_entry
  %12 = tail call i32 @llvm.smin.i32(i32 %9, i32 60)
  %smin = sext i32 %12 to i64
  %13 = add i32 %8, %12
  %14 = sub i32 %13, %10
  br label %for_begin_k.preheader

for_begin_k.preheader:                            ; preds = %for_begin_k.preheader.preheader, %for_begin_k.preheader
  %indvars.iv = phi i64 [ %smin, %for_begin_k.preheader.preheader ], [ %indvars.iv.next, %for_begin_k.preheader ]
  %15 = mul nsw i64 %indvars.iv, 5
  %16 = getelementptr inbounds float, ptr %p0, i64 %15
  %17 = load float, ptr %16, align 4, !tbaa !2241
  %18 = fcmp olt float %17, 0xC7EFFFFFE0000000
  %19 = select i1 %18, float 0xC7EFFFFFE0000000, float %17
  %20 = add nsw i64 %15, 1
  %21 = getelementptr inbounds float, ptr %p0, i64 %20
  %22 = load float, ptr %21, align 4, !tbaa !2241
  %23 = fcmp ogt float %19, %22
  %24 = select i1 %23, float %19, float %22
  %25 = add nsw i64 %15, 2
  %26 = getelementptr inbounds float, ptr %p0, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !2241
  %28 = fcmp ogt float %24, %27
  %29 = select i1 %28, float %24, float %27
  %30 = add nsw i64 %15, 3
  %31 = getelementptr inbounds float, ptr %p0, i64 %30
  %32 = load float, ptr %31, align 4, !tbaa !2241
  %33 = fcmp ogt float %29, %32
  %34 = select i1 %33, float %29, float %32
  %35 = add nsw i64 %15, 4
  %36 = getelementptr inbounds float, ptr %p0, i64 %35
  %37 = load float, ptr %36, align 4, !tbaa !2241
  %38 = fcmp ogt float %34, %37
  %39 = select i1 %38, float %34, float %37
  %40 = fsub float %17, %39
  %41 = tail call float @llvm.exp.f32(float %40)
  %42 = fsub float %22, %39
  %43 = tail call float @llvm.exp.f32(float %42)
  %44 = fsub float %27, %39
  %45 = tail call float @llvm.exp.f32(float %44)
  %46 = fsub float %32, %39
  %47 = tail call float @llvm.exp.f32(float %46)
  %48 = fsub float %37, %39
  %49 = tail call float @llvm.exp.f32(float %48)
  %50 = fadd float %41, %43
  %51 = fadd float %50, %45
  %52 = fadd float %51, %47
  %53 = fadd float %52, %49
  %54 = fdiv float %41, %53
  %55 = getelementptr inbounds float, ptr %T_softmax_norm, i64 %15
  store float %54, ptr %55, align 4, !tbaa !2243
  %56 = fdiv float %43, %53
  %57 = getelementptr inbounds float, ptr %T_softmax_norm, i64 %20
  store float %56, ptr %57, align 4, !tbaa !2243
  %58 = fdiv float %45, %53
  %59 = getelementptr inbounds float, ptr %T_softmax_norm, i64 %25
  store float %58, ptr %59, align 4, !tbaa !2243
  %60 = fdiv float %47, %53
  %61 = getelementptr inbounds float, ptr %T_softmax_norm, i64 %30
  store float %60, ptr %61, align 4, !tbaa !2243
  %62 = fdiv float %49, %53
  %63 = getelementptr inbounds float, ptr %T_softmax_norm, i64 %35
  store float %62, ptr %63, align 4, !tbaa !2243
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %14, %lftr.wideiv
  br i1 %exitcond.not, label %for_end_i0.i1.fused.i2.fused, label %for_begin_k.preheader, !prof !52

for_end_i0.i1.fused.i2.fused:                     ; preds = %for_begin_k.preheader, %parallel_closure_entry
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #4

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_reshape_compute_(ptr noalias align 64 %0, ptr noalias align 64 %1) unnamed_addr #2 {
entry:
  %2 = alloca %closure_loop_parallel_ax0, align 8
  store ptr %0, ptr %2, align 8
  %3 = getelementptr inbounds %closure_loop_parallel_ax0, ptr %2, i64 0, i32 1
  store ptr %1, ptr %3, align 8
  %4 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %5 = call i32 %4(ptr nonnull @__tvm_parallel_lambda.289, ptr nonnull %2, i32 0)
  ret i32 %5
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda.289(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %T_reshape = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %closure_loop_parallel_ax0, ptr %1, i64 0, i32 1
  %p0 = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %3, align 4
  %4 = add nsw i32 %num_task, 4
  %5 = sdiv i32 %4, %num_task
  %6 = add nsw i32 %task_id, 1
  %7 = mul nsw i32 %5, %6
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 5)
  %9 = mul i32 %5, %task_id
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 5)
  %11 = icmp slt i32 %10, %8
  br i1 %11, label %for_begin_ax1.outer.preheader.preheader, label %for_end_ax0, !prof !18

for_begin_ax1.outer.preheader.preheader:          ; preds = %parallel_closure_entry
  %12 = tail call i32 @llvm.smin.i32(i32 %9, i32 5)
  %smin = sext i32 %12 to i64
  %13 = add i32 %8, %12
  %14 = sub i32 %13, %10
  br label %for_begin_ax1.outer.preheader

for_begin_ax1.outer.preheader:                    ; preds = %for_begin_ax1.outer.preheader.preheader, %for_end_ax1.outer
  %indvars.iv5 = phi i64 [ %smin, %for_begin_ax1.outer.preheader.preheader ], [ %indvars.iv.next6, %for_end_ax1.outer ]
  %15 = mul nsw i64 %indvars.iv5, 768
  br label %for_body_ax1.outer

for_end_ax0:                                      ; preds = %for_end_ax1.outer, %parallel_closure_entry
  ret i32 0

for_body_ax1.outer:                               ; preds = %for_begin_ax1.outer.preheader, %for_body_ax1.outer
  %indvars.iv = phi i64 [ 0, %for_begin_ax1.outer.preheader ], [ %indvars.iv.next, %for_body_ax1.outer ]
  %16 = shl nuw nsw i64 %indvars.iv, 4
  %17 = add nsw i64 %16, %15
  %18 = getelementptr inbounds float, ptr %p0, i64 %17
  %19 = load <16 x float>, ptr %18, align 64, !tbaa !2245
  %20 = getelementptr inbounds float, ptr %T_reshape, i64 %17
  store <16 x float> %19, ptr %20, align 64, !tbaa !2247
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 48
  br i1 %exitcond.not, label %for_end_ax1.outer, label %for_body_ax1.outer, !prof !52

for_end_ax1.outer:                                ; preds = %for_body_ax1.outer
  %indvars.iv.next6 = add nsw i64 %indvars.iv5, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next6 to i32
  %exitcond7.not = icmp eq i32 %14, %lftr.wideiv
  br i1 %exitcond7.not, label %for_end_ax0, label %for_begin_ax1.outer.preheader, !prof !52
}

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_reshape_1_compute_(ptr noalias align 64 %0, ptr noalias align 64 %1) unnamed_addr #2 {
entry:
  %2 = alloca %closure_loop_parallel_ax0.ax1.fused.4, align 8
  store ptr %0, ptr %2, align 8
  %3 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.4, ptr %2, i64 0, i32 1
  store ptr %1, ptr %3, align 8
  %4 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %5 = call i32 %4(ptr nonnull @__tvm_parallel_lambda.311, ptr nonnull %2, i32 0)
  ret i32 %5
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda.311(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %T_reshape = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.4, ptr %1, i64 0, i32 1
  %p0 = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %3, align 4
  %4 = add nsw i32 %num_task, 59
  %5 = sdiv i32 %4, %num_task
  %6 = add nsw i32 %task_id, 1
  %7 = mul nsw i32 %5, %6
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 60)
  %9 = mul i32 %5, %task_id
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 60)
  %11 = icmp slt i32 %10, %8
  br i1 %11, label %for_body_ax0.ax1.fused.preheader, label %for_end_ax0.ax1.fused, !prof !18

for_body_ax0.ax1.fused.preheader:                 ; preds = %parallel_closure_entry
  %12 = tail call i32 @llvm.smin.i32(i32 %9, i32 60)
  %smin = sext i32 %12 to i64
  %13 = add i32 %8, %12
  %14 = sub i32 %13, %10
  br label %for_body_ax0.ax1.fused

for_body_ax0.ax1.fused:                           ; preds = %for_body_ax0.ax1.fused.preheader, %for_body_ax0.ax1.fused
  %indvars.iv = phi i64 [ %smin, %for_body_ax0.ax1.fused.preheader ], [ %indvars.iv.next, %for_body_ax0.ax1.fused ]
  %15 = mul nsw i64 %indvars.iv, 5
  %16 = getelementptr inbounds float, ptr %p0, i64 %15
  %17 = load <5 x float>, ptr %16, align 4, !tbaa !2249
  %18 = getelementptr inbounds float, ptr %T_reshape, i64 %15
  store <5 x float> %17, ptr %18, align 4, !tbaa !2251
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %14, %lftr.wideiv
  br i1 %exitcond.not, label %for_end_ax0.ax1.fused, label %for_body_ax0.ax1.fused, !prof !52

for_end_ax0.ax1.fused:                            ; preds = %for_body_ax0.ax1.fused, %parallel_closure_entry
  ret i32 0
}

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_reshape_add_add_compute_(ptr noalias align 64 %0, ptr noalias align 64 %1, ptr noalias align 64 %2, ptr noalias align 64 %3) unnamed_addr #2 {
entry:
  %4 = alloca %closure_loop_parallel_ax0.ax1.fused.5, align 8
  store ptr %0, ptr %4, align 8
  %5 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.5, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8
  %6 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.5, ptr %4, i64 0, i32 2
  store ptr %2, ptr %6, align 8
  %7 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.5, ptr %4, i64 0, i32 3
  store ptr %3, ptr %7, align 8
  %8 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %9 = call i32 %8(ptr nonnull @__tvm_parallel_lambda.349, ptr nonnull %4, i32 0)
  ret i32 %9
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda.349(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %T_add = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.5, ptr %1, i64 0, i32 1
  %p1 = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.5, ptr %1, i64 0, i32 2
  %p0 = load ptr, ptr %3, align 8
  %4 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.5, ptr %1, i64 0, i32 3
  %p2 = load ptr, ptr %4, align 8
  %5 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %5, align 4
  %6 = add nsw i32 %num_task, 4
  %7 = sdiv i32 %6, %num_task
  %8 = add nsw i32 %task_id, 1
  %9 = mul nsw i32 %7, %8
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 5)
  %11 = mul i32 %7, %task_id
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 5)
  %13 = icmp slt i32 %12, %10
  br i1 %13, label %for_begin_ax2.outer.preheader.preheader, label %for_end_ax0.ax1.fused, !prof !18

for_begin_ax2.outer.preheader.preheader:          ; preds = %parallel_closure_entry
  %14 = tail call i32 @llvm.smin.i32(i32 %11, i32 5)
  %smin = sext i32 %14 to i64
  %15 = add i32 %10, %14
  %16 = sub i32 %15, %12
  br label %for_begin_ax2.outer.preheader

for_begin_ax2.outer.preheader:                    ; preds = %for_begin_ax2.outer.preheader.preheader, %for_end_ax2.outer
  %indvars.iv5 = phi i64 [ %smin, %for_begin_ax2.outer.preheader.preheader ], [ %indvars.iv.next6, %for_end_ax2.outer ]
  %17 = mul nsw i64 %indvars.iv5, 768
  br label %for_body_ax2.outer

for_end_ax0.ax1.fused:                            ; preds = %for_end_ax2.outer, %parallel_closure_entry
  ret i32 0

for_body_ax2.outer:                               ; preds = %for_begin_ax2.outer.preheader, %for_body_ax2.outer
  %indvars.iv = phi i64 [ 0, %for_begin_ax2.outer.preheader ], [ %indvars.iv.next, %for_body_ax2.outer ]
  %18 = shl nuw nsw i64 %indvars.iv, 4
  %19 = add nsw i64 %18, %17
  %20 = getelementptr inbounds float, ptr %p2, i64 %19
  %21 = load <16 x float>, ptr %20, align 64, !tbaa !2253
  %22 = getelementptr inbounds float, ptr %p0, i64 %19
  %23 = load <16 x float>, ptr %22, align 64, !tbaa !2255
  %24 = getelementptr inbounds float, ptr %p1, i64 %18
  %25 = load <16 x float>, ptr %24, align 64, !tbaa !2257
  %26 = fadd <16 x float> %23, %25
  %27 = fadd <16 x float> %21, %26
  %28 = getelementptr inbounds float, ptr %T_add, i64 %19
  store <16 x float> %27, ptr %28, align 64, !tbaa !2259
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 48
  br i1 %exitcond.not, label %for_end_ax2.outer, label %for_body_ax2.outer, !prof !52

for_end_ax2.outer:                                ; preds = %for_body_ax2.outer
  %indvars.iv.next6 = add nsw i64 %indvars.iv5, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next6 to i32
  %exitcond7.not = icmp eq i32 %16, %lftr.wideiv
  br i1 %exitcond7.not, label %for_end_ax0.ax1.fused, label %for_begin_ax2.outer.preheader, !prof !52
}

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_reshape_add_divide_erf_add_multiply_multiply_reshape_compute_(ptr noalias align 64 %0, ptr noalias align 64 %1, ptr noalias align 64 %2) unnamed_addr #2 {
entry:
  %3 = alloca %closure_loop_parallel_ax0.6, align 8
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds %closure_loop_parallel_ax0.6, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds %closure_loop_parallel_ax0.6, ptr %3, i64 0, i32 2
  store ptr %2, ptr %5, align 8
  %6 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %7 = call i32 %6(ptr nonnull @__tvm_parallel_lambda.376, ptr nonnull %3, i32 0)
  ret i32 %7
}

define private i32 @__tvm_parallel_lambda.376(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #0 {
parallel_closure_entry:
  %T_reshape = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %closure_loop_parallel_ax0.6, ptr %1, i64 0, i32 1
  %p1 = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %closure_loop_parallel_ax0.6, ptr %1, i64 0, i32 2
  %p0 = load ptr, ptr %3, align 8
  %4 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %4, align 4
  %5 = add nsw i32 %num_task, 4
  %6 = sdiv i32 %5, %num_task
  %7 = add nsw i32 %task_id, 1
  %8 = mul nsw i32 %6, %7
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 5)
  %10 = mul i32 %6, %task_id
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 5)
  %12 = icmp slt i32 %11, %9
  br i1 %12, label %for_begin_ax1.outer.preheader.preheader, label %for_end_ax0, !prof !18

for_begin_ax1.outer.preheader.preheader:          ; preds = %parallel_closure_entry
  %13 = tail call i32 @llvm.smin.i32(i32 %10, i32 5)
  %smin = sext i32 %13 to i64
  %14 = add i32 %9, %13
  %15 = sub i32 %14, %11
  br label %for_begin_ax1.outer.preheader

for_begin_ax1.outer.preheader:                    ; preds = %for_begin_ax1.outer.preheader.preheader, %for_end_ax1.outer
  %indvars.iv10 = phi i64 [ %smin, %for_begin_ax1.outer.preheader.preheader ], [ %indvars.iv.next11, %for_end_ax1.outer ]
  %16 = mul nsw i64 %indvars.iv10, 3072
  br label %for_begin_ax1.inner.s.preheader

for_end_ax0:                                      ; preds = %for_end_ax1.outer, %parallel_closure_entry
  ret i32 0

for_begin_ax1.inner.s.preheader:                  ; preds = %for_begin_ax1.outer.preheader, %for_end_ax1.inner.s
  %indvars.iv6 = phi i64 [ 0, %for_begin_ax1.outer.preheader ], [ %indvars.iv.next7, %for_end_ax1.inner.s ]
  %17 = shl nsw i64 %indvars.iv6, 4
  %18 = add nsw i64 %17, %16
  br label %for_body_ax1.inner.s

for_end_ax1.outer:                                ; preds = %for_end_ax1.inner.s
  %indvars.iv.next11 = add nsw i64 %indvars.iv10, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next11 to i32
  %exitcond12.not = icmp eq i32 %15, %lftr.wideiv
  br i1 %exitcond12.not, label %for_end_ax0, label %for_begin_ax1.outer.preheader, !prof !52

for_body_ax1.inner.s:                             ; preds = %for_begin_ax1.inner.s.preheader, %for_body_ax1.inner.s
  %indvars.iv = phi i64 [ 0, %for_begin_ax1.inner.s.preheader ], [ %indvars.iv.next, %for_body_ax1.inner.s ]
  %19 = add nuw nsw i64 %indvars.iv, %17
  %20 = add nsw i64 %18, %indvars.iv
  %21 = getelementptr inbounds float, ptr %p0, i64 %20
  %22 = load float, ptr %21, align 4, !tbaa !2261
  %23 = getelementptr inbounds float, ptr %p1, i64 %19
  %24 = load float, ptr %23, align 4, !tbaa !2263
  %25 = fadd float %22, %24
  %26 = fmul float %25, 0x3FE6A09E60000000
  %27 = tail call float @erff(float %26)
  %28 = fadd float %27, 1.000000e+00
  %29 = load float, ptr %21, align 4, !tbaa !2261
  %30 = load float, ptr %23, align 4, !tbaa !2263
  %31 = fadd float %29, %30
  %32 = fmul float %28, %31
  %33 = fmul float %32, 5.000000e-01
  %34 = getelementptr inbounds float, ptr %T_reshape, i64 %20
  store float %33, ptr %34, align 4, !tbaa !2265
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for_end_ax1.inner.s, label %for_body_ax1.inner.s, !prof !52

for_end_ax1.inner.s:                              ; preds = %for_body_ax1.inner.s
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond9.not = icmp eq i64 %indvars.iv.next7, 192
  br i1 %exitcond9.not, label %for_end_ax1.outer, label %for_begin_ax1.inner.s.preheader, !prof !52
}

declare float @erff(float) local_unnamed_addr

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_reshape_add_reshape_transpose_reshape_compute_(ptr noalias align 64 %0, ptr noalias align 64 %1, ptr noalias align 64 %2) unnamed_addr #2 {
entry:
  %3 = alloca %closure_loop_parallel_ax0.ax1.fused.7, align 8
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.7, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.7, ptr %3, i64 0, i32 2
  store ptr %2, ptr %5, align 8
  %6 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %7 = call i32 %6(ptr nonnull @__tvm_parallel_lambda.404, ptr nonnull %3, i32 0)
  ret i32 %7
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda.404(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %T_reshape = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.7, ptr %1, i64 0, i32 1
  %p1 = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.7, ptr %1, i64 0, i32 2
  %p0 = load ptr, ptr %3, align 8
  %4 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %4, align 4
  %5 = add nsw i32 %num_task, 59
  %6 = sdiv i32 %5, %num_task
  %7 = add nsw i32 %task_id, 1
  %8 = mul nsw i32 %6, %7
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 60)
  %10 = mul i32 %6, %task_id
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 60)
  %12 = icmp slt i32 %11, %9
  br i1 %12, label %for_begin_ax2.outer.preheader.preheader, label %for_end_ax0.ax1.fused, !prof !18

for_begin_ax2.outer.preheader.preheader:          ; preds = %parallel_closure_entry
  %13 = tail call i32 @llvm.smin.i32(i32 %10, i32 60)
  %smin = sext i32 %13 to i64
  %14 = add i32 %9, %13
  %15 = sub i32 %14, %11
  br label %for_begin_ax2.outer.preheader

for_begin_ax2.outer.preheader:                    ; preds = %for_begin_ax2.outer.preheader.preheader, %for_begin_ax2.outer.preheader
  %indvars.iv = phi i64 [ %smin, %for_begin_ax2.outer.preheader.preheader ], [ %indvars.iv.next, %for_begin_ax2.outer.preheader ]
  %ax0.ax1.fused2 = phi i32 [ %11, %for_begin_ax2.outer.preheader.preheader ], [ %64, %for_begin_ax2.outer.preheader ]
  %16 = trunc i64 %indvars.iv to i32
  %.frozen = freeze i32 %16
  %17 = sdiv i32 %.frozen, 5
  %cse_var_1 = shl nsw i32 %17, 6
  %18 = mul i32 %17, 5
  %.decomposed = sub i32 %.frozen, %18
  %19 = mul nsw i32 %.decomposed, 768
  %20 = shl nsw i32 %ax0.ax1.fused2, 6
  %21 = sext i32 %20 to i64
  %22 = sext i32 %cse_var_1 to i64
  %23 = add i32 %cse_var_1, %19
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds float, ptr %p0, i64 %24
  %26 = load <16 x float>, ptr %25, align 64, !tbaa !2267
  %27 = getelementptr inbounds float, ptr %p1, i64 %22
  %28 = load <16 x float>, ptr %27, align 64, !tbaa !2269
  %29 = fadd <16 x float> %26, %28
  %30 = getelementptr inbounds float, ptr %T_reshape, i64 %21
  store <16 x float> %29, ptr %30, align 64, !tbaa !2271
  %31 = or i32 %cse_var_1, 16
  %32 = add i32 %31, %19
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, ptr %p0, i64 %33
  %35 = load <16 x float>, ptr %34, align 64, !tbaa !2267
  %36 = or i64 %22, 16
  %37 = getelementptr inbounds float, ptr %p1, i64 %36
  %38 = load <16 x float>, ptr %37, align 64, !tbaa !2269
  %39 = fadd <16 x float> %35, %38
  %40 = or i64 %21, 16
  %41 = getelementptr inbounds float, ptr %T_reshape, i64 %40
  store <16 x float> %39, ptr %41, align 64, !tbaa !2271
  %42 = or i32 %cse_var_1, 32
  %43 = add i32 %42, %19
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, ptr %p0, i64 %44
  %46 = load <16 x float>, ptr %45, align 64, !tbaa !2267
  %47 = or i64 %22, 32
  %48 = getelementptr inbounds float, ptr %p1, i64 %47
  %49 = load <16 x float>, ptr %48, align 64, !tbaa !2269
  %50 = fadd <16 x float> %46, %49
  %51 = or i64 %21, 32
  %52 = getelementptr inbounds float, ptr %T_reshape, i64 %51
  store <16 x float> %50, ptr %52, align 64, !tbaa !2271
  %53 = or i32 %cse_var_1, 48
  %54 = add i32 %53, %19
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, ptr %p0, i64 %55
  %57 = load <16 x float>, ptr %56, align 64, !tbaa !2267
  %58 = or i64 %22, 48
  %59 = getelementptr inbounds float, ptr %p1, i64 %58
  %60 = load <16 x float>, ptr %59, align 64, !tbaa !2269
  %61 = fadd <16 x float> %57, %60
  %62 = or i64 %21, 48
  %63 = getelementptr inbounds float, ptr %T_reshape, i64 %62
  store <16 x float> %61, ptr %63, align 64, !tbaa !2271
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %64 = add nsw i32 %ax0.ax1.fused2, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %15, %lftr.wideiv
  br i1 %exitcond.not, label %for_end_ax0.ax1.fused, label %for_begin_ax2.outer.preheader, !prof !52

for_end_ax0.ax1.fused:                            ; preds = %for_begin_ax2.outer.preheader, %parallel_closure_entry
  ret i32 0
}

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_compute_(ptr noalias align 64 %0, ptr noalias align 64 %1, ptr noalias align 64 %2) unnamed_addr #2 {
entry:
  %3 = alloca %closure_loop_parallel_ax0.ax1.fused.8, align 8
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.8, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.8, ptr %3, i64 0, i32 2
  store ptr %2, ptr %5, align 8
  %6 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %7 = call i32 %6(ptr nonnull @__tvm_parallel_lambda.432, ptr nonnull %3, i32 0)
  ret i32 %7
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda.432(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %T_transpose = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.8, ptr %1, i64 0, i32 1
  %p1 = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.8, ptr %1, i64 0, i32 2
  %p0 = load ptr, ptr %3, align 8
  %4 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %4, align 4
  %5 = add nsw i32 %num_task, 59
  %6 = sdiv i32 %5, %num_task
  %7 = add nsw i32 %task_id, 1
  %8 = mul nsw i32 %6, %7
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 60)
  %10 = mul i32 %6, %task_id
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 60)
  %12 = icmp slt i32 %11, %9
  br i1 %12, label %for_begin_ax2.outer.preheader.preheader, label %for_end_ax0.ax1.fused, !prof !18

for_begin_ax2.outer.preheader.preheader:          ; preds = %parallel_closure_entry
  %13 = tail call i32 @llvm.smin.i32(i32 %10, i32 60)
  %smin = sext i32 %13 to i64
  %14 = add i32 %9, %13
  %15 = sub i32 %14, %11
  br label %for_begin_ax2.outer.preheader

for_begin_ax2.outer.preheader:                    ; preds = %for_begin_ax2.outer.preheader.preheader, %for_begin_ax2.outer.preheader
  %indvars.iv = phi i64 [ %smin, %for_begin_ax2.outer.preheader.preheader ], [ %indvars.iv.next, %for_begin_ax2.outer.preheader ]
  %ax0.ax1.fused2 = phi i32 [ %11, %for_begin_ax2.outer.preheader.preheader ], [ %64, %for_begin_ax2.outer.preheader ]
  %16 = trunc i64 %indvars.iv to i32
  %.frozen = freeze i32 %16
  %17 = sdiv i32 %.frozen, 5
  %cse_var_1 = shl nsw i32 %17, 6
  %18 = mul i32 %17, 5
  %.decomposed = sub i32 %.frozen, %18
  %19 = mul nsw i32 %.decomposed, 768
  %20 = shl nsw i32 %ax0.ax1.fused2, 6
  %21 = sext i32 %20 to i64
  %22 = sext i32 %cse_var_1 to i64
  %23 = add i32 %cse_var_1, %19
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds float, ptr %p0, i64 %24
  %26 = load <16 x float>, ptr %25, align 64, !tbaa !2273
  %27 = getelementptr inbounds float, ptr %p1, i64 %22
  %28 = load <16 x float>, ptr %27, align 64, !tbaa !2275
  %29 = fadd <16 x float> %26, %28
  %30 = getelementptr inbounds float, ptr %T_transpose, i64 %21
  store <16 x float> %29, ptr %30, align 64, !tbaa !2277
  %31 = or i32 %cse_var_1, 16
  %32 = add i32 %31, %19
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, ptr %p0, i64 %33
  %35 = load <16 x float>, ptr %34, align 64, !tbaa !2273
  %36 = or i64 %22, 16
  %37 = getelementptr inbounds float, ptr %p1, i64 %36
  %38 = load <16 x float>, ptr %37, align 64, !tbaa !2275
  %39 = fadd <16 x float> %35, %38
  %40 = or i64 %21, 16
  %41 = getelementptr inbounds float, ptr %T_transpose, i64 %40
  store <16 x float> %39, ptr %41, align 64, !tbaa !2277
  %42 = or i32 %cse_var_1, 32
  %43 = add i32 %42, %19
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, ptr %p0, i64 %44
  %46 = load <16 x float>, ptr %45, align 64, !tbaa !2273
  %47 = or i64 %22, 32
  %48 = getelementptr inbounds float, ptr %p1, i64 %47
  %49 = load <16 x float>, ptr %48, align 64, !tbaa !2275
  %50 = fadd <16 x float> %46, %49
  %51 = or i64 %21, 32
  %52 = getelementptr inbounds float, ptr %T_transpose, i64 %51
  store <16 x float> %50, ptr %52, align 64, !tbaa !2277
  %53 = or i32 %cse_var_1, 48
  %54 = add i32 %53, %19
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, ptr %p0, i64 %55
  %57 = load <16 x float>, ptr %56, align 64, !tbaa !2273
  %58 = or i64 %22, 48
  %59 = getelementptr inbounds float, ptr %p1, i64 %58
  %60 = load <16 x float>, ptr %59, align 64, !tbaa !2275
  %61 = fadd <16 x float> %57, %60
  %62 = or i64 %21, 48
  %63 = getelementptr inbounds float, ptr %T_transpose, i64 %62
  store <16 x float> %61, ptr %63, align 64, !tbaa !2277
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %64 = add nsw i32 %ax0.ax1.fused2, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %15, %lftr.wideiv
  br i1 %exitcond.not, label %for_end_ax0.ax1.fused, label %for_begin_ax2.outer.preheader, !prof !52

for_end_ax0.ax1.fused:                            ; preds = %for_begin_ax2.outer.preheader, %parallel_closure_entry
  ret i32 0
}

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_reshape_add_reshape_transpose_reshape_transpose_1_compute_(ptr noalias align 64 %0, ptr noalias align 64 %1, ptr noalias align 64 %2) unnamed_addr #2 {
entry:
  %3 = alloca %closure_loop_parallel_ax0.ax1.fused.9, align 8
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.9, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.9, ptr %3, i64 0, i32 2
  store ptr %2, ptr %5, align 8
  %6 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %7 = call i32 %6(ptr nonnull @__tvm_parallel_lambda.460, ptr nonnull %3, i32 0)
  ret i32 %7
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda.460(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %T_transpose = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.9, ptr %1, i64 0, i32 1
  %p1 = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.9, ptr %1, i64 0, i32 2
  %p0 = load ptr, ptr %3, align 8
  %4 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %4, align 4
  %5 = add nsw i32 %num_task, 767
  %6 = sdiv i32 %5, %num_task
  %7 = add nsw i32 %task_id, 1
  %8 = mul nsw i32 %6, %7
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 768)
  %10 = mul i32 %6, %task_id
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 768)
  %12 = icmp slt i32 %11, %9
  br i1 %12, label %for_body_ax0.ax1.fused.preheader, label %for_end_ax0.ax1.fused, !prof !18

for_body_ax0.ax1.fused.preheader:                 ; preds = %parallel_closure_entry
  %13 = tail call i32 @llvm.smin.i32(i32 %10, i32 768)
  %smin = sext i32 %13 to i64
  %14 = add i32 %9, %13
  %15 = sub i32 %14, %11
  br label %for_body_ax0.ax1.fused

for_body_ax0.ax1.fused:                           ; preds = %for_body_ax0.ax1.fused.preheader, %for_body_ax0.ax1.fused
  %indvars.iv = phi i64 [ %smin, %for_body_ax0.ax1.fused.preheader ], [ %indvars.iv.next, %for_body_ax0.ax1.fused ]
  %16 = getelementptr inbounds float, ptr %p0, i64 %indvars.iv
  %17 = load float, ptr %16, align 4, !tbaa !2279
  %18 = add nsw i64 %indvars.iv, 768
  %19 = getelementptr inbounds float, ptr %p0, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !2279
  %21 = add nsw i64 %indvars.iv, 1536
  %22 = getelementptr inbounds float, ptr %p0, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !2279
  %24 = add nsw i64 %indvars.iv, 2304
  %25 = getelementptr inbounds float, ptr %p0, i64 %24
  %26 = load float, ptr %25, align 4, !tbaa !2279
  %27 = add nsw i64 %indvars.iv, 3072
  %28 = getelementptr inbounds float, ptr %p0, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !2279
  %30 = insertelement <5 x float> undef, float %17, i64 0
  %31 = insertelement <5 x float> %30, float %20, i64 1
  %32 = insertelement <5 x float> %31, float %23, i64 2
  %33 = insertelement <5 x float> %32, float %26, i64 3
  %34 = insertelement <5 x float> %33, float %29, i64 4
  %35 = getelementptr inbounds float, ptr %p1, i64 %indvars.iv
  %36 = load float, ptr %35, align 4, !tbaa !2281
  %37 = insertelement <5 x float> undef, float %36, i64 0
  %38 = shufflevector <5 x float> %37, <5 x float> undef, <5 x i32> zeroinitializer
  %39 = fadd <5 x float> %34, %38
  %40 = mul nsw i64 %indvars.iv, 5
  %41 = getelementptr inbounds float, ptr %T_transpose, i64 %40
  store <5 x float> %39, ptr %41, align 4, !tbaa !2283
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %15, %lftr.wideiv
  br i1 %exitcond.not, label %for_end_ax0.ax1.fused, label %for_body_ax0.ax1.fused, !prof !52

for_end_ax0.ax1.fused:                            ; preds = %for_body_ax0.ax1.fused, %parallel_closure_entry
  ret i32 0
}

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_reshape_divide_add_compute_(ptr noalias align 64 %0, ptr noalias align 64 %1, ptr noalias align 64 %2) unnamed_addr #2 {
entry:
  %3 = alloca %closure_loop_parallel_ax0.ax1.fused.10, align 8
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.10, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.10, ptr %3, i64 0, i32 2
  store ptr %2, ptr %5, align 8
  %6 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %7 = call i32 %6(ptr nonnull @__tvm_parallel_lambda.493, ptr nonnull %3, i32 0)
  ret i32 %7
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda.493(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %T_add = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.10, ptr %1, i64 0, i32 1
  %p0 = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %3, align 4
  %4 = add nsw i32 %num_task, 11
  %5 = sdiv i32 %4, %num_task
  %6 = add nsw i32 %task_id, 1
  %7 = mul nsw i32 %5, %6
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 12)
  %9 = mul i32 %5, %task_id
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 12)
  %11 = icmp slt i32 %10, %8
  br i1 %11, label %for_begin_ax2.preheader.lr.ph, label %for_end_ax0.ax1.fused, !prof !18

for_begin_ax2.preheader.lr.ph:                    ; preds = %parallel_closure_entry
  %12 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.10, ptr %1, i64 0, i32 2
  %p1 = load ptr, ptr %12, align 8
  %13 = load <5 x float>, ptr %p1, align 64, !tbaa !2285
  %14 = tail call i32 @llvm.smin.i32(i32 %9, i32 12)
  %smin = sext i32 %14 to i64
  %15 = add i32 %8, %14
  %16 = sub i32 %15, %10
  br label %for_begin_ax2.preheader

for_begin_ax2.preheader:                          ; preds = %for_begin_ax2.preheader.lr.ph, %for_begin_ax2.preheader
  %indvars.iv = phi i64 [ %smin, %for_begin_ax2.preheader.lr.ph ], [ %indvars.iv.next, %for_begin_ax2.preheader ]
  %17 = mul nsw i64 %indvars.iv, 25
  %18 = getelementptr inbounds float, ptr %p0, i64 %17
  %19 = load <5 x float>, ptr %18, align 4, !tbaa !2293
  %20 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %19, <5 x float> <float 1.250000e-01, float 1.250000e-01, float 1.250000e-01, float 1.250000e-01, float 1.250000e-01>, <5 x float> %13)
  %21 = getelementptr inbounds float, ptr %T_add, i64 %17
  store <5 x float> %20, ptr %21, align 4, !tbaa !2295
  %22 = add nsw i64 %17, 5
  %23 = getelementptr inbounds float, ptr %p0, i64 %22
  %24 = load <5 x float>, ptr %23, align 4, !tbaa !2293
  %25 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %24, <5 x float> <float 1.250000e-01, float 1.250000e-01, float 1.250000e-01, float 1.250000e-01, float 1.250000e-01>, <5 x float> %13)
  %26 = getelementptr inbounds float, ptr %T_add, i64 %22
  store <5 x float> %25, ptr %26, align 4, !tbaa !2295
  %27 = add nsw i64 %17, 10
  %28 = getelementptr inbounds float, ptr %p0, i64 %27
  %29 = load <5 x float>, ptr %28, align 4, !tbaa !2293
  %30 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %29, <5 x float> <float 1.250000e-01, float 1.250000e-01, float 1.250000e-01, float 1.250000e-01, float 1.250000e-01>, <5 x float> %13)
  %31 = getelementptr inbounds float, ptr %T_add, i64 %27
  store <5 x float> %30, ptr %31, align 4, !tbaa !2295
  %32 = add nsw i64 %17, 15
  %33 = getelementptr inbounds float, ptr %p0, i64 %32
  %34 = load <5 x float>, ptr %33, align 4, !tbaa !2293
  %35 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %34, <5 x float> <float 1.250000e-01, float 1.250000e-01, float 1.250000e-01, float 1.250000e-01, float 1.250000e-01>, <5 x float> %13)
  %36 = getelementptr inbounds float, ptr %T_add, i64 %32
  store <5 x float> %35, ptr %36, align 4, !tbaa !2295
  %37 = add nsw i64 %17, 20
  %38 = getelementptr inbounds float, ptr %p0, i64 %37
  %39 = load <5 x float>, ptr %38, align 4, !tbaa !2293
  %40 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %39, <5 x float> <float 1.250000e-01, float 1.250000e-01, float 1.250000e-01, float 1.250000e-01, float 1.250000e-01>, <5 x float> %13)
  %41 = getelementptr inbounds float, ptr %T_add, i64 %37
  store <5 x float> %40, ptr %41, align 4, !tbaa !2295
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %16, %lftr.wideiv
  br i1 %exitcond.not, label %for_end_ax0.ax1.fused, label %for_begin_ax2.preheader, !prof !52

for_end_ax0.ax1.fused:                            ; preds = %for_begin_ax2.preheader, %parallel_closure_entry
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <5 x float> @llvm.fmuladd.v5f32(<5 x float>, <5 x float>, <5 x float>) #4

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_reshape_transpose_reshape_compute_(ptr noalias align 64 %0, ptr noalias align 64 %1) unnamed_addr #2 {
entry:
  %2 = alloca %closure_loop_parallel_ax0.11, align 8
  store ptr %0, ptr %2, align 8
  %3 = getelementptr inbounds %closure_loop_parallel_ax0.11, ptr %2, i64 0, i32 1
  store ptr %1, ptr %3, align 8
  %4 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %5 = call i32 %4(ptr nonnull @__tvm_parallel_lambda.513, ptr nonnull %2, i32 0)
  ret i32 %5
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda.513(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %T_reshape = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %closure_loop_parallel_ax0.11, ptr %1, i64 0, i32 1
  %p0 = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %3, align 4
  %4 = add nsw i32 %num_task, 4
  %5 = sdiv i32 %4, %num_task
  %6 = add nsw i32 %task_id, 1
  %7 = mul nsw i32 %5, %6
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 5)
  %9 = mul i32 %5, %task_id
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 5)
  %11 = icmp slt i32 %10, %8
  br i1 %11, label %for_begin_ax1.outer.preheader.preheader, label %for_end_ax0, !prof !18

for_begin_ax1.outer.preheader.preheader:          ; preds = %parallel_closure_entry
  %12 = tail call i32 @llvm.smin.i32(i32 %9, i32 5)
  %smin = sext i32 %12 to i64
  %13 = add i32 %8, %12
  %14 = sub i32 %13, %10
  br label %for_begin_ax1.outer.preheader

for_begin_ax1.outer.preheader:                    ; preds = %for_begin_ax1.outer.preheader.preheader, %for_end_ax1.outer
  %indvars.iv3 = phi i64 [ %smin, %for_begin_ax1.outer.preheader.preheader ], [ %indvars.iv.next4, %for_end_ax1.outer ]
  %ax02 = phi i32 [ %10, %for_begin_ax1.outer.preheader.preheader ], [ %30, %for_end_ax1.outer ]
  %15 = shl nsw i32 %ax02, 6
  %16 = mul nsw i64 %indvars.iv3, 768
  br label %for_body_ax1.outer

for_end_ax0:                                      ; preds = %for_end_ax1.outer, %parallel_closure_entry
  ret i32 0

for_body_ax1.outer:                               ; preds = %for_begin_ax1.outer.preheader, %for_body_ax1.outer
  %indvars.iv = phi i64 [ 0, %for_begin_ax1.outer.preheader ], [ %indvars.iv.next, %for_body_ax1.outer ]
  %17 = shl nuw nsw i64 %indvars.iv, 4
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, 48
  %20 = trunc i64 %indvars.iv to i32
  %21 = lshr i32 %20, 2
  %22 = mul nuw nsw i32 %21, 320
  %23 = add nsw i32 %22, %15
  %24 = or i32 %23, %19
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, ptr %p0, i64 %25
  %27 = load <16 x float>, ptr %26, align 64, !tbaa !2297
  %28 = add nsw i64 %17, %16
  %29 = getelementptr inbounds float, ptr %T_reshape, i64 %28
  store <16 x float> %27, ptr %29, align 64, !tbaa !2299
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 48
  br i1 %exitcond.not, label %for_end_ax1.outer, label %for_body_ax1.outer, !prof !52

for_end_ax1.outer:                                ; preds = %for_body_ax1.outer
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1
  %30 = add nsw i32 %ax02, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next4 to i32
  %exitcond5.not = icmp eq i32 %14, %lftr.wideiv
  br i1 %exitcond5.not, label %for_end_ax0, label %for_begin_ax1.outer.preheader, !prof !52
}

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_subtract_add_rsqrt_multiply_multiply_add_compute_(ptr noalias align 64 %0, ptr noalias align 64 %1, ptr noalias align 64 %2, ptr noalias align 64 %3, ptr noalias align 64 %4, ptr noalias align 64 %5) unnamed_addr #2 {
entry:
  %6 = alloca %closure_loop_parallel_ax0.ax1.fused.12, align 8
  store ptr %0, ptr %6, align 8
  %7 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.12, ptr %6, i64 0, i32 1
  store ptr %1, ptr %7, align 8
  %8 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.12, ptr %6, i64 0, i32 2
  store ptr %2, ptr %8, align 8
  %9 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.12, ptr %6, i64 0, i32 3
  store ptr %3, ptr %9, align 8
  %10 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.12, ptr %6, i64 0, i32 4
  store ptr %4, ptr %10, align 8
  %11 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.12, ptr %6, i64 0, i32 5
  store ptr %5, ptr %11, align 8
  %12 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %13 = call i32 %12(ptr nonnull @__tvm_parallel_lambda.570, ptr nonnull %6, i32 0)
  ret i32 %13
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda.570(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %T_add = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.12, ptr %1, i64 0, i32 1
  %p0 = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.12, ptr %1, i64 0, i32 2
  %p1 = load ptr, ptr %3, align 8
  %4 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.12, ptr %1, i64 0, i32 3
  %p2 = load ptr, ptr %4, align 8
  %5 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.12, ptr %1, i64 0, i32 4
  %p3 = load ptr, ptr %5, align 8
  %6 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.12, ptr %1, i64 0, i32 5
  %p4 = load ptr, ptr %6, align 8
  %7 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %7, align 4
  %8 = add nsw i32 %num_task, 4
  %9 = sdiv i32 %8, %num_task
  %10 = add nsw i32 %task_id, 1
  %11 = mul nsw i32 %9, %10
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 5)
  %13 = mul i32 %9, %task_id
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 5)
  %15 = icmp slt i32 %14, %12
  br i1 %15, label %for_begin_ax2.outer.preheader.preheader, label %for_end_ax0.ax1.fused, !prof !18

for_begin_ax2.outer.preheader.preheader:          ; preds = %parallel_closure_entry
  %16 = tail call i32 @llvm.smin.i32(i32 %13, i32 5)
  %smin = sext i32 %16 to i64
  %17 = add i32 %12, %16
  %18 = sub i32 %17, %14
  br label %for_begin_ax2.outer.preheader

for_begin_ax2.outer.preheader:                    ; preds = %for_begin_ax2.outer.preheader.preheader, %for_end_ax2.outer
  %indvars.iv5 = phi i64 [ %smin, %for_begin_ax2.outer.preheader.preheader ], [ %indvars.iv.next6, %for_end_ax2.outer ]
  %19 = mul nsw i64 %indvars.iv5, 768
  %20 = getelementptr inbounds float, ptr %p2, i64 %indvars.iv5
  %21 = load float, ptr %20, align 4, !tbaa !2301
  %22 = fadd float %21, 0x3D71979980000000
  %23 = tail call float @llvm.sqrt.f32(float %22)
  %24 = fdiv float 1.000000e+00, %23
  %25 = insertelement <16 x float> undef, float %24, i64 0
  %26 = shufflevector <16 x float> %25, <16 x float> undef, <16 x i32> zeroinitializer
  %27 = getelementptr inbounds float, ptr %p1, i64 %indvars.iv5
  %28 = load float, ptr %27, align 4, !tbaa !2303
  %29 = insertelement <16 x float> undef, float %28, i64 0
  %30 = shufflevector <16 x float> %29, <16 x float> undef, <16 x i32> zeroinitializer
  br label %for_body_ax2.outer

for_end_ax0.ax1.fused:                            ; preds = %for_end_ax2.outer, %parallel_closure_entry
  ret i32 0

for_body_ax2.outer:                               ; preds = %for_begin_ax2.outer.preheader, %for_body_ax2.outer
  %indvars.iv = phi i64 [ 0, %for_begin_ax2.outer.preheader ], [ %indvars.iv.next, %for_body_ax2.outer ]
  %31 = shl nuw nsw i64 %indvars.iv, 4
  %32 = add nsw i64 %31, %19
  %33 = getelementptr inbounds float, ptr %p0, i64 %32
  %34 = load <16 x float>, ptr %33, align 64, !tbaa !2305
  %35 = fsub <16 x float> %34, %30
  %36 = fmul <16 x float> %35, %26
  %37 = getelementptr inbounds float, ptr %p3, i64 %31
  %38 = load <16 x float>, ptr %37, align 64, !tbaa !2307
  %39 = getelementptr inbounds float, ptr %p4, i64 %31
  %40 = load <16 x float>, ptr %39, align 64, !tbaa !2309
  %41 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %36, <16 x float> %38, <16 x float> %40)
  %42 = getelementptr inbounds float, ptr %T_add, i64 %32
  store <16 x float> %41, ptr %42, align 64, !tbaa !2311
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 48
  br i1 %exitcond.not, label %for_end_ax2.outer, label %for_body_ax2.outer, !prof !52

for_end_ax2.outer:                                ; preds = %for_body_ax2.outer
  %indvars.iv.next6 = add nsw i64 %indvars.iv5, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next6 to i32
  %exitcond7.not = icmp eq i32 %18, %lftr.wideiv
  br i1 %exitcond7.not, label %for_end_ax0.ax1.fused, label %for_begin_ax2.outer.preheader, !prof !52
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn memory(argmem: readwrite)
define internal fastcc void @tvmgen_default_fused_take_compute_(ptr noalias nocapture writeonly align 64 %0, ptr noalias nocapture readonly align 64 %1) unnamed_addr #5 {
entry:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(3072) %0, ptr noundef nonnull align 64 dereferenceable(3072) %1, i64 3072, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_variance_compute_(ptr noalias align 64 %0, ptr noalias align 64 %1, ptr noalias align 64 %2) unnamed_addr #2 {
entry:
  %3 = alloca %closure_loop_parallel_ax0.ax1.fused.14, align 8
  %4 = alloca %closure_loop_parallel_ax0.ax1.fused.ax2.fused.13, align 8
  %T_multiply_red3 = alloca [5 x float], align 4
  store ptr %T_multiply_red3, ptr %4, align 8
  %5 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.ax2.fused.13, ptr %4, i64 0, i32 1
  store ptr %0, ptr %5, align 8
  %6 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.ax2.fused.13, ptr %4, i64 0, i32 2
  store ptr %1, ptr %6, align 8
  %7 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %8 = call i32 %7(ptr nonnull @__tvm_parallel_lambda.620, ptr nonnull %4, i32 0)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %call_end, label %common.ret, !prof !18

common.ret:                                       ; preds = %call_end, %entry
  %common.ret.op = phi i32 [ %8, %entry ], [ %12, %call_end ]
  ret i32 %common.ret.op

call_end:                                         ; preds = %entry
  store ptr %2, ptr %3, align 8
  %10 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.14, ptr %3, i64 0, i32 1
  store ptr %T_multiply_red3, ptr %10, align 8
  %11 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !tbaa !19
  %12 = call i32 %11(ptr nonnull @__tvm_parallel_lambda.621, ptr nonnull %3, i32 0)
  br label %common.ret
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda.620(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %T_multiply_red = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.ax2.fused.13, ptr %1, i64 0, i32 1
  %p0 = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.ax2.fused.13, ptr %1, i64 0, i32 2
  %p1 = load ptr, ptr %3, align 8
  %4 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %4, align 4
  %5 = add nsw i32 %num_task, 4
  %6 = sdiv i32 %5, %num_task
  %7 = add nsw i32 %task_id, 1
  %8 = mul nsw i32 %6, %7
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 5)
  %10 = mul i32 %6, %task_id
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 5)
  %12 = icmp slt i32 %11, %9
  br i1 %12, label %for_body_ax0.ax1.fused.ax2.fused.preheader, label %for_end_ax0.ax1.fused.ax2.fused, !prof !18

for_body_ax0.ax1.fused.ax2.fused.preheader:       ; preds = %parallel_closure_entry
  %13 = tail call i32 @llvm.smin.i32(i32 %10, i32 5)
  %smin = sext i32 %13 to i64
  %14 = add i32 %9, %13
  %15 = sub i32 %14, %11
  br label %for_body_ax0.ax1.fused.ax2.fused

for_body_ax0.ax1.fused.ax2.fused:                 ; preds = %for_body_ax0.ax1.fused.ax2.fused.preheader, %for_end_k2
  %indvars.iv4 = phi i64 [ %smin, %for_body_ax0.ax1.fused.ax2.fused.preheader ], [ %indvars.iv.next5, %for_end_k2 ]
  %16 = getelementptr inbounds float, ptr %T_multiply_red, i64 %indvars.iv4
  %17 = mul nsw i64 %indvars.iv4, 768
  %18 = getelementptr inbounds float, ptr %p1, i64 %indvars.iv4
  %19 = load float, ptr %18, align 4, !tbaa !2313
  br label %for_body_k2

for_end_ax0.ax1.fused.ax2.fused:                  ; preds = %for_end_k2, %parallel_closure_entry
  ret i32 0

for_body_k2:                                      ; preds = %for_body_ax0.ax1.fused.ax2.fused, %for_body_k2
  %indvars.iv = phi i64 [ 0, %for_body_ax0.ax1.fused.ax2.fused ], [ %indvars.iv.next, %for_body_k2 ]
  %20 = phi float [ 0.000000e+00, %for_body_ax0.ax1.fused.ax2.fused ], [ %25, %for_body_k2 ]
  %21 = add nsw i64 %indvars.iv, %17
  %22 = getelementptr inbounds float, ptr %p0, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !2315
  %24 = fsub float %23, %19
  %25 = tail call float @llvm.fmuladd.f32(float %24, float %24, float %20)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 768
  br i1 %exitcond.not, label %for_end_k2, label %for_body_k2, !prof !52

for_end_k2:                                       ; preds = %for_body_k2
  store float %25, ptr %16, align 4, !tbaa !2317
  %indvars.iv.next5 = add nsw i64 %indvars.iv4, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next5 to i32
  %exitcond6.not = icmp eq i32 %15, %lftr.wideiv
  br i1 %exitcond6.not, label %for_end_ax0.ax1.fused.ax2.fused, label %for_body_ax0.ax1.fused.ax2.fused, !prof !52
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda.621(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #3 {
parallel_closure_entry:
  %T_divide = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.14, ptr %1, i64 0, i32 1
  %T_multiply_red = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds %4, ptr %0, i64 0, i32 1
  %num_task = load i32, ptr %3, align 4
  %4 = add nsw i32 %num_task, 4
  %5 = sdiv i32 %4, %num_task
  %6 = add nsw i32 %task_id, 1
  %7 = mul nsw i32 %5, %6
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 5)
  %9 = mul i32 %5, %task_id
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 5)
  %11 = icmp slt i32 %10, %8
  br i1 %11, label %for_body_ax0.ax1.fused.preheader, label %for_end_ax0.ax1.fused, !prof !18

for_body_ax0.ax1.fused.preheader:                 ; preds = %parallel_closure_entry
  %12 = tail call i32 @llvm.smin.i32(i32 %9, i32 5)
  %smin = sext i32 %12 to i64
  %13 = add i32 %8, %12
  %14 = sub i32 %13, %10
  br label %for_body_ax0.ax1.fused

for_body_ax0.ax1.fused:                           ; preds = %for_body_ax0.ax1.fused.preheader, %for_body_ax0.ax1.fused
  %indvars.iv = phi i64 [ %smin, %for_body_ax0.ax1.fused.preheader ], [ %indvars.iv.next, %for_body_ax0.ax1.fused ]
  %15 = getelementptr inbounds float, ptr %T_multiply_red, i64 %indvars.iv
  %16 = load float, ptr %15, align 4, !tbaa !2317
  %17 = fmul float %16, 0x3F55555560000000
  %18 = getelementptr inbounds float, ptr %T_divide, i64 %indvars.iv
  store float %17, ptr %18, align 4, !tbaa !2319
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %14, %lftr.wideiv
  br i1 %exitcond.not, label %for_end_ax0.ax1.fused, label %for_body_ax0.ax1.fused, !prof !52

for_end_ax0.ax1.fused:                            ; preds = %for_body_ax0.ax1.fused, %parallel_closure_entry
  ret i32 0
}

; Function Attrs: nofree nosync nounwind memory(none)
define weak dso_local i16 @__truncsfhf2(float %a0) local_unnamed_addr #6 section ".text.tvm.fp16.conv" {
b0:
  %v0 = bitcast float %a0 to i32
  %v1 = and i32 %v0, 2147483647
  %v2 = add nsw i32 %v1, -947912704
  %v3 = add nsw i32 %v1, -1199570944
  %v4 = icmp ult i32 %v2, %v3
  br i1 %v4, label %b1, label %b5

b1:                                               ; preds = %b0
  %v5 = lshr i32 %v0, 13
  %v6 = and i32 %v5, 65535
  %v7 = add nuw nsw i32 %v6, -114688
  %v8 = and i32 %v0, 8191
  %v9 = icmp ugt i32 %v8, 4096
  br i1 %v9, label %b2, label %b3

b2:                                               ; preds = %b1
  %v10 = add nuw nsw i32 %v6, -114687
  br label %b13

b3:                                               ; preds = %b1
  %v11 = icmp eq i32 %v8, 4096
  br i1 %v11, label %b4, label %b13

b4:                                               ; preds = %b3
  %v12 = and i32 %v7, 65535
  %v13 = and i32 %v5, 1
  %v14 = add nuw nsw i32 %v12, %v13
  br label %b13

b5:                                               ; preds = %b0
  %v15 = icmp ugt i32 %v1, 2139095040
  br i1 %v15, label %b6, label %b7

b6:                                               ; preds = %b5
  %v16 = lshr i32 %v0, 13
  %v17 = and i32 %v16, 511
  %v18 = or i32 %v17, 32256
  br label %b13

b7:                                               ; preds = %b5
  %v19 = icmp ugt i32 %v1, 1199570943
  br i1 %v19, label %b13, label %b8

b8:                                               ; preds = %b7
  %v20 = icmp ult i32 %v1, 754974720
  br i1 %v20, label %b13, label %b9

b9:                                               ; preds = %b8
  %v21 = lshr i32 %v1, 23
  %v22 = sub nsw i32 113, %v21
  %v23 = and i32 %v0, 8388607
  %v24 = or i32 %v23, 8388608
  %v25 = add nsw i32 %v21, -81
  %v26 = shl i32 %v24, %v25
  %v27 = icmp ne i32 %v26, 0
  %v28 = lshr i32 %v24, %v22
  %v29 = zext i1 %v27 to i32
  %v30 = lshr i32 %v28, 13
  %v31 = and i32 %v28, 8191
  %v32 = or i32 %v31, %v29
  %v33 = icmp ugt i32 %v32, 4096
  br i1 %v33, label %b10, label %b11

b10:                                              ; preds = %b9
  %v34 = add nuw nsw i32 %v30, 1
  br label %b13

b11:                                              ; preds = %b9
  %v35 = icmp eq i32 %v32, 4096
  br i1 %v35, label %b12, label %b13

b12:                                              ; preds = %b11
  %v36 = and i32 %v30, 1
  %v37 = add nuw nsw i32 %v36, %v30
  br label %b13

b13:                                              ; preds = %b12, %b11, %b10, %b8, %b7, %b6, %b4, %b3, %b2
  %v38 = phi i32 [ %v18, %b6 ], [ %v10, %b2 ], [ %v14, %b4 ], [ %v7, %b3 ], [ 31744, %b7 ], [ 0, %b8 ], [ %v34, %b10 ], [ %v37, %b12 ], [ %v30, %b11 ]
  %v39 = lshr i32 %v0, 16
  %v40 = and i32 %v39, 32768
  %v41 = or i32 %v38, %v40
  %vlast = trunc i32 %v41 to i16
  ret i16 %vlast
}

; Function Attrs: nofree nosync nounwind memory(none)
define weak dso_local float @__extendhfsf2(i16 %a0) local_unnamed_addr #6 section ".text.tvm.fp16.conv" {
b0:
  %v1 = and i16 %a0, 32767
  %v2 = zext i16 %v1 to i32
  %v3 = add nsw i16 %v1, -1024
  %v4 = icmp ult i16 %v3, 30720
  br i1 %v4, label %b1, label %b2

b1:                                               ; preds = %b0
  %v5 = shl nuw nsw i32 %v2, 13
  %v6 = add nuw nsw i32 %v5, 939524096
  br label %b6

b2:                                               ; preds = %b0
  %v7 = icmp ugt i16 %v1, 31743
  br i1 %v7, label %b3, label %b4

b3:                                               ; preds = %b2
  %v8 = shl nuw nsw i32 %v2, 13
  %v9 = or i32 %v8, 2139095040
  br label %b6

b4:                                               ; preds = %b2
  %v10 = icmp eq i16 %v1, 0
  br i1 %v10, label %b6, label %b5

b5:                                               ; preds = %b4
  %v11 = icmp ult i16 %v1, 256
  %v12 = lshr i32 %v2, 8
  %v13 = select i1 %v11, i32 %v2, i32 %v12
  %v14 = select i1 %v11, i32 32, i32 24
  %v15 = icmp ult i32 %v13, 16
  %v16 = lshr i32 %v13, 4
  %v17 = add nsw i32 %v14, -4
  %v18 = select i1 %v15, i32 %v13, i32 %v16
  %v19 = select i1 %v15, i32 %v14, i32 %v17
  %v20 = icmp ult i32 %v18, 4
  %v21 = lshr i32 %v18, 2
  %v22 = add nsw i32 %v19, -2
  %v23 = select i1 %v20, i32 %v18, i32 %v21
  %v24 = select i1 %v20, i32 %v19, i32 %v22
  %v25 = icmp ult i32 %v23, 2
  %v26 = sub nsw i32 0, %v23
  %v27 = select i1 %v25, i32 %v26, i32 -2
  %v28 = add nsw i32 %v27, %v24
  %v29 = add nsw i32 %v28, -8
  %v30 = shl i32 %v2, %v29
  %v31 = xor i32 %v30, 8388608
  %v32 = shl i32 %v28, 23
  %v33 = sub i32 1124073472, %v32
  %v34 = or i32 %v31, %v33
  br label %b6

b6:                                               ; preds = %b5, %b4, %b3, %b1
  %v35 = phi i32 [ %v6, %b1 ], [ %v9, %b3 ], [ %v34, %b5 ], [ 0, %b4 ]
  %v36 = and i16 %a0, -32768
  %v37 = zext i16 %v36 to i32
  %v38 = shl nuw i32 %v37, 16
  %v39 = or i32 %v35, %v38
  %v40 = bitcast i32 %v39 to float
  ret float %v40
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

attributes #0 = { "target-cpu"="generic-rv64" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #2 = { noinline "target-cpu"="generic-rv64" }
attributes #3 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) "target-cpu"="generic-rv64" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline nosync nounwind willreturn memory(argmem: readwrite) "target-cpu"="generic-rv64" }
attributes #6 = { nofree nosync nounwind memory(none) "target-cpu"="generic-rv64" "target-features" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "TVM", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "main.tir", directory: ".")
!2 = !{i32 2, !"tvm_target", !"llvm -mtriple=riscv64-unknown-linux-gnu -mcpu=generic-rv64"}
!3 = !{i32 4, !"Debug Info Version", i32 3}
!4 = distinct !DISubprogram(name: "main.tir", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !8, !9, !7, !8, !9, !8}
!7 = !DIBasicType(name: "int32", size: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7)
!10 = !{!11, !12, !13, !14, !15, !16}
!11 = !DILocalVariable(name: "arg1", arg: 1, scope: !4, file: !1, type: !8)
!12 = !DILocalVariable(name: "arg2", arg: 2, scope: !4, file: !1, type: !9)
!13 = !DILocalVariable(name: "arg3", arg: 3, scope: !4, file: !1, type: !7)
!14 = !DILocalVariable(name: "arg4", arg: 4, scope: !4, file: !1, type: !8)
!15 = !DILocalVariable(name: "arg5", arg: 5, scope: !4, file: !1, type: !9)
!16 = !DILocalVariable(name: "arg6", arg: 6, scope: !4, file: !1, type: !8)
!17 = !DILocation(line: 0, scope: !4)
!18 = !{!"branch_weights", i32 1048576, i32 1}
!19 = !{!20, !20, i64 0}
!20 = !{!"ctx_ptr", !21, i64 0}
!21 = !{!"tvm-tbaa"}
!22 = !{!23, !23, i64 0}
!23 = !{!"0x3e0eef0.w4.b0", !24, i64 0}
!24 = !{!"0x3e0eef0.w8.b0", !25, i64 0}
!25 = !{!"0x3e0eef0.w16.b0", !26, i64 0}
!26 = !{!"0x3e0eef0.w32.b0", !27, i64 0}
!27 = !{!"0x3e0eef0.w64.b0", !28, i64 0}
!28 = !{!"0x3e0eef0.w128.b0", !29, i64 0}
!29 = !{!"0x3e0eef0.w256.b0", !30, i64 0}
!30 = !{!"0x3e0eef0.w512.b0", !31, i64 0}
!31 = !{!"0x3e0eef0.w1024.b0", !32, i64 0}
!32 = !{!"0x3e0eef0", !21, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"0x3e0eef0.w4.b4", !24, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"0x3e0eef0.w4.b8", !37, i64 0}
!37 = !{!"0x3e0eef0.w8.b8", !25, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"0x3e0eef0.w4.b12", !37, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"0x2d71070.w8.b0", !42, i64 0}
!42 = !{!"0x2d71070.w16.b0", !43, i64 0}
!43 = !{!"0x2d71070.w32.b0", !44, i64 0}
!44 = !{!"0x2d71070.w64.b0", !45, i64 0}
!45 = !{!"0x2d71070.w128.b0", !46, i64 0}
!46 = !{!"0x2d71070.w256.b0", !47, i64 0}
!47 = !{!"0x2d71070.w512.b0", !48, i64 0}
!48 = !{!"0x2d71070.w1024.b0", !49, i64 0}
!49 = !{!"0x2d71070", !21, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"0x2d71070.w8.b8", !42, i64 0}
!52 = !{!"branch_weights", i32 1, i32 1048576}
!53 = !{!54, !54, i64 0}
!54 = !{!"0x2d729e0.w8.b8", !55, i64 0}
!55 = !{!"0x2d729e0.w16.b0", !56, i64 0}
!56 = !{!"0x2d729e0.w32.b0", !57, i64 0}
!57 = !{!"0x2d729e0.w64.b0", !58, i64 0}
!58 = !{!"0x2d729e0.w128.b0", !59, i64 0}
!59 = !{!"0x2d729e0.w256.b0", !60, i64 0}
!60 = !{!"0x2d729e0.w512.b0", !61, i64 0}
!61 = !{!"0x2d729e0.w1024.b0", !62, i64 0}
!62 = !{!"0x2d729e0", !21, i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"0x2d74530.w8.b0", !65, i64 0}
!65 = !{!"0x2d74530.w16.b0", !66, i64 0}
!66 = !{!"0x2d74530.w32.b0", !67, i64 0}
!67 = !{!"0x2d74530.w64.b0", !68, i64 0}
!68 = !{!"0x2d74530.w128.b0", !69, i64 0}
!69 = !{!"0x2d74530.w256.b0", !70, i64 0}
!70 = !{!"0x2d74530.w512.b0", !71, i64 0}
!71 = !{!"0x2d74530.w1024.b0", !72, i64 0}
!72 = !{!"0x2d74530", !21, i64 0}
!73 = !{!74, !74, i64 0}
!74 = !{!"0x2d74530.w8.b8", !65, i64 0}
!75 = !{!76, !76, i64 0}
!76 = !{!"0x2d752b0.w8.b0", !77, i64 0}
!77 = !{!"0x2d752b0.w16.b0", !78, i64 0}
!78 = !{!"0x2d752b0.w32.b0", !79, i64 0}
!79 = !{!"0x2d752b0.w64.b0", !80, i64 0}
!80 = !{!"0x2d752b0.w128.b0", !81, i64 0}
!81 = !{!"0x2d752b0.w256.b0", !82, i64 0}
!82 = !{!"0x2d752b0.w512.b0", !83, i64 0}
!83 = !{!"0x2d752b0.w1024.b0", !84, i64 0}
!84 = !{!"0x2d752b0", !21, i64 0}
!85 = !{!86, !86, i64 0}
!86 = !{!"0x2d752b0.w8.b8", !77, i64 0}
!87 = !{!88, !88, i64 0}
!88 = !{!"0x2d773e0.w8.b0", !89, i64 0}
!89 = !{!"0x2d773e0.w16.b0", !90, i64 0}
!90 = !{!"0x2d773e0.w32.b0", !91, i64 0}
!91 = !{!"0x2d773e0.w64.b0", !92, i64 0}
!92 = !{!"0x2d773e0.w128.b0", !93, i64 0}
!93 = !{!"0x2d773e0.w256.b0", !94, i64 0}
!94 = !{!"0x2d773e0.w512.b0", !95, i64 0}
!95 = !{!"0x2d773e0.w1024.b0", !96, i64 0}
!96 = !{!"0x2d773e0", !21, i64 0}
!97 = !{!98, !98, i64 0}
!98 = !{!"0x2d773e0.w8.b8", !89, i64 0}
!99 = !{!100, !100, i64 0}
!100 = !{!"0x2d773e0.w8.b16", !101, i64 0}
!101 = !{!"0x2d773e0.w16.b16", !90, i64 0}
!102 = !{!103, !103, i64 0}
!103 = !{!"0x2d77e80.w8.b8", !104, i64 0}
!104 = !{!"0x2d77e80.w16.b0", !105, i64 0}
!105 = !{!"0x2d77e80.w32.b0", !106, i64 0}
!106 = !{!"0x2d77e80.w64.b0", !107, i64 0}
!107 = !{!"0x2d77e80.w128.b0", !108, i64 0}
!108 = !{!"0x2d77e80.w256.b0", !109, i64 0}
!109 = !{!"0x2d77e80.w512.b0", !110, i64 0}
!110 = !{!"0x2d77e80.w1024.b0", !111, i64 0}
!111 = !{!"0x2d77e80", !21, i64 0}
!112 = !{!113, !113, i64 0}
!113 = !{!"0x2d77e80.w8.b16", !114, i64 0}
!114 = !{!"0x2d77e80.w16.b16", !105, i64 0}
!115 = !{!116, !116, i64 0}
!116 = !{!"0x2d7a300.w8.b0", !117, i64 0}
!117 = !{!"0x2d7a300.w16.b0", !118, i64 0}
!118 = !{!"0x2d7a300.w32.b0", !119, i64 0}
!119 = !{!"0x2d7a300.w64.b0", !120, i64 0}
!120 = !{!"0x2d7a300.w128.b0", !121, i64 0}
!121 = !{!"0x2d7a300.w256.b0", !122, i64 0}
!122 = !{!"0x2d7a300.w512.b0", !123, i64 0}
!123 = !{!"0x2d7a300.w1024.b0", !124, i64 0}
!124 = !{!"0x2d7a300", !21, i64 0}
!125 = !{!126, !126, i64 0}
!126 = !{!"0x2d7a300.w8.b8", !117, i64 0}
!127 = !{!128, !128, i64 0}
!128 = !{!"0x2d7a300.w8.b16", !129, i64 0}
!129 = !{!"0x2d7a300.w16.b16", !118, i64 0}
!130 = !{!131, !131, i64 0}
!131 = !{!"0x2d7aec0.w8.b8", !132, i64 0}
!132 = !{!"0x2d7aec0.w16.b0", !133, i64 0}
!133 = !{!"0x2d7aec0.w32.b0", !134, i64 0}
!134 = !{!"0x2d7aec0.w64.b0", !135, i64 0}
!135 = !{!"0x2d7aec0.w128.b0", !136, i64 0}
!136 = !{!"0x2d7aec0.w256.b0", !137, i64 0}
!137 = !{!"0x2d7aec0.w512.b0", !138, i64 0}
!138 = !{!"0x2d7aec0.w1024.b0", !139, i64 0}
!139 = !{!"0x2d7aec0", !21, i64 0}
!140 = !{!141, !141, i64 0}
!141 = !{!"0x2d7aec0.w8.b16", !142, i64 0}
!142 = !{!"0x2d7aec0.w16.b16", !133, i64 0}
!143 = distinct !DISubprogram(name: "main.tir", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!144 = !{!145, !146, !147, !148, !149, !150}
!145 = !DILocalVariable(name: "arg1", arg: 1, scope: !143, file: !1, type: !8)
!146 = !DILocalVariable(name: "arg2", arg: 2, scope: !143, file: !1, type: !9)
!147 = !DILocalVariable(name: "arg3", arg: 3, scope: !143, file: !1, type: !7)
!148 = !DILocalVariable(name: "arg4", arg: 4, scope: !143, file: !1, type: !8)
!149 = !DILocalVariable(name: "arg5", arg: 5, scope: !143, file: !1, type: !9)
!150 = !DILocalVariable(name: "arg6", arg: 6, scope: !143, file: !1, type: !8)
!151 = !DILocation(line: 0, scope: !143)
!152 = !{!153, !153, i64 0}
!153 = !{!"0x2f3c6c0.w4.b0", !154, i64 0}
!154 = !{!"0x2f3c6c0.w8.b0", !155, i64 0}
!155 = !{!"0x2f3c6c0.w16.b0", !156, i64 0}
!156 = !{!"0x2f3c6c0.w32.b0", !157, i64 0}
!157 = !{!"0x2f3c6c0.w64.b0", !158, i64 0}
!158 = !{!"0x2f3c6c0.w128.b0", !159, i64 0}
!159 = !{!"0x2f3c6c0.w256.b0", !160, i64 0}
!160 = !{!"0x2f3c6c0.w512.b0", !161, i64 0}
!161 = !{!"0x2f3c6c0.w1024.b0", !162, i64 0}
!162 = !{!"0x2f3c6c0", !21, i64 0}
!163 = !{!164, !164, i64 0}
!164 = !{!"0x2f3c6c0.w4.b4", !154, i64 0}
!165 = !{!166, !166, i64 0}
!166 = !{!"0x2f46110.w8.b0", !167, i64 0}
!167 = !{!"0x2f46110.w16.b0", !168, i64 0}
!168 = !{!"0x2f46110.w32.b0", !169, i64 0}
!169 = !{!"0x2f46110.w64.b0", !170, i64 0}
!170 = !{!"0x2f46110.w128.b0", !171, i64 0}
!171 = !{!"0x2f46110.w256.b0", !172, i64 0}
!172 = !{!"0x2f46110.w512.b0", !173, i64 0}
!173 = !{!"0x2f46110.w1024.b0", !174, i64 0}
!174 = !{!"0x2f46110", !21, i64 0}
!175 = !{!176, !176, i64 0}
!176 = !{!"0x2f46110.w8.b8", !167, i64 0}
!177 = !{!178, !178, i64 0}
!178 = !{!"0x2f46110.w8.b16", !179, i64 0}
!179 = !{!"0x2f46110.w16.b16", !168, i64 0}
!180 = !{!181, !181, i64 0}
!181 = !{!"0x2f3e730.w8.b8", !182, i64 0}
!182 = !{!"0x2f3e730.w16.b0", !183, i64 0}
!183 = !{!"0x2f3e730.w32.b0", !184, i64 0}
!184 = !{!"0x2f3e730.w64.b0", !185, i64 0}
!185 = !{!"0x2f3e730.w128.b0", !186, i64 0}
!186 = !{!"0x2f3e730.w256.b0", !187, i64 0}
!187 = !{!"0x2f3e730.w512.b0", !188, i64 0}
!188 = !{!"0x2f3e730.w1024.b0", !189, i64 0}
!189 = !{!"0x2f3e730", !21, i64 0}
!190 = !{!191, !191, i64 0}
!191 = !{!"0x2f3e730.w8.b16", !192, i64 0}
!192 = !{!"0x2f3e730.w16.b16", !183, i64 0}
!193 = !{!194, !194, i64 0}
!194 = !{!"0x2f4b250.w8.b0", !195, i64 0}
!195 = !{!"0x2f4b250.w16.b0", !196, i64 0}
!196 = !{!"0x2f4b250.w32.b0", !197, i64 0}
!197 = !{!"0x2f4b250.w64.b0", !198, i64 0}
!198 = !{!"0x2f4b250.w128.b0", !199, i64 0}
!199 = !{!"0x2f4b250.w256.b0", !200, i64 0}
!200 = !{!"0x2f4b250.w512.b0", !201, i64 0}
!201 = !{!"0x2f4b250.w1024.b0", !202, i64 0}
!202 = !{!"0x2f4b250", !21, i64 0}
!203 = !{!204, !204, i64 0}
!204 = !{!"0x2f4b250.w8.b8", !195, i64 0}
!205 = !{!206, !206, i64 0}
!206 = !{!"0x2f4b250.w8.b16", !207, i64 0}
!207 = !{!"0x2f4b250.w16.b16", !196, i64 0}
!208 = !{!209, !209, i64 0}
!209 = !{!"0x2f4c800.w8.b8", !210, i64 0}
!210 = !{!"0x2f4c800.w16.b0", !211, i64 0}
!211 = !{!"0x2f4c800.w32.b0", !212, i64 0}
!212 = !{!"0x2f4c800.w64.b0", !213, i64 0}
!213 = !{!"0x2f4c800.w128.b0", !214, i64 0}
!214 = !{!"0x2f4c800.w256.b0", !215, i64 0}
!215 = !{!"0x2f4c800.w512.b0", !216, i64 0}
!216 = !{!"0x2f4c800.w1024.b0", !217, i64 0}
!217 = !{!"0x2f4c800", !21, i64 0}
!218 = distinct !DISubprogram(name: "main.tir", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!219 = !{!220, !221, !222, !223, !224, !225}
!220 = !DILocalVariable(name: "arg1", arg: 1, scope: !218, file: !1, type: !8)
!221 = !DILocalVariable(name: "arg2", arg: 2, scope: !218, file: !1, type: !9)
!222 = !DILocalVariable(name: "arg3", arg: 3, scope: !218, file: !1, type: !7)
!223 = !DILocalVariable(name: "arg4", arg: 4, scope: !218, file: !1, type: !8)
!224 = !DILocalVariable(name: "arg5", arg: 5, scope: !218, file: !1, type: !9)
!225 = !DILocalVariable(name: "arg6", arg: 6, scope: !218, file: !1, type: !8)
!226 = !DILocation(line: 0, scope: !218)
!227 = !{!228, !228, i64 0}
!228 = !{!"0x2d717e0.w4.b0", !229, i64 0}
!229 = !{!"0x2d717e0.w8.b0", !230, i64 0}
!230 = !{!"0x2d717e0.w16.b0", !231, i64 0}
!231 = !{!"0x2d717e0.w32.b0", !232, i64 0}
!232 = !{!"0x2d717e0.w64.b0", !233, i64 0}
!233 = !{!"0x2d717e0.w128.b0", !234, i64 0}
!234 = !{!"0x2d717e0.w256.b0", !235, i64 0}
!235 = !{!"0x2d717e0.w512.b0", !236, i64 0}
!236 = !{!"0x2d717e0.w1024.b0", !237, i64 0}
!237 = !{!"0x2d717e0", !21, i64 0}
!238 = !{!239, !239, i64 0}
!239 = !{!"0x2d717e0.w4.b4", !229, i64 0}
!240 = !{!241, !241, i64 0}
!241 = !{!"0x2d717e0.w4.b8", !242, i64 0}
!242 = !{!"0x2d717e0.w8.b8", !230, i64 0}
!243 = !{!244, !244, i64 0}
!244 = !{!"0x2d787e0.w8.b0", !245, i64 0}
!245 = !{!"0x2d787e0.w16.b0", !246, i64 0}
!246 = !{!"0x2d787e0.w32.b0", !247, i64 0}
!247 = !{!"0x2d787e0.w64.b0", !248, i64 0}
!248 = !{!"0x2d787e0.w128.b0", !249, i64 0}
!249 = !{!"0x2d787e0.w256.b0", !250, i64 0}
!250 = !{!"0x2d787e0.w512.b0", !251, i64 0}
!251 = !{!"0x2d787e0.w1024.b0", !252, i64 0}
!252 = !{!"0x2d787e0", !21, i64 0}
!253 = !{!254, !254, i64 0}
!254 = !{!"0x2d787e0.w8.b8", !245, i64 0}
!255 = !{!256, !256, i64 0}
!256 = !{!"0x2d787e0.w8.b16", !257, i64 0}
!257 = !{!"0x2d787e0.w16.b16", !246, i64 0}
!258 = !{!259, !259, i64 0}
!259 = !{!"0x2d7f530.w8.b0", !260, i64 0}
!260 = !{!"0x2d7f530.w16.b0", !261, i64 0}
!261 = !{!"0x2d7f530.w32.b0", !262, i64 0}
!262 = !{!"0x2d7f530.w64.b0", !263, i64 0}
!263 = !{!"0x2d7f530.w128.b0", !264, i64 0}
!264 = !{!"0x2d7f530.w256.b0", !265, i64 0}
!265 = !{!"0x2d7f530.w512.b0", !266, i64 0}
!266 = !{!"0x2d7f530.w1024.b0", !267, i64 0}
!267 = !{!"0x2d7f530", !21, i64 0}
!268 = !{!269, !269, i64 0}
!269 = !{!"0x2d7f530.w8.b8", !260, i64 0}
!270 = !{!271, !271, i64 0}
!271 = !{!"0x2d7f530.w8.b16", !272, i64 0}
!272 = !{!"0x2d7f530.w16.b16", !261, i64 0}
!273 = !{!274, !274, i64 0}
!274 = !{!"0x2d80e90.w8.b0", !275, i64 0}
!275 = !{!"0x2d80e90.w16.b0", !276, i64 0}
!276 = !{!"0x2d80e90.w32.b0", !277, i64 0}
!277 = !{!"0x2d80e90.w64.b0", !278, i64 0}
!278 = !{!"0x2d80e90.w128.b0", !279, i64 0}
!279 = !{!"0x2d80e90.w256.b0", !280, i64 0}
!280 = !{!"0x2d80e90.w512.b0", !281, i64 0}
!281 = !{!"0x2d80e90.w1024.b0", !282, i64 0}
!282 = !{!"0x2d80e90", !21, i64 0}
!283 = !{!284, !284, i64 0}
!284 = !{!"0x2d80e90.w8.b8", !275, i64 0}
!285 = !{!286, !286, i64 0}
!286 = !{!"0x2d80e90.w8.b16", !287, i64 0}
!287 = !{!"0x2d80e90.w16.b16", !276, i64 0}
!288 = !{!289, !289, i64 0}
!289 = !{!"0x2d823d0.w8.b0", !290, i64 0}
!290 = !{!"0x2d823d0.w16.b0", !291, i64 0}
!291 = !{!"0x2d823d0.w32.b0", !292, i64 0}
!292 = !{!"0x2d823d0.w64.b0", !293, i64 0}
!293 = !{!"0x2d823d0.w128.b0", !294, i64 0}
!294 = !{!"0x2d823d0.w256.b0", !295, i64 0}
!295 = !{!"0x2d823d0.w512.b0", !296, i64 0}
!296 = !{!"0x2d823d0.w1024.b0", !297, i64 0}
!297 = !{!"0x2d823d0", !21, i64 0}
!298 = !{!299, !299, i64 0}
!299 = !{!"0x2d823d0.w8.b8", !290, i64 0}
!300 = !{!301, !301, i64 0}
!301 = !{!"0x2d823d0.w8.b16", !302, i64 0}
!302 = !{!"0x2d823d0.w16.b16", !291, i64 0}
!303 = !{!304, !304, i64 0}
!304 = !{!"0x2d84000.w8.b0", !305, i64 0}
!305 = !{!"0x2d84000.w16.b0", !306, i64 0}
!306 = !{!"0x2d84000.w32.b0", !307, i64 0}
!307 = !{!"0x2d84000.w64.b0", !308, i64 0}
!308 = !{!"0x2d84000.w128.b0", !309, i64 0}
!309 = !{!"0x2d84000.w256.b0", !310, i64 0}
!310 = !{!"0x2d84000.w512.b0", !311, i64 0}
!311 = !{!"0x2d84000.w1024.b0", !312, i64 0}
!312 = !{!"0x2d84000", !21, i64 0}
!313 = !{!314, !314, i64 0}
!314 = !{!"0x2d84000.w8.b8", !305, i64 0}
!315 = !{!316, !316, i64 0}
!316 = !{!"0x2d84000.w8.b16", !317, i64 0}
!317 = !{!"0x2d84000.w16.b16", !306, i64 0}
!318 = !{!319, !319, i64 0}
!319 = !{!"0x2d84c80.w8.b0", !320, i64 0}
!320 = !{!"0x2d84c80.w16.b0", !321, i64 0}
!321 = !{!"0x2d84c80.w32.b0", !322, i64 0}
!322 = !{!"0x2d84c80.w64.b0", !323, i64 0}
!323 = !{!"0x2d84c80.w128.b0", !324, i64 0}
!324 = !{!"0x2d84c80.w256.b0", !325, i64 0}
!325 = !{!"0x2d84c80.w512.b0", !326, i64 0}
!326 = !{!"0x2d84c80.w1024.b0", !327, i64 0}
!327 = !{!"0x2d84c80", !21, i64 0}
!328 = !{!329, !329, i64 0}
!329 = !{!"0x2d84c80.w8.b8", !320, i64 0}
!330 = !{!331, !331, i64 0}
!331 = !{!"0x2d84c80.w8.b16", !332, i64 0}
!332 = !{!"0x2d84c80.w16.b16", !321, i64 0}
!333 = distinct !DISubprogram(name: "main.tir", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !334)
!334 = !{!335, !336, !337, !338, !339, !340}
!335 = !DILocalVariable(name: "arg1", arg: 1, scope: !333, file: !1, type: !8)
!336 = !DILocalVariable(name: "arg2", arg: 2, scope: !333, file: !1, type: !9)
!337 = !DILocalVariable(name: "arg3", arg: 3, scope: !333, file: !1, type: !7)
!338 = !DILocalVariable(name: "arg4", arg: 4, scope: !333, file: !1, type: !8)
!339 = !DILocalVariable(name: "arg5", arg: 5, scope: !333, file: !1, type: !9)
!340 = !DILocalVariable(name: "arg6", arg: 6, scope: !333, file: !1, type: !8)
!341 = !DILocation(line: 0, scope: !333)
!342 = !{!343, !343, i64 0}
!343 = !{!"0x2f75950.w4.b0", !344, i64 0}
!344 = !{!"0x2f75950.w8.b0", !345, i64 0}
!345 = !{!"0x2f75950.w16.b0", !346, i64 0}
!346 = !{!"0x2f75950.w32.b0", !347, i64 0}
!347 = !{!"0x2f75950.w64.b0", !348, i64 0}
!348 = !{!"0x2f75950.w128.b0", !349, i64 0}
!349 = !{!"0x2f75950.w256.b0", !350, i64 0}
!350 = !{!"0x2f75950.w512.b0", !351, i64 0}
!351 = !{!"0x2f75950.w1024.b0", !352, i64 0}
!352 = !{!"0x2f75950", !21, i64 0}
!353 = !{!354, !354, i64 0}
!354 = !{!"0x2f75950.w4.b4", !344, i64 0}
!355 = !{!356, !356, i64 0}
!356 = !{!"0x2f75950.w4.b8", !357, i64 0}
!357 = !{!"0x2f75950.w8.b8", !345, i64 0}
!358 = !{!359, !359, i64 0}
!359 = !{!"0x2f82460.w8.b0", !360, i64 0}
!360 = !{!"0x2f82460.w16.b0", !361, i64 0}
!361 = !{!"0x2f82460.w32.b0", !362, i64 0}
!362 = !{!"0x2f82460.w64.b0", !363, i64 0}
!363 = !{!"0x2f82460.w128.b0", !364, i64 0}
!364 = !{!"0x2f82460.w256.b0", !365, i64 0}
!365 = !{!"0x2f82460.w512.b0", !366, i64 0}
!366 = !{!"0x2f82460.w1024.b0", !367, i64 0}
!367 = !{!"0x2f82460", !21, i64 0}
!368 = !{!369, !369, i64 0}
!369 = !{!"0x2f82460.w8.b8", !360, i64 0}
!370 = !{!371, !371, i64 0}
!371 = !{!"0x2f82460.w8.b16", !372, i64 0}
!372 = !{!"0x2f82460.w16.b16", !361, i64 0}
!373 = !{!374, !374, i64 0}
!374 = !{!"0x2f84f00.w8.b0", !375, i64 0}
!375 = !{!"0x2f84f00.w16.b0", !376, i64 0}
!376 = !{!"0x2f84f00.w32.b0", !377, i64 0}
!377 = !{!"0x2f84f00.w64.b0", !378, i64 0}
!378 = !{!"0x2f84f00.w128.b0", !379, i64 0}
!379 = !{!"0x2f84f00.w256.b0", !380, i64 0}
!380 = !{!"0x2f84f00.w512.b0", !381, i64 0}
!381 = !{!"0x2f84f00.w1024.b0", !382, i64 0}
!382 = !{!"0x2f84f00", !21, i64 0}
!383 = !{!384, !384, i64 0}
!384 = !{!"0x2f84f00.w8.b8", !375, i64 0}
!385 = !{!386, !386, i64 0}
!386 = !{!"0x2f84f00.w8.b16", !387, i64 0}
!387 = !{!"0x2f84f00.w16.b16", !376, i64 0}
!388 = !{!389, !389, i64 0}
!389 = !{!"0x2f8ab70.w8.b0", !390, i64 0}
!390 = !{!"0x2f8ab70.w16.b0", !391, i64 0}
!391 = !{!"0x2f8ab70.w32.b0", !392, i64 0}
!392 = !{!"0x2f8ab70.w64.b0", !393, i64 0}
!393 = !{!"0x2f8ab70.w128.b0", !394, i64 0}
!394 = !{!"0x2f8ab70.w256.b0", !395, i64 0}
!395 = !{!"0x2f8ab70.w512.b0", !396, i64 0}
!396 = !{!"0x2f8ab70.w1024.b0", !397, i64 0}
!397 = !{!"0x2f8ab70", !21, i64 0}
!398 = !{!399, !399, i64 0}
!399 = !{!"0x2f8ab70.w8.b8", !390, i64 0}
!400 = !{!401, !401, i64 0}
!401 = !{!"0x2f8ab70.w8.b16", !402, i64 0}
!402 = !{!"0x2f8ab70.w16.b16", !391, i64 0}
!403 = !{!404, !404, i64 0}
!404 = !{!"0x2f8c120.w8.b0", !405, i64 0}
!405 = !{!"0x2f8c120.w16.b0", !406, i64 0}
!406 = !{!"0x2f8c120.w32.b0", !407, i64 0}
!407 = !{!"0x2f8c120.w64.b0", !408, i64 0}
!408 = !{!"0x2f8c120.w128.b0", !409, i64 0}
!409 = !{!"0x2f8c120.w256.b0", !410, i64 0}
!410 = !{!"0x2f8c120.w512.b0", !411, i64 0}
!411 = !{!"0x2f8c120.w1024.b0", !412, i64 0}
!412 = !{!"0x2f8c120", !21, i64 0}
!413 = !{!414, !414, i64 0}
!414 = !{!"0x2f8c120.w8.b8", !405, i64 0}
!415 = !{!416, !416, i64 0}
!416 = !{!"0x2f8c120.w8.b16", !417, i64 0}
!417 = !{!"0x2f8c120.w16.b16", !406, i64 0}
!418 = !{!419, !419, i64 0}
!419 = !{!"0x2f8d720.w8.b0", !420, i64 0}
!420 = !{!"0x2f8d720.w16.b0", !421, i64 0}
!421 = !{!"0x2f8d720.w32.b0", !422, i64 0}
!422 = !{!"0x2f8d720.w64.b0", !423, i64 0}
!423 = !{!"0x2f8d720.w128.b0", !424, i64 0}
!424 = !{!"0x2f8d720.w256.b0", !425, i64 0}
!425 = !{!"0x2f8d720.w512.b0", !426, i64 0}
!426 = !{!"0x2f8d720.w1024.b0", !427, i64 0}
!427 = !{!"0x2f8d720", !21, i64 0}
!428 = !{!429, !429, i64 0}
!429 = !{!"0x2f8d720.w8.b8", !420, i64 0}
!430 = !{!431, !431, i64 0}
!431 = !{!"0x2f8d720.w8.b16", !432, i64 0}
!432 = !{!"0x2f8d720.w16.b16", !421, i64 0}
!433 = !{!434, !434, i64 0}
!434 = !{!"0x2f8eba0.w8.b0", !435, i64 0}
!435 = !{!"0x2f8eba0.w16.b0", !436, i64 0}
!436 = !{!"0x2f8eba0.w32.b0", !437, i64 0}
!437 = !{!"0x2f8eba0.w64.b0", !438, i64 0}
!438 = !{!"0x2f8eba0.w128.b0", !439, i64 0}
!439 = !{!"0x2f8eba0.w256.b0", !440, i64 0}
!440 = !{!"0x2f8eba0.w512.b0", !441, i64 0}
!441 = !{!"0x2f8eba0.w1024.b0", !442, i64 0}
!442 = !{!"0x2f8eba0", !21, i64 0}
!443 = !{!444, !444, i64 0}
!444 = !{!"0x2f8eba0.w8.b8", !435, i64 0}
!445 = !{!446, !446, i64 0}
!446 = !{!"0x2f8eba0.w8.b16", !447, i64 0}
!447 = !{!"0x2f8eba0.w16.b16", !436, i64 0}
!448 = distinct !DISubprogram(name: "main.tir", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !449)
!449 = !{!450, !451, !452, !453, !454, !455}
!450 = !DILocalVariable(name: "arg1", arg: 1, scope: !448, file: !1, type: !8)
!451 = !DILocalVariable(name: "arg2", arg: 2, scope: !448, file: !1, type: !9)
!452 = !DILocalVariable(name: "arg3", arg: 3, scope: !448, file: !1, type: !7)
!453 = !DILocalVariable(name: "arg4", arg: 4, scope: !448, file: !1, type: !8)
!454 = !DILocalVariable(name: "arg5", arg: 5, scope: !448, file: !1, type: !9)
!455 = !DILocalVariable(name: "arg6", arg: 6, scope: !448, file: !1, type: !8)
!456 = !DILocation(line: 0, scope: !448)
!457 = !{!458, !458, i64 0}
!458 = !{!"0x2f611b0.w4.b0", !459, i64 0}
!459 = !{!"0x2f611b0.w8.b0", !460, i64 0}
!460 = !{!"0x2f611b0.w16.b0", !461, i64 0}
!461 = !{!"0x2f611b0.w32.b0", !462, i64 0}
!462 = !{!"0x2f611b0.w64.b0", !463, i64 0}
!463 = !{!"0x2f611b0.w128.b0", !464, i64 0}
!464 = !{!"0x2f611b0.w256.b0", !465, i64 0}
!465 = !{!"0x2f611b0.w512.b0", !466, i64 0}
!466 = !{!"0x2f611b0.w1024.b0", !467, i64 0}
!467 = !{!"0x2f611b0", !21, i64 0}
!468 = !{!469, !469, i64 0}
!469 = !{!"0x2f611b0.w4.b4", !459, i64 0}
!470 = !{!471, !471, i64 0}
!471 = !{!"0x2f611b0.w4.b8", !472, i64 0}
!472 = !{!"0x2f611b0.w8.b8", !460, i64 0}
!473 = !{!474, !474, i64 0}
!474 = !{!"0x2f6ac80.w8.b0", !475, i64 0}
!475 = !{!"0x2f6ac80.w16.b0", !476, i64 0}
!476 = !{!"0x2f6ac80.w32.b0", !477, i64 0}
!477 = !{!"0x2f6ac80.w64.b0", !478, i64 0}
!478 = !{!"0x2f6ac80.w128.b0", !479, i64 0}
!479 = !{!"0x2f6ac80.w256.b0", !480, i64 0}
!480 = !{!"0x2f6ac80.w512.b0", !481, i64 0}
!481 = !{!"0x2f6ac80.w1024.b0", !482, i64 0}
!482 = !{!"0x2f6ac80", !21, i64 0}
!483 = !{!484, !484, i64 0}
!484 = !{!"0x2f6ac80.w8.b8", !475, i64 0}
!485 = !{!486, !486, i64 0}
!486 = !{!"0x2f6c2a0.w8.b0", !487, i64 0}
!487 = !{!"0x2f6c2a0.w16.b0", !488, i64 0}
!488 = !{!"0x2f6c2a0.w32.b0", !489, i64 0}
!489 = !{!"0x2f6c2a0.w64.b0", !490, i64 0}
!490 = !{!"0x2f6c2a0.w128.b0", !491, i64 0}
!491 = !{!"0x2f6c2a0.w256.b0", !492, i64 0}
!492 = !{!"0x2f6c2a0.w512.b0", !493, i64 0}
!493 = !{!"0x2f6c2a0.w1024.b0", !494, i64 0}
!494 = !{!"0x2f6c2a0", !21, i64 0}
!495 = !{!496, !496, i64 0}
!496 = !{!"0x2f6c2a0.w8.b8", !487, i64 0}
!497 = !{!498, !498, i64 0}
!498 = !{!"0x2f6dd70.w8.b0", !499, i64 0}
!499 = !{!"0x2f6dd70.w16.b0", !500, i64 0}
!500 = !{!"0x2f6dd70.w32.b0", !501, i64 0}
!501 = !{!"0x2f6dd70.w64.b0", !502, i64 0}
!502 = !{!"0x2f6dd70.w128.b0", !503, i64 0}
!503 = !{!"0x2f6dd70.w256.b0", !504, i64 0}
!504 = !{!"0x2f6dd70.w512.b0", !505, i64 0}
!505 = !{!"0x2f6dd70.w1024.b0", !506, i64 0}
!506 = !{!"0x2f6dd70", !21, i64 0}
!507 = !{!508, !508, i64 0}
!508 = !{!"0x2f6dd70.w8.b8", !499, i64 0}
!509 = !{!510, !510, i64 0}
!510 = !{!"0x2f6dd70.w8.b16", !511, i64 0}
!511 = !{!"0x2f6dd70.w16.b16", !500, i64 0}
!512 = !{!513, !513, i64 0}
!513 = !{!"0x2f6f340.w8.b0", !514, i64 0}
!514 = !{!"0x2f6f340.w16.b0", !515, i64 0}
!515 = !{!"0x2f6f340.w32.b0", !516, i64 0}
!516 = !{!"0x2f6f340.w64.b0", !517, i64 0}
!517 = !{!"0x2f6f340.w128.b0", !518, i64 0}
!518 = !{!"0x2f6f340.w256.b0", !519, i64 0}
!519 = !{!"0x2f6f340.w512.b0", !520, i64 0}
!520 = !{!"0x2f6f340.w1024.b0", !521, i64 0}
!521 = !{!"0x2f6f340", !21, i64 0}
!522 = !{!523, !523, i64 0}
!523 = !{!"0x2f6f340.w8.b8", !514, i64 0}
!524 = !{!525, !525, i64 0}
!525 = !{!"0x2f6f340.w8.b16", !526, i64 0}
!526 = !{!"0x2f6f340.w16.b16", !515, i64 0}
!527 = !{!528, !528, i64 0}
!528 = !{!"0x2f71050.w8.b0", !529, i64 0}
!529 = !{!"0x2f71050.w16.b0", !530, i64 0}
!530 = !{!"0x2f71050.w32.b0", !531, i64 0}
!531 = !{!"0x2f71050.w64.b0", !532, i64 0}
!532 = !{!"0x2f71050.w128.b0", !533, i64 0}
!533 = !{!"0x2f71050.w256.b0", !534, i64 0}
!534 = !{!"0x2f71050.w512.b0", !535, i64 0}
!535 = !{!"0x2f71050.w1024.b0", !536, i64 0}
!536 = !{!"0x2f71050", !21, i64 0}
!537 = !{!538, !538, i64 0}
!538 = !{!"0x2f71050.w8.b8", !529, i64 0}
!539 = !{!540, !540, i64 0}
!540 = !{!"0x2f71530.w8.b0", !541, i64 0}
!541 = !{!"0x2f71530.w16.b0", !542, i64 0}
!542 = !{!"0x2f71530.w32.b0", !543, i64 0}
!543 = !{!"0x2f71530.w64.b0", !544, i64 0}
!544 = !{!"0x2f71530.w128.b0", !545, i64 0}
!545 = !{!"0x2f71530.w256.b0", !546, i64 0}
!546 = !{!"0x2f71530.w512.b0", !547, i64 0}
!547 = !{!"0x2f71530.w1024.b0", !548, i64 0}
!548 = !{!"0x2f71530", !21, i64 0}
!549 = !{!550, !550, i64 0}
!550 = !{!"0x2f71530.w8.b8", !541, i64 0}
!551 = distinct !DISubprogram(name: "main.tir", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !552)
!552 = !{!553, !554, !555, !556, !557, !558}
!553 = !DILocalVariable(name: "arg1", arg: 1, scope: !551, file: !1, type: !8)
!554 = !DILocalVariable(name: "arg2", arg: 2, scope: !551, file: !1, type: !9)
!555 = !DILocalVariable(name: "arg3", arg: 3, scope: !551, file: !1, type: !7)
!556 = !DILocalVariable(name: "arg4", arg: 4, scope: !551, file: !1, type: !8)
!557 = !DILocalVariable(name: "arg5", arg: 5, scope: !551, file: !1, type: !9)
!558 = !DILocalVariable(name: "arg6", arg: 6, scope: !551, file: !1, type: !8)
!559 = !DILocation(line: 0, scope: !551)
!560 = !{!561, !561, i64 0}
!561 = !{!"0x2d736c0.w4.b0", !562, i64 0}
!562 = !{!"0x2d736c0.w8.b0", !563, i64 0}
!563 = !{!"0x2d736c0.w16.b0", !564, i64 0}
!564 = !{!"0x2d736c0.w32.b0", !565, i64 0}
!565 = !{!"0x2d736c0.w64.b0", !566, i64 0}
!566 = !{!"0x2d736c0.w128.b0", !567, i64 0}
!567 = !{!"0x2d736c0.w256.b0", !568, i64 0}
!568 = !{!"0x2d736c0.w512.b0", !569, i64 0}
!569 = !{!"0x2d736c0.w1024.b0", !570, i64 0}
!570 = !{!"0x2d736c0", !21, i64 0}
!571 = !{!572, !572, i64 0}
!572 = !{!"0x2d736c0.w4.b4", !562, i64 0}
!573 = !{!574, !574, i64 0}
!574 = !{!"0x2d736c0.w4.b8", !575, i64 0}
!575 = !{!"0x2d736c0.w8.b8", !563, i64 0}
!576 = !{!577, !577, i64 0}
!577 = !{!"0x2d87e10.w8.b0", !578, i64 0}
!578 = !{!"0x2d87e10.w16.b0", !579, i64 0}
!579 = !{!"0x2d87e10.w32.b0", !580, i64 0}
!580 = !{!"0x2d87e10.w64.b0", !581, i64 0}
!581 = !{!"0x2d87e10.w128.b0", !582, i64 0}
!582 = !{!"0x2d87e10.w256.b0", !583, i64 0}
!583 = !{!"0x2d87e10.w512.b0", !584, i64 0}
!584 = !{!"0x2d87e10.w1024.b0", !585, i64 0}
!585 = !{!"0x2d87e10", !21, i64 0}
!586 = !{!587, !587, i64 0}
!587 = !{!"0x2d87e10.w8.b8", !578, i64 0}
!588 = !{!589, !589, i64 0}
!589 = !{!"0x2d89220.w8.b0", !590, i64 0}
!590 = !{!"0x2d89220.w16.b0", !591, i64 0}
!591 = !{!"0x2d89220.w32.b0", !592, i64 0}
!592 = !{!"0x2d89220.w64.b0", !593, i64 0}
!593 = !{!"0x2d89220.w128.b0", !594, i64 0}
!594 = !{!"0x2d89220.w256.b0", !595, i64 0}
!595 = !{!"0x2d89220.w512.b0", !596, i64 0}
!596 = !{!"0x2d89220.w1024.b0", !597, i64 0}
!597 = !{!"0x2d89220", !21, i64 0}
!598 = !{!599, !599, i64 0}
!599 = !{!"0x2d89220.w8.b8", !590, i64 0}
!600 = !{!601, !601, i64 0}
!601 = !{!"0x2d8af70.w8.b0", !602, i64 0}
!602 = !{!"0x2d8af70.w16.b0", !603, i64 0}
!603 = !{!"0x2d8af70.w32.b0", !604, i64 0}
!604 = !{!"0x2d8af70.w64.b0", !605, i64 0}
!605 = !{!"0x2d8af70.w128.b0", !606, i64 0}
!606 = !{!"0x2d8af70.w256.b0", !607, i64 0}
!607 = !{!"0x2d8af70.w512.b0", !608, i64 0}
!608 = !{!"0x2d8af70.w1024.b0", !609, i64 0}
!609 = !{!"0x2d8af70", !21, i64 0}
!610 = !{!611, !611, i64 0}
!611 = !{!"0x2d8af70.w8.b8", !602, i64 0}
!612 = !{!613, !613, i64 0}
!613 = !{!"0x2d8af70.w8.b16", !614, i64 0}
!614 = !{!"0x2d8af70.w16.b16", !603, i64 0}
!615 = !{!616, !616, i64 0}
!616 = !{!"0x2d8bd10.w8.b0", !617, i64 0}
!617 = !{!"0x2d8bd10.w16.b0", !618, i64 0}
!618 = !{!"0x2d8bd10.w32.b0", !619, i64 0}
!619 = !{!"0x2d8bd10.w64.b0", !620, i64 0}
!620 = !{!"0x2d8bd10.w128.b0", !621, i64 0}
!621 = !{!"0x2d8bd10.w256.b0", !622, i64 0}
!622 = !{!"0x2d8bd10.w512.b0", !623, i64 0}
!623 = !{!"0x2d8bd10.w1024.b0", !624, i64 0}
!624 = !{!"0x2d8bd10", !21, i64 0}
!625 = !{!626, !626, i64 0}
!626 = !{!"0x2d8bd10.w8.b8", !617, i64 0}
!627 = !{!628, !628, i64 0}
!628 = !{!"0x2d8bd10.w8.b16", !629, i64 0}
!629 = !{!"0x2d8bd10.w16.b16", !618, i64 0}
!630 = !{!631, !631, i64 0}
!631 = !{!"0x2d8e2e0.w8.b0", !632, i64 0}
!632 = !{!"0x2d8e2e0.w16.b0", !633, i64 0}
!633 = !{!"0x2d8e2e0.w32.b0", !634, i64 0}
!634 = !{!"0x2d8e2e0.w64.b0", !635, i64 0}
!635 = !{!"0x2d8e2e0.w128.b0", !636, i64 0}
!636 = !{!"0x2d8e2e0.w256.b0", !637, i64 0}
!637 = !{!"0x2d8e2e0.w512.b0", !638, i64 0}
!638 = !{!"0x2d8e2e0.w1024.b0", !639, i64 0}
!639 = !{!"0x2d8e2e0", !21, i64 0}
!640 = !{!641, !641, i64 0}
!641 = !{!"0x2d8e2e0.w8.b8", !632, i64 0}
!642 = !{!643, !643, i64 0}
!643 = !{!"0x2d8e6a0.w8.b0", !644, i64 0}
!644 = !{!"0x2d8e6a0.w16.b0", !645, i64 0}
!645 = !{!"0x2d8e6a0.w32.b0", !646, i64 0}
!646 = !{!"0x2d8e6a0.w64.b0", !647, i64 0}
!647 = !{!"0x2d8e6a0.w128.b0", !648, i64 0}
!648 = !{!"0x2d8e6a0.w256.b0", !649, i64 0}
!649 = !{!"0x2d8e6a0.w512.b0", !650, i64 0}
!650 = !{!"0x2d8e6a0.w1024.b0", !651, i64 0}
!651 = !{!"0x2d8e6a0", !21, i64 0}
!652 = !{!653, !653, i64 0}
!653 = !{!"0x2d8e6a0.w8.b8", !644, i64 0}
!654 = distinct !DISubprogram(name: "main.tir", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !655)
!655 = !{!656, !657, !658, !659, !660, !661}
!656 = !DILocalVariable(name: "arg1", arg: 1, scope: !654, file: !1, type: !8)
!657 = !DILocalVariable(name: "arg2", arg: 2, scope: !654, file: !1, type: !9)
!658 = !DILocalVariable(name: "arg3", arg: 3, scope: !654, file: !1, type: !7)
!659 = !DILocalVariable(name: "arg4", arg: 4, scope: !654, file: !1, type: !8)
!660 = !DILocalVariable(name: "arg5", arg: 5, scope: !654, file: !1, type: !9)
!661 = !DILocalVariable(name: "arg6", arg: 6, scope: !654, file: !1, type: !8)
!662 = !DILocation(line: 0, scope: !654)
!663 = !{!664, !664, i64 0}
!664 = !{!"0x2f23020.w4.b0", !665, i64 0}
!665 = !{!"0x2f23020.w8.b0", !666, i64 0}
!666 = !{!"0x2f23020.w16.b0", !667, i64 0}
!667 = !{!"0x2f23020.w32.b0", !668, i64 0}
!668 = !{!"0x2f23020.w64.b0", !669, i64 0}
!669 = !{!"0x2f23020.w128.b0", !670, i64 0}
!670 = !{!"0x2f23020.w256.b0", !671, i64 0}
!671 = !{!"0x2f23020.w512.b0", !672, i64 0}
!672 = !{!"0x2f23020.w1024.b0", !673, i64 0}
!673 = !{!"0x2f23020", !21, i64 0}
!674 = !{!675, !675, i64 0}
!675 = !{!"0x2f23020.w4.b4", !665, i64 0}
!676 = !{!677, !677, i64 0}
!677 = !{!"0x2f23020.w4.b8", !678, i64 0}
!678 = !{!"0x2f23020.w8.b8", !666, i64 0}
!679 = !{!680, !680, i64 0}
!680 = !{!"0x44ea440.w8.b0", !681, i64 0}
!681 = !{!"0x44ea440.w16.b0", !682, i64 0}
!682 = !{!"0x44ea440.w32.b0", !683, i64 0}
!683 = !{!"0x44ea440.w64.b0", !684, i64 0}
!684 = !{!"0x44ea440.w128.b0", !685, i64 0}
!685 = !{!"0x44ea440.w256.b0", !686, i64 0}
!686 = !{!"0x44ea440.w512.b0", !687, i64 0}
!687 = !{!"0x44ea440.w1024.b0", !688, i64 0}
!688 = !{!"0x44ea440", !21, i64 0}
!689 = !{!690, !690, i64 0}
!690 = !{!"0x44ea440.w8.b8", !681, i64 0}
!691 = !{!692, !692, i64 0}
!692 = !{!"0x2f22d50.w8.b0", !693, i64 0}
!693 = !{!"0x2f22d50.w16.b0", !694, i64 0}
!694 = !{!"0x2f22d50.w32.b0", !695, i64 0}
!695 = !{!"0x2f22d50.w64.b0", !696, i64 0}
!696 = !{!"0x2f22d50.w128.b0", !697, i64 0}
!697 = !{!"0x2f22d50.w256.b0", !698, i64 0}
!698 = !{!"0x2f22d50.w512.b0", !699, i64 0}
!699 = !{!"0x2f22d50.w1024.b0", !700, i64 0}
!700 = !{!"0x2f22d50", !21, i64 0}
!701 = !{!702, !702, i64 0}
!702 = !{!"0x2f22d50.w8.b8", !693, i64 0}
!703 = !{!704, !704, i64 0}
!704 = !{!"0x2f25640.w8.b0", !705, i64 0}
!705 = !{!"0x2f25640.w16.b0", !706, i64 0}
!706 = !{!"0x2f25640.w32.b0", !707, i64 0}
!707 = !{!"0x2f25640.w64.b0", !708, i64 0}
!708 = !{!"0x2f25640.w128.b0", !709, i64 0}
!709 = !{!"0x2f25640.w256.b0", !710, i64 0}
!710 = !{!"0x2f25640.w512.b0", !711, i64 0}
!711 = !{!"0x2f25640.w1024.b0", !712, i64 0}
!712 = !{!"0x2f25640", !21, i64 0}
!713 = !{!714, !714, i64 0}
!714 = !{!"0x2f25640.w8.b8", !705, i64 0}
!715 = !{!716, !716, i64 0}
!716 = !{!"0x2f25640.w8.b16", !717, i64 0}
!717 = !{!"0x2f25640.w16.b16", !706, i64 0}
!718 = !{!719, !719, i64 0}
!719 = !{!"0x3e09020.w8.b0", !720, i64 0}
!720 = !{!"0x3e09020.w16.b0", !721, i64 0}
!721 = !{!"0x3e09020.w32.b0", !722, i64 0}
!722 = !{!"0x3e09020.w64.b0", !723, i64 0}
!723 = !{!"0x3e09020.w128.b0", !724, i64 0}
!724 = !{!"0x3e09020.w256.b0", !725, i64 0}
!725 = !{!"0x3e09020.w512.b0", !726, i64 0}
!726 = !{!"0x3e09020.w1024.b0", !727, i64 0}
!727 = !{!"0x3e09020", !21, i64 0}
!728 = !{!729, !729, i64 0}
!729 = !{!"0x3e09020.w8.b8", !720, i64 0}
!730 = !{!731, !731, i64 0}
!731 = !{!"0x3e09020.w8.b16", !732, i64 0}
!732 = !{!"0x3e09020.w16.b16", !721, i64 0}
!733 = !{!734, !734, i64 0}
!734 = !{!"0x3e0b490.w8.b0", !735, i64 0}
!735 = !{!"0x3e0b490.w16.b0", !736, i64 0}
!736 = !{!"0x3e0b490.w32.b0", !737, i64 0}
!737 = !{!"0x3e0b490.w64.b0", !738, i64 0}
!738 = !{!"0x3e0b490.w128.b0", !739, i64 0}
!739 = !{!"0x3e0b490.w256.b0", !740, i64 0}
!740 = !{!"0x3e0b490.w512.b0", !741, i64 0}
!741 = !{!"0x3e0b490.w1024.b0", !742, i64 0}
!742 = !{!"0x3e0b490", !21, i64 0}
!743 = !{!744, !744, i64 0}
!744 = !{!"0x3e0b490.w8.b8", !735, i64 0}
!745 = !{!746, !746, i64 0}
!746 = !{!"0x3e0b850.w8.b0", !747, i64 0}
!747 = !{!"0x3e0b850.w16.b0", !748, i64 0}
!748 = !{!"0x3e0b850.w32.b0", !749, i64 0}
!749 = !{!"0x3e0b850.w64.b0", !750, i64 0}
!750 = !{!"0x3e0b850.w128.b0", !751, i64 0}
!751 = !{!"0x3e0b850.w256.b0", !752, i64 0}
!752 = !{!"0x3e0b850.w512.b0", !753, i64 0}
!753 = !{!"0x3e0b850.w1024.b0", !754, i64 0}
!754 = !{!"0x3e0b850", !21, i64 0}
!755 = !{!756, !756, i64 0}
!756 = !{!"0x3e0b850.w8.b8", !747, i64 0}
!757 = distinct !DISubprogram(name: "main.tir", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !758)
!758 = !{!759, !760, !761, !762, !763, !764}
!759 = !DILocalVariable(name: "arg1", arg: 1, scope: !757, file: !1, type: !8)
!760 = !DILocalVariable(name: "arg2", arg: 2, scope: !757, file: !1, type: !9)
!761 = !DILocalVariable(name: "arg3", arg: 3, scope: !757, file: !1, type: !7)
!762 = !DILocalVariable(name: "arg4", arg: 4, scope: !757, file: !1, type: !8)
!763 = !DILocalVariable(name: "arg5", arg: 5, scope: !757, file: !1, type: !9)
!764 = !DILocalVariable(name: "arg6", arg: 6, scope: !757, file: !1, type: !8)
!765 = !DILocation(line: 0, scope: !757)
!766 = !{!767, !767, i64 0}
!767 = !{!"0x2f2eb40.w4.b0", !768, i64 0}
!768 = !{!"0x2f2eb40.w8.b0", !769, i64 0}
!769 = !{!"0x2f2eb40.w16.b0", !770, i64 0}
!770 = !{!"0x2f2eb40.w32.b0", !771, i64 0}
!771 = !{!"0x2f2eb40.w64.b0", !772, i64 0}
!772 = !{!"0x2f2eb40.w128.b0", !773, i64 0}
!773 = !{!"0x2f2eb40.w256.b0", !774, i64 0}
!774 = !{!"0x2f2eb40.w512.b0", !775, i64 0}
!775 = !{!"0x2f2eb40.w1024.b0", !776, i64 0}
!776 = !{!"0x2f2eb40", !21, i64 0}
!777 = !{!778, !778, i64 0}
!778 = !{!"0x2f2eb40.w4.b4", !768, i64 0}
!779 = !{!780, !780, i64 0}
!780 = !{!"0x2f2eb40.w4.b8", !781, i64 0}
!781 = !{!"0x2f2eb40.w8.b8", !769, i64 0}
!782 = !{!783, !783, i64 0}
!783 = !{!"0x2f2eb40.w4.b12", !781, i64 0}
!784 = !{!785, !785, i64 0}
!785 = !{!"0x2f3bf30.w8.b0", !786, i64 0}
!786 = !{!"0x2f3bf30.w16.b0", !787, i64 0}
!787 = !{!"0x2f3bf30.w32.b0", !788, i64 0}
!788 = !{!"0x2f3bf30.w64.b0", !789, i64 0}
!789 = !{!"0x2f3bf30.w128.b0", !790, i64 0}
!790 = !{!"0x2f3bf30.w256.b0", !791, i64 0}
!791 = !{!"0x2f3bf30.w512.b0", !792, i64 0}
!792 = !{!"0x2f3bf30.w1024.b0", !793, i64 0}
!793 = !{!"0x2f3bf30", !21, i64 0}
!794 = !{!795, !795, i64 0}
!795 = !{!"0x2f3bf30.w8.b8", !786, i64 0}
!796 = !{!797, !797, i64 0}
!797 = !{!"0x2f3c2c0.w8.b8", !798, i64 0}
!798 = !{!"0x2f3c2c0.w16.b0", !799, i64 0}
!799 = !{!"0x2f3c2c0.w32.b0", !800, i64 0}
!800 = !{!"0x2f3c2c0.w64.b0", !801, i64 0}
!801 = !{!"0x2f3c2c0.w128.b0", !802, i64 0}
!802 = !{!"0x2f3c2c0.w256.b0", !803, i64 0}
!803 = !{!"0x2f3c2c0.w512.b0", !804, i64 0}
!804 = !{!"0x2f3c2c0.w1024.b0", !805, i64 0}
!805 = !{!"0x2f3c2c0", !21, i64 0}
!806 = !{!807, !807, i64 0}
!807 = !{!"0x2f3f440.w8.b0", !808, i64 0}
!808 = !{!"0x2f3f440.w16.b0", !809, i64 0}
!809 = !{!"0x2f3f440.w32.b0", !810, i64 0}
!810 = !{!"0x2f3f440.w64.b0", !811, i64 0}
!811 = !{!"0x2f3f440.w128.b0", !812, i64 0}
!812 = !{!"0x2f3f440.w256.b0", !813, i64 0}
!813 = !{!"0x2f3f440.w512.b0", !814, i64 0}
!814 = !{!"0x2f3f440.w1024.b0", !815, i64 0}
!815 = !{!"0x2f3f440", !21, i64 0}
!816 = !{!817, !817, i64 0}
!817 = !{!"0x2f3f440.w8.b8", !808, i64 0}
!818 = !{!819, !819, i64 0}
!819 = !{!"0x2f3f440.w8.b16", !820, i64 0}
!820 = !{!"0x2f3f440.w16.b16", !809, i64 0}
!821 = !{!822, !822, i64 0}
!822 = !{!"0x2f402c0.w8.b0", !823, i64 0}
!823 = !{!"0x2f402c0.w16.b0", !824, i64 0}
!824 = !{!"0x2f402c0.w32.b0", !825, i64 0}
!825 = !{!"0x2f402c0.w64.b0", !826, i64 0}
!826 = !{!"0x2f402c0.w128.b0", !827, i64 0}
!827 = !{!"0x2f402c0.w256.b0", !828, i64 0}
!828 = !{!"0x2f402c0.w512.b0", !829, i64 0}
!829 = !{!"0x2f402c0.w1024.b0", !830, i64 0}
!830 = !{!"0x2f402c0", !21, i64 0}
!831 = !{!832, !832, i64 0}
!832 = !{!"0x2f402c0.w8.b8", !823, i64 0}
!833 = !{!834, !834, i64 0}
!834 = !{!"0x2f402c0.w8.b16", !835, i64 0}
!835 = !{!"0x2f402c0.w16.b16", !824, i64 0}
!836 = !{!837, !837, i64 0}
!837 = !{!"0x2f42780.w8.b0", !838, i64 0}
!838 = !{!"0x2f42780.w16.b0", !839, i64 0}
!839 = !{!"0x2f42780.w32.b0", !840, i64 0}
!840 = !{!"0x2f42780.w64.b0", !841, i64 0}
!841 = !{!"0x2f42780.w128.b0", !842, i64 0}
!842 = !{!"0x2f42780.w256.b0", !843, i64 0}
!843 = !{!"0x2f42780.w512.b0", !844, i64 0}
!844 = !{!"0x2f42780.w1024.b0", !845, i64 0}
!845 = !{!"0x2f42780", !21, i64 0}
!846 = !{!847, !847, i64 0}
!847 = !{!"0x2f42780.w8.b8", !838, i64 0}
!848 = !{!849, !849, i64 0}
!849 = !{!"0x2f42c60.w8.b8", !850, i64 0}
!850 = !{!"0x2f42c60.w16.b0", !851, i64 0}
!851 = !{!"0x2f42c60.w32.b0", !852, i64 0}
!852 = !{!"0x2f42c60.w64.b0", !853, i64 0}
!853 = !{!"0x2f42c60.w128.b0", !854, i64 0}
!854 = !{!"0x2f42c60.w256.b0", !855, i64 0}
!855 = !{!"0x2f42c60.w512.b0", !856, i64 0}
!856 = !{!"0x2f42c60.w1024.b0", !857, i64 0}
!857 = !{!"0x2f42c60", !21, i64 0}
!858 = !{!859, !859, i64 0}
!859 = !{!"0x2f44dd0.w8.b0", !860, i64 0}
!860 = !{!"0x2f44dd0.w16.b0", !861, i64 0}
!861 = !{!"0x2f44dd0.w32.b0", !862, i64 0}
!862 = !{!"0x2f44dd0.w64.b0", !863, i64 0}
!863 = !{!"0x2f44dd0.w128.b0", !864, i64 0}
!864 = !{!"0x2f44dd0.w256.b0", !865, i64 0}
!865 = !{!"0x2f44dd0.w512.b0", !866, i64 0}
!866 = !{!"0x2f44dd0.w1024.b0", !867, i64 0}
!867 = !{!"0x2f44dd0", !21, i64 0}
!868 = !{!869, !869, i64 0}
!869 = !{!"0x2f44dd0.w8.b8", !860, i64 0}
!870 = !{!871, !871, i64 0}
!871 = !{!"0x2f45790.w8.b8", !872, i64 0}
!872 = !{!"0x2f45790.w16.b0", !873, i64 0}
!873 = !{!"0x2f45790.w32.b0", !874, i64 0}
!874 = !{!"0x2f45790.w64.b0", !875, i64 0}
!875 = !{!"0x2f45790.w128.b0", !876, i64 0}
!876 = !{!"0x2f45790.w256.b0", !877, i64 0}
!877 = !{!"0x2f45790.w512.b0", !878, i64 0}
!878 = !{!"0x2f45790.w1024.b0", !879, i64 0}
!879 = !{!"0x2f45790", !21, i64 0}
!880 = distinct !DISubprogram(name: "main.tir", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !881)
!881 = !{!882, !883, !884, !885, !886, !887}
!882 = !DILocalVariable(name: "arg1", arg: 1, scope: !880, file: !1, type: !8)
!883 = !DILocalVariable(name: "arg2", arg: 2, scope: !880, file: !1, type: !9)
!884 = !DILocalVariable(name: "arg3", arg: 3, scope: !880, file: !1, type: !7)
!885 = !DILocalVariable(name: "arg4", arg: 4, scope: !880, file: !1, type: !8)
!886 = !DILocalVariable(name: "arg5", arg: 5, scope: !880, file: !1, type: !9)
!887 = !DILocalVariable(name: "arg6", arg: 6, scope: !880, file: !1, type: !8)
!888 = !DILocation(line: 0, scope: !880)
!889 = !{!890, !890, i64 0}
!890 = !{!"0x2f4f970.w4.b0", !891, i64 0}
!891 = !{!"0x2f4f970.w8.b0", !892, i64 0}
!892 = !{!"0x2f4f970.w16.b0", !893, i64 0}
!893 = !{!"0x2f4f970.w32.b0", !894, i64 0}
!894 = !{!"0x2f4f970.w64.b0", !895, i64 0}
!895 = !{!"0x2f4f970.w128.b0", !896, i64 0}
!896 = !{!"0x2f4f970.w256.b0", !897, i64 0}
!897 = !{!"0x2f4f970.w512.b0", !898, i64 0}
!898 = !{!"0x2f4f970.w1024.b0", !899, i64 0}
!899 = !{!"0x2f4f970", !21, i64 0}
!900 = !{!901, !901, i64 0}
!901 = !{!"0x2f4f970.w4.b4", !891, i64 0}
!902 = !{!903, !903, i64 0}
!903 = !{!"0x2f541a0.w8.b0", !904, i64 0}
!904 = !{!"0x2f541a0.w16.b0", !905, i64 0}
!905 = !{!"0x2f541a0.w32.b0", !906, i64 0}
!906 = !{!"0x2f541a0.w64.b0", !907, i64 0}
!907 = !{!"0x2f541a0.w128.b0", !908, i64 0}
!908 = !{!"0x2f541a0.w256.b0", !909, i64 0}
!909 = !{!"0x2f541a0.w512.b0", !910, i64 0}
!910 = !{!"0x2f541a0.w1024.b0", !911, i64 0}
!911 = !{!"0x2f541a0", !21, i64 0}
!912 = !{!913, !913, i64 0}
!913 = !{!"0x2f541a0.w8.b8", !904, i64 0}
!914 = !{!915, !915, i64 0}
!915 = !{!"0x2f541a0.w8.b16", !916, i64 0}
!916 = !{!"0x2f541a0.w16.b16", !905, i64 0}
!917 = !{!918, !918, i64 0}
!918 = !{!"0x2f541a0.w8.b24", !916, i64 0}
!919 = !{!920, !920, i64 0}
!920 = !{!"0x2f5ad10.w8.b8", !921, i64 0}
!921 = !{!"0x2f5ad10.w16.b0", !922, i64 0}
!922 = !{!"0x2f5ad10.w32.b0", !923, i64 0}
!923 = !{!"0x2f5ad10.w64.b0", !924, i64 0}
!924 = !{!"0x2f5ad10.w128.b0", !925, i64 0}
!925 = !{!"0x2f5ad10.w256.b0", !926, i64 0}
!926 = !{!"0x2f5ad10.w512.b0", !927, i64 0}
!927 = !{!"0x2f5ad10.w1024.b0", !928, i64 0}
!928 = !{!"0x2f5ad10", !21, i64 0}
!929 = !{!930, !930, i64 0}
!930 = !{!"0x2f5ad10.w8.b16", !931, i64 0}
!931 = !{!"0x2f5ad10.w16.b16", !922, i64 0}
!932 = !{!933, !933, i64 0}
!933 = !{!"0x2f5ad10.w8.b24", !931, i64 0}
!934 = !{!935, !935, i64 0}
!935 = !{!"0x2f5c6e0.w8.b0", !936, i64 0}
!936 = !{!"0x2f5c6e0.w16.b0", !937, i64 0}
!937 = !{!"0x2f5c6e0.w32.b0", !938, i64 0}
!938 = !{!"0x2f5c6e0.w64.b0", !939, i64 0}
!939 = !{!"0x2f5c6e0.w128.b0", !940, i64 0}
!940 = !{!"0x2f5c6e0.w256.b0", !941, i64 0}
!941 = !{!"0x2f5c6e0.w512.b0", !942, i64 0}
!942 = !{!"0x2f5c6e0.w1024.b0", !943, i64 0}
!943 = !{!"0x2f5c6e0", !21, i64 0}
!944 = !{!945, !945, i64 0}
!945 = !{!"0x2f5c6e0.w8.b8", !936, i64 0}
!946 = !{!947, !947, i64 0}
!947 = !{!"0x2f5c6e0.w8.b16", !948, i64 0}
!948 = !{!"0x2f5c6e0.w16.b16", !937, i64 0}
!949 = !{!950, !950, i64 0}
!950 = !{!"0x2f5c6e0.w8.b24", !948, i64 0}
!951 = !{!952, !952, i64 0}
!952 = !{!"0x2f5ddd0.w8.b8", !953, i64 0}
!953 = !{!"0x2f5ddd0.w16.b0", !954, i64 0}
!954 = !{!"0x2f5ddd0.w32.b0", !955, i64 0}
!955 = !{!"0x2f5ddd0.w64.b0", !956, i64 0}
!956 = !{!"0x2f5ddd0.w128.b0", !957, i64 0}
!957 = !{!"0x2f5ddd0.w256.b0", !958, i64 0}
!958 = !{!"0x2f5ddd0.w512.b0", !959, i64 0}
!959 = !{!"0x2f5ddd0.w1024.b0", !960, i64 0}
!960 = !{!"0x2f5ddd0", !21, i64 0}
!961 = !{!962, !962, i64 0}
!962 = !{!"0x2f5ddd0.w8.b16", !963, i64 0}
!963 = !{!"0x2f5ddd0.w16.b16", !954, i64 0}
!964 = !{!965, !965, i64 0}
!965 = !{!"0x2f5ddd0.w8.b24", !963, i64 0}
!966 = distinct !DISubprogram(name: "main.tir", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !967)
!967 = !{!968, !969, !970, !971, !972, !973}
!968 = !DILocalVariable(name: "arg1", arg: 1, scope: !966, file: !1, type: !8)
!969 = !DILocalVariable(name: "arg2", arg: 2, scope: !966, file: !1, type: !9)
!970 = !DILocalVariable(name: "arg3", arg: 3, scope: !966, file: !1, type: !7)
!971 = !DILocalVariable(name: "arg4", arg: 4, scope: !966, file: !1, type: !8)
!972 = !DILocalVariable(name: "arg5", arg: 5, scope: !966, file: !1, type: !9)
!973 = !DILocalVariable(name: "arg6", arg: 6, scope: !966, file: !1, type: !8)
!974 = !DILocation(line: 0, scope: !966)
!975 = !{!976, !976, i64 0}
!976 = !{!"0x2f2bba0.w4.b0", !977, i64 0}
!977 = !{!"0x2f2bba0.w8.b0", !978, i64 0}
!978 = !{!"0x2f2bba0.w16.b0", !979, i64 0}
!979 = !{!"0x2f2bba0.w32.b0", !980, i64 0}
!980 = !{!"0x2f2bba0.w64.b0", !981, i64 0}
!981 = !{!"0x2f2bba0.w128.b0", !982, i64 0}
!982 = !{!"0x2f2bba0.w256.b0", !983, i64 0}
!983 = !{!"0x2f2bba0.w512.b0", !984, i64 0}
!984 = !{!"0x2f2bba0.w1024.b0", !985, i64 0}
!985 = !{!"0x2f2bba0", !21, i64 0}
!986 = !{!987, !987, i64 0}
!987 = !{!"0x2f2bba0.w4.b4", !977, i64 0}
!988 = !{!989, !989, i64 0}
!989 = !{!"0x2f31c10.w8.b0", !990, i64 0}
!990 = !{!"0x2f31c10.w16.b0", !991, i64 0}
!991 = !{!"0x2f31c10.w32.b0", !992, i64 0}
!992 = !{!"0x2f31c10.w64.b0", !993, i64 0}
!993 = !{!"0x2f31c10.w128.b0", !994, i64 0}
!994 = !{!"0x2f31c10.w256.b0", !995, i64 0}
!995 = !{!"0x2f31c10.w512.b0", !996, i64 0}
!996 = !{!"0x2f31c10.w1024.b0", !997, i64 0}
!997 = !{!"0x2f31c10", !21, i64 0}
!998 = !{!999, !999, i64 0}
!999 = !{!"0x2f31c10.w8.b8", !990, i64 0}
!1000 = !{!1001, !1001, i64 0}
!1001 = !{!"0x2f31c10.w8.b16", !1002, i64 0}
!1002 = !{!"0x2f31c10.w16.b16", !991, i64 0}
!1003 = !{!1004, !1004, i64 0}
!1004 = !{!"0x2f2f990.w8.b8", !1005, i64 0}
!1005 = !{!"0x2f2f990.w16.b0", !1006, i64 0}
!1006 = !{!"0x2f2f990.w32.b0", !1007, i64 0}
!1007 = !{!"0x2f2f990.w64.b0", !1008, i64 0}
!1008 = !{!"0x2f2f990.w128.b0", !1009, i64 0}
!1009 = !{!"0x2f2f990.w256.b0", !1010, i64 0}
!1010 = !{!"0x2f2f990.w512.b0", !1011, i64 0}
!1011 = !{!"0x2f2f990.w1024.b0", !1012, i64 0}
!1012 = !{!"0x2f2f990", !21, i64 0}
!1013 = !{!1014, !1014, i64 0}
!1014 = !{!"0x2f2f990.w8.b16", !1015, i64 0}
!1015 = !{!"0x2f2f990.w16.b16", !1006, i64 0}
!1016 = !{!1017, !1017, i64 0}
!1017 = !{!"0x2f37870.w8.b0", !1018, i64 0}
!1018 = !{!"0x2f37870.w16.b0", !1019, i64 0}
!1019 = !{!"0x2f37870.w32.b0", !1020, i64 0}
!1020 = !{!"0x2f37870.w64.b0", !1021, i64 0}
!1021 = !{!"0x2f37870.w128.b0", !1022, i64 0}
!1022 = !{!"0x2f37870.w256.b0", !1023, i64 0}
!1023 = !{!"0x2f37870.w512.b0", !1024, i64 0}
!1024 = !{!"0x2f37870.w1024.b0", !1025, i64 0}
!1025 = !{!"0x2f37870", !21, i64 0}
!1026 = !{!1027, !1027, i64 0}
!1027 = !{!"0x2f37870.w8.b8", !1018, i64 0}
!1028 = !{!1029, !1029, i64 0}
!1029 = !{!"0x2f38950.w8.b0", !1030, i64 0}
!1030 = !{!"0x2f38950.w16.b0", !1031, i64 0}
!1031 = !{!"0x2f38950.w32.b0", !1032, i64 0}
!1032 = !{!"0x2f38950.w64.b0", !1033, i64 0}
!1033 = !{!"0x2f38950.w128.b0", !1034, i64 0}
!1034 = !{!"0x2f38950.w256.b0", !1035, i64 0}
!1035 = !{!"0x2f38950.w512.b0", !1036, i64 0}
!1036 = !{!"0x2f38950.w1024.b0", !1037, i64 0}
!1037 = !{!"0x2f38950", !21, i64 0}
!1038 = !{!1039, !1039, i64 0}
!1039 = !{!"0x2f38950.w8.b8", !1030, i64 0}
!1040 = distinct !DISubprogram(name: "main.tir", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1041)
!1041 = !{!1042, !1043, !1044, !1045, !1046, !1047}
!1042 = !DILocalVariable(name: "arg1", arg: 1, scope: !1040, file: !1, type: !8)
!1043 = !DILocalVariable(name: "arg2", arg: 2, scope: !1040, file: !1, type: !9)
!1044 = !DILocalVariable(name: "arg3", arg: 3, scope: !1040, file: !1, type: !7)
!1045 = !DILocalVariable(name: "arg4", arg: 4, scope: !1040, file: !1, type: !8)
!1046 = !DILocalVariable(name: "arg5", arg: 5, scope: !1040, file: !1, type: !9)
!1047 = !DILocalVariable(name: "arg6", arg: 6, scope: !1040, file: !1, type: !8)
!1048 = !DILocation(line: 0, scope: !1040)
!1049 = !{!1050, !1050, i64 0}
!1050 = !{!"0x2f248f0.w4.b0", !1051, i64 0}
!1051 = !{!"0x2f248f0.w8.b0", !1052, i64 0}
!1052 = !{!"0x2f248f0.w16.b0", !1053, i64 0}
!1053 = !{!"0x2f248f0.w32.b0", !1054, i64 0}
!1054 = !{!"0x2f248f0.w64.b0", !1055, i64 0}
!1055 = !{!"0x2f248f0.w128.b0", !1056, i64 0}
!1056 = !{!"0x2f248f0.w256.b0", !1057, i64 0}
!1057 = !{!"0x2f248f0.w512.b0", !1058, i64 0}
!1058 = !{!"0x2f248f0.w1024.b0", !1059, i64 0}
!1059 = !{!"0x2f248f0", !21, i64 0}
!1060 = !{!1061, !1061, i64 0}
!1061 = !{!"0x2f248f0.w4.b4", !1051, i64 0}
!1062 = !{!1063, !1063, i64 0}
!1063 = !{!"0x3e0ea60.w8.b0", !1064, i64 0}
!1064 = !{!"0x3e0ea60.w16.b0", !1065, i64 0}
!1065 = !{!"0x3e0ea60.w32.b0", !1066, i64 0}
!1066 = !{!"0x3e0ea60.w64.b0", !1067, i64 0}
!1067 = !{!"0x3e0ea60.w128.b0", !1068, i64 0}
!1068 = !{!"0x3e0ea60.w256.b0", !1069, i64 0}
!1069 = !{!"0x3e0ea60.w512.b0", !1070, i64 0}
!1070 = !{!"0x3e0ea60.w1024.b0", !1071, i64 0}
!1071 = !{!"0x3e0ea60", !21, i64 0}
!1072 = !{!1073, !1073, i64 0}
!1073 = !{!"0x3e0ea60.w8.b8", !1064, i64 0}
!1074 = !{!1075, !1075, i64 0}
!1075 = !{!"0x3e0ea60.w8.b16", !1076, i64 0}
!1076 = !{!"0x3e0ea60.w16.b16", !1065, i64 0}
!1077 = !{!1078, !1078, i64 0}
!1078 = !{!"0x3e0ea60.w8.b24", !1076, i64 0}
!1079 = !{!1080, !1080, i64 0}
!1080 = !{!"0x2d6aff0.w8.b8", !1081, i64 0}
!1081 = !{!"0x2d6aff0.w16.b0", !1082, i64 0}
!1082 = !{!"0x2d6aff0.w32.b0", !1083, i64 0}
!1083 = !{!"0x2d6aff0.w64.b0", !1084, i64 0}
!1084 = !{!"0x2d6aff0.w128.b0", !1085, i64 0}
!1085 = !{!"0x2d6aff0.w256.b0", !1086, i64 0}
!1086 = !{!"0x2d6aff0.w512.b0", !1087, i64 0}
!1087 = !{!"0x2d6aff0.w1024.b0", !1088, i64 0}
!1088 = !{!"0x2d6aff0", !21, i64 0}
!1089 = !{!1090, !1090, i64 0}
!1090 = !{!"0x2d6aff0.w8.b16", !1091, i64 0}
!1091 = !{!"0x2d6aff0.w16.b16", !1082, i64 0}
!1092 = !{!1093, !1093, i64 0}
!1093 = !{!"0x2d6aff0.w8.b24", !1091, i64 0}
!1094 = !{!1095, !1095, i64 0}
!1095 = !{!"0x2d6ca20.w8.b0", !1096, i64 0}
!1096 = !{!"0x2d6ca20.w16.b0", !1097, i64 0}
!1097 = !{!"0x2d6ca20.w32.b0", !1098, i64 0}
!1098 = !{!"0x2d6ca20.w64.b0", !1099, i64 0}
!1099 = !{!"0x2d6ca20.w128.b0", !1100, i64 0}
!1100 = !{!"0x2d6ca20.w256.b0", !1101, i64 0}
!1101 = !{!"0x2d6ca20.w512.b0", !1102, i64 0}
!1102 = !{!"0x2d6ca20.w1024.b0", !1103, i64 0}
!1103 = !{!"0x2d6ca20", !21, i64 0}
!1104 = !{!1105, !1105, i64 0}
!1105 = !{!"0x2d6ca20.w8.b8", !1096, i64 0}
!1106 = !{!1107, !1107, i64 0}
!1107 = !{!"0x2d6ca20.w8.b16", !1108, i64 0}
!1108 = !{!"0x2d6ca20.w16.b16", !1097, i64 0}
!1109 = !{!1110, !1110, i64 0}
!1110 = !{!"0x2d6de80.w8.b0", !1111, i64 0}
!1111 = !{!"0x2d6de80.w16.b0", !1112, i64 0}
!1112 = !{!"0x2d6de80.w32.b0", !1113, i64 0}
!1113 = !{!"0x2d6de80.w64.b0", !1114, i64 0}
!1114 = !{!"0x2d6de80.w128.b0", !1115, i64 0}
!1115 = !{!"0x2d6de80.w256.b0", !1116, i64 0}
!1116 = !{!"0x2d6de80.w512.b0", !1117, i64 0}
!1117 = !{!"0x2d6de80.w1024.b0", !1118, i64 0}
!1118 = !{!"0x2d6de80", !21, i64 0}
!1119 = !{!1120, !1120, i64 0}
!1120 = !{!"0x2d6de80.w8.b8", !1111, i64 0}
!1121 = !{!1122, !1122, i64 0}
!1122 = !{!"0x2d6de80.w8.b16", !1123, i64 0}
!1123 = !{!"0x2d6de80.w16.b16", !1112, i64 0}
!1124 = distinct !DISubprogram(name: "main.tir", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1125)
!1125 = !{!1126, !1127, !1128, !1129, !1130, !1131}
!1126 = !DILocalVariable(name: "arg1", arg: 1, scope: !1124, file: !1, type: !8)
!1127 = !DILocalVariable(name: "arg2", arg: 2, scope: !1124, file: !1, type: !9)
!1128 = !DILocalVariable(name: "arg3", arg: 3, scope: !1124, file: !1, type: !7)
!1129 = !DILocalVariable(name: "arg4", arg: 4, scope: !1124, file: !1, type: !8)
!1130 = !DILocalVariable(name: "arg5", arg: 5, scope: !1124, file: !1, type: !9)
!1131 = !DILocalVariable(name: "arg6", arg: 6, scope: !1124, file: !1, type: !8)
!1132 = !DILocation(line: 0, scope: !1124)
!1133 = !{!1134, !1134, i64 0}
!1134 = !{!"0x2d739f0.w4.b0", !1135, i64 0}
!1135 = !{!"0x2d739f0.w8.b0", !1136, i64 0}
!1136 = !{!"0x2d739f0.w16.b0", !1137, i64 0}
!1137 = !{!"0x2d739f0.w32.b0", !1138, i64 0}
!1138 = !{!"0x2d739f0.w64.b0", !1139, i64 0}
!1139 = !{!"0x2d739f0.w128.b0", !1140, i64 0}
!1140 = !{!"0x2d739f0.w256.b0", !1141, i64 0}
!1141 = !{!"0x2d739f0.w512.b0", !1142, i64 0}
!1142 = !{!"0x2d739f0.w1024.b0", !1143, i64 0}
!1143 = !{!"0x2d739f0", !21, i64 0}
!1144 = !{!1145, !1145, i64 0}
!1145 = !{!"0x2d739f0.w4.b4", !1135, i64 0}
!1146 = !{!1147, !1147, i64 0}
!1147 = !{!"0x2d739f0.w4.b8", !1148, i64 0}
!1148 = !{!"0x2d739f0.w8.b8", !1136, i64 0}
!1149 = !{!1150, !1150, i64 0}
!1150 = !{!"0x2d739f0.w4.b12", !1148, i64 0}
!1151 = !{!1152, !1152, i64 0}
!1152 = !{!"0x2d92030.w8.b0", !1153, i64 0}
!1153 = !{!"0x2d92030.w16.b0", !1154, i64 0}
!1154 = !{!"0x2d92030.w32.b0", !1155, i64 0}
!1155 = !{!"0x2d92030.w64.b0", !1156, i64 0}
!1156 = !{!"0x2d92030.w128.b0", !1157, i64 0}
!1157 = !{!"0x2d92030.w256.b0", !1158, i64 0}
!1158 = !{!"0x2d92030.w512.b0", !1159, i64 0}
!1159 = !{!"0x2d92030.w1024.b0", !1160, i64 0}
!1160 = !{!"0x2d92030", !21, i64 0}
!1161 = !{!1162, !1162, i64 0}
!1162 = !{!"0x2d92030.w8.b8", !1153, i64 0}
!1163 = !{!1164, !1164, i64 0}
!1164 = !{!"0x2d93a70.w8.b0", !1165, i64 0}
!1165 = !{!"0x2d93a70.w16.b0", !1166, i64 0}
!1166 = !{!"0x2d93a70.w32.b0", !1167, i64 0}
!1167 = !{!"0x2d93a70.w64.b0", !1168, i64 0}
!1168 = !{!"0x2d93a70.w128.b0", !1169, i64 0}
!1169 = !{!"0x2d93a70.w256.b0", !1170, i64 0}
!1170 = !{!"0x2d93a70.w512.b0", !1171, i64 0}
!1171 = !{!"0x2d93a70.w1024.b0", !1172, i64 0}
!1172 = !{!"0x2d93a70", !21, i64 0}
!1173 = !{!1174, !1174, i64 0}
!1174 = !{!"0x2d93a70.w8.b8", !1165, i64 0}
!1175 = !{!1176, !1176, i64 0}
!1176 = !{!"0x2d954a0.w8.b0", !1177, i64 0}
!1177 = !{!"0x2d954a0.w16.b0", !1178, i64 0}
!1178 = !{!"0x2d954a0.w32.b0", !1179, i64 0}
!1179 = !{!"0x2d954a0.w64.b0", !1180, i64 0}
!1180 = !{!"0x2d954a0.w128.b0", !1181, i64 0}
!1181 = !{!"0x2d954a0.w256.b0", !1182, i64 0}
!1182 = !{!"0x2d954a0.w512.b0", !1183, i64 0}
!1183 = !{!"0x2d954a0.w1024.b0", !1184, i64 0}
!1184 = !{!"0x2d954a0", !21, i64 0}
!1185 = !{!1186, !1186, i64 0}
!1186 = !{!"0x2d959b0.w8.b0", !1187, i64 0}
!1187 = !{!"0x2d959b0.w16.b0", !1188, i64 0}
!1188 = !{!"0x2d959b0.w32.b0", !1189, i64 0}
!1189 = !{!"0x2d959b0.w64.b0", !1190, i64 0}
!1190 = !{!"0x2d959b0.w128.b0", !1191, i64 0}
!1191 = !{!"0x2d959b0.w256.b0", !1192, i64 0}
!1192 = !{!"0x2d959b0.w512.b0", !1193, i64 0}
!1193 = !{!"0x2d959b0.w1024.b0", !1194, i64 0}
!1194 = !{!"0x2d959b0", !21, i64 0}
!1195 = !{!1196, !1196, i64 0}
!1196 = !{!"0x2d97ee0.w8.b0", !1197, i64 0}
!1197 = !{!"0x2d97ee0.w16.b0", !1198, i64 0}
!1198 = !{!"0x2d97ee0.w32.b0", !1199, i64 0}
!1199 = !{!"0x2d97ee0.w64.b0", !1200, i64 0}
!1200 = !{!"0x2d97ee0.w128.b0", !1201, i64 0}
!1201 = !{!"0x2d97ee0.w256.b0", !1202, i64 0}
!1202 = !{!"0x2d97ee0.w512.b0", !1203, i64 0}
!1203 = !{!"0x2d97ee0.w1024.b0", !1204, i64 0}
!1204 = !{!"0x2d97ee0", !21, i64 0}
!1205 = !{!1206, !1206, i64 0}
!1206 = !{!"0x2d97ee0.w8.b8", !1197, i64 0}
!1207 = !{!1208, !1208, i64 0}
!1208 = !{!"0x2d97ee0.w8.b16", !1209, i64 0}
!1209 = !{!"0x2d97ee0.w16.b16", !1198, i64 0}
!1210 = !{!1211, !1211, i64 0}
!1211 = !{!"0x2d992f0.w8.b8", !1212, i64 0}
!1212 = !{!"0x2d992f0.w16.b0", !1213, i64 0}
!1213 = !{!"0x2d992f0.w32.b0", !1214, i64 0}
!1214 = !{!"0x2d992f0.w64.b0", !1215, i64 0}
!1215 = !{!"0x2d992f0.w128.b0", !1216, i64 0}
!1216 = !{!"0x2d992f0.w256.b0", !1217, i64 0}
!1217 = !{!"0x2d992f0.w512.b0", !1218, i64 0}
!1218 = !{!"0x2d992f0.w1024.b0", !1219, i64 0}
!1219 = !{!"0x2d992f0", !21, i64 0}
!1220 = !{!1221, !1221, i64 0}
!1221 = !{!"0x2d992f0.w8.b16", !1222, i64 0}
!1222 = !{!"0x2d992f0.w16.b16", !1213, i64 0}
!1223 = !{!1224, !1224, i64 0}
!1224 = !{!"0x2d9af10.w8.b0", !1225, i64 0}
!1225 = !{!"0x2d9af10.w16.b0", !1226, i64 0}
!1226 = !{!"0x2d9af10.w32.b0", !1227, i64 0}
!1227 = !{!"0x2d9af10.w64.b0", !1228, i64 0}
!1228 = !{!"0x2d9af10.w128.b0", !1229, i64 0}
!1229 = !{!"0x2d9af10.w256.b0", !1230, i64 0}
!1230 = !{!"0x2d9af10.w512.b0", !1231, i64 0}
!1231 = !{!"0x2d9af10.w1024.b0", !1232, i64 0}
!1232 = !{!"0x2d9af10", !21, i64 0}
!1233 = !{!1234, !1234, i64 0}
!1234 = !{!"0x2d9af10.w8.b8", !1225, i64 0}
!1235 = !{!1236, !1236, i64 0}
!1236 = !{!"0x2d9af10.w8.b16", !1237, i64 0}
!1237 = !{!"0x2d9af10.w16.b16", !1226, i64 0}
!1238 = !{!1239, !1239, i64 0}
!1239 = !{!"0x2f27e80.w8.b8", !1240, i64 0}
!1240 = !{!"0x2f27e80.w16.b0", !1241, i64 0}
!1241 = !{!"0x2f27e80.w32.b0", !1242, i64 0}
!1242 = !{!"0x2f27e80.w64.b0", !1243, i64 0}
!1243 = !{!"0x2f27e80.w128.b0", !1244, i64 0}
!1244 = !{!"0x2f27e80.w256.b0", !1245, i64 0}
!1245 = !{!"0x2f27e80.w512.b0", !1246, i64 0}
!1246 = !{!"0x2f27e80.w1024.b0", !1247, i64 0}
!1247 = !{!"0x2f27e80", !21, i64 0}
!1248 = !{!1249, !1249, i64 0}
!1249 = !{!"0x2f27e80.w8.b16", !1250, i64 0}
!1250 = !{!"0x2f27e80.w16.b16", !1241, i64 0}
!1251 = distinct !DISubprogram(name: "main.tir", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1252)
!1252 = !{!1253, !1254, !1255, !1256, !1257, !1258}
!1253 = !DILocalVariable(name: "arg1", arg: 1, scope: !1251, file: !1, type: !8)
!1254 = !DILocalVariable(name: "arg2", arg: 2, scope: !1251, file: !1, type: !9)
!1255 = !DILocalVariable(name: "arg3", arg: 3, scope: !1251, file: !1, type: !7)
!1256 = !DILocalVariable(name: "arg4", arg: 4, scope: !1251, file: !1, type: !8)
!1257 = !DILocalVariable(name: "arg5", arg: 5, scope: !1251, file: !1, type: !9)
!1258 = !DILocalVariable(name: "arg6", arg: 6, scope: !1251, file: !1, type: !8)
!1259 = !DILocation(line: 0, scope: !1251)
!1260 = !{!1261, !1261, i64 0}
!1261 = !{!"0x2fab830.w4.b0", !1262, i64 0}
!1262 = !{!"0x2fab830.w8.b0", !1263, i64 0}
!1263 = !{!"0x2fab830.w16.b0", !1264, i64 0}
!1264 = !{!"0x2fab830.w32.b0", !1265, i64 0}
!1265 = !{!"0x2fab830.w64.b0", !1266, i64 0}
!1266 = !{!"0x2fab830.w128.b0", !1267, i64 0}
!1267 = !{!"0x2fab830.w256.b0", !1268, i64 0}
!1268 = !{!"0x2fab830.w512.b0", !1269, i64 0}
!1269 = !{!"0x2fab830.w1024.b0", !1270, i64 0}
!1270 = !{!"0x2fab830", !21, i64 0}
!1271 = !{!1272, !1272, i64 0}
!1272 = !{!"0x2fab830.w4.b4", !1262, i64 0}
!1273 = !{!1274, !1274, i64 0}
!1274 = !{!"0x2fab830.w4.b8", !1275, i64 0}
!1275 = !{!"0x2fab830.w8.b8", !1263, i64 0}
!1276 = !{!1277, !1277, i64 0}
!1277 = !{!"0x2fb3bc0.w8.b0", !1278, i64 0}
!1278 = !{!"0x2fb3bc0.w16.b0", !1279, i64 0}
!1279 = !{!"0x2fb3bc0.w32.b0", !1280, i64 0}
!1280 = !{!"0x2fb3bc0.w64.b0", !1281, i64 0}
!1281 = !{!"0x2fb3bc0.w128.b0", !1282, i64 0}
!1282 = !{!"0x2fb3bc0.w256.b0", !1283, i64 0}
!1283 = !{!"0x2fb3bc0.w512.b0", !1284, i64 0}
!1284 = !{!"0x2fb3bc0.w1024.b0", !1285, i64 0}
!1285 = !{!"0x2fb3bc0", !21, i64 0}
!1286 = !{!1287, !1287, i64 0}
!1287 = !{!"0x2fb3bc0.w8.b8", !1278, i64 0}
!1288 = !{!1289, !1289, i64 0}
!1289 = !{!"0x2fb3e70.w8.b0", !1290, i64 0}
!1290 = !{!"0x2fb3e70.w16.b0", !1291, i64 0}
!1291 = !{!"0x2fb3e70.w32.b0", !1292, i64 0}
!1292 = !{!"0x2fb3e70.w64.b0", !1293, i64 0}
!1293 = !{!"0x2fb3e70.w128.b0", !1294, i64 0}
!1294 = !{!"0x2fb3e70.w256.b0", !1295, i64 0}
!1295 = !{!"0x2fb3e70.w512.b0", !1296, i64 0}
!1296 = !{!"0x2fb3e70.w1024.b0", !1297, i64 0}
!1297 = !{!"0x2fb3e70", !21, i64 0}
!1298 = !{!1299, !1299, i64 0}
!1299 = !{!"0x2fb3e70.w8.b8", !1290, i64 0}
!1300 = !{!1301, !1301, i64 0}
!1301 = !{!"0x2fb7020.w8.b0", !1302, i64 0}
!1302 = !{!"0x2fb7020.w16.b0", !1303, i64 0}
!1303 = !{!"0x2fb7020.w32.b0", !1304, i64 0}
!1304 = !{!"0x2fb7020.w64.b0", !1305, i64 0}
!1305 = !{!"0x2fb7020.w128.b0", !1306, i64 0}
!1306 = !{!"0x2fb7020.w256.b0", !1307, i64 0}
!1307 = !{!"0x2fb7020.w512.b0", !1308, i64 0}
!1308 = !{!"0x2fb7020.w1024.b0", !1309, i64 0}
!1309 = !{!"0x2fb7020", !21, i64 0}
!1310 = !{!1311, !1311, i64 0}
!1311 = !{!"0x2fb7320.w8.b0", !1312, i64 0}
!1312 = !{!"0x2fb7320.w16.b0", !1313, i64 0}
!1313 = !{!"0x2fb7320.w32.b0", !1314, i64 0}
!1314 = !{!"0x2fb7320.w64.b0", !1315, i64 0}
!1315 = !{!"0x2fb7320.w128.b0", !1316, i64 0}
!1316 = !{!"0x2fb7320.w256.b0", !1317, i64 0}
!1317 = !{!"0x2fb7320.w512.b0", !1318, i64 0}
!1318 = !{!"0x2fb7320.w1024.b0", !1319, i64 0}
!1319 = !{!"0x2fb7320", !21, i64 0}
!1320 = !{!1321, !1321, i64 0}
!1321 = !{!"0x2fb9c60.w8.b0", !1322, i64 0}
!1322 = !{!"0x2fb9c60.w16.b0", !1323, i64 0}
!1323 = !{!"0x2fb9c60.w32.b0", !1324, i64 0}
!1324 = !{!"0x2fb9c60.w64.b0", !1325, i64 0}
!1325 = !{!"0x2fb9c60.w128.b0", !1326, i64 0}
!1326 = !{!"0x2fb9c60.w256.b0", !1327, i64 0}
!1327 = !{!"0x2fb9c60.w512.b0", !1328, i64 0}
!1328 = !{!"0x2fb9c60.w1024.b0", !1329, i64 0}
!1329 = !{!"0x2fb9c60", !21, i64 0}
!1330 = !{!1331, !1331, i64 0}
!1331 = !{!"0x2fb9c60.w8.b8", !1322, i64 0}
!1332 = !{!1333, !1333, i64 0}
!1333 = !{!"0x2fba0b0.w8.b0", !1334, i64 0}
!1334 = !{!"0x2fba0b0.w16.b0", !1335, i64 0}
!1335 = !{!"0x2fba0b0.w32.b0", !1336, i64 0}
!1336 = !{!"0x2fba0b0.w64.b0", !1337, i64 0}
!1337 = !{!"0x2fba0b0.w128.b0", !1338, i64 0}
!1338 = !{!"0x2fba0b0.w256.b0", !1339, i64 0}
!1339 = !{!"0x2fba0b0.w512.b0", !1340, i64 0}
!1340 = !{!"0x2fba0b0.w1024.b0", !1341, i64 0}
!1341 = !{!"0x2fba0b0", !21, i64 0}
!1342 = !{!1343, !1343, i64 0}
!1343 = !{!"0x2fba0b0.w8.b8", !1334, i64 0}
!1344 = distinct !DISubprogram(name: "main.tir", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1345)
!1345 = !{!1346, !1347, !1348, !1349, !1350, !1351}
!1346 = !DILocalVariable(name: "arg1", arg: 1, scope: !1344, file: !1, type: !8)
!1347 = !DILocalVariable(name: "arg2", arg: 2, scope: !1344, file: !1, type: !9)
!1348 = !DILocalVariable(name: "arg3", arg: 3, scope: !1344, file: !1, type: !7)
!1349 = !DILocalVariable(name: "arg4", arg: 4, scope: !1344, file: !1, type: !8)
!1350 = !DILocalVariable(name: "arg5", arg: 5, scope: !1344, file: !1, type: !9)
!1351 = !DILocalVariable(name: "arg6", arg: 6, scope: !1344, file: !1, type: !8)
!1352 = !DILocation(line: 0, scope: !1344)
!1353 = !{!1354, !1354, i64 0}
!1354 = !{!"0x2f5a9c0.w4.b0", !1355, i64 0}
!1355 = !{!"0x2f5a9c0.w8.b0", !1356, i64 0}
!1356 = !{!"0x2f5a9c0.w16.b0", !1357, i64 0}
!1357 = !{!"0x2f5a9c0.w32.b0", !1358, i64 0}
!1358 = !{!"0x2f5a9c0.w64.b0", !1359, i64 0}
!1359 = !{!"0x2f5a9c0.w128.b0", !1360, i64 0}
!1360 = !{!"0x2f5a9c0.w256.b0", !1361, i64 0}
!1361 = !{!"0x2f5a9c0.w512.b0", !1362, i64 0}
!1362 = !{!"0x2f5a9c0.w1024.b0", !1363, i64 0}
!1363 = !{!"0x2f5a9c0", !21, i64 0}
!1364 = !{!1365, !1365, i64 0}
!1365 = !{!"0x2f5a9c0.w4.b4", !1355, i64 0}
!1366 = !{!1367, !1367, i64 0}
!1367 = !{!"0x2f5a9c0.w4.b8", !1368, i64 0}
!1368 = !{!"0x2f5a9c0.w8.b8", !1356, i64 0}
!1369 = !{!1370, !1370, i64 0}
!1370 = !{!"0x2f60a80.w8.b0", !1371, i64 0}
!1371 = !{!"0x2f60a80.w16.b0", !1372, i64 0}
!1372 = !{!"0x2f60a80.w32.b0", !1373, i64 0}
!1373 = !{!"0x2f60a80.w64.b0", !1374, i64 0}
!1374 = !{!"0x2f60a80.w128.b0", !1375, i64 0}
!1375 = !{!"0x2f60a80.w256.b0", !1376, i64 0}
!1376 = !{!"0x2f60a80.w512.b0", !1377, i64 0}
!1377 = !{!"0x2f60a80.w1024.b0", !1378, i64 0}
!1378 = !{!"0x2f60a80", !21, i64 0}
!1379 = !{!1380, !1380, i64 0}
!1380 = !{!"0x2f60a80.w8.b8", !1371, i64 0}
!1381 = !{!1382, !1382, i64 0}
!1382 = !{!"0x2f60db0.w8.b0", !1383, i64 0}
!1383 = !{!"0x2f60db0.w16.b0", !1384, i64 0}
!1384 = !{!"0x2f60db0.w32.b0", !1385, i64 0}
!1385 = !{!"0x2f60db0.w64.b0", !1386, i64 0}
!1386 = !{!"0x2f60db0.w128.b0", !1387, i64 0}
!1387 = !{!"0x2f60db0.w256.b0", !1388, i64 0}
!1388 = !{!"0x2f60db0.w512.b0", !1389, i64 0}
!1389 = !{!"0x2f60db0.w1024.b0", !1390, i64 0}
!1390 = !{!"0x2f60db0", !21, i64 0}
!1391 = !{!1392, !1392, i64 0}
!1392 = !{!"0x2f60db0.w8.b8", !1383, i64 0}
!1393 = !{!1394, !1394, i64 0}
!1394 = !{!"0x2f63eb0.w8.b0", !1395, i64 0}
!1395 = !{!"0x2f63eb0.w16.b0", !1396, i64 0}
!1396 = !{!"0x2f63eb0.w32.b0", !1397, i64 0}
!1397 = !{!"0x2f63eb0.w64.b0", !1398, i64 0}
!1398 = !{!"0x2f63eb0.w128.b0", !1399, i64 0}
!1399 = !{!"0x2f63eb0.w256.b0", !1400, i64 0}
!1400 = !{!"0x2f63eb0.w512.b0", !1401, i64 0}
!1401 = !{!"0x2f63eb0.w1024.b0", !1402, i64 0}
!1402 = !{!"0x2f63eb0", !21, i64 0}
!1403 = !{!1404, !1404, i64 0}
!1404 = !{!"0x2f641b0.w8.b0", !1405, i64 0}
!1405 = !{!"0x2f641b0.w16.b0", !1406, i64 0}
!1406 = !{!"0x2f641b0.w32.b0", !1407, i64 0}
!1407 = !{!"0x2f641b0.w64.b0", !1408, i64 0}
!1408 = !{!"0x2f641b0.w128.b0", !1409, i64 0}
!1409 = !{!"0x2f641b0.w256.b0", !1410, i64 0}
!1410 = !{!"0x2f641b0.w512.b0", !1411, i64 0}
!1411 = !{!"0x2f641b0.w1024.b0", !1412, i64 0}
!1412 = !{!"0x2f641b0", !21, i64 0}
!1413 = !{!1414, !1414, i64 0}
!1414 = !{!"0x2f66960.w8.b0", !1415, i64 0}
!1415 = !{!"0x2f66960.w16.b0", !1416, i64 0}
!1416 = !{!"0x2f66960.w32.b0", !1417, i64 0}
!1417 = !{!"0x2f66960.w64.b0", !1418, i64 0}
!1418 = !{!"0x2f66960.w128.b0", !1419, i64 0}
!1419 = !{!"0x2f66960.w256.b0", !1420, i64 0}
!1420 = !{!"0x2f66960.w512.b0", !1421, i64 0}
!1421 = !{!"0x2f66960.w1024.b0", !1422, i64 0}
!1422 = !{!"0x2f66960", !21, i64 0}
!1423 = !{!1424, !1424, i64 0}
!1424 = !{!"0x2f66960.w8.b8", !1415, i64 0}
!1425 = !{!1426, !1426, i64 0}
!1426 = !{!"0x2f66960.w8.b16", !1427, i64 0}
!1427 = !{!"0x2f66960.w16.b16", !1416, i64 0}
!1428 = !{!1429, !1429, i64 0}
!1429 = !{!"0x2f678a0.w8.b0", !1430, i64 0}
!1430 = !{!"0x2f678a0.w16.b0", !1431, i64 0}
!1431 = !{!"0x2f678a0.w32.b0", !1432, i64 0}
!1432 = !{!"0x2f678a0.w64.b0", !1433, i64 0}
!1433 = !{!"0x2f678a0.w128.b0", !1434, i64 0}
!1434 = !{!"0x2f678a0.w256.b0", !1435, i64 0}
!1435 = !{!"0x2f678a0.w512.b0", !1436, i64 0}
!1436 = !{!"0x2f678a0.w1024.b0", !1437, i64 0}
!1437 = !{!"0x2f678a0", !21, i64 0}
!1438 = !{!1439, !1439, i64 0}
!1439 = !{!"0x2f678a0.w8.b8", !1430, i64 0}
!1440 = !{!1441, !1441, i64 0}
!1441 = !{!"0x2f678a0.w8.b16", !1442, i64 0}
!1442 = !{!"0x2f678a0.w16.b16", !1431, i64 0}
!1443 = distinct !DISubprogram(name: "main.tir", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1444)
!1444 = !{!1445, !1446, !1447, !1448, !1449, !1450}
!1445 = !DILocalVariable(name: "arg1", arg: 1, scope: !1443, file: !1, type: !8)
!1446 = !DILocalVariable(name: "arg2", arg: 2, scope: !1443, file: !1, type: !9)
!1447 = !DILocalVariable(name: "arg3", arg: 3, scope: !1443, file: !1, type: !7)
!1448 = !DILocalVariable(name: "arg4", arg: 4, scope: !1443, file: !1, type: !8)
!1449 = !DILocalVariable(name: "arg5", arg: 5, scope: !1443, file: !1, type: !9)
!1450 = !DILocalVariable(name: "arg6", arg: 6, scope: !1443, file: !1, type: !8)
!1451 = !DILocation(line: 0, scope: !1443)
!1452 = !{!1453, !1453, i64 0}
!1453 = !{!"0x2f41d50.w4.b0", !1454, i64 0}
!1454 = !{!"0x2f41d50.w8.b0", !1455, i64 0}
!1455 = !{!"0x2f41d50.w16.b0", !1456, i64 0}
!1456 = !{!"0x2f41d50.w32.b0", !1457, i64 0}
!1457 = !{!"0x2f41d50.w64.b0", !1458, i64 0}
!1458 = !{!"0x2f41d50.w128.b0", !1459, i64 0}
!1459 = !{!"0x2f41d50.w256.b0", !1460, i64 0}
!1460 = !{!"0x2f41d50.w512.b0", !1461, i64 0}
!1461 = !{!"0x2f41d50.w1024.b0", !1462, i64 0}
!1462 = !{!"0x2f41d50", !21, i64 0}
!1463 = !{!1464, !1464, i64 0}
!1464 = !{!"0x2f41d50.w4.b4", !1454, i64 0}
!1465 = !{!1466, !1466, i64 0}
!1466 = !{!"0x2f41d50.w4.b8", !1467, i64 0}
!1467 = !{!"0x2f41d50.w8.b8", !1455, i64 0}
!1468 = !{!1469, !1469, i64 0}
!1469 = !{!"0x2f4f440.w8.b0", !1470, i64 0}
!1470 = !{!"0x2f4f440.w16.b0", !1471, i64 0}
!1471 = !{!"0x2f4f440.w32.b0", !1472, i64 0}
!1472 = !{!"0x2f4f440.w64.b0", !1473, i64 0}
!1473 = !{!"0x2f4f440.w128.b0", !1474, i64 0}
!1474 = !{!"0x2f4f440.w256.b0", !1475, i64 0}
!1475 = !{!"0x2f4f440.w512.b0", !1476, i64 0}
!1476 = !{!"0x2f4f440.w1024.b0", !1477, i64 0}
!1477 = !{!"0x2f4f440", !21, i64 0}
!1478 = !{!1479, !1479, i64 0}
!1479 = !{!"0x2f4f440.w8.b8", !1470, i64 0}
!1480 = !{!1481, !1481, i64 0}
!1481 = !{!"0x2f4f7d0.w8.b0", !1482, i64 0}
!1482 = !{!"0x2f4f7d0.w16.b0", !1483, i64 0}
!1483 = !{!"0x2f4f7d0.w32.b0", !1484, i64 0}
!1484 = !{!"0x2f4f7d0.w64.b0", !1485, i64 0}
!1485 = !{!"0x2f4f7d0.w128.b0", !1486, i64 0}
!1486 = !{!"0x2f4f7d0.w256.b0", !1487, i64 0}
!1487 = !{!"0x2f4f7d0.w512.b0", !1488, i64 0}
!1488 = !{!"0x2f4f7d0.w1024.b0", !1489, i64 0}
!1489 = !{!"0x2f4f7d0", !21, i64 0}
!1490 = !{!1491, !1491, i64 0}
!1491 = !{!"0x2f4f7d0.w8.b8", !1482, i64 0}
!1492 = !{!1493, !1493, i64 0}
!1493 = !{!"0x2f528a0.w8.b0", !1494, i64 0}
!1494 = !{!"0x2f528a0.w16.b0", !1495, i64 0}
!1495 = !{!"0x2f528a0.w32.b0", !1496, i64 0}
!1496 = !{!"0x2f528a0.w64.b0", !1497, i64 0}
!1497 = !{!"0x2f528a0.w128.b0", !1498, i64 0}
!1498 = !{!"0x2f528a0.w256.b0", !1499, i64 0}
!1499 = !{!"0x2f528a0.w512.b0", !1500, i64 0}
!1500 = !{!"0x2f528a0.w1024.b0", !1501, i64 0}
!1501 = !{!"0x2f528a0", !21, i64 0}
!1502 = !{!1503, !1503, i64 0}
!1503 = !{!"0x2f52ba0.w8.b0", !1504, i64 0}
!1504 = !{!"0x2f52ba0.w16.b0", !1505, i64 0}
!1505 = !{!"0x2f52ba0.w32.b0", !1506, i64 0}
!1506 = !{!"0x2f52ba0.w64.b0", !1507, i64 0}
!1507 = !{!"0x2f52ba0.w128.b0", !1508, i64 0}
!1508 = !{!"0x2f52ba0.w256.b0", !1509, i64 0}
!1509 = !{!"0x2f52ba0.w512.b0", !1510, i64 0}
!1510 = !{!"0x2f52ba0.w1024.b0", !1511, i64 0}
!1511 = !{!"0x2f52ba0", !21, i64 0}
!1512 = !{!1513, !1513, i64 0}
!1513 = !{!"0x2f55510.w8.b0", !1514, i64 0}
!1514 = !{!"0x2f55510.w16.b0", !1515, i64 0}
!1515 = !{!"0x2f55510.w32.b0", !1516, i64 0}
!1516 = !{!"0x2f55510.w64.b0", !1517, i64 0}
!1517 = !{!"0x2f55510.w128.b0", !1518, i64 0}
!1518 = !{!"0x2f55510.w256.b0", !1519, i64 0}
!1519 = !{!"0x2f55510.w512.b0", !1520, i64 0}
!1520 = !{!"0x2f55510.w1024.b0", !1521, i64 0}
!1521 = !{!"0x2f55510", !21, i64 0}
!1522 = !{!1523, !1523, i64 0}
!1523 = !{!"0x2f55510.w8.b8", !1514, i64 0}
!1524 = !{!1525, !1525, i64 0}
!1525 = !{!"0x2f55510.w8.b16", !1526, i64 0}
!1526 = !{!"0x2f55510.w16.b16", !1515, i64 0}
!1527 = !{!1528, !1528, i64 0}
!1528 = !{!"0x2f56320.w8.b0", !1529, i64 0}
!1529 = !{!"0x2f56320.w16.b0", !1530, i64 0}
!1530 = !{!"0x2f56320.w32.b0", !1531, i64 0}
!1531 = !{!"0x2f56320.w64.b0", !1532, i64 0}
!1532 = !{!"0x2f56320.w128.b0", !1533, i64 0}
!1533 = !{!"0x2f56320.w256.b0", !1534, i64 0}
!1534 = !{!"0x2f56320.w512.b0", !1535, i64 0}
!1535 = !{!"0x2f56320.w1024.b0", !1536, i64 0}
!1536 = !{!"0x2f56320", !21, i64 0}
!1537 = !{!1538, !1538, i64 0}
!1538 = !{!"0x2f56320.w8.b8", !1529, i64 0}
!1539 = !{!1540, !1540, i64 0}
!1540 = !{!"0x2f56320.w8.b16", !1541, i64 0}
!1541 = !{!"0x2f56320.w16.b16", !1530, i64 0}
!1542 = distinct !DISubprogram(name: "main.tir", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1543)
!1543 = !{!1544, !1545, !1546, !1547, !1548, !1549}
!1544 = !DILocalVariable(name: "arg1", arg: 1, scope: !1542, file: !1, type: !8)
!1545 = !DILocalVariable(name: "arg2", arg: 2, scope: !1542, file: !1, type: !9)
!1546 = !DILocalVariable(name: "arg3", arg: 3, scope: !1542, file: !1, type: !7)
!1547 = !DILocalVariable(name: "arg4", arg: 4, scope: !1542, file: !1, type: !8)
!1548 = !DILocalVariable(name: "arg5", arg: 5, scope: !1542, file: !1, type: !9)
!1549 = !DILocalVariable(name: "arg6", arg: 6, scope: !1542, file: !1, type: !8)
!1550 = !DILocation(line: 0, scope: !1542)
!1551 = !{!1552, !1552, i64 0}
!1552 = !{!"0x2f920b0.w4.b0", !1553, i64 0}
!1553 = !{!"0x2f920b0.w8.b0", !1554, i64 0}
!1554 = !{!"0x2f920b0.w16.b0", !1555, i64 0}
!1555 = !{!"0x2f920b0.w32.b0", !1556, i64 0}
!1556 = !{!"0x2f920b0.w64.b0", !1557, i64 0}
!1557 = !{!"0x2f920b0.w128.b0", !1558, i64 0}
!1558 = !{!"0x2f920b0.w256.b0", !1559, i64 0}
!1559 = !{!"0x2f920b0.w512.b0", !1560, i64 0}
!1560 = !{!"0x2f920b0.w1024.b0", !1561, i64 0}
!1561 = !{!"0x2f920b0", !21, i64 0}
!1562 = !{!1563, !1563, i64 0}
!1563 = !{!"0x2f920b0.w4.b4", !1553, i64 0}
!1564 = !{!1565, !1565, i64 0}
!1565 = !{!"0x2f920b0.w4.b8", !1566, i64 0}
!1566 = !{!"0x2f920b0.w8.b8", !1554, i64 0}
!1567 = !{!1568, !1568, i64 0}
!1568 = !{!"0x2f98f50.w8.b0", !1569, i64 0}
!1569 = !{!"0x2f98f50.w16.b0", !1570, i64 0}
!1570 = !{!"0x2f98f50.w32.b0", !1571, i64 0}
!1571 = !{!"0x2f98f50.w64.b0", !1572, i64 0}
!1572 = !{!"0x2f98f50.w128.b0", !1573, i64 0}
!1573 = !{!"0x2f98f50.w256.b0", !1574, i64 0}
!1574 = !{!"0x2f98f50.w512.b0", !1575, i64 0}
!1575 = !{!"0x2f98f50.w1024.b0", !1576, i64 0}
!1576 = !{!"0x2f98f50", !21, i64 0}
!1577 = !{!1578, !1578, i64 0}
!1578 = !{!"0x2f98f50.w8.b8", !1569, i64 0}
!1579 = !{!1580, !1580, i64 0}
!1580 = !{!"0x2f99340.w8.b0", !1581, i64 0}
!1581 = !{!"0x2f99340.w16.b0", !1582, i64 0}
!1582 = !{!"0x2f99340.w32.b0", !1583, i64 0}
!1583 = !{!"0x2f99340.w64.b0", !1584, i64 0}
!1584 = !{!"0x2f99340.w128.b0", !1585, i64 0}
!1585 = !{!"0x2f99340.w256.b0", !1586, i64 0}
!1586 = !{!"0x2f99340.w512.b0", !1587, i64 0}
!1587 = !{!"0x2f99340.w1024.b0", !1588, i64 0}
!1588 = !{!"0x2f99340", !21, i64 0}
!1589 = !{!1590, !1590, i64 0}
!1590 = !{!"0x2f99340.w8.b8", !1581, i64 0}
!1591 = !{!1592, !1592, i64 0}
!1592 = !{!"0x2f9c550.w8.b0", !1593, i64 0}
!1593 = !{!"0x2f9c550.w16.b0", !1594, i64 0}
!1594 = !{!"0x2f9c550.w32.b0", !1595, i64 0}
!1595 = !{!"0x2f9c550.w64.b0", !1596, i64 0}
!1596 = !{!"0x2f9c550.w128.b0", !1597, i64 0}
!1597 = !{!"0x2f9c550.w256.b0", !1598, i64 0}
!1598 = !{!"0x2f9c550.w512.b0", !1599, i64 0}
!1599 = !{!"0x2f9c550.w1024.b0", !1600, i64 0}
!1600 = !{!"0x2f9c550", !21, i64 0}
!1601 = !{!1602, !1602, i64 0}
!1602 = !{!"0x2f9c850.w8.b0", !1603, i64 0}
!1603 = !{!"0x2f9c850.w16.b0", !1604, i64 0}
!1604 = !{!"0x2f9c850.w32.b0", !1605, i64 0}
!1605 = !{!"0x2f9c850.w64.b0", !1606, i64 0}
!1606 = !{!"0x2f9c850.w128.b0", !1607, i64 0}
!1607 = !{!"0x2f9c850.w256.b0", !1608, i64 0}
!1608 = !{!"0x2f9c850.w512.b0", !1609, i64 0}
!1609 = !{!"0x2f9c850.w1024.b0", !1610, i64 0}
!1610 = !{!"0x2f9c850", !21, i64 0}
!1611 = !{!1612, !1612, i64 0}
!1612 = !{!"0x2f9f150.w8.b0", !1613, i64 0}
!1613 = !{!"0x2f9f150.w16.b0", !1614, i64 0}
!1614 = !{!"0x2f9f150.w32.b0", !1615, i64 0}
!1615 = !{!"0x2f9f150.w64.b0", !1616, i64 0}
!1616 = !{!"0x2f9f150.w128.b0", !1617, i64 0}
!1617 = !{!"0x2f9f150.w256.b0", !1618, i64 0}
!1618 = !{!"0x2f9f150.w512.b0", !1619, i64 0}
!1619 = !{!"0x2f9f150.w1024.b0", !1620, i64 0}
!1620 = !{!"0x2f9f150", !21, i64 0}
!1621 = !{!1622, !1622, i64 0}
!1622 = !{!"0x2f9f150.w8.b8", !1613, i64 0}
!1623 = !{!1624, !1624, i64 0}
!1624 = !{!"0x2f9f150.w8.b16", !1625, i64 0}
!1625 = !{!"0x2f9f150.w16.b16", !1614, i64 0}
!1626 = !{!1627, !1627, i64 0}
!1627 = !{!"0x2f9fe10.w8.b0", !1628, i64 0}
!1628 = !{!"0x2f9fe10.w16.b0", !1629, i64 0}
!1629 = !{!"0x2f9fe10.w32.b0", !1630, i64 0}
!1630 = !{!"0x2f9fe10.w64.b0", !1631, i64 0}
!1631 = !{!"0x2f9fe10.w128.b0", !1632, i64 0}
!1632 = !{!"0x2f9fe10.w256.b0", !1633, i64 0}
!1633 = !{!"0x2f9fe10.w512.b0", !1634, i64 0}
!1634 = !{!"0x2f9fe10.w1024.b0", !1635, i64 0}
!1635 = !{!"0x2f9fe10", !21, i64 0}
!1636 = !{!1637, !1637, i64 0}
!1637 = !{!"0x2f9fe10.w8.b8", !1628, i64 0}
!1638 = !{!1639, !1639, i64 0}
!1639 = !{!"0x2f9fe10.w8.b16", !1640, i64 0}
!1640 = !{!"0x2f9fe10.w16.b16", !1629, i64 0}
!1641 = distinct !DISubprogram(name: "main.tir", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1642)
!1642 = !{!1643, !1644, !1645, !1646, !1647, !1648}
!1643 = !DILocalVariable(name: "arg1", arg: 1, scope: !1641, file: !1, type: !8)
!1644 = !DILocalVariable(name: "arg2", arg: 2, scope: !1641, file: !1, type: !9)
!1645 = !DILocalVariable(name: "arg3", arg: 3, scope: !1641, file: !1, type: !7)
!1646 = !DILocalVariable(name: "arg4", arg: 4, scope: !1641, file: !1, type: !8)
!1647 = !DILocalVariable(name: "arg5", arg: 5, scope: !1641, file: !1, type: !9)
!1648 = !DILocalVariable(name: "arg6", arg: 6, scope: !1641, file: !1, type: !8)
!1649 = !DILocation(line: 0, scope: !1641)
!1650 = !{!1651, !1651, i64 0}
!1651 = !{!"0x2d92770.w4.b0", !1652, i64 0}
!1652 = !{!"0x2d92770.w8.b0", !1653, i64 0}
!1653 = !{!"0x2d92770.w16.b0", !1654, i64 0}
!1654 = !{!"0x2d92770.w32.b0", !1655, i64 0}
!1655 = !{!"0x2d92770.w64.b0", !1656, i64 0}
!1656 = !{!"0x2d92770.w128.b0", !1657, i64 0}
!1657 = !{!"0x2d92770.w256.b0", !1658, i64 0}
!1658 = !{!"0x2d92770.w512.b0", !1659, i64 0}
!1659 = !{!"0x2d92770.w1024.b0", !1660, i64 0}
!1660 = !{!"0x2d92770", !21, i64 0}
!1661 = !{!1662, !1662, i64 0}
!1662 = !{!"0x2d92770.w4.b4", !1652, i64 0}
!1663 = !{!1664, !1664, i64 0}
!1664 = !{!"0x2d92770.w4.b8", !1665, i64 0}
!1665 = !{!"0x2d92770.w8.b8", !1653, i64 0}
!1666 = !{!1667, !1667, i64 0}
!1667 = !{!"0x2d99410.w8.b0", !1668, i64 0}
!1668 = !{!"0x2d99410.w16.b0", !1669, i64 0}
!1669 = !{!"0x2d99410.w32.b0", !1670, i64 0}
!1670 = !{!"0x2d99410.w64.b0", !1671, i64 0}
!1671 = !{!"0x2d99410.w128.b0", !1672, i64 0}
!1672 = !{!"0x2d99410.w256.b0", !1673, i64 0}
!1673 = !{!"0x2d99410.w512.b0", !1674, i64 0}
!1674 = !{!"0x2d99410.w1024.b0", !1675, i64 0}
!1675 = !{!"0x2d99410", !21, i64 0}
!1676 = !{!1677, !1677, i64 0}
!1677 = !{!"0x2d99410.w8.b8", !1668, i64 0}
!1678 = !{!1679, !1679, i64 0}
!1679 = !{!"0x2d99410.w8.b16", !1680, i64 0}
!1680 = !{!"0x2d99410.w16.b16", !1669, i64 0}
!1681 = !{!1682, !1682, i64 0}
!1682 = !{!"0x2f2be40.w8.b0", !1683, i64 0}
!1683 = !{!"0x2f2be40.w16.b0", !1684, i64 0}
!1684 = !{!"0x2f2be40.w32.b0", !1685, i64 0}
!1685 = !{!"0x2f2be40.w64.b0", !1686, i64 0}
!1686 = !{!"0x2f2be40.w128.b0", !1687, i64 0}
!1687 = !{!"0x2f2be40.w256.b0", !1688, i64 0}
!1688 = !{!"0x2f2be40.w512.b0", !1689, i64 0}
!1689 = !{!"0x2f2be40.w1024.b0", !1690, i64 0}
!1690 = !{!"0x2f2be40", !21, i64 0}
!1691 = !{!1692, !1692, i64 0}
!1692 = !{!"0x2f2be40.w8.b8", !1683, i64 0}
!1693 = !{!1694, !1694, i64 0}
!1694 = !{!"0x2f2be40.w8.b16", !1695, i64 0}
!1695 = !{!"0x2f2be40.w16.b16", !1684, i64 0}
!1696 = !{!1697, !1697, i64 0}
!1697 = !{!"0x2f2d7e0.w8.b0", !1698, i64 0}
!1698 = !{!"0x2f2d7e0.w16.b0", !1699, i64 0}
!1699 = !{!"0x2f2d7e0.w32.b0", !1700, i64 0}
!1700 = !{!"0x2f2d7e0.w64.b0", !1701, i64 0}
!1701 = !{!"0x2f2d7e0.w128.b0", !1702, i64 0}
!1702 = !{!"0x2f2d7e0.w256.b0", !1703, i64 0}
!1703 = !{!"0x2f2d7e0.w512.b0", !1704, i64 0}
!1704 = !{!"0x2f2d7e0.w1024.b0", !1705, i64 0}
!1705 = !{!"0x2f2d7e0", !21, i64 0}
!1706 = !{!1707, !1707, i64 0}
!1707 = !{!"0x2f2d7e0.w8.b8", !1698, i64 0}
!1708 = !{!1709, !1709, i64 0}
!1709 = !{!"0x2f2d7e0.w8.b16", !1710, i64 0}
!1710 = !{!"0x2f2d7e0.w16.b16", !1699, i64 0}
!1711 = !{!1712, !1712, i64 0}
!1712 = !{!"0x2f2d7e0.w8.b24", !1710, i64 0}
!1713 = !{!1714, !1714, i64 0}
!1714 = !{!"0x2f2f120.w8.b24", !1715, i64 0}
!1715 = !{!"0x2f2f120.w16.b16", !1716, i64 0}
!1716 = !{!"0x2f2f120.w32.b0", !1717, i64 0}
!1717 = !{!"0x2f2f120.w64.b0", !1718, i64 0}
!1718 = !{!"0x2f2f120.w128.b0", !1719, i64 0}
!1719 = !{!"0x2f2f120.w256.b0", !1720, i64 0}
!1720 = !{!"0x2f2f120.w512.b0", !1721, i64 0}
!1721 = !{!"0x2f2f120.w1024.b0", !1722, i64 0}
!1722 = !{!"0x2f2f120", !21, i64 0}
!1723 = !{!1724, !1724, i64 0}
!1724 = !{!"0x2f30ba0.w8.b0", !1725, i64 0}
!1725 = !{!"0x2f30ba0.w16.b0", !1726, i64 0}
!1726 = !{!"0x2f30ba0.w32.b0", !1727, i64 0}
!1727 = !{!"0x2f30ba0.w64.b0", !1728, i64 0}
!1728 = !{!"0x2f30ba0.w128.b0", !1729, i64 0}
!1729 = !{!"0x2f30ba0.w256.b0", !1730, i64 0}
!1730 = !{!"0x2f30ba0.w512.b0", !1731, i64 0}
!1731 = !{!"0x2f30ba0.w1024.b0", !1732, i64 0}
!1732 = !{!"0x2f30ba0", !21, i64 0}
!1733 = !{!1734, !1734, i64 0}
!1734 = !{!"0x2f30ba0.w8.b8", !1725, i64 0}
!1735 = !{!1736, !1736, i64 0}
!1736 = !{!"0x2f30ba0.w8.b16", !1737, i64 0}
!1737 = !{!"0x2f30ba0.w16.b16", !1726, i64 0}
!1738 = !{!1739, !1739, i64 0}
!1739 = !{!"0x2f30ba0.w8.b24", !1737, i64 0}
!1740 = !{!1741, !1741, i64 0}
!1741 = !{!"0x2f32170.w8.b8", !1742, i64 0}
!1742 = !{!"0x2f32170.w16.b0", !1743, i64 0}
!1743 = !{!"0x2f32170.w32.b0", !1744, i64 0}
!1744 = !{!"0x2f32170.w64.b0", !1745, i64 0}
!1745 = !{!"0x2f32170.w128.b0", !1746, i64 0}
!1746 = !{!"0x2f32170.w256.b0", !1747, i64 0}
!1747 = !{!"0x2f32170.w512.b0", !1748, i64 0}
!1748 = !{!"0x2f32170.w1024.b0", !1749, i64 0}
!1749 = !{!"0x2f32170", !21, i64 0}
!1750 = !{!1751, !1751, i64 0}
!1751 = !{!"0x2f32170.w8.b16", !1752, i64 0}
!1752 = !{!"0x2f32170.w16.b16", !1743, i64 0}
!1753 = !{!1754, !1754, i64 0}
!1754 = !{!"0x2f32170.w8.b24", !1752, i64 0}
!1755 = distinct !DISubprogram(name: "main.tir", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1756)
!1756 = !{!1757, !1758, !1759, !1760, !1761, !1762}
!1757 = !DILocalVariable(name: "arg1", arg: 1, scope: !1755, file: !1, type: !8)
!1758 = !DILocalVariable(name: "arg2", arg: 2, scope: !1755, file: !1, type: !9)
!1759 = !DILocalVariable(name: "arg3", arg: 3, scope: !1755, file: !1, type: !7)
!1760 = !DILocalVariable(name: "arg4", arg: 4, scope: !1755, file: !1, type: !8)
!1761 = !DILocalVariable(name: "arg5", arg: 5, scope: !1755, file: !1, type: !9)
!1762 = !DILocalVariable(name: "arg6", arg: 6, scope: !1755, file: !1, type: !8)
!1763 = !DILocation(line: 0, scope: !1755)
!1764 = !{!1765, !1765, i64 0}
!1765 = !{!"0x2f840c0.w4.b0", !1766, i64 0}
!1766 = !{!"0x2f840c0.w8.b0", !1767, i64 0}
!1767 = !{!"0x2f840c0.w16.b0", !1768, i64 0}
!1768 = !{!"0x2f840c0.w32.b0", !1769, i64 0}
!1769 = !{!"0x2f840c0.w64.b0", !1770, i64 0}
!1770 = !{!"0x2f840c0.w128.b0", !1771, i64 0}
!1771 = !{!"0x2f840c0.w256.b0", !1772, i64 0}
!1772 = !{!"0x2f840c0.w512.b0", !1773, i64 0}
!1773 = !{!"0x2f840c0.w1024.b0", !1774, i64 0}
!1774 = !{!"0x2f840c0", !21, i64 0}
!1775 = !{!1776, !1776, i64 0}
!1776 = !{!"0x2f840c0.w4.b4", !1766, i64 0}
!1777 = !{!1778, !1778, i64 0}
!1778 = !{!"0x2f8c240.w8.b0", !1779, i64 0}
!1779 = !{!"0x2f8c240.w16.b0", !1780, i64 0}
!1780 = !{!"0x2f8c240.w32.b0", !1781, i64 0}
!1781 = !{!"0x2f8c240.w64.b0", !1782, i64 0}
!1782 = !{!"0x2f8c240.w128.b0", !1783, i64 0}
!1783 = !{!"0x2f8c240.w256.b0", !1784, i64 0}
!1784 = !{!"0x2f8c240.w512.b0", !1785, i64 0}
!1785 = !{!"0x2f8c240.w1024.b0", !1786, i64 0}
!1786 = !{!"0x2f8c240", !21, i64 0}
!1787 = !{!1788, !1788, i64 0}
!1788 = !{!"0x2f8c240.w8.b8", !1779, i64 0}
!1789 = !{!1790, !1790, i64 0}
!1790 = !{!"0x2f8c240.w8.b16", !1791, i64 0}
!1791 = !{!"0x2f8c240.w16.b16", !1780, i64 0}
!1792 = !{!1793, !1793, i64 0}
!1793 = !{!"0x2f92db0.w8.b0", !1794, i64 0}
!1794 = !{!"0x2f92db0.w16.b0", !1795, i64 0}
!1795 = !{!"0x2f92db0.w32.b0", !1796, i64 0}
!1796 = !{!"0x2f92db0.w64.b0", !1797, i64 0}
!1797 = !{!"0x2f92db0.w128.b0", !1798, i64 0}
!1798 = !{!"0x2f92db0.w256.b0", !1799, i64 0}
!1799 = !{!"0x2f92db0.w512.b0", !1800, i64 0}
!1800 = !{!"0x2f92db0.w1024.b0", !1801, i64 0}
!1801 = !{!"0x2f92db0", !21, i64 0}
!1802 = !{!1803, !1803, i64 0}
!1803 = !{!"0x2f92db0.w8.b8", !1794, i64 0}
!1804 = !{!1805, !1805, i64 0}
!1805 = !{!"0x2f92db0.w8.b16", !1806, i64 0}
!1806 = !{!"0x2f92db0.w16.b16", !1795, i64 0}
!1807 = !{!1808, !1808, i64 0}
!1808 = !{!"0x2f94ed0.w8.b0", !1809, i64 0}
!1809 = !{!"0x2f94ed0.w16.b0", !1810, i64 0}
!1810 = !{!"0x2f94ed0.w32.b0", !1811, i64 0}
!1811 = !{!"0x2f94ed0.w64.b0", !1812, i64 0}
!1812 = !{!"0x2f94ed0.w128.b0", !1813, i64 0}
!1813 = !{!"0x2f94ed0.w256.b0", !1814, i64 0}
!1814 = !{!"0x2f94ed0.w512.b0", !1815, i64 0}
!1815 = !{!"0x2f94ed0.w1024.b0", !1816, i64 0}
!1816 = !{!"0x2f94ed0", !21, i64 0}
!1817 = !{!1818, !1818, i64 0}
!1818 = !{!"0x2f94ed0.w8.b8", !1809, i64 0}
!1819 = !{!1820, !1820, i64 0}
!1820 = !{!"0x2f95240.w8.b0", !1821, i64 0}
!1821 = !{!"0x2f95240.w16.b0", !1822, i64 0}
!1822 = !{!"0x2f95240.w32.b0", !1823, i64 0}
!1823 = !{!"0x2f95240.w64.b0", !1824, i64 0}
!1824 = !{!"0x2f95240.w128.b0", !1825, i64 0}
!1825 = !{!"0x2f95240.w256.b0", !1826, i64 0}
!1826 = !{!"0x2f95240.w512.b0", !1827, i64 0}
!1827 = !{!"0x2f95240.w1024.b0", !1828, i64 0}
!1828 = !{!"0x2f95240", !21, i64 0}
!1829 = !{!1830, !1830, i64 0}
!1830 = !{!"0x2f95240.w8.b8", !1821, i64 0}
!1831 = distinct !DISubprogram(name: "main.tir", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1832)
!1832 = !{!1833, !1834, !1835, !1836, !1837, !1838}
!1833 = !DILocalVariable(name: "arg1", arg: 1, scope: !1831, file: !1, type: !8)
!1834 = !DILocalVariable(name: "arg2", arg: 2, scope: !1831, file: !1, type: !9)
!1835 = !DILocalVariable(name: "arg3", arg: 3, scope: !1831, file: !1, type: !7)
!1836 = !DILocalVariable(name: "arg4", arg: 4, scope: !1831, file: !1, type: !8)
!1837 = !DILocalVariable(name: "arg5", arg: 5, scope: !1831, file: !1, type: !9)
!1838 = !DILocalVariable(name: "arg6", arg: 6, scope: !1831, file: !1, type: !8)
!1839 = !DILocation(line: 0, scope: !1831)
!1840 = !{!1841, !1841, i64 0}
!1841 = !{!"0x2f6c5a0.w4.b0", !1842, i64 0}
!1842 = !{!"0x2f6c5a0.w8.b0", !1843, i64 0}
!1843 = !{!"0x2f6c5a0.w16.b0", !1844, i64 0}
!1844 = !{!"0x2f6c5a0.w32.b0", !1845, i64 0}
!1845 = !{!"0x2f6c5a0.w64.b0", !1846, i64 0}
!1846 = !{!"0x2f6c5a0.w128.b0", !1847, i64 0}
!1847 = !{!"0x2f6c5a0.w256.b0", !1848, i64 0}
!1848 = !{!"0x2f6c5a0.w512.b0", !1849, i64 0}
!1849 = !{!"0x2f6c5a0.w1024.b0", !1850, i64 0}
!1850 = !{!"0x2f6c5a0", !21, i64 0}
!1851 = !{!1852, !1852, i64 0}
!1852 = !{!"0x2f6c5a0.w4.b4", !1842, i64 0}
!1853 = !{!1854, !1854, i64 0}
!1854 = !{!"0x2f6c5a0.w4.b8", !1855, i64 0}
!1855 = !{!"0x2f6c5a0.w8.b8", !1843, i64 0}
!1856 = !{!1857, !1857, i64 0}
!1857 = !{!"0x2f6c5a0.w4.b12", !1855, i64 0}
!1858 = !{!1859, !1859, i64 0}
!1859 = !{!"0x2f6c5a0.w4.b16", !1860, i64 0}
!1860 = !{!"0x2f6c5a0.w8.b16", !1861, i64 0}
!1861 = !{!"0x2f6c5a0.w16.b16", !1844, i64 0}
!1862 = !{!1863, !1863, i64 0}
!1863 = !{!"0x2f6c5a0.w4.b20", !1860, i64 0}
!1864 = !{!1865, !1865, i64 0}
!1865 = !{!"0x2f75c80.w8.b0", !1866, i64 0}
!1866 = !{!"0x2f75c80.w16.b0", !1867, i64 0}
!1867 = !{!"0x2f75c80.w32.b0", !1868, i64 0}
!1868 = !{!"0x2f75c80.w64.b0", !1869, i64 0}
!1869 = !{!"0x2f75c80.w128.b0", !1870, i64 0}
!1870 = !{!"0x2f75c80.w256.b0", !1871, i64 0}
!1871 = !{!"0x2f75c80.w512.b0", !1872, i64 0}
!1872 = !{!"0x2f75c80.w1024.b0", !1873, i64 0}
!1873 = !{!"0x2f75c80", !21, i64 0}
!1874 = !{!1875, !1875, i64 0}
!1875 = !{!"0x2f75c80.w8.b8", !1866, i64 0}
!1876 = !{!1877, !1877, i64 0}
!1877 = !{!"0x2f75c80.w8.b16", !1878, i64 0}
!1878 = !{!"0x2f75c80.w16.b16", !1867, i64 0}
!1879 = !{!1880, !1880, i64 0}
!1880 = !{!"0x2f77830.w8.b8", !1881, i64 0}
!1881 = !{!"0x2f77830.w16.b0", !1882, i64 0}
!1882 = !{!"0x2f77830.w32.b0", !1883, i64 0}
!1883 = !{!"0x2f77830.w64.b0", !1884, i64 0}
!1884 = !{!"0x2f77830.w128.b0", !1885, i64 0}
!1885 = !{!"0x2f77830.w256.b0", !1886, i64 0}
!1886 = !{!"0x2f77830.w512.b0", !1887, i64 0}
!1887 = !{!"0x2f77830.w1024.b0", !1888, i64 0}
!1888 = !{!"0x2f77830", !21, i64 0}
!1889 = !{!1890, !1890, i64 0}
!1890 = !{!"0x2f77830.w8.b16", !1891, i64 0}
!1891 = !{!"0x2f77830.w16.b16", !1882, i64 0}
!1892 = !{!1893, !1893, i64 0}
!1893 = !{!"0x2f79760.w8.b0", !1894, i64 0}
!1894 = !{!"0x2f79760.w16.b0", !1895, i64 0}
!1895 = !{!"0x2f79760.w32.b0", !1896, i64 0}
!1896 = !{!"0x2f79760.w64.b0", !1897, i64 0}
!1897 = !{!"0x2f79760.w128.b0", !1898, i64 0}
!1898 = !{!"0x2f79760.w256.b0", !1899, i64 0}
!1899 = !{!"0x2f79760.w512.b0", !1900, i64 0}
!1900 = !{!"0x2f79760.w1024.b0", !1901, i64 0}
!1901 = !{!"0x2f79760", !21, i64 0}
!1902 = !{!1903, !1903, i64 0}
!1903 = !{!"0x2f79760.w8.b8", !1894, i64 0}
!1904 = !{!1905, !1905, i64 0}
!1905 = !{!"0x2f79760.w8.b16", !1906, i64 0}
!1906 = !{!"0x2f79760.w16.b16", !1895, i64 0}
!1907 = !{!1908, !1908, i64 0}
!1908 = !{!"0x2f7a590.w8.b8", !1909, i64 0}
!1909 = !{!"0x2f7a590.w16.b0", !1910, i64 0}
!1910 = !{!"0x2f7a590.w32.b0", !1911, i64 0}
!1911 = !{!"0x2f7a590.w64.b0", !1912, i64 0}
!1912 = !{!"0x2f7a590.w128.b0", !1913, i64 0}
!1913 = !{!"0x2f7a590.w256.b0", !1914, i64 0}
!1914 = !{!"0x2f7a590.w512.b0", !1915, i64 0}
!1915 = !{!"0x2f7a590.w1024.b0", !1916, i64 0}
!1916 = !{!"0x2f7a590", !21, i64 0}
!1917 = !{!1918, !1918, i64 0}
!1918 = !{!"0x2f7c7e0.w8.b0", !1919, i64 0}
!1919 = !{!"0x2f7c7e0.w16.b0", !1920, i64 0}
!1920 = !{!"0x2f7c7e0.w32.b0", !1921, i64 0}
!1921 = !{!"0x2f7c7e0.w64.b0", !1922, i64 0}
!1922 = !{!"0x2f7c7e0.w128.b0", !1923, i64 0}
!1923 = !{!"0x2f7c7e0.w256.b0", !1924, i64 0}
!1924 = !{!"0x2f7c7e0.w512.b0", !1925, i64 0}
!1925 = !{!"0x2f7c7e0.w1024.b0", !1926, i64 0}
!1926 = !{!"0x2f7c7e0", !21, i64 0}
!1927 = !{!1928, !1928, i64 0}
!1928 = !{!"0x2f7c7e0.w8.b8", !1919, i64 0}
!1929 = !{!1930, !1930, i64 0}
!1930 = !{!"0x2f7c7e0.w8.b16", !1931, i64 0}
!1931 = !{!"0x2f7c7e0.w16.b16", !1920, i64 0}
!1932 = !{!1933, !1933, i64 0}
!1933 = !{!"0x2f7d580.w8.b8", !1934, i64 0}
!1934 = !{!"0x2f7d580.w16.b0", !1935, i64 0}
!1935 = !{!"0x2f7d580.w32.b0", !1936, i64 0}
!1936 = !{!"0x2f7d580.w64.b0", !1937, i64 0}
!1937 = !{!"0x2f7d580.w128.b0", !1938, i64 0}
!1938 = !{!"0x2f7d580.w256.b0", !1939, i64 0}
!1939 = !{!"0x2f7d580.w512.b0", !1940, i64 0}
!1940 = !{!"0x2f7d580.w1024.b0", !1941, i64 0}
!1941 = !{!"0x2f7d580", !21, i64 0}
!1942 = !{!1943, !1943, i64 0}
!1943 = !{!"0x2f7f860.w8.b0", !1944, i64 0}
!1944 = !{!"0x2f7f860.w16.b0", !1945, i64 0}
!1945 = !{!"0x2f7f860.w32.b0", !1946, i64 0}
!1946 = !{!"0x2f7f860.w64.b0", !1947, i64 0}
!1947 = !{!"0x2f7f860.w128.b0", !1948, i64 0}
!1948 = !{!"0x2f7f860.w256.b0", !1949, i64 0}
!1949 = !{!"0x2f7f860.w512.b0", !1950, i64 0}
!1950 = !{!"0x2f7f860.w1024.b0", !1951, i64 0}
!1951 = !{!"0x2f7f860", !21, i64 0}
!1952 = !{!1953, !1953, i64 0}
!1953 = !{!"0x2f7fb20.w8.b0", !1954, i64 0}
!1954 = !{!"0x2f7fb20.w16.b0", !1955, i64 0}
!1955 = !{!"0x2f7fb20.w32.b0", !1956, i64 0}
!1956 = !{!"0x2f7fb20.w64.b0", !1957, i64 0}
!1957 = !{!"0x2f7fb20.w128.b0", !1958, i64 0}
!1958 = !{!"0x2f7fb20.w256.b0", !1959, i64 0}
!1959 = !{!"0x2f7fb20.w512.b0", !1960, i64 0}
!1960 = !{!"0x2f7fb20.w1024.b0", !1961, i64 0}
!1961 = !{!"0x2f7fb20", !21, i64 0}
!1962 = !{!1963, !1963, i64 0}
!1963 = !{!"0x2f82130.w8.b0", !1964, i64 0}
!1964 = !{!"0x2f82130.w16.b0", !1965, i64 0}
!1965 = !{!"0x2f82130.w32.b0", !1966, i64 0}
!1966 = !{!"0x2f82130.w64.b0", !1967, i64 0}
!1967 = !{!"0x2f82130.w128.b0", !1968, i64 0}
!1968 = !{!"0x2f82130.w256.b0", !1969, i64 0}
!1969 = !{!"0x2f82130.w512.b0", !1970, i64 0}
!1970 = !{!"0x2f82130.w1024.b0", !1971, i64 0}
!1971 = !{!"0x2f82130", !21, i64 0}
!1972 = !{!1973, !1973, i64 0}
!1973 = !{!"0x2f823f0.w8.b0", !1974, i64 0}
!1974 = !{!"0x2f823f0.w16.b0", !1975, i64 0}
!1975 = !{!"0x2f823f0.w32.b0", !1976, i64 0}
!1976 = !{!"0x2f823f0.w64.b0", !1977, i64 0}
!1977 = !{!"0x2f823f0.w128.b0", !1978, i64 0}
!1978 = !{!"0x2f823f0.w256.b0", !1979, i64 0}
!1979 = !{!"0x2f823f0.w512.b0", !1980, i64 0}
!1980 = !{!"0x2f823f0.w1024.b0", !1981, i64 0}
!1981 = !{!"0x2f823f0", !21, i64 0}
!1982 = !{!1983, !1983, i64 0}
!1983 = !{!"0x2f849d0.w8.b0", !1984, i64 0}
!1984 = !{!"0x2f849d0.w16.b0", !1985, i64 0}
!1985 = !{!"0x2f849d0.w32.b0", !1986, i64 0}
!1986 = !{!"0x2f849d0.w64.b0", !1987, i64 0}
!1987 = !{!"0x2f849d0.w128.b0", !1988, i64 0}
!1988 = !{!"0x2f849d0.w256.b0", !1989, i64 0}
!1989 = !{!"0x2f849d0.w512.b0", !1990, i64 0}
!1990 = !{!"0x2f849d0.w1024.b0", !1991, i64 0}
!1991 = !{!"0x2f849d0", !21, i64 0}
!1992 = !{!1993, !1993, i64 0}
!1993 = !{!"0x2f849d0.w8.b8", !1984, i64 0}
!1994 = !{!1995, !1995, i64 0}
!1995 = !{!"0x2f849d0.w8.b16", !1996, i64 0}
!1996 = !{!"0x2f849d0.w16.b16", !1985, i64 0}
!1997 = !{!1998, !1998, i64 0}
!1998 = !{!"0x2f857f0.w8.b8", !1999, i64 0}
!1999 = !{!"0x2f857f0.w16.b0", !2000, i64 0}
!2000 = !{!"0x2f857f0.w32.b0", !2001, i64 0}
!2001 = !{!"0x2f857f0.w64.b0", !2002, i64 0}
!2002 = !{!"0x2f857f0.w128.b0", !2003, i64 0}
!2003 = !{!"0x2f857f0.w256.b0", !2004, i64 0}
!2004 = !{!"0x2f857f0.w512.b0", !2005, i64 0}
!2005 = !{!"0x2f857f0.w1024.b0", !2006, i64 0}
!2006 = !{!"0x2f857f0", !21, i64 0}
!2007 = !{!2008, !2008, i64 0}
!2008 = !{!"0x2f857f0.w8.b16", !2009, i64 0}
!2009 = !{!"0x2f857f0.w16.b16", !2000, i64 0}
!2010 = distinct !DISubprogram(name: "main.tir", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2011)
!2011 = !{!2012, !2013, !2014, !2015, !2016, !2017}
!2012 = !DILocalVariable(name: "arg1", arg: 1, scope: !2010, file: !1, type: !8)
!2013 = !DILocalVariable(name: "arg2", arg: 2, scope: !2010, file: !1, type: !9)
!2014 = !DILocalVariable(name: "arg3", arg: 3, scope: !2010, file: !1, type: !7)
!2015 = !DILocalVariable(name: "arg4", arg: 4, scope: !2010, file: !1, type: !8)
!2016 = !DILocalVariable(name: "arg5", arg: 5, scope: !2010, file: !1, type: !9)
!2017 = !DILocalVariable(name: "arg6", arg: 6, scope: !2010, file: !1, type: !8)
!2018 = !DILocation(line: 0, scope: !2010)
!2019 = !{!2020, !2020, i64 0}
!2020 = !{!"0x2f994e0.w4.b0", !2021, i64 0}
!2021 = !{!"0x2f994e0.w8.b0", !2022, i64 0}
!2022 = !{!"0x2f994e0.w16.b0", !2023, i64 0}
!2023 = !{!"0x2f994e0.w32.b0", !2024, i64 0}
!2024 = !{!"0x2f994e0.w64.b0", !2025, i64 0}
!2025 = !{!"0x2f994e0.w128.b0", !2026, i64 0}
!2026 = !{!"0x2f994e0.w256.b0", !2027, i64 0}
!2027 = !{!"0x2f994e0.w512.b0", !2028, i64 0}
!2028 = !{!"0x2f994e0.w1024.b0", !2029, i64 0}
!2029 = !{!"0x2f994e0", !21, i64 0}
!2030 = !{!2031, !2031, i64 0}
!2031 = !{!"0x2f994e0.w4.b4", !2021, i64 0}
!2032 = !{!2033, !2033, i64 0}
!2033 = !{!"0x2f9ddd0.w8.b0", !2034, i64 0}
!2034 = !{!"0x2f9ddd0.w16.b0", !2035, i64 0}
!2035 = !{!"0x2f9ddd0.w32.b0", !2036, i64 0}
!2036 = !{!"0x2f9ddd0.w64.b0", !2037, i64 0}
!2037 = !{!"0x2f9ddd0.w128.b0", !2038, i64 0}
!2038 = !{!"0x2f9ddd0.w256.b0", !2039, i64 0}
!2039 = !{!"0x2f9ddd0.w512.b0", !2040, i64 0}
!2040 = !{!"0x2f9ddd0.w1024.b0", !2041, i64 0}
!2041 = !{!"0x2f9ddd0", !21, i64 0}
!2042 = !{!2043, !2043, i64 0}
!2043 = !{!"0x2f9ddd0.w8.b8", !2034, i64 0}
!2044 = !{!2045, !2045, i64 0}
!2045 = !{!"0x2f9ddd0.w8.b16", !2046, i64 0}
!2046 = !{!"0x2f9ddd0.w16.b16", !2035, i64 0}
!2047 = !{!2048, !2048, i64 0}
!2048 = !{!"0x2fa3ff0.w8.b8", !2049, i64 0}
!2049 = !{!"0x2fa3ff0.w16.b0", !2050, i64 0}
!2050 = !{!"0x2fa3ff0.w32.b0", !2051, i64 0}
!2051 = !{!"0x2fa3ff0.w64.b0", !2052, i64 0}
!2052 = !{!"0x2fa3ff0.w128.b0", !2053, i64 0}
!2053 = !{!"0x2fa3ff0.w256.b0", !2054, i64 0}
!2054 = !{!"0x2fa3ff0.w512.b0", !2055, i64 0}
!2055 = !{!"0x2fa3ff0.w1024.b0", !2056, i64 0}
!2056 = !{!"0x2fa3ff0", !21, i64 0}
!2057 = !{!2058, !2058, i64 0}
!2058 = !{!"0x2fa3ff0.w8.b16", !2059, i64 0}
!2059 = !{!"0x2fa3ff0.w16.b16", !2050, i64 0}
!2060 = !{!2061, !2061, i64 0}
!2061 = !{!"0x2fa5d10.w8.b0", !2062, i64 0}
!2062 = !{!"0x2fa5d10.w16.b0", !2063, i64 0}
!2063 = !{!"0x2fa5d10.w32.b0", !2064, i64 0}
!2064 = !{!"0x2fa5d10.w64.b0", !2065, i64 0}
!2065 = !{!"0x2fa5d10.w128.b0", !2066, i64 0}
!2066 = !{!"0x2fa5d10.w256.b0", !2067, i64 0}
!2067 = !{!"0x2fa5d10.w512.b0", !2068, i64 0}
!2068 = !{!"0x2fa5d10.w1024.b0", !2069, i64 0}
!2069 = !{!"0x2fa5d10", !21, i64 0}
!2070 = !{!2071, !2071, i64 0}
!2071 = !{!"0x2fa5d10.w8.b8", !2062, i64 0}
!2072 = !{!2073, !2073, i64 0}
!2073 = !{!"0x2fa6dd0.w8.b8", !2074, i64 0}
!2074 = !{!"0x2fa6dd0.w16.b0", !2075, i64 0}
!2075 = !{!"0x2fa6dd0.w32.b0", !2076, i64 0}
!2076 = !{!"0x2fa6dd0.w64.b0", !2077, i64 0}
!2077 = !{!"0x2fa6dd0.w128.b0", !2078, i64 0}
!2078 = !{!"0x2fa6dd0.w256.b0", !2079, i64 0}
!2079 = !{!"0x2fa6dd0.w512.b0", !2080, i64 0}
!2080 = !{!"0x2fa6dd0.w1024.b0", !2081, i64 0}
!2081 = !{!"0x2fa6dd0", !21, i64 0}
!2082 = distinct !DISubprogram(name: "main.tir", scope: !1, file: !1, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2083)
!2083 = !{!2084, !2085, !2086, !2087, !2088, !2089}
!2084 = !DILocalVariable(name: "arg1", arg: 1, scope: !2082, file: !1, type: !8)
!2085 = !DILocalVariable(name: "arg2", arg: 2, scope: !2082, file: !1, type: !9)
!2086 = !DILocalVariable(name: "arg3", arg: 3, scope: !2082, file: !1, type: !7)
!2087 = !DILocalVariable(name: "arg4", arg: 4, scope: !2082, file: !1, type: !8)
!2088 = !DILocalVariable(name: "arg5", arg: 5, scope: !2082, file: !1, type: !9)
!2089 = !DILocalVariable(name: "arg6", arg: 6, scope: !2082, file: !1, type: !8)
!2090 = !DILocation(line: 0, scope: !2082)
!2091 = !{!2092, !2092, i64 0}
!2092 = !{!"0x2fa30b0.w4.b0", !2093, i64 0}
!2093 = !{!"0x2fa30b0.w8.b0", !2094, i64 0}
!2094 = !{!"0x2fa30b0.w16.b0", !2095, i64 0}
!2095 = !{!"0x2fa30b0.w32.b0", !2096, i64 0}
!2096 = !{!"0x2fa30b0.w64.b0", !2097, i64 0}
!2097 = !{!"0x2fa30b0.w128.b0", !2098, i64 0}
!2098 = !{!"0x2fa30b0.w256.b0", !2099, i64 0}
!2099 = !{!"0x2fa30b0.w512.b0", !2100, i64 0}
!2100 = !{!"0x2fa30b0.w1024.b0", !2101, i64 0}
!2101 = !{!"0x2fa30b0", !21, i64 0}
!2102 = !{!2103, !2103, i64 0}
!2103 = !{!"0x2fa30b0.w4.b4", !2093, i64 0}
!2104 = !{!2105, !2105, i64 0}
!2105 = !{!"0x2fa30b0.w4.b8", !2106, i64 0}
!2106 = !{!"0x2fa30b0.w8.b8", !2094, i64 0}
!2107 = !{!2108, !2108, i64 0}
!2108 = !{!"0x2fa9a60.w8.b0", !2109, i64 0}
!2109 = !{!"0x2fa9a60.w16.b0", !2110, i64 0}
!2110 = !{!"0x2fa9a60.w32.b0", !2111, i64 0}
!2111 = !{!"0x2fa9a60.w64.b0", !2112, i64 0}
!2112 = !{!"0x2fa9a60.w128.b0", !2113, i64 0}
!2113 = !{!"0x2fa9a60.w256.b0", !2114, i64 0}
!2114 = !{!"0x2fa9a60.w512.b0", !2115, i64 0}
!2115 = !{!"0x2fa9a60.w1024.b0", !2116, i64 0}
!2116 = !{!"0x2fa9a60", !21, i64 0}
!2117 = !{!2118, !2118, i64 0}
!2118 = !{!"0x2fa9a60.w8.b8", !2109, i64 0}
!2119 = !{!2120, !2120, i64 0}
!2120 = !{!"0x2fa9a60.w8.b16", !2121, i64 0}
!2121 = !{!"0x2fa9a60.w16.b16", !2110, i64 0}
!2122 = !{!2123, !2123, i64 0}
!2123 = !{!"0x2fab960.w8.b8", !2124, i64 0}
!2124 = !{!"0x2fab960.w16.b0", !2125, i64 0}
!2125 = !{!"0x2fab960.w32.b0", !2126, i64 0}
!2126 = !{!"0x2fab960.w64.b0", !2127, i64 0}
!2127 = !{!"0x2fab960.w128.b0", !2128, i64 0}
!2128 = !{!"0x2fab960.w256.b0", !2129, i64 0}
!2129 = !{!"0x2fab960.w512.b0", !2130, i64 0}
!2130 = !{!"0x2fab960.w1024.b0", !2131, i64 0}
!2131 = !{!"0x2fab960", !21, i64 0}
!2132 = !{!2133, !2133, i64 0}
!2133 = !{!"0x2fab960.w8.b16", !2134, i64 0}
!2134 = !{!"0x2fab960.w16.b16", !2125, i64 0}
!2135 = !{!2136, !2136, i64 0}
!2136 = !{!"0x2fad130.w8.b0", !2137, i64 0}
!2137 = !{!"0x2fad130.w16.b0", !2138, i64 0}
!2138 = !{!"0x2fad130.w32.b0", !2139, i64 0}
!2139 = !{!"0x2fad130.w64.b0", !2140, i64 0}
!2140 = !{!"0x2fad130.w128.b0", !2141, i64 0}
!2141 = !{!"0x2fad130.w256.b0", !2142, i64 0}
!2142 = !{!"0x2fad130.w512.b0", !2143, i64 0}
!2143 = !{!"0x2fad130.w1024.b0", !2144, i64 0}
!2144 = !{!"0x2fad130", !21, i64 0}
!2145 = !{!2146, !2146, i64 0}
!2146 = !{!"0x2fad130.w8.b8", !2137, i64 0}
!2147 = !{!2148, !2148, i64 0}
!2148 = !{!"0x2fad130.w8.b16", !2149, i64 0}
!2149 = !{!"0x2fad130.w16.b16", !2138, i64 0}
!2150 = !{!2151, !2151, i64 0}
!2151 = !{!"0x2fae710.w8.b8", !2152, i64 0}
!2152 = !{!"0x2fae710.w16.b0", !2153, i64 0}
!2153 = !{!"0x2fae710.w32.b0", !2154, i64 0}
!2154 = !{!"0x2fae710.w64.b0", !2155, i64 0}
!2155 = !{!"0x2fae710.w128.b0", !2156, i64 0}
!2156 = !{!"0x2fae710.w256.b0", !2157, i64 0}
!2157 = !{!"0x2fae710.w512.b0", !2158, i64 0}
!2158 = !{!"0x2fae710.w1024.b0", !2159, i64 0}
!2159 = !{!"0x2fae710", !21, i64 0}
!2160 = !{!2161, !2161, i64 0}
!2161 = !{!"0x2fb00e0.w8.b0", !2162, i64 0}
!2162 = !{!"0x2fb00e0.w16.b0", !2163, i64 0}
!2163 = !{!"0x2fb00e0.w32.b0", !2164, i64 0}
!2164 = !{!"0x2fb00e0.w64.b0", !2165, i64 0}
!2165 = !{!"0x2fb00e0.w128.b0", !2166, i64 0}
!2166 = !{!"0x2fb00e0.w256.b0", !2167, i64 0}
!2167 = !{!"0x2fb00e0.w512.b0", !2168, i64 0}
!2168 = !{!"0x2fb00e0.w1024.b0", !2169, i64 0}
!2169 = !{!"0x2fb00e0", !21, i64 0}
!2170 = !{!2171, !2171, i64 0}
!2171 = !{!"0x2fb00e0.w8.b8", !2162, i64 0}
!2172 = !{!2173, !2173, i64 0}
!2173 = !{!"0x2fb00e0.w8.b16", !2174, i64 0}
!2174 = !{!"0x2fb00e0.w16.b16", !2163, i64 0}
!2175 = !{!2176, !2176, i64 0}
!2176 = !{!"0x2fb13f0.w8.b8", !2177, i64 0}
!2177 = !{!"0x2fb13f0.w16.b0", !2178, i64 0}
!2178 = !{!"0x2fb13f0.w32.b0", !2179, i64 0}
!2179 = !{!"0x2fb13f0.w64.b0", !2180, i64 0}
!2180 = !{!"0x2fb13f0.w128.b0", !2181, i64 0}
!2181 = !{!"0x2fb13f0.w256.b0", !2182, i64 0}
!2182 = !{!"0x2fb13f0.w512.b0", !2183, i64 0}
!2183 = !{!"0x2fb13f0.w1024.b0", !2184, i64 0}
!2184 = !{!"0x2fb13f0", !21, i64 0}
!2185 = !{!2186, !2186, i64 0}
!2186 = !{!"0x442ef20", !21, i64 0}
!2187 = !{!2188, !2188, i64 0}
!2188 = !{!"0x499f420", !21, i64 0}
!2189 = !{!2190, !2190, i64 0}
!2190 = !{!"0x4476440", !21, i64 0}
!2191 = !{!2192, !2192, i64 0}
!2192 = !{!"0x4557770", !21, i64 0}
!2193 = !{!2194, !2194, i64 0}
!2194 = !{!"0x460d420", !21, i64 0}
!2195 = !{!2196, !2196, i64 0}
!2196 = !{!"0x4555130", !21, i64 0}
!2197 = !{!2198, !2198, i64 0}
!2198 = !{!"0x4552e50", !21, i64 0}
!2199 = !{!2200, !2200, i64 0}
!2200 = !{!"0x44f5910", !21, i64 0}
!2201 = !{!2202, !2202, i64 0}
!2202 = !{!"0x44f58d0", !21, i64 0}
!2203 = !{!2204, !2204, i64 0}
!2204 = !{!"0x44f5890", !21, i64 0}
!2205 = !{!2206, !2206, i64 0}
!2206 = !{!"0x442a910", !21, i64 0}
!2207 = !{!2208, !2208, i64 0}
!2208 = !{!"0x45ee5c0", !21, i64 0}
!2209 = !{!2210, !2210, i64 0}
!2210 = !{!"0x442a8d0", !21, i64 0}
!2211 = !{!2212, !2212, i64 0}
!2212 = !{!"0x442a840", !21, i64 0}
!2213 = !{!2214, !2214, i64 0}
!2214 = !{!"0x45970a0", !21, i64 0}
!2215 = !{!2216, !2216, i64 0}
!2216 = !{!"0x4597060", !21, i64 0}
!2217 = !{!2218, !2218, i64 0}
!2218 = !{!"0x44b4e90", !21, i64 0}
!2219 = !{!2220, !2220, i64 0}
!2220 = !{!"0x2ef1440", !21, i64 0}
!2221 = !{!2222, !2222, i64 0}
!2222 = !{!"0x2ef1400", !21, i64 0}
!2223 = !{!2224, !2224, i64 0}
!2224 = !{!"0x2ef1f10", !21, i64 0}
!2225 = !{!2226, !2226, i64 0}
!2226 = !{!"0x44accc0", !21, i64 0}
!2227 = !{!2228, !2228, i64 0}
!2228 = !{!"0x44acc80", !21, i64 0}
!2229 = !{!2230, !2230, i64 0}
!2230 = !{!"0x44adab0", !21, i64 0}
!2231 = !{!2232, !2232, i64 0}
!2232 = !{!"0x2f18840", !21, i64 0}
!2233 = !{!2234, !2234, i64 0}
!2234 = !{!"0x2f18800", !21, i64 0}
!2235 = !{!2236, !2236, i64 0}
!2236 = !{!"0x2f1e6a0", !21, i64 0}
!2237 = !{!2238, !2238, i64 0}
!2238 = !{!"0x2f1b050", !21, i64 0}
!2239 = !{!2240, !2240, i64 0}
!2240 = !{!"0x2f1a8a0", !21, i64 0}
!2241 = !{!2242, !2242, i64 0}
!2242 = !{!"0x4521170", !21, i64 0}
!2243 = !{!2244, !2244, i64 0}
!2244 = !{!"0x44259f0", !21, i64 0}
!2245 = !{!2246, !2246, i64 0}
!2246 = !{!"0x44d8550", !21, i64 0}
!2247 = !{!2248, !2248, i64 0}
!2248 = !{!"0x45218e0", !21, i64 0}
!2249 = !{!2250, !2250, i64 0}
!2250 = !{!"0x45f53c0", !21, i64 0}
!2251 = !{!2252, !2252, i64 0}
!2252 = !{!"0x45212f0", !21, i64 0}
!2253 = !{!2254, !2254, i64 0}
!2254 = !{!"0x45d1a30", !21, i64 0}
!2255 = !{!2256, !2256, i64 0}
!2256 = !{!"0x45d1ab0", !21, i64 0}
!2257 = !{!2258, !2258, i64 0}
!2258 = !{!"0x45d1a70", !21, i64 0}
!2259 = !{!2260, !2260, i64 0}
!2260 = !{!"0x45ec450", !21, i64 0}
!2261 = !{!2262, !2262, i64 0}
!2262 = !{!"0x2ee19a0", !21, i64 0}
!2263 = !{!2264, !2264, i64 0}
!2264 = !{!"0x2ee1960", !21, i64 0}
!2265 = !{!2266, !2266, i64 0}
!2266 = !{!"0x2ee1920", !21, i64 0}
!2267 = !{!2268, !2268, i64 0}
!2268 = !{!"0x4539ae0", !21, i64 0}
!2269 = !{!2270, !2270, i64 0}
!2270 = !{!"0x4539a40", !21, i64 0}
!2271 = !{!2272, !2272, i64 0}
!2272 = !{!"0x4539a00", !21, i64 0}
!2273 = !{!2274, !2274, i64 0}
!2274 = !{!"0x45e44b0", !21, i64 0}
!2275 = !{!2276, !2276, i64 0}
!2276 = !{!"0x45e4410", !21, i64 0}
!2277 = !{!2278, !2278, i64 0}
!2278 = !{!"0x45e43d0", !21, i64 0}
!2279 = !{!2280, !2280, i64 0}
!2280 = !{!"0x45eb940", !21, i64 0}
!2281 = !{!2282, !2282, i64 0}
!2282 = !{!"0x45eb900", !21, i64 0}
!2283 = !{!2284, !2284, i64 0}
!2284 = !{!"0x45eb8c0", !21, i64 0}
!2285 = !{!2286, !2286, i64 0}
!2286 = !{!"0x4424d50.w32.b0", !2287, i64 0}
!2287 = !{!"0x4424d50.w64.b0", !2288, i64 0}
!2288 = !{!"0x4424d50.w128.b0", !2289, i64 0}
!2289 = !{!"0x4424d50.w256.b0", !2290, i64 0}
!2290 = !{!"0x4424d50.w512.b0", !2291, i64 0}
!2291 = !{!"0x4424d50.w1024.b0", !2292, i64 0}
!2292 = !{!"0x4424d50", !21, i64 0}
!2293 = !{!2294, !2294, i64 0}
!2294 = !{!"0x4424df0", !21, i64 0}
!2295 = !{!2296, !2296, i64 0}
!2296 = !{!"0x4424d10", !21, i64 0}
!2297 = !{!2298, !2298, i64 0}
!2298 = !{!"0x4580ee0", !21, i64 0}
!2299 = !{!2300, !2300, i64 0}
!2300 = !{!"0x4580ea0", !21, i64 0}
!2301 = !{!2302, !2302, i64 0}
!2302 = !{!"0x453cf30", !21, i64 0}
!2303 = !{!2304, !2304, i64 0}
!2304 = !{!"0x44e3320", !21, i64 0}
!2305 = !{!2306, !2306, i64 0}
!2306 = !{!"0x44b75b0", !21, i64 0}
!2307 = !{!2308, !2308, i64 0}
!2308 = !{!"0x45e31e0", !21, i64 0}
!2309 = !{!2310, !2310, i64 0}
!2310 = !{!"0x44e2ee0", !21, i64 0}
!2311 = !{!2312, !2312, i64 0}
!2312 = !{!"0x45678b0", !21, i64 0}
!2313 = !{!2314, !2314, i64 0}
!2314 = !{!"0x4567a30", !21, i64 0}
!2315 = !{!2316, !2316, i64 0}
!2316 = !{!"0x4567a70", !21, i64 0}
!2317 = !{!2318, !2318, i64 0}
!2318 = !{!"0x44b1500", !21, i64 0}
!2319 = !{!2320, !2320, i64 0}
!2320 = !{!"0x44b1540", !21, i64 0}
