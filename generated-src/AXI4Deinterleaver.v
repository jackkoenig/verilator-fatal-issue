module AXI4Deinterleaver(
  input         clock,
  input         reset,
  output        auto_in_aw_ready,
  input         auto_in_aw_valid,
  input  [3:0]  auto_in_aw_bits_id,
  input  [30:0] auto_in_aw_bits_addr,
  input  [7:0]  auto_in_aw_bits_len,
  input  [2:0]  auto_in_aw_bits_size,
  input  [1:0]  auto_in_aw_bits_burst,
  input         auto_in_aw_bits_lock,
  input  [3:0]  auto_in_aw_bits_cache,
  input  [2:0]  auto_in_aw_bits_prot,
  input  [3:0]  auto_in_aw_bits_qos,
  input  [3:0]  auto_in_aw_bits_echo_tl_state_size,
  input  [4:0]  auto_in_aw_bits_echo_tl_state_source,
  output        auto_in_w_ready,
  input         auto_in_w_valid,
  input  [63:0] auto_in_w_bits_data,
  input  [7:0]  auto_in_w_bits_strb,
  input         auto_in_w_bits_last,
  input         auto_in_b_ready,
  output        auto_in_b_valid,
  output [3:0]  auto_in_b_bits_id,
  output [1:0]  auto_in_b_bits_resp,
  output [3:0]  auto_in_b_bits_echo_tl_state_size,
  output [4:0]  auto_in_b_bits_echo_tl_state_source,
  output        auto_in_ar_ready,
  input         auto_in_ar_valid,
  input  [3:0]  auto_in_ar_bits_id,
  input  [30:0] auto_in_ar_bits_addr,
  input  [7:0]  auto_in_ar_bits_len,
  input  [2:0]  auto_in_ar_bits_size,
  input  [1:0]  auto_in_ar_bits_burst,
  input         auto_in_ar_bits_lock,
  input  [3:0]  auto_in_ar_bits_cache,
  input  [2:0]  auto_in_ar_bits_prot,
  input  [3:0]  auto_in_ar_bits_qos,
  input  [3:0]  auto_in_ar_bits_echo_tl_state_size,
  input  [4:0]  auto_in_ar_bits_echo_tl_state_source,
  input         auto_in_r_ready,
  output        auto_in_r_valid,
  output [3:0]  auto_in_r_bits_id,
  output [63:0] auto_in_r_bits_data,
  output [1:0]  auto_in_r_bits_resp,
  output [3:0]  auto_in_r_bits_echo_tl_state_size,
  output [4:0]  auto_in_r_bits_echo_tl_state_source,
  output        auto_in_r_bits_last,
  input         auto_out_aw_ready,
  output        auto_out_aw_valid,
  output [3:0]  auto_out_aw_bits_id,
  output [30:0] auto_out_aw_bits_addr,
  output [7:0]  auto_out_aw_bits_len,
  output [2:0]  auto_out_aw_bits_size,
  output [1:0]  auto_out_aw_bits_burst,
  output        auto_out_aw_bits_lock,
  output [3:0]  auto_out_aw_bits_cache,
  output [2:0]  auto_out_aw_bits_prot,
  output [3:0]  auto_out_aw_bits_qos,
  output [3:0]  auto_out_aw_bits_echo_tl_state_size,
  output [4:0]  auto_out_aw_bits_echo_tl_state_source,
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
  input  [4:0]  auto_out_b_bits_echo_tl_state_source,
  input         auto_out_ar_ready,
  output        auto_out_ar_valid,
  output [3:0]  auto_out_ar_bits_id,
  output [30:0] auto_out_ar_bits_addr,
  output [7:0]  auto_out_ar_bits_len,
  output [2:0]  auto_out_ar_bits_size,
  output [1:0]  auto_out_ar_bits_burst,
  output        auto_out_ar_bits_lock,
  output [3:0]  auto_out_ar_bits_cache,
  output [2:0]  auto_out_ar_bits_prot,
  output [3:0]  auto_out_ar_bits_qos,
  output [3:0]  auto_out_ar_bits_echo_tl_state_size,
  output [4:0]  auto_out_ar_bits_echo_tl_state_source,
  output        auto_out_r_ready,
  input         auto_out_r_valid,
  input  [3:0]  auto_out_r_bits_id,
  input  [63:0] auto_out_r_bits_data,
  input  [1:0]  auto_out_r_bits_resp,
  input  [3:0]  auto_out_r_bits_echo_tl_state_size,
  input  [4:0]  auto_out_r_bits_echo_tl_state_source,
  input         auto_out_r_bits_last
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire  qs_queue_0_clock; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_0_reset; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_0_io_enq_ready; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_0_io_enq_valid; // @[Deinterleaver.scala 44:27]
  wire [3:0] qs_queue_0_io_enq_bits_id; // @[Deinterleaver.scala 44:27]
  wire [63:0] qs_queue_0_io_enq_bits_data; // @[Deinterleaver.scala 44:27]
  wire [1:0] qs_queue_0_io_enq_bits_resp; // @[Deinterleaver.scala 44:27]
  wire [3:0] qs_queue_0_io_enq_bits_echo_tl_state_size; // @[Deinterleaver.scala 44:27]
  wire [4:0] qs_queue_0_io_enq_bits_echo_tl_state_source; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_0_io_enq_bits_last; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_0_io_deq_ready; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_0_io_deq_valid; // @[Deinterleaver.scala 44:27]
  wire [3:0] qs_queue_0_io_deq_bits_id; // @[Deinterleaver.scala 44:27]
  wire [63:0] qs_queue_0_io_deq_bits_data; // @[Deinterleaver.scala 44:27]
  wire [1:0] qs_queue_0_io_deq_bits_resp; // @[Deinterleaver.scala 44:27]
  wire [3:0] qs_queue_0_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 44:27]
  wire [4:0] qs_queue_0_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_0_io_deq_bits_last; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_1_clock; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_1_reset; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_1_io_enq_ready; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_1_io_enq_valid; // @[Deinterleaver.scala 44:27]
  wire [3:0] qs_queue_1_io_enq_bits_id; // @[Deinterleaver.scala 44:27]
  wire [63:0] qs_queue_1_io_enq_bits_data; // @[Deinterleaver.scala 44:27]
  wire [1:0] qs_queue_1_io_enq_bits_resp; // @[Deinterleaver.scala 44:27]
  wire [3:0] qs_queue_1_io_enq_bits_echo_tl_state_size; // @[Deinterleaver.scala 44:27]
  wire [4:0] qs_queue_1_io_enq_bits_echo_tl_state_source; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_1_io_enq_bits_last; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_1_io_deq_ready; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_1_io_deq_valid; // @[Deinterleaver.scala 44:27]
  wire [3:0] qs_queue_1_io_deq_bits_id; // @[Deinterleaver.scala 44:27]
  wire [63:0] qs_queue_1_io_deq_bits_data; // @[Deinterleaver.scala 44:27]
  wire [1:0] qs_queue_1_io_deq_bits_resp; // @[Deinterleaver.scala 44:27]
  wire [3:0] qs_queue_1_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 44:27]
  wire [4:0] qs_queue_1_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_1_io_deq_bits_last; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_2_clock; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_2_reset; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_2_io_enq_ready; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_2_io_enq_valid; // @[Deinterleaver.scala 44:27]
  wire [3:0] qs_queue_2_io_enq_bits_id; // @[Deinterleaver.scala 44:27]
  wire [63:0] qs_queue_2_io_enq_bits_data; // @[Deinterleaver.scala 44:27]
  wire [1:0] qs_queue_2_io_enq_bits_resp; // @[Deinterleaver.scala 44:27]
  wire [3:0] qs_queue_2_io_enq_bits_echo_tl_state_size; // @[Deinterleaver.scala 44:27]
  wire [4:0] qs_queue_2_io_enq_bits_echo_tl_state_source; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_2_io_enq_bits_last; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_2_io_deq_ready; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_2_io_deq_valid; // @[Deinterleaver.scala 44:27]
  wire [3:0] qs_queue_2_io_deq_bits_id; // @[Deinterleaver.scala 44:27]
  wire [63:0] qs_queue_2_io_deq_bits_data; // @[Deinterleaver.scala 44:27]
  wire [1:0] qs_queue_2_io_deq_bits_resp; // @[Deinterleaver.scala 44:27]
  wire [3:0] qs_queue_2_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 44:27]
  wire [4:0] qs_queue_2_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_2_io_deq_bits_last; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_3_clock; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_3_reset; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_3_io_enq_ready; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_3_io_enq_valid; // @[Deinterleaver.scala 44:27]
  wire [3:0] qs_queue_3_io_enq_bits_id; // @[Deinterleaver.scala 44:27]
  wire [63:0] qs_queue_3_io_enq_bits_data; // @[Deinterleaver.scala 44:27]
  wire [1:0] qs_queue_3_io_enq_bits_resp; // @[Deinterleaver.scala 44:27]
  wire [3:0] qs_queue_3_io_enq_bits_echo_tl_state_size; // @[Deinterleaver.scala 44:27]
  wire [4:0] qs_queue_3_io_enq_bits_echo_tl_state_source; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_3_io_enq_bits_last; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_3_io_deq_ready; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_3_io_deq_valid; // @[Deinterleaver.scala 44:27]
  wire [3:0] qs_queue_3_io_deq_bits_id; // @[Deinterleaver.scala 44:27]
  wire [63:0] qs_queue_3_io_deq_bits_data; // @[Deinterleaver.scala 44:27]
  wire [1:0] qs_queue_3_io_deq_bits_resp; // @[Deinterleaver.scala 44:27]
  wire [3:0] qs_queue_3_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 44:27]
  wire [4:0] qs_queue_3_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_3_io_deq_bits_last; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_4_clock; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_4_reset; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_4_io_enq_ready; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_4_io_enq_valid; // @[Deinterleaver.scala 44:27]
  wire [3:0] qs_queue_4_io_enq_bits_id; // @[Deinterleaver.scala 44:27]
  wire [63:0] qs_queue_4_io_enq_bits_data; // @[Deinterleaver.scala 44:27]
  wire [1:0] qs_queue_4_io_enq_bits_resp; // @[Deinterleaver.scala 44:27]
  wire [3:0] qs_queue_4_io_enq_bits_echo_tl_state_size; // @[Deinterleaver.scala 44:27]
  wire [4:0] qs_queue_4_io_enq_bits_echo_tl_state_source; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_4_io_enq_bits_last; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_4_io_deq_ready; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_4_io_deq_valid; // @[Deinterleaver.scala 44:27]
  wire [3:0] qs_queue_4_io_deq_bits_id; // @[Deinterleaver.scala 44:27]
  wire [63:0] qs_queue_4_io_deq_bits_data; // @[Deinterleaver.scala 44:27]
  wire [1:0] qs_queue_4_io_deq_bits_resp; // @[Deinterleaver.scala 44:27]
  wire [3:0] qs_queue_4_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 44:27]
  wire [4:0] qs_queue_4_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 44:27]
  wire  qs_queue_4_io_deq_bits_last; // @[Deinterleaver.scala 44:27]
  wire [15:0] enq_OH = 16'h1 << auto_out_r_bits_id; // @[OneHot.scala 65:12]
  wire  enq_OH_bools_5 = enq_OH[5]; // @[Deinterleaver.scala 102:35]
  wire  queue_wire_5_enq_valid = enq_OH_bools_5 & auto_out_r_valid; // @[Deinterleaver.scala 108:28]
  wire  enq_OH_bools_6 = enq_OH[6]; // @[Deinterleaver.scala 102:35]
  wire  queue_wire_6_enq_valid = enq_OH_bools_6 & auto_out_r_valid; // @[Deinterleaver.scala 108:28]
  wire  enq_OH_bools_7 = enq_OH[7]; // @[Deinterleaver.scala 102:35]
  wire  queue_wire_7_enq_valid = enq_OH_bools_7 & auto_out_r_valid; // @[Deinterleaver.scala 108:28]
  wire  enq_OH_bools_8 = enq_OH[8]; // @[Deinterleaver.scala 102:35]
  wire  queue_wire_8_enq_valid = enq_OH_bools_8 & auto_out_r_valid; // @[Deinterleaver.scala 108:28]
  wire  enq_OH_bools_9 = enq_OH[9]; // @[Deinterleaver.scala 102:35]
  wire  queue_wire_9_enq_valid = enq_OH_bools_9 & auto_out_r_valid; // @[Deinterleaver.scala 108:28]
  wire  enq_OH_bools_10 = enq_OH[10]; // @[Deinterleaver.scala 102:35]
  wire  queue_wire_10_enq_valid = enq_OH_bools_10 & auto_out_r_valid; // @[Deinterleaver.scala 108:28]
  wire  enq_OH_bools_11 = enq_OH[11]; // @[Deinterleaver.scala 102:35]
  wire  queue_wire_11_enq_valid = enq_OH_bools_11 & auto_out_r_valid; // @[Deinterleaver.scala 108:28]
  wire  enq_OH_bools_12 = enq_OH[12]; // @[Deinterleaver.scala 102:35]
  wire  queue_wire_12_enq_valid = enq_OH_bools_12 & auto_out_r_valid; // @[Deinterleaver.scala 108:28]
  wire  enq_OH_bools_13 = enq_OH[13]; // @[Deinterleaver.scala 102:35]
  wire  queue_wire_13_enq_valid = enq_OH_bools_13 & auto_out_r_valid; // @[Deinterleaver.scala 108:28]
  wire  enq_OH_bools_14 = enq_OH[14]; // @[Deinterleaver.scala 102:35]
  wire  queue_wire_14_enq_valid = enq_OH_bools_14 & auto_out_r_valid; // @[Deinterleaver.scala 108:28]
  wire  enq_OH_bools_15 = enq_OH[15]; // @[Deinterleaver.scala 102:35]
  wire  queue_wire_15_enq_valid = enq_OH_bools_15 & auto_out_r_valid; // @[Deinterleaver.scala 108:28]
  reg  locked; // @[Deinterleaver.scala 60:29]
  reg [3:0] deq_id; // @[Deinterleaver.scala 61:25]
  wire [15:0] deq_OH = 16'h1 << deq_id; // @[OneHot.scala 65:12]
  reg [3:0] pending_count; // @[Deinterleaver.scala 72:32]
  wire  enq_readys_4 = qs_queue_4_io_enq_ready; // @[Deinterleaver.scala 105:33 Deinterleaver.scala 105:33]
  wire  enq_readys_3 = qs_queue_3_io_enq_ready; // @[Deinterleaver.scala 105:33 Deinterleaver.scala 105:33]
  wire  enq_readys_2 = qs_queue_2_io_enq_ready; // @[Deinterleaver.scala 105:33 Deinterleaver.scala 105:33]
  wire  enq_readys_1 = qs_queue_1_io_enq_ready; // @[Deinterleaver.scala 105:33 Deinterleaver.scala 105:33]
  wire  enq_readys_0 = qs_queue_0_io_enq_ready; // @[Deinterleaver.scala 105:33 Deinterleaver.scala 105:33]
  wire  _GEN_99 = 4'h1 == auto_out_r_bits_id ? enq_readys_1 : enq_readys_0; // @[Deinterleaver.scala 106:21 Deinterleaver.scala 106:21]
  wire  _GEN_100 = 4'h2 == auto_out_r_bits_id ? enq_readys_2 : _GEN_99; // @[Deinterleaver.scala 106:21 Deinterleaver.scala 106:21]
  wire  _GEN_101 = 4'h3 == auto_out_r_bits_id ? enq_readys_3 : _GEN_100; // @[Deinterleaver.scala 106:21 Deinterleaver.scala 106:21]
  wire  _GEN_102 = 4'h4 == auto_out_r_bits_id ? enq_readys_4 : _GEN_101; // @[Deinterleaver.scala 106:21 Deinterleaver.scala 106:21]
  wire  _GEN_103 = 4'h5 == auto_out_r_bits_id ? 1'h0 : _GEN_102; // @[Deinterleaver.scala 106:21 Deinterleaver.scala 106:21]
  wire  _GEN_104 = 4'h6 == auto_out_r_bits_id ? 1'h0 : _GEN_103; // @[Deinterleaver.scala 106:21 Deinterleaver.scala 106:21]
  wire  _GEN_105 = 4'h7 == auto_out_r_bits_id ? 1'h0 : _GEN_104; // @[Deinterleaver.scala 106:21 Deinterleaver.scala 106:21]
  wire  _GEN_106 = 4'h8 == auto_out_r_bits_id ? 1'h0 : _GEN_105; // @[Deinterleaver.scala 106:21 Deinterleaver.scala 106:21]
  wire  _GEN_107 = 4'h9 == auto_out_r_bits_id ? 1'h0 : _GEN_106; // @[Deinterleaver.scala 106:21 Deinterleaver.scala 106:21]
  wire  _GEN_108 = 4'ha == auto_out_r_bits_id ? 1'h0 : _GEN_107; // @[Deinterleaver.scala 106:21 Deinterleaver.scala 106:21]
  wire  _GEN_109 = 4'hb == auto_out_r_bits_id ? 1'h0 : _GEN_108; // @[Deinterleaver.scala 106:21 Deinterleaver.scala 106:21]
  wire  _GEN_110 = 4'hc == auto_out_r_bits_id ? 1'h0 : _GEN_109; // @[Deinterleaver.scala 106:21 Deinterleaver.scala 106:21]
  wire  _GEN_111 = 4'hd == auto_out_r_bits_id ? 1'h0 : _GEN_110; // @[Deinterleaver.scala 106:21 Deinterleaver.scala 106:21]
  wire  _GEN_112 = 4'he == auto_out_r_bits_id ? 1'h0 : _GEN_111; // @[Deinterleaver.scala 106:21 Deinterleaver.scala 106:21]
  wire  auto_data_1_r_ready = 4'hf == auto_out_r_bits_id ? 1'h0 : _GEN_112; // @[Deinterleaver.scala 106:21 Deinterleaver.scala 106:21]
  wire  _pending_inc_T_1 = auto_data_1_r_ready & auto_out_r_valid; // @[Decoupled.scala 40:37]
  wire  pending_inc = ((enq_OH[0]) & _pending_inc_T_1) & auto_out_r_bits_last; // @[Deinterleaver.scala 74:49]
  wire  _pending_dec_T_1 = auto_in_r_ready & locked; // @[Decoupled.scala 40:37]
  wire  deq_bits_4_last = qs_queue_4_io_deq_bits_last; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire  deq_bits_3_last = qs_queue_3_io_deq_bits_last; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire  deq_bits_2_last = qs_queue_2_io_deq_bits_last; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire  deq_bits_1_last = qs_queue_1_io_deq_bits_last; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire  deq_bits_0_last = qs_queue_0_io_deq_bits_last; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire  _GEN_13 = 4'h1 == deq_id ? deq_bits_1_last : deq_bits_0_last; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire  _GEN_19 = 4'h2 == deq_id ? deq_bits_2_last : _GEN_13; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire  _GEN_25 = 4'h3 == deq_id ? deq_bits_3_last : _GEN_19; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire  _GEN_31 = 4'h4 == deq_id ? deq_bits_4_last : _GEN_25; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire  _GEN_37 = 4'h5 == deq_id ? 1'h0 : _GEN_31; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire  _GEN_43 = 4'h6 == deq_id ? 1'h0 : _GEN_37; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire  _GEN_49 = 4'h7 == deq_id ? 1'h0 : _GEN_43; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire  _GEN_55 = 4'h8 == deq_id ? 1'h0 : _GEN_49; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire  _GEN_61 = 4'h9 == deq_id ? 1'h0 : _GEN_55; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire  _GEN_67 = 4'ha == deq_id ? 1'h0 : _GEN_61; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire  _GEN_73 = 4'hb == deq_id ? 1'h0 : _GEN_67; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire  _GEN_79 = 4'hc == deq_id ? 1'h0 : _GEN_73; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire  _GEN_85 = 4'hd == deq_id ? 1'h0 : _GEN_79; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire  _GEN_91 = 4'he == deq_id ? 1'h0 : _GEN_85; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire  auto_data_r_bits_last = 4'hf == deq_id ? 1'h0 : _GEN_91; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire  pending_dec = ((deq_OH[0]) & _pending_dec_T_1) & auto_data_r_bits_last; // @[Deinterleaver.scala 75:48]
  wire [3:0] _GEN_114 = {{3'd0}, pending_inc}; // @[Deinterleaver.scala 76:27]
  wire [3:0] _pending_pending_next_T_1 = pending_count + _GEN_114; // @[Deinterleaver.scala 76:27]
  wire [3:0] _GEN_115 = {{3'd0}, pending_dec}; // @[Deinterleaver.scala 76:40]
  wire [3:0] pending_next = _pending_pending_next_T_1 - _GEN_115; // @[Deinterleaver.scala 76:40]
  wire  pending_left_left_left_left = pending_next != 4'h0; // @[Deinterleaver.scala 81:18]
  reg [3:0] pending_count_1; // @[Deinterleaver.scala 72:32]
  wire  pending_inc_1 = ((enq_OH[1]) & _pending_inc_T_1) & auto_out_r_bits_last; // @[Deinterleaver.scala 74:49]
  wire  pending_dec_1 = ((deq_OH[1]) & _pending_dec_T_1) & auto_data_r_bits_last; // @[Deinterleaver.scala 75:48]
  wire [3:0] _GEN_116 = {{3'd0}, pending_inc_1}; // @[Deinterleaver.scala 76:27]
  wire [3:0] _pending_pending_next_1_T_1 = pending_count_1 + _GEN_116; // @[Deinterleaver.scala 76:27]
  wire [3:0] _GEN_117 = {{3'd0}, pending_dec_1}; // @[Deinterleaver.scala 76:40]
  wire [3:0] pending_next_1 = _pending_pending_next_1_T_1 - _GEN_117; // @[Deinterleaver.scala 76:40]
  wire  pending_left_left_left_right = pending_next_1 != 4'h0; // @[Deinterleaver.scala 81:18]
  reg [3:0] pending_count_2; // @[Deinterleaver.scala 72:32]
  wire  pending_inc_2 = ((enq_OH[2]) & _pending_inc_T_1) & auto_out_r_bits_last; // @[Deinterleaver.scala 74:49]
  wire  pending_dec_2 = ((deq_OH[2]) & _pending_dec_T_1) & auto_data_r_bits_last; // @[Deinterleaver.scala 75:48]
  wire [3:0] _GEN_118 = {{3'd0}, pending_inc_2}; // @[Deinterleaver.scala 76:27]
  wire [3:0] _pending_pending_next_2_T_1 = pending_count_2 + _GEN_118; // @[Deinterleaver.scala 76:27]
  wire [3:0] _GEN_119 = {{3'd0}, pending_dec_2}; // @[Deinterleaver.scala 76:40]
  wire [3:0] pending_next_2 = _pending_pending_next_2_T_1 - _GEN_119; // @[Deinterleaver.scala 76:40]
  wire  pending_left_left_right_left = pending_next_2 != 4'h0; // @[Deinterleaver.scala 81:18]
  reg [3:0] pending_count_3; // @[Deinterleaver.scala 72:32]
  wire  pending_inc_3 = ((enq_OH[3]) & _pending_inc_T_1) & auto_out_r_bits_last; // @[Deinterleaver.scala 74:49]
  wire  pending_dec_3 = ((deq_OH[3]) & _pending_dec_T_1) & auto_data_r_bits_last; // @[Deinterleaver.scala 75:48]
  wire [3:0] _GEN_120 = {{3'd0}, pending_inc_3}; // @[Deinterleaver.scala 76:27]
  wire [3:0] _pending_pending_next_3_T_1 = pending_count_3 + _GEN_120; // @[Deinterleaver.scala 76:27]
  wire [3:0] _GEN_121 = {{3'd0}, pending_dec_3}; // @[Deinterleaver.scala 76:40]
  wire [3:0] pending_next_3 = _pending_pending_next_3_T_1 - _GEN_121; // @[Deinterleaver.scala 76:40]
  wire  pending_left_left_right_right = pending_next_3 != 4'h0; // @[Deinterleaver.scala 81:18]
  reg [3:0] pending_count_4; // @[Deinterleaver.scala 72:32]
  wire  pending_inc_4 = ((enq_OH[4]) & _pending_inc_T_1) & auto_out_r_bits_last; // @[Deinterleaver.scala 74:49]
  wire  pending_dec_4 = ((deq_OH[4]) & _pending_dec_T_1) & auto_data_r_bits_last; // @[Deinterleaver.scala 75:48]
  wire [3:0] _GEN_122 = {{3'd0}, pending_inc_4}; // @[Deinterleaver.scala 76:27]
  wire [3:0] _pending_pending_next_4_T_1 = pending_count_4 + _GEN_122; // @[Deinterleaver.scala 76:27]
  wire [3:0] _GEN_123 = {{3'd0}, pending_dec_4}; // @[Deinterleaver.scala 76:40]
  wire [3:0] pending_next_4 = _pending_pending_next_4_T_1 - _GEN_123; // @[Deinterleaver.scala 76:40]
  wire  pending_left_right_left_left = pending_next_4 != 4'h0; // @[Deinterleaver.scala 81:18]
  wire [15:0] pending = {8'h0,2'h0,1'h0,pending_left_right_left_left,pending_left_left_right_right,
    pending_left_left_right_left,pending_left_left_left_right,pending_left_left_left_left}; // @[Cat.scala 29:58]
  wire [16:0] _winner_T = {pending, 1'h0}; // @[package.scala 222:48]
  wire [15:0] _winner_T_2 = pending | (_winner_T[15:0]); // @[package.scala 222:43]
  wire [17:0] _winner_T_3 = {_winner_T_2, 2'h0}; // @[package.scala 222:48]
  wire [15:0] _winner_T_5 = _winner_T_2 | (_winner_T_3[15:0]); // @[package.scala 222:43]
  wire [19:0] _winner_T_6 = {_winner_T_5, 4'h0}; // @[package.scala 222:48]
  wire [15:0] _winner_T_8 = _winner_T_5 | (_winner_T_6[15:0]); // @[package.scala 222:43]
  wire [23:0] _winner_T_9 = {_winner_T_8, 8'h0}; // @[package.scala 222:48]
  wire [15:0] _winner_T_11 = _winner_T_8 | (_winner_T_9[15:0]); // @[package.scala 222:43]
  wire [16:0] _winner_T_13 = {_winner_T_11, 1'h0}; // @[Deinterleaver.scala 86:51]
  wire [16:0] _winner_T_14 = ~_winner_T_13; // @[Deinterleaver.scala 86:33]
  wire [16:0] _GEN_124 = {{1'd0}, pending}; // @[Deinterleaver.scala 86:31]
  wire [16:0] winner = _GEN_124 & _winner_T_14; // @[Deinterleaver.scala 86:31]
  wire  _T_3 = (~locked) | (_pending_dec_T_1 & auto_data_r_bits_last); // @[Deinterleaver.scala 87:23]
  wire  _locked_T = |pending; // @[Deinterleaver.scala 88:29]
  wire  deq_id_hi = winner[16]; // @[OneHot.scala 30:18]
  wire [15:0] deq_id_lo = winner[15:0]; // @[OneHot.scala 31:18]
  wire  deq_id_right = |deq_id_hi; // @[OneHot.scala 32:14]
  wire [15:0] _GEN_125 = {{15'd0}, deq_id_hi}; // @[OneHot.scala 32:28]
  wire [15:0] _deq_id_T = _GEN_125 | deq_id_lo; // @[OneHot.scala 32:28]
  wire [7:0] deq_id_hi_1 = _deq_id_T[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] deq_id_lo_1 = _deq_id_T[7:0]; // @[OneHot.scala 31:18]
  wire  deq_id_right_1 = |deq_id_hi_1; // @[OneHot.scala 32:14]
  wire [7:0] _deq_id_T_1 = deq_id_hi_1 | deq_id_lo_1; // @[OneHot.scala 32:28]
  wire [3:0] deq_id_hi_2 = _deq_id_T_1[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] deq_id_lo_2 = _deq_id_T_1[3:0]; // @[OneHot.scala 31:18]
  wire  deq_id_right_2 = |deq_id_hi_2; // @[OneHot.scala 32:14]
  wire [3:0] _deq_id_T_2 = deq_id_hi_2 | deq_id_lo_2; // @[OneHot.scala 32:28]
  wire [1:0] deq_id_hi_3 = _deq_id_T_2[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] deq_id_lo_3 = _deq_id_T_2[1:0]; // @[OneHot.scala 31:18]
  wire  deq_id_right_3 = |deq_id_hi_3; // @[OneHot.scala 32:14]
  wire [1:0] _deq_id_T_3 = deq_id_hi_3 | deq_id_lo_3; // @[OneHot.scala 32:28]
  wire  deq_id_left = _deq_id_T_3[1]; // @[CircuitMath.scala 30:8]
  wire [4:0] _deq_id_T_4 = {deq_id_right,deq_id_right_1,deq_id_right_2,deq_id_right_3,deq_id_left}; // @[Cat.scala 29:58]
  wire [4:0] _GEN_1 = _T_3 ? _deq_id_T_4 : {{1'd0}, deq_id}; // @[Deinterleaver.scala 87:59 Deinterleaver.scala 89:18 Deinterleaver.scala 61:25]
  wire [3:0] deq_bits_0_id = qs_queue_0_io_deq_bits_id; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [63:0] deq_bits_0_data = qs_queue_0_io_deq_bits_data; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [1:0] deq_bits_0_resp = qs_queue_0_io_deq_bits_resp; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [3:0] deq_bits_0_echo_tl_state_size = qs_queue_0_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [4:0] deq_bits_0_echo_tl_state_source = qs_queue_0_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [3:0] deq_bits_1_id = qs_queue_1_io_deq_bits_id; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [3:0] _GEN_8 = 4'h1 == deq_id ? deq_bits_1_id : deq_bits_0_id; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [63:0] deq_bits_1_data = qs_queue_1_io_deq_bits_data; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [63:0] _GEN_9 = 4'h1 == deq_id ? deq_bits_1_data : deq_bits_0_data; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [1:0] deq_bits_1_resp = qs_queue_1_io_deq_bits_resp; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [1:0] _GEN_10 = 4'h1 == deq_id ? deq_bits_1_resp : deq_bits_0_resp; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] deq_bits_1_echo_tl_state_size = qs_queue_1_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [3:0] _GEN_11 = 4'h1 == deq_id ? deq_bits_1_echo_tl_state_size : deq_bits_0_echo_tl_state_size; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [4:0] deq_bits_1_echo_tl_state_source = qs_queue_1_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [4:0] _GEN_12 = 4'h1 == deq_id ? deq_bits_1_echo_tl_state_source : deq_bits_0_echo_tl_state_source; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] deq_bits_2_id = qs_queue_2_io_deq_bits_id; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [3:0] _GEN_14 = 4'h2 == deq_id ? deq_bits_2_id : _GEN_8; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [63:0] deq_bits_2_data = qs_queue_2_io_deq_bits_data; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [63:0] _GEN_15 = 4'h2 == deq_id ? deq_bits_2_data : _GEN_9; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [1:0] deq_bits_2_resp = qs_queue_2_io_deq_bits_resp; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [1:0] _GEN_16 = 4'h2 == deq_id ? deq_bits_2_resp : _GEN_10; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] deq_bits_2_echo_tl_state_size = qs_queue_2_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [3:0] _GEN_17 = 4'h2 == deq_id ? deq_bits_2_echo_tl_state_size : _GEN_11; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [4:0] deq_bits_2_echo_tl_state_source = qs_queue_2_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [4:0] _GEN_18 = 4'h2 == deq_id ? deq_bits_2_echo_tl_state_source : _GEN_12; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] deq_bits_3_id = qs_queue_3_io_deq_bits_id; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [3:0] _GEN_20 = 4'h3 == deq_id ? deq_bits_3_id : _GEN_14; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [63:0] deq_bits_3_data = qs_queue_3_io_deq_bits_data; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [63:0] _GEN_21 = 4'h3 == deq_id ? deq_bits_3_data : _GEN_15; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [1:0] deq_bits_3_resp = qs_queue_3_io_deq_bits_resp; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [1:0] _GEN_22 = 4'h3 == deq_id ? deq_bits_3_resp : _GEN_16; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] deq_bits_3_echo_tl_state_size = qs_queue_3_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [3:0] _GEN_23 = 4'h3 == deq_id ? deq_bits_3_echo_tl_state_size : _GEN_17; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [4:0] deq_bits_3_echo_tl_state_source = qs_queue_3_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [4:0] _GEN_24 = 4'h3 == deq_id ? deq_bits_3_echo_tl_state_source : _GEN_18; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] deq_bits_4_id = qs_queue_4_io_deq_bits_id; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [3:0] _GEN_26 = 4'h4 == deq_id ? deq_bits_4_id : _GEN_20; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [63:0] deq_bits_4_data = qs_queue_4_io_deq_bits_data; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [63:0] _GEN_27 = 4'h4 == deq_id ? deq_bits_4_data : _GEN_21; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [1:0] deq_bits_4_resp = qs_queue_4_io_deq_bits_resp; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [1:0] _GEN_28 = 4'h4 == deq_id ? deq_bits_4_resp : _GEN_22; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] deq_bits_4_echo_tl_state_size = qs_queue_4_io_deq_bits_echo_tl_state_size; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [3:0] _GEN_29 = 4'h4 == deq_id ? deq_bits_4_echo_tl_state_size : _GEN_23; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [4:0] deq_bits_4_echo_tl_state_source = qs_queue_4_io_deq_bits_echo_tl_state_source; // @[Deinterleaver.scala 94:31 Deinterleaver.scala 94:31]
  wire [4:0] _GEN_30 = 4'h4 == deq_id ? deq_bits_4_echo_tl_state_source : _GEN_24; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] _GEN_32 = 4'h5 == deq_id ? 4'h0 : _GEN_26; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [63:0] _GEN_33 = 4'h5 == deq_id ? 64'h0 : _GEN_27; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [1:0] _GEN_34 = 4'h5 == deq_id ? 2'h0 : _GEN_28; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] _GEN_35 = 4'h5 == deq_id ? 4'h0 : _GEN_29; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [4:0] _GEN_36 = 4'h5 == deq_id ? 5'h0 : _GEN_30; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] _GEN_38 = 4'h6 == deq_id ? 4'h0 : _GEN_32; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [63:0] _GEN_39 = 4'h6 == deq_id ? 64'h0 : _GEN_33; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [1:0] _GEN_40 = 4'h6 == deq_id ? 2'h0 : _GEN_34; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] _GEN_41 = 4'h6 == deq_id ? 4'h0 : _GEN_35; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [4:0] _GEN_42 = 4'h6 == deq_id ? 5'h0 : _GEN_36; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] _GEN_44 = 4'h7 == deq_id ? 4'h0 : _GEN_38; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [63:0] _GEN_45 = 4'h7 == deq_id ? 64'h0 : _GEN_39; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [1:0] _GEN_46 = 4'h7 == deq_id ? 2'h0 : _GEN_40; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] _GEN_47 = 4'h7 == deq_id ? 4'h0 : _GEN_41; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [4:0] _GEN_48 = 4'h7 == deq_id ? 5'h0 : _GEN_42; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] _GEN_50 = 4'h8 == deq_id ? 4'h0 : _GEN_44; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [63:0] _GEN_51 = 4'h8 == deq_id ? 64'h0 : _GEN_45; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [1:0] _GEN_52 = 4'h8 == deq_id ? 2'h0 : _GEN_46; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] _GEN_53 = 4'h8 == deq_id ? 4'h0 : _GEN_47; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [4:0] _GEN_54 = 4'h8 == deq_id ? 5'h0 : _GEN_48; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] _GEN_56 = 4'h9 == deq_id ? 4'h0 : _GEN_50; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [63:0] _GEN_57 = 4'h9 == deq_id ? 64'h0 : _GEN_51; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [1:0] _GEN_58 = 4'h9 == deq_id ? 2'h0 : _GEN_52; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] _GEN_59 = 4'h9 == deq_id ? 4'h0 : _GEN_53; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [4:0] _GEN_60 = 4'h9 == deq_id ? 5'h0 : _GEN_54; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] _GEN_62 = 4'ha == deq_id ? 4'h0 : _GEN_56; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [63:0] _GEN_63 = 4'ha == deq_id ? 64'h0 : _GEN_57; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [1:0] _GEN_64 = 4'ha == deq_id ? 2'h0 : _GEN_58; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] _GEN_65 = 4'ha == deq_id ? 4'h0 : _GEN_59; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [4:0] _GEN_66 = 4'ha == deq_id ? 5'h0 : _GEN_60; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] _GEN_68 = 4'hb == deq_id ? 4'h0 : _GEN_62; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [63:0] _GEN_69 = 4'hb == deq_id ? 64'h0 : _GEN_63; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [1:0] _GEN_70 = 4'hb == deq_id ? 2'h0 : _GEN_64; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] _GEN_71 = 4'hb == deq_id ? 4'h0 : _GEN_65; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [4:0] _GEN_72 = 4'hb == deq_id ? 5'h0 : _GEN_66; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] _GEN_74 = 4'hc == deq_id ? 4'h0 : _GEN_68; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [63:0] _GEN_75 = 4'hc == deq_id ? 64'h0 : _GEN_69; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [1:0] _GEN_76 = 4'hc == deq_id ? 2'h0 : _GEN_70; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] _GEN_77 = 4'hc == deq_id ? 4'h0 : _GEN_71; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [4:0] _GEN_78 = 4'hc == deq_id ? 5'h0 : _GEN_72; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] _GEN_80 = 4'hd == deq_id ? 4'h0 : _GEN_74; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [63:0] _GEN_81 = 4'hd == deq_id ? 64'h0 : _GEN_75; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [1:0] _GEN_82 = 4'hd == deq_id ? 2'h0 : _GEN_76; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] _GEN_83 = 4'hd == deq_id ? 4'h0 : _GEN_77; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [4:0] _GEN_84 = 4'hd == deq_id ? 5'h0 : _GEN_78; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] _GEN_86 = 4'he == deq_id ? 4'h0 : _GEN_80; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [63:0] _GEN_87 = 4'he == deq_id ? 64'h0 : _GEN_81; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [1:0] _GEN_88 = 4'he == deq_id ? 2'h0 : _GEN_82; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [3:0] _GEN_89 = 4'he == deq_id ? 4'h0 : _GEN_83; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  wire [4:0] _GEN_90 = 4'he == deq_id ? 5'h0 : _GEN_84; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  Queue_5 qs_queue_0 ( // @[Deinterleaver.scala 44:27]
    .clock(qs_queue_0_clock),
    .reset(qs_queue_0_reset),
    .io_enq_ready(qs_queue_0_io_enq_ready),
    .io_enq_valid(qs_queue_0_io_enq_valid),
    .io_enq_bits_id(qs_queue_0_io_enq_bits_id),
    .io_enq_bits_data(qs_queue_0_io_enq_bits_data),
    .io_enq_bits_resp(qs_queue_0_io_enq_bits_resp),
    .io_enq_bits_echo_tl_state_size(qs_queue_0_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(qs_queue_0_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_last(qs_queue_0_io_enq_bits_last),
    .io_deq_ready(qs_queue_0_io_deq_ready),
    .io_deq_valid(qs_queue_0_io_deq_valid),
    .io_deq_bits_id(qs_queue_0_io_deq_bits_id),
    .io_deq_bits_data(qs_queue_0_io_deq_bits_data),
    .io_deq_bits_resp(qs_queue_0_io_deq_bits_resp),
    .io_deq_bits_echo_tl_state_size(qs_queue_0_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(qs_queue_0_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_last(qs_queue_0_io_deq_bits_last)
  );
  Queue_5 qs_queue_1 ( // @[Deinterleaver.scala 44:27]
    .clock(qs_queue_1_clock),
    .reset(qs_queue_1_reset),
    .io_enq_ready(qs_queue_1_io_enq_ready),
    .io_enq_valid(qs_queue_1_io_enq_valid),
    .io_enq_bits_id(qs_queue_1_io_enq_bits_id),
    .io_enq_bits_data(qs_queue_1_io_enq_bits_data),
    .io_enq_bits_resp(qs_queue_1_io_enq_bits_resp),
    .io_enq_bits_echo_tl_state_size(qs_queue_1_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(qs_queue_1_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_last(qs_queue_1_io_enq_bits_last),
    .io_deq_ready(qs_queue_1_io_deq_ready),
    .io_deq_valid(qs_queue_1_io_deq_valid),
    .io_deq_bits_id(qs_queue_1_io_deq_bits_id),
    .io_deq_bits_data(qs_queue_1_io_deq_bits_data),
    .io_deq_bits_resp(qs_queue_1_io_deq_bits_resp),
    .io_deq_bits_echo_tl_state_size(qs_queue_1_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(qs_queue_1_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_last(qs_queue_1_io_deq_bits_last)
  );
  Queue_5 qs_queue_2 ( // @[Deinterleaver.scala 44:27]
    .clock(qs_queue_2_clock),
    .reset(qs_queue_2_reset),
    .io_enq_ready(qs_queue_2_io_enq_ready),
    .io_enq_valid(qs_queue_2_io_enq_valid),
    .io_enq_bits_id(qs_queue_2_io_enq_bits_id),
    .io_enq_bits_data(qs_queue_2_io_enq_bits_data),
    .io_enq_bits_resp(qs_queue_2_io_enq_bits_resp),
    .io_enq_bits_echo_tl_state_size(qs_queue_2_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(qs_queue_2_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_last(qs_queue_2_io_enq_bits_last),
    .io_deq_ready(qs_queue_2_io_deq_ready),
    .io_deq_valid(qs_queue_2_io_deq_valid),
    .io_deq_bits_id(qs_queue_2_io_deq_bits_id),
    .io_deq_bits_data(qs_queue_2_io_deq_bits_data),
    .io_deq_bits_resp(qs_queue_2_io_deq_bits_resp),
    .io_deq_bits_echo_tl_state_size(qs_queue_2_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(qs_queue_2_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_last(qs_queue_2_io_deq_bits_last)
  );
  Queue_5 qs_queue_3 ( // @[Deinterleaver.scala 44:27]
    .clock(qs_queue_3_clock),
    .reset(qs_queue_3_reset),
    .io_enq_ready(qs_queue_3_io_enq_ready),
    .io_enq_valid(qs_queue_3_io_enq_valid),
    .io_enq_bits_id(qs_queue_3_io_enq_bits_id),
    .io_enq_bits_data(qs_queue_3_io_enq_bits_data),
    .io_enq_bits_resp(qs_queue_3_io_enq_bits_resp),
    .io_enq_bits_echo_tl_state_size(qs_queue_3_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(qs_queue_3_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_last(qs_queue_3_io_enq_bits_last),
    .io_deq_ready(qs_queue_3_io_deq_ready),
    .io_deq_valid(qs_queue_3_io_deq_valid),
    .io_deq_bits_id(qs_queue_3_io_deq_bits_id),
    .io_deq_bits_data(qs_queue_3_io_deq_bits_data),
    .io_deq_bits_resp(qs_queue_3_io_deq_bits_resp),
    .io_deq_bits_echo_tl_state_size(qs_queue_3_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(qs_queue_3_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_last(qs_queue_3_io_deq_bits_last)
  );
  Queue_5 qs_queue_4 ( // @[Deinterleaver.scala 44:27]
    .clock(qs_queue_4_clock),
    .reset(qs_queue_4_reset),
    .io_enq_ready(qs_queue_4_io_enq_ready),
    .io_enq_valid(qs_queue_4_io_enq_valid),
    .io_enq_bits_id(qs_queue_4_io_enq_bits_id),
    .io_enq_bits_data(qs_queue_4_io_enq_bits_data),
    .io_enq_bits_resp(qs_queue_4_io_enq_bits_resp),
    .io_enq_bits_echo_tl_state_size(qs_queue_4_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(qs_queue_4_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_last(qs_queue_4_io_enq_bits_last),
    .io_deq_ready(qs_queue_4_io_deq_ready),
    .io_deq_valid(qs_queue_4_io_deq_valid),
    .io_deq_bits_id(qs_queue_4_io_deq_bits_id),
    .io_deq_bits_data(qs_queue_4_io_deq_bits_data),
    .io_deq_bits_resp(qs_queue_4_io_deq_bits_resp),
    .io_deq_bits_echo_tl_state_size(qs_queue_4_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(qs_queue_4_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_last(qs_queue_4_io_deq_bits_last)
  );
  assign auto_in_aw_ready = auto_out_aw_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_w_ready = auto_out_w_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_b_valid = auto_out_b_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_b_bits_id = auto_out_b_bits_id; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_b_bits_resp = auto_out_b_bits_resp; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_b_bits_echo_tl_state_size = auto_out_b_bits_echo_tl_state_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_b_bits_echo_tl_state_source = auto_out_b_bits_echo_tl_state_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_ar_ready = auto_out_ar_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_valid = locked; // @[Nodes.scala 1216:84 Deinterleaver.scala 93:20]
  assign auto_in_r_bits_id = 4'hf == deq_id ? 4'h0 : _GEN_86; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  assign auto_in_r_bits_data = 4'hf == deq_id ? 64'h0 : _GEN_87; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  assign auto_in_r_bits_resp = 4'hf == deq_id ? 2'h0 : _GEN_88; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  assign auto_in_r_bits_echo_tl_state_size = 4'hf == deq_id ? 4'h0 : _GEN_89; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  assign auto_in_r_bits_echo_tl_state_source = 4'hf == deq_id ? 5'h0 : _GEN_90; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  assign auto_in_r_bits_last = 4'hf == deq_id ? 1'h0 : _GEN_91; // @[Deinterleaver.scala 95:20 Deinterleaver.scala 95:20]
  assign auto_out_aw_valid = auto_in_aw_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_aw_bits_id = auto_in_aw_bits_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
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
  assign auto_out_w_valid = auto_in_w_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_w_bits_data = auto_in_w_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_w_bits_strb = auto_in_w_bits_strb; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_w_bits_last = auto_in_w_bits_last; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_b_ready = auto_in_b_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_valid = auto_in_ar_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_bits_id = auto_in_ar_bits_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
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
  assign auto_out_r_ready = 4'hf == auto_out_r_bits_id ? 1'h0 : _GEN_112; // @[Deinterleaver.scala 106:21 Deinterleaver.scala 106:21]
  assign qs_queue_0_clock = clock;
  assign qs_queue_0_reset = reset;
  assign qs_queue_0_io_enq_valid = (enq_OH[0]) & auto_out_r_valid; // @[Deinterleaver.scala 108:28]
  assign qs_queue_0_io_enq_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_0_io_enq_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_0_io_enq_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_0_io_enq_bits_echo_tl_state_size = auto_out_r_bits_echo_tl_state_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_0_io_enq_bits_echo_tl_state_source = auto_out_r_bits_echo_tl_state_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_0_io_enq_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_0_io_deq_ready = (deq_OH[0]) & _pending_dec_T_1; // @[Deinterleaver.scala 99:28]
  assign qs_queue_1_clock = clock;
  assign qs_queue_1_reset = reset;
  assign qs_queue_1_io_enq_valid = (enq_OH[1]) & auto_out_r_valid; // @[Deinterleaver.scala 108:28]
  assign qs_queue_1_io_enq_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_1_io_enq_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_1_io_enq_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_1_io_enq_bits_echo_tl_state_size = auto_out_r_bits_echo_tl_state_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_1_io_enq_bits_echo_tl_state_source = auto_out_r_bits_echo_tl_state_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_1_io_enq_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_1_io_deq_ready = (deq_OH[1]) & _pending_dec_T_1; // @[Deinterleaver.scala 99:28]
  assign qs_queue_2_clock = clock;
  assign qs_queue_2_reset = reset;
  assign qs_queue_2_io_enq_valid = (enq_OH[2]) & auto_out_r_valid; // @[Deinterleaver.scala 108:28]
  assign qs_queue_2_io_enq_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_2_io_enq_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_2_io_enq_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_2_io_enq_bits_echo_tl_state_size = auto_out_r_bits_echo_tl_state_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_2_io_enq_bits_echo_tl_state_source = auto_out_r_bits_echo_tl_state_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_2_io_enq_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_2_io_deq_ready = (deq_OH[2]) & _pending_dec_T_1; // @[Deinterleaver.scala 99:28]
  assign qs_queue_3_clock = clock;
  assign qs_queue_3_reset = reset;
  assign qs_queue_3_io_enq_valid = (enq_OH[3]) & auto_out_r_valid; // @[Deinterleaver.scala 108:28]
  assign qs_queue_3_io_enq_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_3_io_enq_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_3_io_enq_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_3_io_enq_bits_echo_tl_state_size = auto_out_r_bits_echo_tl_state_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_3_io_enq_bits_echo_tl_state_source = auto_out_r_bits_echo_tl_state_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_3_io_enq_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_3_io_deq_ready = (deq_OH[3]) & _pending_dec_T_1; // @[Deinterleaver.scala 99:28]
  assign qs_queue_4_clock = clock;
  assign qs_queue_4_reset = reset;
  assign qs_queue_4_io_enq_valid = (enq_OH[4]) & auto_out_r_valid; // @[Deinterleaver.scala 108:28]
  assign qs_queue_4_io_enq_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_4_io_enq_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_4_io_enq_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_4_io_enq_bits_echo_tl_state_size = auto_out_r_bits_echo_tl_state_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_4_io_enq_bits_echo_tl_state_source = auto_out_r_bits_echo_tl_state_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_4_io_enq_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign qs_queue_4_io_deq_ready = (deq_OH[4]) & _pending_dec_T_1; // @[Deinterleaver.scala 99:28]
  always @(posedge clock) begin
    if (reset) begin // @[Deinterleaver.scala 60:29]
      locked <= 1'h0; // @[Deinterleaver.scala 60:29]
    end else if (_T_3) begin // @[Deinterleaver.scala 87:59]
      locked <= _locked_T; // @[Deinterleaver.scala 88:18]
    end
    deq_id <= _GEN_1[3:0];
    if (reset) begin // @[Deinterleaver.scala 72:32]
      pending_count <= 4'h0; // @[Deinterleaver.scala 72:32]
    end else begin
      pending_count <= pending_next; // @[Deinterleaver.scala 77:19]
    end
    if (reset) begin // @[Deinterleaver.scala 72:32]
      pending_count_1 <= 4'h0; // @[Deinterleaver.scala 72:32]
    end else begin
      pending_count_1 <= pending_next_1; // @[Deinterleaver.scala 77:19]
    end
    if (reset) begin // @[Deinterleaver.scala 72:32]
      pending_count_2 <= 4'h0; // @[Deinterleaver.scala 72:32]
    end else begin
      pending_count_2 <= pending_next_2; // @[Deinterleaver.scala 77:19]
    end
    if (reset) begin // @[Deinterleaver.scala 72:32]
      pending_count_3 <= 4'h0; // @[Deinterleaver.scala 72:32]
    end else begin
      pending_count_3 <= pending_next_3; // @[Deinterleaver.scala 77:19]
    end
    if (reset) begin // @[Deinterleaver.scala 72:32]
      pending_count_4 <= 4'h0; // @[Deinterleaver.scala 72:32]
    end else begin
      pending_count_4 <= pending_next_4; // @[Deinterleaver.scala 77:19]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  locked = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  deq_id = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  pending_count = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  pending_count_1 = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  pending_count_2 = _RAND_4[3:0];
  _RAND_5 = {1{`RANDOM}};
  pending_count_3 = _RAND_5[3:0];
  _RAND_6 = {1{`RANDOM}};
  pending_count_4 = _RAND_6[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
