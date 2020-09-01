module TLInterconnectCoupler_12(
  input         clock,
  input         reset,
  input         auto_axi4yank_out_aw_ready,
  output        auto_axi4yank_out_aw_valid,
  output [3:0]  auto_axi4yank_out_aw_bits_id,
  output [31:0] auto_axi4yank_out_aw_bits_addr,
  output [7:0]  auto_axi4yank_out_aw_bits_len,
  output [2:0]  auto_axi4yank_out_aw_bits_size,
  output [1:0]  auto_axi4yank_out_aw_bits_burst,
  output        auto_axi4yank_out_aw_bits_lock,
  output [3:0]  auto_axi4yank_out_aw_bits_cache,
  output [2:0]  auto_axi4yank_out_aw_bits_prot,
  output [3:0]  auto_axi4yank_out_aw_bits_qos,
  input         auto_axi4yank_out_w_ready,
  output        auto_axi4yank_out_w_valid,
  output [63:0] auto_axi4yank_out_w_bits_data,
  output [7:0]  auto_axi4yank_out_w_bits_strb,
  output        auto_axi4yank_out_w_bits_last,
  output        auto_axi4yank_out_b_ready,
  input         auto_axi4yank_out_b_valid,
  input  [3:0]  auto_axi4yank_out_b_bits_id,
  input  [1:0]  auto_axi4yank_out_b_bits_resp,
  input         auto_axi4yank_out_ar_ready,
  output        auto_axi4yank_out_ar_valid,
  output [3:0]  auto_axi4yank_out_ar_bits_id,
  output [31:0] auto_axi4yank_out_ar_bits_addr,
  output [7:0]  auto_axi4yank_out_ar_bits_len,
  output [2:0]  auto_axi4yank_out_ar_bits_size,
  output [1:0]  auto_axi4yank_out_ar_bits_burst,
  output        auto_axi4yank_out_ar_bits_lock,
  output [3:0]  auto_axi4yank_out_ar_bits_cache,
  output [2:0]  auto_axi4yank_out_ar_bits_prot,
  output [3:0]  auto_axi4yank_out_ar_bits_qos,
  output        auto_axi4yank_out_r_ready,
  input         auto_axi4yank_out_r_valid,
  input  [3:0]  auto_axi4yank_out_r_bits_id,
  input  [63:0] auto_axi4yank_out_r_bits_data,
  input  [1:0]  auto_axi4yank_out_r_bits_resp,
  input         auto_axi4yank_out_r_bits_last,
  output        auto_tl_in_a_ready,
  input         auto_tl_in_a_valid,
  input  [2:0]  auto_tl_in_a_bits_opcode,
  input  [2:0]  auto_tl_in_a_bits_size,
  input  [6:0]  auto_tl_in_a_bits_source,
  input  [31:0] auto_tl_in_a_bits_address,
  input         auto_tl_in_a_bits_user_amba_prot_bufferable,
  input         auto_tl_in_a_bits_user_amba_prot_modifiable,
  input         auto_tl_in_a_bits_user_amba_prot_readalloc,
  input         auto_tl_in_a_bits_user_amba_prot_writealloc,
  input         auto_tl_in_a_bits_user_amba_prot_privileged,
  input         auto_tl_in_a_bits_user_amba_prot_secure,
  input         auto_tl_in_a_bits_user_amba_prot_fetch,
  input  [7:0]  auto_tl_in_a_bits_mask,
  input  [63:0] auto_tl_in_a_bits_data,
  input         auto_tl_in_d_ready,
  output        auto_tl_in_d_valid,
  output [2:0]  auto_tl_in_d_bits_opcode,
  output [2:0]  auto_tl_in_d_bits_size,
  output [6:0]  auto_tl_in_d_bits_source,
  output        auto_tl_in_d_bits_denied,
  output [63:0] auto_tl_in_d_bits_data,
  output        auto_tl_in_d_bits_corrupt
);
  wire  axi4yank_clock; // @[UserYanker.scala 97:30]
  wire  axi4yank_reset; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_aw_ready; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_aw_valid; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_in_aw_bits_id; // @[UserYanker.scala 97:30]
  wire [31:0] axi4yank_auto_in_aw_bits_addr; // @[UserYanker.scala 97:30]
  wire [7:0] axi4yank_auto_in_aw_bits_len; // @[UserYanker.scala 97:30]
  wire [2:0] axi4yank_auto_in_aw_bits_size; // @[UserYanker.scala 97:30]
  wire [1:0] axi4yank_auto_in_aw_bits_burst; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_aw_bits_lock; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_in_aw_bits_cache; // @[UserYanker.scala 97:30]
  wire [2:0] axi4yank_auto_in_aw_bits_prot; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_in_aw_bits_qos; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_in_aw_bits_echo_tl_state_size; // @[UserYanker.scala 97:30]
  wire [6:0] axi4yank_auto_in_aw_bits_echo_tl_state_source; // @[UserYanker.scala 97:30]
  wire [2:0] axi4yank_auto_in_aw_bits_echo_extra_id; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_w_ready; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_w_valid; // @[UserYanker.scala 97:30]
  wire [63:0] axi4yank_auto_in_w_bits_data; // @[UserYanker.scala 97:30]
  wire [7:0] axi4yank_auto_in_w_bits_strb; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_w_bits_last; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_b_ready; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_b_valid; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_in_b_bits_id; // @[UserYanker.scala 97:30]
  wire [1:0] axi4yank_auto_in_b_bits_resp; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_in_b_bits_echo_tl_state_size; // @[UserYanker.scala 97:30]
  wire [6:0] axi4yank_auto_in_b_bits_echo_tl_state_source; // @[UserYanker.scala 97:30]
  wire [2:0] axi4yank_auto_in_b_bits_echo_extra_id; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_ar_ready; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_ar_valid; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_in_ar_bits_id; // @[UserYanker.scala 97:30]
  wire [31:0] axi4yank_auto_in_ar_bits_addr; // @[UserYanker.scala 97:30]
  wire [7:0] axi4yank_auto_in_ar_bits_len; // @[UserYanker.scala 97:30]
  wire [2:0] axi4yank_auto_in_ar_bits_size; // @[UserYanker.scala 97:30]
  wire [1:0] axi4yank_auto_in_ar_bits_burst; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_ar_bits_lock; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_in_ar_bits_cache; // @[UserYanker.scala 97:30]
  wire [2:0] axi4yank_auto_in_ar_bits_prot; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_in_ar_bits_qos; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_in_ar_bits_echo_tl_state_size; // @[UserYanker.scala 97:30]
  wire [6:0] axi4yank_auto_in_ar_bits_echo_tl_state_source; // @[UserYanker.scala 97:30]
  wire [2:0] axi4yank_auto_in_ar_bits_echo_extra_id; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_r_ready; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_r_valid; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_in_r_bits_id; // @[UserYanker.scala 97:30]
  wire [63:0] axi4yank_auto_in_r_bits_data; // @[UserYanker.scala 97:30]
  wire [1:0] axi4yank_auto_in_r_bits_resp; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_in_r_bits_echo_tl_state_size; // @[UserYanker.scala 97:30]
  wire [6:0] axi4yank_auto_in_r_bits_echo_tl_state_source; // @[UserYanker.scala 97:30]
  wire [2:0] axi4yank_auto_in_r_bits_echo_extra_id; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_r_bits_last; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_aw_ready; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_aw_valid; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_out_aw_bits_id; // @[UserYanker.scala 97:30]
  wire [31:0] axi4yank_auto_out_aw_bits_addr; // @[UserYanker.scala 97:30]
  wire [7:0] axi4yank_auto_out_aw_bits_len; // @[UserYanker.scala 97:30]
  wire [2:0] axi4yank_auto_out_aw_bits_size; // @[UserYanker.scala 97:30]
  wire [1:0] axi4yank_auto_out_aw_bits_burst; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_aw_bits_lock; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_out_aw_bits_cache; // @[UserYanker.scala 97:30]
  wire [2:0] axi4yank_auto_out_aw_bits_prot; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_out_aw_bits_qos; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_w_ready; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_w_valid; // @[UserYanker.scala 97:30]
  wire [63:0] axi4yank_auto_out_w_bits_data; // @[UserYanker.scala 97:30]
  wire [7:0] axi4yank_auto_out_w_bits_strb; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_w_bits_last; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_b_ready; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_b_valid; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_out_b_bits_id; // @[UserYanker.scala 97:30]
  wire [1:0] axi4yank_auto_out_b_bits_resp; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_ar_ready; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_ar_valid; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_out_ar_bits_id; // @[UserYanker.scala 97:30]
  wire [31:0] axi4yank_auto_out_ar_bits_addr; // @[UserYanker.scala 97:30]
  wire [7:0] axi4yank_auto_out_ar_bits_len; // @[UserYanker.scala 97:30]
  wire [2:0] axi4yank_auto_out_ar_bits_size; // @[UserYanker.scala 97:30]
  wire [1:0] axi4yank_auto_out_ar_bits_burst; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_ar_bits_lock; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_out_ar_bits_cache; // @[UserYanker.scala 97:30]
  wire [2:0] axi4yank_auto_out_ar_bits_prot; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_out_ar_bits_qos; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_r_ready; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_r_valid; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_out_r_bits_id; // @[UserYanker.scala 97:30]
  wire [63:0] axi4yank_auto_out_r_bits_data; // @[UserYanker.scala 97:30]
  wire [1:0] axi4yank_auto_out_r_bits_resp; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_r_bits_last; // @[UserYanker.scala 97:30]
  wire  axi4index_auto_in_aw_ready; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_aw_valid; // @[IdIndexer.scala 84:31]
  wire [6:0] axi4index_auto_in_aw_bits_id; // @[IdIndexer.scala 84:31]
  wire [31:0] axi4index_auto_in_aw_bits_addr; // @[IdIndexer.scala 84:31]
  wire [7:0] axi4index_auto_in_aw_bits_len; // @[IdIndexer.scala 84:31]
  wire [2:0] axi4index_auto_in_aw_bits_size; // @[IdIndexer.scala 84:31]
  wire [1:0] axi4index_auto_in_aw_bits_burst; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_aw_bits_lock; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_in_aw_bits_cache; // @[IdIndexer.scala 84:31]
  wire [2:0] axi4index_auto_in_aw_bits_prot; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_in_aw_bits_qos; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_in_aw_bits_echo_tl_state_size; // @[IdIndexer.scala 84:31]
  wire [6:0] axi4index_auto_in_aw_bits_echo_tl_state_source; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_w_ready; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_w_valid; // @[IdIndexer.scala 84:31]
  wire [63:0] axi4index_auto_in_w_bits_data; // @[IdIndexer.scala 84:31]
  wire [7:0] axi4index_auto_in_w_bits_strb; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_w_bits_last; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_b_ready; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_b_valid; // @[IdIndexer.scala 84:31]
  wire [6:0] axi4index_auto_in_b_bits_id; // @[IdIndexer.scala 84:31]
  wire [1:0] axi4index_auto_in_b_bits_resp; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_in_b_bits_echo_tl_state_size; // @[IdIndexer.scala 84:31]
  wire [6:0] axi4index_auto_in_b_bits_echo_tl_state_source; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_ar_ready; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_ar_valid; // @[IdIndexer.scala 84:31]
  wire [6:0] axi4index_auto_in_ar_bits_id; // @[IdIndexer.scala 84:31]
  wire [31:0] axi4index_auto_in_ar_bits_addr; // @[IdIndexer.scala 84:31]
  wire [7:0] axi4index_auto_in_ar_bits_len; // @[IdIndexer.scala 84:31]
  wire [2:0] axi4index_auto_in_ar_bits_size; // @[IdIndexer.scala 84:31]
  wire [1:0] axi4index_auto_in_ar_bits_burst; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_ar_bits_lock; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_in_ar_bits_cache; // @[IdIndexer.scala 84:31]
  wire [2:0] axi4index_auto_in_ar_bits_prot; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_in_ar_bits_qos; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_in_ar_bits_echo_tl_state_size; // @[IdIndexer.scala 84:31]
  wire [6:0] axi4index_auto_in_ar_bits_echo_tl_state_source; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_r_ready; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_r_valid; // @[IdIndexer.scala 84:31]
  wire [6:0] axi4index_auto_in_r_bits_id; // @[IdIndexer.scala 84:31]
  wire [63:0] axi4index_auto_in_r_bits_data; // @[IdIndexer.scala 84:31]
  wire [1:0] axi4index_auto_in_r_bits_resp; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_in_r_bits_echo_tl_state_size; // @[IdIndexer.scala 84:31]
  wire [6:0] axi4index_auto_in_r_bits_echo_tl_state_source; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_r_bits_last; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_aw_ready; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_aw_valid; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_out_aw_bits_id; // @[IdIndexer.scala 84:31]
  wire [31:0] axi4index_auto_out_aw_bits_addr; // @[IdIndexer.scala 84:31]
  wire [7:0] axi4index_auto_out_aw_bits_len; // @[IdIndexer.scala 84:31]
  wire [2:0] axi4index_auto_out_aw_bits_size; // @[IdIndexer.scala 84:31]
  wire [1:0] axi4index_auto_out_aw_bits_burst; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_aw_bits_lock; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_out_aw_bits_cache; // @[IdIndexer.scala 84:31]
  wire [2:0] axi4index_auto_out_aw_bits_prot; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_out_aw_bits_qos; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_out_aw_bits_echo_tl_state_size; // @[IdIndexer.scala 84:31]
  wire [6:0] axi4index_auto_out_aw_bits_echo_tl_state_source; // @[IdIndexer.scala 84:31]
  wire [2:0] axi4index_auto_out_aw_bits_echo_extra_id; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_w_ready; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_w_valid; // @[IdIndexer.scala 84:31]
  wire [63:0] axi4index_auto_out_w_bits_data; // @[IdIndexer.scala 84:31]
  wire [7:0] axi4index_auto_out_w_bits_strb; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_w_bits_last; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_b_ready; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_b_valid; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_out_b_bits_id; // @[IdIndexer.scala 84:31]
  wire [1:0] axi4index_auto_out_b_bits_resp; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_out_b_bits_echo_tl_state_size; // @[IdIndexer.scala 84:31]
  wire [6:0] axi4index_auto_out_b_bits_echo_tl_state_source; // @[IdIndexer.scala 84:31]
  wire [2:0] axi4index_auto_out_b_bits_echo_extra_id; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_ar_ready; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_ar_valid; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_out_ar_bits_id; // @[IdIndexer.scala 84:31]
  wire [31:0] axi4index_auto_out_ar_bits_addr; // @[IdIndexer.scala 84:31]
  wire [7:0] axi4index_auto_out_ar_bits_len; // @[IdIndexer.scala 84:31]
  wire [2:0] axi4index_auto_out_ar_bits_size; // @[IdIndexer.scala 84:31]
  wire [1:0] axi4index_auto_out_ar_bits_burst; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_ar_bits_lock; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_out_ar_bits_cache; // @[IdIndexer.scala 84:31]
  wire [2:0] axi4index_auto_out_ar_bits_prot; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_out_ar_bits_qos; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_out_ar_bits_echo_tl_state_size; // @[IdIndexer.scala 84:31]
  wire [6:0] axi4index_auto_out_ar_bits_echo_tl_state_source; // @[IdIndexer.scala 84:31]
  wire [2:0] axi4index_auto_out_ar_bits_echo_extra_id; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_r_ready; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_r_valid; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_out_r_bits_id; // @[IdIndexer.scala 84:31]
  wire [63:0] axi4index_auto_out_r_bits_data; // @[IdIndexer.scala 84:31]
  wire [1:0] axi4index_auto_out_r_bits_resp; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_out_r_bits_echo_tl_state_size; // @[IdIndexer.scala 84:31]
  wire [6:0] axi4index_auto_out_r_bits_echo_tl_state_source; // @[IdIndexer.scala 84:31]
  wire [2:0] axi4index_auto_out_r_bits_echo_extra_id; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_r_bits_last; // @[IdIndexer.scala 84:31]
  wire  tl2axi4_clock; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_reset; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_in_a_ready; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_in_a_valid; // @[ToAXI4.scala 276:29]
  wire [2:0] tl2axi4_auto_in_a_bits_opcode; // @[ToAXI4.scala 276:29]
  wire [2:0] tl2axi4_auto_in_a_bits_size; // @[ToAXI4.scala 276:29]
  wire [6:0] tl2axi4_auto_in_a_bits_source; // @[ToAXI4.scala 276:29]
  wire [31:0] tl2axi4_auto_in_a_bits_address; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_in_a_bits_user_amba_prot_bufferable; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_in_a_bits_user_amba_prot_modifiable; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_in_a_bits_user_amba_prot_readalloc; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_in_a_bits_user_amba_prot_writealloc; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_in_a_bits_user_amba_prot_privileged; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_in_a_bits_user_amba_prot_secure; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_in_a_bits_user_amba_prot_fetch; // @[ToAXI4.scala 276:29]
  wire [7:0] tl2axi4_auto_in_a_bits_mask; // @[ToAXI4.scala 276:29]
  wire [63:0] tl2axi4_auto_in_a_bits_data; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_in_d_ready; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_in_d_valid; // @[ToAXI4.scala 276:29]
  wire [2:0] tl2axi4_auto_in_d_bits_opcode; // @[ToAXI4.scala 276:29]
  wire [2:0] tl2axi4_auto_in_d_bits_size; // @[ToAXI4.scala 276:29]
  wire [6:0] tl2axi4_auto_in_d_bits_source; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_in_d_bits_denied; // @[ToAXI4.scala 276:29]
  wire [63:0] tl2axi4_auto_in_d_bits_data; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_in_d_bits_corrupt; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_out_aw_ready; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_out_aw_valid; // @[ToAXI4.scala 276:29]
  wire [6:0] tl2axi4_auto_out_aw_bits_id; // @[ToAXI4.scala 276:29]
  wire [31:0] tl2axi4_auto_out_aw_bits_addr; // @[ToAXI4.scala 276:29]
  wire [7:0] tl2axi4_auto_out_aw_bits_len; // @[ToAXI4.scala 276:29]
  wire [2:0] tl2axi4_auto_out_aw_bits_size; // @[ToAXI4.scala 276:29]
  wire [1:0] tl2axi4_auto_out_aw_bits_burst; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_out_aw_bits_lock; // @[ToAXI4.scala 276:29]
  wire [3:0] tl2axi4_auto_out_aw_bits_cache; // @[ToAXI4.scala 276:29]
  wire [2:0] tl2axi4_auto_out_aw_bits_prot; // @[ToAXI4.scala 276:29]
  wire [3:0] tl2axi4_auto_out_aw_bits_qos; // @[ToAXI4.scala 276:29]
  wire [3:0] tl2axi4_auto_out_aw_bits_echo_tl_state_size; // @[ToAXI4.scala 276:29]
  wire [6:0] tl2axi4_auto_out_aw_bits_echo_tl_state_source; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_out_w_ready; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_out_w_valid; // @[ToAXI4.scala 276:29]
  wire [63:0] tl2axi4_auto_out_w_bits_data; // @[ToAXI4.scala 276:29]
  wire [7:0] tl2axi4_auto_out_w_bits_strb; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_out_w_bits_last; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_out_b_ready; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_out_b_valid; // @[ToAXI4.scala 276:29]
  wire [6:0] tl2axi4_auto_out_b_bits_id; // @[ToAXI4.scala 276:29]
  wire [1:0] tl2axi4_auto_out_b_bits_resp; // @[ToAXI4.scala 276:29]
  wire [3:0] tl2axi4_auto_out_b_bits_echo_tl_state_size; // @[ToAXI4.scala 276:29]
  wire [6:0] tl2axi4_auto_out_b_bits_echo_tl_state_source; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_out_ar_ready; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_out_ar_valid; // @[ToAXI4.scala 276:29]
  wire [6:0] tl2axi4_auto_out_ar_bits_id; // @[ToAXI4.scala 276:29]
  wire [31:0] tl2axi4_auto_out_ar_bits_addr; // @[ToAXI4.scala 276:29]
  wire [7:0] tl2axi4_auto_out_ar_bits_len; // @[ToAXI4.scala 276:29]
  wire [2:0] tl2axi4_auto_out_ar_bits_size; // @[ToAXI4.scala 276:29]
  wire [1:0] tl2axi4_auto_out_ar_bits_burst; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_out_ar_bits_lock; // @[ToAXI4.scala 276:29]
  wire [3:0] tl2axi4_auto_out_ar_bits_cache; // @[ToAXI4.scala 276:29]
  wire [2:0] tl2axi4_auto_out_ar_bits_prot; // @[ToAXI4.scala 276:29]
  wire [3:0] tl2axi4_auto_out_ar_bits_qos; // @[ToAXI4.scala 276:29]
  wire [3:0] tl2axi4_auto_out_ar_bits_echo_tl_state_size; // @[ToAXI4.scala 276:29]
  wire [6:0] tl2axi4_auto_out_ar_bits_echo_tl_state_source; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_out_r_ready; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_out_r_valid; // @[ToAXI4.scala 276:29]
  wire [6:0] tl2axi4_auto_out_r_bits_id; // @[ToAXI4.scala 276:29]
  wire [63:0] tl2axi4_auto_out_r_bits_data; // @[ToAXI4.scala 276:29]
  wire [1:0] tl2axi4_auto_out_r_bits_resp; // @[ToAXI4.scala 276:29]
  wire [3:0] tl2axi4_auto_out_r_bits_echo_tl_state_size; // @[ToAXI4.scala 276:29]
  wire [6:0] tl2axi4_auto_out_r_bits_echo_tl_state_source; // @[ToAXI4.scala 276:29]
  wire  tl2axi4_auto_out_r_bits_last; // @[ToAXI4.scala 276:29]
  wire  widget_auto_in_a_ready;
  wire  widget_auto_in_a_valid;
  wire [2:0] widget_auto_in_a_bits_opcode;
  wire [2:0] widget_auto_in_a_bits_size;
  wire [6:0] widget_auto_in_a_bits_source;
  wire [31:0] widget_auto_in_a_bits_address;
  wire  widget_auto_in_a_bits_user_amba_prot_bufferable;
  wire  widget_auto_in_a_bits_user_amba_prot_modifiable;
  wire  widget_auto_in_a_bits_user_amba_prot_readalloc;
  wire  widget_auto_in_a_bits_user_amba_prot_writealloc;
  wire  widget_auto_in_a_bits_user_amba_prot_privileged;
  wire  widget_auto_in_a_bits_user_amba_prot_secure;
  wire  widget_auto_in_a_bits_user_amba_prot_fetch;
  wire [7:0] widget_auto_in_a_bits_mask;
  wire [63:0] widget_auto_in_a_bits_data;
  wire  widget_auto_in_d_ready;
  wire  widget_auto_in_d_valid;
  wire [2:0] widget_auto_in_d_bits_opcode;
  wire [2:0] widget_auto_in_d_bits_size;
  wire [6:0] widget_auto_in_d_bits_source;
  wire  widget_auto_in_d_bits_denied;
  wire [63:0] widget_auto_in_d_bits_data;
  wire  widget_auto_in_d_bits_corrupt;
  wire  widget_auto_out_a_ready;
  wire  widget_auto_out_a_valid;
  wire [2:0] widget_auto_out_a_bits_opcode;
  wire [2:0] widget_auto_out_a_bits_size;
  wire [6:0] widget_auto_out_a_bits_source;
  wire [31:0] widget_auto_out_a_bits_address;
  wire  widget_auto_out_a_bits_user_amba_prot_bufferable;
  wire  widget_auto_out_a_bits_user_amba_prot_modifiable;
  wire  widget_auto_out_a_bits_user_amba_prot_readalloc;
  wire  widget_auto_out_a_bits_user_amba_prot_writealloc;
  wire  widget_auto_out_a_bits_user_amba_prot_privileged;
  wire  widget_auto_out_a_bits_user_amba_prot_secure;
  wire  widget_auto_out_a_bits_user_amba_prot_fetch;
  wire [7:0] widget_auto_out_a_bits_mask;
  wire [63:0] widget_auto_out_a_bits_data;
  wire  widget_auto_out_d_ready;
  wire  widget_auto_out_d_valid;
  wire [2:0] widget_auto_out_d_bits_opcode;
  wire [2:0] widget_auto_out_d_bits_size;
  wire [6:0] widget_auto_out_d_bits_source;
  wire  widget_auto_out_d_bits_denied;
  wire [63:0] widget_auto_out_d_bits_data;
  wire  widget_auto_out_d_bits_corrupt;
  AXI4UserYanker_2 axi4yank ( // @[UserYanker.scala 97:30]
    .clock(axi4yank_clock),
    .reset(axi4yank_reset),
    .auto_in_aw_ready(axi4yank_auto_in_aw_ready),
    .auto_in_aw_valid(axi4yank_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4yank_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4yank_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi4yank_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi4yank_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(axi4yank_auto_in_aw_bits_burst),
    .auto_in_aw_bits_lock(axi4yank_auto_in_aw_bits_lock),
    .auto_in_aw_bits_cache(axi4yank_auto_in_aw_bits_cache),
    .auto_in_aw_bits_prot(axi4yank_auto_in_aw_bits_prot),
    .auto_in_aw_bits_qos(axi4yank_auto_in_aw_bits_qos),
    .auto_in_aw_bits_echo_tl_state_size(axi4yank_auto_in_aw_bits_echo_tl_state_size),
    .auto_in_aw_bits_echo_tl_state_source(axi4yank_auto_in_aw_bits_echo_tl_state_source),
    .auto_in_aw_bits_echo_extra_id(axi4yank_auto_in_aw_bits_echo_extra_id),
    .auto_in_w_ready(axi4yank_auto_in_w_ready),
    .auto_in_w_valid(axi4yank_auto_in_w_valid),
    .auto_in_w_bits_data(axi4yank_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4yank_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4yank_auto_in_w_bits_last),
    .auto_in_b_ready(axi4yank_auto_in_b_ready),
    .auto_in_b_valid(axi4yank_auto_in_b_valid),
    .auto_in_b_bits_id(axi4yank_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4yank_auto_in_b_bits_resp),
    .auto_in_b_bits_echo_tl_state_size(axi4yank_auto_in_b_bits_echo_tl_state_size),
    .auto_in_b_bits_echo_tl_state_source(axi4yank_auto_in_b_bits_echo_tl_state_source),
    .auto_in_b_bits_echo_extra_id(axi4yank_auto_in_b_bits_echo_extra_id),
    .auto_in_ar_ready(axi4yank_auto_in_ar_ready),
    .auto_in_ar_valid(axi4yank_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4yank_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4yank_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi4yank_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi4yank_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(axi4yank_auto_in_ar_bits_burst),
    .auto_in_ar_bits_lock(axi4yank_auto_in_ar_bits_lock),
    .auto_in_ar_bits_cache(axi4yank_auto_in_ar_bits_cache),
    .auto_in_ar_bits_prot(axi4yank_auto_in_ar_bits_prot),
    .auto_in_ar_bits_qos(axi4yank_auto_in_ar_bits_qos),
    .auto_in_ar_bits_echo_tl_state_size(axi4yank_auto_in_ar_bits_echo_tl_state_size),
    .auto_in_ar_bits_echo_tl_state_source(axi4yank_auto_in_ar_bits_echo_tl_state_source),
    .auto_in_ar_bits_echo_extra_id(axi4yank_auto_in_ar_bits_echo_extra_id),
    .auto_in_r_ready(axi4yank_auto_in_r_ready),
    .auto_in_r_valid(axi4yank_auto_in_r_valid),
    .auto_in_r_bits_id(axi4yank_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4yank_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4yank_auto_in_r_bits_resp),
    .auto_in_r_bits_echo_tl_state_size(axi4yank_auto_in_r_bits_echo_tl_state_size),
    .auto_in_r_bits_echo_tl_state_source(axi4yank_auto_in_r_bits_echo_tl_state_source),
    .auto_in_r_bits_echo_extra_id(axi4yank_auto_in_r_bits_echo_extra_id),
    .auto_in_r_bits_last(axi4yank_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4yank_auto_out_aw_ready),
    .auto_out_aw_valid(axi4yank_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4yank_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4yank_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(axi4yank_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(axi4yank_auto_out_aw_bits_size),
    .auto_out_aw_bits_burst(axi4yank_auto_out_aw_bits_burst),
    .auto_out_aw_bits_lock(axi4yank_auto_out_aw_bits_lock),
    .auto_out_aw_bits_cache(axi4yank_auto_out_aw_bits_cache),
    .auto_out_aw_bits_prot(axi4yank_auto_out_aw_bits_prot),
    .auto_out_aw_bits_qos(axi4yank_auto_out_aw_bits_qos),
    .auto_out_w_ready(axi4yank_auto_out_w_ready),
    .auto_out_w_valid(axi4yank_auto_out_w_valid),
    .auto_out_w_bits_data(axi4yank_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4yank_auto_out_w_bits_strb),
    .auto_out_w_bits_last(axi4yank_auto_out_w_bits_last),
    .auto_out_b_ready(axi4yank_auto_out_b_ready),
    .auto_out_b_valid(axi4yank_auto_out_b_valid),
    .auto_out_b_bits_id(axi4yank_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4yank_auto_out_b_bits_resp),
    .auto_out_ar_ready(axi4yank_auto_out_ar_ready),
    .auto_out_ar_valid(axi4yank_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4yank_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4yank_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(axi4yank_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(axi4yank_auto_out_ar_bits_size),
    .auto_out_ar_bits_burst(axi4yank_auto_out_ar_bits_burst),
    .auto_out_ar_bits_lock(axi4yank_auto_out_ar_bits_lock),
    .auto_out_ar_bits_cache(axi4yank_auto_out_ar_bits_cache),
    .auto_out_ar_bits_prot(axi4yank_auto_out_ar_bits_prot),
    .auto_out_ar_bits_qos(axi4yank_auto_out_ar_bits_qos),
    .auto_out_r_ready(axi4yank_auto_out_r_ready),
    .auto_out_r_valid(axi4yank_auto_out_r_valid),
    .auto_out_r_bits_id(axi4yank_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4yank_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4yank_auto_out_r_bits_resp),
    .auto_out_r_bits_last(axi4yank_auto_out_r_bits_last)
  );
  AXI4IdIndexer_2 axi4index ( // @[IdIndexer.scala 84:31]
    .auto_in_aw_ready(axi4index_auto_in_aw_ready),
    .auto_in_aw_valid(axi4index_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4index_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4index_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi4index_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi4index_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(axi4index_auto_in_aw_bits_burst),
    .auto_in_aw_bits_lock(axi4index_auto_in_aw_bits_lock),
    .auto_in_aw_bits_cache(axi4index_auto_in_aw_bits_cache),
    .auto_in_aw_bits_prot(axi4index_auto_in_aw_bits_prot),
    .auto_in_aw_bits_qos(axi4index_auto_in_aw_bits_qos),
    .auto_in_aw_bits_echo_tl_state_size(axi4index_auto_in_aw_bits_echo_tl_state_size),
    .auto_in_aw_bits_echo_tl_state_source(axi4index_auto_in_aw_bits_echo_tl_state_source),
    .auto_in_w_ready(axi4index_auto_in_w_ready),
    .auto_in_w_valid(axi4index_auto_in_w_valid),
    .auto_in_w_bits_data(axi4index_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4index_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4index_auto_in_w_bits_last),
    .auto_in_b_ready(axi4index_auto_in_b_ready),
    .auto_in_b_valid(axi4index_auto_in_b_valid),
    .auto_in_b_bits_id(axi4index_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4index_auto_in_b_bits_resp),
    .auto_in_b_bits_echo_tl_state_size(axi4index_auto_in_b_bits_echo_tl_state_size),
    .auto_in_b_bits_echo_tl_state_source(axi4index_auto_in_b_bits_echo_tl_state_source),
    .auto_in_ar_ready(axi4index_auto_in_ar_ready),
    .auto_in_ar_valid(axi4index_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4index_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4index_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi4index_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi4index_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(axi4index_auto_in_ar_bits_burst),
    .auto_in_ar_bits_lock(axi4index_auto_in_ar_bits_lock),
    .auto_in_ar_bits_cache(axi4index_auto_in_ar_bits_cache),
    .auto_in_ar_bits_prot(axi4index_auto_in_ar_bits_prot),
    .auto_in_ar_bits_qos(axi4index_auto_in_ar_bits_qos),
    .auto_in_ar_bits_echo_tl_state_size(axi4index_auto_in_ar_bits_echo_tl_state_size),
    .auto_in_ar_bits_echo_tl_state_source(axi4index_auto_in_ar_bits_echo_tl_state_source),
    .auto_in_r_ready(axi4index_auto_in_r_ready),
    .auto_in_r_valid(axi4index_auto_in_r_valid),
    .auto_in_r_bits_id(axi4index_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4index_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4index_auto_in_r_bits_resp),
    .auto_in_r_bits_echo_tl_state_size(axi4index_auto_in_r_bits_echo_tl_state_size),
    .auto_in_r_bits_echo_tl_state_source(axi4index_auto_in_r_bits_echo_tl_state_source),
    .auto_in_r_bits_last(axi4index_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4index_auto_out_aw_ready),
    .auto_out_aw_valid(axi4index_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4index_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4index_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(axi4index_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(axi4index_auto_out_aw_bits_size),
    .auto_out_aw_bits_burst(axi4index_auto_out_aw_bits_burst),
    .auto_out_aw_bits_lock(axi4index_auto_out_aw_bits_lock),
    .auto_out_aw_bits_cache(axi4index_auto_out_aw_bits_cache),
    .auto_out_aw_bits_prot(axi4index_auto_out_aw_bits_prot),
    .auto_out_aw_bits_qos(axi4index_auto_out_aw_bits_qos),
    .auto_out_aw_bits_echo_tl_state_size(axi4index_auto_out_aw_bits_echo_tl_state_size),
    .auto_out_aw_bits_echo_tl_state_source(axi4index_auto_out_aw_bits_echo_tl_state_source),
    .auto_out_aw_bits_echo_extra_id(axi4index_auto_out_aw_bits_echo_extra_id),
    .auto_out_w_ready(axi4index_auto_out_w_ready),
    .auto_out_w_valid(axi4index_auto_out_w_valid),
    .auto_out_w_bits_data(axi4index_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4index_auto_out_w_bits_strb),
    .auto_out_w_bits_last(axi4index_auto_out_w_bits_last),
    .auto_out_b_ready(axi4index_auto_out_b_ready),
    .auto_out_b_valid(axi4index_auto_out_b_valid),
    .auto_out_b_bits_id(axi4index_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4index_auto_out_b_bits_resp),
    .auto_out_b_bits_echo_tl_state_size(axi4index_auto_out_b_bits_echo_tl_state_size),
    .auto_out_b_bits_echo_tl_state_source(axi4index_auto_out_b_bits_echo_tl_state_source),
    .auto_out_b_bits_echo_extra_id(axi4index_auto_out_b_bits_echo_extra_id),
    .auto_out_ar_ready(axi4index_auto_out_ar_ready),
    .auto_out_ar_valid(axi4index_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4index_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4index_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(axi4index_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(axi4index_auto_out_ar_bits_size),
    .auto_out_ar_bits_burst(axi4index_auto_out_ar_bits_burst),
    .auto_out_ar_bits_lock(axi4index_auto_out_ar_bits_lock),
    .auto_out_ar_bits_cache(axi4index_auto_out_ar_bits_cache),
    .auto_out_ar_bits_prot(axi4index_auto_out_ar_bits_prot),
    .auto_out_ar_bits_qos(axi4index_auto_out_ar_bits_qos),
    .auto_out_ar_bits_echo_tl_state_size(axi4index_auto_out_ar_bits_echo_tl_state_size),
    .auto_out_ar_bits_echo_tl_state_source(axi4index_auto_out_ar_bits_echo_tl_state_source),
    .auto_out_ar_bits_echo_extra_id(axi4index_auto_out_ar_bits_echo_extra_id),
    .auto_out_r_ready(axi4index_auto_out_r_ready),
    .auto_out_r_valid(axi4index_auto_out_r_valid),
    .auto_out_r_bits_id(axi4index_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4index_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4index_auto_out_r_bits_resp),
    .auto_out_r_bits_echo_tl_state_size(axi4index_auto_out_r_bits_echo_tl_state_size),
    .auto_out_r_bits_echo_tl_state_source(axi4index_auto_out_r_bits_echo_tl_state_source),
    .auto_out_r_bits_echo_extra_id(axi4index_auto_out_r_bits_echo_extra_id),
    .auto_out_r_bits_last(axi4index_auto_out_r_bits_last)
  );
  TLToAXI4_1 tl2axi4 ( // @[ToAXI4.scala 276:29]
    .clock(tl2axi4_clock),
    .reset(tl2axi4_reset),
    .auto_in_a_ready(tl2axi4_auto_in_a_ready),
    .auto_in_a_valid(tl2axi4_auto_in_a_valid),
    .auto_in_a_bits_opcode(tl2axi4_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(tl2axi4_auto_in_a_bits_size),
    .auto_in_a_bits_source(tl2axi4_auto_in_a_bits_source),
    .auto_in_a_bits_address(tl2axi4_auto_in_a_bits_address),
    .auto_in_a_bits_user_amba_prot_bufferable(tl2axi4_auto_in_a_bits_user_amba_prot_bufferable),
    .auto_in_a_bits_user_amba_prot_modifiable(tl2axi4_auto_in_a_bits_user_amba_prot_modifiable),
    .auto_in_a_bits_user_amba_prot_readalloc(tl2axi4_auto_in_a_bits_user_amba_prot_readalloc),
    .auto_in_a_bits_user_amba_prot_writealloc(tl2axi4_auto_in_a_bits_user_amba_prot_writealloc),
    .auto_in_a_bits_user_amba_prot_privileged(tl2axi4_auto_in_a_bits_user_amba_prot_privileged),
    .auto_in_a_bits_user_amba_prot_secure(tl2axi4_auto_in_a_bits_user_amba_prot_secure),
    .auto_in_a_bits_user_amba_prot_fetch(tl2axi4_auto_in_a_bits_user_amba_prot_fetch),
    .auto_in_a_bits_mask(tl2axi4_auto_in_a_bits_mask),
    .auto_in_a_bits_data(tl2axi4_auto_in_a_bits_data),
    .auto_in_d_ready(tl2axi4_auto_in_d_ready),
    .auto_in_d_valid(tl2axi4_auto_in_d_valid),
    .auto_in_d_bits_opcode(tl2axi4_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(tl2axi4_auto_in_d_bits_size),
    .auto_in_d_bits_source(tl2axi4_auto_in_d_bits_source),
    .auto_in_d_bits_denied(tl2axi4_auto_in_d_bits_denied),
    .auto_in_d_bits_data(tl2axi4_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(tl2axi4_auto_in_d_bits_corrupt),
    .auto_out_aw_ready(tl2axi4_auto_out_aw_ready),
    .auto_out_aw_valid(tl2axi4_auto_out_aw_valid),
    .auto_out_aw_bits_id(tl2axi4_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(tl2axi4_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(tl2axi4_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(tl2axi4_auto_out_aw_bits_size),
    .auto_out_aw_bits_burst(tl2axi4_auto_out_aw_bits_burst),
    .auto_out_aw_bits_lock(tl2axi4_auto_out_aw_bits_lock),
    .auto_out_aw_bits_cache(tl2axi4_auto_out_aw_bits_cache),
    .auto_out_aw_bits_prot(tl2axi4_auto_out_aw_bits_prot),
    .auto_out_aw_bits_qos(tl2axi4_auto_out_aw_bits_qos),
    .auto_out_aw_bits_echo_tl_state_size(tl2axi4_auto_out_aw_bits_echo_tl_state_size),
    .auto_out_aw_bits_echo_tl_state_source(tl2axi4_auto_out_aw_bits_echo_tl_state_source),
    .auto_out_w_ready(tl2axi4_auto_out_w_ready),
    .auto_out_w_valid(tl2axi4_auto_out_w_valid),
    .auto_out_w_bits_data(tl2axi4_auto_out_w_bits_data),
    .auto_out_w_bits_strb(tl2axi4_auto_out_w_bits_strb),
    .auto_out_w_bits_last(tl2axi4_auto_out_w_bits_last),
    .auto_out_b_ready(tl2axi4_auto_out_b_ready),
    .auto_out_b_valid(tl2axi4_auto_out_b_valid),
    .auto_out_b_bits_id(tl2axi4_auto_out_b_bits_id),
    .auto_out_b_bits_resp(tl2axi4_auto_out_b_bits_resp),
    .auto_out_b_bits_echo_tl_state_size(tl2axi4_auto_out_b_bits_echo_tl_state_size),
    .auto_out_b_bits_echo_tl_state_source(tl2axi4_auto_out_b_bits_echo_tl_state_source),
    .auto_out_ar_ready(tl2axi4_auto_out_ar_ready),
    .auto_out_ar_valid(tl2axi4_auto_out_ar_valid),
    .auto_out_ar_bits_id(tl2axi4_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(tl2axi4_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(tl2axi4_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(tl2axi4_auto_out_ar_bits_size),
    .auto_out_ar_bits_burst(tl2axi4_auto_out_ar_bits_burst),
    .auto_out_ar_bits_lock(tl2axi4_auto_out_ar_bits_lock),
    .auto_out_ar_bits_cache(tl2axi4_auto_out_ar_bits_cache),
    .auto_out_ar_bits_prot(tl2axi4_auto_out_ar_bits_prot),
    .auto_out_ar_bits_qos(tl2axi4_auto_out_ar_bits_qos),
    .auto_out_ar_bits_echo_tl_state_size(tl2axi4_auto_out_ar_bits_echo_tl_state_size),
    .auto_out_ar_bits_echo_tl_state_source(tl2axi4_auto_out_ar_bits_echo_tl_state_source),
    .auto_out_r_ready(tl2axi4_auto_out_r_ready),
    .auto_out_r_valid(tl2axi4_auto_out_r_valid),
    .auto_out_r_bits_id(tl2axi4_auto_out_r_bits_id),
    .auto_out_r_bits_data(tl2axi4_auto_out_r_bits_data),
    .auto_out_r_bits_resp(tl2axi4_auto_out_r_bits_resp),
    .auto_out_r_bits_echo_tl_state_size(tl2axi4_auto_out_r_bits_echo_tl_state_size),
    .auto_out_r_bits_echo_tl_state_source(tl2axi4_auto_out_r_bits_echo_tl_state_source),
    .auto_out_r_bits_last(tl2axi4_auto_out_r_bits_last)
  );
  assign widget_auto_in_a_ready = widget_auto_out_a_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign widget_auto_in_d_valid = widget_auto_out_d_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign widget_auto_in_d_bits_opcode = widget_auto_out_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign widget_auto_in_d_bits_size = widget_auto_out_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign widget_auto_in_d_bits_source = widget_auto_out_d_bits_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign widget_auto_in_d_bits_denied = widget_auto_out_d_bits_denied; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign widget_auto_in_d_bits_data = widget_auto_out_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign widget_auto_in_d_bits_corrupt = widget_auto_out_d_bits_corrupt; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign widget_auto_out_a_valid = widget_auto_in_a_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_opcode = widget_auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_size = widget_auto_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_source = widget_auto_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_address = widget_auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_user_amba_prot_bufferable = widget_auto_in_a_bits_user_amba_prot_bufferable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_user_amba_prot_modifiable = widget_auto_in_a_bits_user_amba_prot_modifiable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_user_amba_prot_readalloc = widget_auto_in_a_bits_user_amba_prot_readalloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_user_amba_prot_writealloc = widget_auto_in_a_bits_user_amba_prot_writealloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_user_amba_prot_privileged = widget_auto_in_a_bits_user_amba_prot_privileged; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_user_amba_prot_secure = widget_auto_in_a_bits_user_amba_prot_secure; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_user_amba_prot_fetch = widget_auto_in_a_bits_user_amba_prot_fetch; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_mask = widget_auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_data = widget_auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_d_ready = widget_auto_in_d_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_axi4yank_out_aw_valid = axi4yank_auto_out_aw_valid; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_aw_bits_id = axi4yank_auto_out_aw_bits_id; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_aw_bits_addr = axi4yank_auto_out_aw_bits_addr; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_aw_bits_len = axi4yank_auto_out_aw_bits_len; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_aw_bits_size = axi4yank_auto_out_aw_bits_size; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_aw_bits_burst = axi4yank_auto_out_aw_bits_burst; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_aw_bits_lock = axi4yank_auto_out_aw_bits_lock; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_aw_bits_cache = axi4yank_auto_out_aw_bits_cache; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_aw_bits_prot = axi4yank_auto_out_aw_bits_prot; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_aw_bits_qos = axi4yank_auto_out_aw_bits_qos; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_w_valid = axi4yank_auto_out_w_valid; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_w_bits_data = axi4yank_auto_out_w_bits_data; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_w_bits_strb = axi4yank_auto_out_w_bits_strb; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_w_bits_last = axi4yank_auto_out_w_bits_last; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_b_ready = axi4yank_auto_out_b_ready; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_ar_valid = axi4yank_auto_out_ar_valid; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_ar_bits_id = axi4yank_auto_out_ar_bits_id; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_ar_bits_addr = axi4yank_auto_out_ar_bits_addr; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_ar_bits_len = axi4yank_auto_out_ar_bits_len; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_ar_bits_size = axi4yank_auto_out_ar_bits_size; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_ar_bits_burst = axi4yank_auto_out_ar_bits_burst; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_ar_bits_lock = axi4yank_auto_out_ar_bits_lock; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_ar_bits_cache = axi4yank_auto_out_ar_bits_cache; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_ar_bits_prot = axi4yank_auto_out_ar_bits_prot; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_ar_bits_qos = axi4yank_auto_out_ar_bits_qos; // @[LazyModule.scala 314:12]
  assign auto_axi4yank_out_r_ready = axi4yank_auto_out_r_ready; // @[LazyModule.scala 314:12]
  assign auto_tl_in_a_ready = widget_auto_in_a_ready; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign auto_tl_in_d_valid = widget_auto_in_d_valid; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign auto_tl_in_d_bits_opcode = widget_auto_in_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign auto_tl_in_d_bits_size = widget_auto_in_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign auto_tl_in_d_bits_source = widget_auto_in_d_bits_source; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign auto_tl_in_d_bits_denied = widget_auto_in_d_bits_denied; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign auto_tl_in_d_bits_data = widget_auto_in_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign auto_tl_in_d_bits_corrupt = widget_auto_in_d_bits_corrupt; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign axi4yank_clock = clock;
  assign axi4yank_reset = reset;
  assign axi4yank_auto_in_aw_valid = axi4index_auto_out_aw_valid; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_aw_bits_id = axi4index_auto_out_aw_bits_id; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_aw_bits_addr = axi4index_auto_out_aw_bits_addr; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_aw_bits_len = axi4index_auto_out_aw_bits_len; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_aw_bits_size = axi4index_auto_out_aw_bits_size; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_aw_bits_burst = axi4index_auto_out_aw_bits_burst; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_aw_bits_lock = axi4index_auto_out_aw_bits_lock; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_aw_bits_cache = axi4index_auto_out_aw_bits_cache; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_aw_bits_prot = axi4index_auto_out_aw_bits_prot; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_aw_bits_qos = axi4index_auto_out_aw_bits_qos; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_aw_bits_echo_tl_state_size = axi4index_auto_out_aw_bits_echo_tl_state_size; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_aw_bits_echo_tl_state_source = axi4index_auto_out_aw_bits_echo_tl_state_source; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_aw_bits_echo_extra_id = axi4index_auto_out_aw_bits_echo_extra_id; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_w_valid = axi4index_auto_out_w_valid; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_w_bits_data = axi4index_auto_out_w_bits_data; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_w_bits_strb = axi4index_auto_out_w_bits_strb; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_w_bits_last = axi4index_auto_out_w_bits_last; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_b_ready = axi4index_auto_out_b_ready; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_valid = axi4index_auto_out_ar_valid; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_bits_id = axi4index_auto_out_ar_bits_id; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_bits_addr = axi4index_auto_out_ar_bits_addr; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_bits_len = axi4index_auto_out_ar_bits_len; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_bits_size = axi4index_auto_out_ar_bits_size; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_bits_burst = axi4index_auto_out_ar_bits_burst; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_bits_lock = axi4index_auto_out_ar_bits_lock; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_bits_cache = axi4index_auto_out_ar_bits_cache; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_bits_prot = axi4index_auto_out_ar_bits_prot; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_bits_qos = axi4index_auto_out_ar_bits_qos; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_bits_echo_tl_state_size = axi4index_auto_out_ar_bits_echo_tl_state_size; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_bits_echo_tl_state_source = axi4index_auto_out_ar_bits_echo_tl_state_source; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_bits_echo_extra_id = axi4index_auto_out_ar_bits_echo_extra_id; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_r_ready = axi4index_auto_out_r_ready; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_out_aw_ready = auto_axi4yank_out_aw_ready; // @[LazyModule.scala 314:12]
  assign axi4yank_auto_out_w_ready = auto_axi4yank_out_w_ready; // @[LazyModule.scala 314:12]
  assign axi4yank_auto_out_b_valid = auto_axi4yank_out_b_valid; // @[LazyModule.scala 314:12]
  assign axi4yank_auto_out_b_bits_id = auto_axi4yank_out_b_bits_id; // @[LazyModule.scala 314:12]
  assign axi4yank_auto_out_b_bits_resp = auto_axi4yank_out_b_bits_resp; // @[LazyModule.scala 314:12]
  assign axi4yank_auto_out_ar_ready = auto_axi4yank_out_ar_ready; // @[LazyModule.scala 314:12]
  assign axi4yank_auto_out_r_valid = auto_axi4yank_out_r_valid; // @[LazyModule.scala 314:12]
  assign axi4yank_auto_out_r_bits_id = auto_axi4yank_out_r_bits_id; // @[LazyModule.scala 314:12]
  assign axi4yank_auto_out_r_bits_data = auto_axi4yank_out_r_bits_data; // @[LazyModule.scala 314:12]
  assign axi4yank_auto_out_r_bits_resp = auto_axi4yank_out_r_bits_resp; // @[LazyModule.scala 314:12]
  assign axi4yank_auto_out_r_bits_last = auto_axi4yank_out_r_bits_last; // @[LazyModule.scala 314:12]
  assign axi4index_auto_in_aw_valid = tl2axi4_auto_out_aw_valid; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_aw_bits_id = tl2axi4_auto_out_aw_bits_id; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_aw_bits_addr = tl2axi4_auto_out_aw_bits_addr; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_aw_bits_len = tl2axi4_auto_out_aw_bits_len; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_aw_bits_size = tl2axi4_auto_out_aw_bits_size; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_aw_bits_burst = tl2axi4_auto_out_aw_bits_burst; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_aw_bits_lock = tl2axi4_auto_out_aw_bits_lock; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_aw_bits_cache = tl2axi4_auto_out_aw_bits_cache; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_aw_bits_prot = tl2axi4_auto_out_aw_bits_prot; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_aw_bits_qos = tl2axi4_auto_out_aw_bits_qos; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_aw_bits_echo_tl_state_size = tl2axi4_auto_out_aw_bits_echo_tl_state_size; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_aw_bits_echo_tl_state_source = tl2axi4_auto_out_aw_bits_echo_tl_state_source; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_w_valid = tl2axi4_auto_out_w_valid; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_w_bits_data = tl2axi4_auto_out_w_bits_data; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_w_bits_strb = tl2axi4_auto_out_w_bits_strb; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_w_bits_last = tl2axi4_auto_out_w_bits_last; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_b_ready = tl2axi4_auto_out_b_ready; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_ar_valid = tl2axi4_auto_out_ar_valid; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_ar_bits_id = tl2axi4_auto_out_ar_bits_id; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_ar_bits_addr = tl2axi4_auto_out_ar_bits_addr; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_ar_bits_len = tl2axi4_auto_out_ar_bits_len; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_ar_bits_size = tl2axi4_auto_out_ar_bits_size; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_ar_bits_burst = tl2axi4_auto_out_ar_bits_burst; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_ar_bits_lock = tl2axi4_auto_out_ar_bits_lock; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_ar_bits_cache = tl2axi4_auto_out_ar_bits_cache; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_ar_bits_prot = tl2axi4_auto_out_ar_bits_prot; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_ar_bits_qos = tl2axi4_auto_out_ar_bits_qos; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_ar_bits_echo_tl_state_size = tl2axi4_auto_out_ar_bits_echo_tl_state_size; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_ar_bits_echo_tl_state_source = tl2axi4_auto_out_ar_bits_echo_tl_state_source; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_r_ready = tl2axi4_auto_out_r_ready; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_aw_ready = axi4yank_auto_in_aw_ready; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_w_ready = axi4yank_auto_in_w_ready; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_b_valid = axi4yank_auto_in_b_valid; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_b_bits_id = axi4yank_auto_in_b_bits_id; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_b_bits_resp = axi4yank_auto_in_b_bits_resp; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_b_bits_echo_tl_state_size = axi4yank_auto_in_b_bits_echo_tl_state_size; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_b_bits_echo_tl_state_source = axi4yank_auto_in_b_bits_echo_tl_state_source; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_b_bits_echo_extra_id = axi4yank_auto_in_b_bits_echo_extra_id; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_ar_ready = axi4yank_auto_in_ar_ready; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_r_valid = axi4yank_auto_in_r_valid; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_r_bits_id = axi4yank_auto_in_r_bits_id; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_r_bits_data = axi4yank_auto_in_r_bits_data; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_r_bits_resp = axi4yank_auto_in_r_bits_resp; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_r_bits_echo_tl_state_size = axi4yank_auto_in_r_bits_echo_tl_state_size; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_r_bits_echo_tl_state_source = axi4yank_auto_in_r_bits_echo_tl_state_source; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_r_bits_echo_extra_id = axi4yank_auto_in_r_bits_echo_extra_id; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_r_bits_last = axi4yank_auto_in_r_bits_last; // @[LazyModule.scala 299:16]
  assign tl2axi4_clock = clock;
  assign tl2axi4_reset = reset;
  assign tl2axi4_auto_in_a_valid = widget_auto_out_a_valid; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_in_a_bits_opcode = widget_auto_out_a_bits_opcode; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_in_a_bits_size = widget_auto_out_a_bits_size; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_in_a_bits_source = widget_auto_out_a_bits_source; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_in_a_bits_address = widget_auto_out_a_bits_address; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_in_a_bits_user_amba_prot_bufferable = widget_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_in_a_bits_user_amba_prot_modifiable = widget_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_in_a_bits_user_amba_prot_readalloc = widget_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_in_a_bits_user_amba_prot_writealloc = widget_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_in_a_bits_user_amba_prot_privileged = widget_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_in_a_bits_user_amba_prot_secure = widget_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_in_a_bits_user_amba_prot_fetch = widget_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_in_a_bits_mask = widget_auto_out_a_bits_mask; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_in_a_bits_data = widget_auto_out_a_bits_data; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_in_d_ready = widget_auto_out_d_ready; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_out_aw_ready = axi4index_auto_in_aw_ready; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_out_w_ready = axi4index_auto_in_w_ready; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_out_b_valid = axi4index_auto_in_b_valid; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_out_b_bits_id = axi4index_auto_in_b_bits_id; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_out_b_bits_resp = axi4index_auto_in_b_bits_resp; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_out_b_bits_echo_tl_state_size = axi4index_auto_in_b_bits_echo_tl_state_size; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_out_b_bits_echo_tl_state_source = axi4index_auto_in_b_bits_echo_tl_state_source; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_out_ar_ready = axi4index_auto_in_ar_ready; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_out_r_valid = axi4index_auto_in_r_valid; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_out_r_bits_id = axi4index_auto_in_r_bits_id; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_out_r_bits_data = axi4index_auto_in_r_bits_data; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_out_r_bits_resp = axi4index_auto_in_r_bits_resp; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_out_r_bits_echo_tl_state_size = axi4index_auto_in_r_bits_echo_tl_state_size; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_out_r_bits_echo_tl_state_source = axi4index_auto_in_r_bits_echo_tl_state_source; // @[LazyModule.scala 299:16]
  assign tl2axi4_auto_out_r_bits_last = axi4index_auto_in_r_bits_last; // @[LazyModule.scala 299:16]
  assign widget_auto_in_a_valid = auto_tl_in_a_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_in_a_bits_opcode = auto_tl_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_in_a_bits_size = auto_tl_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_in_a_bits_source = auto_tl_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_in_a_bits_address = auto_tl_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_in_a_bits_user_amba_prot_bufferable = auto_tl_in_a_bits_user_amba_prot_bufferable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_in_a_bits_user_amba_prot_modifiable = auto_tl_in_a_bits_user_amba_prot_modifiable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_in_a_bits_user_amba_prot_readalloc = auto_tl_in_a_bits_user_amba_prot_readalloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_in_a_bits_user_amba_prot_writealloc = auto_tl_in_a_bits_user_amba_prot_writealloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_in_a_bits_user_amba_prot_privileged = auto_tl_in_a_bits_user_amba_prot_privileged; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_in_a_bits_user_amba_prot_secure = auto_tl_in_a_bits_user_amba_prot_secure; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_in_a_bits_user_amba_prot_fetch = auto_tl_in_a_bits_user_amba_prot_fetch; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_in_a_bits_mask = auto_tl_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_in_a_bits_data = auto_tl_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_in_d_ready = auto_tl_in_d_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_ready = tl2axi4_auto_in_a_ready; // @[LazyModule.scala 299:16]
  assign widget_auto_out_d_valid = tl2axi4_auto_in_d_valid; // @[LazyModule.scala 299:16]
  assign widget_auto_out_d_bits_opcode = tl2axi4_auto_in_d_bits_opcode; // @[LazyModule.scala 299:16]
  assign widget_auto_out_d_bits_size = tl2axi4_auto_in_d_bits_size; // @[LazyModule.scala 299:16]
  assign widget_auto_out_d_bits_source = tl2axi4_auto_in_d_bits_source; // @[LazyModule.scala 299:16]
  assign widget_auto_out_d_bits_denied = tl2axi4_auto_in_d_bits_denied; // @[LazyModule.scala 299:16]
  assign widget_auto_out_d_bits_data = tl2axi4_auto_in_d_bits_data; // @[LazyModule.scala 299:16]
  assign widget_auto_out_d_bits_corrupt = tl2axi4_auto_in_d_bits_corrupt; // @[LazyModule.scala 299:16]
endmodule
