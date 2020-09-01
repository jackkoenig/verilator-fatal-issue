module AXI4UserYanker_2(
  input         clock,
  input         reset,
  output        auto_in_aw_ready,
  input         auto_in_aw_valid,
  input  [3:0]  auto_in_aw_bits_id,
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
  input  [2:0]  auto_in_aw_bits_echo_extra_id,
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
  output [6:0]  auto_in_b_bits_echo_tl_state_source,
  output [2:0]  auto_in_b_bits_echo_extra_id,
  output        auto_in_ar_ready,
  input         auto_in_ar_valid,
  input  [3:0]  auto_in_ar_bits_id,
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
  input  [2:0]  auto_in_ar_bits_echo_extra_id,
  input         auto_in_r_ready,
  output        auto_in_r_valid,
  output [3:0]  auto_in_r_bits_id,
  output [63:0] auto_in_r_bits_data,
  output [1:0]  auto_in_r_bits_resp,
  output [3:0]  auto_in_r_bits_echo_tl_state_size,
  output [6:0]  auto_in_r_bits_echo_tl_state_source,
  output [2:0]  auto_in_r_bits_echo_extra_id,
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
  output [31:0] auto_out_ar_bits_addr,
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
  wire [6:0] QueueCompatibility_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_1_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_1_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_1_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_1_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_1_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_1_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_1_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_1_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_1_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_1_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_1_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_1_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_2_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_2_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_2_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_2_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_2_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_2_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_2_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_2_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_2_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_2_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_2_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_2_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_3_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_3_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_3_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_3_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_3_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_3_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_3_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_3_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_3_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_3_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_3_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_3_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_4_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_4_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_4_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_4_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_4_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_4_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_4_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_4_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_4_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_4_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_4_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_4_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_5_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_5_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_5_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_5_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_5_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_5_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_5_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_5_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_5_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_5_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_5_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_5_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_6_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_6_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_6_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_6_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_6_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_6_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_6_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_6_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_6_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_6_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_6_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_6_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_7_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_7_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_7_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_7_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_7_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_7_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_7_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_7_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_7_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_7_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_7_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_7_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_8_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_8_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_8_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_8_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_8_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_8_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_8_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_8_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_8_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_8_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_8_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_8_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_9_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_9_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_9_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_9_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_9_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_9_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_9_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_9_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_9_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_9_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_9_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_9_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_10_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_10_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_10_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_10_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_10_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_10_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_10_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_10_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_10_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_10_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_10_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_10_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_11_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_11_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_11_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_11_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_11_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_11_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_11_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_11_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_11_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_11_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_11_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_11_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_12_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_12_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_12_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_12_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_12_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_12_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_12_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_12_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_12_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_12_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_12_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_12_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_13_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_13_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_13_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_13_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_13_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_13_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_13_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_13_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_13_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_13_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_13_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_13_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_14_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_14_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_14_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_14_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_14_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_14_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_14_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_14_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_14_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_14_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_14_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_14_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_15_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_15_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_15_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_15_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_15_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_15_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_15_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_15_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_15_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_15_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_15_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_15_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_16_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_16_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_16_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_16_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_16_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_16_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_16_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_16_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_16_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_16_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_16_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_16_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_17_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_17_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_17_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_17_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_17_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_17_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_17_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_17_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_17_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_17_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_17_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_17_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_18_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_18_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_18_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_18_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_18_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_18_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_18_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_18_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_18_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_18_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_18_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_18_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_19_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_19_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_19_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_19_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_19_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_19_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_19_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_19_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_19_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_19_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_19_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_19_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_20_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_20_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_20_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_20_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_20_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_20_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_20_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_20_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_20_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_20_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_20_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_20_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_21_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_21_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_21_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_21_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_21_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_21_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_21_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_21_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_21_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_21_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_21_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_21_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_22_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_22_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_22_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_22_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_22_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_22_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_22_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_22_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_22_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_22_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_22_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_22_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_23_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_23_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_23_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_23_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_23_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_23_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_23_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_23_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_23_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_23_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_23_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_23_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_24_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_24_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_24_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_24_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_24_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_24_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_24_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_24_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_24_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_24_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_24_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_24_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_25_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_25_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_25_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_25_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_25_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_25_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_25_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_25_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_25_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_25_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_25_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_25_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_26_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_26_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_26_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_26_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_26_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_26_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_26_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_26_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_26_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_26_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_26_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_26_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_27_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_27_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_27_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_27_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_27_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_27_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_27_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_27_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_27_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_27_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_27_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_27_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_28_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_28_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_28_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_28_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_28_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_28_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_28_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_28_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_28_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_28_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_28_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_28_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_29_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_29_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_29_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_29_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_29_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_29_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_29_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_29_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_29_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_29_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_29_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_29_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_30_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_30_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_30_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_30_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_30_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_30_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_30_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_30_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_30_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_30_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_30_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_30_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_31_clock; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_31_reset; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_31_io_enq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_31_io_enq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_31_io_enq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_31_io_enq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_31_io_enq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_31_io_deq_ready; // @[UserYanker.scala 39:17]
  wire  QueueCompatibility_31_io_deq_valid; // @[UserYanker.scala 39:17]
  wire [3:0] QueueCompatibility_31_io_deq_bits_tl_state_size; // @[UserYanker.scala 39:17]
  wire [6:0] QueueCompatibility_31_io_deq_bits_tl_state_source; // @[UserYanker.scala 39:17]
  wire [2:0] QueueCompatibility_31_io_deq_bits_extra_id; // @[UserYanker.scala 39:17]
  wire  _ar_ready_WIRE_0 = QueueCompatibility_io_enq_ready; // @[UserYanker.scala 47:25 UserYanker.scala 47:25]
  wire  _ar_ready_WIRE_1 = QueueCompatibility_1_io_enq_ready; // @[UserYanker.scala 47:25 UserYanker.scala 47:25]
  wire  _GEN_1 = 4'h1 == auto_in_ar_bits_id ? _ar_ready_WIRE_1 : _ar_ready_WIRE_0; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _ar_ready_WIRE_2 = QueueCompatibility_2_io_enq_ready; // @[UserYanker.scala 47:25 UserYanker.scala 47:25]
  wire  _GEN_2 = 4'h2 == auto_in_ar_bits_id ? _ar_ready_WIRE_2 : _GEN_1; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _ar_ready_WIRE_3 = QueueCompatibility_3_io_enq_ready; // @[UserYanker.scala 47:25 UserYanker.scala 47:25]
  wire  _GEN_3 = 4'h3 == auto_in_ar_bits_id ? _ar_ready_WIRE_3 : _GEN_2; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _ar_ready_WIRE_4 = QueueCompatibility_4_io_enq_ready; // @[UserYanker.scala 47:25 UserYanker.scala 47:25]
  wire  _GEN_4 = 4'h4 == auto_in_ar_bits_id ? _ar_ready_WIRE_4 : _GEN_3; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _ar_ready_WIRE_5 = QueueCompatibility_5_io_enq_ready; // @[UserYanker.scala 47:25 UserYanker.scala 47:25]
  wire  _GEN_5 = 4'h5 == auto_in_ar_bits_id ? _ar_ready_WIRE_5 : _GEN_4; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _ar_ready_WIRE_6 = QueueCompatibility_6_io_enq_ready; // @[UserYanker.scala 47:25 UserYanker.scala 47:25]
  wire  _GEN_6 = 4'h6 == auto_in_ar_bits_id ? _ar_ready_WIRE_6 : _GEN_5; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _ar_ready_WIRE_7 = QueueCompatibility_7_io_enq_ready; // @[UserYanker.scala 47:25 UserYanker.scala 47:25]
  wire  _GEN_7 = 4'h7 == auto_in_ar_bits_id ? _ar_ready_WIRE_7 : _GEN_6; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _ar_ready_WIRE_8 = QueueCompatibility_8_io_enq_ready; // @[UserYanker.scala 47:25 UserYanker.scala 47:25]
  wire  _GEN_8 = 4'h8 == auto_in_ar_bits_id ? _ar_ready_WIRE_8 : _GEN_7; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _ar_ready_WIRE_9 = QueueCompatibility_9_io_enq_ready; // @[UserYanker.scala 47:25 UserYanker.scala 47:25]
  wire  _GEN_9 = 4'h9 == auto_in_ar_bits_id ? _ar_ready_WIRE_9 : _GEN_8; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _ar_ready_WIRE_10 = QueueCompatibility_10_io_enq_ready; // @[UserYanker.scala 47:25 UserYanker.scala 47:25]
  wire  _GEN_10 = 4'ha == auto_in_ar_bits_id ? _ar_ready_WIRE_10 : _GEN_9; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _ar_ready_WIRE_11 = QueueCompatibility_11_io_enq_ready; // @[UserYanker.scala 47:25 UserYanker.scala 47:25]
  wire  _GEN_11 = 4'hb == auto_in_ar_bits_id ? _ar_ready_WIRE_11 : _GEN_10; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _ar_ready_WIRE_12 = QueueCompatibility_12_io_enq_ready; // @[UserYanker.scala 47:25 UserYanker.scala 47:25]
  wire  _GEN_12 = 4'hc == auto_in_ar_bits_id ? _ar_ready_WIRE_12 : _GEN_11; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _ar_ready_WIRE_13 = QueueCompatibility_13_io_enq_ready; // @[UserYanker.scala 47:25 UserYanker.scala 47:25]
  wire  _GEN_13 = 4'hd == auto_in_ar_bits_id ? _ar_ready_WIRE_13 : _GEN_12; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _ar_ready_WIRE_14 = QueueCompatibility_14_io_enq_ready; // @[UserYanker.scala 47:25 UserYanker.scala 47:25]
  wire  _GEN_14 = 4'he == auto_in_ar_bits_id ? _ar_ready_WIRE_14 : _GEN_13; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _ar_ready_WIRE_15 = QueueCompatibility_15_io_enq_ready; // @[UserYanker.scala 47:25 UserYanker.scala 47:25]
  wire  _GEN_15 = 4'hf == auto_in_ar_bits_id ? _ar_ready_WIRE_15 : _GEN_14; // @[UserYanker.scala 48:36 UserYanker.scala 48:36]
  wire  _r_valid_WIRE_0 = QueueCompatibility_io_deq_valid; // @[UserYanker.scala 53:24 UserYanker.scala 53:24]
  wire  _r_valid_WIRE_1 = QueueCompatibility_1_io_deq_valid; // @[UserYanker.scala 53:24 UserYanker.scala 53:24]
  wire  _GEN_17 = 4'h1 == auto_out_r_bits_id ? _r_valid_WIRE_1 : _r_valid_WIRE_0; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _r_valid_WIRE_2 = QueueCompatibility_2_io_deq_valid; // @[UserYanker.scala 53:24 UserYanker.scala 53:24]
  wire  _GEN_18 = 4'h2 == auto_out_r_bits_id ? _r_valid_WIRE_2 : _GEN_17; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _r_valid_WIRE_3 = QueueCompatibility_3_io_deq_valid; // @[UserYanker.scala 53:24 UserYanker.scala 53:24]
  wire  _GEN_19 = 4'h3 == auto_out_r_bits_id ? _r_valid_WIRE_3 : _GEN_18; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _r_valid_WIRE_4 = QueueCompatibility_4_io_deq_valid; // @[UserYanker.scala 53:24 UserYanker.scala 53:24]
  wire  _GEN_20 = 4'h4 == auto_out_r_bits_id ? _r_valid_WIRE_4 : _GEN_19; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _r_valid_WIRE_5 = QueueCompatibility_5_io_deq_valid; // @[UserYanker.scala 53:24 UserYanker.scala 53:24]
  wire  _GEN_21 = 4'h5 == auto_out_r_bits_id ? _r_valid_WIRE_5 : _GEN_20; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _r_valid_WIRE_6 = QueueCompatibility_6_io_deq_valid; // @[UserYanker.scala 53:24 UserYanker.scala 53:24]
  wire  _GEN_22 = 4'h6 == auto_out_r_bits_id ? _r_valid_WIRE_6 : _GEN_21; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _r_valid_WIRE_7 = QueueCompatibility_7_io_deq_valid; // @[UserYanker.scala 53:24 UserYanker.scala 53:24]
  wire  _GEN_23 = 4'h7 == auto_out_r_bits_id ? _r_valid_WIRE_7 : _GEN_22; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _r_valid_WIRE_8 = QueueCompatibility_8_io_deq_valid; // @[UserYanker.scala 53:24 UserYanker.scala 53:24]
  wire  _GEN_24 = 4'h8 == auto_out_r_bits_id ? _r_valid_WIRE_8 : _GEN_23; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _r_valid_WIRE_9 = QueueCompatibility_9_io_deq_valid; // @[UserYanker.scala 53:24 UserYanker.scala 53:24]
  wire  _GEN_25 = 4'h9 == auto_out_r_bits_id ? _r_valid_WIRE_9 : _GEN_24; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _r_valid_WIRE_10 = QueueCompatibility_10_io_deq_valid; // @[UserYanker.scala 53:24 UserYanker.scala 53:24]
  wire  _GEN_26 = 4'ha == auto_out_r_bits_id ? _r_valid_WIRE_10 : _GEN_25; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _r_valid_WIRE_11 = QueueCompatibility_11_io_deq_valid; // @[UserYanker.scala 53:24 UserYanker.scala 53:24]
  wire  _GEN_27 = 4'hb == auto_out_r_bits_id ? _r_valid_WIRE_11 : _GEN_26; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _r_valid_WIRE_12 = QueueCompatibility_12_io_deq_valid; // @[UserYanker.scala 53:24 UserYanker.scala 53:24]
  wire  _GEN_28 = 4'hc == auto_out_r_bits_id ? _r_valid_WIRE_12 : _GEN_27; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _r_valid_WIRE_13 = QueueCompatibility_13_io_deq_valid; // @[UserYanker.scala 53:24 UserYanker.scala 53:24]
  wire  _GEN_29 = 4'hd == auto_out_r_bits_id ? _r_valid_WIRE_13 : _GEN_28; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _r_valid_WIRE_14 = QueueCompatibility_14_io_deq_valid; // @[UserYanker.scala 53:24 UserYanker.scala 53:24]
  wire  _GEN_30 = 4'he == auto_out_r_bits_id ? _r_valid_WIRE_14 : _GEN_29; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire  _r_valid_WIRE_15 = QueueCompatibility_15_io_deq_valid; // @[UserYanker.scala 53:24 UserYanker.scala 53:24]
  wire  _GEN_31 = 4'hf == auto_out_r_bits_id ? _r_valid_WIRE_15 : _GEN_30; // @[UserYanker.scala 55:28 UserYanker.scala 55:28]
  wire [3:0] _r_bits_WIRE_0_tl_state_size = QueueCompatibility_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [6:0] _r_bits_WIRE_0_tl_state_source = QueueCompatibility_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [2:0] _r_bits_WIRE_0_extra_id = QueueCompatibility_io_deq_bits_extra_id; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [3:0] _r_bits_WIRE_1_tl_state_size = QueueCompatibility_1_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [3:0] _GEN_35 = 4'h1 == auto_out_r_bits_id ? _r_bits_WIRE_1_tl_state_size : _r_bits_WIRE_0_tl_state_size; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _r_bits_WIRE_1_tl_state_source = QueueCompatibility_1_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [6:0] _GEN_36 = 4'h1 == auto_out_r_bits_id ? _r_bits_WIRE_1_tl_state_source : _r_bits_WIRE_0_tl_state_source; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _r_bits_WIRE_1_extra_id = QueueCompatibility_1_io_deq_bits_extra_id; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [2:0] _GEN_37 = 4'h1 == auto_out_r_bits_id ? _r_bits_WIRE_1_extra_id : _r_bits_WIRE_0_extra_id; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _r_bits_WIRE_2_tl_state_size = QueueCompatibility_2_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [3:0] _GEN_38 = 4'h2 == auto_out_r_bits_id ? _r_bits_WIRE_2_tl_state_size : _GEN_35; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _r_bits_WIRE_2_tl_state_source = QueueCompatibility_2_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [6:0] _GEN_39 = 4'h2 == auto_out_r_bits_id ? _r_bits_WIRE_2_tl_state_source : _GEN_36; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _r_bits_WIRE_2_extra_id = QueueCompatibility_2_io_deq_bits_extra_id; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [2:0] _GEN_40 = 4'h2 == auto_out_r_bits_id ? _r_bits_WIRE_2_extra_id : _GEN_37; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _r_bits_WIRE_3_tl_state_size = QueueCompatibility_3_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [3:0] _GEN_41 = 4'h3 == auto_out_r_bits_id ? _r_bits_WIRE_3_tl_state_size : _GEN_38; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _r_bits_WIRE_3_tl_state_source = QueueCompatibility_3_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [6:0] _GEN_42 = 4'h3 == auto_out_r_bits_id ? _r_bits_WIRE_3_tl_state_source : _GEN_39; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _r_bits_WIRE_3_extra_id = QueueCompatibility_3_io_deq_bits_extra_id; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [2:0] _GEN_43 = 4'h3 == auto_out_r_bits_id ? _r_bits_WIRE_3_extra_id : _GEN_40; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _r_bits_WIRE_4_tl_state_size = QueueCompatibility_4_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [3:0] _GEN_44 = 4'h4 == auto_out_r_bits_id ? _r_bits_WIRE_4_tl_state_size : _GEN_41; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _r_bits_WIRE_4_tl_state_source = QueueCompatibility_4_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [6:0] _GEN_45 = 4'h4 == auto_out_r_bits_id ? _r_bits_WIRE_4_tl_state_source : _GEN_42; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _r_bits_WIRE_4_extra_id = QueueCompatibility_4_io_deq_bits_extra_id; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [2:0] _GEN_46 = 4'h4 == auto_out_r_bits_id ? _r_bits_WIRE_4_extra_id : _GEN_43; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _r_bits_WIRE_5_tl_state_size = QueueCompatibility_5_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [3:0] _GEN_47 = 4'h5 == auto_out_r_bits_id ? _r_bits_WIRE_5_tl_state_size : _GEN_44; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _r_bits_WIRE_5_tl_state_source = QueueCompatibility_5_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [6:0] _GEN_48 = 4'h5 == auto_out_r_bits_id ? _r_bits_WIRE_5_tl_state_source : _GEN_45; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _r_bits_WIRE_5_extra_id = QueueCompatibility_5_io_deq_bits_extra_id; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [2:0] _GEN_49 = 4'h5 == auto_out_r_bits_id ? _r_bits_WIRE_5_extra_id : _GEN_46; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _r_bits_WIRE_6_tl_state_size = QueueCompatibility_6_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [3:0] _GEN_50 = 4'h6 == auto_out_r_bits_id ? _r_bits_WIRE_6_tl_state_size : _GEN_47; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _r_bits_WIRE_6_tl_state_source = QueueCompatibility_6_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [6:0] _GEN_51 = 4'h6 == auto_out_r_bits_id ? _r_bits_WIRE_6_tl_state_source : _GEN_48; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _r_bits_WIRE_6_extra_id = QueueCompatibility_6_io_deq_bits_extra_id; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [2:0] _GEN_52 = 4'h6 == auto_out_r_bits_id ? _r_bits_WIRE_6_extra_id : _GEN_49; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _r_bits_WIRE_7_tl_state_size = QueueCompatibility_7_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [3:0] _GEN_53 = 4'h7 == auto_out_r_bits_id ? _r_bits_WIRE_7_tl_state_size : _GEN_50; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _r_bits_WIRE_7_tl_state_source = QueueCompatibility_7_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [6:0] _GEN_54 = 4'h7 == auto_out_r_bits_id ? _r_bits_WIRE_7_tl_state_source : _GEN_51; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _r_bits_WIRE_7_extra_id = QueueCompatibility_7_io_deq_bits_extra_id; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [2:0] _GEN_55 = 4'h7 == auto_out_r_bits_id ? _r_bits_WIRE_7_extra_id : _GEN_52; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _r_bits_WIRE_8_tl_state_size = QueueCompatibility_8_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [3:0] _GEN_56 = 4'h8 == auto_out_r_bits_id ? _r_bits_WIRE_8_tl_state_size : _GEN_53; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _r_bits_WIRE_8_tl_state_source = QueueCompatibility_8_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [6:0] _GEN_57 = 4'h8 == auto_out_r_bits_id ? _r_bits_WIRE_8_tl_state_source : _GEN_54; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _r_bits_WIRE_8_extra_id = QueueCompatibility_8_io_deq_bits_extra_id; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [2:0] _GEN_58 = 4'h8 == auto_out_r_bits_id ? _r_bits_WIRE_8_extra_id : _GEN_55; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _r_bits_WIRE_9_tl_state_size = QueueCompatibility_9_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [3:0] _GEN_59 = 4'h9 == auto_out_r_bits_id ? _r_bits_WIRE_9_tl_state_size : _GEN_56; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _r_bits_WIRE_9_tl_state_source = QueueCompatibility_9_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [6:0] _GEN_60 = 4'h9 == auto_out_r_bits_id ? _r_bits_WIRE_9_tl_state_source : _GEN_57; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _r_bits_WIRE_9_extra_id = QueueCompatibility_9_io_deq_bits_extra_id; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [2:0] _GEN_61 = 4'h9 == auto_out_r_bits_id ? _r_bits_WIRE_9_extra_id : _GEN_58; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _r_bits_WIRE_10_tl_state_size = QueueCompatibility_10_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [3:0] _GEN_62 = 4'ha == auto_out_r_bits_id ? _r_bits_WIRE_10_tl_state_size : _GEN_59; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _r_bits_WIRE_10_tl_state_source = QueueCompatibility_10_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [6:0] _GEN_63 = 4'ha == auto_out_r_bits_id ? _r_bits_WIRE_10_tl_state_source : _GEN_60; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _r_bits_WIRE_10_extra_id = QueueCompatibility_10_io_deq_bits_extra_id; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [2:0] _GEN_64 = 4'ha == auto_out_r_bits_id ? _r_bits_WIRE_10_extra_id : _GEN_61; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _r_bits_WIRE_11_tl_state_size = QueueCompatibility_11_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [3:0] _GEN_65 = 4'hb == auto_out_r_bits_id ? _r_bits_WIRE_11_tl_state_size : _GEN_62; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _r_bits_WIRE_11_tl_state_source = QueueCompatibility_11_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [6:0] _GEN_66 = 4'hb == auto_out_r_bits_id ? _r_bits_WIRE_11_tl_state_source : _GEN_63; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _r_bits_WIRE_11_extra_id = QueueCompatibility_11_io_deq_bits_extra_id; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [2:0] _GEN_67 = 4'hb == auto_out_r_bits_id ? _r_bits_WIRE_11_extra_id : _GEN_64; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _r_bits_WIRE_12_tl_state_size = QueueCompatibility_12_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [3:0] _GEN_68 = 4'hc == auto_out_r_bits_id ? _r_bits_WIRE_12_tl_state_size : _GEN_65; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _r_bits_WIRE_12_tl_state_source = QueueCompatibility_12_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [6:0] _GEN_69 = 4'hc == auto_out_r_bits_id ? _r_bits_WIRE_12_tl_state_source : _GEN_66; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _r_bits_WIRE_12_extra_id = QueueCompatibility_12_io_deq_bits_extra_id; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [2:0] _GEN_70 = 4'hc == auto_out_r_bits_id ? _r_bits_WIRE_12_extra_id : _GEN_67; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _r_bits_WIRE_13_tl_state_size = QueueCompatibility_13_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [3:0] _GEN_71 = 4'hd == auto_out_r_bits_id ? _r_bits_WIRE_13_tl_state_size : _GEN_68; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _r_bits_WIRE_13_tl_state_source = QueueCompatibility_13_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [6:0] _GEN_72 = 4'hd == auto_out_r_bits_id ? _r_bits_WIRE_13_tl_state_source : _GEN_69; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _r_bits_WIRE_13_extra_id = QueueCompatibility_13_io_deq_bits_extra_id; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [2:0] _GEN_73 = 4'hd == auto_out_r_bits_id ? _r_bits_WIRE_13_extra_id : _GEN_70; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _r_bits_WIRE_14_tl_state_size = QueueCompatibility_14_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [3:0] _GEN_74 = 4'he == auto_out_r_bits_id ? _r_bits_WIRE_14_tl_state_size : _GEN_71; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _r_bits_WIRE_14_tl_state_source = QueueCompatibility_14_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [6:0] _GEN_75 = 4'he == auto_out_r_bits_id ? _r_bits_WIRE_14_tl_state_source : _GEN_72; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _r_bits_WIRE_14_extra_id = QueueCompatibility_14_io_deq_bits_extra_id; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [2:0] _GEN_76 = 4'he == auto_out_r_bits_id ? _r_bits_WIRE_14_extra_id : _GEN_73; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _r_bits_WIRE_15_tl_state_size = QueueCompatibility_15_io_deq_bits_tl_state_size; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [6:0] _r_bits_WIRE_15_tl_state_source = QueueCompatibility_15_io_deq_bits_tl_state_source; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [2:0] _r_bits_WIRE_15_extra_id = QueueCompatibility_15_io_deq_bits_extra_id; // @[UserYanker.scala 54:23 UserYanker.scala 54:23]
  wire [15:0] _arsel_T = 16'h1 << auto_in_ar_bits_id; // @[OneHot.scala 65:12]
  wire  arsel_0 = _arsel_T[0]; // @[UserYanker.scala 59:55]
  wire  arsel_1 = _arsel_T[1]; // @[UserYanker.scala 59:55]
  wire  arsel_2 = _arsel_T[2]; // @[UserYanker.scala 59:55]
  wire  arsel_3 = _arsel_T[3]; // @[UserYanker.scala 59:55]
  wire  arsel_4 = _arsel_T[4]; // @[UserYanker.scala 59:55]
  wire  arsel_5 = _arsel_T[5]; // @[UserYanker.scala 59:55]
  wire  arsel_6 = _arsel_T[6]; // @[UserYanker.scala 59:55]
  wire  arsel_7 = _arsel_T[7]; // @[UserYanker.scala 59:55]
  wire  arsel_8 = _arsel_T[8]; // @[UserYanker.scala 59:55]
  wire  arsel_9 = _arsel_T[9]; // @[UserYanker.scala 59:55]
  wire  arsel_10 = _arsel_T[10]; // @[UserYanker.scala 59:55]
  wire  arsel_11 = _arsel_T[11]; // @[UserYanker.scala 59:55]
  wire  arsel_12 = _arsel_T[12]; // @[UserYanker.scala 59:55]
  wire  arsel_13 = _arsel_T[13]; // @[UserYanker.scala 59:55]
  wire  arsel_14 = _arsel_T[14]; // @[UserYanker.scala 59:55]
  wire  arsel_15 = _arsel_T[15]; // @[UserYanker.scala 59:55]
  wire [15:0] _rsel_T = 16'h1 << auto_out_r_bits_id; // @[OneHot.scala 65:12]
  wire  rsel_0 = _rsel_T[0]; // @[UserYanker.scala 60:55]
  wire  rsel_1 = _rsel_T[1]; // @[UserYanker.scala 60:55]
  wire  rsel_2 = _rsel_T[2]; // @[UserYanker.scala 60:55]
  wire  rsel_3 = _rsel_T[3]; // @[UserYanker.scala 60:55]
  wire  rsel_4 = _rsel_T[4]; // @[UserYanker.scala 60:55]
  wire  rsel_5 = _rsel_T[5]; // @[UserYanker.scala 60:55]
  wire  rsel_6 = _rsel_T[6]; // @[UserYanker.scala 60:55]
  wire  rsel_7 = _rsel_T[7]; // @[UserYanker.scala 60:55]
  wire  rsel_8 = _rsel_T[8]; // @[UserYanker.scala 60:55]
  wire  rsel_9 = _rsel_T[9]; // @[UserYanker.scala 60:55]
  wire  rsel_10 = _rsel_T[10]; // @[UserYanker.scala 60:55]
  wire  rsel_11 = _rsel_T[11]; // @[UserYanker.scala 60:55]
  wire  rsel_12 = _rsel_T[12]; // @[UserYanker.scala 60:55]
  wire  rsel_13 = _rsel_T[13]; // @[UserYanker.scala 60:55]
  wire  rsel_14 = _rsel_T[14]; // @[UserYanker.scala 60:55]
  wire  rsel_15 = _rsel_T[15]; // @[UserYanker.scala 60:55]
  wire  _aw_ready_WIRE_0 = QueueCompatibility_16_io_enq_ready; // @[UserYanker.scala 68:25 UserYanker.scala 68:25]
  wire  _aw_ready_WIRE_1 = QueueCompatibility_17_io_enq_ready; // @[UserYanker.scala 68:25 UserYanker.scala 68:25]
  wire  _GEN_81 = 4'h1 == auto_in_aw_bits_id ? _aw_ready_WIRE_1 : _aw_ready_WIRE_0; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _aw_ready_WIRE_2 = QueueCompatibility_18_io_enq_ready; // @[UserYanker.scala 68:25 UserYanker.scala 68:25]
  wire  _GEN_82 = 4'h2 == auto_in_aw_bits_id ? _aw_ready_WIRE_2 : _GEN_81; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _aw_ready_WIRE_3 = QueueCompatibility_19_io_enq_ready; // @[UserYanker.scala 68:25 UserYanker.scala 68:25]
  wire  _GEN_83 = 4'h3 == auto_in_aw_bits_id ? _aw_ready_WIRE_3 : _GEN_82; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _aw_ready_WIRE_4 = QueueCompatibility_20_io_enq_ready; // @[UserYanker.scala 68:25 UserYanker.scala 68:25]
  wire  _GEN_84 = 4'h4 == auto_in_aw_bits_id ? _aw_ready_WIRE_4 : _GEN_83; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _aw_ready_WIRE_5 = QueueCompatibility_21_io_enq_ready; // @[UserYanker.scala 68:25 UserYanker.scala 68:25]
  wire  _GEN_85 = 4'h5 == auto_in_aw_bits_id ? _aw_ready_WIRE_5 : _GEN_84; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _aw_ready_WIRE_6 = QueueCompatibility_22_io_enq_ready; // @[UserYanker.scala 68:25 UserYanker.scala 68:25]
  wire  _GEN_86 = 4'h6 == auto_in_aw_bits_id ? _aw_ready_WIRE_6 : _GEN_85; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _aw_ready_WIRE_7 = QueueCompatibility_23_io_enq_ready; // @[UserYanker.scala 68:25 UserYanker.scala 68:25]
  wire  _GEN_87 = 4'h7 == auto_in_aw_bits_id ? _aw_ready_WIRE_7 : _GEN_86; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _aw_ready_WIRE_8 = QueueCompatibility_24_io_enq_ready; // @[UserYanker.scala 68:25 UserYanker.scala 68:25]
  wire  _GEN_88 = 4'h8 == auto_in_aw_bits_id ? _aw_ready_WIRE_8 : _GEN_87; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _aw_ready_WIRE_9 = QueueCompatibility_25_io_enq_ready; // @[UserYanker.scala 68:25 UserYanker.scala 68:25]
  wire  _GEN_89 = 4'h9 == auto_in_aw_bits_id ? _aw_ready_WIRE_9 : _GEN_88; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _aw_ready_WIRE_10 = QueueCompatibility_26_io_enq_ready; // @[UserYanker.scala 68:25 UserYanker.scala 68:25]
  wire  _GEN_90 = 4'ha == auto_in_aw_bits_id ? _aw_ready_WIRE_10 : _GEN_89; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _aw_ready_WIRE_11 = QueueCompatibility_27_io_enq_ready; // @[UserYanker.scala 68:25 UserYanker.scala 68:25]
  wire  _GEN_91 = 4'hb == auto_in_aw_bits_id ? _aw_ready_WIRE_11 : _GEN_90; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _aw_ready_WIRE_12 = QueueCompatibility_28_io_enq_ready; // @[UserYanker.scala 68:25 UserYanker.scala 68:25]
  wire  _GEN_92 = 4'hc == auto_in_aw_bits_id ? _aw_ready_WIRE_12 : _GEN_91; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _aw_ready_WIRE_13 = QueueCompatibility_29_io_enq_ready; // @[UserYanker.scala 68:25 UserYanker.scala 68:25]
  wire  _GEN_93 = 4'hd == auto_in_aw_bits_id ? _aw_ready_WIRE_13 : _GEN_92; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _aw_ready_WIRE_14 = QueueCompatibility_30_io_enq_ready; // @[UserYanker.scala 68:25 UserYanker.scala 68:25]
  wire  _GEN_94 = 4'he == auto_in_aw_bits_id ? _aw_ready_WIRE_14 : _GEN_93; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _aw_ready_WIRE_15 = QueueCompatibility_31_io_enq_ready; // @[UserYanker.scala 68:25 UserYanker.scala 68:25]
  wire  _GEN_95 = 4'hf == auto_in_aw_bits_id ? _aw_ready_WIRE_15 : _GEN_94; // @[UserYanker.scala 69:36 UserYanker.scala 69:36]
  wire  _b_valid_WIRE_0 = QueueCompatibility_16_io_deq_valid; // @[UserYanker.scala 74:24 UserYanker.scala 74:24]
  wire  _b_valid_WIRE_1 = QueueCompatibility_17_io_deq_valid; // @[UserYanker.scala 74:24 UserYanker.scala 74:24]
  wire  _GEN_97 = 4'h1 == auto_out_b_bits_id ? _b_valid_WIRE_1 : _b_valid_WIRE_0; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _b_valid_WIRE_2 = QueueCompatibility_18_io_deq_valid; // @[UserYanker.scala 74:24 UserYanker.scala 74:24]
  wire  _GEN_98 = 4'h2 == auto_out_b_bits_id ? _b_valid_WIRE_2 : _GEN_97; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _b_valid_WIRE_3 = QueueCompatibility_19_io_deq_valid; // @[UserYanker.scala 74:24 UserYanker.scala 74:24]
  wire  _GEN_99 = 4'h3 == auto_out_b_bits_id ? _b_valid_WIRE_3 : _GEN_98; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _b_valid_WIRE_4 = QueueCompatibility_20_io_deq_valid; // @[UserYanker.scala 74:24 UserYanker.scala 74:24]
  wire  _GEN_100 = 4'h4 == auto_out_b_bits_id ? _b_valid_WIRE_4 : _GEN_99; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _b_valid_WIRE_5 = QueueCompatibility_21_io_deq_valid; // @[UserYanker.scala 74:24 UserYanker.scala 74:24]
  wire  _GEN_101 = 4'h5 == auto_out_b_bits_id ? _b_valid_WIRE_5 : _GEN_100; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _b_valid_WIRE_6 = QueueCompatibility_22_io_deq_valid; // @[UserYanker.scala 74:24 UserYanker.scala 74:24]
  wire  _GEN_102 = 4'h6 == auto_out_b_bits_id ? _b_valid_WIRE_6 : _GEN_101; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _b_valid_WIRE_7 = QueueCompatibility_23_io_deq_valid; // @[UserYanker.scala 74:24 UserYanker.scala 74:24]
  wire  _GEN_103 = 4'h7 == auto_out_b_bits_id ? _b_valid_WIRE_7 : _GEN_102; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _b_valid_WIRE_8 = QueueCompatibility_24_io_deq_valid; // @[UserYanker.scala 74:24 UserYanker.scala 74:24]
  wire  _GEN_104 = 4'h8 == auto_out_b_bits_id ? _b_valid_WIRE_8 : _GEN_103; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _b_valid_WIRE_9 = QueueCompatibility_25_io_deq_valid; // @[UserYanker.scala 74:24 UserYanker.scala 74:24]
  wire  _GEN_105 = 4'h9 == auto_out_b_bits_id ? _b_valid_WIRE_9 : _GEN_104; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _b_valid_WIRE_10 = QueueCompatibility_26_io_deq_valid; // @[UserYanker.scala 74:24 UserYanker.scala 74:24]
  wire  _GEN_106 = 4'ha == auto_out_b_bits_id ? _b_valid_WIRE_10 : _GEN_105; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _b_valid_WIRE_11 = QueueCompatibility_27_io_deq_valid; // @[UserYanker.scala 74:24 UserYanker.scala 74:24]
  wire  _GEN_107 = 4'hb == auto_out_b_bits_id ? _b_valid_WIRE_11 : _GEN_106; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _b_valid_WIRE_12 = QueueCompatibility_28_io_deq_valid; // @[UserYanker.scala 74:24 UserYanker.scala 74:24]
  wire  _GEN_108 = 4'hc == auto_out_b_bits_id ? _b_valid_WIRE_12 : _GEN_107; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _b_valid_WIRE_13 = QueueCompatibility_29_io_deq_valid; // @[UserYanker.scala 74:24 UserYanker.scala 74:24]
  wire  _GEN_109 = 4'hd == auto_out_b_bits_id ? _b_valid_WIRE_13 : _GEN_108; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _b_valid_WIRE_14 = QueueCompatibility_30_io_deq_valid; // @[UserYanker.scala 74:24 UserYanker.scala 74:24]
  wire  _GEN_110 = 4'he == auto_out_b_bits_id ? _b_valid_WIRE_14 : _GEN_109; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire  _b_valid_WIRE_15 = QueueCompatibility_31_io_deq_valid; // @[UserYanker.scala 74:24 UserYanker.scala 74:24]
  wire  _GEN_111 = 4'hf == auto_out_b_bits_id ? _b_valid_WIRE_15 : _GEN_110; // @[UserYanker.scala 76:28 UserYanker.scala 76:28]
  wire [3:0] _b_bits_WIRE_0_tl_state_size = QueueCompatibility_16_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [6:0] _b_bits_WIRE_0_tl_state_source = QueueCompatibility_16_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [2:0] _b_bits_WIRE_0_extra_id = QueueCompatibility_16_io_deq_bits_extra_id; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [3:0] _b_bits_WIRE_1_tl_state_size = QueueCompatibility_17_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [3:0] _GEN_115 = 4'h1 == auto_out_b_bits_id ? _b_bits_WIRE_1_tl_state_size : _b_bits_WIRE_0_tl_state_size; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _b_bits_WIRE_1_tl_state_source = QueueCompatibility_17_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [6:0] _GEN_116 = 4'h1 == auto_out_b_bits_id ? _b_bits_WIRE_1_tl_state_source : _b_bits_WIRE_0_tl_state_source; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _b_bits_WIRE_1_extra_id = QueueCompatibility_17_io_deq_bits_extra_id; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [2:0] _GEN_117 = 4'h1 == auto_out_b_bits_id ? _b_bits_WIRE_1_extra_id : _b_bits_WIRE_0_extra_id; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _b_bits_WIRE_2_tl_state_size = QueueCompatibility_18_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [3:0] _GEN_118 = 4'h2 == auto_out_b_bits_id ? _b_bits_WIRE_2_tl_state_size : _GEN_115; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _b_bits_WIRE_2_tl_state_source = QueueCompatibility_18_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [6:0] _GEN_119 = 4'h2 == auto_out_b_bits_id ? _b_bits_WIRE_2_tl_state_source : _GEN_116; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _b_bits_WIRE_2_extra_id = QueueCompatibility_18_io_deq_bits_extra_id; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [2:0] _GEN_120 = 4'h2 == auto_out_b_bits_id ? _b_bits_WIRE_2_extra_id : _GEN_117; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _b_bits_WIRE_3_tl_state_size = QueueCompatibility_19_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [3:0] _GEN_121 = 4'h3 == auto_out_b_bits_id ? _b_bits_WIRE_3_tl_state_size : _GEN_118; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _b_bits_WIRE_3_tl_state_source = QueueCompatibility_19_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [6:0] _GEN_122 = 4'h3 == auto_out_b_bits_id ? _b_bits_WIRE_3_tl_state_source : _GEN_119; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _b_bits_WIRE_3_extra_id = QueueCompatibility_19_io_deq_bits_extra_id; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [2:0] _GEN_123 = 4'h3 == auto_out_b_bits_id ? _b_bits_WIRE_3_extra_id : _GEN_120; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _b_bits_WIRE_4_tl_state_size = QueueCompatibility_20_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [3:0] _GEN_124 = 4'h4 == auto_out_b_bits_id ? _b_bits_WIRE_4_tl_state_size : _GEN_121; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _b_bits_WIRE_4_tl_state_source = QueueCompatibility_20_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [6:0] _GEN_125 = 4'h4 == auto_out_b_bits_id ? _b_bits_WIRE_4_tl_state_source : _GEN_122; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _b_bits_WIRE_4_extra_id = QueueCompatibility_20_io_deq_bits_extra_id; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [2:0] _GEN_126 = 4'h4 == auto_out_b_bits_id ? _b_bits_WIRE_4_extra_id : _GEN_123; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _b_bits_WIRE_5_tl_state_size = QueueCompatibility_21_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [3:0] _GEN_127 = 4'h5 == auto_out_b_bits_id ? _b_bits_WIRE_5_tl_state_size : _GEN_124; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _b_bits_WIRE_5_tl_state_source = QueueCompatibility_21_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [6:0] _GEN_128 = 4'h5 == auto_out_b_bits_id ? _b_bits_WIRE_5_tl_state_source : _GEN_125; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _b_bits_WIRE_5_extra_id = QueueCompatibility_21_io_deq_bits_extra_id; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [2:0] _GEN_129 = 4'h5 == auto_out_b_bits_id ? _b_bits_WIRE_5_extra_id : _GEN_126; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _b_bits_WIRE_6_tl_state_size = QueueCompatibility_22_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [3:0] _GEN_130 = 4'h6 == auto_out_b_bits_id ? _b_bits_WIRE_6_tl_state_size : _GEN_127; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _b_bits_WIRE_6_tl_state_source = QueueCompatibility_22_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [6:0] _GEN_131 = 4'h6 == auto_out_b_bits_id ? _b_bits_WIRE_6_tl_state_source : _GEN_128; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _b_bits_WIRE_6_extra_id = QueueCompatibility_22_io_deq_bits_extra_id; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [2:0] _GEN_132 = 4'h6 == auto_out_b_bits_id ? _b_bits_WIRE_6_extra_id : _GEN_129; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _b_bits_WIRE_7_tl_state_size = QueueCompatibility_23_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [3:0] _GEN_133 = 4'h7 == auto_out_b_bits_id ? _b_bits_WIRE_7_tl_state_size : _GEN_130; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _b_bits_WIRE_7_tl_state_source = QueueCompatibility_23_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [6:0] _GEN_134 = 4'h7 == auto_out_b_bits_id ? _b_bits_WIRE_7_tl_state_source : _GEN_131; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _b_bits_WIRE_7_extra_id = QueueCompatibility_23_io_deq_bits_extra_id; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [2:0] _GEN_135 = 4'h7 == auto_out_b_bits_id ? _b_bits_WIRE_7_extra_id : _GEN_132; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _b_bits_WIRE_8_tl_state_size = QueueCompatibility_24_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [3:0] _GEN_136 = 4'h8 == auto_out_b_bits_id ? _b_bits_WIRE_8_tl_state_size : _GEN_133; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _b_bits_WIRE_8_tl_state_source = QueueCompatibility_24_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [6:0] _GEN_137 = 4'h8 == auto_out_b_bits_id ? _b_bits_WIRE_8_tl_state_source : _GEN_134; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _b_bits_WIRE_8_extra_id = QueueCompatibility_24_io_deq_bits_extra_id; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [2:0] _GEN_138 = 4'h8 == auto_out_b_bits_id ? _b_bits_WIRE_8_extra_id : _GEN_135; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _b_bits_WIRE_9_tl_state_size = QueueCompatibility_25_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [3:0] _GEN_139 = 4'h9 == auto_out_b_bits_id ? _b_bits_WIRE_9_tl_state_size : _GEN_136; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _b_bits_WIRE_9_tl_state_source = QueueCompatibility_25_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [6:0] _GEN_140 = 4'h9 == auto_out_b_bits_id ? _b_bits_WIRE_9_tl_state_source : _GEN_137; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _b_bits_WIRE_9_extra_id = QueueCompatibility_25_io_deq_bits_extra_id; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [2:0] _GEN_141 = 4'h9 == auto_out_b_bits_id ? _b_bits_WIRE_9_extra_id : _GEN_138; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _b_bits_WIRE_10_tl_state_size = QueueCompatibility_26_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [3:0] _GEN_142 = 4'ha == auto_out_b_bits_id ? _b_bits_WIRE_10_tl_state_size : _GEN_139; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _b_bits_WIRE_10_tl_state_source = QueueCompatibility_26_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [6:0] _GEN_143 = 4'ha == auto_out_b_bits_id ? _b_bits_WIRE_10_tl_state_source : _GEN_140; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _b_bits_WIRE_10_extra_id = QueueCompatibility_26_io_deq_bits_extra_id; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [2:0] _GEN_144 = 4'ha == auto_out_b_bits_id ? _b_bits_WIRE_10_extra_id : _GEN_141; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _b_bits_WIRE_11_tl_state_size = QueueCompatibility_27_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [3:0] _GEN_145 = 4'hb == auto_out_b_bits_id ? _b_bits_WIRE_11_tl_state_size : _GEN_142; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _b_bits_WIRE_11_tl_state_source = QueueCompatibility_27_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [6:0] _GEN_146 = 4'hb == auto_out_b_bits_id ? _b_bits_WIRE_11_tl_state_source : _GEN_143; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _b_bits_WIRE_11_extra_id = QueueCompatibility_27_io_deq_bits_extra_id; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [2:0] _GEN_147 = 4'hb == auto_out_b_bits_id ? _b_bits_WIRE_11_extra_id : _GEN_144; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _b_bits_WIRE_12_tl_state_size = QueueCompatibility_28_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [3:0] _GEN_148 = 4'hc == auto_out_b_bits_id ? _b_bits_WIRE_12_tl_state_size : _GEN_145; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _b_bits_WIRE_12_tl_state_source = QueueCompatibility_28_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [6:0] _GEN_149 = 4'hc == auto_out_b_bits_id ? _b_bits_WIRE_12_tl_state_source : _GEN_146; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _b_bits_WIRE_12_extra_id = QueueCompatibility_28_io_deq_bits_extra_id; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [2:0] _GEN_150 = 4'hc == auto_out_b_bits_id ? _b_bits_WIRE_12_extra_id : _GEN_147; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _b_bits_WIRE_13_tl_state_size = QueueCompatibility_29_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [3:0] _GEN_151 = 4'hd == auto_out_b_bits_id ? _b_bits_WIRE_13_tl_state_size : _GEN_148; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _b_bits_WIRE_13_tl_state_source = QueueCompatibility_29_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [6:0] _GEN_152 = 4'hd == auto_out_b_bits_id ? _b_bits_WIRE_13_tl_state_source : _GEN_149; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _b_bits_WIRE_13_extra_id = QueueCompatibility_29_io_deq_bits_extra_id; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [2:0] _GEN_153 = 4'hd == auto_out_b_bits_id ? _b_bits_WIRE_13_extra_id : _GEN_150; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _b_bits_WIRE_14_tl_state_size = QueueCompatibility_30_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [3:0] _GEN_154 = 4'he == auto_out_b_bits_id ? _b_bits_WIRE_14_tl_state_size : _GEN_151; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [6:0] _b_bits_WIRE_14_tl_state_source = QueueCompatibility_30_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [6:0] _GEN_155 = 4'he == auto_out_b_bits_id ? _b_bits_WIRE_14_tl_state_source : _GEN_152; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [2:0] _b_bits_WIRE_14_extra_id = QueueCompatibility_30_io_deq_bits_extra_id; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [2:0] _GEN_156 = 4'he == auto_out_b_bits_id ? _b_bits_WIRE_14_extra_id : _GEN_153; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  wire [3:0] _b_bits_WIRE_15_tl_state_size = QueueCompatibility_31_io_deq_bits_tl_state_size; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [6:0] _b_bits_WIRE_15_tl_state_source = QueueCompatibility_31_io_deq_bits_tl_state_source; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [2:0] _b_bits_WIRE_15_extra_id = QueueCompatibility_31_io_deq_bits_extra_id; // @[UserYanker.scala 75:23 UserYanker.scala 75:23]
  wire [15:0] _awsel_T = 16'h1 << auto_in_aw_bits_id; // @[OneHot.scala 65:12]
  wire  awsel_0 = _awsel_T[0]; // @[UserYanker.scala 80:55]
  wire  awsel_1 = _awsel_T[1]; // @[UserYanker.scala 80:55]
  wire  awsel_2 = _awsel_T[2]; // @[UserYanker.scala 80:55]
  wire  awsel_3 = _awsel_T[3]; // @[UserYanker.scala 80:55]
  wire  awsel_4 = _awsel_T[4]; // @[UserYanker.scala 80:55]
  wire  awsel_5 = _awsel_T[5]; // @[UserYanker.scala 80:55]
  wire  awsel_6 = _awsel_T[6]; // @[UserYanker.scala 80:55]
  wire  awsel_7 = _awsel_T[7]; // @[UserYanker.scala 80:55]
  wire  awsel_8 = _awsel_T[8]; // @[UserYanker.scala 80:55]
  wire  awsel_9 = _awsel_T[9]; // @[UserYanker.scala 80:55]
  wire  awsel_10 = _awsel_T[10]; // @[UserYanker.scala 80:55]
  wire  awsel_11 = _awsel_T[11]; // @[UserYanker.scala 80:55]
  wire  awsel_12 = _awsel_T[12]; // @[UserYanker.scala 80:55]
  wire  awsel_13 = _awsel_T[13]; // @[UserYanker.scala 80:55]
  wire  awsel_14 = _awsel_T[14]; // @[UserYanker.scala 80:55]
  wire  awsel_15 = _awsel_T[15]; // @[UserYanker.scala 80:55]
  wire [15:0] _bsel_T = 16'h1 << auto_out_b_bits_id; // @[OneHot.scala 65:12]
  wire  bsel_0 = _bsel_T[0]; // @[UserYanker.scala 81:55]
  wire  bsel_1 = _bsel_T[1]; // @[UserYanker.scala 81:55]
  wire  bsel_2 = _bsel_T[2]; // @[UserYanker.scala 81:55]
  wire  bsel_3 = _bsel_T[3]; // @[UserYanker.scala 81:55]
  wire  bsel_4 = _bsel_T[4]; // @[UserYanker.scala 81:55]
  wire  bsel_5 = _bsel_T[5]; // @[UserYanker.scala 81:55]
  wire  bsel_6 = _bsel_T[6]; // @[UserYanker.scala 81:55]
  wire  bsel_7 = _bsel_T[7]; // @[UserYanker.scala 81:55]
  wire  bsel_8 = _bsel_T[8]; // @[UserYanker.scala 81:55]
  wire  bsel_9 = _bsel_T[9]; // @[UserYanker.scala 81:55]
  wire  bsel_10 = _bsel_T[10]; // @[UserYanker.scala 81:55]
  wire  bsel_11 = _bsel_T[11]; // @[UserYanker.scala 81:55]
  wire  bsel_12 = _bsel_T[12]; // @[UserYanker.scala 81:55]
  wire  bsel_13 = _bsel_T[13]; // @[UserYanker.scala 81:55]
  wire  bsel_14 = _bsel_T[14]; // @[UserYanker.scala 81:55]
  wire  bsel_15 = _bsel_T[15]; // @[UserYanker.scala 81:55]
  QueueCompatibility_14 QueueCompatibility ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_clock),
    .reset(QueueCompatibility_reset),
    .io_enq_ready(QueueCompatibility_io_enq_ready),
    .io_enq_valid(QueueCompatibility_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_io_deq_ready),
    .io_deq_valid(QueueCompatibility_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_1 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_1_clock),
    .reset(QueueCompatibility_1_reset),
    .io_enq_ready(QueueCompatibility_1_io_enq_ready),
    .io_enq_valid(QueueCompatibility_1_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_1_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_1_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_1_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_1_io_deq_ready),
    .io_deq_valid(QueueCompatibility_1_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_1_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_1_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_1_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_2 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_2_clock),
    .reset(QueueCompatibility_2_reset),
    .io_enq_ready(QueueCompatibility_2_io_enq_ready),
    .io_enq_valid(QueueCompatibility_2_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_2_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_2_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_2_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_2_io_deq_ready),
    .io_deq_valid(QueueCompatibility_2_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_2_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_2_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_2_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_3 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_3_clock),
    .reset(QueueCompatibility_3_reset),
    .io_enq_ready(QueueCompatibility_3_io_enq_ready),
    .io_enq_valid(QueueCompatibility_3_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_3_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_3_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_3_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_3_io_deq_ready),
    .io_deq_valid(QueueCompatibility_3_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_3_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_3_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_3_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_4 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_4_clock),
    .reset(QueueCompatibility_4_reset),
    .io_enq_ready(QueueCompatibility_4_io_enq_ready),
    .io_enq_valid(QueueCompatibility_4_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_4_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_4_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_4_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_4_io_deq_ready),
    .io_deq_valid(QueueCompatibility_4_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_4_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_4_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_4_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_5 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_5_clock),
    .reset(QueueCompatibility_5_reset),
    .io_enq_ready(QueueCompatibility_5_io_enq_ready),
    .io_enq_valid(QueueCompatibility_5_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_5_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_5_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_5_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_5_io_deq_ready),
    .io_deq_valid(QueueCompatibility_5_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_5_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_5_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_5_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_6 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_6_clock),
    .reset(QueueCompatibility_6_reset),
    .io_enq_ready(QueueCompatibility_6_io_enq_ready),
    .io_enq_valid(QueueCompatibility_6_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_6_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_6_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_6_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_6_io_deq_ready),
    .io_deq_valid(QueueCompatibility_6_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_6_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_6_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_6_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_7 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_7_clock),
    .reset(QueueCompatibility_7_reset),
    .io_enq_ready(QueueCompatibility_7_io_enq_ready),
    .io_enq_valid(QueueCompatibility_7_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_7_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_7_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_7_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_7_io_deq_ready),
    .io_deq_valid(QueueCompatibility_7_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_7_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_7_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_7_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_8 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_8_clock),
    .reset(QueueCompatibility_8_reset),
    .io_enq_ready(QueueCompatibility_8_io_enq_ready),
    .io_enq_valid(QueueCompatibility_8_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_8_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_8_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_8_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_8_io_deq_ready),
    .io_deq_valid(QueueCompatibility_8_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_8_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_8_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_8_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_9 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_9_clock),
    .reset(QueueCompatibility_9_reset),
    .io_enq_ready(QueueCompatibility_9_io_enq_ready),
    .io_enq_valid(QueueCompatibility_9_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_9_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_9_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_9_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_9_io_deq_ready),
    .io_deq_valid(QueueCompatibility_9_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_9_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_9_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_9_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_10 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_10_clock),
    .reset(QueueCompatibility_10_reset),
    .io_enq_ready(QueueCompatibility_10_io_enq_ready),
    .io_enq_valid(QueueCompatibility_10_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_10_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_10_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_10_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_10_io_deq_ready),
    .io_deq_valid(QueueCompatibility_10_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_10_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_10_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_10_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_11 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_11_clock),
    .reset(QueueCompatibility_11_reset),
    .io_enq_ready(QueueCompatibility_11_io_enq_ready),
    .io_enq_valid(QueueCompatibility_11_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_11_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_11_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_11_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_11_io_deq_ready),
    .io_deq_valid(QueueCompatibility_11_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_11_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_11_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_11_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_12 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_12_clock),
    .reset(QueueCompatibility_12_reset),
    .io_enq_ready(QueueCompatibility_12_io_enq_ready),
    .io_enq_valid(QueueCompatibility_12_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_12_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_12_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_12_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_12_io_deq_ready),
    .io_deq_valid(QueueCompatibility_12_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_12_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_12_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_12_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_13 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_13_clock),
    .reset(QueueCompatibility_13_reset),
    .io_enq_ready(QueueCompatibility_13_io_enq_ready),
    .io_enq_valid(QueueCompatibility_13_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_13_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_13_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_13_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_13_io_deq_ready),
    .io_deq_valid(QueueCompatibility_13_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_13_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_13_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_13_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_14 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_14_clock),
    .reset(QueueCompatibility_14_reset),
    .io_enq_ready(QueueCompatibility_14_io_enq_ready),
    .io_enq_valid(QueueCompatibility_14_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_14_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_14_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_14_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_14_io_deq_ready),
    .io_deq_valid(QueueCompatibility_14_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_14_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_14_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_14_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_15 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_15_clock),
    .reset(QueueCompatibility_15_reset),
    .io_enq_ready(QueueCompatibility_15_io_enq_ready),
    .io_enq_valid(QueueCompatibility_15_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_15_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_15_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_15_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_15_io_deq_ready),
    .io_deq_valid(QueueCompatibility_15_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_15_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_15_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_15_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_16 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_16_clock),
    .reset(QueueCompatibility_16_reset),
    .io_enq_ready(QueueCompatibility_16_io_enq_ready),
    .io_enq_valid(QueueCompatibility_16_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_16_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_16_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_16_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_16_io_deq_ready),
    .io_deq_valid(QueueCompatibility_16_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_16_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_16_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_16_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_17 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_17_clock),
    .reset(QueueCompatibility_17_reset),
    .io_enq_ready(QueueCompatibility_17_io_enq_ready),
    .io_enq_valid(QueueCompatibility_17_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_17_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_17_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_17_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_17_io_deq_ready),
    .io_deq_valid(QueueCompatibility_17_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_17_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_17_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_17_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_18 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_18_clock),
    .reset(QueueCompatibility_18_reset),
    .io_enq_ready(QueueCompatibility_18_io_enq_ready),
    .io_enq_valid(QueueCompatibility_18_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_18_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_18_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_18_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_18_io_deq_ready),
    .io_deq_valid(QueueCompatibility_18_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_18_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_18_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_18_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_19 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_19_clock),
    .reset(QueueCompatibility_19_reset),
    .io_enq_ready(QueueCompatibility_19_io_enq_ready),
    .io_enq_valid(QueueCompatibility_19_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_19_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_19_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_19_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_19_io_deq_ready),
    .io_deq_valid(QueueCompatibility_19_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_19_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_19_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_19_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_20 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_20_clock),
    .reset(QueueCompatibility_20_reset),
    .io_enq_ready(QueueCompatibility_20_io_enq_ready),
    .io_enq_valid(QueueCompatibility_20_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_20_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_20_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_20_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_20_io_deq_ready),
    .io_deq_valid(QueueCompatibility_20_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_20_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_20_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_20_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_21 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_21_clock),
    .reset(QueueCompatibility_21_reset),
    .io_enq_ready(QueueCompatibility_21_io_enq_ready),
    .io_enq_valid(QueueCompatibility_21_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_21_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_21_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_21_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_21_io_deq_ready),
    .io_deq_valid(QueueCompatibility_21_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_21_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_21_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_21_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_22 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_22_clock),
    .reset(QueueCompatibility_22_reset),
    .io_enq_ready(QueueCompatibility_22_io_enq_ready),
    .io_enq_valid(QueueCompatibility_22_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_22_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_22_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_22_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_22_io_deq_ready),
    .io_deq_valid(QueueCompatibility_22_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_22_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_22_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_22_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_23 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_23_clock),
    .reset(QueueCompatibility_23_reset),
    .io_enq_ready(QueueCompatibility_23_io_enq_ready),
    .io_enq_valid(QueueCompatibility_23_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_23_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_23_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_23_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_23_io_deq_ready),
    .io_deq_valid(QueueCompatibility_23_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_23_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_23_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_23_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_24 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_24_clock),
    .reset(QueueCompatibility_24_reset),
    .io_enq_ready(QueueCompatibility_24_io_enq_ready),
    .io_enq_valid(QueueCompatibility_24_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_24_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_24_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_24_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_24_io_deq_ready),
    .io_deq_valid(QueueCompatibility_24_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_24_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_24_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_24_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_25 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_25_clock),
    .reset(QueueCompatibility_25_reset),
    .io_enq_ready(QueueCompatibility_25_io_enq_ready),
    .io_enq_valid(QueueCompatibility_25_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_25_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_25_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_25_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_25_io_deq_ready),
    .io_deq_valid(QueueCompatibility_25_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_25_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_25_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_25_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_26 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_26_clock),
    .reset(QueueCompatibility_26_reset),
    .io_enq_ready(QueueCompatibility_26_io_enq_ready),
    .io_enq_valid(QueueCompatibility_26_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_26_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_26_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_26_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_26_io_deq_ready),
    .io_deq_valid(QueueCompatibility_26_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_26_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_26_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_26_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_27 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_27_clock),
    .reset(QueueCompatibility_27_reset),
    .io_enq_ready(QueueCompatibility_27_io_enq_ready),
    .io_enq_valid(QueueCompatibility_27_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_27_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_27_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_27_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_27_io_deq_ready),
    .io_deq_valid(QueueCompatibility_27_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_27_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_27_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_27_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_28 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_28_clock),
    .reset(QueueCompatibility_28_reset),
    .io_enq_ready(QueueCompatibility_28_io_enq_ready),
    .io_enq_valid(QueueCompatibility_28_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_28_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_28_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_28_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_28_io_deq_ready),
    .io_deq_valid(QueueCompatibility_28_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_28_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_28_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_28_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_29 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_29_clock),
    .reset(QueueCompatibility_29_reset),
    .io_enq_ready(QueueCompatibility_29_io_enq_ready),
    .io_enq_valid(QueueCompatibility_29_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_29_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_29_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_29_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_29_io_deq_ready),
    .io_deq_valid(QueueCompatibility_29_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_29_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_29_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_29_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_30 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_30_clock),
    .reset(QueueCompatibility_30_reset),
    .io_enq_ready(QueueCompatibility_30_io_enq_ready),
    .io_enq_valid(QueueCompatibility_30_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_30_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_30_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_30_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_30_io_deq_ready),
    .io_deq_valid(QueueCompatibility_30_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_30_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_30_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_30_io_deq_bits_extra_id)
  );
  QueueCompatibility_14 QueueCompatibility_31 ( // @[UserYanker.scala 39:17]
    .clock(QueueCompatibility_31_clock),
    .reset(QueueCompatibility_31_reset),
    .io_enq_ready(QueueCompatibility_31_io_enq_ready),
    .io_enq_valid(QueueCompatibility_31_io_enq_valid),
    .io_enq_bits_tl_state_size(QueueCompatibility_31_io_enq_bits_tl_state_size),
    .io_enq_bits_tl_state_source(QueueCompatibility_31_io_enq_bits_tl_state_source),
    .io_enq_bits_extra_id(QueueCompatibility_31_io_enq_bits_extra_id),
    .io_deq_ready(QueueCompatibility_31_io_deq_ready),
    .io_deq_valid(QueueCompatibility_31_io_deq_valid),
    .io_deq_bits_tl_state_size(QueueCompatibility_31_io_deq_bits_tl_state_size),
    .io_deq_bits_tl_state_source(QueueCompatibility_31_io_deq_bits_tl_state_source),
    .io_deq_bits_extra_id(QueueCompatibility_31_io_deq_bits_extra_id)
  );
  assign auto_in_aw_ready = auto_out_aw_ready & _GEN_95; // @[UserYanker.scala 69:36]
  assign auto_in_w_ready = auto_out_w_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_b_valid = auto_out_b_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_b_bits_id = auto_out_b_bits_id; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_b_bits_resp = auto_out_b_bits_resp; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_b_bits_echo_tl_state_size = 4'hf == auto_out_b_bits_id ? _b_bits_WIRE_15_tl_state_size : _GEN_154; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  assign auto_in_b_bits_echo_tl_state_source = 4'hf == auto_out_b_bits_id ? _b_bits_WIRE_15_tl_state_source : _GEN_155; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  assign auto_in_b_bits_echo_extra_id = 4'hf == auto_out_b_bits_id ? _b_bits_WIRE_15_extra_id : _GEN_156; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  assign auto_in_ar_ready = auto_out_ar_ready & _GEN_15; // @[UserYanker.scala 48:36]
  assign auto_in_r_valid = auto_out_r_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_echo_tl_state_size = 4'hf == auto_out_r_bits_id ? _r_bits_WIRE_15_tl_state_size : _GEN_74; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  assign auto_in_r_bits_echo_tl_state_source = 4'hf == auto_out_r_bits_id ? _r_bits_WIRE_15_tl_state_source : _GEN_75; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  assign auto_in_r_bits_echo_extra_id = 4'hf == auto_out_r_bits_id ? _r_bits_WIRE_15_extra_id : _GEN_76; // @[BundleMap.scala 248:19 BundleMap.scala 248:19]
  assign auto_in_r_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_out_aw_valid = auto_in_aw_valid & _GEN_95; // @[UserYanker.scala 70:36]
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
  assign QueueCompatibility_io_enq_bits_extra_id = auto_in_ar_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_io_deq_ready = ((auto_out_r_valid & auto_in_r_ready) & rsel_0) & auto_out_r_bits_last; // @[UserYanker.scala 62:58]
  assign QueueCompatibility_1_clock = clock;
  assign QueueCompatibility_1_reset = reset;
  assign QueueCompatibility_1_io_enq_valid = (auto_in_ar_valid & auto_out_ar_ready) & arsel_1; // @[UserYanker.scala 63:53]
  assign QueueCompatibility_1_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_1_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_1_io_enq_bits_extra_id = auto_in_ar_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_1_io_deq_ready = ((auto_out_r_valid & auto_in_r_ready) & rsel_1) & auto_out_r_bits_last; // @[UserYanker.scala 62:58]
  assign QueueCompatibility_2_clock = clock;
  assign QueueCompatibility_2_reset = reset;
  assign QueueCompatibility_2_io_enq_valid = (auto_in_ar_valid & auto_out_ar_ready) & arsel_2; // @[UserYanker.scala 63:53]
  assign QueueCompatibility_2_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_2_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_2_io_enq_bits_extra_id = auto_in_ar_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_2_io_deq_ready = ((auto_out_r_valid & auto_in_r_ready) & rsel_2) & auto_out_r_bits_last; // @[UserYanker.scala 62:58]
  assign QueueCompatibility_3_clock = clock;
  assign QueueCompatibility_3_reset = reset;
  assign QueueCompatibility_3_io_enq_valid = (auto_in_ar_valid & auto_out_ar_ready) & arsel_3; // @[UserYanker.scala 63:53]
  assign QueueCompatibility_3_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_3_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_3_io_enq_bits_extra_id = auto_in_ar_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_3_io_deq_ready = ((auto_out_r_valid & auto_in_r_ready) & rsel_3) & auto_out_r_bits_last; // @[UserYanker.scala 62:58]
  assign QueueCompatibility_4_clock = clock;
  assign QueueCompatibility_4_reset = reset;
  assign QueueCompatibility_4_io_enq_valid = (auto_in_ar_valid & auto_out_ar_ready) & arsel_4; // @[UserYanker.scala 63:53]
  assign QueueCompatibility_4_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_4_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_4_io_enq_bits_extra_id = auto_in_ar_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_4_io_deq_ready = ((auto_out_r_valid & auto_in_r_ready) & rsel_4) & auto_out_r_bits_last; // @[UserYanker.scala 62:58]
  assign QueueCompatibility_5_clock = clock;
  assign QueueCompatibility_5_reset = reset;
  assign QueueCompatibility_5_io_enq_valid = (auto_in_ar_valid & auto_out_ar_ready) & arsel_5; // @[UserYanker.scala 63:53]
  assign QueueCompatibility_5_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_5_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_5_io_enq_bits_extra_id = auto_in_ar_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_5_io_deq_ready = ((auto_out_r_valid & auto_in_r_ready) & rsel_5) & auto_out_r_bits_last; // @[UserYanker.scala 62:58]
  assign QueueCompatibility_6_clock = clock;
  assign QueueCompatibility_6_reset = reset;
  assign QueueCompatibility_6_io_enq_valid = (auto_in_ar_valid & auto_out_ar_ready) & arsel_6; // @[UserYanker.scala 63:53]
  assign QueueCompatibility_6_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_6_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_6_io_enq_bits_extra_id = auto_in_ar_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_6_io_deq_ready = ((auto_out_r_valid & auto_in_r_ready) & rsel_6) & auto_out_r_bits_last; // @[UserYanker.scala 62:58]
  assign QueueCompatibility_7_clock = clock;
  assign QueueCompatibility_7_reset = reset;
  assign QueueCompatibility_7_io_enq_valid = (auto_in_ar_valid & auto_out_ar_ready) & arsel_7; // @[UserYanker.scala 63:53]
  assign QueueCompatibility_7_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_7_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_7_io_enq_bits_extra_id = auto_in_ar_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_7_io_deq_ready = ((auto_out_r_valid & auto_in_r_ready) & rsel_7) & auto_out_r_bits_last; // @[UserYanker.scala 62:58]
  assign QueueCompatibility_8_clock = clock;
  assign QueueCompatibility_8_reset = reset;
  assign QueueCompatibility_8_io_enq_valid = (auto_in_ar_valid & auto_out_ar_ready) & arsel_8; // @[UserYanker.scala 63:53]
  assign QueueCompatibility_8_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_8_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_8_io_enq_bits_extra_id = auto_in_ar_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_8_io_deq_ready = ((auto_out_r_valid & auto_in_r_ready) & rsel_8) & auto_out_r_bits_last; // @[UserYanker.scala 62:58]
  assign QueueCompatibility_9_clock = clock;
  assign QueueCompatibility_9_reset = reset;
  assign QueueCompatibility_9_io_enq_valid = (auto_in_ar_valid & auto_out_ar_ready) & arsel_9; // @[UserYanker.scala 63:53]
  assign QueueCompatibility_9_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_9_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_9_io_enq_bits_extra_id = auto_in_ar_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_9_io_deq_ready = ((auto_out_r_valid & auto_in_r_ready) & rsel_9) & auto_out_r_bits_last; // @[UserYanker.scala 62:58]
  assign QueueCompatibility_10_clock = clock;
  assign QueueCompatibility_10_reset = reset;
  assign QueueCompatibility_10_io_enq_valid = (auto_in_ar_valid & auto_out_ar_ready) & arsel_10; // @[UserYanker.scala 63:53]
  assign QueueCompatibility_10_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_10_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_10_io_enq_bits_extra_id = auto_in_ar_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_10_io_deq_ready = ((auto_out_r_valid & auto_in_r_ready) & rsel_10) & auto_out_r_bits_last; // @[UserYanker.scala 62:58]
  assign QueueCompatibility_11_clock = clock;
  assign QueueCompatibility_11_reset = reset;
  assign QueueCompatibility_11_io_enq_valid = (auto_in_ar_valid & auto_out_ar_ready) & arsel_11; // @[UserYanker.scala 63:53]
  assign QueueCompatibility_11_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_11_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_11_io_enq_bits_extra_id = auto_in_ar_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_11_io_deq_ready = ((auto_out_r_valid & auto_in_r_ready) & rsel_11) & auto_out_r_bits_last; // @[UserYanker.scala 62:58]
  assign QueueCompatibility_12_clock = clock;
  assign QueueCompatibility_12_reset = reset;
  assign QueueCompatibility_12_io_enq_valid = (auto_in_ar_valid & auto_out_ar_ready) & arsel_12; // @[UserYanker.scala 63:53]
  assign QueueCompatibility_12_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_12_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_12_io_enq_bits_extra_id = auto_in_ar_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_12_io_deq_ready = ((auto_out_r_valid & auto_in_r_ready) & rsel_12) & auto_out_r_bits_last; // @[UserYanker.scala 62:58]
  assign QueueCompatibility_13_clock = clock;
  assign QueueCompatibility_13_reset = reset;
  assign QueueCompatibility_13_io_enq_valid = (auto_in_ar_valid & auto_out_ar_ready) & arsel_13; // @[UserYanker.scala 63:53]
  assign QueueCompatibility_13_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_13_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_13_io_enq_bits_extra_id = auto_in_ar_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_13_io_deq_ready = ((auto_out_r_valid & auto_in_r_ready) & rsel_13) & auto_out_r_bits_last; // @[UserYanker.scala 62:58]
  assign QueueCompatibility_14_clock = clock;
  assign QueueCompatibility_14_reset = reset;
  assign QueueCompatibility_14_io_enq_valid = (auto_in_ar_valid & auto_out_ar_ready) & arsel_14; // @[UserYanker.scala 63:53]
  assign QueueCompatibility_14_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_14_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_14_io_enq_bits_extra_id = auto_in_ar_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_14_io_deq_ready = ((auto_out_r_valid & auto_in_r_ready) & rsel_14) & auto_out_r_bits_last; // @[UserYanker.scala 62:58]
  assign QueueCompatibility_15_clock = clock;
  assign QueueCompatibility_15_reset = reset;
  assign QueueCompatibility_15_io_enq_valid = (auto_in_ar_valid & auto_out_ar_ready) & arsel_15; // @[UserYanker.scala 63:53]
  assign QueueCompatibility_15_io_enq_bits_tl_state_size = auto_in_ar_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_15_io_enq_bits_tl_state_source = auto_in_ar_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_15_io_enq_bits_extra_id = auto_in_ar_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_15_io_deq_ready = ((auto_out_r_valid & auto_in_r_ready) & rsel_15) & auto_out_r_bits_last; // @[UserYanker.scala 62:58]
  assign QueueCompatibility_16_clock = clock;
  assign QueueCompatibility_16_reset = reset;
  assign QueueCompatibility_16_io_enq_valid = (auto_in_aw_valid & auto_out_aw_ready) & awsel_0; // @[UserYanker.scala 84:53]
  assign QueueCompatibility_16_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_16_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_16_io_enq_bits_extra_id = auto_in_aw_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_16_io_deq_ready = (auto_out_b_valid & auto_in_b_ready) & bsel_0; // @[UserYanker.scala 83:53]
  assign QueueCompatibility_17_clock = clock;
  assign QueueCompatibility_17_reset = reset;
  assign QueueCompatibility_17_io_enq_valid = (auto_in_aw_valid & auto_out_aw_ready) & awsel_1; // @[UserYanker.scala 84:53]
  assign QueueCompatibility_17_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_17_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_17_io_enq_bits_extra_id = auto_in_aw_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_17_io_deq_ready = (auto_out_b_valid & auto_in_b_ready) & bsel_1; // @[UserYanker.scala 83:53]
  assign QueueCompatibility_18_clock = clock;
  assign QueueCompatibility_18_reset = reset;
  assign QueueCompatibility_18_io_enq_valid = (auto_in_aw_valid & auto_out_aw_ready) & awsel_2; // @[UserYanker.scala 84:53]
  assign QueueCompatibility_18_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_18_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_18_io_enq_bits_extra_id = auto_in_aw_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_18_io_deq_ready = (auto_out_b_valid & auto_in_b_ready) & bsel_2; // @[UserYanker.scala 83:53]
  assign QueueCompatibility_19_clock = clock;
  assign QueueCompatibility_19_reset = reset;
  assign QueueCompatibility_19_io_enq_valid = (auto_in_aw_valid & auto_out_aw_ready) & awsel_3; // @[UserYanker.scala 84:53]
  assign QueueCompatibility_19_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_19_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_19_io_enq_bits_extra_id = auto_in_aw_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_19_io_deq_ready = (auto_out_b_valid & auto_in_b_ready) & bsel_3; // @[UserYanker.scala 83:53]
  assign QueueCompatibility_20_clock = clock;
  assign QueueCompatibility_20_reset = reset;
  assign QueueCompatibility_20_io_enq_valid = (auto_in_aw_valid & auto_out_aw_ready) & awsel_4; // @[UserYanker.scala 84:53]
  assign QueueCompatibility_20_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_20_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_20_io_enq_bits_extra_id = auto_in_aw_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_20_io_deq_ready = (auto_out_b_valid & auto_in_b_ready) & bsel_4; // @[UserYanker.scala 83:53]
  assign QueueCompatibility_21_clock = clock;
  assign QueueCompatibility_21_reset = reset;
  assign QueueCompatibility_21_io_enq_valid = (auto_in_aw_valid & auto_out_aw_ready) & awsel_5; // @[UserYanker.scala 84:53]
  assign QueueCompatibility_21_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_21_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_21_io_enq_bits_extra_id = auto_in_aw_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_21_io_deq_ready = (auto_out_b_valid & auto_in_b_ready) & bsel_5; // @[UserYanker.scala 83:53]
  assign QueueCompatibility_22_clock = clock;
  assign QueueCompatibility_22_reset = reset;
  assign QueueCompatibility_22_io_enq_valid = (auto_in_aw_valid & auto_out_aw_ready) & awsel_6; // @[UserYanker.scala 84:53]
  assign QueueCompatibility_22_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_22_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_22_io_enq_bits_extra_id = auto_in_aw_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_22_io_deq_ready = (auto_out_b_valid & auto_in_b_ready) & bsel_6; // @[UserYanker.scala 83:53]
  assign QueueCompatibility_23_clock = clock;
  assign QueueCompatibility_23_reset = reset;
  assign QueueCompatibility_23_io_enq_valid = (auto_in_aw_valid & auto_out_aw_ready) & awsel_7; // @[UserYanker.scala 84:53]
  assign QueueCompatibility_23_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_23_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_23_io_enq_bits_extra_id = auto_in_aw_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_23_io_deq_ready = (auto_out_b_valid & auto_in_b_ready) & bsel_7; // @[UserYanker.scala 83:53]
  assign QueueCompatibility_24_clock = clock;
  assign QueueCompatibility_24_reset = reset;
  assign QueueCompatibility_24_io_enq_valid = (auto_in_aw_valid & auto_out_aw_ready) & awsel_8; // @[UserYanker.scala 84:53]
  assign QueueCompatibility_24_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_24_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_24_io_enq_bits_extra_id = auto_in_aw_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_24_io_deq_ready = (auto_out_b_valid & auto_in_b_ready) & bsel_8; // @[UserYanker.scala 83:53]
  assign QueueCompatibility_25_clock = clock;
  assign QueueCompatibility_25_reset = reset;
  assign QueueCompatibility_25_io_enq_valid = (auto_in_aw_valid & auto_out_aw_ready) & awsel_9; // @[UserYanker.scala 84:53]
  assign QueueCompatibility_25_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_25_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_25_io_enq_bits_extra_id = auto_in_aw_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_25_io_deq_ready = (auto_out_b_valid & auto_in_b_ready) & bsel_9; // @[UserYanker.scala 83:53]
  assign QueueCompatibility_26_clock = clock;
  assign QueueCompatibility_26_reset = reset;
  assign QueueCompatibility_26_io_enq_valid = (auto_in_aw_valid & auto_out_aw_ready) & awsel_10; // @[UserYanker.scala 84:53]
  assign QueueCompatibility_26_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_26_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_26_io_enq_bits_extra_id = auto_in_aw_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_26_io_deq_ready = (auto_out_b_valid & auto_in_b_ready) & bsel_10; // @[UserYanker.scala 83:53]
  assign QueueCompatibility_27_clock = clock;
  assign QueueCompatibility_27_reset = reset;
  assign QueueCompatibility_27_io_enq_valid = (auto_in_aw_valid & auto_out_aw_ready) & awsel_11; // @[UserYanker.scala 84:53]
  assign QueueCompatibility_27_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_27_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_27_io_enq_bits_extra_id = auto_in_aw_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_27_io_deq_ready = (auto_out_b_valid & auto_in_b_ready) & bsel_11; // @[UserYanker.scala 83:53]
  assign QueueCompatibility_28_clock = clock;
  assign QueueCompatibility_28_reset = reset;
  assign QueueCompatibility_28_io_enq_valid = (auto_in_aw_valid & auto_out_aw_ready) & awsel_12; // @[UserYanker.scala 84:53]
  assign QueueCompatibility_28_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_28_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_28_io_enq_bits_extra_id = auto_in_aw_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_28_io_deq_ready = (auto_out_b_valid & auto_in_b_ready) & bsel_12; // @[UserYanker.scala 83:53]
  assign QueueCompatibility_29_clock = clock;
  assign QueueCompatibility_29_reset = reset;
  assign QueueCompatibility_29_io_enq_valid = (auto_in_aw_valid & auto_out_aw_ready) & awsel_13; // @[UserYanker.scala 84:53]
  assign QueueCompatibility_29_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_29_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_29_io_enq_bits_extra_id = auto_in_aw_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_29_io_deq_ready = (auto_out_b_valid & auto_in_b_ready) & bsel_13; // @[UserYanker.scala 83:53]
  assign QueueCompatibility_30_clock = clock;
  assign QueueCompatibility_30_reset = reset;
  assign QueueCompatibility_30_io_enq_valid = (auto_in_aw_valid & auto_out_aw_ready) & awsel_14; // @[UserYanker.scala 84:53]
  assign QueueCompatibility_30_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_30_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_30_io_enq_bits_extra_id = auto_in_aw_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_30_io_deq_ready = (auto_out_b_valid & auto_in_b_ready) & bsel_14; // @[UserYanker.scala 83:53]
  assign QueueCompatibility_31_clock = clock;
  assign QueueCompatibility_31_reset = reset;
  assign QueueCompatibility_31_io_enq_valid = (auto_in_aw_valid & auto_out_aw_ready) & awsel_15; // @[UserYanker.scala 84:53]
  assign QueueCompatibility_31_io_enq_bits_tl_state_size = auto_in_aw_bits_echo_tl_state_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_31_io_enq_bits_tl_state_source = auto_in_aw_bits_echo_tl_state_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_31_io_enq_bits_extra_id = auto_in_aw_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign QueueCompatibility_31_io_deq_ready = (auto_out_b_valid & auto_in_b_ready) & bsel_15; // @[UserYanker.scala 83:53]
endmodule
