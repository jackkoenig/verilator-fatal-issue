module AXI4IdIndexer_2(
  output        auto_in_aw_ready,
  input         auto_in_aw_valid,
  input  [6:0]  auto_in_aw_bits_id,
  input  [31:0] auto_in_aw_bits_addr,
  input  [7:0]  auto_in_aw_bits_len,
  input  [2:0]  auto_in_aw_bits_size,
  input  [1:0]  auto_in_aw_bits_burst,
  input         auto_in_aw_bits_lock,
  input  [3:0]  auto_in_aw_bits_cache,
  input  [2:0]  auto_in_aw_bits_prot,
  input  [3:0]  auto_in_aw_bits_qos,
  input  [3:0]  auto_in_aw_bits_echo_tl_state_size,
  input  [6:0]  auto_in_aw_bits_echo_tl_state_source,
  output        auto_in_w_ready,
  input         auto_in_w_valid,
  input  [63:0] auto_in_w_bits_data,
  input  [7:0]  auto_in_w_bits_strb,
  input         auto_in_w_bits_last,
  input         auto_in_b_ready,
  output        auto_in_b_valid,
  output [6:0]  auto_in_b_bits_id,
  output [1:0]  auto_in_b_bits_resp,
  output [3:0]  auto_in_b_bits_echo_tl_state_size,
  output [6:0]  auto_in_b_bits_echo_tl_state_source,
  output        auto_in_ar_ready,
  input         auto_in_ar_valid,
  input  [6:0]  auto_in_ar_bits_id,
  input  [31:0] auto_in_ar_bits_addr,
  input  [7:0]  auto_in_ar_bits_len,
  input  [2:0]  auto_in_ar_bits_size,
  input  [1:0]  auto_in_ar_bits_burst,
  input         auto_in_ar_bits_lock,
  input  [3:0]  auto_in_ar_bits_cache,
  input  [2:0]  auto_in_ar_bits_prot,
  input  [3:0]  auto_in_ar_bits_qos,
  input  [3:0]  auto_in_ar_bits_echo_tl_state_size,
  input  [6:0]  auto_in_ar_bits_echo_tl_state_source,
  input         auto_in_r_ready,
  output        auto_in_r_valid,
  output [6:0]  auto_in_r_bits_id,
  output [63:0] auto_in_r_bits_data,
  output [1:0]  auto_in_r_bits_resp,
  output [3:0]  auto_in_r_bits_echo_tl_state_size,
  output [6:0]  auto_in_r_bits_echo_tl_state_source,
  output        auto_in_r_bits_last,
  input         auto_out_aw_ready,
  output        auto_out_aw_valid,
  output [3:0]  auto_out_aw_bits_id,
  output [31:0] auto_out_aw_bits_addr,
  output [7:0]  auto_out_aw_bits_len,
  output [2:0]  auto_out_aw_bits_size,
  output [1:0]  auto_out_aw_bits_burst,
  output        auto_out_aw_bits_lock,
  output [3:0]  auto_out_aw_bits_cache,
  output [2:0]  auto_out_aw_bits_prot,
  output [3:0]  auto_out_aw_bits_qos,
  output [3:0]  auto_out_aw_bits_echo_tl_state_size,
  output [6:0]  auto_out_aw_bits_echo_tl_state_source,
  output [2:0]  auto_out_aw_bits_echo_extra_id,
  input         auto_out_w_ready,
  output        auto_out_w_valid,
  output [63:0] auto_out_w_bits_data,
  output [7:0]  auto_out_w_bits_strb,
  output        auto_out_w_bits_last,
  output        auto_out_b_ready,
  input         auto_out_b_valid,
  input  [3:0]  auto_out_b_bits_id,
  input  [1:0]  auto_out_b_bits_resp,
  input  [3:0]  auto_out_b_bits_echo_tl_state_size,
  input  [6:0]  auto_out_b_bits_echo_tl_state_source,
  input  [2:0]  auto_out_b_bits_echo_extra_id,
  input         auto_out_ar_ready,
  output        auto_out_ar_valid,
  output [3:0]  auto_out_ar_bits_id,
  output [31:0] auto_out_ar_bits_addr,
  output [7:0]  auto_out_ar_bits_len,
  output [2:0]  auto_out_ar_bits_size,
  output [1:0]  auto_out_ar_bits_burst,
  output        auto_out_ar_bits_lock,
  output [3:0]  auto_out_ar_bits_cache,
  output [2:0]  auto_out_ar_bits_prot,
  output [3:0]  auto_out_ar_bits_qos,
  output [3:0]  auto_out_ar_bits_echo_tl_state_size,
  output [6:0]  auto_out_ar_bits_echo_tl_state_source,
  output [2:0]  auto_out_ar_bits_echo_extra_id,
  output        auto_out_r_ready,
  input         auto_out_r_valid,
  input  [3:0]  auto_out_r_bits_id,
  input  [63:0] auto_out_r_bits_data,
  input  [1:0]  auto_out_r_bits_resp,
  input  [3:0]  auto_out_r_bits_echo_tl_state_size,
  input  [6:0]  auto_out_r_bits_echo_tl_state_source,
  input  [2:0]  auto_out_r_bits_echo_extra_id,
  input         auto_out_r_bits_last
);
  assign auto_in_aw_ready = auto_out_aw_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_w_ready = auto_out_w_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_b_valid = auto_out_b_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_b_bits_id = {auto_out_b_bits_echo_extra_id,auto_out_b_bits_id}; // @[Cat.scala 29:58]
  assign auto_in_b_bits_resp = auto_out_b_bits_resp; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_b_bits_echo_tl_state_size = auto_out_b_bits_echo_tl_state_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_b_bits_echo_tl_state_source = auto_out_b_bits_echo_tl_state_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_ar_ready = auto_out_ar_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_valid = auto_out_r_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_id = {auto_out_r_bits_echo_extra_id,auto_out_r_bits_id}; // @[Cat.scala 29:58]
  assign auto_in_r_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_echo_tl_state_size = auto_out_r_bits_echo_tl_state_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_echo_tl_state_source = auto_out_r_bits_echo_tl_state_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_out_aw_valid = auto_in_aw_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_aw_bits_id = auto_in_aw_bits_id[3:0]; // @[Nodes.scala 1213:84 BundleMap.scala 248:19]
  assign auto_out_aw_bits_addr = auto_in_aw_bits_addr; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_aw_bits_len = auto_in_aw_bits_len; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_aw_bits_size = auto_in_aw_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_aw_bits_burst = auto_in_aw_bits_burst; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_aw_bits_lock = auto_in_aw_bits_lock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_aw_bits_cache = auto_in_aw_bits_cache; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_aw_bits_prot = auto_in_aw_bits_prot; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_aw_bits_qos = auto_in_aw_bits_qos; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_aw_bits_echo_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_aw_bits_echo_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_aw_bits_echo_extra_id = auto_in_aw_bits_id[6:4]; // @[IdIndexer.scala 64:56]
  assign auto_out_w_valid = auto_in_w_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_w_bits_data = auto_in_w_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_w_bits_strb = auto_in_w_bits_strb; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_w_bits_last = auto_in_w_bits_last; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_b_ready = auto_in_b_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_valid = auto_in_ar_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_bits_id = auto_in_ar_bits_id[3:0]; // @[Nodes.scala 1213:84 BundleMap.scala 248:19]
  assign auto_out_ar_bits_addr = auto_in_ar_bits_addr; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_bits_len = auto_in_ar_bits_len; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_bits_size = auto_in_ar_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_bits_burst = auto_in_ar_bits_burst; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_bits_lock = auto_in_ar_bits_lock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_bits_cache = auto_in_ar_bits_cache; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_bits_prot = auto_in_ar_bits_prot; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_bits_qos = auto_in_ar_bits_qos; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_bits_echo_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_bits_echo_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_bits_echo_extra_id = auto_in_ar_bits_id[6:4]; // @[IdIndexer.scala 63:56]
  assign auto_out_r_ready = auto_in_r_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
endmodule
