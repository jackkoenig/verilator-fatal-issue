module RocketTile(
  input         clock,
  input         reset,
  input         auto_int_local_in_3_0,
  input         auto_int_local_in_2_0,
  input         auto_int_local_in_1_0,
  input         auto_int_local_in_1_1,
  input         auto_int_local_in_0_0,
  input         auto_hartid_in,
  input         auto_tl_other_masters_out_a_ready,
  output        auto_tl_other_masters_out_a_valid,
  output [2:0]  auto_tl_other_masters_out_a_bits_opcode,
  output [2:0]  auto_tl_other_masters_out_a_bits_param,
  output [3:0]  auto_tl_other_masters_out_a_bits_size,
  output [1:0]  auto_tl_other_masters_out_a_bits_source,
  output [31:0] auto_tl_other_masters_out_a_bits_address,
  output [7:0]  auto_tl_other_masters_out_a_bits_mask,
  output [63:0] auto_tl_other_masters_out_a_bits_data,
  output        auto_tl_other_masters_out_a_bits_corrupt,
  output        auto_tl_other_masters_out_b_ready,
  input         auto_tl_other_masters_out_b_valid,
  input  [1:0]  auto_tl_other_masters_out_b_bits_param,
  input  [3:0]  auto_tl_other_masters_out_b_bits_size,
  input  [1:0]  auto_tl_other_masters_out_b_bits_source,
  input  [31:0] auto_tl_other_masters_out_b_bits_address,
  input         auto_tl_other_masters_out_c_ready,
  output        auto_tl_other_masters_out_c_valid,
  output [2:0]  auto_tl_other_masters_out_c_bits_opcode,
  output [2:0]  auto_tl_other_masters_out_c_bits_param,
  output [3:0]  auto_tl_other_masters_out_c_bits_size,
  output [1:0]  auto_tl_other_masters_out_c_bits_source,
  output [31:0] auto_tl_other_masters_out_c_bits_address,
  output [63:0] auto_tl_other_masters_out_c_bits_data,
  output        auto_tl_other_masters_out_d_ready,
  input         auto_tl_other_masters_out_d_valid,
  input  [2:0]  auto_tl_other_masters_out_d_bits_opcode,
  input  [1:0]  auto_tl_other_masters_out_d_bits_param,
  input  [3:0]  auto_tl_other_masters_out_d_bits_size,
  input  [1:0]  auto_tl_other_masters_out_d_bits_source,
  input  [1:0]  auto_tl_other_masters_out_d_bits_sink,
  input         auto_tl_other_masters_out_d_bits_denied,
  input  [63:0] auto_tl_other_masters_out_d_bits_data,
  input         auto_tl_other_masters_out_d_bits_corrupt,
  input         auto_tl_other_masters_out_e_ready,
  output        auto_tl_other_masters_out_e_valid,
  output [1:0]  auto_tl_other_masters_out_e_bits_sink
);
  wire  tlMasterXbar_clock; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_reset; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_in_1_a_ready; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_in_1_a_valid; // @[BaseTile.scala 191:42]
  wire [31:0] tlMasterXbar_auto_in_1_a_bits_address; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_in_1_d_valid; // @[BaseTile.scala 191:42]
  wire [2:0] tlMasterXbar_auto_in_1_d_bits_opcode; // @[BaseTile.scala 191:42]
  wire [3:0] tlMasterXbar_auto_in_1_d_bits_size; // @[BaseTile.scala 191:42]
  wire [63:0] tlMasterXbar_auto_in_1_d_bits_data; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_in_1_d_bits_corrupt; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_in_0_a_ready; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_in_0_a_valid; // @[BaseTile.scala 191:42]
  wire [2:0] tlMasterXbar_auto_in_0_a_bits_opcode; // @[BaseTile.scala 191:42]
  wire [2:0] tlMasterXbar_auto_in_0_a_bits_param; // @[BaseTile.scala 191:42]
  wire [3:0] tlMasterXbar_auto_in_0_a_bits_size; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_in_0_a_bits_source; // @[BaseTile.scala 191:42]
  wire [31:0] tlMasterXbar_auto_in_0_a_bits_address; // @[BaseTile.scala 191:42]
  wire [7:0] tlMasterXbar_auto_in_0_a_bits_mask; // @[BaseTile.scala 191:42]
  wire [63:0] tlMasterXbar_auto_in_0_a_bits_data; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_in_0_b_ready; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_in_0_b_valid; // @[BaseTile.scala 191:42]
  wire [1:0] tlMasterXbar_auto_in_0_b_bits_param; // @[BaseTile.scala 191:42]
  wire [3:0] tlMasterXbar_auto_in_0_b_bits_size; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_in_0_b_bits_source; // @[BaseTile.scala 191:42]
  wire [31:0] tlMasterXbar_auto_in_0_b_bits_address; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_in_0_c_ready; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_in_0_c_valid; // @[BaseTile.scala 191:42]
  wire [2:0] tlMasterXbar_auto_in_0_c_bits_opcode; // @[BaseTile.scala 191:42]
  wire [2:0] tlMasterXbar_auto_in_0_c_bits_param; // @[BaseTile.scala 191:42]
  wire [3:0] tlMasterXbar_auto_in_0_c_bits_size; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_in_0_c_bits_source; // @[BaseTile.scala 191:42]
  wire [31:0] tlMasterXbar_auto_in_0_c_bits_address; // @[BaseTile.scala 191:42]
  wire [63:0] tlMasterXbar_auto_in_0_c_bits_data; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_in_0_d_ready; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_in_0_d_valid; // @[BaseTile.scala 191:42]
  wire [2:0] tlMasterXbar_auto_in_0_d_bits_opcode; // @[BaseTile.scala 191:42]
  wire [1:0] tlMasterXbar_auto_in_0_d_bits_param; // @[BaseTile.scala 191:42]
  wire [3:0] tlMasterXbar_auto_in_0_d_bits_size; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_in_0_d_bits_source; // @[BaseTile.scala 191:42]
  wire [1:0] tlMasterXbar_auto_in_0_d_bits_sink; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_in_0_d_bits_denied; // @[BaseTile.scala 191:42]
  wire [63:0] tlMasterXbar_auto_in_0_d_bits_data; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_in_0_e_ready; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_in_0_e_valid; // @[BaseTile.scala 191:42]
  wire [1:0] tlMasterXbar_auto_in_0_e_bits_sink; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_out_a_ready; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_out_a_valid; // @[BaseTile.scala 191:42]
  wire [2:0] tlMasterXbar_auto_out_a_bits_opcode; // @[BaseTile.scala 191:42]
  wire [2:0] tlMasterXbar_auto_out_a_bits_param; // @[BaseTile.scala 191:42]
  wire [3:0] tlMasterXbar_auto_out_a_bits_size; // @[BaseTile.scala 191:42]
  wire [1:0] tlMasterXbar_auto_out_a_bits_source; // @[BaseTile.scala 191:42]
  wire [31:0] tlMasterXbar_auto_out_a_bits_address; // @[BaseTile.scala 191:42]
  wire [7:0] tlMasterXbar_auto_out_a_bits_mask; // @[BaseTile.scala 191:42]
  wire [63:0] tlMasterXbar_auto_out_a_bits_data; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_out_a_bits_corrupt; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_out_b_ready; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_out_b_valid; // @[BaseTile.scala 191:42]
  wire [1:0] tlMasterXbar_auto_out_b_bits_param; // @[BaseTile.scala 191:42]
  wire [3:0] tlMasterXbar_auto_out_b_bits_size; // @[BaseTile.scala 191:42]
  wire [1:0] tlMasterXbar_auto_out_b_bits_source; // @[BaseTile.scala 191:42]
  wire [31:0] tlMasterXbar_auto_out_b_bits_address; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_out_c_ready; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_out_c_valid; // @[BaseTile.scala 191:42]
  wire [2:0] tlMasterXbar_auto_out_c_bits_opcode; // @[BaseTile.scala 191:42]
  wire [2:0] tlMasterXbar_auto_out_c_bits_param; // @[BaseTile.scala 191:42]
  wire [3:0] tlMasterXbar_auto_out_c_bits_size; // @[BaseTile.scala 191:42]
  wire [1:0] tlMasterXbar_auto_out_c_bits_source; // @[BaseTile.scala 191:42]
  wire [31:0] tlMasterXbar_auto_out_c_bits_address; // @[BaseTile.scala 191:42]
  wire [63:0] tlMasterXbar_auto_out_c_bits_data; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_out_d_ready; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_out_d_valid; // @[BaseTile.scala 191:42]
  wire [2:0] tlMasterXbar_auto_out_d_bits_opcode; // @[BaseTile.scala 191:42]
  wire [1:0] tlMasterXbar_auto_out_d_bits_param; // @[BaseTile.scala 191:42]
  wire [3:0] tlMasterXbar_auto_out_d_bits_size; // @[BaseTile.scala 191:42]
  wire [1:0] tlMasterXbar_auto_out_d_bits_source; // @[BaseTile.scala 191:42]
  wire [1:0] tlMasterXbar_auto_out_d_bits_sink; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_out_d_bits_denied; // @[BaseTile.scala 191:42]
  wire [63:0] tlMasterXbar_auto_out_d_bits_data; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_out_d_bits_corrupt; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_out_e_ready; // @[BaseTile.scala 191:42]
  wire  tlMasterXbar_auto_out_e_valid; // @[BaseTile.scala 191:42]
  wire [1:0] tlMasterXbar_auto_out_e_bits_sink; // @[BaseTile.scala 191:42]
  wire  intXbar_auto_int_in_3_0; // @[BaseTile.scala 193:37]
  wire  intXbar_auto_int_in_2_0; // @[BaseTile.scala 193:37]
  wire  intXbar_auto_int_in_1_0; // @[BaseTile.scala 193:37]
  wire  intXbar_auto_int_in_1_1; // @[BaseTile.scala 193:37]
  wire  intXbar_auto_int_in_0_0; // @[BaseTile.scala 193:37]
  wire  intXbar_auto_int_out_0; // @[BaseTile.scala 193:37]
  wire  intXbar_auto_int_out_1; // @[BaseTile.scala 193:37]
  wire  intXbar_auto_int_out_2; // @[BaseTile.scala 193:37]
  wire  intXbar_auto_int_out_3; // @[BaseTile.scala 193:37]
  wire  intXbar_auto_int_out_4; // @[BaseTile.scala 193:37]
  wire  broadcast_auto_in;
  wire  broadcast_auto_out;
  wire  dcache_gated_clock; // @[HellaCache.scala 258:43]
  wire  dcache_reset; // @[HellaCache.scala 258:43]
  wire  dcache_auto_out_a_ready; // @[HellaCache.scala 258:43]
  wire  dcache_auto_out_a_valid; // @[HellaCache.scala 258:43]
  wire [2:0] dcache_auto_out_a_bits_opcode; // @[HellaCache.scala 258:43]
  wire [2:0] dcache_auto_out_a_bits_param; // @[HellaCache.scala 258:43]
  wire [3:0] dcache_auto_out_a_bits_size; // @[HellaCache.scala 258:43]
  wire  dcache_auto_out_a_bits_source; // @[HellaCache.scala 258:43]
  wire [31:0] dcache_auto_out_a_bits_address; // @[HellaCache.scala 258:43]
  wire [7:0] dcache_auto_out_a_bits_mask; // @[HellaCache.scala 258:43]
  wire [63:0] dcache_auto_out_a_bits_data; // @[HellaCache.scala 258:43]
  wire  dcache_auto_out_b_ready; // @[HellaCache.scala 258:43]
  wire  dcache_auto_out_b_valid; // @[HellaCache.scala 258:43]
  wire [1:0] dcache_auto_out_b_bits_param; // @[HellaCache.scala 258:43]
  wire [3:0] dcache_auto_out_b_bits_size; // @[HellaCache.scala 258:43]
  wire  dcache_auto_out_b_bits_source; // @[HellaCache.scala 258:43]
  wire [31:0] dcache_auto_out_b_bits_address; // @[HellaCache.scala 258:43]
  wire  dcache_auto_out_c_ready; // @[HellaCache.scala 258:43]
  wire  dcache_auto_out_c_valid; // @[HellaCache.scala 258:43]
  wire [2:0] dcache_auto_out_c_bits_opcode; // @[HellaCache.scala 258:43]
  wire [2:0] dcache_auto_out_c_bits_param; // @[HellaCache.scala 258:43]
  wire [3:0] dcache_auto_out_c_bits_size; // @[HellaCache.scala 258:43]
  wire  dcache_auto_out_c_bits_source; // @[HellaCache.scala 258:43]
  wire [31:0] dcache_auto_out_c_bits_address; // @[HellaCache.scala 258:43]
  wire [63:0] dcache_auto_out_c_bits_data; // @[HellaCache.scala 258:43]
  wire  dcache_auto_out_d_ready; // @[HellaCache.scala 258:43]
  wire  dcache_auto_out_d_valid; // @[HellaCache.scala 258:43]
  wire [2:0] dcache_auto_out_d_bits_opcode; // @[HellaCache.scala 258:43]
  wire [1:0] dcache_auto_out_d_bits_param; // @[HellaCache.scala 258:43]
  wire [3:0] dcache_auto_out_d_bits_size; // @[HellaCache.scala 258:43]
  wire  dcache_auto_out_d_bits_source; // @[HellaCache.scala 258:43]
  wire [1:0] dcache_auto_out_d_bits_sink; // @[HellaCache.scala 258:43]
  wire  dcache_auto_out_d_bits_denied; // @[HellaCache.scala 258:43]
  wire [63:0] dcache_auto_out_d_bits_data; // @[HellaCache.scala 258:43]
  wire  dcache_auto_out_e_ready; // @[HellaCache.scala 258:43]
  wire  dcache_auto_out_e_valid; // @[HellaCache.scala 258:43]
  wire [1:0] dcache_auto_out_e_bits_sink; // @[HellaCache.scala 258:43]
  wire  dcache_io_cpu_req_ready; // @[HellaCache.scala 258:43]
  wire  dcache_io_cpu_req_valid; // @[HellaCache.scala 258:43]
  wire [39:0] dcache_io_cpu_req_bits_addr; // @[HellaCache.scala 258:43]
  wire [6:0] dcache_io_cpu_req_bits_tag; // @[HellaCache.scala 258:43]
  wire [4:0] dcache_io_cpu_req_bits_cmd; // @[HellaCache.scala 258:43]
  wire [1:0] dcache_io_cpu_req_bits_size; // @[HellaCache.scala 258:43]
  wire  dcache_io_cpu_req_bits_signed; // @[HellaCache.scala 258:43]
  wire [1:0] dcache_io_cpu_req_bits_dprv; // @[HellaCache.scala 258:43]
  wire  dcache_io_cpu_req_bits_phys; // @[HellaCache.scala 258:43]
  wire  dcache_io_cpu_s1_kill; // @[HellaCache.scala 258:43]
  wire [63:0] dcache_io_cpu_s1_data_data; // @[HellaCache.scala 258:43]
  wire [7:0] dcache_io_cpu_s1_data_mask; // @[HellaCache.scala 258:43]
  wire  dcache_io_cpu_s2_nack; // @[HellaCache.scala 258:43]
  wire  dcache_io_cpu_resp_valid; // @[HellaCache.scala 258:43]
  wire [39:0] dcache_io_cpu_resp_bits_addr; // @[HellaCache.scala 258:43]
  wire [6:0] dcache_io_cpu_resp_bits_tag; // @[HellaCache.scala 258:43]
  wire [4:0] dcache_io_cpu_resp_bits_cmd; // @[HellaCache.scala 258:43]
  wire [1:0] dcache_io_cpu_resp_bits_size; // @[HellaCache.scala 258:43]
  wire  dcache_io_cpu_resp_bits_signed; // @[HellaCache.scala 258:43]
  wire [1:0] dcache_io_cpu_resp_bits_dprv; // @[HellaCache.scala 258:43]
  wire [63:0] dcache_io_cpu_resp_bits_data; // @[HellaCache.scala 258:43]
  wire [7:0] dcache_io_cpu_resp_bits_mask; // @[HellaCache.scala 258:43]
  wire  dcache_io_cpu_resp_bits_replay; // @[HellaCache.scala 258:43]
  wire  dcache_io_cpu_resp_bits_has_data; // @[HellaCache.scala 258:43]
  wire [63:0] dcache_io_cpu_resp_bits_data_word_bypass; // @[HellaCache.scala 258:43]
  wire [63:0] dcache_io_cpu_resp_bits_data_raw; // @[HellaCache.scala 258:43]
  wire [63:0] dcache_io_cpu_resp_bits_store_data; // @[HellaCache.scala 258:43]
  wire  dcache_io_cpu_replay_next; // @[HellaCache.scala 258:43]
  wire  dcache_io_cpu_s2_xcpt_ma_ld; // @[HellaCache.scala 258:43]
  wire  dcache_io_cpu_s2_xcpt_ma_st; // @[HellaCache.scala 258:43]
  wire  dcache_io_cpu_s2_xcpt_pf_ld; // @[HellaCache.scala 258:43]
  wire  dcache_io_cpu_s2_xcpt_pf_st; // @[HellaCache.scala 258:43]
  wire  dcache_io_cpu_s2_xcpt_ae_ld; // @[HellaCache.scala 258:43]
  wire  dcache_io_cpu_s2_xcpt_ae_st; // @[HellaCache.scala 258:43]
  wire  dcache_io_cpu_ordered; // @[HellaCache.scala 258:43]
  wire  dcache_io_cpu_perf_release; // @[HellaCache.scala 258:43]
  wire  dcache_io_cpu_perf_grant; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_req_ready; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_req_valid; // @[HellaCache.scala 258:43]
  wire [26:0] dcache_io_ptw_req_bits_bits_addr; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_resp_valid; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_resp_bits_ae; // @[HellaCache.scala 258:43]
  wire [53:0] dcache_io_ptw_resp_bits_pte_ppn; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_resp_bits_pte_d; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_resp_bits_pte_a; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_resp_bits_pte_g; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_resp_bits_pte_u; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_resp_bits_pte_x; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_resp_bits_pte_w; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_resp_bits_pte_r; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_resp_bits_pte_v; // @[HellaCache.scala 258:43]
  wire [1:0] dcache_io_ptw_resp_bits_level; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_resp_bits_homogeneous; // @[HellaCache.scala 258:43]
  wire [3:0] dcache_io_ptw_ptbr_mode; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_status_debug; // @[HellaCache.scala 258:43]
  wire [1:0] dcache_io_ptw_status_dprv; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_status_mxr; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_status_sum; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_0_cfg_l; // @[HellaCache.scala 258:43]
  wire [1:0] dcache_io_ptw_pmp_0_cfg_a; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_0_cfg_x; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_0_cfg_w; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_0_cfg_r; // @[HellaCache.scala 258:43]
  wire [29:0] dcache_io_ptw_pmp_0_addr; // @[HellaCache.scala 258:43]
  wire [31:0] dcache_io_ptw_pmp_0_mask; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_1_cfg_l; // @[HellaCache.scala 258:43]
  wire [1:0] dcache_io_ptw_pmp_1_cfg_a; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_1_cfg_x; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_1_cfg_w; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_1_cfg_r; // @[HellaCache.scala 258:43]
  wire [29:0] dcache_io_ptw_pmp_1_addr; // @[HellaCache.scala 258:43]
  wire [31:0] dcache_io_ptw_pmp_1_mask; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_2_cfg_l; // @[HellaCache.scala 258:43]
  wire [1:0] dcache_io_ptw_pmp_2_cfg_a; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_2_cfg_x; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_2_cfg_w; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_2_cfg_r; // @[HellaCache.scala 258:43]
  wire [29:0] dcache_io_ptw_pmp_2_addr; // @[HellaCache.scala 258:43]
  wire [31:0] dcache_io_ptw_pmp_2_mask; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_3_cfg_l; // @[HellaCache.scala 258:43]
  wire [1:0] dcache_io_ptw_pmp_3_cfg_a; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_3_cfg_x; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_3_cfg_w; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_3_cfg_r; // @[HellaCache.scala 258:43]
  wire [29:0] dcache_io_ptw_pmp_3_addr; // @[HellaCache.scala 258:43]
  wire [31:0] dcache_io_ptw_pmp_3_mask; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_4_cfg_l; // @[HellaCache.scala 258:43]
  wire [1:0] dcache_io_ptw_pmp_4_cfg_a; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_4_cfg_x; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_4_cfg_w; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_4_cfg_r; // @[HellaCache.scala 258:43]
  wire [29:0] dcache_io_ptw_pmp_4_addr; // @[HellaCache.scala 258:43]
  wire [31:0] dcache_io_ptw_pmp_4_mask; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_5_cfg_l; // @[HellaCache.scala 258:43]
  wire [1:0] dcache_io_ptw_pmp_5_cfg_a; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_5_cfg_x; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_5_cfg_w; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_5_cfg_r; // @[HellaCache.scala 258:43]
  wire [29:0] dcache_io_ptw_pmp_5_addr; // @[HellaCache.scala 258:43]
  wire [31:0] dcache_io_ptw_pmp_5_mask; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_6_cfg_l; // @[HellaCache.scala 258:43]
  wire [1:0] dcache_io_ptw_pmp_6_cfg_a; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_6_cfg_x; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_6_cfg_w; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_6_cfg_r; // @[HellaCache.scala 258:43]
  wire [29:0] dcache_io_ptw_pmp_6_addr; // @[HellaCache.scala 258:43]
  wire [31:0] dcache_io_ptw_pmp_6_mask; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_7_cfg_l; // @[HellaCache.scala 258:43]
  wire [1:0] dcache_io_ptw_pmp_7_cfg_a; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_7_cfg_x; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_7_cfg_w; // @[HellaCache.scala 258:43]
  wire  dcache_io_ptw_pmp_7_cfg_r; // @[HellaCache.scala 258:43]
  wire [29:0] dcache_io_ptw_pmp_7_addr; // @[HellaCache.scala 258:43]
  wire [31:0] dcache_io_ptw_pmp_7_mask; // @[HellaCache.scala 258:43]
  wire  frontend_gated_clock; // @[Frontend.scala 352:28]
  wire  frontend_reset; // @[Frontend.scala 352:28]
  wire  frontend_auto_icache_master_out_a_ready; // @[Frontend.scala 352:28]
  wire  frontend_auto_icache_master_out_a_valid; // @[Frontend.scala 352:28]
  wire [31:0] frontend_auto_icache_master_out_a_bits_address; // @[Frontend.scala 352:28]
  wire  frontend_auto_icache_master_out_d_valid; // @[Frontend.scala 352:28]
  wire [2:0] frontend_auto_icache_master_out_d_bits_opcode; // @[Frontend.scala 352:28]
  wire [3:0] frontend_auto_icache_master_out_d_bits_size; // @[Frontend.scala 352:28]
  wire [63:0] frontend_auto_icache_master_out_d_bits_data; // @[Frontend.scala 352:28]
  wire  frontend_auto_icache_master_out_d_bits_corrupt; // @[Frontend.scala 352:28]
  wire  frontend_io_cpu_might_request; // @[Frontend.scala 352:28]
  wire  frontend_io_cpu_req_valid; // @[Frontend.scala 352:28]
  wire [39:0] frontend_io_cpu_req_bits_pc; // @[Frontend.scala 352:28]
  wire  frontend_io_cpu_req_bits_speculative; // @[Frontend.scala 352:28]
  wire  frontend_io_cpu_sfence_valid; // @[Frontend.scala 352:28]
  wire  frontend_io_cpu_sfence_bits_rs1; // @[Frontend.scala 352:28]
  wire  frontend_io_cpu_sfence_bits_rs2; // @[Frontend.scala 352:28]
  wire [38:0] frontend_io_cpu_sfence_bits_addr; // @[Frontend.scala 352:28]
  wire  frontend_io_cpu_resp_ready; // @[Frontend.scala 352:28]
  wire  frontend_io_cpu_resp_valid; // @[Frontend.scala 352:28]
  wire  frontend_io_cpu_resp_bits_btb_taken; // @[Frontend.scala 352:28]
  wire  frontend_io_cpu_resp_bits_btb_bridx; // @[Frontend.scala 352:28]
  wire [4:0] frontend_io_cpu_resp_bits_btb_entry; // @[Frontend.scala 352:28]
  wire [7:0] frontend_io_cpu_resp_bits_btb_bht_history; // @[Frontend.scala 352:28]
  wire [39:0] frontend_io_cpu_resp_bits_pc; // @[Frontend.scala 352:28]
  wire [31:0] frontend_io_cpu_resp_bits_data; // @[Frontend.scala 352:28]
  wire  frontend_io_cpu_resp_bits_xcpt_pf_inst; // @[Frontend.scala 352:28]
  wire  frontend_io_cpu_resp_bits_xcpt_ae_inst; // @[Frontend.scala 352:28]
  wire  frontend_io_cpu_resp_bits_replay; // @[Frontend.scala 352:28]
  wire  frontend_io_cpu_btb_update_valid; // @[Frontend.scala 352:28]
  wire [4:0] frontend_io_cpu_btb_update_bits_prediction_entry; // @[Frontend.scala 352:28]
  wire [38:0] frontend_io_cpu_btb_update_bits_pc; // @[Frontend.scala 352:28]
  wire  frontend_io_cpu_btb_update_bits_isValid; // @[Frontend.scala 352:28]
  wire [38:0] frontend_io_cpu_btb_update_bits_br_pc; // @[Frontend.scala 352:28]
  wire [1:0] frontend_io_cpu_btb_update_bits_cfiType; // @[Frontend.scala 352:28]
  wire  frontend_io_cpu_bht_update_valid; // @[Frontend.scala 352:28]
  wire [7:0] frontend_io_cpu_bht_update_bits_prediction_history; // @[Frontend.scala 352:28]
  wire [38:0] frontend_io_cpu_bht_update_bits_pc; // @[Frontend.scala 352:28]
  wire  frontend_io_cpu_bht_update_bits_branch; // @[Frontend.scala 352:28]
  wire  frontend_io_cpu_bht_update_bits_taken; // @[Frontend.scala 352:28]
  wire  frontend_io_cpu_bht_update_bits_mispredict; // @[Frontend.scala 352:28]
  wire  frontend_io_cpu_flush_icache; // @[Frontend.scala 352:28]
  wire [39:0] frontend_io_cpu_npc; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_req_ready; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_req_valid; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_req_bits_valid; // @[Frontend.scala 352:28]
  wire [26:0] frontend_io_ptw_req_bits_bits_addr; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_resp_valid; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_resp_bits_ae; // @[Frontend.scala 352:28]
  wire [53:0] frontend_io_ptw_resp_bits_pte_ppn; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_resp_bits_pte_d; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_resp_bits_pte_a; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_resp_bits_pte_g; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_resp_bits_pte_u; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_resp_bits_pte_x; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_resp_bits_pte_w; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_resp_bits_pte_r; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_resp_bits_pte_v; // @[Frontend.scala 352:28]
  wire [1:0] frontend_io_ptw_resp_bits_level; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_resp_bits_homogeneous; // @[Frontend.scala 352:28]
  wire [3:0] frontend_io_ptw_ptbr_mode; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_status_debug; // @[Frontend.scala 352:28]
  wire [1:0] frontend_io_ptw_status_prv; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_0_cfg_l; // @[Frontend.scala 352:28]
  wire [1:0] frontend_io_ptw_pmp_0_cfg_a; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_0_cfg_x; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_0_cfg_w; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_0_cfg_r; // @[Frontend.scala 352:28]
  wire [29:0] frontend_io_ptw_pmp_0_addr; // @[Frontend.scala 352:28]
  wire [31:0] frontend_io_ptw_pmp_0_mask; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_1_cfg_l; // @[Frontend.scala 352:28]
  wire [1:0] frontend_io_ptw_pmp_1_cfg_a; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_1_cfg_x; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_1_cfg_w; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_1_cfg_r; // @[Frontend.scala 352:28]
  wire [29:0] frontend_io_ptw_pmp_1_addr; // @[Frontend.scala 352:28]
  wire [31:0] frontend_io_ptw_pmp_1_mask; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_2_cfg_l; // @[Frontend.scala 352:28]
  wire [1:0] frontend_io_ptw_pmp_2_cfg_a; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_2_cfg_x; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_2_cfg_w; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_2_cfg_r; // @[Frontend.scala 352:28]
  wire [29:0] frontend_io_ptw_pmp_2_addr; // @[Frontend.scala 352:28]
  wire [31:0] frontend_io_ptw_pmp_2_mask; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_3_cfg_l; // @[Frontend.scala 352:28]
  wire [1:0] frontend_io_ptw_pmp_3_cfg_a; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_3_cfg_x; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_3_cfg_w; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_3_cfg_r; // @[Frontend.scala 352:28]
  wire [29:0] frontend_io_ptw_pmp_3_addr; // @[Frontend.scala 352:28]
  wire [31:0] frontend_io_ptw_pmp_3_mask; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_4_cfg_l; // @[Frontend.scala 352:28]
  wire [1:0] frontend_io_ptw_pmp_4_cfg_a; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_4_cfg_x; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_4_cfg_w; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_4_cfg_r; // @[Frontend.scala 352:28]
  wire [29:0] frontend_io_ptw_pmp_4_addr; // @[Frontend.scala 352:28]
  wire [31:0] frontend_io_ptw_pmp_4_mask; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_5_cfg_l; // @[Frontend.scala 352:28]
  wire [1:0] frontend_io_ptw_pmp_5_cfg_a; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_5_cfg_x; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_5_cfg_w; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_5_cfg_r; // @[Frontend.scala 352:28]
  wire [29:0] frontend_io_ptw_pmp_5_addr; // @[Frontend.scala 352:28]
  wire [31:0] frontend_io_ptw_pmp_5_mask; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_6_cfg_l; // @[Frontend.scala 352:28]
  wire [1:0] frontend_io_ptw_pmp_6_cfg_a; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_6_cfg_x; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_6_cfg_w; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_6_cfg_r; // @[Frontend.scala 352:28]
  wire [29:0] frontend_io_ptw_pmp_6_addr; // @[Frontend.scala 352:28]
  wire [31:0] frontend_io_ptw_pmp_6_mask; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_7_cfg_l; // @[Frontend.scala 352:28]
  wire [1:0] frontend_io_ptw_pmp_7_cfg_a; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_7_cfg_x; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_7_cfg_w; // @[Frontend.scala 352:28]
  wire  frontend_io_ptw_pmp_7_cfg_r; // @[Frontend.scala 352:28]
  wire [29:0] frontend_io_ptw_pmp_7_addr; // @[Frontend.scala 352:28]
  wire [31:0] frontend_io_ptw_pmp_7_mask; // @[Frontend.scala 352:28]
  wire [63:0] frontend_io_ptw_customCSRs_csrs_0_value; // @[Frontend.scala 352:28]
  wire  fpuOpt_clock; // @[RocketTile.scala 206:62]
  wire  fpuOpt_reset; // @[RocketTile.scala 206:62]
  wire [31:0] fpuOpt_io_inst; // @[RocketTile.scala 206:62]
  wire [63:0] fpuOpt_io_fromint_data; // @[RocketTile.scala 206:62]
  wire [2:0] fpuOpt_io_fcsr_rm; // @[RocketTile.scala 206:62]
  wire  fpuOpt_io_fcsr_flags_valid; // @[RocketTile.scala 206:62]
  wire [4:0] fpuOpt_io_fcsr_flags_bits; // @[RocketTile.scala 206:62]
  wire [63:0] fpuOpt_io_store_data; // @[RocketTile.scala 206:62]
  wire [63:0] fpuOpt_io_toint_data; // @[RocketTile.scala 206:62]
  wire  fpuOpt_io_dmem_resp_val; // @[RocketTile.scala 206:62]
  wire [2:0] fpuOpt_io_dmem_resp_type; // @[RocketTile.scala 206:62]
  wire [4:0] fpuOpt_io_dmem_resp_tag; // @[RocketTile.scala 206:62]
  wire [63:0] fpuOpt_io_dmem_resp_data; // @[RocketTile.scala 206:62]
  wire  fpuOpt_io_valid; // @[RocketTile.scala 206:62]
  wire  fpuOpt_io_fcsr_rdy; // @[RocketTile.scala 206:62]
  wire  fpuOpt_io_nack_mem; // @[RocketTile.scala 206:62]
  wire  fpuOpt_io_illegal_rm; // @[RocketTile.scala 206:62]
  wire  fpuOpt_io_killx; // @[RocketTile.scala 206:62]
  wire  fpuOpt_io_killm; // @[RocketTile.scala 206:62]
  wire  fpuOpt_io_dec_wen; // @[RocketTile.scala 206:62]
  wire  fpuOpt_io_dec_ren1; // @[RocketTile.scala 206:62]
  wire  fpuOpt_io_dec_ren2; // @[RocketTile.scala 206:62]
  wire  fpuOpt_io_dec_ren3; // @[RocketTile.scala 206:62]
  wire  fpuOpt_io_sboard_set; // @[RocketTile.scala 206:62]
  wire  fpuOpt_io_sboard_clr; // @[RocketTile.scala 206:62]
  wire [4:0] fpuOpt_io_sboard_clra; // @[RocketTile.scala 206:62]
  wire  dcacheArb_clock; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_0_req_ready; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_0_req_valid; // @[HellaCache.scala 269:25]
  wire [39:0] dcacheArb_io_requestor_0_req_bits_addr; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_0_s1_kill; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_0_s2_nack; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_0_resp_valid; // @[HellaCache.scala 269:25]
  wire [63:0] dcacheArb_io_requestor_0_resp_bits_data; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_0_s2_xcpt_ae_ld; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_1_req_ready; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_1_req_valid; // @[HellaCache.scala 269:25]
  wire [39:0] dcacheArb_io_requestor_1_req_bits_addr; // @[HellaCache.scala 269:25]
  wire [6:0] dcacheArb_io_requestor_1_req_bits_tag; // @[HellaCache.scala 269:25]
  wire [4:0] dcacheArb_io_requestor_1_req_bits_cmd; // @[HellaCache.scala 269:25]
  wire [1:0] dcacheArb_io_requestor_1_req_bits_size; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_1_req_bits_signed; // @[HellaCache.scala 269:25]
  wire [1:0] dcacheArb_io_requestor_1_req_bits_dprv; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_1_s1_kill; // @[HellaCache.scala 269:25]
  wire [63:0] dcacheArb_io_requestor_1_s1_data_data; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_1_s2_nack; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_1_resp_valid; // @[HellaCache.scala 269:25]
  wire [6:0] dcacheArb_io_requestor_1_resp_bits_tag; // @[HellaCache.scala 269:25]
  wire [1:0] dcacheArb_io_requestor_1_resp_bits_size; // @[HellaCache.scala 269:25]
  wire [63:0] dcacheArb_io_requestor_1_resp_bits_data; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_1_resp_bits_replay; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_1_resp_bits_has_data; // @[HellaCache.scala 269:25]
  wire [63:0] dcacheArb_io_requestor_1_resp_bits_data_word_bypass; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_1_replay_next; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_1_s2_xcpt_ma_ld; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_1_s2_xcpt_ma_st; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_1_s2_xcpt_pf_ld; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_1_s2_xcpt_pf_st; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_1_s2_xcpt_ae_ld; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_1_s2_xcpt_ae_st; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_1_ordered; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_1_perf_release; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_requestor_1_perf_grant; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_mem_req_ready; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_mem_req_valid; // @[HellaCache.scala 269:25]
  wire [39:0] dcacheArb_io_mem_req_bits_addr; // @[HellaCache.scala 269:25]
  wire [6:0] dcacheArb_io_mem_req_bits_tag; // @[HellaCache.scala 269:25]
  wire [4:0] dcacheArb_io_mem_req_bits_cmd; // @[HellaCache.scala 269:25]
  wire [1:0] dcacheArb_io_mem_req_bits_size; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_mem_req_bits_signed; // @[HellaCache.scala 269:25]
  wire [1:0] dcacheArb_io_mem_req_bits_dprv; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_mem_req_bits_phys; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_mem_s1_kill; // @[HellaCache.scala 269:25]
  wire [63:0] dcacheArb_io_mem_s1_data_data; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_mem_s2_nack; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_mem_resp_valid; // @[HellaCache.scala 269:25]
  wire [6:0] dcacheArb_io_mem_resp_bits_tag; // @[HellaCache.scala 269:25]
  wire [1:0] dcacheArb_io_mem_resp_bits_size; // @[HellaCache.scala 269:25]
  wire [63:0] dcacheArb_io_mem_resp_bits_data; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_mem_resp_bits_replay; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_mem_resp_bits_has_data; // @[HellaCache.scala 269:25]
  wire [63:0] dcacheArb_io_mem_resp_bits_data_word_bypass; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_mem_replay_next; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_mem_s2_xcpt_ma_ld; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_mem_s2_xcpt_ma_st; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_mem_s2_xcpt_pf_ld; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_mem_s2_xcpt_pf_st; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_mem_s2_xcpt_ae_ld; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_mem_s2_xcpt_ae_st; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_mem_ordered; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_mem_perf_release; // @[HellaCache.scala 269:25]
  wire  dcacheArb_io_mem_perf_grant; // @[HellaCache.scala 269:25]
  wire  ptw_clock; // @[PTW.scala 402:19]
  wire  ptw_reset; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_req_ready; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_req_valid; // @[PTW.scala 402:19]
  wire [26:0] ptw_io_requestor_0_req_bits_bits_addr; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_resp_valid; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_resp_bits_ae; // @[PTW.scala 402:19]
  wire [53:0] ptw_io_requestor_0_resp_bits_pte_ppn; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_resp_bits_pte_d; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_resp_bits_pte_a; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_resp_bits_pte_g; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_resp_bits_pte_u; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_resp_bits_pte_x; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_resp_bits_pte_w; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_resp_bits_pte_r; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_resp_bits_pte_v; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_requestor_0_resp_bits_level; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_resp_bits_homogeneous; // @[PTW.scala 402:19]
  wire [3:0] ptw_io_requestor_0_ptbr_mode; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_status_debug; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_requestor_0_status_dprv; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_status_mxr; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_status_sum; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_0_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_requestor_0_pmp_0_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_0_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_0_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_0_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_requestor_0_pmp_0_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_requestor_0_pmp_0_mask; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_1_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_requestor_0_pmp_1_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_1_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_1_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_1_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_requestor_0_pmp_1_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_requestor_0_pmp_1_mask; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_2_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_requestor_0_pmp_2_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_2_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_2_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_2_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_requestor_0_pmp_2_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_requestor_0_pmp_2_mask; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_3_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_requestor_0_pmp_3_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_3_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_3_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_3_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_requestor_0_pmp_3_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_requestor_0_pmp_3_mask; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_4_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_requestor_0_pmp_4_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_4_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_4_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_4_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_requestor_0_pmp_4_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_requestor_0_pmp_4_mask; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_5_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_requestor_0_pmp_5_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_5_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_5_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_5_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_requestor_0_pmp_5_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_requestor_0_pmp_5_mask; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_6_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_requestor_0_pmp_6_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_6_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_6_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_6_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_requestor_0_pmp_6_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_requestor_0_pmp_6_mask; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_7_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_requestor_0_pmp_7_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_7_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_7_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_0_pmp_7_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_requestor_0_pmp_7_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_requestor_0_pmp_7_mask; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_req_ready; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_req_valid; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_req_bits_valid; // @[PTW.scala 402:19]
  wire [26:0] ptw_io_requestor_1_req_bits_bits_addr; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_resp_valid; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_resp_bits_ae; // @[PTW.scala 402:19]
  wire [53:0] ptw_io_requestor_1_resp_bits_pte_ppn; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_resp_bits_pte_d; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_resp_bits_pte_a; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_resp_bits_pte_g; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_resp_bits_pte_u; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_resp_bits_pte_x; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_resp_bits_pte_w; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_resp_bits_pte_r; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_resp_bits_pte_v; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_requestor_1_resp_bits_level; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_resp_bits_homogeneous; // @[PTW.scala 402:19]
  wire [3:0] ptw_io_requestor_1_ptbr_mode; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_status_debug; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_requestor_1_status_prv; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_0_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_requestor_1_pmp_0_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_0_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_0_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_0_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_requestor_1_pmp_0_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_requestor_1_pmp_0_mask; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_1_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_requestor_1_pmp_1_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_1_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_1_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_1_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_requestor_1_pmp_1_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_requestor_1_pmp_1_mask; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_2_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_requestor_1_pmp_2_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_2_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_2_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_2_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_requestor_1_pmp_2_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_requestor_1_pmp_2_mask; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_3_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_requestor_1_pmp_3_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_3_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_3_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_3_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_requestor_1_pmp_3_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_requestor_1_pmp_3_mask; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_4_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_requestor_1_pmp_4_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_4_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_4_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_4_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_requestor_1_pmp_4_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_requestor_1_pmp_4_mask; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_5_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_requestor_1_pmp_5_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_5_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_5_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_5_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_requestor_1_pmp_5_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_requestor_1_pmp_5_mask; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_6_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_requestor_1_pmp_6_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_6_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_6_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_6_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_requestor_1_pmp_6_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_requestor_1_pmp_6_mask; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_7_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_requestor_1_pmp_7_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_7_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_7_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_requestor_1_pmp_7_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_requestor_1_pmp_7_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_requestor_1_pmp_7_mask; // @[PTW.scala 402:19]
  wire [63:0] ptw_io_requestor_1_customCSRs_csrs_0_value; // @[PTW.scala 402:19]
  wire  ptw_io_mem_req_ready; // @[PTW.scala 402:19]
  wire  ptw_io_mem_req_valid; // @[PTW.scala 402:19]
  wire [39:0] ptw_io_mem_req_bits_addr; // @[PTW.scala 402:19]
  wire  ptw_io_mem_s1_kill; // @[PTW.scala 402:19]
  wire  ptw_io_mem_s2_nack; // @[PTW.scala 402:19]
  wire  ptw_io_mem_resp_valid; // @[PTW.scala 402:19]
  wire [63:0] ptw_io_mem_resp_bits_data; // @[PTW.scala 402:19]
  wire  ptw_io_mem_s2_xcpt_ae_ld; // @[PTW.scala 402:19]
  wire [3:0] ptw_io_dpath_ptbr_mode; // @[PTW.scala 402:19]
  wire [43:0] ptw_io_dpath_ptbr_ppn; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_sfence_valid; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_sfence_bits_rs1; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_status_debug; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_dpath_status_dprv; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_dpath_status_prv; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_status_mxr; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_status_sum; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_0_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_dpath_pmp_0_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_0_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_0_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_0_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_dpath_pmp_0_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_dpath_pmp_0_mask; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_1_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_dpath_pmp_1_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_1_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_1_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_1_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_dpath_pmp_1_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_dpath_pmp_1_mask; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_2_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_dpath_pmp_2_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_2_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_2_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_2_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_dpath_pmp_2_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_dpath_pmp_2_mask; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_3_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_dpath_pmp_3_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_3_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_3_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_3_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_dpath_pmp_3_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_dpath_pmp_3_mask; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_4_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_dpath_pmp_4_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_4_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_4_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_4_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_dpath_pmp_4_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_dpath_pmp_4_mask; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_5_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_dpath_pmp_5_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_5_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_5_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_5_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_dpath_pmp_5_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_dpath_pmp_5_mask; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_6_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_dpath_pmp_6_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_6_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_6_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_6_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_dpath_pmp_6_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_dpath_pmp_6_mask; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_7_cfg_l; // @[PTW.scala 402:19]
  wire [1:0] ptw_io_dpath_pmp_7_cfg_a; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_7_cfg_x; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_7_cfg_w; // @[PTW.scala 402:19]
  wire  ptw_io_dpath_pmp_7_cfg_r; // @[PTW.scala 402:19]
  wire [29:0] ptw_io_dpath_pmp_7_addr; // @[PTW.scala 402:19]
  wire [31:0] ptw_io_dpath_pmp_7_mask; // @[PTW.scala 402:19]
  wire [63:0] ptw_io_dpath_customCSRs_csrs_0_value; // @[PTW.scala 402:19]
  wire  core_clock; // @[RocketTile.scala 138:20]
  wire  core_reset; // @[RocketTile.scala 138:20]
  wire  core_io_hartid; // @[RocketTile.scala 138:20]
  wire  core_io_interrupts_debug; // @[RocketTile.scala 138:20]
  wire  core_io_interrupts_mtip; // @[RocketTile.scala 138:20]
  wire  core_io_interrupts_msip; // @[RocketTile.scala 138:20]
  wire  core_io_interrupts_meip; // @[RocketTile.scala 138:20]
  wire  core_io_interrupts_seip; // @[RocketTile.scala 138:20]
  wire  core_io_imem_might_request; // @[RocketTile.scala 138:20]
  wire  core_io_imem_req_valid; // @[RocketTile.scala 138:20]
  wire [39:0] core_io_imem_req_bits_pc; // @[RocketTile.scala 138:20]
  wire  core_io_imem_req_bits_speculative; // @[RocketTile.scala 138:20]
  wire  core_io_imem_sfence_valid; // @[RocketTile.scala 138:20]
  wire  core_io_imem_sfence_bits_rs1; // @[RocketTile.scala 138:20]
  wire  core_io_imem_sfence_bits_rs2; // @[RocketTile.scala 138:20]
  wire [38:0] core_io_imem_sfence_bits_addr; // @[RocketTile.scala 138:20]
  wire  core_io_imem_resp_ready; // @[RocketTile.scala 138:20]
  wire  core_io_imem_resp_valid; // @[RocketTile.scala 138:20]
  wire  core_io_imem_resp_bits_btb_taken; // @[RocketTile.scala 138:20]
  wire  core_io_imem_resp_bits_btb_bridx; // @[RocketTile.scala 138:20]
  wire [4:0] core_io_imem_resp_bits_btb_entry; // @[RocketTile.scala 138:20]
  wire [7:0] core_io_imem_resp_bits_btb_bht_history; // @[RocketTile.scala 138:20]
  wire [39:0] core_io_imem_resp_bits_pc; // @[RocketTile.scala 138:20]
  wire [31:0] core_io_imem_resp_bits_data; // @[RocketTile.scala 138:20]
  wire  core_io_imem_resp_bits_xcpt_pf_inst; // @[RocketTile.scala 138:20]
  wire  core_io_imem_resp_bits_xcpt_ae_inst; // @[RocketTile.scala 138:20]
  wire  core_io_imem_resp_bits_replay; // @[RocketTile.scala 138:20]
  wire  core_io_imem_btb_update_valid; // @[RocketTile.scala 138:20]
  wire [4:0] core_io_imem_btb_update_bits_prediction_entry; // @[RocketTile.scala 138:20]
  wire [38:0] core_io_imem_btb_update_bits_pc; // @[RocketTile.scala 138:20]
  wire  core_io_imem_btb_update_bits_isValid; // @[RocketTile.scala 138:20]
  wire [38:0] core_io_imem_btb_update_bits_br_pc; // @[RocketTile.scala 138:20]
  wire [1:0] core_io_imem_btb_update_bits_cfiType; // @[RocketTile.scala 138:20]
  wire  core_io_imem_bht_update_valid; // @[RocketTile.scala 138:20]
  wire [7:0] core_io_imem_bht_update_bits_prediction_history; // @[RocketTile.scala 138:20]
  wire [38:0] core_io_imem_bht_update_bits_pc; // @[RocketTile.scala 138:20]
  wire  core_io_imem_bht_update_bits_branch; // @[RocketTile.scala 138:20]
  wire  core_io_imem_bht_update_bits_taken; // @[RocketTile.scala 138:20]
  wire  core_io_imem_bht_update_bits_mispredict; // @[RocketTile.scala 138:20]
  wire  core_io_imem_flush_icache; // @[RocketTile.scala 138:20]
  wire  core_io_dmem_req_ready; // @[RocketTile.scala 138:20]
  wire  core_io_dmem_req_valid; // @[RocketTile.scala 138:20]
  wire [39:0] core_io_dmem_req_bits_addr; // @[RocketTile.scala 138:20]
  wire [6:0] core_io_dmem_req_bits_tag; // @[RocketTile.scala 138:20]
  wire [4:0] core_io_dmem_req_bits_cmd; // @[RocketTile.scala 138:20]
  wire [1:0] core_io_dmem_req_bits_size; // @[RocketTile.scala 138:20]
  wire  core_io_dmem_req_bits_signed; // @[RocketTile.scala 138:20]
  wire [1:0] core_io_dmem_req_bits_dprv; // @[RocketTile.scala 138:20]
  wire  core_io_dmem_s1_kill; // @[RocketTile.scala 138:20]
  wire [63:0] core_io_dmem_s1_data_data; // @[RocketTile.scala 138:20]
  wire  core_io_dmem_s2_nack; // @[RocketTile.scala 138:20]
  wire  core_io_dmem_resp_valid; // @[RocketTile.scala 138:20]
  wire [6:0] core_io_dmem_resp_bits_tag; // @[RocketTile.scala 138:20]
  wire [1:0] core_io_dmem_resp_bits_size; // @[RocketTile.scala 138:20]
  wire [63:0] core_io_dmem_resp_bits_data; // @[RocketTile.scala 138:20]
  wire  core_io_dmem_resp_bits_replay; // @[RocketTile.scala 138:20]
  wire  core_io_dmem_resp_bits_has_data; // @[RocketTile.scala 138:20]
  wire [63:0] core_io_dmem_resp_bits_data_word_bypass; // @[RocketTile.scala 138:20]
  wire  core_io_dmem_replay_next; // @[RocketTile.scala 138:20]
  wire  core_io_dmem_s2_xcpt_ma_ld; // @[RocketTile.scala 138:20]
  wire  core_io_dmem_s2_xcpt_ma_st; // @[RocketTile.scala 138:20]
  wire  core_io_dmem_s2_xcpt_pf_ld; // @[RocketTile.scala 138:20]
  wire  core_io_dmem_s2_xcpt_pf_st; // @[RocketTile.scala 138:20]
  wire  core_io_dmem_s2_xcpt_ae_ld; // @[RocketTile.scala 138:20]
  wire  core_io_dmem_s2_xcpt_ae_st; // @[RocketTile.scala 138:20]
  wire  core_io_dmem_ordered; // @[RocketTile.scala 138:20]
  wire  core_io_dmem_perf_release; // @[RocketTile.scala 138:20]
  wire  core_io_dmem_perf_grant; // @[RocketTile.scala 138:20]
  wire [3:0] core_io_ptw_ptbr_mode; // @[RocketTile.scala 138:20]
  wire [43:0] core_io_ptw_ptbr_ppn; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_sfence_valid; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_sfence_bits_rs1; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_status_debug; // @[RocketTile.scala 138:20]
  wire [1:0] core_io_ptw_status_dprv; // @[RocketTile.scala 138:20]
  wire [1:0] core_io_ptw_status_prv; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_status_mxr; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_status_sum; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_0_cfg_l; // @[RocketTile.scala 138:20]
  wire [1:0] core_io_ptw_pmp_0_cfg_a; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_0_cfg_x; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_0_cfg_w; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_0_cfg_r; // @[RocketTile.scala 138:20]
  wire [29:0] core_io_ptw_pmp_0_addr; // @[RocketTile.scala 138:20]
  wire [31:0] core_io_ptw_pmp_0_mask; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_1_cfg_l; // @[RocketTile.scala 138:20]
  wire [1:0] core_io_ptw_pmp_1_cfg_a; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_1_cfg_x; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_1_cfg_w; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_1_cfg_r; // @[RocketTile.scala 138:20]
  wire [29:0] core_io_ptw_pmp_1_addr; // @[RocketTile.scala 138:20]
  wire [31:0] core_io_ptw_pmp_1_mask; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_2_cfg_l; // @[RocketTile.scala 138:20]
  wire [1:0] core_io_ptw_pmp_2_cfg_a; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_2_cfg_x; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_2_cfg_w; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_2_cfg_r; // @[RocketTile.scala 138:20]
  wire [29:0] core_io_ptw_pmp_2_addr; // @[RocketTile.scala 138:20]
  wire [31:0] core_io_ptw_pmp_2_mask; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_3_cfg_l; // @[RocketTile.scala 138:20]
  wire [1:0] core_io_ptw_pmp_3_cfg_a; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_3_cfg_x; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_3_cfg_w; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_3_cfg_r; // @[RocketTile.scala 138:20]
  wire [29:0] core_io_ptw_pmp_3_addr; // @[RocketTile.scala 138:20]
  wire [31:0] core_io_ptw_pmp_3_mask; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_4_cfg_l; // @[RocketTile.scala 138:20]
  wire [1:0] core_io_ptw_pmp_4_cfg_a; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_4_cfg_x; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_4_cfg_w; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_4_cfg_r; // @[RocketTile.scala 138:20]
  wire [29:0] core_io_ptw_pmp_4_addr; // @[RocketTile.scala 138:20]
  wire [31:0] core_io_ptw_pmp_4_mask; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_5_cfg_l; // @[RocketTile.scala 138:20]
  wire [1:0] core_io_ptw_pmp_5_cfg_a; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_5_cfg_x; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_5_cfg_w; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_5_cfg_r; // @[RocketTile.scala 138:20]
  wire [29:0] core_io_ptw_pmp_5_addr; // @[RocketTile.scala 138:20]
  wire [31:0] core_io_ptw_pmp_5_mask; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_6_cfg_l; // @[RocketTile.scala 138:20]
  wire [1:0] core_io_ptw_pmp_6_cfg_a; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_6_cfg_x; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_6_cfg_w; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_6_cfg_r; // @[RocketTile.scala 138:20]
  wire [29:0] core_io_ptw_pmp_6_addr; // @[RocketTile.scala 138:20]
  wire [31:0] core_io_ptw_pmp_6_mask; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_7_cfg_l; // @[RocketTile.scala 138:20]
  wire [1:0] core_io_ptw_pmp_7_cfg_a; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_7_cfg_x; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_7_cfg_w; // @[RocketTile.scala 138:20]
  wire  core_io_ptw_pmp_7_cfg_r; // @[RocketTile.scala 138:20]
  wire [29:0] core_io_ptw_pmp_7_addr; // @[RocketTile.scala 138:20]
  wire [31:0] core_io_ptw_pmp_7_mask; // @[RocketTile.scala 138:20]
  wire [63:0] core_io_ptw_customCSRs_csrs_0_value; // @[RocketTile.scala 138:20]
  wire [31:0] core_io_fpu_inst; // @[RocketTile.scala 138:20]
  wire [63:0] core_io_fpu_fromint_data; // @[RocketTile.scala 138:20]
  wire [2:0] core_io_fpu_fcsr_rm; // @[RocketTile.scala 138:20]
  wire  core_io_fpu_fcsr_flags_valid; // @[RocketTile.scala 138:20]
  wire [4:0] core_io_fpu_fcsr_flags_bits; // @[RocketTile.scala 138:20]
  wire [63:0] core_io_fpu_store_data; // @[RocketTile.scala 138:20]
  wire [63:0] core_io_fpu_toint_data; // @[RocketTile.scala 138:20]
  wire  core_io_fpu_dmem_resp_val; // @[RocketTile.scala 138:20]
  wire [2:0] core_io_fpu_dmem_resp_type; // @[RocketTile.scala 138:20]
  wire [4:0] core_io_fpu_dmem_resp_tag; // @[RocketTile.scala 138:20]
  wire [63:0] core_io_fpu_dmem_resp_data; // @[RocketTile.scala 138:20]
  wire  core_io_fpu_valid; // @[RocketTile.scala 138:20]
  wire  core_io_fpu_fcsr_rdy; // @[RocketTile.scala 138:20]
  wire  core_io_fpu_nack_mem; // @[RocketTile.scala 138:20]
  wire  core_io_fpu_illegal_rm; // @[RocketTile.scala 138:20]
  wire  core_io_fpu_killx; // @[RocketTile.scala 138:20]
  wire  core_io_fpu_killm; // @[RocketTile.scala 138:20]
  wire  core_io_fpu_dec_wen; // @[RocketTile.scala 138:20]
  wire  core_io_fpu_dec_ren1; // @[RocketTile.scala 138:20]
  wire  core_io_fpu_dec_ren2; // @[RocketTile.scala 138:20]
  wire  core_io_fpu_dec_ren3; // @[RocketTile.scala 138:20]
  wire  core_io_fpu_sboard_set; // @[RocketTile.scala 138:20]
  wire  core_io_fpu_sboard_clr; // @[RocketTile.scala 138:20]
  wire [4:0] core_io_fpu_sboard_clra; // @[RocketTile.scala 138:20]
  TLXbar_7 tlMasterXbar ( // @[BaseTile.scala 191:42]
    .clock(tlMasterXbar_clock),
    .reset(tlMasterXbar_reset),
    .auto_in_1_a_ready(tlMasterXbar_auto_in_1_a_ready),
    .auto_in_1_a_valid(tlMasterXbar_auto_in_1_a_valid),
    .auto_in_1_a_bits_address(tlMasterXbar_auto_in_1_a_bits_address),
    .auto_in_1_d_valid(tlMasterXbar_auto_in_1_d_valid),
    .auto_in_1_d_bits_opcode(tlMasterXbar_auto_in_1_d_bits_opcode),
    .auto_in_1_d_bits_size(tlMasterXbar_auto_in_1_d_bits_size),
    .auto_in_1_d_bits_data(tlMasterXbar_auto_in_1_d_bits_data),
    .auto_in_1_d_bits_corrupt(tlMasterXbar_auto_in_1_d_bits_corrupt),
    .auto_in_0_a_ready(tlMasterXbar_auto_in_0_a_ready),
    .auto_in_0_a_valid(tlMasterXbar_auto_in_0_a_valid),
    .auto_in_0_a_bits_opcode(tlMasterXbar_auto_in_0_a_bits_opcode),
    .auto_in_0_a_bits_param(tlMasterXbar_auto_in_0_a_bits_param),
    .auto_in_0_a_bits_size(tlMasterXbar_auto_in_0_a_bits_size),
    .auto_in_0_a_bits_source(tlMasterXbar_auto_in_0_a_bits_source),
    .auto_in_0_a_bits_address(tlMasterXbar_auto_in_0_a_bits_address),
    .auto_in_0_a_bits_mask(tlMasterXbar_auto_in_0_a_bits_mask),
    .auto_in_0_a_bits_data(tlMasterXbar_auto_in_0_a_bits_data),
    .auto_in_0_b_ready(tlMasterXbar_auto_in_0_b_ready),
    .auto_in_0_b_valid(tlMasterXbar_auto_in_0_b_valid),
    .auto_in_0_b_bits_param(tlMasterXbar_auto_in_0_b_bits_param),
    .auto_in_0_b_bits_size(tlMasterXbar_auto_in_0_b_bits_size),
    .auto_in_0_b_bits_source(tlMasterXbar_auto_in_0_b_bits_source),
    .auto_in_0_b_bits_address(tlMasterXbar_auto_in_0_b_bits_address),
    .auto_in_0_c_ready(tlMasterXbar_auto_in_0_c_ready),
    .auto_in_0_c_valid(tlMasterXbar_auto_in_0_c_valid),
    .auto_in_0_c_bits_opcode(tlMasterXbar_auto_in_0_c_bits_opcode),
    .auto_in_0_c_bits_param(tlMasterXbar_auto_in_0_c_bits_param),
    .auto_in_0_c_bits_size(tlMasterXbar_auto_in_0_c_bits_size),
    .auto_in_0_c_bits_source(tlMasterXbar_auto_in_0_c_bits_source),
    .auto_in_0_c_bits_address(tlMasterXbar_auto_in_0_c_bits_address),
    .auto_in_0_c_bits_data(tlMasterXbar_auto_in_0_c_bits_data),
    .auto_in_0_d_ready(tlMasterXbar_auto_in_0_d_ready),
    .auto_in_0_d_valid(tlMasterXbar_auto_in_0_d_valid),
    .auto_in_0_d_bits_opcode(tlMasterXbar_auto_in_0_d_bits_opcode),
    .auto_in_0_d_bits_param(tlMasterXbar_auto_in_0_d_bits_param),
    .auto_in_0_d_bits_size(tlMasterXbar_auto_in_0_d_bits_size),
    .auto_in_0_d_bits_source(tlMasterXbar_auto_in_0_d_bits_source),
    .auto_in_0_d_bits_sink(tlMasterXbar_auto_in_0_d_bits_sink),
    .auto_in_0_d_bits_denied(tlMasterXbar_auto_in_0_d_bits_denied),
    .auto_in_0_d_bits_data(tlMasterXbar_auto_in_0_d_bits_data),
    .auto_in_0_e_ready(tlMasterXbar_auto_in_0_e_ready),
    .auto_in_0_e_valid(tlMasterXbar_auto_in_0_e_valid),
    .auto_in_0_e_bits_sink(tlMasterXbar_auto_in_0_e_bits_sink),
    .auto_out_a_ready(tlMasterXbar_auto_out_a_ready),
    .auto_out_a_valid(tlMasterXbar_auto_out_a_valid),
    .auto_out_a_bits_opcode(tlMasterXbar_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(tlMasterXbar_auto_out_a_bits_param),
    .auto_out_a_bits_size(tlMasterXbar_auto_out_a_bits_size),
    .auto_out_a_bits_source(tlMasterXbar_auto_out_a_bits_source),
    .auto_out_a_bits_address(tlMasterXbar_auto_out_a_bits_address),
    .auto_out_a_bits_mask(tlMasterXbar_auto_out_a_bits_mask),
    .auto_out_a_bits_data(tlMasterXbar_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(tlMasterXbar_auto_out_a_bits_corrupt),
    .auto_out_b_ready(tlMasterXbar_auto_out_b_ready),
    .auto_out_b_valid(tlMasterXbar_auto_out_b_valid),
    .auto_out_b_bits_param(tlMasterXbar_auto_out_b_bits_param),
    .auto_out_b_bits_size(tlMasterXbar_auto_out_b_bits_size),
    .auto_out_b_bits_source(tlMasterXbar_auto_out_b_bits_source),
    .auto_out_b_bits_address(tlMasterXbar_auto_out_b_bits_address),
    .auto_out_c_ready(tlMasterXbar_auto_out_c_ready),
    .auto_out_c_valid(tlMasterXbar_auto_out_c_valid),
    .auto_out_c_bits_opcode(tlMasterXbar_auto_out_c_bits_opcode),
    .auto_out_c_bits_param(tlMasterXbar_auto_out_c_bits_param),
    .auto_out_c_bits_size(tlMasterXbar_auto_out_c_bits_size),
    .auto_out_c_bits_source(tlMasterXbar_auto_out_c_bits_source),
    .auto_out_c_bits_address(tlMasterXbar_auto_out_c_bits_address),
    .auto_out_c_bits_data(tlMasterXbar_auto_out_c_bits_data),
    .auto_out_d_ready(tlMasterXbar_auto_out_d_ready),
    .auto_out_d_valid(tlMasterXbar_auto_out_d_valid),
    .auto_out_d_bits_opcode(tlMasterXbar_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(tlMasterXbar_auto_out_d_bits_param),
    .auto_out_d_bits_size(tlMasterXbar_auto_out_d_bits_size),
    .auto_out_d_bits_source(tlMasterXbar_auto_out_d_bits_source),
    .auto_out_d_bits_sink(tlMasterXbar_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(tlMasterXbar_auto_out_d_bits_denied),
    .auto_out_d_bits_data(tlMasterXbar_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(tlMasterXbar_auto_out_d_bits_corrupt),
    .auto_out_e_ready(tlMasterXbar_auto_out_e_ready),
    .auto_out_e_valid(tlMasterXbar_auto_out_e_valid),
    .auto_out_e_bits_sink(tlMasterXbar_auto_out_e_bits_sink)
  );
  IntXbar_1 intXbar ( // @[BaseTile.scala 193:37]
    .auto_int_in_3_0(intXbar_auto_int_in_3_0),
    .auto_int_in_2_0(intXbar_auto_int_in_2_0),
    .auto_int_in_1_0(intXbar_auto_int_in_1_0),
    .auto_int_in_1_1(intXbar_auto_int_in_1_1),
    .auto_int_in_0_0(intXbar_auto_int_in_0_0),
    .auto_int_out_0(intXbar_auto_int_out_0),
    .auto_int_out_1(intXbar_auto_int_out_1),
    .auto_int_out_2(intXbar_auto_int_out_2),
    .auto_int_out_3(intXbar_auto_int_out_3),
    .auto_int_out_4(intXbar_auto_int_out_4)
  );
  DCache dcache ( // @[HellaCache.scala 258:43]
    .gated_clock(dcache_gated_clock),
    .reset(dcache_reset),
    .auto_out_a_ready(dcache_auto_out_a_ready),
    .auto_out_a_valid(dcache_auto_out_a_valid),
    .auto_out_a_bits_opcode(dcache_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(dcache_auto_out_a_bits_param),
    .auto_out_a_bits_size(dcache_auto_out_a_bits_size),
    .auto_out_a_bits_source(dcache_auto_out_a_bits_source),
    .auto_out_a_bits_address(dcache_auto_out_a_bits_address),
    .auto_out_a_bits_mask(dcache_auto_out_a_bits_mask),
    .auto_out_a_bits_data(dcache_auto_out_a_bits_data),
    .auto_out_b_ready(dcache_auto_out_b_ready),
    .auto_out_b_valid(dcache_auto_out_b_valid),
    .auto_out_b_bits_param(dcache_auto_out_b_bits_param),
    .auto_out_b_bits_size(dcache_auto_out_b_bits_size),
    .auto_out_b_bits_source(dcache_auto_out_b_bits_source),
    .auto_out_b_bits_address(dcache_auto_out_b_bits_address),
    .auto_out_c_ready(dcache_auto_out_c_ready),
    .auto_out_c_valid(dcache_auto_out_c_valid),
    .auto_out_c_bits_opcode(dcache_auto_out_c_bits_opcode),
    .auto_out_c_bits_param(dcache_auto_out_c_bits_param),
    .auto_out_c_bits_size(dcache_auto_out_c_bits_size),
    .auto_out_c_bits_source(dcache_auto_out_c_bits_source),
    .auto_out_c_bits_address(dcache_auto_out_c_bits_address),
    .auto_out_c_bits_data(dcache_auto_out_c_bits_data),
    .auto_out_d_ready(dcache_auto_out_d_ready),
    .auto_out_d_valid(dcache_auto_out_d_valid),
    .auto_out_d_bits_opcode(dcache_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(dcache_auto_out_d_bits_param),
    .auto_out_d_bits_size(dcache_auto_out_d_bits_size),
    .auto_out_d_bits_source(dcache_auto_out_d_bits_source),
    .auto_out_d_bits_sink(dcache_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(dcache_auto_out_d_bits_denied),
    .auto_out_d_bits_data(dcache_auto_out_d_bits_data),
    .auto_out_e_ready(dcache_auto_out_e_ready),
    .auto_out_e_valid(dcache_auto_out_e_valid),
    .auto_out_e_bits_sink(dcache_auto_out_e_bits_sink),
    .io_cpu_req_ready(dcache_io_cpu_req_ready),
    .io_cpu_req_valid(dcache_io_cpu_req_valid),
    .io_cpu_req_bits_addr(dcache_io_cpu_req_bits_addr),
    .io_cpu_req_bits_tag(dcache_io_cpu_req_bits_tag),
    .io_cpu_req_bits_cmd(dcache_io_cpu_req_bits_cmd),
    .io_cpu_req_bits_size(dcache_io_cpu_req_bits_size),
    .io_cpu_req_bits_signed(dcache_io_cpu_req_bits_signed),
    .io_cpu_req_bits_dprv(dcache_io_cpu_req_bits_dprv),
    .io_cpu_req_bits_phys(dcache_io_cpu_req_bits_phys),
    .io_cpu_s1_kill(dcache_io_cpu_s1_kill),
    .io_cpu_s1_data_data(dcache_io_cpu_s1_data_data),
    .io_cpu_s1_data_mask(dcache_io_cpu_s1_data_mask),
    .io_cpu_s2_nack(dcache_io_cpu_s2_nack),
    .io_cpu_resp_valid(dcache_io_cpu_resp_valid),
    .io_cpu_resp_bits_addr(dcache_io_cpu_resp_bits_addr),
    .io_cpu_resp_bits_tag(dcache_io_cpu_resp_bits_tag),
    .io_cpu_resp_bits_cmd(dcache_io_cpu_resp_bits_cmd),
    .io_cpu_resp_bits_size(dcache_io_cpu_resp_bits_size),
    .io_cpu_resp_bits_signed(dcache_io_cpu_resp_bits_signed),
    .io_cpu_resp_bits_dprv(dcache_io_cpu_resp_bits_dprv),
    .io_cpu_resp_bits_data(dcache_io_cpu_resp_bits_data),
    .io_cpu_resp_bits_mask(dcache_io_cpu_resp_bits_mask),
    .io_cpu_resp_bits_replay(dcache_io_cpu_resp_bits_replay),
    .io_cpu_resp_bits_has_data(dcache_io_cpu_resp_bits_has_data),
    .io_cpu_resp_bits_data_word_bypass(dcache_io_cpu_resp_bits_data_word_bypass),
    .io_cpu_resp_bits_data_raw(dcache_io_cpu_resp_bits_data_raw),
    .io_cpu_resp_bits_store_data(dcache_io_cpu_resp_bits_store_data),
    .io_cpu_replay_next(dcache_io_cpu_replay_next),
    .io_cpu_s2_xcpt_ma_ld(dcache_io_cpu_s2_xcpt_ma_ld),
    .io_cpu_s2_xcpt_ma_st(dcache_io_cpu_s2_xcpt_ma_st),
    .io_cpu_s2_xcpt_pf_ld(dcache_io_cpu_s2_xcpt_pf_ld),
    .io_cpu_s2_xcpt_pf_st(dcache_io_cpu_s2_xcpt_pf_st),
    .io_cpu_s2_xcpt_ae_ld(dcache_io_cpu_s2_xcpt_ae_ld),
    .io_cpu_s2_xcpt_ae_st(dcache_io_cpu_s2_xcpt_ae_st),
    .io_cpu_ordered(dcache_io_cpu_ordered),
    .io_cpu_perf_release(dcache_io_cpu_perf_release),
    .io_cpu_perf_grant(dcache_io_cpu_perf_grant),
    .io_ptw_req_ready(dcache_io_ptw_req_ready),
    .io_ptw_req_valid(dcache_io_ptw_req_valid),
    .io_ptw_req_bits_bits_addr(dcache_io_ptw_req_bits_bits_addr),
    .io_ptw_resp_valid(dcache_io_ptw_resp_valid),
    .io_ptw_resp_bits_ae(dcache_io_ptw_resp_bits_ae),
    .io_ptw_resp_bits_pte_ppn(dcache_io_ptw_resp_bits_pte_ppn),
    .io_ptw_resp_bits_pte_d(dcache_io_ptw_resp_bits_pte_d),
    .io_ptw_resp_bits_pte_a(dcache_io_ptw_resp_bits_pte_a),
    .io_ptw_resp_bits_pte_g(dcache_io_ptw_resp_bits_pte_g),
    .io_ptw_resp_bits_pte_u(dcache_io_ptw_resp_bits_pte_u),
    .io_ptw_resp_bits_pte_x(dcache_io_ptw_resp_bits_pte_x),
    .io_ptw_resp_bits_pte_w(dcache_io_ptw_resp_bits_pte_w),
    .io_ptw_resp_bits_pte_r(dcache_io_ptw_resp_bits_pte_r),
    .io_ptw_resp_bits_pte_v(dcache_io_ptw_resp_bits_pte_v),
    .io_ptw_resp_bits_level(dcache_io_ptw_resp_bits_level),
    .io_ptw_resp_bits_homogeneous(dcache_io_ptw_resp_bits_homogeneous),
    .io_ptw_ptbr_mode(dcache_io_ptw_ptbr_mode),
    .io_ptw_status_debug(dcache_io_ptw_status_debug),
    .io_ptw_status_dprv(dcache_io_ptw_status_dprv),
    .io_ptw_status_mxr(dcache_io_ptw_status_mxr),
    .io_ptw_status_sum(dcache_io_ptw_status_sum),
    .io_ptw_pmp_0_cfg_l(dcache_io_ptw_pmp_0_cfg_l),
    .io_ptw_pmp_0_cfg_a(dcache_io_ptw_pmp_0_cfg_a),
    .io_ptw_pmp_0_cfg_x(dcache_io_ptw_pmp_0_cfg_x),
    .io_ptw_pmp_0_cfg_w(dcache_io_ptw_pmp_0_cfg_w),
    .io_ptw_pmp_0_cfg_r(dcache_io_ptw_pmp_0_cfg_r),
    .io_ptw_pmp_0_addr(dcache_io_ptw_pmp_0_addr),
    .io_ptw_pmp_0_mask(dcache_io_ptw_pmp_0_mask),
    .io_ptw_pmp_1_cfg_l(dcache_io_ptw_pmp_1_cfg_l),
    .io_ptw_pmp_1_cfg_a(dcache_io_ptw_pmp_1_cfg_a),
    .io_ptw_pmp_1_cfg_x(dcache_io_ptw_pmp_1_cfg_x),
    .io_ptw_pmp_1_cfg_w(dcache_io_ptw_pmp_1_cfg_w),
    .io_ptw_pmp_1_cfg_r(dcache_io_ptw_pmp_1_cfg_r),
    .io_ptw_pmp_1_addr(dcache_io_ptw_pmp_1_addr),
    .io_ptw_pmp_1_mask(dcache_io_ptw_pmp_1_mask),
    .io_ptw_pmp_2_cfg_l(dcache_io_ptw_pmp_2_cfg_l),
    .io_ptw_pmp_2_cfg_a(dcache_io_ptw_pmp_2_cfg_a),
    .io_ptw_pmp_2_cfg_x(dcache_io_ptw_pmp_2_cfg_x),
    .io_ptw_pmp_2_cfg_w(dcache_io_ptw_pmp_2_cfg_w),
    .io_ptw_pmp_2_cfg_r(dcache_io_ptw_pmp_2_cfg_r),
    .io_ptw_pmp_2_addr(dcache_io_ptw_pmp_2_addr),
    .io_ptw_pmp_2_mask(dcache_io_ptw_pmp_2_mask),
    .io_ptw_pmp_3_cfg_l(dcache_io_ptw_pmp_3_cfg_l),
    .io_ptw_pmp_3_cfg_a(dcache_io_ptw_pmp_3_cfg_a),
    .io_ptw_pmp_3_cfg_x(dcache_io_ptw_pmp_3_cfg_x),
    .io_ptw_pmp_3_cfg_w(dcache_io_ptw_pmp_3_cfg_w),
    .io_ptw_pmp_3_cfg_r(dcache_io_ptw_pmp_3_cfg_r),
    .io_ptw_pmp_3_addr(dcache_io_ptw_pmp_3_addr),
    .io_ptw_pmp_3_mask(dcache_io_ptw_pmp_3_mask),
    .io_ptw_pmp_4_cfg_l(dcache_io_ptw_pmp_4_cfg_l),
    .io_ptw_pmp_4_cfg_a(dcache_io_ptw_pmp_4_cfg_a),
    .io_ptw_pmp_4_cfg_x(dcache_io_ptw_pmp_4_cfg_x),
    .io_ptw_pmp_4_cfg_w(dcache_io_ptw_pmp_4_cfg_w),
    .io_ptw_pmp_4_cfg_r(dcache_io_ptw_pmp_4_cfg_r),
    .io_ptw_pmp_4_addr(dcache_io_ptw_pmp_4_addr),
    .io_ptw_pmp_4_mask(dcache_io_ptw_pmp_4_mask),
    .io_ptw_pmp_5_cfg_l(dcache_io_ptw_pmp_5_cfg_l),
    .io_ptw_pmp_5_cfg_a(dcache_io_ptw_pmp_5_cfg_a),
    .io_ptw_pmp_5_cfg_x(dcache_io_ptw_pmp_5_cfg_x),
    .io_ptw_pmp_5_cfg_w(dcache_io_ptw_pmp_5_cfg_w),
    .io_ptw_pmp_5_cfg_r(dcache_io_ptw_pmp_5_cfg_r),
    .io_ptw_pmp_5_addr(dcache_io_ptw_pmp_5_addr),
    .io_ptw_pmp_5_mask(dcache_io_ptw_pmp_5_mask),
    .io_ptw_pmp_6_cfg_l(dcache_io_ptw_pmp_6_cfg_l),
    .io_ptw_pmp_6_cfg_a(dcache_io_ptw_pmp_6_cfg_a),
    .io_ptw_pmp_6_cfg_x(dcache_io_ptw_pmp_6_cfg_x),
    .io_ptw_pmp_6_cfg_w(dcache_io_ptw_pmp_6_cfg_w),
    .io_ptw_pmp_6_cfg_r(dcache_io_ptw_pmp_6_cfg_r),
    .io_ptw_pmp_6_addr(dcache_io_ptw_pmp_6_addr),
    .io_ptw_pmp_6_mask(dcache_io_ptw_pmp_6_mask),
    .io_ptw_pmp_7_cfg_l(dcache_io_ptw_pmp_7_cfg_l),
    .io_ptw_pmp_7_cfg_a(dcache_io_ptw_pmp_7_cfg_a),
    .io_ptw_pmp_7_cfg_x(dcache_io_ptw_pmp_7_cfg_x),
    .io_ptw_pmp_7_cfg_w(dcache_io_ptw_pmp_7_cfg_w),
    .io_ptw_pmp_7_cfg_r(dcache_io_ptw_pmp_7_cfg_r),
    .io_ptw_pmp_7_addr(dcache_io_ptw_pmp_7_addr),
    .io_ptw_pmp_7_mask(dcache_io_ptw_pmp_7_mask)
  );
  Frontend frontend ( // @[Frontend.scala 352:28]
    .gated_clock(frontend_gated_clock),
    .reset(frontend_reset),
    .auto_icache_master_out_a_ready(frontend_auto_icache_master_out_a_ready),
    .auto_icache_master_out_a_valid(frontend_auto_icache_master_out_a_valid),
    .auto_icache_master_out_a_bits_address(frontend_auto_icache_master_out_a_bits_address),
    .auto_icache_master_out_d_valid(frontend_auto_icache_master_out_d_valid),
    .auto_icache_master_out_d_bits_opcode(frontend_auto_icache_master_out_d_bits_opcode),
    .auto_icache_master_out_d_bits_size(frontend_auto_icache_master_out_d_bits_size),
    .auto_icache_master_out_d_bits_data(frontend_auto_icache_master_out_d_bits_data),
    .auto_icache_master_out_d_bits_corrupt(frontend_auto_icache_master_out_d_bits_corrupt),
    .io_cpu_might_request(frontend_io_cpu_might_request),
    .io_cpu_req_valid(frontend_io_cpu_req_valid),
    .io_cpu_req_bits_pc(frontend_io_cpu_req_bits_pc),
    .io_cpu_req_bits_speculative(frontend_io_cpu_req_bits_speculative),
    .io_cpu_sfence_valid(frontend_io_cpu_sfence_valid),
    .io_cpu_sfence_bits_rs1(frontend_io_cpu_sfence_bits_rs1),
    .io_cpu_sfence_bits_rs2(frontend_io_cpu_sfence_bits_rs2),
    .io_cpu_sfence_bits_addr(frontend_io_cpu_sfence_bits_addr),
    .io_cpu_resp_ready(frontend_io_cpu_resp_ready),
    .io_cpu_resp_valid(frontend_io_cpu_resp_valid),
    .io_cpu_resp_bits_btb_taken(frontend_io_cpu_resp_bits_btb_taken),
    .io_cpu_resp_bits_btb_bridx(frontend_io_cpu_resp_bits_btb_bridx),
    .io_cpu_resp_bits_btb_entry(frontend_io_cpu_resp_bits_btb_entry),
    .io_cpu_resp_bits_btb_bht_history(frontend_io_cpu_resp_bits_btb_bht_history),
    .io_cpu_resp_bits_pc(frontend_io_cpu_resp_bits_pc),
    .io_cpu_resp_bits_data(frontend_io_cpu_resp_bits_data),
    .io_cpu_resp_bits_xcpt_pf_inst(frontend_io_cpu_resp_bits_xcpt_pf_inst),
    .io_cpu_resp_bits_xcpt_ae_inst(frontend_io_cpu_resp_bits_xcpt_ae_inst),
    .io_cpu_resp_bits_replay(frontend_io_cpu_resp_bits_replay),
    .io_cpu_btb_update_valid(frontend_io_cpu_btb_update_valid),
    .io_cpu_btb_update_bits_prediction_entry(frontend_io_cpu_btb_update_bits_prediction_entry),
    .io_cpu_btb_update_bits_pc(frontend_io_cpu_btb_update_bits_pc),
    .io_cpu_btb_update_bits_isValid(frontend_io_cpu_btb_update_bits_isValid),
    .io_cpu_btb_update_bits_br_pc(frontend_io_cpu_btb_update_bits_br_pc),
    .io_cpu_btb_update_bits_cfiType(frontend_io_cpu_btb_update_bits_cfiType),
    .io_cpu_bht_update_valid(frontend_io_cpu_bht_update_valid),
    .io_cpu_bht_update_bits_prediction_history(frontend_io_cpu_bht_update_bits_prediction_history),
    .io_cpu_bht_update_bits_pc(frontend_io_cpu_bht_update_bits_pc),
    .io_cpu_bht_update_bits_branch(frontend_io_cpu_bht_update_bits_branch),
    .io_cpu_bht_update_bits_taken(frontend_io_cpu_bht_update_bits_taken),
    .io_cpu_bht_update_bits_mispredict(frontend_io_cpu_bht_update_bits_mispredict),
    .io_cpu_flush_icache(frontend_io_cpu_flush_icache),
    .io_cpu_npc(frontend_io_cpu_npc),
    .io_ptw_req_ready(frontend_io_ptw_req_ready),
    .io_ptw_req_valid(frontend_io_ptw_req_valid),
    .io_ptw_req_bits_valid(frontend_io_ptw_req_bits_valid),
    .io_ptw_req_bits_bits_addr(frontend_io_ptw_req_bits_bits_addr),
    .io_ptw_resp_valid(frontend_io_ptw_resp_valid),
    .io_ptw_resp_bits_ae(frontend_io_ptw_resp_bits_ae),
    .io_ptw_resp_bits_pte_ppn(frontend_io_ptw_resp_bits_pte_ppn),
    .io_ptw_resp_bits_pte_d(frontend_io_ptw_resp_bits_pte_d),
    .io_ptw_resp_bits_pte_a(frontend_io_ptw_resp_bits_pte_a),
    .io_ptw_resp_bits_pte_g(frontend_io_ptw_resp_bits_pte_g),
    .io_ptw_resp_bits_pte_u(frontend_io_ptw_resp_bits_pte_u),
    .io_ptw_resp_bits_pte_x(frontend_io_ptw_resp_bits_pte_x),
    .io_ptw_resp_bits_pte_w(frontend_io_ptw_resp_bits_pte_w),
    .io_ptw_resp_bits_pte_r(frontend_io_ptw_resp_bits_pte_r),
    .io_ptw_resp_bits_pte_v(frontend_io_ptw_resp_bits_pte_v),
    .io_ptw_resp_bits_level(frontend_io_ptw_resp_bits_level),
    .io_ptw_resp_bits_homogeneous(frontend_io_ptw_resp_bits_homogeneous),
    .io_ptw_ptbr_mode(frontend_io_ptw_ptbr_mode),
    .io_ptw_status_debug(frontend_io_ptw_status_debug),
    .io_ptw_status_prv(frontend_io_ptw_status_prv),
    .io_ptw_pmp_0_cfg_l(frontend_io_ptw_pmp_0_cfg_l),
    .io_ptw_pmp_0_cfg_a(frontend_io_ptw_pmp_0_cfg_a),
    .io_ptw_pmp_0_cfg_x(frontend_io_ptw_pmp_0_cfg_x),
    .io_ptw_pmp_0_cfg_w(frontend_io_ptw_pmp_0_cfg_w),
    .io_ptw_pmp_0_cfg_r(frontend_io_ptw_pmp_0_cfg_r),
    .io_ptw_pmp_0_addr(frontend_io_ptw_pmp_0_addr),
    .io_ptw_pmp_0_mask(frontend_io_ptw_pmp_0_mask),
    .io_ptw_pmp_1_cfg_l(frontend_io_ptw_pmp_1_cfg_l),
    .io_ptw_pmp_1_cfg_a(frontend_io_ptw_pmp_1_cfg_a),
    .io_ptw_pmp_1_cfg_x(frontend_io_ptw_pmp_1_cfg_x),
    .io_ptw_pmp_1_cfg_w(frontend_io_ptw_pmp_1_cfg_w),
    .io_ptw_pmp_1_cfg_r(frontend_io_ptw_pmp_1_cfg_r),
    .io_ptw_pmp_1_addr(frontend_io_ptw_pmp_1_addr),
    .io_ptw_pmp_1_mask(frontend_io_ptw_pmp_1_mask),
    .io_ptw_pmp_2_cfg_l(frontend_io_ptw_pmp_2_cfg_l),
    .io_ptw_pmp_2_cfg_a(frontend_io_ptw_pmp_2_cfg_a),
    .io_ptw_pmp_2_cfg_x(frontend_io_ptw_pmp_2_cfg_x),
    .io_ptw_pmp_2_cfg_w(frontend_io_ptw_pmp_2_cfg_w),
    .io_ptw_pmp_2_cfg_r(frontend_io_ptw_pmp_2_cfg_r),
    .io_ptw_pmp_2_addr(frontend_io_ptw_pmp_2_addr),
    .io_ptw_pmp_2_mask(frontend_io_ptw_pmp_2_mask),
    .io_ptw_pmp_3_cfg_l(frontend_io_ptw_pmp_3_cfg_l),
    .io_ptw_pmp_3_cfg_a(frontend_io_ptw_pmp_3_cfg_a),
    .io_ptw_pmp_3_cfg_x(frontend_io_ptw_pmp_3_cfg_x),
    .io_ptw_pmp_3_cfg_w(frontend_io_ptw_pmp_3_cfg_w),
    .io_ptw_pmp_3_cfg_r(frontend_io_ptw_pmp_3_cfg_r),
    .io_ptw_pmp_3_addr(frontend_io_ptw_pmp_3_addr),
    .io_ptw_pmp_3_mask(frontend_io_ptw_pmp_3_mask),
    .io_ptw_pmp_4_cfg_l(frontend_io_ptw_pmp_4_cfg_l),
    .io_ptw_pmp_4_cfg_a(frontend_io_ptw_pmp_4_cfg_a),
    .io_ptw_pmp_4_cfg_x(frontend_io_ptw_pmp_4_cfg_x),
    .io_ptw_pmp_4_cfg_w(frontend_io_ptw_pmp_4_cfg_w),
    .io_ptw_pmp_4_cfg_r(frontend_io_ptw_pmp_4_cfg_r),
    .io_ptw_pmp_4_addr(frontend_io_ptw_pmp_4_addr),
    .io_ptw_pmp_4_mask(frontend_io_ptw_pmp_4_mask),
    .io_ptw_pmp_5_cfg_l(frontend_io_ptw_pmp_5_cfg_l),
    .io_ptw_pmp_5_cfg_a(frontend_io_ptw_pmp_5_cfg_a),
    .io_ptw_pmp_5_cfg_x(frontend_io_ptw_pmp_5_cfg_x),
    .io_ptw_pmp_5_cfg_w(frontend_io_ptw_pmp_5_cfg_w),
    .io_ptw_pmp_5_cfg_r(frontend_io_ptw_pmp_5_cfg_r),
    .io_ptw_pmp_5_addr(frontend_io_ptw_pmp_5_addr),
    .io_ptw_pmp_5_mask(frontend_io_ptw_pmp_5_mask),
    .io_ptw_pmp_6_cfg_l(frontend_io_ptw_pmp_6_cfg_l),
    .io_ptw_pmp_6_cfg_a(frontend_io_ptw_pmp_6_cfg_a),
    .io_ptw_pmp_6_cfg_x(frontend_io_ptw_pmp_6_cfg_x),
    .io_ptw_pmp_6_cfg_w(frontend_io_ptw_pmp_6_cfg_w),
    .io_ptw_pmp_6_cfg_r(frontend_io_ptw_pmp_6_cfg_r),
    .io_ptw_pmp_6_addr(frontend_io_ptw_pmp_6_addr),
    .io_ptw_pmp_6_mask(frontend_io_ptw_pmp_6_mask),
    .io_ptw_pmp_7_cfg_l(frontend_io_ptw_pmp_7_cfg_l),
    .io_ptw_pmp_7_cfg_a(frontend_io_ptw_pmp_7_cfg_a),
    .io_ptw_pmp_7_cfg_x(frontend_io_ptw_pmp_7_cfg_x),
    .io_ptw_pmp_7_cfg_w(frontend_io_ptw_pmp_7_cfg_w),
    .io_ptw_pmp_7_cfg_r(frontend_io_ptw_pmp_7_cfg_r),
    .io_ptw_pmp_7_addr(frontend_io_ptw_pmp_7_addr),
    .io_ptw_pmp_7_mask(frontend_io_ptw_pmp_7_mask),
    .io_ptw_customCSRs_csrs_0_value(frontend_io_ptw_customCSRs_csrs_0_value)
  );
  FPU fpuOpt ( // @[RocketTile.scala 206:62]
    .clock(fpuOpt_clock),
    .reset(fpuOpt_reset),
    .io_inst(fpuOpt_io_inst),
    .io_fromint_data(fpuOpt_io_fromint_data),
    .io_fcsr_rm(fpuOpt_io_fcsr_rm),
    .io_fcsr_flags_valid(fpuOpt_io_fcsr_flags_valid),
    .io_fcsr_flags_bits(fpuOpt_io_fcsr_flags_bits),
    .io_store_data(fpuOpt_io_store_data),
    .io_toint_data(fpuOpt_io_toint_data),
    .io_dmem_resp_val(fpuOpt_io_dmem_resp_val),
    .io_dmem_resp_type(fpuOpt_io_dmem_resp_type),
    .io_dmem_resp_tag(fpuOpt_io_dmem_resp_tag),
    .io_dmem_resp_data(fpuOpt_io_dmem_resp_data),
    .io_valid(fpuOpt_io_valid),
    .io_fcsr_rdy(fpuOpt_io_fcsr_rdy),
    .io_nack_mem(fpuOpt_io_nack_mem),
    .io_illegal_rm(fpuOpt_io_illegal_rm),
    .io_killx(fpuOpt_io_killx),
    .io_killm(fpuOpt_io_killm),
    .io_dec_wen(fpuOpt_io_dec_wen),
    .io_dec_ren1(fpuOpt_io_dec_ren1),
    .io_dec_ren2(fpuOpt_io_dec_ren2),
    .io_dec_ren3(fpuOpt_io_dec_ren3),
    .io_sboard_set(fpuOpt_io_sboard_set),
    .io_sboard_clr(fpuOpt_io_sboard_clr),
    .io_sboard_clra(fpuOpt_io_sboard_clra)
  );
  HellaCacheArbiter dcacheArb ( // @[HellaCache.scala 269:25]
    .clock(dcacheArb_clock),
    .io_requestor_0_req_ready(dcacheArb_io_requestor_0_req_ready),
    .io_requestor_0_req_valid(dcacheArb_io_requestor_0_req_valid),
    .io_requestor_0_req_bits_addr(dcacheArb_io_requestor_0_req_bits_addr),
    .io_requestor_0_s1_kill(dcacheArb_io_requestor_0_s1_kill),
    .io_requestor_0_s2_nack(dcacheArb_io_requestor_0_s2_nack),
    .io_requestor_0_resp_valid(dcacheArb_io_requestor_0_resp_valid),
    .io_requestor_0_resp_bits_data(dcacheArb_io_requestor_0_resp_bits_data),
    .io_requestor_0_s2_xcpt_ae_ld(dcacheArb_io_requestor_0_s2_xcpt_ae_ld),
    .io_requestor_1_req_ready(dcacheArb_io_requestor_1_req_ready),
    .io_requestor_1_req_valid(dcacheArb_io_requestor_1_req_valid),
    .io_requestor_1_req_bits_addr(dcacheArb_io_requestor_1_req_bits_addr),
    .io_requestor_1_req_bits_tag(dcacheArb_io_requestor_1_req_bits_tag),
    .io_requestor_1_req_bits_cmd(dcacheArb_io_requestor_1_req_bits_cmd),
    .io_requestor_1_req_bits_size(dcacheArb_io_requestor_1_req_bits_size),
    .io_requestor_1_req_bits_signed(dcacheArb_io_requestor_1_req_bits_signed),
    .io_requestor_1_req_bits_dprv(dcacheArb_io_requestor_1_req_bits_dprv),
    .io_requestor_1_s1_kill(dcacheArb_io_requestor_1_s1_kill),
    .io_requestor_1_s1_data_data(dcacheArb_io_requestor_1_s1_data_data),
    .io_requestor_1_s2_nack(dcacheArb_io_requestor_1_s2_nack),
    .io_requestor_1_resp_valid(dcacheArb_io_requestor_1_resp_valid),
    .io_requestor_1_resp_bits_tag(dcacheArb_io_requestor_1_resp_bits_tag),
    .io_requestor_1_resp_bits_size(dcacheArb_io_requestor_1_resp_bits_size),
    .io_requestor_1_resp_bits_data(dcacheArb_io_requestor_1_resp_bits_data),
    .io_requestor_1_resp_bits_replay(dcacheArb_io_requestor_1_resp_bits_replay),
    .io_requestor_1_resp_bits_has_data(dcacheArb_io_requestor_1_resp_bits_has_data),
    .io_requestor_1_resp_bits_data_word_bypass(dcacheArb_io_requestor_1_resp_bits_data_word_bypass),
    .io_requestor_1_replay_next(dcacheArb_io_requestor_1_replay_next),
    .io_requestor_1_s2_xcpt_ma_ld(dcacheArb_io_requestor_1_s2_xcpt_ma_ld),
    .io_requestor_1_s2_xcpt_ma_st(dcacheArb_io_requestor_1_s2_xcpt_ma_st),
    .io_requestor_1_s2_xcpt_pf_ld(dcacheArb_io_requestor_1_s2_xcpt_pf_ld),
    .io_requestor_1_s2_xcpt_pf_st(dcacheArb_io_requestor_1_s2_xcpt_pf_st),
    .io_requestor_1_s2_xcpt_ae_ld(dcacheArb_io_requestor_1_s2_xcpt_ae_ld),
    .io_requestor_1_s2_xcpt_ae_st(dcacheArb_io_requestor_1_s2_xcpt_ae_st),
    .io_requestor_1_ordered(dcacheArb_io_requestor_1_ordered),
    .io_requestor_1_perf_release(dcacheArb_io_requestor_1_perf_release),
    .io_requestor_1_perf_grant(dcacheArb_io_requestor_1_perf_grant),
    .io_mem_req_ready(dcacheArb_io_mem_req_ready),
    .io_mem_req_valid(dcacheArb_io_mem_req_valid),
    .io_mem_req_bits_addr(dcacheArb_io_mem_req_bits_addr),
    .io_mem_req_bits_tag(dcacheArb_io_mem_req_bits_tag),
    .io_mem_req_bits_cmd(dcacheArb_io_mem_req_bits_cmd),
    .io_mem_req_bits_size(dcacheArb_io_mem_req_bits_size),
    .io_mem_req_bits_signed(dcacheArb_io_mem_req_bits_signed),
    .io_mem_req_bits_dprv(dcacheArb_io_mem_req_bits_dprv),
    .io_mem_req_bits_phys(dcacheArb_io_mem_req_bits_phys),
    .io_mem_s1_kill(dcacheArb_io_mem_s1_kill),
    .io_mem_s1_data_data(dcacheArb_io_mem_s1_data_data),
    .io_mem_s2_nack(dcacheArb_io_mem_s2_nack),
    .io_mem_resp_valid(dcacheArb_io_mem_resp_valid),
    .io_mem_resp_bits_tag(dcacheArb_io_mem_resp_bits_tag),
    .io_mem_resp_bits_size(dcacheArb_io_mem_resp_bits_size),
    .io_mem_resp_bits_data(dcacheArb_io_mem_resp_bits_data),
    .io_mem_resp_bits_replay(dcacheArb_io_mem_resp_bits_replay),
    .io_mem_resp_bits_has_data(dcacheArb_io_mem_resp_bits_has_data),
    .io_mem_resp_bits_data_word_bypass(dcacheArb_io_mem_resp_bits_data_word_bypass),
    .io_mem_replay_next(dcacheArb_io_mem_replay_next),
    .io_mem_s2_xcpt_ma_ld(dcacheArb_io_mem_s2_xcpt_ma_ld),
    .io_mem_s2_xcpt_ma_st(dcacheArb_io_mem_s2_xcpt_ma_st),
    .io_mem_s2_xcpt_pf_ld(dcacheArb_io_mem_s2_xcpt_pf_ld),
    .io_mem_s2_xcpt_pf_st(dcacheArb_io_mem_s2_xcpt_pf_st),
    .io_mem_s2_xcpt_ae_ld(dcacheArb_io_mem_s2_xcpt_ae_ld),
    .io_mem_s2_xcpt_ae_st(dcacheArb_io_mem_s2_xcpt_ae_st),
    .io_mem_ordered(dcacheArb_io_mem_ordered),
    .io_mem_perf_release(dcacheArb_io_mem_perf_release),
    .io_mem_perf_grant(dcacheArb_io_mem_perf_grant)
  );
  PTW ptw ( // @[PTW.scala 402:19]
    .clock(ptw_clock),
    .reset(ptw_reset),
    .io_requestor_0_req_ready(ptw_io_requestor_0_req_ready),
    .io_requestor_0_req_valid(ptw_io_requestor_0_req_valid),
    .io_requestor_0_req_bits_bits_addr(ptw_io_requestor_0_req_bits_bits_addr),
    .io_requestor_0_resp_valid(ptw_io_requestor_0_resp_valid),
    .io_requestor_0_resp_bits_ae(ptw_io_requestor_0_resp_bits_ae),
    .io_requestor_0_resp_bits_pte_ppn(ptw_io_requestor_0_resp_bits_pte_ppn),
    .io_requestor_0_resp_bits_pte_d(ptw_io_requestor_0_resp_bits_pte_d),
    .io_requestor_0_resp_bits_pte_a(ptw_io_requestor_0_resp_bits_pte_a),
    .io_requestor_0_resp_bits_pte_g(ptw_io_requestor_0_resp_bits_pte_g),
    .io_requestor_0_resp_bits_pte_u(ptw_io_requestor_0_resp_bits_pte_u),
    .io_requestor_0_resp_bits_pte_x(ptw_io_requestor_0_resp_bits_pte_x),
    .io_requestor_0_resp_bits_pte_w(ptw_io_requestor_0_resp_bits_pte_w),
    .io_requestor_0_resp_bits_pte_r(ptw_io_requestor_0_resp_bits_pte_r),
    .io_requestor_0_resp_bits_pte_v(ptw_io_requestor_0_resp_bits_pte_v),
    .io_requestor_0_resp_bits_level(ptw_io_requestor_0_resp_bits_level),
    .io_requestor_0_resp_bits_homogeneous(ptw_io_requestor_0_resp_bits_homogeneous),
    .io_requestor_0_ptbr_mode(ptw_io_requestor_0_ptbr_mode),
    .io_requestor_0_status_debug(ptw_io_requestor_0_status_debug),
    .io_requestor_0_status_dprv(ptw_io_requestor_0_status_dprv),
    .io_requestor_0_status_mxr(ptw_io_requestor_0_status_mxr),
    .io_requestor_0_status_sum(ptw_io_requestor_0_status_sum),
    .io_requestor_0_pmp_0_cfg_l(ptw_io_requestor_0_pmp_0_cfg_l),
    .io_requestor_0_pmp_0_cfg_a(ptw_io_requestor_0_pmp_0_cfg_a),
    .io_requestor_0_pmp_0_cfg_x(ptw_io_requestor_0_pmp_0_cfg_x),
    .io_requestor_0_pmp_0_cfg_w(ptw_io_requestor_0_pmp_0_cfg_w),
    .io_requestor_0_pmp_0_cfg_r(ptw_io_requestor_0_pmp_0_cfg_r),
    .io_requestor_0_pmp_0_addr(ptw_io_requestor_0_pmp_0_addr),
    .io_requestor_0_pmp_0_mask(ptw_io_requestor_0_pmp_0_mask),
    .io_requestor_0_pmp_1_cfg_l(ptw_io_requestor_0_pmp_1_cfg_l),
    .io_requestor_0_pmp_1_cfg_a(ptw_io_requestor_0_pmp_1_cfg_a),
    .io_requestor_0_pmp_1_cfg_x(ptw_io_requestor_0_pmp_1_cfg_x),
    .io_requestor_0_pmp_1_cfg_w(ptw_io_requestor_0_pmp_1_cfg_w),
    .io_requestor_0_pmp_1_cfg_r(ptw_io_requestor_0_pmp_1_cfg_r),
    .io_requestor_0_pmp_1_addr(ptw_io_requestor_0_pmp_1_addr),
    .io_requestor_0_pmp_1_mask(ptw_io_requestor_0_pmp_1_mask),
    .io_requestor_0_pmp_2_cfg_l(ptw_io_requestor_0_pmp_2_cfg_l),
    .io_requestor_0_pmp_2_cfg_a(ptw_io_requestor_0_pmp_2_cfg_a),
    .io_requestor_0_pmp_2_cfg_x(ptw_io_requestor_0_pmp_2_cfg_x),
    .io_requestor_0_pmp_2_cfg_w(ptw_io_requestor_0_pmp_2_cfg_w),
    .io_requestor_0_pmp_2_cfg_r(ptw_io_requestor_0_pmp_2_cfg_r),
    .io_requestor_0_pmp_2_addr(ptw_io_requestor_0_pmp_2_addr),
    .io_requestor_0_pmp_2_mask(ptw_io_requestor_0_pmp_2_mask),
    .io_requestor_0_pmp_3_cfg_l(ptw_io_requestor_0_pmp_3_cfg_l),
    .io_requestor_0_pmp_3_cfg_a(ptw_io_requestor_0_pmp_3_cfg_a),
    .io_requestor_0_pmp_3_cfg_x(ptw_io_requestor_0_pmp_3_cfg_x),
    .io_requestor_0_pmp_3_cfg_w(ptw_io_requestor_0_pmp_3_cfg_w),
    .io_requestor_0_pmp_3_cfg_r(ptw_io_requestor_0_pmp_3_cfg_r),
    .io_requestor_0_pmp_3_addr(ptw_io_requestor_0_pmp_3_addr),
    .io_requestor_0_pmp_3_mask(ptw_io_requestor_0_pmp_3_mask),
    .io_requestor_0_pmp_4_cfg_l(ptw_io_requestor_0_pmp_4_cfg_l),
    .io_requestor_0_pmp_4_cfg_a(ptw_io_requestor_0_pmp_4_cfg_a),
    .io_requestor_0_pmp_4_cfg_x(ptw_io_requestor_0_pmp_4_cfg_x),
    .io_requestor_0_pmp_4_cfg_w(ptw_io_requestor_0_pmp_4_cfg_w),
    .io_requestor_0_pmp_4_cfg_r(ptw_io_requestor_0_pmp_4_cfg_r),
    .io_requestor_0_pmp_4_addr(ptw_io_requestor_0_pmp_4_addr),
    .io_requestor_0_pmp_4_mask(ptw_io_requestor_0_pmp_4_mask),
    .io_requestor_0_pmp_5_cfg_l(ptw_io_requestor_0_pmp_5_cfg_l),
    .io_requestor_0_pmp_5_cfg_a(ptw_io_requestor_0_pmp_5_cfg_a),
    .io_requestor_0_pmp_5_cfg_x(ptw_io_requestor_0_pmp_5_cfg_x),
    .io_requestor_0_pmp_5_cfg_w(ptw_io_requestor_0_pmp_5_cfg_w),
    .io_requestor_0_pmp_5_cfg_r(ptw_io_requestor_0_pmp_5_cfg_r),
    .io_requestor_0_pmp_5_addr(ptw_io_requestor_0_pmp_5_addr),
    .io_requestor_0_pmp_5_mask(ptw_io_requestor_0_pmp_5_mask),
    .io_requestor_0_pmp_6_cfg_l(ptw_io_requestor_0_pmp_6_cfg_l),
    .io_requestor_0_pmp_6_cfg_a(ptw_io_requestor_0_pmp_6_cfg_a),
    .io_requestor_0_pmp_6_cfg_x(ptw_io_requestor_0_pmp_6_cfg_x),
    .io_requestor_0_pmp_6_cfg_w(ptw_io_requestor_0_pmp_6_cfg_w),
    .io_requestor_0_pmp_6_cfg_r(ptw_io_requestor_0_pmp_6_cfg_r),
    .io_requestor_0_pmp_6_addr(ptw_io_requestor_0_pmp_6_addr),
    .io_requestor_0_pmp_6_mask(ptw_io_requestor_0_pmp_6_mask),
    .io_requestor_0_pmp_7_cfg_l(ptw_io_requestor_0_pmp_7_cfg_l),
    .io_requestor_0_pmp_7_cfg_a(ptw_io_requestor_0_pmp_7_cfg_a),
    .io_requestor_0_pmp_7_cfg_x(ptw_io_requestor_0_pmp_7_cfg_x),
    .io_requestor_0_pmp_7_cfg_w(ptw_io_requestor_0_pmp_7_cfg_w),
    .io_requestor_0_pmp_7_cfg_r(ptw_io_requestor_0_pmp_7_cfg_r),
    .io_requestor_0_pmp_7_addr(ptw_io_requestor_0_pmp_7_addr),
    .io_requestor_0_pmp_7_mask(ptw_io_requestor_0_pmp_7_mask),
    .io_requestor_1_req_ready(ptw_io_requestor_1_req_ready),
    .io_requestor_1_req_valid(ptw_io_requestor_1_req_valid),
    .io_requestor_1_req_bits_valid(ptw_io_requestor_1_req_bits_valid),
    .io_requestor_1_req_bits_bits_addr(ptw_io_requestor_1_req_bits_bits_addr),
    .io_requestor_1_resp_valid(ptw_io_requestor_1_resp_valid),
    .io_requestor_1_resp_bits_ae(ptw_io_requestor_1_resp_bits_ae),
    .io_requestor_1_resp_bits_pte_ppn(ptw_io_requestor_1_resp_bits_pte_ppn),
    .io_requestor_1_resp_bits_pte_d(ptw_io_requestor_1_resp_bits_pte_d),
    .io_requestor_1_resp_bits_pte_a(ptw_io_requestor_1_resp_bits_pte_a),
    .io_requestor_1_resp_bits_pte_g(ptw_io_requestor_1_resp_bits_pte_g),
    .io_requestor_1_resp_bits_pte_u(ptw_io_requestor_1_resp_bits_pte_u),
    .io_requestor_1_resp_bits_pte_x(ptw_io_requestor_1_resp_bits_pte_x),
    .io_requestor_1_resp_bits_pte_w(ptw_io_requestor_1_resp_bits_pte_w),
    .io_requestor_1_resp_bits_pte_r(ptw_io_requestor_1_resp_bits_pte_r),
    .io_requestor_1_resp_bits_pte_v(ptw_io_requestor_1_resp_bits_pte_v),
    .io_requestor_1_resp_bits_level(ptw_io_requestor_1_resp_bits_level),
    .io_requestor_1_resp_bits_homogeneous(ptw_io_requestor_1_resp_bits_homogeneous),
    .io_requestor_1_ptbr_mode(ptw_io_requestor_1_ptbr_mode),
    .io_requestor_1_status_debug(ptw_io_requestor_1_status_debug),
    .io_requestor_1_status_prv(ptw_io_requestor_1_status_prv),
    .io_requestor_1_pmp_0_cfg_l(ptw_io_requestor_1_pmp_0_cfg_l),
    .io_requestor_1_pmp_0_cfg_a(ptw_io_requestor_1_pmp_0_cfg_a),
    .io_requestor_1_pmp_0_cfg_x(ptw_io_requestor_1_pmp_0_cfg_x),
    .io_requestor_1_pmp_0_cfg_w(ptw_io_requestor_1_pmp_0_cfg_w),
    .io_requestor_1_pmp_0_cfg_r(ptw_io_requestor_1_pmp_0_cfg_r),
    .io_requestor_1_pmp_0_addr(ptw_io_requestor_1_pmp_0_addr),
    .io_requestor_1_pmp_0_mask(ptw_io_requestor_1_pmp_0_mask),
    .io_requestor_1_pmp_1_cfg_l(ptw_io_requestor_1_pmp_1_cfg_l),
    .io_requestor_1_pmp_1_cfg_a(ptw_io_requestor_1_pmp_1_cfg_a),
    .io_requestor_1_pmp_1_cfg_x(ptw_io_requestor_1_pmp_1_cfg_x),
    .io_requestor_1_pmp_1_cfg_w(ptw_io_requestor_1_pmp_1_cfg_w),
    .io_requestor_1_pmp_1_cfg_r(ptw_io_requestor_1_pmp_1_cfg_r),
    .io_requestor_1_pmp_1_addr(ptw_io_requestor_1_pmp_1_addr),
    .io_requestor_1_pmp_1_mask(ptw_io_requestor_1_pmp_1_mask),
    .io_requestor_1_pmp_2_cfg_l(ptw_io_requestor_1_pmp_2_cfg_l),
    .io_requestor_1_pmp_2_cfg_a(ptw_io_requestor_1_pmp_2_cfg_a),
    .io_requestor_1_pmp_2_cfg_x(ptw_io_requestor_1_pmp_2_cfg_x),
    .io_requestor_1_pmp_2_cfg_w(ptw_io_requestor_1_pmp_2_cfg_w),
    .io_requestor_1_pmp_2_cfg_r(ptw_io_requestor_1_pmp_2_cfg_r),
    .io_requestor_1_pmp_2_addr(ptw_io_requestor_1_pmp_2_addr),
    .io_requestor_1_pmp_2_mask(ptw_io_requestor_1_pmp_2_mask),
    .io_requestor_1_pmp_3_cfg_l(ptw_io_requestor_1_pmp_3_cfg_l),
    .io_requestor_1_pmp_3_cfg_a(ptw_io_requestor_1_pmp_3_cfg_a),
    .io_requestor_1_pmp_3_cfg_x(ptw_io_requestor_1_pmp_3_cfg_x),
    .io_requestor_1_pmp_3_cfg_w(ptw_io_requestor_1_pmp_3_cfg_w),
    .io_requestor_1_pmp_3_cfg_r(ptw_io_requestor_1_pmp_3_cfg_r),
    .io_requestor_1_pmp_3_addr(ptw_io_requestor_1_pmp_3_addr),
    .io_requestor_1_pmp_3_mask(ptw_io_requestor_1_pmp_3_mask),
    .io_requestor_1_pmp_4_cfg_l(ptw_io_requestor_1_pmp_4_cfg_l),
    .io_requestor_1_pmp_4_cfg_a(ptw_io_requestor_1_pmp_4_cfg_a),
    .io_requestor_1_pmp_4_cfg_x(ptw_io_requestor_1_pmp_4_cfg_x),
    .io_requestor_1_pmp_4_cfg_w(ptw_io_requestor_1_pmp_4_cfg_w),
    .io_requestor_1_pmp_4_cfg_r(ptw_io_requestor_1_pmp_4_cfg_r),
    .io_requestor_1_pmp_4_addr(ptw_io_requestor_1_pmp_4_addr),
    .io_requestor_1_pmp_4_mask(ptw_io_requestor_1_pmp_4_mask),
    .io_requestor_1_pmp_5_cfg_l(ptw_io_requestor_1_pmp_5_cfg_l),
    .io_requestor_1_pmp_5_cfg_a(ptw_io_requestor_1_pmp_5_cfg_a),
    .io_requestor_1_pmp_5_cfg_x(ptw_io_requestor_1_pmp_5_cfg_x),
    .io_requestor_1_pmp_5_cfg_w(ptw_io_requestor_1_pmp_5_cfg_w),
    .io_requestor_1_pmp_5_cfg_r(ptw_io_requestor_1_pmp_5_cfg_r),
    .io_requestor_1_pmp_5_addr(ptw_io_requestor_1_pmp_5_addr),
    .io_requestor_1_pmp_5_mask(ptw_io_requestor_1_pmp_5_mask),
    .io_requestor_1_pmp_6_cfg_l(ptw_io_requestor_1_pmp_6_cfg_l),
    .io_requestor_1_pmp_6_cfg_a(ptw_io_requestor_1_pmp_6_cfg_a),
    .io_requestor_1_pmp_6_cfg_x(ptw_io_requestor_1_pmp_6_cfg_x),
    .io_requestor_1_pmp_6_cfg_w(ptw_io_requestor_1_pmp_6_cfg_w),
    .io_requestor_1_pmp_6_cfg_r(ptw_io_requestor_1_pmp_6_cfg_r),
    .io_requestor_1_pmp_6_addr(ptw_io_requestor_1_pmp_6_addr),
    .io_requestor_1_pmp_6_mask(ptw_io_requestor_1_pmp_6_mask),
    .io_requestor_1_pmp_7_cfg_l(ptw_io_requestor_1_pmp_7_cfg_l),
    .io_requestor_1_pmp_7_cfg_a(ptw_io_requestor_1_pmp_7_cfg_a),
    .io_requestor_1_pmp_7_cfg_x(ptw_io_requestor_1_pmp_7_cfg_x),
    .io_requestor_1_pmp_7_cfg_w(ptw_io_requestor_1_pmp_7_cfg_w),
    .io_requestor_1_pmp_7_cfg_r(ptw_io_requestor_1_pmp_7_cfg_r),
    .io_requestor_1_pmp_7_addr(ptw_io_requestor_1_pmp_7_addr),
    .io_requestor_1_pmp_7_mask(ptw_io_requestor_1_pmp_7_mask),
    .io_requestor_1_customCSRs_csrs_0_value(ptw_io_requestor_1_customCSRs_csrs_0_value),
    .io_mem_req_ready(ptw_io_mem_req_ready),
    .io_mem_req_valid(ptw_io_mem_req_valid),
    .io_mem_req_bits_addr(ptw_io_mem_req_bits_addr),
    .io_mem_s1_kill(ptw_io_mem_s1_kill),
    .io_mem_s2_nack(ptw_io_mem_s2_nack),
    .io_mem_resp_valid(ptw_io_mem_resp_valid),
    .io_mem_resp_bits_data(ptw_io_mem_resp_bits_data),
    .io_mem_s2_xcpt_ae_ld(ptw_io_mem_s2_xcpt_ae_ld),
    .io_dpath_ptbr_mode(ptw_io_dpath_ptbr_mode),
    .io_dpath_ptbr_ppn(ptw_io_dpath_ptbr_ppn),
    .io_dpath_sfence_valid(ptw_io_dpath_sfence_valid),
    .io_dpath_sfence_bits_rs1(ptw_io_dpath_sfence_bits_rs1),
    .io_dpath_status_debug(ptw_io_dpath_status_debug),
    .io_dpath_status_dprv(ptw_io_dpath_status_dprv),
    .io_dpath_status_prv(ptw_io_dpath_status_prv),
    .io_dpath_status_mxr(ptw_io_dpath_status_mxr),
    .io_dpath_status_sum(ptw_io_dpath_status_sum),
    .io_dpath_pmp_0_cfg_l(ptw_io_dpath_pmp_0_cfg_l),
    .io_dpath_pmp_0_cfg_a(ptw_io_dpath_pmp_0_cfg_a),
    .io_dpath_pmp_0_cfg_x(ptw_io_dpath_pmp_0_cfg_x),
    .io_dpath_pmp_0_cfg_w(ptw_io_dpath_pmp_0_cfg_w),
    .io_dpath_pmp_0_cfg_r(ptw_io_dpath_pmp_0_cfg_r),
    .io_dpath_pmp_0_addr(ptw_io_dpath_pmp_0_addr),
    .io_dpath_pmp_0_mask(ptw_io_dpath_pmp_0_mask),
    .io_dpath_pmp_1_cfg_l(ptw_io_dpath_pmp_1_cfg_l),
    .io_dpath_pmp_1_cfg_a(ptw_io_dpath_pmp_1_cfg_a),
    .io_dpath_pmp_1_cfg_x(ptw_io_dpath_pmp_1_cfg_x),
    .io_dpath_pmp_1_cfg_w(ptw_io_dpath_pmp_1_cfg_w),
    .io_dpath_pmp_1_cfg_r(ptw_io_dpath_pmp_1_cfg_r),
    .io_dpath_pmp_1_addr(ptw_io_dpath_pmp_1_addr),
    .io_dpath_pmp_1_mask(ptw_io_dpath_pmp_1_mask),
    .io_dpath_pmp_2_cfg_l(ptw_io_dpath_pmp_2_cfg_l),
    .io_dpath_pmp_2_cfg_a(ptw_io_dpath_pmp_2_cfg_a),
    .io_dpath_pmp_2_cfg_x(ptw_io_dpath_pmp_2_cfg_x),
    .io_dpath_pmp_2_cfg_w(ptw_io_dpath_pmp_2_cfg_w),
    .io_dpath_pmp_2_cfg_r(ptw_io_dpath_pmp_2_cfg_r),
    .io_dpath_pmp_2_addr(ptw_io_dpath_pmp_2_addr),
    .io_dpath_pmp_2_mask(ptw_io_dpath_pmp_2_mask),
    .io_dpath_pmp_3_cfg_l(ptw_io_dpath_pmp_3_cfg_l),
    .io_dpath_pmp_3_cfg_a(ptw_io_dpath_pmp_3_cfg_a),
    .io_dpath_pmp_3_cfg_x(ptw_io_dpath_pmp_3_cfg_x),
    .io_dpath_pmp_3_cfg_w(ptw_io_dpath_pmp_3_cfg_w),
    .io_dpath_pmp_3_cfg_r(ptw_io_dpath_pmp_3_cfg_r),
    .io_dpath_pmp_3_addr(ptw_io_dpath_pmp_3_addr),
    .io_dpath_pmp_3_mask(ptw_io_dpath_pmp_3_mask),
    .io_dpath_pmp_4_cfg_l(ptw_io_dpath_pmp_4_cfg_l),
    .io_dpath_pmp_4_cfg_a(ptw_io_dpath_pmp_4_cfg_a),
    .io_dpath_pmp_4_cfg_x(ptw_io_dpath_pmp_4_cfg_x),
    .io_dpath_pmp_4_cfg_w(ptw_io_dpath_pmp_4_cfg_w),
    .io_dpath_pmp_4_cfg_r(ptw_io_dpath_pmp_4_cfg_r),
    .io_dpath_pmp_4_addr(ptw_io_dpath_pmp_4_addr),
    .io_dpath_pmp_4_mask(ptw_io_dpath_pmp_4_mask),
    .io_dpath_pmp_5_cfg_l(ptw_io_dpath_pmp_5_cfg_l),
    .io_dpath_pmp_5_cfg_a(ptw_io_dpath_pmp_5_cfg_a),
    .io_dpath_pmp_5_cfg_x(ptw_io_dpath_pmp_5_cfg_x),
    .io_dpath_pmp_5_cfg_w(ptw_io_dpath_pmp_5_cfg_w),
    .io_dpath_pmp_5_cfg_r(ptw_io_dpath_pmp_5_cfg_r),
    .io_dpath_pmp_5_addr(ptw_io_dpath_pmp_5_addr),
    .io_dpath_pmp_5_mask(ptw_io_dpath_pmp_5_mask),
    .io_dpath_pmp_6_cfg_l(ptw_io_dpath_pmp_6_cfg_l),
    .io_dpath_pmp_6_cfg_a(ptw_io_dpath_pmp_6_cfg_a),
    .io_dpath_pmp_6_cfg_x(ptw_io_dpath_pmp_6_cfg_x),
    .io_dpath_pmp_6_cfg_w(ptw_io_dpath_pmp_6_cfg_w),
    .io_dpath_pmp_6_cfg_r(ptw_io_dpath_pmp_6_cfg_r),
    .io_dpath_pmp_6_addr(ptw_io_dpath_pmp_6_addr),
    .io_dpath_pmp_6_mask(ptw_io_dpath_pmp_6_mask),
    .io_dpath_pmp_7_cfg_l(ptw_io_dpath_pmp_7_cfg_l),
    .io_dpath_pmp_7_cfg_a(ptw_io_dpath_pmp_7_cfg_a),
    .io_dpath_pmp_7_cfg_x(ptw_io_dpath_pmp_7_cfg_x),
    .io_dpath_pmp_7_cfg_w(ptw_io_dpath_pmp_7_cfg_w),
    .io_dpath_pmp_7_cfg_r(ptw_io_dpath_pmp_7_cfg_r),
    .io_dpath_pmp_7_addr(ptw_io_dpath_pmp_7_addr),
    .io_dpath_pmp_7_mask(ptw_io_dpath_pmp_7_mask),
    .io_dpath_customCSRs_csrs_0_value(ptw_io_dpath_customCSRs_csrs_0_value)
  );
  Rocket core ( // @[RocketTile.scala 138:20]
    .clock(core_clock),
    .reset(core_reset),
    .io_hartid(core_io_hartid),
    .io_interrupts_debug(core_io_interrupts_debug),
    .io_interrupts_mtip(core_io_interrupts_mtip),
    .io_interrupts_msip(core_io_interrupts_msip),
    .io_interrupts_meip(core_io_interrupts_meip),
    .io_interrupts_seip(core_io_interrupts_seip),
    .io_imem_might_request(core_io_imem_might_request),
    .io_imem_req_valid(core_io_imem_req_valid),
    .io_imem_req_bits_pc(core_io_imem_req_bits_pc),
    .io_imem_req_bits_speculative(core_io_imem_req_bits_speculative),
    .io_imem_sfence_valid(core_io_imem_sfence_valid),
    .io_imem_sfence_bits_rs1(core_io_imem_sfence_bits_rs1),
    .io_imem_sfence_bits_rs2(core_io_imem_sfence_bits_rs2),
    .io_imem_sfence_bits_addr(core_io_imem_sfence_bits_addr),
    .io_imem_resp_ready(core_io_imem_resp_ready),
    .io_imem_resp_valid(core_io_imem_resp_valid),
    .io_imem_resp_bits_btb_taken(core_io_imem_resp_bits_btb_taken),
    .io_imem_resp_bits_btb_bridx(core_io_imem_resp_bits_btb_bridx),
    .io_imem_resp_bits_btb_entry(core_io_imem_resp_bits_btb_entry),
    .io_imem_resp_bits_btb_bht_history(core_io_imem_resp_bits_btb_bht_history),
    .io_imem_resp_bits_pc(core_io_imem_resp_bits_pc),
    .io_imem_resp_bits_data(core_io_imem_resp_bits_data),
    .io_imem_resp_bits_xcpt_pf_inst(core_io_imem_resp_bits_xcpt_pf_inst),
    .io_imem_resp_bits_xcpt_ae_inst(core_io_imem_resp_bits_xcpt_ae_inst),
    .io_imem_resp_bits_replay(core_io_imem_resp_bits_replay),
    .io_imem_btb_update_valid(core_io_imem_btb_update_valid),
    .io_imem_btb_update_bits_prediction_entry(core_io_imem_btb_update_bits_prediction_entry),
    .io_imem_btb_update_bits_pc(core_io_imem_btb_update_bits_pc),
    .io_imem_btb_update_bits_isValid(core_io_imem_btb_update_bits_isValid),
    .io_imem_btb_update_bits_br_pc(core_io_imem_btb_update_bits_br_pc),
    .io_imem_btb_update_bits_cfiType(core_io_imem_btb_update_bits_cfiType),
    .io_imem_bht_update_valid(core_io_imem_bht_update_valid),
    .io_imem_bht_update_bits_prediction_history(core_io_imem_bht_update_bits_prediction_history),
    .io_imem_bht_update_bits_pc(core_io_imem_bht_update_bits_pc),
    .io_imem_bht_update_bits_branch(core_io_imem_bht_update_bits_branch),
    .io_imem_bht_update_bits_taken(core_io_imem_bht_update_bits_taken),
    .io_imem_bht_update_bits_mispredict(core_io_imem_bht_update_bits_mispredict),
    .io_imem_flush_icache(core_io_imem_flush_icache),
    .io_dmem_req_ready(core_io_dmem_req_ready),
    .io_dmem_req_valid(core_io_dmem_req_valid),
    .io_dmem_req_bits_addr(core_io_dmem_req_bits_addr),
    .io_dmem_req_bits_tag(core_io_dmem_req_bits_tag),
    .io_dmem_req_bits_cmd(core_io_dmem_req_bits_cmd),
    .io_dmem_req_bits_size(core_io_dmem_req_bits_size),
    .io_dmem_req_bits_signed(core_io_dmem_req_bits_signed),
    .io_dmem_req_bits_dprv(core_io_dmem_req_bits_dprv),
    .io_dmem_s1_kill(core_io_dmem_s1_kill),
    .io_dmem_s1_data_data(core_io_dmem_s1_data_data),
    .io_dmem_s2_nack(core_io_dmem_s2_nack),
    .io_dmem_resp_valid(core_io_dmem_resp_valid),
    .io_dmem_resp_bits_tag(core_io_dmem_resp_bits_tag),
    .io_dmem_resp_bits_size(core_io_dmem_resp_bits_size),
    .io_dmem_resp_bits_data(core_io_dmem_resp_bits_data),
    .io_dmem_resp_bits_replay(core_io_dmem_resp_bits_replay),
    .io_dmem_resp_bits_has_data(core_io_dmem_resp_bits_has_data),
    .io_dmem_resp_bits_data_word_bypass(core_io_dmem_resp_bits_data_word_bypass),
    .io_dmem_replay_next(core_io_dmem_replay_next),
    .io_dmem_s2_xcpt_ma_ld(core_io_dmem_s2_xcpt_ma_ld),
    .io_dmem_s2_xcpt_ma_st(core_io_dmem_s2_xcpt_ma_st),
    .io_dmem_s2_xcpt_pf_ld(core_io_dmem_s2_xcpt_pf_ld),
    .io_dmem_s2_xcpt_pf_st(core_io_dmem_s2_xcpt_pf_st),
    .io_dmem_s2_xcpt_ae_ld(core_io_dmem_s2_xcpt_ae_ld),
    .io_dmem_s2_xcpt_ae_st(core_io_dmem_s2_xcpt_ae_st),
    .io_dmem_ordered(core_io_dmem_ordered),
    .io_dmem_perf_release(core_io_dmem_perf_release),
    .io_dmem_perf_grant(core_io_dmem_perf_grant),
    .io_ptw_ptbr_mode(core_io_ptw_ptbr_mode),
    .io_ptw_ptbr_ppn(core_io_ptw_ptbr_ppn),
    .io_ptw_sfence_valid(core_io_ptw_sfence_valid),
    .io_ptw_sfence_bits_rs1(core_io_ptw_sfence_bits_rs1),
    .io_ptw_status_debug(core_io_ptw_status_debug),
    .io_ptw_status_dprv(core_io_ptw_status_dprv),
    .io_ptw_status_prv(core_io_ptw_status_prv),
    .io_ptw_status_mxr(core_io_ptw_status_mxr),
    .io_ptw_status_sum(core_io_ptw_status_sum),
    .io_ptw_pmp_0_cfg_l(core_io_ptw_pmp_0_cfg_l),
    .io_ptw_pmp_0_cfg_a(core_io_ptw_pmp_0_cfg_a),
    .io_ptw_pmp_0_cfg_x(core_io_ptw_pmp_0_cfg_x),
    .io_ptw_pmp_0_cfg_w(core_io_ptw_pmp_0_cfg_w),
    .io_ptw_pmp_0_cfg_r(core_io_ptw_pmp_0_cfg_r),
    .io_ptw_pmp_0_addr(core_io_ptw_pmp_0_addr),
    .io_ptw_pmp_0_mask(core_io_ptw_pmp_0_mask),
    .io_ptw_pmp_1_cfg_l(core_io_ptw_pmp_1_cfg_l),
    .io_ptw_pmp_1_cfg_a(core_io_ptw_pmp_1_cfg_a),
    .io_ptw_pmp_1_cfg_x(core_io_ptw_pmp_1_cfg_x),
    .io_ptw_pmp_1_cfg_w(core_io_ptw_pmp_1_cfg_w),
    .io_ptw_pmp_1_cfg_r(core_io_ptw_pmp_1_cfg_r),
    .io_ptw_pmp_1_addr(core_io_ptw_pmp_1_addr),
    .io_ptw_pmp_1_mask(core_io_ptw_pmp_1_mask),
    .io_ptw_pmp_2_cfg_l(core_io_ptw_pmp_2_cfg_l),
    .io_ptw_pmp_2_cfg_a(core_io_ptw_pmp_2_cfg_a),
    .io_ptw_pmp_2_cfg_x(core_io_ptw_pmp_2_cfg_x),
    .io_ptw_pmp_2_cfg_w(core_io_ptw_pmp_2_cfg_w),
    .io_ptw_pmp_2_cfg_r(core_io_ptw_pmp_2_cfg_r),
    .io_ptw_pmp_2_addr(core_io_ptw_pmp_2_addr),
    .io_ptw_pmp_2_mask(core_io_ptw_pmp_2_mask),
    .io_ptw_pmp_3_cfg_l(core_io_ptw_pmp_3_cfg_l),
    .io_ptw_pmp_3_cfg_a(core_io_ptw_pmp_3_cfg_a),
    .io_ptw_pmp_3_cfg_x(core_io_ptw_pmp_3_cfg_x),
    .io_ptw_pmp_3_cfg_w(core_io_ptw_pmp_3_cfg_w),
    .io_ptw_pmp_3_cfg_r(core_io_ptw_pmp_3_cfg_r),
    .io_ptw_pmp_3_addr(core_io_ptw_pmp_3_addr),
    .io_ptw_pmp_3_mask(core_io_ptw_pmp_3_mask),
    .io_ptw_pmp_4_cfg_l(core_io_ptw_pmp_4_cfg_l),
    .io_ptw_pmp_4_cfg_a(core_io_ptw_pmp_4_cfg_a),
    .io_ptw_pmp_4_cfg_x(core_io_ptw_pmp_4_cfg_x),
    .io_ptw_pmp_4_cfg_w(core_io_ptw_pmp_4_cfg_w),
    .io_ptw_pmp_4_cfg_r(core_io_ptw_pmp_4_cfg_r),
    .io_ptw_pmp_4_addr(core_io_ptw_pmp_4_addr),
    .io_ptw_pmp_4_mask(core_io_ptw_pmp_4_mask),
    .io_ptw_pmp_5_cfg_l(core_io_ptw_pmp_5_cfg_l),
    .io_ptw_pmp_5_cfg_a(core_io_ptw_pmp_5_cfg_a),
    .io_ptw_pmp_5_cfg_x(core_io_ptw_pmp_5_cfg_x),
    .io_ptw_pmp_5_cfg_w(core_io_ptw_pmp_5_cfg_w),
    .io_ptw_pmp_5_cfg_r(core_io_ptw_pmp_5_cfg_r),
    .io_ptw_pmp_5_addr(core_io_ptw_pmp_5_addr),
    .io_ptw_pmp_5_mask(core_io_ptw_pmp_5_mask),
    .io_ptw_pmp_6_cfg_l(core_io_ptw_pmp_6_cfg_l),
    .io_ptw_pmp_6_cfg_a(core_io_ptw_pmp_6_cfg_a),
    .io_ptw_pmp_6_cfg_x(core_io_ptw_pmp_6_cfg_x),
    .io_ptw_pmp_6_cfg_w(core_io_ptw_pmp_6_cfg_w),
    .io_ptw_pmp_6_cfg_r(core_io_ptw_pmp_6_cfg_r),
    .io_ptw_pmp_6_addr(core_io_ptw_pmp_6_addr),
    .io_ptw_pmp_6_mask(core_io_ptw_pmp_6_mask),
    .io_ptw_pmp_7_cfg_l(core_io_ptw_pmp_7_cfg_l),
    .io_ptw_pmp_7_cfg_a(core_io_ptw_pmp_7_cfg_a),
    .io_ptw_pmp_7_cfg_x(core_io_ptw_pmp_7_cfg_x),
    .io_ptw_pmp_7_cfg_w(core_io_ptw_pmp_7_cfg_w),
    .io_ptw_pmp_7_cfg_r(core_io_ptw_pmp_7_cfg_r),
    .io_ptw_pmp_7_addr(core_io_ptw_pmp_7_addr),
    .io_ptw_pmp_7_mask(core_io_ptw_pmp_7_mask),
    .io_ptw_customCSRs_csrs_0_value(core_io_ptw_customCSRs_csrs_0_value),
    .io_fpu_inst(core_io_fpu_inst),
    .io_fpu_fromint_data(core_io_fpu_fromint_data),
    .io_fpu_fcsr_rm(core_io_fpu_fcsr_rm),
    .io_fpu_fcsr_flags_valid(core_io_fpu_fcsr_flags_valid),
    .io_fpu_fcsr_flags_bits(core_io_fpu_fcsr_flags_bits),
    .io_fpu_store_data(core_io_fpu_store_data),
    .io_fpu_toint_data(core_io_fpu_toint_data),
    .io_fpu_dmem_resp_val(core_io_fpu_dmem_resp_val),
    .io_fpu_dmem_resp_type(core_io_fpu_dmem_resp_type),
    .io_fpu_dmem_resp_tag(core_io_fpu_dmem_resp_tag),
    .io_fpu_dmem_resp_data(core_io_fpu_dmem_resp_data),
    .io_fpu_valid(core_io_fpu_valid),
    .io_fpu_fcsr_rdy(core_io_fpu_fcsr_rdy),
    .io_fpu_nack_mem(core_io_fpu_nack_mem),
    .io_fpu_illegal_rm(core_io_fpu_illegal_rm),
    .io_fpu_killx(core_io_fpu_killx),
    .io_fpu_killm(core_io_fpu_killm),
    .io_fpu_dec_wen(core_io_fpu_dec_wen),
    .io_fpu_dec_ren1(core_io_fpu_dec_ren1),
    .io_fpu_dec_ren2(core_io_fpu_dec_ren2),
    .io_fpu_dec_ren3(core_io_fpu_dec_ren3),
    .io_fpu_sboard_set(core_io_fpu_sboard_set),
    .io_fpu_sboard_clr(core_io_fpu_sboard_clr),
    .io_fpu_sboard_clra(core_io_fpu_sboard_clra)
  );
  assign broadcast_auto_out = broadcast_auto_in; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_tl_other_masters_out_a_valid = tlMasterXbar_auto_out_a_valid; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_other_masters_out_a_bits_opcode = tlMasterXbar_auto_out_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_other_masters_out_a_bits_param = tlMasterXbar_auto_out_a_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_other_masters_out_a_bits_size = tlMasterXbar_auto_out_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_other_masters_out_a_bits_source = tlMasterXbar_auto_out_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_other_masters_out_a_bits_address = tlMasterXbar_auto_out_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_other_masters_out_a_bits_mask = tlMasterXbar_auto_out_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_other_masters_out_a_bits_data = tlMasterXbar_auto_out_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_other_masters_out_a_bits_corrupt = tlMasterXbar_auto_out_a_bits_corrupt; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_other_masters_out_b_ready = tlMasterXbar_auto_out_b_ready; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_other_masters_out_c_valid = tlMasterXbar_auto_out_c_valid; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_other_masters_out_c_bits_opcode = tlMasterXbar_auto_out_c_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_other_masters_out_c_bits_param = tlMasterXbar_auto_out_c_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_other_masters_out_c_bits_size = tlMasterXbar_auto_out_c_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_other_masters_out_c_bits_source = tlMasterXbar_auto_out_c_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_other_masters_out_c_bits_address = tlMasterXbar_auto_out_c_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_other_masters_out_c_bits_data = tlMasterXbar_auto_out_c_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_other_masters_out_d_ready = tlMasterXbar_auto_out_d_ready; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_other_masters_out_e_valid = tlMasterXbar_auto_out_e_valid; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_other_masters_out_e_bits_sink = tlMasterXbar_auto_out_e_bits_sink; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign tlMasterXbar_clock = clock;
  assign tlMasterXbar_reset = reset;
  assign tlMasterXbar_auto_in_1_a_valid = frontend_auto_icache_master_out_a_valid; // @[LazyModule.scala 299:16]
  assign tlMasterXbar_auto_in_1_a_bits_address = frontend_auto_icache_master_out_a_bits_address; // @[LazyModule.scala 299:16]
  assign tlMasterXbar_auto_in_0_a_valid = dcache_auto_out_a_valid; // @[LazyModule.scala 299:16]
  assign tlMasterXbar_auto_in_0_a_bits_opcode = dcache_auto_out_a_bits_opcode; // @[LazyModule.scala 299:16]
  assign tlMasterXbar_auto_in_0_a_bits_param = dcache_auto_out_a_bits_param; // @[LazyModule.scala 299:16]
  assign tlMasterXbar_auto_in_0_a_bits_size = dcache_auto_out_a_bits_size; // @[LazyModule.scala 299:16]
  assign tlMasterXbar_auto_in_0_a_bits_source = dcache_auto_out_a_bits_source; // @[LazyModule.scala 299:16]
  assign tlMasterXbar_auto_in_0_a_bits_address = dcache_auto_out_a_bits_address; // @[LazyModule.scala 299:16]
  assign tlMasterXbar_auto_in_0_a_bits_mask = dcache_auto_out_a_bits_mask; // @[LazyModule.scala 299:16]
  assign tlMasterXbar_auto_in_0_a_bits_data = dcache_auto_out_a_bits_data; // @[LazyModule.scala 299:16]
  assign tlMasterXbar_auto_in_0_b_ready = dcache_auto_out_b_ready; // @[LazyModule.scala 299:16]
  assign tlMasterXbar_auto_in_0_c_valid = dcache_auto_out_c_valid; // @[LazyModule.scala 299:16]
  assign tlMasterXbar_auto_in_0_c_bits_opcode = dcache_auto_out_c_bits_opcode; // @[LazyModule.scala 299:16]
  assign tlMasterXbar_auto_in_0_c_bits_param = dcache_auto_out_c_bits_param; // @[LazyModule.scala 299:16]
  assign tlMasterXbar_auto_in_0_c_bits_size = dcache_auto_out_c_bits_size; // @[LazyModule.scala 299:16]
  assign tlMasterXbar_auto_in_0_c_bits_source = dcache_auto_out_c_bits_source; // @[LazyModule.scala 299:16]
  assign tlMasterXbar_auto_in_0_c_bits_address = dcache_auto_out_c_bits_address; // @[LazyModule.scala 299:16]
  assign tlMasterXbar_auto_in_0_c_bits_data = dcache_auto_out_c_bits_data; // @[LazyModule.scala 299:16]
  assign tlMasterXbar_auto_in_0_d_ready = dcache_auto_out_d_ready; // @[LazyModule.scala 299:16]
  assign tlMasterXbar_auto_in_0_e_valid = dcache_auto_out_e_valid; // @[LazyModule.scala 299:16]
  assign tlMasterXbar_auto_in_0_e_bits_sink = dcache_auto_out_e_bits_sink; // @[LazyModule.scala 299:16]
  assign tlMasterXbar_auto_out_a_ready = auto_tl_other_masters_out_a_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign tlMasterXbar_auto_out_b_valid = auto_tl_other_masters_out_b_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign tlMasterXbar_auto_out_b_bits_param = auto_tl_other_masters_out_b_bits_param; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign tlMasterXbar_auto_out_b_bits_size = auto_tl_other_masters_out_b_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign tlMasterXbar_auto_out_b_bits_source = auto_tl_other_masters_out_b_bits_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign tlMasterXbar_auto_out_b_bits_address = auto_tl_other_masters_out_b_bits_address; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign tlMasterXbar_auto_out_c_ready = auto_tl_other_masters_out_c_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign tlMasterXbar_auto_out_d_valid = auto_tl_other_masters_out_d_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign tlMasterXbar_auto_out_d_bits_opcode = auto_tl_other_masters_out_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign tlMasterXbar_auto_out_d_bits_param = auto_tl_other_masters_out_d_bits_param; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign tlMasterXbar_auto_out_d_bits_size = auto_tl_other_masters_out_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign tlMasterXbar_auto_out_d_bits_source = auto_tl_other_masters_out_d_bits_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign tlMasterXbar_auto_out_d_bits_sink = auto_tl_other_masters_out_d_bits_sink; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign tlMasterXbar_auto_out_d_bits_denied = auto_tl_other_masters_out_d_bits_denied; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign tlMasterXbar_auto_out_d_bits_data = auto_tl_other_masters_out_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign tlMasterXbar_auto_out_d_bits_corrupt = auto_tl_other_masters_out_d_bits_corrupt; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign tlMasterXbar_auto_out_e_ready = auto_tl_other_masters_out_e_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign intXbar_auto_int_in_3_0 = auto_int_local_in_3_0; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign intXbar_auto_int_in_2_0 = auto_int_local_in_2_0; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign intXbar_auto_int_in_1_0 = auto_int_local_in_1_0; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign intXbar_auto_int_in_1_1 = auto_int_local_in_1_1; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign intXbar_auto_int_in_0_0 = auto_int_local_in_0_0; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign broadcast_auto_in = auto_hartid_in; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign dcache_gated_clock = clock;
  assign dcache_reset = reset;
  assign dcache_auto_out_a_ready = tlMasterXbar_auto_in_0_a_ready; // @[LazyModule.scala 299:16]
  assign dcache_auto_out_b_valid = tlMasterXbar_auto_in_0_b_valid; // @[LazyModule.scala 299:16]
  assign dcache_auto_out_b_bits_param = tlMasterXbar_auto_in_0_b_bits_param; // @[LazyModule.scala 299:16]
  assign dcache_auto_out_b_bits_size = tlMasterXbar_auto_in_0_b_bits_size; // @[LazyModule.scala 299:16]
  assign dcache_auto_out_b_bits_source = tlMasterXbar_auto_in_0_b_bits_source; // @[LazyModule.scala 299:16]
  assign dcache_auto_out_b_bits_address = tlMasterXbar_auto_in_0_b_bits_address; // @[LazyModule.scala 299:16]
  assign dcache_auto_out_c_ready = tlMasterXbar_auto_in_0_c_ready; // @[LazyModule.scala 299:16]
  assign dcache_auto_out_d_valid = tlMasterXbar_auto_in_0_d_valid; // @[LazyModule.scala 299:16]
  assign dcache_auto_out_d_bits_opcode = tlMasterXbar_auto_in_0_d_bits_opcode; // @[LazyModule.scala 299:16]
  assign dcache_auto_out_d_bits_param = tlMasterXbar_auto_in_0_d_bits_param; // @[LazyModule.scala 299:16]
  assign dcache_auto_out_d_bits_size = tlMasterXbar_auto_in_0_d_bits_size; // @[LazyModule.scala 299:16]
  assign dcache_auto_out_d_bits_source = tlMasterXbar_auto_in_0_d_bits_source; // @[LazyModule.scala 299:16]
  assign dcache_auto_out_d_bits_sink = tlMasterXbar_auto_in_0_d_bits_sink; // @[LazyModule.scala 299:16]
  assign dcache_auto_out_d_bits_denied = tlMasterXbar_auto_in_0_d_bits_denied; // @[LazyModule.scala 299:16]
  assign dcache_auto_out_d_bits_data = tlMasterXbar_auto_in_0_d_bits_data; // @[LazyModule.scala 299:16]
  assign dcache_auto_out_e_ready = tlMasterXbar_auto_in_0_e_ready; // @[LazyModule.scala 299:16]
  assign dcache_io_cpu_req_valid = dcacheArb_io_mem_req_valid; // @[HellaCache.scala 270:30]
  assign dcache_io_cpu_req_bits_addr = dcacheArb_io_mem_req_bits_addr; // @[HellaCache.scala 270:30]
  assign dcache_io_cpu_req_bits_tag = dcacheArb_io_mem_req_bits_tag; // @[HellaCache.scala 270:30]
  assign dcache_io_cpu_req_bits_cmd = dcacheArb_io_mem_req_bits_cmd; // @[HellaCache.scala 270:30]
  assign dcache_io_cpu_req_bits_size = dcacheArb_io_mem_req_bits_size; // @[HellaCache.scala 270:30]
  assign dcache_io_cpu_req_bits_signed = dcacheArb_io_mem_req_bits_signed; // @[HellaCache.scala 270:30]
  assign dcache_io_cpu_req_bits_dprv = dcacheArb_io_mem_req_bits_dprv; // @[HellaCache.scala 270:30]
  assign dcache_io_cpu_req_bits_phys = dcacheArb_io_mem_req_bits_phys; // @[HellaCache.scala 270:30]
  assign dcache_io_cpu_s1_kill = dcacheArb_io_mem_s1_kill; // @[HellaCache.scala 270:30]
  assign dcache_io_cpu_s1_data_data = dcacheArb_io_mem_s1_data_data; // @[HellaCache.scala 270:30]
  assign dcache_io_cpu_s1_data_mask = 8'h0; // @[HellaCache.scala 270:30]
  assign dcache_io_ptw_req_ready = ptw_io_requestor_0_req_ready; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_resp_valid = ptw_io_requestor_0_resp_valid; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_resp_bits_ae = ptw_io_requestor_0_resp_bits_ae; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_resp_bits_pte_ppn = ptw_io_requestor_0_resp_bits_pte_ppn; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_resp_bits_pte_d = ptw_io_requestor_0_resp_bits_pte_d; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_resp_bits_pte_a = ptw_io_requestor_0_resp_bits_pte_a; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_resp_bits_pte_g = ptw_io_requestor_0_resp_bits_pte_g; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_resp_bits_pte_u = ptw_io_requestor_0_resp_bits_pte_u; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_resp_bits_pte_x = ptw_io_requestor_0_resp_bits_pte_x; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_resp_bits_pte_w = ptw_io_requestor_0_resp_bits_pte_w; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_resp_bits_pte_r = ptw_io_requestor_0_resp_bits_pte_r; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_resp_bits_pte_v = ptw_io_requestor_0_resp_bits_pte_v; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_resp_bits_level = ptw_io_requestor_0_resp_bits_level; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_resp_bits_homogeneous = ptw_io_requestor_0_resp_bits_homogeneous; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_ptbr_mode = ptw_io_requestor_0_ptbr_mode; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_status_debug = ptw_io_requestor_0_status_debug; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_status_dprv = ptw_io_requestor_0_status_dprv; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_status_mxr = ptw_io_requestor_0_status_mxr; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_status_sum = ptw_io_requestor_0_status_sum; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_0_cfg_l = ptw_io_requestor_0_pmp_0_cfg_l; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_0_cfg_a = ptw_io_requestor_0_pmp_0_cfg_a; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_0_cfg_x = ptw_io_requestor_0_pmp_0_cfg_x; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_0_cfg_w = ptw_io_requestor_0_pmp_0_cfg_w; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_0_cfg_r = ptw_io_requestor_0_pmp_0_cfg_r; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_0_addr = ptw_io_requestor_0_pmp_0_addr; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_0_mask = ptw_io_requestor_0_pmp_0_mask; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_1_cfg_l = ptw_io_requestor_0_pmp_1_cfg_l; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_1_cfg_a = ptw_io_requestor_0_pmp_1_cfg_a; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_1_cfg_x = ptw_io_requestor_0_pmp_1_cfg_x; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_1_cfg_w = ptw_io_requestor_0_pmp_1_cfg_w; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_1_cfg_r = ptw_io_requestor_0_pmp_1_cfg_r; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_1_addr = ptw_io_requestor_0_pmp_1_addr; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_1_mask = ptw_io_requestor_0_pmp_1_mask; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_2_cfg_l = ptw_io_requestor_0_pmp_2_cfg_l; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_2_cfg_a = ptw_io_requestor_0_pmp_2_cfg_a; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_2_cfg_x = ptw_io_requestor_0_pmp_2_cfg_x; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_2_cfg_w = ptw_io_requestor_0_pmp_2_cfg_w; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_2_cfg_r = ptw_io_requestor_0_pmp_2_cfg_r; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_2_addr = ptw_io_requestor_0_pmp_2_addr; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_2_mask = ptw_io_requestor_0_pmp_2_mask; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_3_cfg_l = ptw_io_requestor_0_pmp_3_cfg_l; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_3_cfg_a = ptw_io_requestor_0_pmp_3_cfg_a; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_3_cfg_x = ptw_io_requestor_0_pmp_3_cfg_x; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_3_cfg_w = ptw_io_requestor_0_pmp_3_cfg_w; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_3_cfg_r = ptw_io_requestor_0_pmp_3_cfg_r; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_3_addr = ptw_io_requestor_0_pmp_3_addr; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_3_mask = ptw_io_requestor_0_pmp_3_mask; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_4_cfg_l = ptw_io_requestor_0_pmp_4_cfg_l; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_4_cfg_a = ptw_io_requestor_0_pmp_4_cfg_a; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_4_cfg_x = ptw_io_requestor_0_pmp_4_cfg_x; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_4_cfg_w = ptw_io_requestor_0_pmp_4_cfg_w; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_4_cfg_r = ptw_io_requestor_0_pmp_4_cfg_r; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_4_addr = ptw_io_requestor_0_pmp_4_addr; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_4_mask = ptw_io_requestor_0_pmp_4_mask; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_5_cfg_l = ptw_io_requestor_0_pmp_5_cfg_l; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_5_cfg_a = ptw_io_requestor_0_pmp_5_cfg_a; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_5_cfg_x = ptw_io_requestor_0_pmp_5_cfg_x; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_5_cfg_w = ptw_io_requestor_0_pmp_5_cfg_w; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_5_cfg_r = ptw_io_requestor_0_pmp_5_cfg_r; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_5_addr = ptw_io_requestor_0_pmp_5_addr; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_5_mask = ptw_io_requestor_0_pmp_5_mask; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_6_cfg_l = ptw_io_requestor_0_pmp_6_cfg_l; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_6_cfg_a = ptw_io_requestor_0_pmp_6_cfg_a; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_6_cfg_x = ptw_io_requestor_0_pmp_6_cfg_x; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_6_cfg_w = ptw_io_requestor_0_pmp_6_cfg_w; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_6_cfg_r = ptw_io_requestor_0_pmp_6_cfg_r; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_6_addr = ptw_io_requestor_0_pmp_6_addr; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_6_mask = ptw_io_requestor_0_pmp_6_mask; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_7_cfg_l = ptw_io_requestor_0_pmp_7_cfg_l; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_7_cfg_a = ptw_io_requestor_0_pmp_7_cfg_a; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_7_cfg_x = ptw_io_requestor_0_pmp_7_cfg_x; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_7_cfg_w = ptw_io_requestor_0_pmp_7_cfg_w; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_7_cfg_r = ptw_io_requestor_0_pmp_7_cfg_r; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_7_addr = ptw_io_requestor_0_pmp_7_addr; // @[RocketTile.scala 202:20]
  assign dcache_io_ptw_pmp_7_mask = ptw_io_requestor_0_pmp_7_mask; // @[RocketTile.scala 202:20]
  assign frontend_gated_clock = clock;
  assign frontend_reset = reset;
  assign frontend_auto_icache_master_out_a_ready = tlMasterXbar_auto_in_1_a_ready; // @[LazyModule.scala 299:16]
  assign frontend_auto_icache_master_out_d_valid = tlMasterXbar_auto_in_1_d_valid; // @[LazyModule.scala 299:16]
  assign frontend_auto_icache_master_out_d_bits_opcode = tlMasterXbar_auto_in_1_d_bits_opcode; // @[LazyModule.scala 299:16]
  assign frontend_auto_icache_master_out_d_bits_size = tlMasterXbar_auto_in_1_d_bits_size; // @[LazyModule.scala 299:16]
  assign frontend_auto_icache_master_out_d_bits_data = tlMasterXbar_auto_in_1_d_bits_data; // @[LazyModule.scala 299:16]
  assign frontend_auto_icache_master_out_d_bits_corrupt = tlMasterXbar_auto_in_1_d_bits_corrupt; // @[LazyModule.scala 299:16]
  assign frontend_io_cpu_might_request = core_io_imem_might_request; // @[RocketTile.scala 177:32]
  assign frontend_io_cpu_req_valid = core_io_imem_req_valid; // @[RocketTile.scala 177:32]
  assign frontend_io_cpu_req_bits_pc = core_io_imem_req_bits_pc; // @[RocketTile.scala 177:32]
  assign frontend_io_cpu_req_bits_speculative = core_io_imem_req_bits_speculative; // @[RocketTile.scala 177:32]
  assign frontend_io_cpu_sfence_valid = core_io_imem_sfence_valid; // @[RocketTile.scala 177:32]
  assign frontend_io_cpu_sfence_bits_rs1 = core_io_imem_sfence_bits_rs1; // @[RocketTile.scala 177:32]
  assign frontend_io_cpu_sfence_bits_rs2 = core_io_imem_sfence_bits_rs2; // @[RocketTile.scala 177:32]
  assign frontend_io_cpu_sfence_bits_addr = core_io_imem_sfence_bits_addr; // @[RocketTile.scala 177:32]
  assign frontend_io_cpu_resp_ready = core_io_imem_resp_ready; // @[RocketTile.scala 177:32]
  assign frontend_io_cpu_btb_update_valid = core_io_imem_btb_update_valid; // @[RocketTile.scala 177:32]
  assign frontend_io_cpu_btb_update_bits_prediction_entry = core_io_imem_btb_update_bits_prediction_entry; // @[RocketTile.scala 177:32]
  assign frontend_io_cpu_btb_update_bits_pc = core_io_imem_btb_update_bits_pc; // @[RocketTile.scala 177:32]
  assign frontend_io_cpu_btb_update_bits_isValid = core_io_imem_btb_update_bits_isValid; // @[RocketTile.scala 177:32]
  assign frontend_io_cpu_btb_update_bits_br_pc = core_io_imem_btb_update_bits_br_pc; // @[RocketTile.scala 177:32]
  assign frontend_io_cpu_btb_update_bits_cfiType = core_io_imem_btb_update_bits_cfiType; // @[RocketTile.scala 177:32]
  assign frontend_io_cpu_bht_update_valid = core_io_imem_bht_update_valid; // @[RocketTile.scala 177:32]
  assign frontend_io_cpu_bht_update_bits_prediction_history = core_io_imem_bht_update_bits_prediction_history; // @[RocketTile.scala 177:32]
  assign frontend_io_cpu_bht_update_bits_pc = core_io_imem_bht_update_bits_pc; // @[RocketTile.scala 177:32]
  assign frontend_io_cpu_bht_update_bits_branch = core_io_imem_bht_update_bits_branch; // @[RocketTile.scala 177:32]
  assign frontend_io_cpu_bht_update_bits_taken = core_io_imem_bht_update_bits_taken; // @[RocketTile.scala 177:32]
  assign frontend_io_cpu_bht_update_bits_mispredict = core_io_imem_bht_update_bits_mispredict; // @[RocketTile.scala 177:32]
  assign frontend_io_cpu_flush_icache = core_io_imem_flush_icache; // @[RocketTile.scala 177:32]
  assign frontend_io_ptw_req_ready = ptw_io_requestor_1_req_ready; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_resp_valid = ptw_io_requestor_1_resp_valid; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_resp_bits_ae = ptw_io_requestor_1_resp_bits_ae; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_resp_bits_pte_ppn = ptw_io_requestor_1_resp_bits_pte_ppn; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_resp_bits_pte_d = ptw_io_requestor_1_resp_bits_pte_d; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_resp_bits_pte_a = ptw_io_requestor_1_resp_bits_pte_a; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_resp_bits_pte_g = ptw_io_requestor_1_resp_bits_pte_g; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_resp_bits_pte_u = ptw_io_requestor_1_resp_bits_pte_u; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_resp_bits_pte_x = ptw_io_requestor_1_resp_bits_pte_x; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_resp_bits_pte_w = ptw_io_requestor_1_resp_bits_pte_w; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_resp_bits_pte_r = ptw_io_requestor_1_resp_bits_pte_r; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_resp_bits_pte_v = ptw_io_requestor_1_resp_bits_pte_v; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_resp_bits_level = ptw_io_requestor_1_resp_bits_level; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_resp_bits_homogeneous = ptw_io_requestor_1_resp_bits_homogeneous; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_ptbr_mode = ptw_io_requestor_1_ptbr_mode; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_status_debug = ptw_io_requestor_1_status_debug; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_status_prv = ptw_io_requestor_1_status_prv; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_0_cfg_l = ptw_io_requestor_1_pmp_0_cfg_l; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_0_cfg_a = ptw_io_requestor_1_pmp_0_cfg_a; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_0_cfg_x = ptw_io_requestor_1_pmp_0_cfg_x; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_0_cfg_w = ptw_io_requestor_1_pmp_0_cfg_w; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_0_cfg_r = ptw_io_requestor_1_pmp_0_cfg_r; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_0_addr = ptw_io_requestor_1_pmp_0_addr; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_0_mask = ptw_io_requestor_1_pmp_0_mask; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_1_cfg_l = ptw_io_requestor_1_pmp_1_cfg_l; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_1_cfg_a = ptw_io_requestor_1_pmp_1_cfg_a; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_1_cfg_x = ptw_io_requestor_1_pmp_1_cfg_x; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_1_cfg_w = ptw_io_requestor_1_pmp_1_cfg_w; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_1_cfg_r = ptw_io_requestor_1_pmp_1_cfg_r; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_1_addr = ptw_io_requestor_1_pmp_1_addr; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_1_mask = ptw_io_requestor_1_pmp_1_mask; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_2_cfg_l = ptw_io_requestor_1_pmp_2_cfg_l; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_2_cfg_a = ptw_io_requestor_1_pmp_2_cfg_a; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_2_cfg_x = ptw_io_requestor_1_pmp_2_cfg_x; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_2_cfg_w = ptw_io_requestor_1_pmp_2_cfg_w; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_2_cfg_r = ptw_io_requestor_1_pmp_2_cfg_r; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_2_addr = ptw_io_requestor_1_pmp_2_addr; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_2_mask = ptw_io_requestor_1_pmp_2_mask; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_3_cfg_l = ptw_io_requestor_1_pmp_3_cfg_l; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_3_cfg_a = ptw_io_requestor_1_pmp_3_cfg_a; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_3_cfg_x = ptw_io_requestor_1_pmp_3_cfg_x; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_3_cfg_w = ptw_io_requestor_1_pmp_3_cfg_w; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_3_cfg_r = ptw_io_requestor_1_pmp_3_cfg_r; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_3_addr = ptw_io_requestor_1_pmp_3_addr; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_3_mask = ptw_io_requestor_1_pmp_3_mask; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_4_cfg_l = ptw_io_requestor_1_pmp_4_cfg_l; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_4_cfg_a = ptw_io_requestor_1_pmp_4_cfg_a; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_4_cfg_x = ptw_io_requestor_1_pmp_4_cfg_x; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_4_cfg_w = ptw_io_requestor_1_pmp_4_cfg_w; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_4_cfg_r = ptw_io_requestor_1_pmp_4_cfg_r; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_4_addr = ptw_io_requestor_1_pmp_4_addr; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_4_mask = ptw_io_requestor_1_pmp_4_mask; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_5_cfg_l = ptw_io_requestor_1_pmp_5_cfg_l; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_5_cfg_a = ptw_io_requestor_1_pmp_5_cfg_a; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_5_cfg_x = ptw_io_requestor_1_pmp_5_cfg_x; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_5_cfg_w = ptw_io_requestor_1_pmp_5_cfg_w; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_5_cfg_r = ptw_io_requestor_1_pmp_5_cfg_r; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_5_addr = ptw_io_requestor_1_pmp_5_addr; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_5_mask = ptw_io_requestor_1_pmp_5_mask; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_6_cfg_l = ptw_io_requestor_1_pmp_6_cfg_l; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_6_cfg_a = ptw_io_requestor_1_pmp_6_cfg_a; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_6_cfg_x = ptw_io_requestor_1_pmp_6_cfg_x; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_6_cfg_w = ptw_io_requestor_1_pmp_6_cfg_w; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_6_cfg_r = ptw_io_requestor_1_pmp_6_cfg_r; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_6_addr = ptw_io_requestor_1_pmp_6_addr; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_6_mask = ptw_io_requestor_1_pmp_6_mask; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_7_cfg_l = ptw_io_requestor_1_pmp_7_cfg_l; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_7_cfg_a = ptw_io_requestor_1_pmp_7_cfg_a; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_7_cfg_x = ptw_io_requestor_1_pmp_7_cfg_x; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_7_cfg_w = ptw_io_requestor_1_pmp_7_cfg_w; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_7_cfg_r = ptw_io_requestor_1_pmp_7_cfg_r; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_7_addr = ptw_io_requestor_1_pmp_7_addr; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_pmp_7_mask = ptw_io_requestor_1_pmp_7_mask; // @[RocketTile.scala 202:20]
  assign frontend_io_ptw_customCSRs_csrs_0_value = ptw_io_requestor_1_customCSRs_csrs_0_value; // @[RocketTile.scala 202:20]
  assign fpuOpt_clock = clock;
  assign fpuOpt_reset = reset;
  assign fpuOpt_io_inst = core_io_fpu_inst; // @[RocketTile.scala 179:39]
  assign fpuOpt_io_fromint_data = core_io_fpu_fromint_data; // @[RocketTile.scala 179:39]
  assign fpuOpt_io_fcsr_rm = core_io_fpu_fcsr_rm; // @[RocketTile.scala 179:39]
  assign fpuOpt_io_dmem_resp_val = core_io_fpu_dmem_resp_val; // @[RocketTile.scala 179:39]
  assign fpuOpt_io_dmem_resp_type = core_io_fpu_dmem_resp_type; // @[RocketTile.scala 179:39]
  assign fpuOpt_io_dmem_resp_tag = core_io_fpu_dmem_resp_tag; // @[RocketTile.scala 179:39]
  assign fpuOpt_io_dmem_resp_data = core_io_fpu_dmem_resp_data; // @[RocketTile.scala 179:39]
  assign fpuOpt_io_valid = core_io_fpu_valid; // @[RocketTile.scala 179:39]
  assign fpuOpt_io_killx = core_io_fpu_killx; // @[RocketTile.scala 179:39]
  assign fpuOpt_io_killm = core_io_fpu_killm; // @[RocketTile.scala 179:39]
  assign dcacheArb_clock = clock;
  assign dcacheArb_io_requestor_0_req_valid = ptw_io_mem_req_valid; // @[RocketTile.scala 201:26]
  assign dcacheArb_io_requestor_0_req_bits_addr = ptw_io_mem_req_bits_addr; // @[RocketTile.scala 201:26]
  assign dcacheArb_io_requestor_0_s1_kill = ptw_io_mem_s1_kill; // @[RocketTile.scala 201:26]
  assign dcacheArb_io_requestor_1_req_valid = core_io_dmem_req_valid; // @[RocketTile.scala 201:26]
  assign dcacheArb_io_requestor_1_req_bits_addr = core_io_dmem_req_bits_addr; // @[RocketTile.scala 201:26]
  assign dcacheArb_io_requestor_1_req_bits_tag = core_io_dmem_req_bits_tag; // @[RocketTile.scala 201:26]
  assign dcacheArb_io_requestor_1_req_bits_cmd = core_io_dmem_req_bits_cmd; // @[RocketTile.scala 201:26]
  assign dcacheArb_io_requestor_1_req_bits_size = core_io_dmem_req_bits_size; // @[RocketTile.scala 201:26]
  assign dcacheArb_io_requestor_1_req_bits_signed = core_io_dmem_req_bits_signed; // @[RocketTile.scala 201:26]
  assign dcacheArb_io_requestor_1_req_bits_dprv = core_io_dmem_req_bits_dprv; // @[RocketTile.scala 201:26]
  assign dcacheArb_io_requestor_1_s1_kill = core_io_dmem_s1_kill; // @[RocketTile.scala 201:26]
  assign dcacheArb_io_requestor_1_s1_data_data = core_io_dmem_s1_data_data; // @[RocketTile.scala 201:26]
  assign dcacheArb_io_mem_req_ready = dcache_io_cpu_req_ready; // @[HellaCache.scala 270:30]
  assign dcacheArb_io_mem_s2_nack = dcache_io_cpu_s2_nack; // @[HellaCache.scala 270:30]
  assign dcacheArb_io_mem_resp_valid = dcache_io_cpu_resp_valid; // @[HellaCache.scala 270:30]
  assign dcacheArb_io_mem_resp_bits_tag = dcache_io_cpu_resp_bits_tag; // @[HellaCache.scala 270:30]
  assign dcacheArb_io_mem_resp_bits_size = dcache_io_cpu_resp_bits_size; // @[HellaCache.scala 270:30]
  assign dcacheArb_io_mem_resp_bits_data = dcache_io_cpu_resp_bits_data; // @[HellaCache.scala 270:30]
  assign dcacheArb_io_mem_resp_bits_replay = dcache_io_cpu_resp_bits_replay; // @[HellaCache.scala 270:30]
  assign dcacheArb_io_mem_resp_bits_has_data = dcache_io_cpu_resp_bits_has_data; // @[HellaCache.scala 270:30]
  assign dcacheArb_io_mem_resp_bits_data_word_bypass = dcache_io_cpu_resp_bits_data_word_bypass; // @[HellaCache.scala 270:30]
  assign dcacheArb_io_mem_replay_next = dcache_io_cpu_replay_next; // @[HellaCache.scala 270:30]
  assign dcacheArb_io_mem_s2_xcpt_ma_ld = dcache_io_cpu_s2_xcpt_ma_ld; // @[HellaCache.scala 270:30]
  assign dcacheArb_io_mem_s2_xcpt_ma_st = dcache_io_cpu_s2_xcpt_ma_st; // @[HellaCache.scala 270:30]
  assign dcacheArb_io_mem_s2_xcpt_pf_ld = dcache_io_cpu_s2_xcpt_pf_ld; // @[HellaCache.scala 270:30]
  assign dcacheArb_io_mem_s2_xcpt_pf_st = dcache_io_cpu_s2_xcpt_pf_st; // @[HellaCache.scala 270:30]
  assign dcacheArb_io_mem_s2_xcpt_ae_ld = dcache_io_cpu_s2_xcpt_ae_ld; // @[HellaCache.scala 270:30]
  assign dcacheArb_io_mem_s2_xcpt_ae_st = dcache_io_cpu_s2_xcpt_ae_st; // @[HellaCache.scala 270:30]
  assign dcacheArb_io_mem_ordered = dcache_io_cpu_ordered; // @[HellaCache.scala 270:30]
  assign dcacheArb_io_mem_perf_release = dcache_io_cpu_perf_release; // @[HellaCache.scala 270:30]
  assign dcacheArb_io_mem_perf_grant = dcache_io_cpu_perf_grant; // @[HellaCache.scala 270:30]
  assign ptw_clock = clock;
  assign ptw_reset = reset;
  assign ptw_io_requestor_0_req_valid = dcache_io_ptw_req_valid; // @[RocketTile.scala 202:20]
  assign ptw_io_requestor_0_req_bits_bits_addr = dcache_io_ptw_req_bits_bits_addr; // @[RocketTile.scala 202:20]
  assign ptw_io_requestor_1_req_valid = frontend_io_ptw_req_valid; // @[RocketTile.scala 202:20]
  assign ptw_io_requestor_1_req_bits_valid = frontend_io_ptw_req_bits_valid; // @[RocketTile.scala 202:20]
  assign ptw_io_requestor_1_req_bits_bits_addr = frontend_io_ptw_req_bits_bits_addr; // @[RocketTile.scala 202:20]
  assign ptw_io_mem_req_ready = dcacheArb_io_requestor_0_req_ready; // @[RocketTile.scala 201:26]
  assign ptw_io_mem_s2_nack = dcacheArb_io_requestor_0_s2_nack; // @[RocketTile.scala 201:26]
  assign ptw_io_mem_resp_valid = dcacheArb_io_requestor_0_resp_valid; // @[RocketTile.scala 201:26]
  assign ptw_io_mem_resp_bits_data = dcacheArb_io_requestor_0_resp_bits_data; // @[RocketTile.scala 201:26]
  assign ptw_io_mem_s2_xcpt_ae_ld = dcacheArb_io_requestor_0_s2_xcpt_ae_ld; // @[RocketTile.scala 201:26]
  assign ptw_io_dpath_ptbr_mode = core_io_ptw_ptbr_mode; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_ptbr_ppn = core_io_ptw_ptbr_ppn; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_sfence_valid = core_io_ptw_sfence_valid; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_sfence_bits_rs1 = core_io_ptw_sfence_bits_rs1; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_status_debug = core_io_ptw_status_debug; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_status_dprv = core_io_ptw_status_dprv; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_status_prv = core_io_ptw_status_prv; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_status_mxr = core_io_ptw_status_mxr; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_status_sum = core_io_ptw_status_sum; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_0_cfg_l = core_io_ptw_pmp_0_cfg_l; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_0_cfg_a = core_io_ptw_pmp_0_cfg_a; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_0_cfg_x = core_io_ptw_pmp_0_cfg_x; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_0_cfg_w = core_io_ptw_pmp_0_cfg_w; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_0_cfg_r = core_io_ptw_pmp_0_cfg_r; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_0_addr = core_io_ptw_pmp_0_addr; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_0_mask = core_io_ptw_pmp_0_mask; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_1_cfg_l = core_io_ptw_pmp_1_cfg_l; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_1_cfg_a = core_io_ptw_pmp_1_cfg_a; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_1_cfg_x = core_io_ptw_pmp_1_cfg_x; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_1_cfg_w = core_io_ptw_pmp_1_cfg_w; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_1_cfg_r = core_io_ptw_pmp_1_cfg_r; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_1_addr = core_io_ptw_pmp_1_addr; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_1_mask = core_io_ptw_pmp_1_mask; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_2_cfg_l = core_io_ptw_pmp_2_cfg_l; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_2_cfg_a = core_io_ptw_pmp_2_cfg_a; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_2_cfg_x = core_io_ptw_pmp_2_cfg_x; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_2_cfg_w = core_io_ptw_pmp_2_cfg_w; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_2_cfg_r = core_io_ptw_pmp_2_cfg_r; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_2_addr = core_io_ptw_pmp_2_addr; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_2_mask = core_io_ptw_pmp_2_mask; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_3_cfg_l = core_io_ptw_pmp_3_cfg_l; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_3_cfg_a = core_io_ptw_pmp_3_cfg_a; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_3_cfg_x = core_io_ptw_pmp_3_cfg_x; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_3_cfg_w = core_io_ptw_pmp_3_cfg_w; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_3_cfg_r = core_io_ptw_pmp_3_cfg_r; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_3_addr = core_io_ptw_pmp_3_addr; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_3_mask = core_io_ptw_pmp_3_mask; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_4_cfg_l = core_io_ptw_pmp_4_cfg_l; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_4_cfg_a = core_io_ptw_pmp_4_cfg_a; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_4_cfg_x = core_io_ptw_pmp_4_cfg_x; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_4_cfg_w = core_io_ptw_pmp_4_cfg_w; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_4_cfg_r = core_io_ptw_pmp_4_cfg_r; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_4_addr = core_io_ptw_pmp_4_addr; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_4_mask = core_io_ptw_pmp_4_mask; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_5_cfg_l = core_io_ptw_pmp_5_cfg_l; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_5_cfg_a = core_io_ptw_pmp_5_cfg_a; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_5_cfg_x = core_io_ptw_pmp_5_cfg_x; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_5_cfg_w = core_io_ptw_pmp_5_cfg_w; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_5_cfg_r = core_io_ptw_pmp_5_cfg_r; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_5_addr = core_io_ptw_pmp_5_addr; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_5_mask = core_io_ptw_pmp_5_mask; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_6_cfg_l = core_io_ptw_pmp_6_cfg_l; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_6_cfg_a = core_io_ptw_pmp_6_cfg_a; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_6_cfg_x = core_io_ptw_pmp_6_cfg_x; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_6_cfg_w = core_io_ptw_pmp_6_cfg_w; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_6_cfg_r = core_io_ptw_pmp_6_cfg_r; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_6_addr = core_io_ptw_pmp_6_addr; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_6_mask = core_io_ptw_pmp_6_mask; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_7_cfg_l = core_io_ptw_pmp_7_cfg_l; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_7_cfg_a = core_io_ptw_pmp_7_cfg_a; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_7_cfg_x = core_io_ptw_pmp_7_cfg_x; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_7_cfg_w = core_io_ptw_pmp_7_cfg_w; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_7_cfg_r = core_io_ptw_pmp_7_cfg_r; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_7_addr = core_io_ptw_pmp_7_addr; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_pmp_7_mask = core_io_ptw_pmp_7_mask; // @[RocketTile.scala 180:15]
  assign ptw_io_dpath_customCSRs_csrs_0_value = core_io_ptw_customCSRs_csrs_0_value; // @[RocketTile.scala 180:15]
  assign core_clock = clock;
  assign core_reset = reset;
  assign core_io_hartid = broadcast_auto_out; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign core_io_interrupts_debug = intXbar_auto_int_out_0; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign core_io_interrupts_mtip = intXbar_auto_int_out_2; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign core_io_interrupts_msip = intXbar_auto_int_out_1; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign core_io_interrupts_meip = intXbar_auto_int_out_3; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign core_io_interrupts_seip = intXbar_auto_int_out_4; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign core_io_imem_resp_valid = frontend_io_cpu_resp_valid; // @[RocketTile.scala 177:32]
  assign core_io_imem_resp_bits_btb_taken = frontend_io_cpu_resp_bits_btb_taken; // @[RocketTile.scala 177:32]
  assign core_io_imem_resp_bits_btb_bridx = frontend_io_cpu_resp_bits_btb_bridx; // @[RocketTile.scala 177:32]
  assign core_io_imem_resp_bits_btb_entry = frontend_io_cpu_resp_bits_btb_entry; // @[RocketTile.scala 177:32]
  assign core_io_imem_resp_bits_btb_bht_history = frontend_io_cpu_resp_bits_btb_bht_history; // @[RocketTile.scala 177:32]
  assign core_io_imem_resp_bits_pc = frontend_io_cpu_resp_bits_pc; // @[RocketTile.scala 177:32]
  assign core_io_imem_resp_bits_data = frontend_io_cpu_resp_bits_data; // @[RocketTile.scala 177:32]
  assign core_io_imem_resp_bits_xcpt_pf_inst = frontend_io_cpu_resp_bits_xcpt_pf_inst; // @[RocketTile.scala 177:32]
  assign core_io_imem_resp_bits_xcpt_ae_inst = frontend_io_cpu_resp_bits_xcpt_ae_inst; // @[RocketTile.scala 177:32]
  assign core_io_imem_resp_bits_replay = frontend_io_cpu_resp_bits_replay; // @[RocketTile.scala 177:32]
  assign core_io_dmem_req_ready = dcacheArb_io_requestor_1_req_ready; // @[RocketTile.scala 201:26]
  assign core_io_dmem_s2_nack = dcacheArb_io_requestor_1_s2_nack; // @[RocketTile.scala 201:26]
  assign core_io_dmem_resp_valid = dcacheArb_io_requestor_1_resp_valid; // @[RocketTile.scala 201:26]
  assign core_io_dmem_resp_bits_tag = dcacheArb_io_requestor_1_resp_bits_tag; // @[RocketTile.scala 201:26]
  assign core_io_dmem_resp_bits_size = dcacheArb_io_requestor_1_resp_bits_size; // @[RocketTile.scala 201:26]
  assign core_io_dmem_resp_bits_data = dcacheArb_io_requestor_1_resp_bits_data; // @[RocketTile.scala 201:26]
  assign core_io_dmem_resp_bits_replay = dcacheArb_io_requestor_1_resp_bits_replay; // @[RocketTile.scala 201:26]
  assign core_io_dmem_resp_bits_has_data = dcacheArb_io_requestor_1_resp_bits_has_data; // @[RocketTile.scala 201:26]
  assign core_io_dmem_resp_bits_data_word_bypass = dcacheArb_io_requestor_1_resp_bits_data_word_bypass; // @[RocketTile.scala 201:26]
  assign core_io_dmem_replay_next = dcacheArb_io_requestor_1_replay_next; // @[RocketTile.scala 201:26]
  assign core_io_dmem_s2_xcpt_ma_ld = dcacheArb_io_requestor_1_s2_xcpt_ma_ld; // @[RocketTile.scala 201:26]
  assign core_io_dmem_s2_xcpt_ma_st = dcacheArb_io_requestor_1_s2_xcpt_ma_st; // @[RocketTile.scala 201:26]
  assign core_io_dmem_s2_xcpt_pf_ld = dcacheArb_io_requestor_1_s2_xcpt_pf_ld; // @[RocketTile.scala 201:26]
  assign core_io_dmem_s2_xcpt_pf_st = dcacheArb_io_requestor_1_s2_xcpt_pf_st; // @[RocketTile.scala 201:26]
  assign core_io_dmem_s2_xcpt_ae_ld = dcacheArb_io_requestor_1_s2_xcpt_ae_ld; // @[RocketTile.scala 201:26]
  assign core_io_dmem_s2_xcpt_ae_st = dcacheArb_io_requestor_1_s2_xcpt_ae_st; // @[RocketTile.scala 201:26]
  assign core_io_dmem_ordered = dcacheArb_io_requestor_1_ordered; // @[RocketTile.scala 201:26]
  assign core_io_dmem_perf_release = dcacheArb_io_requestor_1_perf_release; // @[RocketTile.scala 201:26]
  assign core_io_dmem_perf_grant = dcacheArb_io_requestor_1_perf_grant; // @[RocketTile.scala 201:26]
  assign core_io_fpu_fcsr_flags_valid = fpuOpt_io_fcsr_flags_valid; // @[RocketTile.scala 179:39]
  assign core_io_fpu_fcsr_flags_bits = fpuOpt_io_fcsr_flags_bits; // @[RocketTile.scala 179:39]
  assign core_io_fpu_store_data = fpuOpt_io_store_data; // @[RocketTile.scala 179:39]
  assign core_io_fpu_toint_data = fpuOpt_io_toint_data; // @[RocketTile.scala 179:39]
  assign core_io_fpu_fcsr_rdy = fpuOpt_io_fcsr_rdy; // @[RocketTile.scala 179:39]
  assign core_io_fpu_nack_mem = fpuOpt_io_nack_mem; // @[RocketTile.scala 179:39]
  assign core_io_fpu_illegal_rm = fpuOpt_io_illegal_rm; // @[RocketTile.scala 179:39]
  assign core_io_fpu_dec_wen = fpuOpt_io_dec_wen; // @[RocketTile.scala 179:39]
  assign core_io_fpu_dec_ren1 = fpuOpt_io_dec_ren1; // @[RocketTile.scala 179:39]
  assign core_io_fpu_dec_ren2 = fpuOpt_io_dec_ren2; // @[RocketTile.scala 179:39]
  assign core_io_fpu_dec_ren3 = fpuOpt_io_dec_ren3; // @[RocketTile.scala 179:39]
  assign core_io_fpu_sboard_set = fpuOpt_io_sboard_set; // @[RocketTile.scala 179:39]
  assign core_io_fpu_sboard_clr = fpuOpt_io_sboard_clr; // @[RocketTile.scala 179:39]
  assign core_io_fpu_sboard_clra = fpuOpt_io_sboard_clra; // @[RocketTile.scala 179:39]
endmodule
