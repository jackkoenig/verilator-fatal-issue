module AXI4UserYanker(
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
  input         auto_out_w_ready,
  output        auto_out_w_valid,
  output [63:0] auto_out_w_bits_data,
  output [7:0]  auto_out_w_bits_strb,
  output        auto_out_w_bits_last,
  output        auto_out_b_ready,
  input         auto_out_b_valid,
  input  [3:0]  auto_out_b_bits_id,
  input  [1:0]  auto_out_b_bits_resp,
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
  output        auto_out_r_ready,
  input         auto_out_r_valid,
  input  [3:0]  auto_out_r_bits_id,
  input  [63:0] auto_out_r_bits_data,
  input  [1:0]  auto_out_r_bits_resp,
  input         auto_out_r_bits_last
);
  wire  QueueCompatibility_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [4:0] QueueCompatibility_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [4:0] QueueCompatibility_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_1_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_1_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_1_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_1_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_1_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [4:0] QueueCompatibility_1_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_1_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_1_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_1_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [4:0] QueueCompatibility_1_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_2_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_2_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_2_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_2_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_2_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [4:0] QueueCompatibility_2_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_2_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_2_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_2_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [4:0] QueueCompatibility_2_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_3_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_3_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_3_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_3_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_3_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [4:0] QueueCompatibility_3_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_3_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_3_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_3_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [4:0] QueueCompatibility_3_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_4_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_4_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_4_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_4_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_4_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [4:0] QueueCompatibility_4_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_4_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_4_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_4_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [4:0] QueueCompatibility_4_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_5_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_5_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_5_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_5_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_5_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [4:0] QueueCompatibility_5_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_5_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_5_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_5_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [4:0] QueueCompatibility_5_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_6_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_6_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_6_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_6_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_6_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [4:0] QueueCompatibility_6_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_6_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_6_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_6_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [4:0] QueueCompatibility_6_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_7_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_7_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_7_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_7_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_7_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [4:0] QueueCompatibility_7_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_7_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_7_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_7_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [4:0] QueueCompatibility_7_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_8_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_8_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_8_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_8_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_8_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [4:0] QueueCompatibility_8_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_8_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_8_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_8_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [4:0] QueueCompatibility_8_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_9_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_9_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_9_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_9_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_9_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [4:0] QueueCompatibility_9_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_9_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_9_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_9_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [4:0] QueueCompatibility_9_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire  _ar_ready_WIRE_0 = QueueCompatibility_io_enq_ready; // @[UserYanker.scala 47:25 UserYanker.scala 47:25]
  wire  _ar_ready_WIRE_1 = QueueCompatibility_1_io_enq_ready; // @[UserYanker.scala 47:25 UserYanker.scala 47:25]
  wire  _GEN_1 = 4'h1 == auto_in_ar_bits_id ? _ar_ready_WIRE_1 : _ar_ready_WIRE_0; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _ar_ready_WIRE_2 = QueueCompatibility_2_io_enq_ready; // @[UserYanker.scala 47:25 UserYanker.scala 47:25]
  wire  _GEN_2 = 4'h2 == auto_in_ar_bits_id ? _ar_ready_WIRE_2 : _GEN_1; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _ar_ready_WIRE_3 = QueueCompatibility_3_io_enq_ready; // @[UserYanker.scala 47:25 UserYanker.scala 47:25]
  wire  _GEN_3 = 4'h3 == auto_in_ar_bits_id ? _ar_ready_WIRE_3 : _GEN_2; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _ar_ready_WIRE_4 = QueueCompatibility_4_io_enq_ready; // @[UserYanker.scala 47:25 UserYanker.scala 47:25]
  wire  _GEN_4 = 4'h4 == auto_in_ar_bits_id ? _ar_ready_WIRE_4 : _GEN_3; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _GEN_5 = 4'h5 == auto_in_ar_bits_id ? 1'h0 : _GEN_4; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _GEN_6 = 4'h6 == auto_in_ar_bits_id ? 1'h0 : _GEN_5; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _GEN_7 = 4'h7 == auto_in_ar_bits_id ? 1'h0 : _GEN_6; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _GEN_8 = 4'h8 == auto_in_ar_bits_id ? 1'h0 : _GEN_7; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _GEN_9 = 4'h9 == auto_in_ar_bits_id ? 1'h0 : _GEN_8; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _GEN_10 = 4'ha == auto_in_ar_bits_id ? 1'h0 : _GEN_9; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _GEN_11 = 4'hb == auto_in_ar_bits_id ? 1'h0 : _GEN_10; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _GEN_12 = 4'hc == auto_in_ar_bits_id ? 1'h0 : _GEN_11; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _GEN_13 = 4'hd == auto_in_ar_bits_id ? 1'h0 : _GEN_12; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _GEN_14 = 4'he == auto_in_ar_bits_id ? 1'h0 : _GEN_13; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _GEN_15 = 4'hf == auto_in_ar_bits_id ? 1'h0 : _GEN_14; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _r_valid_WIRE_0 = QueueCompatibility_io_deq_valid; // @[UserYanker.scala 53:24 UserYanker.scala 53:24]
  wire  _r_valid_WIRE_1 = QueueCompatibility_1_io_deq_valid; // @[UserYanker.scala 53:24 UserYanker.scala 53:24]
  wire  _GEN_17 = 4'h1 == auto_out_r_bits_id ? _r_valid_WIRE_1 : _r_valid_WIRE_0; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _r_valid_WIRE_2 = QueueCompatibility_2_io_deq_valid; // @[UserYanker.scala 53:24 UserYanker.scala 53:24]
  wire  _GEN_18 = 4'h2 == auto_out_r_bits_id ? _r_valid_WIRE_2 : _GEN_17; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _r_valid_WIRE_3 = QueueCompatibility_3_io_deq_valid; // @[UserYanker.scala 53:24 UserYanker.scala 53:24]
  wire  _GEN_19 = 4'h3 == auto_out_r_bits_id ? _r_valid_WIRE_3 : _GEN_18; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _r_valid_WIRE_4 = QueueCompatibility_4_io_deq_valid; // @[UserYanker.scala 53:24 UserYanker.scala 53:24]
  wire  _GEN_20 = 4'h4 == auto_out_r_bits_id ? _r_valid_WIRE_4 : _GEN_19; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _GEN_21 = 4'h5 == auto_out_r_bits_id ? 1'h0 : _GEN_20; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _GEN_22 = 4'h6 == auto_out_r_bits_id ? 1'h0 : _GEN_21; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _GEN_23 = 4'h7 == auto_out_r_bits_id ? 1'h0 : _GEN_22; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _GEN_24 = 4'h8 == auto_out_r_bits_id ? 1'h0 : _GEN_23; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _GEN_25 = 4'h9 == auto_out_r_bits_id ? 1'h0 : _GEN_24; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _GEN_26 = 4'ha == auto_out_r_bits_id ? 1'h0 : _GEN_25; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _GEN_27 = 4'hb == auto_out_r_bits_id ? 1'h0 : _GEN_26; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _GEN_28 = 4'hc == auto_out_r_bits_id ? 1'h0 : _GEN_27; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _GEN_29 = 4'hd == auto_out_r_bits_id ? 1'h0 : _GEN_28; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _GEN_30 = 4'he == auto_out_r_bits_id ? 1'h0 : _GEN_29; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _GEN_31 = 4'hf == auto_out_r_bits_id ? 1'h0 : _GEN_30; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire [3:0] _r_bits_WIRE_0_tl_state_size = QueueCompatibility_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [4:0] _r_bits_WIRE_0_tl_state_source = QueueCompatibility_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [3:0] _r_bits_WIRE_1_tl_state_size = QueueCompatibility_1_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [3:0] _GEN_34 = 4'h1 == auto_out_r_bits_id ? _r_bits_WIRE_1_tl_state_size : _r_bits_WIRE_0_tl_state_size; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _r_bits_WIRE_1_tl_state_source = QueueCompatibility_1_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [4:0] _GEN_35 = 4'h1 == auto_out_r_bits_id ? _r_bits_WIRE_1_tl_state_source : _r_bits_WIRE_0_tl_state_source; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _r_bits_WIRE_2_tl_state_size = QueueCompatibility_2_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [3:0] _GEN_36 = 4'h2 == auto_out_r_bits_id ? _r_bits_WIRE_2_tl_state_size : _GEN_34; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _r_bits_WIRE_2_tl_state_source = QueueCompatibility_2_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [4:0] _GEN_37 = 4'h2 == auto_out_r_bits_id ? _r_bits_WIRE_2_tl_state_source : _GEN_35; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _r_bits_WIRE_3_tl_state_size = QueueCompatibility_3_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [3:0] _GEN_38 = 4'h3 == auto_out_r_bits_id ? _r_bits_WIRE_3_tl_state_size : _GEN_36; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _r_bits_WIRE_3_tl_state_source = QueueCompatibility_3_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [4:0] _GEN_39 = 4'h3 == auto_out_r_bits_id ? _r_bits_WIRE_3_tl_state_source : _GEN_37; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _r_bits_WIRE_4_tl_state_size = QueueCompatibility_4_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [3:0] _GEN_40 = 4'h4 == auto_out_r_bits_id ? _r_bits_WIRE_4_tl_state_size : _GEN_38; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _r_bits_WIRE_4_tl_state_source = QueueCompatibility_4_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [4:0] _GEN_41 = 4'h4 == auto_out_r_bits_id ? _r_bits_WIRE_4_tl_state_source : _GEN_39; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _GEN_42 = 4'h5 == auto_out_r_bits_id ? 4'h0 : _GEN_40; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _GEN_43 = 4'h5 == auto_out_r_bits_id ? 5'h0 : _GEN_41; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _GEN_44 = 4'h6 == auto_out_r_bits_id ? 4'h0 : _GEN_42; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _GEN_45 = 4'h6 == auto_out_r_bits_id ? 5'h0 : _GEN_43; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _GEN_46 = 4'h7 == auto_out_r_bits_id ? 4'h0 : _GEN_44; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _GEN_47 = 4'h7 == auto_out_r_bits_id ? 5'h0 : _GEN_45; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _GEN_48 = 4'h8 == auto_out_r_bits_id ? 4'h0 : _GEN_46; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _GEN_49 = 4'h8 == auto_out_r_bits_id ? 5'h0 : _GEN_47; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _GEN_50 = 4'h9 == auto_out_r_bits_id ? 4'h0 : _GEN_48; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _GEN_51 = 4'h9 == auto_out_r_bits_id ? 5'h0 : _GEN_49; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _GEN_52 = 4'ha == auto_out_r_bits_id ? 4'h0 : _GEN_50; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _GEN_53 = 4'ha == auto_out_r_bits_id ? 5'h0 : _GEN_51; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _GEN_54 = 4'hb == auto_out_r_bits_id ? 4'h0 : _GEN_52; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _GEN_55 = 4'hb == auto_out_r_bits_id ? 5'h0 : _GEN_53; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _GEN_56 = 4'hc == auto_out_r_bits_id ? 4'h0 : _GEN_54; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _GEN_57 = 4'hc == auto_out_r_bits_id ? 5'h0 : _GEN_55; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _GEN_58 = 4'hd == auto_out_r_bits_id ? 4'h0 : _GEN_56; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _GEN_59 = 4'hd == auto_out_r_bits_id ? 5'h0 : _GEN_57; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _GEN_60 = 4'he == auto_out_r_bits_id ? 4'h0 : _GEN_58; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _GEN_61 = 4'he == auto_out_r_bits_id ? 5'h0 : _GEN_59; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [15:0] _arsel_T = 16'h1 << auto_in_ar_bits_id; // @[OneHot.scala 65:12]
  wire  arsel_0 = _arsel_T[0]; // @[UserYanker.scala 59:55]
  wire  arsel_1 = _arsel_T[1]; // @[UserYanker.scala 59:55]
  wire  arsel_2 = _arsel_T[2]; // @[UserYanker.scala 59:55]
  wire  arsel_3 = _arsel_T[3]; // @[UserYanker.scala 59:55]
  wire  arsel_4 = _arsel_T[4]; // @[UserYanker.scala 59:55]
  wire [15:0] _rsel_T = 16'h1 << auto_out_r_bits_id; // @[OneHot.scala 65:12]
  wire  rsel_0 = _rsel_T[0]; // @[UserYanker.scala 60:55]
  wire  rsel_1 = _rsel_T[1]; // @[UserYanker.scala 60:55]
  wire  rsel_2 = _rsel_T[2]; // @[UserYanker.scala 60:55]
  wire  rsel_3 = _rsel_T[3]; // @[UserYanker.scala 60:55]
  wire  rsel_4 = _rsel_T[4]; // @[UserYanker.scala 60:55]
  wire  _aw_ready_WIRE_0 = QueueCompatibility_5_io_enq_ready; // @[UserYanker.scala 68:25 UserYanker.scala 68:25]
  wire  _aw_ready_WIRE_1 = QueueCompatibility_6_io_enq_ready; // @[UserYanker.scala 68:25 UserYanker.scala 68:25]
  wire  _GEN_65 = 4'h1 == auto_in_aw_bits_id ? _aw_ready_WIRE_1 : _aw_ready_WIRE_0; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _aw_ready_WIRE_2 = QueueCompatibility_7_io_enq_ready; // @[UserYanker.scala 68:25 UserYanker.scala 68:25]
  wire  _GEN_66 = 4'h2 == auto_in_aw_bits_id ? _aw_ready_WIRE_2 : _GEN_65; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _aw_ready_WIRE_3 = QueueCompatibility_8_io_enq_ready; // @[UserYanker.scala 68:25 UserYanker.scala 68:25]
  wire  _GEN_67 = 4'h3 == auto_in_aw_bits_id ? _aw_ready_WIRE_3 : _GEN_66; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _aw_ready_WIRE_4 = QueueCompatibility_9_io_enq_ready; // @[UserYanker.scala 68:25 UserYanker.scala 68:25]
  wire  _GEN_68 = 4'h4 == auto_in_aw_bits_id ? _aw_ready_WIRE_4 : _GEN_67; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _GEN_69 = 4'h5 == auto_in_aw_bits_id ? 1'h0 : _GEN_68; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _GEN_70 = 4'h6 == auto_in_aw_bits_id ? 1'h0 : _GEN_69; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _GEN_71 = 4'h7 == auto_in_aw_bits_id ? 1'h0 : _GEN_70; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _GEN_72 = 4'h8 == auto_in_aw_bits_id ? 1'h0 : _GEN_71; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _GEN_73 = 4'h9 == auto_in_aw_bits_id ? 1'h0 : _GEN_72; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _GEN_74 = 4'ha == auto_in_aw_bits_id ? 1'h0 : _GEN_73; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _GEN_75 = 4'hb == auto_in_aw_bits_id ? 1'h0 : _GEN_74; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _GEN_76 = 4'hc == auto_in_aw_bits_id ? 1'h0 : _GEN_75; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _GEN_77 = 4'hd == auto_in_aw_bits_id ? 1'h0 : _GEN_76; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _GEN_78 = 4'he == auto_in_aw_bits_id ? 1'h0 : _GEN_77; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _GEN_79 = 4'hf == auto_in_aw_bits_id ? 1'h0 : _GEN_78; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _b_valid_WIRE_0 = QueueCompatibility_5_io_deq_valid; // @[UserYanker.scala 74:24 UserYanker.scala 74:24]
  wire  _b_valid_WIRE_1 = QueueCompatibility_6_io_deq_valid; // @[UserYanker.scala 74:24 UserYanker.scala 74:24]
  wire  _GEN_81 = 4'h1 == auto_out_b_bits_id ? _b_valid_WIRE_1 : _b_valid_WIRE_0; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _b_valid_WIRE_2 = QueueCompatibility_7_io_deq_valid; // @[UserYanker.scala 74:24 UserYanker.scala 74:24]
  wire  _GEN_82 = 4'h2 == auto_out_b_bits_id ? _b_valid_WIRE_2 : _GEN_81; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _b_valid_WIRE_3 = QueueCompatibility_8_io_deq_valid; // @[UserYanker.scala 74:24 UserYanker.scala 74:24]
  wire  _GEN_83 = 4'h3 == auto_out_b_bits_id ? _b_valid_WIRE_3 : _GEN_82; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _b_valid_WIRE_4 = QueueCompatibility_9_io_deq_valid; // @[UserYanker.scala 74:24 UserYanker.scala 74:24]
  wire  _GEN_84 = 4'h4 == auto_out_b_bits_id ? _b_valid_WIRE_4 : _GEN_83; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _GEN_85 = 4'h5 == auto_out_b_bits_id ? 1'h0 : _GEN_84; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _GEN_86 = 4'h6 == auto_out_b_bits_id ? 1'h0 : _GEN_85; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _GEN_87 = 4'h7 == auto_out_b_bits_id ? 1'h0 : _GEN_86; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _GEN_88 = 4'h8 == auto_out_b_bits_id ? 1'h0 : _GEN_87; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _GEN_89 = 4'h9 == auto_out_b_bits_id ? 1'h0 : _GEN_88; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _GEN_90 = 4'ha == auto_out_b_bits_id ? 1'h0 : _GEN_89; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _GEN_91 = 4'hb == auto_out_b_bits_id ? 1'h0 : _GEN_90; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _GEN_92 = 4'hc == auto_out_b_bits_id ? 1'h0 : _GEN_91; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _GEN_93 = 4'hd == auto_out_b_bits_id ? 1'h0 : _GEN_92; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _GEN_94 = 4'he == auto_out_b_bits_id ? 1'h0 : _GEN_93; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _GEN_95 = 4'hf == auto_out_b_bits_id ? 1'h0 : _GEN_94; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire [3:0] _b_bits_WIRE_0_tl_state_size = QueueCompatibility_5_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [4:0] _b_bits_WIRE_0_tl_state_source = QueueCompatibility_5_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [3:0] _b_bits_WIRE_1_tl_state_size = QueueCompatibility_6_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [3:0] _GEN_98 = 4'h1 == auto_out_b_bits_id ? _b_bits_WIRE_1_tl_state_size : _b_bits_WIRE_0_tl_state_size; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _b_bits_WIRE_1_tl_state_source = QueueCompatibility_6_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [4:0] _GEN_99 = 4'h1 == auto_out_b_bits_id ? _b_bits_WIRE_1_tl_state_source : _b_bits_WIRE_0_tl_state_source; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _b_bits_WIRE_2_tl_state_size = QueueCompatibility_7_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [3:0] _GEN_100 = 4'h2 == auto_out_b_bits_id ? _b_bits_WIRE_2_tl_state_size : _GEN_98; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _b_bits_WIRE_2_tl_state_source = QueueCompatibility_7_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [4:0] _GEN_101 = 4'h2 == auto_out_b_bits_id ? _b_bits_WIRE_2_tl_state_source : _GEN_99; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _b_bits_WIRE_3_tl_state_size = QueueCompatibility_8_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [3:0] _GEN_102 = 4'h3 == auto_out_b_bits_id ? _b_bits_WIRE_3_tl_state_size : _GEN_100; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _b_bits_WIRE_3_tl_state_source = QueueCompatibility_8_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [4:0] _GEN_103 = 4'h3 == auto_out_b_bits_id ? _b_bits_WIRE_3_tl_state_source : _GEN_101; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _b_bits_WIRE_4_tl_state_size = QueueCompatibility_9_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [3:0] _GEN_104 = 4'h4 == auto_out_b_bits_id ? _b_bits_WIRE_4_tl_state_size : _GEN_102; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _b_bits_WIRE_4_tl_state_source = QueueCompatibility_9_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [4:0] _GEN_105 = 4'h4 == auto_out_b_bits_id ? _b_bits_WIRE_4_tl_state_source : _GEN_103; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _GEN_106 = 4'h5 == auto_out_b_bits_id ? 4'h0 : _GEN_104; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _GEN_107 = 4'h5 == auto_out_b_bits_id ? 5'h0 : _GEN_105; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _GEN_108 = 4'h6 == auto_out_b_bits_id ? 4'h0 : _GEN_106; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _GEN_109 = 4'h6 == auto_out_b_bits_id ? 5'h0 : _GEN_107; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _GEN_110 = 4'h7 == auto_out_b_bits_id ? 4'h0 : _GEN_108; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _GEN_111 = 4'h7 == auto_out_b_bits_id ? 5'h0 : _GEN_109; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _GEN_112 = 4'h8 == auto_out_b_bits_id ? 4'h0 : _GEN_110; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _GEN_113 = 4'h8 == auto_out_b_bits_id ? 5'h0 : _GEN_111; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _GEN_114 = 4'h9 == auto_out_b_bits_id ? 4'h0 : _GEN_112; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _GEN_115 = 4'h9 == auto_out_b_bits_id ? 5'h0 : _GEN_113; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _GEN_116 = 4'ha == auto_out_b_bits_id ? 4'h0 : _GEN_114; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _GEN_117 = 4'ha == auto_out_b_bits_id ? 5'h0 : _GEN_115; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _GEN_118 = 4'hb == auto_out_b_bits_id ? 4'h0 : _GEN_116; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _GEN_119 = 4'hb == auto_out_b_bits_id ? 5'h0 : _GEN_117; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _GEN_120 = 4'hc == auto_out_b_bits_id ? 4'h0 : _GEN_118; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _GEN_121 = 4'hc == auto_out_b_bits_id ? 5'h0 : _GEN_119; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _GEN_122 = 4'hd == auto_out_b_bits_id ? 4'h0 : _GEN_120; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _GEN_123 = 4'hd == auto_out_b_bits_id ? 5'h0 : _GEN_121; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _GEN_124 = 4'he == auto_out_b_bits_id ? 4'h0 : _GEN_122; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [4:0] _GEN_125 = 4'he == auto_out_b_bits_id ? 5'h0 : _GEN_123; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [15:0] _awsel_T = 16'h1 << auto_in_aw_bits_id; // @[OneHot.scala 65:12]
  wire  awsel_0 = _awsel_T[0]; // @[UserYanker.scala 80:55]
  wire  awsel_1 = _awsel_T[1]; // @[UserYanker.scala 80:55]
  wire  awsel_2 = _awsel_T[2]; // @[UserYanker.scala 80:55]
  wire  awsel_3 = _awsel_T[3]; // @[UserYanker.scala 80:55]
  wire  awsel_4 = _awsel_T[4]; // @[UserYanker.scala 80:55]
  wire [15:0] _bsel_T = 16'h1 << auto_out_b_bits_id; // @[OneHot.scala 65:12]
  wire  bsel_0 = _bsel_T[0]; // @[UserYanker.scala 81:55]
  wire  bsel_1 = _bsel_T[1]; // @[UserYanker.scala 81:55]
  wire  bsel_2 = _bsel_T[2]; // @[UserYanker.scala 81:55]
  wire  bsel_3 = _bsel_T[3]; // @[UserYanker.scala 81:55]
  wire  bsel_4 = _bsel_T[4]; // @[UserYanker.scala 81:55]
  QueueCompatibility QueueCompatibility ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_clock),
    .reset(QueueCompatibility_reset),
    .io_enq_ready(QueueCompatibility_io_enq_ready),
    .io_enq_valid(QueueCompatibility_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_io_deq_ready),
    .io_deq_valid(QueueCompatibility_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_1 QueueCompatibility_1 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_1_clock),
    .reset(QueueCompatibility_1_reset),
    .io_enq_ready(QueueCompatibility_1_io_enq_ready),
    .io_enq_valid(QueueCompatibility_1_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_1_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_1_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_1_io_deq_ready),
    .io_deq_valid(QueueCompatibility_1_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_1_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_1_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_1 QueueCompatibility_2 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_2_clock),
    .reset(QueueCompatibility_2_reset),
    .io_enq_ready(QueueCompatibility_2_io_enq_ready),
    .io_enq_valid(QueueCompatibility_2_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_2_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_2_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_2_io_deq_ready),
    .io_deq_valid(QueueCompatibility_2_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_2_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_2_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_3 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_3_clock),
    .reset(QueueCompatibility_3_reset),
    .io_enq_ready(QueueCompatibility_3_io_enq_ready),
    .io_enq_valid(QueueCompatibility_3_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_3_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_3_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_3_io_deq_ready),
    .io_deq_valid(QueueCompatibility_3_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_3_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_3_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_4 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_4_clock),
    .reset(QueueCompatibility_4_reset),
    .io_enq_ready(QueueCompatibility_4_io_enq_ready),
    .io_enq_valid(QueueCompatibility_4_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_4_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_4_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_4_io_deq_ready),
    .io_deq_valid(QueueCompatibility_4_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_4_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_4_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_5 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_5_clock),
    .reset(QueueCompatibility_5_reset),
    .io_enq_ready(QueueCompatibility_5_io_enq_ready),
    .io_enq_valid(QueueCompatibility_5_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_5_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_5_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_5_io_deq_ready),
    .io_deq_valid(QueueCompatibility_5_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_5_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_5_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_1 QueueCompatibility_6 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_6_clock),
    .reset(QueueCompatibility_6_reset),
    .io_enq_ready(QueueCompatibility_6_io_enq_ready),
    .io_enq_valid(QueueCompatibility_6_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_6_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_6_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_6_io_deq_ready),
    .io_deq_valid(QueueCompatibility_6_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_6_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_6_io_deq_bits_tl_state_source)
  );
  QueueCompatibility_1 QueueCompatibility_7 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_7_clock),
    .reset(QueueCompatibility_7_reset),
    .io_enq_ready(QueueCompatibility_7_io_enq_ready),
    .io_enq_valid(QueueCompatibility_7_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_7_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_7_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_7_io_deq_ready),
    .io_deq_valid(QueueCompatibility_7_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_7_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_7_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_8 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_8_clock),
    .reset(QueueCompatibility_8_reset),
    .io_enq_ready(QueueCompatibility_8_io_enq_ready),
    .io_enq_valid(QueueCompatibility_8_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_8_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_8_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_8_io_deq_ready),
    .io_deq_valid(QueueCompatibility_8_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_8_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_8_io_deq_bits_tl_state_source)
  );
  QueueCompatibility QueueCompatibility_9 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_9_clock),
    .reset(QueueCompatibility_9_reset),
    .io_enq_ready(QueueCompatibility_9_io_enq_ready),
    .io_enq_valid(QueueCompatibility_9_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_9_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_9_io_enq_bits_tl_state_source),
    .io_deq_ready(QueueCompatibility_9_io_deq_ready),
    .io_deq_valid(QueueCompatibility_9_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_9_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_9_io_deq_bits_tl_state_source)
  );
  assign auto_in_aw_ready = auto_out_aw_ready & _GEN_79; // @[UserYanker.scala 69:36]
  assign auto_in_w_ready = auto_out_w_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_b_valid = auto_out_b_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_b_bits_id = auto_out_b_bits_id; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_b_bits_resp = auto_out_b_bits_resp; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_b_bits_echo_tl_state_size = 4'hf == auto_out_b_bits_id ? 4'h0 : _GEN_124; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  assign auto_in_b_bits_echo_tl_state_source = 4'hf == auto_out_b_bits_id ? 5'h0 : _GEN_125; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  assign auto_in_ar_ready = auto_out_ar_ready & _GEN_15; // @[UserYanker.scala 48:36]
  assign auto_in_r_valid = auto_out_r_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_echo_tl_state_size = 4'hf == auto_out_r_bits_id ? 4'h0 : _GEN_60; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  assign auto_in_r_bits_echo_tl_state_source = 4'hf == auto_out_r_bits_id ? 5'h0 : _GEN_61; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  assign auto_in_r_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_out_aw_valid = auto_in_aw_valid & _GEN_79; // @[UserYanker.scala 70:36]
  assign auto_out_aw_bits_id = auto_in_aw_bits_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_aw_bits_addr = auto_in_aw_bits_addr; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_aw_bits_len = auto_in_aw_bits_len; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_aw_bits_size = auto_in_aw_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_aw_bits_burst = auto_in_aw_bits_burst; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_aw_bits_lock = auto_in_aw_bits_lock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_aw_bits_cache = auto_in_aw_bits_cache; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_aw_bits_prot = auto_in_aw_bits_prot; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_aw_bits_qos = auto_in_aw_bits_qos; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_w_valid = auto_in_w_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_w_bits_data = auto_in_w_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_w_bits_strb = auto_in_w_bits_strb; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_w_bits_last = auto_in_w_bits_last; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_b_ready = auto_in_b_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_valid = auto_in_ar_valid & _GEN_15; // @[UserYanker.scala 49:36]
  assign auto_out_ar_bits_id = auto_in_ar_bits_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_bits_addr = auto_in_ar_bits_addr; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_bits_len = auto_in_ar_bits_len; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_bits_size = auto_in_ar_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_bits_burst = auto_in_ar_bits_burst; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_bits_lock = auto_in_ar_bits_lock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_bits_cache = auto_in_ar_bits_cache; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_bits_prot = auto_in_ar_bits_prot; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_ar_bits_qos = auto_in_ar_bits_qos; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_r_ready = auto_in_r_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_clock = clock;
  assign QueueCompatibility_reset = reset;
  assign QueueCompatibility_io_enq_valid = (auto_in_ar_valid & auto_out_ar_ready) & arsel_0; // @[UserYanker.scala 63:53]
  assign QueueCompatibility_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_io_deq_ready = ((auto_out_r_valid & auto_in_r_ready) & rsel_0) & auto_out_r_bits_last; // @[UserYanker.scala 62:58]
  assign QueueCompatibility_1_clock = clock;
  assign QueueCompatibility_1_reset = reset;
  assign QueueCompatibility_1_io_enq_valid = (auto_in_ar_valid & auto_out_ar_ready) & arsel_1; // @[UserYanker.scala 63:53]
  assign QueueCompatibility_1_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_1_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_1_io_deq_ready = ((auto_out_r_valid & auto_in_r_ready) & rsel_1) & auto_out_r_bits_last; // @[UserYanker.scala 62:58]
  assign QueueCompatibility_2_clock = clock;
  assign QueueCompatibility_2_reset = reset;
  assign QueueCompatibility_2_io_enq_valid = (auto_in_ar_valid & auto_out_ar_ready) & arsel_2; // @[UserYanker.scala 63:53]
  assign QueueCompatibility_2_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_2_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_2_io_deq_ready = ((auto_out_r_valid & auto_in_r_ready) & rsel_2) & auto_out_r_bits_last; // @[UserYanker.scala 62:58]
  assign QueueCompatibility_3_clock = clock;
  assign QueueCompatibility_3_reset = reset;
  assign QueueCompatibility_3_io_enq_valid = (auto_in_ar_valid & auto_out_ar_ready) & arsel_3; // @[UserYanker.scala 63:53]
  assign QueueCompatibility_3_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_3_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_3_io_deq_ready = ((auto_out_r_valid & auto_in_r_ready) & rsel_3) & auto_out_r_bits_last; // @[UserYanker.scala 62:58]
  assign QueueCompatibility_4_clock = clock;
  assign QueueCompatibility_4_reset = reset;
  assign QueueCompatibility_4_io_enq_valid = (auto_in_ar_valid & auto_out_ar_ready) & arsel_4; // @[UserYanker.scala 63:53]
  assign QueueCompatibility_4_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_4_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_4_io_deq_ready = ((auto_out_r_valid & auto_in_r_ready) & rsel_4) & auto_out_r_bits_last; // @[UserYanker.scala 62:58]
  assign QueueCompatibility_5_clock = clock;
  assign QueueCompatibility_5_reset = reset;
  assign QueueCompatibility_5_io_enq_valid = (auto_in_aw_valid & auto_out_aw_ready) & awsel_0; // @[UserYanker.scala 84:53]
  assign QueueCompatibility_5_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_5_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_5_io_deq_ready = (auto_out_b_valid & auto_in_b_ready) & bsel_0; // @[UserYanker.scala 83:53]
  assign QueueCompatibility_6_clock = clock;
  assign QueueCompatibility_6_reset = reset;
  assign QueueCompatibility_6_io_enq_valid = (auto_in_aw_valid & auto_out_aw_ready) & awsel_1; // @[UserYanker.scala 84:53]
  assign QueueCompatibility_6_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_6_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_6_io_deq_ready = (auto_out_b_valid & auto_in_b_ready) & bsel_1; // @[UserYanker.scala 83:53]
  assign QueueCompatibility_7_clock = clock;
  assign QueueCompatibility_7_reset = reset;
  assign QueueCompatibility_7_io_enq_valid = (auto_in_aw_valid & auto_out_aw_ready) & awsel_2; // @[UserYanker.scala 84:53]
  assign QueueCompatibility_7_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_7_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_7_io_deq_ready = (auto_out_b_valid & auto_in_b_ready) & bsel_2; // @[UserYanker.scala 83:53]
  assign QueueCompatibility_8_clock = clock;
  assign QueueCompatibility_8_reset = reset;
  assign QueueCompatibility_8_io_enq_valid = (auto_in_aw_valid & auto_out_aw_ready) & awsel_3; // @[UserYanker.scala 84:53]
  assign QueueCompatibility_8_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_8_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_8_io_deq_ready = (auto_out_b_valid & auto_in_b_ready) & bsel_3; // @[UserYanker.scala 83:53]
  assign QueueCompatibility_9_clock = clock;
  assign QueueCompatibility_9_reset = reset;
  assign QueueCompatibility_9_io_enq_valid = (auto_in_aw_valid & auto_out_aw_ready) & awsel_4; // @[UserYanker.scala 84:53]
  assign QueueCompatibility_9_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_9_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_9_io_deq_ready = (auto_out_b_valid & auto_in_b_ready) & bsel_4; // @[UserYanker.scala 83:53]
endmodule
