module Frontend(
  input         gated_clock,
  input         reset,
  input         auto_icache_master_out_a_ready,
  output        auto_icache_master_out_a_valid,
  output [31:0] auto_icache_master_out_a_bits_address,
  input         auto_icache_master_out_d_valid,
  input  [2:0]  auto_icache_master_out_d_bits_opcode,
  input  [3:0]  auto_icache_master_out_d_bits_size,
  input  [63:0] auto_icache_master_out_d_bits_data,
  input         auto_icache_master_out_d_bits_corrupt,
  input         io_cpu_might_request,
  input         io_cpu_req_valid,
  input  [39:0] io_cpu_req_bits_pc,
  input         io_cpu_req_bits_speculative,
  input         io_cpu_sfence_valid,
  input         io_cpu_sfence_bits_rs1,
  input         io_cpu_sfence_bits_rs2,
  input  [38:0] io_cpu_sfence_bits_addr,
  input         io_cpu_resp_ready,
  output        io_cpu_resp_valid,
  output        io_cpu_resp_bits_btb_taken,
  output        io_cpu_resp_bits_btb_bridx,
  output [4:0]  io_cpu_resp_bits_btb_entry,
  output [7:0]  io_cpu_resp_bits_btb_bht_history,
  output [39:0] io_cpu_resp_bits_pc,
  output [31:0] io_cpu_resp_bits_data,
  output        io_cpu_resp_bits_xcpt_pf_inst,
  output        io_cpu_resp_bits_xcpt_ae_inst,
  output        io_cpu_resp_bits_replay,
  input         io_cpu_btb_update_valid,
  input  [4:0]  io_cpu_btb_update_bits_prediction_entry,
  input  [38:0] io_cpu_btb_update_bits_pc,
  input         io_cpu_btb_update_bits_isValid,
  input  [38:0] io_cpu_btb_update_bits_br_pc,
  input  [1:0]  io_cpu_btb_update_bits_cfiType,
  input         io_cpu_bht_update_valid,
  input  [7:0]  io_cpu_bht_update_bits_prediction_history,
  input  [38:0] io_cpu_bht_update_bits_pc,
  input         io_cpu_bht_update_bits_branch,
  input         io_cpu_bht_update_bits_taken,
  input         io_cpu_bht_update_bits_mispredict,
  input         io_cpu_flush_icache,
  output [39:0] io_cpu_npc,
  input         io_ptw_req_ready,
  output        io_ptw_req_valid,
  output        io_ptw_req_bits_valid,
  output [26:0] io_ptw_req_bits_bits_addr,
  input         io_ptw_resp_valid,
  input         io_ptw_resp_bits_ae,
  input  [53:0] io_ptw_resp_bits_pte_ppn,
  input         io_ptw_resp_bits_pte_d,
  input         io_ptw_resp_bits_pte_a,
  input         io_ptw_resp_bits_pte_g,
  input         io_ptw_resp_bits_pte_u,
  input         io_ptw_resp_bits_pte_x,
  input         io_ptw_resp_bits_pte_w,
  input         io_ptw_resp_bits_pte_r,
  input         io_ptw_resp_bits_pte_v,
  input  [1:0]  io_ptw_resp_bits_level,
  input         io_ptw_resp_bits_homogeneous,
  input  [3:0]  io_ptw_ptbr_mode,
  input         io_ptw_status_debug,
  input  [1:0]  io_ptw_status_prv,
  input         io_ptw_pmp_0_cfg_l,
  input  [1:0]  io_ptw_pmp_0_cfg_a,
  input         io_ptw_pmp_0_cfg_x,
  input         io_ptw_pmp_0_cfg_w,
  input         io_ptw_pmp_0_cfg_r,
  input  [29:0] io_ptw_pmp_0_addr,
  input  [31:0] io_ptw_pmp_0_mask,
  input         io_ptw_pmp_1_cfg_l,
  input  [1:0]  io_ptw_pmp_1_cfg_a,
  input         io_ptw_pmp_1_cfg_x,
  input         io_ptw_pmp_1_cfg_w,
  input         io_ptw_pmp_1_cfg_r,
  input  [29:0] io_ptw_pmp_1_addr,
  input  [31:0] io_ptw_pmp_1_mask,
  input         io_ptw_pmp_2_cfg_l,
  input  [1:0]  io_ptw_pmp_2_cfg_a,
  input         io_ptw_pmp_2_cfg_x,
  input         io_ptw_pmp_2_cfg_w,
  input         io_ptw_pmp_2_cfg_r,
  input  [29:0] io_ptw_pmp_2_addr,
  input  [31:0] io_ptw_pmp_2_mask,
  input         io_ptw_pmp_3_cfg_l,
  input  [1:0]  io_ptw_pmp_3_cfg_a,
  input         io_ptw_pmp_3_cfg_x,
  input         io_ptw_pmp_3_cfg_w,
  input         io_ptw_pmp_3_cfg_r,
  input  [29:0] io_ptw_pmp_3_addr,
  input  [31:0] io_ptw_pmp_3_mask,
  input         io_ptw_pmp_4_cfg_l,
  input  [1:0]  io_ptw_pmp_4_cfg_a,
  input         io_ptw_pmp_4_cfg_x,
  input         io_ptw_pmp_4_cfg_w,
  input         io_ptw_pmp_4_cfg_r,
  input  [29:0] io_ptw_pmp_4_addr,
  input  [31:0] io_ptw_pmp_4_mask,
  input         io_ptw_pmp_5_cfg_l,
  input  [1:0]  io_ptw_pmp_5_cfg_a,
  input         io_ptw_pmp_5_cfg_x,
  input         io_ptw_pmp_5_cfg_w,
  input         io_ptw_pmp_5_cfg_r,
  input  [29:0] io_ptw_pmp_5_addr,
  input  [31:0] io_ptw_pmp_5_mask,
  input         io_ptw_pmp_6_cfg_l,
  input  [1:0]  io_ptw_pmp_6_cfg_a,
  input         io_ptw_pmp_6_cfg_x,
  input         io_ptw_pmp_6_cfg_w,
  input         io_ptw_pmp_6_cfg_r,
  input  [29:0] io_ptw_pmp_6_addr,
  input  [31:0] io_ptw_pmp_6_mask,
  input         io_ptw_pmp_7_cfg_l,
  input  [1:0]  io_ptw_pmp_7_cfg_a,
  input         io_ptw_pmp_7_cfg_x,
  input         io_ptw_pmp_7_cfg_w,
  input         io_ptw_pmp_7_cfg_r,
  input  [29:0] io_ptw_pmp_7_addr,
  input  [31:0] io_ptw_pmp_7_mask,
  input  [63:0] io_ptw_customCSRs_csrs_0_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
`endif // RANDOMIZE_REG_INIT
  wire  icache_clock; // @[Frontend.scala 64:26]
  wire  icache_reset; // @[Frontend.scala 64:26]
  wire  icache_auto_master_out_a_ready; // @[Frontend.scala 64:26]
  wire  icache_auto_master_out_a_valid; // @[Frontend.scala 64:26]
  wire [31:0] icache_auto_master_out_a_bits_address; // @[Frontend.scala 64:26]
  wire  icache_auto_master_out_d_valid; // @[Frontend.scala 64:26]
  wire [2:0] icache_auto_master_out_d_bits_opcode; // @[Frontend.scala 64:26]
  wire [3:0] icache_auto_master_out_d_bits_size; // @[Frontend.scala 64:26]
  wire [63:0] icache_auto_master_out_d_bits_data; // @[Frontend.scala 64:26]
  wire  icache_auto_master_out_d_bits_corrupt; // @[Frontend.scala 64:26]
  wire  icache_io_req_ready; // @[Frontend.scala 64:26]
  wire  icache_io_req_valid; // @[Frontend.scala 64:26]
  wire [38:0] icache_io_req_bits_addr; // @[Frontend.scala 64:26]
  wire [31:0] icache_io_s1_paddr; // @[Frontend.scala 64:26]
  wire  icache_io_s1_kill; // @[Frontend.scala 64:26]
  wire  icache_io_s2_kill; // @[Frontend.scala 64:26]
  wire  icache_io_resp_valid; // @[Frontend.scala 64:26]
  wire [31:0] icache_io_resp_bits_data; // @[Frontend.scala 64:26]
  wire  icache_io_resp_bits_ae; // @[Frontend.scala 64:26]
  wire  icache_io_invalidate; // @[Frontend.scala 64:26]
  wire  fq_clock; // @[Frontend.scala 86:57]
  wire  fq_reset; // @[Frontend.scala 86:57]
  wire  fq_io_enq_ready; // @[Frontend.scala 86:57]
  wire  fq_io_enq_valid; // @[Frontend.scala 86:57]
  wire  fq_io_enq_bits_btb_taken; // @[Frontend.scala 86:57]
  wire  fq_io_enq_bits_btb_bridx; // @[Frontend.scala 86:57]
  wire [4:0] fq_io_enq_bits_btb_entry; // @[Frontend.scala 86:57]
  wire [7:0] fq_io_enq_bits_btb_bht_history; // @[Frontend.scala 86:57]
  wire [39:0] fq_io_enq_bits_pc; // @[Frontend.scala 86:57]
  wire [31:0] fq_io_enq_bits_data; // @[Frontend.scala 86:57]
  wire [1:0] fq_io_enq_bits_mask; // @[Frontend.scala 86:57]
  wire  fq_io_enq_bits_xcpt_pf_inst; // @[Frontend.scala 86:57]
  wire  fq_io_enq_bits_xcpt_ae_inst; // @[Frontend.scala 86:57]
  wire  fq_io_enq_bits_replay; // @[Frontend.scala 86:57]
  wire  fq_io_deq_ready; // @[Frontend.scala 86:57]
  wire  fq_io_deq_valid; // @[Frontend.scala 86:57]
  wire  fq_io_deq_bits_btb_taken; // @[Frontend.scala 86:57]
  wire  fq_io_deq_bits_btb_bridx; // @[Frontend.scala 86:57]
  wire [4:0] fq_io_deq_bits_btb_entry; // @[Frontend.scala 86:57]
  wire [7:0] fq_io_deq_bits_btb_bht_history; // @[Frontend.scala 86:57]
  wire [39:0] fq_io_deq_bits_pc; // @[Frontend.scala 86:57]
  wire [31:0] fq_io_deq_bits_data; // @[Frontend.scala 86:57]
  wire  fq_io_deq_bits_xcpt_pf_inst; // @[Frontend.scala 86:57]
  wire  fq_io_deq_bits_xcpt_ae_inst; // @[Frontend.scala 86:57]
  wire  fq_io_deq_bits_replay; // @[Frontend.scala 86:57]
  wire [4:0] fq_io_mask; // @[Frontend.scala 86:57]
  wire  tlb_clock; // @[Frontend.scala 100:19]
  wire  tlb_reset; // @[Frontend.scala 100:19]
  wire  tlb_io_req_ready; // @[Frontend.scala 100:19]
  wire  tlb_io_req_valid; // @[Frontend.scala 100:19]
  wire [39:0] tlb_io_req_bits_vaddr; // @[Frontend.scala 100:19]
  wire  tlb_io_resp_miss; // @[Frontend.scala 100:19]
  wire [31:0] tlb_io_resp_paddr; // @[Frontend.scala 100:19]
  wire  tlb_io_resp_pf_inst; // @[Frontend.scala 100:19]
  wire  tlb_io_resp_ae_inst; // @[Frontend.scala 100:19]
  wire  tlb_io_resp_cacheable; // @[Frontend.scala 100:19]
  wire  tlb_io_sfence_valid; // @[Frontend.scala 100:19]
  wire  tlb_io_sfence_bits_rs1; // @[Frontend.scala 100:19]
  wire  tlb_io_sfence_bits_rs2; // @[Frontend.scala 100:19]
  wire [38:0] tlb_io_sfence_bits_addr; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_req_ready; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_req_valid; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_req_bits_valid; // @[Frontend.scala 100:19]
  wire [26:0] tlb_io_ptw_req_bits_bits_addr; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_resp_valid; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_resp_bits_ae; // @[Frontend.scala 100:19]
  wire [53:0] tlb_io_ptw_resp_bits_pte_ppn; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_resp_bits_pte_d; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_resp_bits_pte_a; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_resp_bits_pte_g; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_resp_bits_pte_u; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_resp_bits_pte_x; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_resp_bits_pte_w; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_resp_bits_pte_r; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_resp_bits_pte_v; // @[Frontend.scala 100:19]
  wire [1:0] tlb_io_ptw_resp_bits_level; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_resp_bits_homogeneous; // @[Frontend.scala 100:19]
  wire [3:0] tlb_io_ptw_ptbr_mode; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_status_debug; // @[Frontend.scala 100:19]
  wire [1:0] tlb_io_ptw_status_prv; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_0_cfg_l; // @[Frontend.scala 100:19]
  wire [1:0] tlb_io_ptw_pmp_0_cfg_a; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_0_cfg_x; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_0_cfg_w; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_0_cfg_r; // @[Frontend.scala 100:19]
  wire [29:0] tlb_io_ptw_pmp_0_addr; // @[Frontend.scala 100:19]
  wire [31:0] tlb_io_ptw_pmp_0_mask; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_1_cfg_l; // @[Frontend.scala 100:19]
  wire [1:0] tlb_io_ptw_pmp_1_cfg_a; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_1_cfg_x; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_1_cfg_w; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_1_cfg_r; // @[Frontend.scala 100:19]
  wire [29:0] tlb_io_ptw_pmp_1_addr; // @[Frontend.scala 100:19]
  wire [31:0] tlb_io_ptw_pmp_1_mask; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_2_cfg_l; // @[Frontend.scala 100:19]
  wire [1:0] tlb_io_ptw_pmp_2_cfg_a; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_2_cfg_x; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_2_cfg_w; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_2_cfg_r; // @[Frontend.scala 100:19]
  wire [29:0] tlb_io_ptw_pmp_2_addr; // @[Frontend.scala 100:19]
  wire [31:0] tlb_io_ptw_pmp_2_mask; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_3_cfg_l; // @[Frontend.scala 100:19]
  wire [1:0] tlb_io_ptw_pmp_3_cfg_a; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_3_cfg_x; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_3_cfg_w; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_3_cfg_r; // @[Frontend.scala 100:19]
  wire [29:0] tlb_io_ptw_pmp_3_addr; // @[Frontend.scala 100:19]
  wire [31:0] tlb_io_ptw_pmp_3_mask; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_4_cfg_l; // @[Frontend.scala 100:19]
  wire [1:0] tlb_io_ptw_pmp_4_cfg_a; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_4_cfg_x; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_4_cfg_w; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_4_cfg_r; // @[Frontend.scala 100:19]
  wire [29:0] tlb_io_ptw_pmp_4_addr; // @[Frontend.scala 100:19]
  wire [31:0] tlb_io_ptw_pmp_4_mask; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_5_cfg_l; // @[Frontend.scala 100:19]
  wire [1:0] tlb_io_ptw_pmp_5_cfg_a; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_5_cfg_x; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_5_cfg_w; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_5_cfg_r; // @[Frontend.scala 100:19]
  wire [29:0] tlb_io_ptw_pmp_5_addr; // @[Frontend.scala 100:19]
  wire [31:0] tlb_io_ptw_pmp_5_mask; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_6_cfg_l; // @[Frontend.scala 100:19]
  wire [1:0] tlb_io_ptw_pmp_6_cfg_a; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_6_cfg_x; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_6_cfg_w; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_6_cfg_r; // @[Frontend.scala 100:19]
  wire [29:0] tlb_io_ptw_pmp_6_addr; // @[Frontend.scala 100:19]
  wire [31:0] tlb_io_ptw_pmp_6_mask; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_7_cfg_l; // @[Frontend.scala 100:19]
  wire [1:0] tlb_io_ptw_pmp_7_cfg_a; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_7_cfg_x; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_7_cfg_w; // @[Frontend.scala 100:19]
  wire  tlb_io_ptw_pmp_7_cfg_r; // @[Frontend.scala 100:19]
  wire [29:0] tlb_io_ptw_pmp_7_addr; // @[Frontend.scala 100:19]
  wire [31:0] tlb_io_ptw_pmp_7_mask; // @[Frontend.scala 100:19]
  wire  tlb_io_kill; // @[Frontend.scala 100:19]
  wire  btb_clock; // @[Frontend.scala 181:21]
  wire  btb_reset; // @[Frontend.scala 181:21]
  wire [38:0] btb_io_req_bits_addr; // @[Frontend.scala 181:21]
  wire  btb_io_resp_valid; // @[Frontend.scala 181:21]
  wire  btb_io_resp_bits_taken; // @[Frontend.scala 181:21]
  wire  btb_io_resp_bits_bridx; // @[Frontend.scala 181:21]
  wire [38:0] btb_io_resp_bits_target; // @[Frontend.scala 181:21]
  wire [4:0] btb_io_resp_bits_entry; // @[Frontend.scala 181:21]
  wire [7:0] btb_io_resp_bits_bht_history; // @[Frontend.scala 181:21]
  wire  btb_io_resp_bits_bht_value; // @[Frontend.scala 181:21]
  wire  btb_io_btb_update_valid; // @[Frontend.scala 181:21]
  wire [4:0] btb_io_btb_update_bits_prediction_entry; // @[Frontend.scala 181:21]
  wire [38:0] btb_io_btb_update_bits_pc; // @[Frontend.scala 181:21]
  wire  btb_io_btb_update_bits_isValid; // @[Frontend.scala 181:21]
  wire [38:0] btb_io_btb_update_bits_br_pc; // @[Frontend.scala 181:21]
  wire [1:0] btb_io_btb_update_bits_cfiType; // @[Frontend.scala 181:21]
  wire  btb_io_bht_update_valid; // @[Frontend.scala 181:21]
  wire [7:0] btb_io_bht_update_bits_prediction_history; // @[Frontend.scala 181:21]
  wire [38:0] btb_io_bht_update_bits_pc; // @[Frontend.scala 181:21]
  wire  btb_io_bht_update_bits_branch; // @[Frontend.scala 181:21]
  wire  btb_io_bht_update_bits_taken; // @[Frontend.scala 181:21]
  wire  btb_io_bht_update_bits_mispredict; // @[Frontend.scala 181:21]
  wire  btb_io_bht_advance_valid; // @[Frontend.scala 181:21]
  wire  btb_io_bht_advance_bits_bht_value; // @[Frontend.scala 181:21]
  wire  btb_io_ras_update_valid; // @[Frontend.scala 181:21]
  wire [1:0] btb_io_ras_update_bits_cfiType; // @[Frontend.scala 181:21]
  wire [38:0] btb_io_ras_update_bits_returnAddr; // @[Frontend.scala 181:21]
  wire  btb_io_ras_head_valid; // @[Frontend.scala 181:21]
  wire [38:0] btb_io_ras_head_bits; // @[Frontend.scala 181:21]
  wire  btb_io_flush; // @[Frontend.scala 181:21]
  reg  s1_valid; // @[Frontend.scala 102:21]
  reg  s2_valid; // @[Frontend.scala 103:25]
  wire  _s0_fq_has_space_T_4 = ~s1_valid; // @[Frontend.scala 106:45]
  wire  _s0_fq_has_space_T_5 = ~s2_valid; // @[Frontend.scala 106:58]
  wire  _s0_fq_has_space_T_7 = (~(fq_io_mask[3])) & ((~s1_valid) | (~s2_valid)); // @[Frontend.scala 106:41]
  wire  _s0_fq_has_space_T_8 = (~(fq_io_mask[2])) | _s0_fq_has_space_T_7; // @[Frontend.scala 105:40]
  wire  _s0_fq_has_space_T_14 = (~(fq_io_mask[4])) & (_s0_fq_has_space_T_4 & _s0_fq_has_space_T_5); // @[Frontend.scala 107:41]
  wire  s0_fq_has_space = _s0_fq_has_space_T_8 | _s0_fq_has_space_T_14; // @[Frontend.scala 106:70]
  wire  s0_valid = io_cpu_req_valid | s0_fq_has_space; // @[Frontend.scala 108:35]
  reg [39:0] s1_pc; // @[Frontend.scala 110:18]
  reg  s1_speculative; // @[Frontend.scala 111:27]
  reg [39:0] s2_pc; // @[Frontend.scala 112:22]
  reg  s2_btb_resp_valid; // @[Frontend.scala 113:44]
  reg  s2_btb_resp_bits_taken; // @[Frontend.scala 114:29]
  reg  s2_btb_resp_bits_bridx; // @[Frontend.scala 114:29]
  reg [4:0] s2_btb_resp_bits_entry; // @[Frontend.scala 114:29]
  reg [7:0] s2_btb_resp_bits_bht_history; // @[Frontend.scala 114:29]
  reg  s2_btb_resp_bits_bht_value; // @[Frontend.scala 114:29]
  wire  s2_btb_taken = s2_btb_resp_valid & s2_btb_resp_bits_taken; // @[Frontend.scala 115:40]
  reg  s2_tlb_resp_miss; // @[Frontend.scala 116:24]
  reg  s2_tlb_resp_pf_inst; // @[Frontend.scala 116:24]
  reg  s2_tlb_resp_ae_inst; // @[Frontend.scala 116:24]
  reg  s2_tlb_resp_cacheable; // @[Frontend.scala 116:24]
  wire  s2_xcpt = s2_tlb_resp_ae_inst | s2_tlb_resp_pf_inst; // @[Frontend.scala 117:37]
  reg  s2_speculative; // @[Frontend.scala 118:27]
  reg  s2_partial_insn_valid; // @[Frontend.scala 119:38]
  reg [15:0] s2_partial_insn; // @[Frontend.scala 120:28]
  reg  wrong_path; // @[Frontend.scala 121:23]
  wire [39:0] _s1_base_pc_T = ~s1_pc; // @[Frontend.scala 123:22]
  wire [39:0] _s1_base_pc_T_1 = _s1_base_pc_T | 40'h3; // @[Frontend.scala 123:29]
  wire [39:0] s1_base_pc = ~_s1_base_pc_T_1; // @[Frontend.scala 123:20]
  wire [39:0] ntpc = s1_base_pc + 40'h4; // @[Frontend.scala 124:25]
  wire  _s2_replay_T = fq_io_enq_ready & fq_io_enq_valid; // @[Decoupled.scala 40:37]
  reg  s2_replay_REG; // @[Frontend.scala 129:58]
  wire  s2_replay = (s2_valid & (~_s2_replay_T)) | s2_replay_REG; // @[Frontend.scala 129:48]
  wire  _s2_replay_T_4 = s2_replay & (~s0_valid); // @[Frontend.scala 129:69]
  wire  _taken_prevRVI_T_1 = (s2_partial_insn[1:0]) != 2'h3; // @[Frontend.scala 210:45]
  wire  taken_prevRVI = s2_partial_insn_valid & (~_taken_prevRVI_T_1); // @[Frontend.scala 211:31]
  wire [15:0] taken_bits = fq_io_enq_bits_data[15:0]; // @[Frontend.scala 213:37]
  wire [31:0] taken_rviBits = {taken_bits,s2_partial_insn}; // @[Cat.scala 29:58]
  wire  taken_rviJump = (taken_rviBits[6:0]) == 7'h6f; // @[Frontend.scala 217:34]
  wire  taken_rviJALR = (taken_rviBits[6:0]) == 7'h67; // @[Frontend.scala 218:34]
  wire  taken_rviBranch = (taken_rviBits[6:0]) == 7'h63; // @[Frontend.scala 216:36]
  wire  taken_valid = (fq_io_enq_bits_mask[0]) & (~taken_prevRVI); // @[Frontend.scala 212:44]
  wire [15:0] _taken_rvcJump_T = taken_bits & 16'he003; // @[Frontend.scala 223:26]
  wire  taken_rvcJump = 16'ha001 == _taken_rvcJump_T; // @[Frontend.scala 223:26]
  wire [15:0] _taken_rvcJALR_T = taken_bits & 16'hf003; // @[Frontend.scala 227:26]
  wire  _taken_rvcJALR_T_3 = (taken_bits[6:2]) == 5'h0; // @[Frontend.scala 227:62]
  wire  taken_rvcJALR = (16'h9002 == _taken_rvcJALR_T) & ((taken_bits[6:2]) == 5'h0); // @[Frontend.scala 227:49]
  wire  taken_rvcJR = (16'h8002 == _taken_rvcJALR_T) & _taken_rvcJALR_T_3; // @[Frontend.scala 225:46]
  wire  taken_rvcBranch = (16'hc001 == _taken_rvcJump_T) | (16'he001 == _taken_rvcJump_T); // @[Frontend.scala 221:52]
  wire  _taken_taken_T_8 = taken_valid & (((taken_rvcJump | taken_rvcJALR) | taken_rvcJR) | (taken_rvcBranch &
    s2_btb_resp_bits_bht_value)); // @[Frontend.scala 233:15]
  wire  taken_taken = (taken_prevRVI & ((taken_rviJump | taken_rviJALR) | (taken_rviBranch & s2_btb_resp_bits_bht_value)
    )) | _taken_taken_T_8; // @[Frontend.scala 232:71]
  wire  taken_idx = ~taken_taken; // @[Frontend.scala 247:13]
  wire  _taken_T_36 = ~s2_btb_taken; // @[Frontend.scala 256:15]
  wire  _taken_prevRVI_T_4 = (taken_bits[1:0]) != 2'h3; // @[Frontend.scala 210:45]
  wire  _taken_prevRVI_T_5 = ~_taken_prevRVI_T_4; // @[Frontend.scala 211:34]
  wire  taken_prevRVI_1 = taken_valid & (~_taken_prevRVI_T_4); // @[Frontend.scala 211:31]
  wire [15:0] taken_bits_1 = fq_io_enq_bits_data[31:16]; // @[Frontend.scala 213:37]
  wire [31:0] taken_rviBits_1 = {taken_bits_1,taken_bits}; // @[Cat.scala 29:58]
  wire  taken_rviJALR_1 = (taken_rviBits_1[6:0]) == 7'h67; // @[Frontend.scala 218:34]
  wire [4:0] _taken_rviReturn_T_10 = (taken_rviBits_1[19:15]) & 5'h1b; // @[Frontend.scala 219:66]
  wire  taken_rviReturn_1 = (taken_rviJALR_1 & (~(taken_rviBits_1[7]))) & (5'h1 == _taken_rviReturn_T_10); // @[Frontend.scala 219:46]
  wire  taken_valid_1 = (fq_io_enq_bits_mask[1]) & (~taken_prevRVI_1); // @[Frontend.scala 212:44]
  wire [15:0] _taken_rvcJR_T_4 = taken_bits_1 & 16'hf003; // @[Frontend.scala 225:24]
  wire  _taken_rvcJR_T_7 = (taken_bits_1[6:2]) == 5'h0; // @[Frontend.scala 225:59]
  wire  taken_rvcJR_1 = (16'h8002 == _taken_rvcJR_T_4) & ((taken_bits_1[6:2]) == 5'h0); // @[Frontend.scala 225:46]
  wire [4:0] _taken_rvcReturn_T_4 = (taken_bits_1[11:7]) & 5'h1b; // @[Frontend.scala 226:49]
  wire  taken_rvcReturn_1 = taken_rvcJR_1 & (5'h1 == _taken_rvcReturn_T_4); // @[Frontend.scala 226:29]
  wire  taken_predictReturn_1 = btb_io_ras_head_valid & ((taken_prevRVI_1 & taken_rviReturn_1) | (taken_valid_1 &
    taken_rvcReturn_1)); // @[Frontend.scala 234:49]
  wire  _taken_T_45 = s2_valid & taken_predictReturn_1; // @[Frontend.scala 260:26]
  wire [4:0] _taken_rviReturn_T_4 = (taken_rviBits[19:15]) & 5'h1b; // @[Frontend.scala 219:66]
  wire  taken_rviReturn = (taken_rviJALR & (~(taken_rviBits[7]))) & (5'h1 == _taken_rviReturn_T_4); // @[Frontend.scala 219:46]
  wire [4:0] _taken_rvcReturn_T_1 = (taken_bits[11:7]) & 5'h1b; // @[Frontend.scala 226:49]
  wire  taken_rvcReturn = taken_rvcJR & (5'h1 == _taken_rvcReturn_T_1); // @[Frontend.scala 226:29]
  wire  taken_predictReturn = btb_io_ras_head_valid & ((taken_prevRVI & taken_rviReturn) | (taken_valid &
    taken_rvcReturn)); // @[Frontend.scala 234:49]
  wire  _taken_T_16 = s2_valid & taken_predictReturn; // @[Frontend.scala 260:26]
  wire  _GEN_45 = _taken_T_36 & _taken_T_16; // @[Frontend.scala 256:30]
  wire  _GEN_78 = _taken_T_45 | _GEN_45; // @[Frontend.scala 260:44 Frontend.scala 261:20]
  wire  _GEN_81 = _taken_T_36 ? _GEN_78 : _taken_T_36 & _taken_T_16; // @[Frontend.scala 256:30]
  wire  useRAS = taken_idx ? _GEN_81 : _GEN_45; // @[Frontend.scala 247:25]
  wire  taken_rviBranch_1 = (taken_rviBits_1[6:0]) == 7'h63; // @[Frontend.scala 216:36]
  wire [15:0] _taken_rvcBranch_T_4 = taken_bits_1 & 16'he003; // @[Frontend.scala 221:28]
  wire  taken_rvcBranch_1 = (16'hc001 == _taken_rvcBranch_T_4) | (16'he001 == _taken_rvcBranch_T_4); // @[Frontend.scala 221:52]
  wire  _taken_predictBranch_T_5 = (taken_prevRVI_1 & taken_rviBranch_1) | (taken_valid_1 & taken_rvcBranch_1); // @[Frontend.scala 236:66]
  wire  taken_predictBranch_1 = s2_btb_resp_bits_bht_value & ((taken_prevRVI_1 & taken_rviBranch_1) | (taken_valid_1 &
    taken_rvcBranch_1)); // @[Frontend.scala 236:41]
  wire  taken_rviJump_1 = (taken_rviBits_1[6:0]) == 7'h6f; // @[Frontend.scala 217:34]
  wire  taken_rvcJump_1 = 16'ha001 == _taken_rvcBranch_T_4; // @[Frontend.scala 223:26]
  wire  taken_predictJump_1 = (taken_prevRVI_1 & taken_rviJump_1) | (taken_valid_1 & taken_rvcJump_1); // @[Frontend.scala 235:44]
  wire  _taken_T_47 = s2_valid & (taken_predictBranch_1 | taken_predictJump_1); // @[Frontend.scala 263:26]
  wire [39:0] _s2_base_pc_T = ~s2_pc; // @[Frontend.scala 203:24]
  wire [39:0] _s2_base_pc_T_1 = _s2_base_pc_T | 40'h3; // @[Frontend.scala 203:31]
  wire [39:0] s2_base_pc = ~_s2_base_pc_T_1; // @[Frontend.scala 203:22]
  wire [39:0] taken_pc_1 = s2_base_pc | 40'h2; // @[Frontend.scala 264:33]
  wire [39:0] _taken_npc_T_6 = taken_pc_1 - 40'h2; // @[Frontend.scala 267:36]
  wire [39:0] _taken_npc_T_8 = taken_prevRVI_1 ? _taken_npc_T_6 : taken_pc_1; // @[Frontend.scala 267:57]
  wire  taken_rviImm_sign_2 = taken_rviBits_1[31]; // @[RocketCore.scala 1032:53]
  wire  taken_rviImm_right_right_right_2 = taken_rviBits_1[31]; // @[Cat.scala 29:58]
  wire [10:0] taken_rviImm_right_right_left_2 = {11{taken_rviImm_sign_2}}; // @[Cat.scala 29:58]
  wire [7:0] taken_rviImm_right_left_right_2 = taken_rviBits_1[19:12]; // @[Cat.scala 29:58]
  wire  taken_rviImm_right_left_left_2 = taken_rviBits_1[20]; // @[Cat.scala 29:58]
  wire [5:0] taken_rviImm_left_right_right_2 = taken_rviBits_1[30:25]; // @[RocketCore.scala 1038:66]
  wire [3:0] taken_rviImm_left_right_left_2 = taken_rviBits_1[24:21]; // @[RocketCore.scala 1041:52]
  wire [31:0] _taken_rviImm_T_7 = {taken_rviImm_right_right_right_2,taken_rviImm_right_right_left_2,
    taken_rviImm_right_left_right_2,taken_rviImm_right_left_left_2,taken_rviImm_left_right_right_2,
    taken_rviImm_left_right_left_2,1'h0}; // @[RocketCore.scala 1046:53]
  wire [7:0] taken_rviImm_right_left_right_3 = {8{taken_rviImm_sign_2}}; // @[Cat.scala 29:58]
  wire  taken_rviImm_right_left_left_3 = taken_rviBits_1[7]; // @[Cat.scala 29:58]
  wire [31:0] _taken_rviImm_T_9 = {taken_rviImm_right_right_right_2,taken_rviImm_right_right_left_2,
    taken_rviImm_right_left_right_3,taken_rviImm_right_left_left_3,taken_rviImm_left_right_right_2,taken_rviBits_1[11:8]
    ,1'h0}; // @[RocketCore.scala 1046:53]
  wire [31:0] taken_rviImm_1 = taken_rviBits_1[3] ? $signed(_taken_rviImm_T_7) : $signed(_taken_rviImm_T_9); // @[Frontend.scala 229:23]
  wire [4:0] taken_rvcImm_right_right_right_2 = taken_bits_1[12] ? 5'h1f : 5'h0; // @[Bitwise.scala 72:12]
  wire [1:0] taken_rvcImm_right_right_left_2 = taken_bits_1[6:5]; // @[RVC.scala 46:35]
  wire  taken_rvcImm_right_left_2 = taken_bits_1[2]; // @[RVC.scala 46:43]
  wire [1:0] taken_rvcImm_left_right_right_2 = taken_bits_1[11:10]; // @[RVC.scala 46:49]
  wire [1:0] taken_rvcImm_left_right_left_2 = taken_bits_1[4:3]; // @[RVC.scala 46:59]
  wire [12:0] _taken_rvcImm_T_13 = {taken_rvcImm_right_right_right_2,taken_rvcImm_right_right_left_2,
    taken_rvcImm_right_left_2,taken_rvcImm_left_right_right_2,taken_rvcImm_left_right_left_2,1'h0}; // @[Frontend.scala 224:66]
  wire [9:0] taken_rvcImm_right_right_right_right_1 = taken_bits_1[12] ? 10'h3ff : 10'h0; // @[Bitwise.scala 72:12]
  wire  taken_rvcImm_right_right_right_left_1 = taken_bits_1[8]; // @[RVC.scala 45:36]
  wire [1:0] taken_rvcImm_right_right_left_3 = taken_bits_1[10:9]; // @[RVC.scala 45:42]
  wire  taken_rvcImm_right_left_right_1 = taken_bits_1[6]; // @[RVC.scala 45:51]
  wire  taken_rvcImm_right_left_left_1 = taken_bits_1[7]; // @[RVC.scala 45:57]
  wire  taken_rvcImm_left_right_left_3 = taken_bits_1[11]; // @[RVC.scala 45:69]
  wire [2:0] taken_rvcImm_left_left_right_1 = taken_bits_1[5:3]; // @[RVC.scala 45:76]
  wire [20:0] _taken_rvcImm_T_17 = {taken_rvcImm_right_right_right_right_1,taken_rvcImm_right_right_right_left_1,
    taken_rvcImm_right_right_left_3,taken_rvcImm_right_left_right_1,taken_rvcImm_right_left_left_1,
    taken_rvcImm_right_left_2,taken_rvcImm_left_right_left_3,taken_rvcImm_left_left_right_1,1'h0}; // @[Frontend.scala 224:106]
  wire [20:0] taken_rvcImm_1 = taken_bits_1[14] ? $signed({{8{_taken_rvcImm_T_13[12]}},_taken_rvcImm_T_13}) : $signed(
    _taken_rvcImm_T_17); // @[Frontend.scala 224:23]
  wire [31:0] _taken_npc_T_9 = taken_prevRVI_1 ? $signed(taken_rviImm_1) : $signed({{11{taken_rvcImm_1[20]}},
    taken_rvcImm_1}); // @[Frontend.scala 267:69]
  wire [39:0] _GEN_127 = {{8{_taken_npc_T_9[31]}},_taken_npc_T_9}; // @[Frontend.scala 267:64]
  wire [39:0] _taken_predicted_npc_T_1 = $signed(_taken_npc_T_8) + $signed(_GEN_127); // @[Frontend.scala 268:34]
  wire  _taken_predictBranch_T_2 = (taken_prevRVI & taken_rviBranch) | (taken_valid & taken_rvcBranch); // @[Frontend.scala 236:66]
  wire  taken_predictBranch = s2_btb_resp_bits_bht_value & ((taken_prevRVI & taken_rviBranch) | (taken_valid &
    taken_rvcBranch)); // @[Frontend.scala 236:41]
  wire  taken_predictJump = (taken_prevRVI & taken_rviJump) | (taken_valid & taken_rvcJump); // @[Frontend.scala 235:44]
  wire  _taken_T_18 = s2_valid & (taken_predictBranch | taken_predictJump); // @[Frontend.scala 263:26]
  wire [39:0] _taken_npc_T = ~_s2_base_pc_T_1; // @[Frontend.scala 266:32]
  wire  taken_rviImm_sign = taken_rviBits[31]; // @[RocketCore.scala 1032:53]
  wire  taken_rviImm_right_right_right = taken_rviBits[31]; // @[Cat.scala 29:58]
  wire [10:0] taken_rviImm_right_right_left = {11{taken_rviImm_sign}}; // @[Cat.scala 29:58]
  wire [7:0] taken_rviImm_right_left_right = taken_rviBits[19:12]; // @[Cat.scala 29:58]
  wire  taken_rviImm_right_left_left = taken_rviBits[20]; // @[Cat.scala 29:58]
  wire [5:0] taken_rviImm_left_right_right = taken_rviBits[30:25]; // @[RocketCore.scala 1038:66]
  wire [3:0] taken_rviImm_left_right_left = taken_rviBits[24:21]; // @[RocketCore.scala 1041:52]
  wire [31:0] _taken_rviImm_T_2 = {taken_rviImm_right_right_right,taken_rviImm_right_right_left,
    taken_rviImm_right_left_right,taken_rviImm_right_left_left,taken_rviImm_left_right_right,
    taken_rviImm_left_right_left,1'h0}; // @[RocketCore.scala 1046:53]
  wire [7:0] taken_rviImm_right_left_right_1 = {8{taken_rviImm_sign}}; // @[Cat.scala 29:58]
  wire  taken_rviImm_right_left_left_1 = taken_rviBits[7]; // @[Cat.scala 29:58]
  wire [31:0] _taken_rviImm_T_4 = {taken_rviImm_right_right_right,taken_rviImm_right_right_left,
    taken_rviImm_right_left_right_1,taken_rviImm_right_left_left_1,taken_rviImm_left_right_right,taken_rviBits[11:8],1'h0
    }; // @[RocketCore.scala 1046:53]
  wire [31:0] taken_rviImm = taken_rviBits[3] ? $signed(_taken_rviImm_T_2) : $signed(_taken_rviImm_T_4); // @[Frontend.scala 229:23]
  wire [32:0] _taken_npc_T_1 = $signed(taken_rviImm) - 32'sh2; // @[Frontend.scala 266:61]
  wire [4:0] taken_rvcImm_right_right_right = taken_bits[12] ? 5'h1f : 5'h0; // @[Bitwise.scala 72:12]
  wire [1:0] taken_rvcImm_right_right_left = taken_bits[6:5]; // @[RVC.scala 46:35]
  wire  taken_rvcImm_right_left = taken_bits[2]; // @[RVC.scala 46:43]
  wire [1:0] taken_rvcImm_left_right_right = taken_bits[11:10]; // @[RVC.scala 46:49]
  wire [1:0] taken_rvcImm_left_right_left = taken_bits[4:3]; // @[RVC.scala 46:59]
  wire [12:0] _taken_rvcImm_T_4 = {taken_rvcImm_right_right_right,taken_rvcImm_right_right_left,taken_rvcImm_right_left,
    taken_rvcImm_left_right_right,taken_rvcImm_left_right_left,1'h0}; // @[Frontend.scala 224:66]
  wire [9:0] taken_rvcImm_right_right_right_right = taken_bits[12] ? 10'h3ff : 10'h0; // @[Bitwise.scala 72:12]
  wire  taken_rvcImm_right_right_right_left = taken_bits[8]; // @[RVC.scala 45:36]
  wire [1:0] taken_rvcImm_right_right_left_1 = taken_bits[10:9]; // @[RVC.scala 45:42]
  wire  taken_rvcImm_right_left_right = taken_bits[6]; // @[RVC.scala 45:51]
  wire  taken_rvcImm_right_left_left = taken_bits[7]; // @[RVC.scala 45:57]
  wire  taken_rvcImm_left_right_left_1 = taken_bits[11]; // @[RVC.scala 45:69]
  wire [2:0] taken_rvcImm_left_left_right = taken_bits[5:3]; // @[RVC.scala 45:76]
  wire [20:0] _taken_rvcImm_T_8 = {taken_rvcImm_right_right_right_right,taken_rvcImm_right_right_right_left,
    taken_rvcImm_right_right_left_1,taken_rvcImm_right_left_right,taken_rvcImm_right_left_left,taken_rvcImm_right_left,
    taken_rvcImm_left_right_left_1,taken_rvcImm_left_left_right,1'h0}; // @[Frontend.scala 224:106]
  wire [20:0] taken_rvcImm = taken_bits[14] ? $signed({{8{_taken_rvcImm_T_4[12]}},_taken_rvcImm_T_4}) : $signed(
    _taken_rvcImm_T_8); // @[Frontend.scala 224:23]
  wire [32:0] _taken_npc_T_2 = taken_prevRVI ? $signed(_taken_npc_T_1) : $signed({{12{taken_rvcImm[20]}},taken_rvcImm}); // @[Frontend.scala 266:44]
  wire [39:0] _GEN_128 = {{7{_taken_npc_T_2[32]}},_taken_npc_T_2}; // @[Frontend.scala 266:39]
  wire [39:0] _taken_predicted_npc_T = $signed(_taken_npc_T) + $signed(_GEN_128); // @[Frontend.scala 268:34]
  wire  predicted_taken = btb_io_resp_valid & btb_io_resp_bits_taken; // @[Frontend.scala 194:29]
  wire  predicted_npc_right = btb_io_resp_bits_target[38]; // @[package.scala 112:38]
  wire [39:0] _predicted_npc_T = {predicted_npc_right,btb_io_resp_bits_target}; // @[Cat.scala 29:58]
  wire [39:0] _GEN_28 = predicted_taken ? _predicted_npc_T : ntpc; // @[Frontend.scala 194:56 Frontend.scala 195:21]
  wire [39:0] _GEN_43 = _taken_T_18 ? _taken_predicted_npc_T : _GEN_28; // @[Frontend.scala 263:61 Frontend.scala 268:27]
  wire [39:0] _GEN_46 = _taken_T_36 ? _GEN_43 : _GEN_28; // @[Frontend.scala 256:30]
  wire [39:0] _GEN_79 = _taken_T_47 ? _taken_predicted_npc_T_1 : _GEN_46; // @[Frontend.scala 263:61 Frontend.scala 268:27]
  wire [39:0] _GEN_82 = _taken_T_36 ? _GEN_79 : _GEN_46; // @[Frontend.scala 256:30]
  wire [39:0] _GEN_99 = taken_idx ? _GEN_82 : _GEN_46; // @[Frontend.scala 247:25]
  wire [39:0] predicted_npc = useRAS ? {{1'd0}, btb_io_ras_head_bits} : _GEN_99; // @[Frontend.scala 307:19 Frontend.scala 308:21]
  wire [39:0] npc = s2_replay ? s2_pc : predicted_npc; // @[Frontend.scala 130:16]
  wire  s0_speculative = (s1_speculative | (s2_valid & (~s2_speculative))) | predicted_taken; // @[Frontend.scala 136:72]
  wire  _T_11 = ~s2_replay; // @[Frontend.scala 142:9]
  wire  taken_rvcJALR_1 = (16'h9002 == _taken_rvcJR_T_4) & _taken_rvcJR_T_7; // @[Frontend.scala 227:49]
  wire  _taken_taken_T_17 = taken_valid_1 & (((taken_rvcJump_1 | taken_rvcJALR_1) | taken_rvcJR_1) | (taken_rvcBranch_1
     & s2_btb_resp_bits_bht_value)); // @[Frontend.scala 233:15]
  wire  taken_taken_1 = (taken_prevRVI_1 & ((taken_rviJump_1 | taken_rviJALR_1) | (taken_rviBranch_1 &
    s2_btb_resp_bits_bht_value))) | _taken_taken_T_17; // @[Frontend.scala 232:71]
  wire  taken = taken_taken | taken_taken_1; // @[Frontend.scala 288:19]
  wire  _GEN_116 = _s2_replay_T | io_cpu_req_valid; // @[Frontend.scala 318:33 Frontend.scala 318:47]
  wire  _GEN_120 = taken ? _GEN_116 : io_cpu_req_valid; // @[Frontend.scala 314:20]
  wire  s2_redirect = _taken_T_36 ? _GEN_120 : io_cpu_req_valid; // @[Frontend.scala 313:26]
  wire  _s2_valid_T = ~s2_redirect; // @[Frontend.scala 143:17]
  wire  _GEN_0 = _T_11 & _s2_valid_T; // @[Frontend.scala 142:21 Frontend.scala 143:14 Frontend.scala 141:12]
  wire  s2_can_speculatively_refill = s2_tlb_resp_cacheable & (~(io_ptw_customCSRs_csrs_0_value[3])); // @[Frontend.scala 163:59]
  reg  fq_io_enq_valid_REG; // @[Frontend.scala 167:29]
  wire [39:0] _io_cpu_npc_T = io_cpu_req_valid ? io_cpu_req_bits_pc : npc; // @[Frontend.scala 169:28]
  wire [39:0] _io_cpu_npc_T_1 = ~_io_cpu_npc_T; // @[Frontend.scala 343:29]
  wire [39:0] _io_cpu_npc_T_2 = _io_cpu_npc_T_1 | 40'h1; // @[Frontend.scala 343:33]
  wire [2:0] _fq_io_enq_bits_mask_T_1 = 3'h3 << (s2_pc[1]); // @[Frontend.scala 172:52]
  wire  _fq_io_enq_bits_replay_T_3 = (icache_io_s2_kill & (~icache_io_resp_valid)) & (~s2_xcpt); // @[Frontend.scala 173:101]
  wire  _T_20 = icache_io_resp_valid & icache_io_resp_bits_ae; // @[Frontend.scala 178:30]
  wire  _T_23 = ~io_cpu_btb_update_valid; // @[Frontend.scala 294:11]
  wire  fetch_bubble_likely = ~(fq_io_mask[1]); // @[Frontend.scala 295:33]
  wire  _btb_io_btb_update_valid_T_2 = _s2_replay_T & (~wrong_path); // @[Frontend.scala 296:51]
  wire  _taken_T_56 = (~s2_btb_resp_valid) & (((taken_predictBranch_1 & s2_btb_resp_bits_bht_value) |
    taken_predictJump_1) | taken_predictReturn_1); // @[Frontend.scala 275:34]
  wire  _taken_T_27 = (~s2_btb_resp_valid) & (((taken_predictBranch & s2_btb_resp_bits_bht_value) | taken_predictJump)
     | taken_predictReturn); // @[Frontend.scala 275:34]
  wire  _GEN_92 = _taken_T_56 | _taken_T_27; // @[Frontend.scala 275:125 Frontend.scala 276:21]
  wire  updateBTB = taken_idx ? _GEN_92 : _taken_T_27; // @[Frontend.scala 247:25]
  wire  _btb_io_btb_update_valid_T_4 = ((_s2_replay_T & (~wrong_path)) & fetch_bubble_likely) & updateBTB; // @[Frontend.scala 296:89]
  wire [1:0] _btb_io_btb_update_bits_br_pc_T = {taken_idx, 1'h0}; // @[Frontend.scala 300:63]
  wire [39:0] _GEN_129 = {{38'd0}, _btb_io_btb_update_bits_br_pc_T}; // @[Frontend.scala 300:50]
  wire [39:0] _btb_io_btb_update_bits_br_pc_T_1 = s2_base_pc | _GEN_129; // @[Frontend.scala 300:50]
  wire [39:0] _GEN_36 = _T_23 ? _btb_io_btb_update_bits_br_pc_T_1 : {{1'd0}, io_cpu_btb_update_bits_br_pc}; // @[Frontend.scala 294:37 Frontend.scala 300:36 Frontend.scala 185:23]
  wire [39:0] _GEN_37 = _T_23 ? s2_base_pc : {{1'd0}, io_cpu_btb_update_bits_pc}; // @[Frontend.scala 294:37 Frontend.scala 301:33 Frontend.scala 185:23]
  wire [1:0] after_idx = taken_idx ? 2'h2 : 2'h1; // @[Frontend.scala 247:25 Frontend.scala 249:19]
  wire [2:0] _btb_io_ras_update_bits_returnAddr_T = {after_idx, 1'h0}; // @[Frontend.scala 304:66]
  wire [39:0] _GEN_130 = {{37'd0}, _btb_io_ras_update_bits_returnAddr_T}; // @[Frontend.scala 304:53]
  wire [39:0] _btb_io_ras_update_bits_returnAddr_T_2 = s2_base_pc + _GEN_130; // @[Frontend.scala 304:53]
  wire  taken_rviCall = (taken_rviJALR | taken_rviJump) & (taken_rviBits[7]); // @[Frontend.scala 220:42]
  wire  _taken_T_5 = (((s2_valid & s2_btb_resp_valid) & (~s2_btb_resp_bits_bridx)) & taken_valid) & _taken_prevRVI_T_5; // @[Frontend.scala 238:86]
  wire  _GEN_39 = _taken_T_5 | _fq_io_enq_bits_replay_T_3; // @[Frontend.scala 238:95 Frontend.scala 242:31 Frontend.scala 173:25]
  wire  _GEN_40 = _taken_T_5 | wrong_path; // @[Frontend.scala 238:95 Frontend.scala 243:20 Frontend.scala 121:23]
  wire  _taken_btb_io_ras_update_valid_T_8 = _btb_io_btb_update_valid_T_2 & ((taken_prevRVI & (taken_rviCall |
    taken_rviReturn)) | (taken_valid & (taken_rvcJALR | taken_rvcReturn))); // @[Frontend.scala 250:68]
  wire  _taken_btb_io_ras_update_bits_cfiType_T = taken_prevRVI ? taken_rviReturn : taken_rvcReturn; // @[Frontend.scala 251:50]
  wire  _taken_btb_io_ras_update_bits_cfiType_T_1 = taken_prevRVI ? taken_rviCall : taken_rvcJALR; // @[Frontend.scala 252:50]
  wire  _taken_btb_io_ras_update_bits_cfiType_T_2 = taken_prevRVI ? taken_rviBranch : taken_rvcBranch; // @[Frontend.scala 253:50]
  wire  _taken_btb_io_ras_update_bits_cfiType_T_5 = _taken_btb_io_ras_update_bits_cfiType_T_2 ? 1'h0 : 1'h1; // @[Frontend.scala 253:46]
  wire [1:0] _taken_btb_io_ras_update_bits_cfiType_T_6 = _taken_btb_io_ras_update_bits_cfiType_T_1 ? 2'h2 : {{1'd0},
    _taken_btb_io_ras_update_bits_cfiType_T_5}; // @[Frontend.scala 252:46]
  wire [1:0] _taken_btb_io_ras_update_bits_cfiType_T_7 = _taken_btb_io_ras_update_bits_cfiType_T ? 2'h3 :
    _taken_btb_io_ras_update_bits_cfiType_T_6; // @[Frontend.scala 251:46]
  wire  _taken_T_15 = (((_s2_replay_T & taken_taken) & (~taken_predictBranch)) & (~taken_predictJump)) & (~
    taken_predictReturn); // @[Frontend.scala 257:77]
  wire  _GEN_41 = _taken_T_15 | _GEN_40; // @[Frontend.scala 257:96 Frontend.scala 258:24]
  wire  _GEN_44 = _taken_T_36 ? _GEN_41 : _GEN_40; // @[Frontend.scala 256:30]
  wire  _GEN_47 = _taken_predictBranch_T_2 & _btb_io_btb_update_valid_T_2; // @[Frontend.scala 271:59 Frontend.scala 272:36 Frontend.scala 188:30]
  wire  taken_rvc_1 = (taken_bits_1[1:0]) != 2'h3; // @[Frontend.scala 210:45]
  wire  taken_rviCall_1 = (taken_rviJALR_1 | taken_rviJump_1) & (taken_rviBits_1[7]); // @[Frontend.scala 220:42]
  wire  _taken_T_33 = ~taken_rvc_1; // @[Frontend.scala 238:89]
  wire  _taken_T_34 = (((s2_valid & s2_btb_resp_valid) & s2_btb_resp_bits_bridx) & taken_valid_1) & (~taken_rvc_1); // @[Frontend.scala 238:86]
  wire  _GEN_76 = _taken_T_34 | _GEN_44; // @[Frontend.scala 238:95 Frontend.scala 243:20]
  wire  _taken_btb_io_ras_update_valid_T_17 = _btb_io_btb_update_valid_T_2 & ((taken_prevRVI_1 & (taken_rviCall_1 |
    taken_rviReturn_1)) | (taken_valid_1 & (taken_rvcJALR_1 | taken_rvcReturn_1))); // @[Frontend.scala 250:68]
  wire  _taken_btb_io_ras_update_bits_cfiType_T_8 = taken_prevRVI_1 ? taken_rviReturn_1 : taken_rvcReturn_1; // @[Frontend.scala 251:50]
  wire  _taken_btb_io_ras_update_bits_cfiType_T_9 = taken_prevRVI_1 ? taken_rviCall_1 : taken_rvcJALR_1; // @[Frontend.scala 252:50]
  wire  _taken_btb_io_ras_update_bits_cfiType_T_10 = taken_prevRVI_1 ? taken_rviBranch_1 : taken_rvcBranch_1; // @[Frontend.scala 253:50]
  wire  _taken_btb_io_ras_update_bits_cfiType_T_13 = _taken_btb_io_ras_update_bits_cfiType_T_10 ? 1'h0 : 1'h1; // @[Frontend.scala 253:46]
  wire [1:0] _taken_btb_io_ras_update_bits_cfiType_T_14 = _taken_btb_io_ras_update_bits_cfiType_T_9 ? 2'h2 : {{1'd0},
    _taken_btb_io_ras_update_bits_cfiType_T_13}; // @[Frontend.scala 252:46]
  wire [1:0] _taken_btb_io_ras_update_bits_cfiType_T_15 = _taken_btb_io_ras_update_bits_cfiType_T_8 ? 2'h3 :
    _taken_btb_io_ras_update_bits_cfiType_T_14; // @[Frontend.scala 251:46]
  wire  _taken_T_44 = (((_s2_replay_T & taken_taken_1) & (~taken_predictBranch_1)) & (~taken_predictJump_1)) & (~
    taken_predictReturn_1); // @[Frontend.scala 257:77]
  wire  _GEN_77 = _taken_T_44 | _GEN_76; // @[Frontend.scala 257:96 Frontend.scala 258:24]
  wire  _GEN_83 = _taken_predictBranch_T_5 ? _btb_io_btb_update_valid_T_2 : _GEN_47; // @[Frontend.scala 271:59 Frontend.scala 272:36]
  wire  _taken_T_61 = (taken_valid_1 & taken_idx) & _taken_T_33; // @[Frontend.scala 283:37]
  wire [15:0] _taken_s2_partial_insn_T = taken_bits_1 | 16'h3; // @[Frontend.scala 285:37]
  wire  _T_26 = _s2_replay_T & (s2_btb_taken | taken); // @[Frontend.scala 310:28]
  wire  _GEN_117 = taken ? taken_idx : s2_btb_resp_bits_bridx; // @[Frontend.scala 314:20 Frontend.scala 315:34 Frontend.scala 174:22]
  wire  _GEN_118 = taken | s2_btb_taken; // @[Frontend.scala 314:20 Frontend.scala 316:34 Frontend.scala 175:28]
  wire [4:0] _GEN_119 = taken ? 5'h1c : s2_btb_resp_bits_entry; // @[Frontend.scala 314:20 Frontend.scala 317:34 Frontend.scala 174:22]
  ICache icache ( // @[Frontend.scala 64:26]
    .clock(icache_clock),
    .reset(icache_reset),
    .auto_master_out_a_ready(icache_auto_master_out_a_ready),
    .auto_master_out_a_valid(icache_auto_master_out_a_valid),
    .auto_master_out_a_bits_address(icache_auto_master_out_a_bits_address),
    .auto_master_out_d_valid(icache_auto_master_out_d_valid),
    .auto_master_out_d_bits_opcode(icache_auto_master_out_d_bits_opcode),
    .auto_master_out_d_bits_size(icache_auto_master_out_d_bits_size),
    .auto_master_out_d_bits_data(icache_auto_master_out_d_bits_data),
    .auto_master_out_d_bits_corrupt(icache_auto_master_out_d_bits_corrupt),
    .io_req_ready(icache_io_req_ready),
    .io_req_valid(icache_io_req_valid),
    .io_req_bits_addr(icache_io_req_bits_addr),
    .io_s1_paddr(icache_io_s1_paddr),
    .io_s1_kill(icache_io_s1_kill),
    .io_s2_kill(icache_io_s2_kill),
    .io_resp_valid(icache_io_resp_valid),
    .io_resp_bits_data(icache_io_resp_bits_data),
    .io_resp_bits_ae(icache_io_resp_bits_ae),
    .io_invalidate(icache_io_invalidate)
  );
  ShiftQueue fq ( // @[Frontend.scala 86:57]
    .clock(fq_clock),
    .reset(fq_reset),
    .io_enq_ready(fq_io_enq_ready),
    .io_enq_valid(fq_io_enq_valid),
    .io_enq_bits_btb_taken(fq_io_enq_bits_btb_taken),
    .io_enq_bits_btb_bridx(fq_io_enq_bits_btb_bridx),
    .io_enq_bits_btb_entry(fq_io_enq_bits_btb_entry),
    .io_enq_bits_btb_bht_history(fq_io_enq_bits_btb_bht_history),
    .io_enq_bits_pc(fq_io_enq_bits_pc),
    .io_enq_bits_data(fq_io_enq_bits_data),
    .io_enq_bits_mask(fq_io_enq_bits_mask),
    .io_enq_bits_xcpt_pf_inst(fq_io_enq_bits_xcpt_pf_inst),
    .io_enq_bits_xcpt_ae_inst(fq_io_enq_bits_xcpt_ae_inst),
    .io_enq_bits_replay(fq_io_enq_bits_replay),
    .io_deq_ready(fq_io_deq_ready),
    .io_deq_valid(fq_io_deq_valid),
    .io_deq_bits_btb_taken(fq_io_deq_bits_btb_taken),
    .io_deq_bits_btb_bridx(fq_io_deq_bits_btb_bridx),
    .io_deq_bits_btb_entry(fq_io_deq_bits_btb_entry),
    .io_deq_bits_btb_bht_history(fq_io_deq_bits_btb_bht_history),
    .io_deq_bits_pc(fq_io_deq_bits_pc),
    .io_deq_bits_data(fq_io_deq_bits_data),
    .io_deq_bits_xcpt_pf_inst(fq_io_deq_bits_xcpt_pf_inst),
    .io_deq_bits_xcpt_ae_inst(fq_io_deq_bits_xcpt_ae_inst),
    .io_deq_bits_replay(fq_io_deq_bits_replay),
    .io_mask(fq_io_mask)
  );
  TLB_1 tlb ( // @[Frontend.scala 100:19]
    .clock(tlb_clock),
    .reset(tlb_reset),
    .io_req_ready(tlb_io_req_ready),
    .io_req_valid(tlb_io_req_valid),
    .io_req_bits_vaddr(tlb_io_req_bits_vaddr),
    .io_resp_miss(tlb_io_resp_miss),
    .io_resp_paddr(tlb_io_resp_paddr),
    .io_resp_pf_inst(tlb_io_resp_pf_inst),
    .io_resp_ae_inst(tlb_io_resp_ae_inst),
    .io_resp_cacheable(tlb_io_resp_cacheable),
    .io_sfence_valid(tlb_io_sfence_valid),
    .io_sfence_bits_rs1(tlb_io_sfence_bits_rs1),
    .io_sfence_bits_rs2(tlb_io_sfence_bits_rs2),
    .io_sfence_bits_addr(tlb_io_sfence_bits_addr),
    .io_ptw_req_ready(tlb_io_ptw_req_ready),
    .io_ptw_req_valid(tlb_io_ptw_req_valid),
    .io_ptw_req_bits_valid(tlb_io_ptw_req_bits_valid),
    .io_ptw_req_bits_bits_addr(tlb_io_ptw_req_bits_bits_addr),
    .io_ptw_resp_valid(tlb_io_ptw_resp_valid),
    .io_ptw_resp_bits_ae(tlb_io_ptw_resp_bits_ae),
    .io_ptw_resp_bits_pte_ppn(tlb_io_ptw_resp_bits_pte_ppn),
    .io_ptw_resp_bits_pte_d(tlb_io_ptw_resp_bits_pte_d),
    .io_ptw_resp_bits_pte_a(tlb_io_ptw_resp_bits_pte_a),
    .io_ptw_resp_bits_pte_g(tlb_io_ptw_resp_bits_pte_g),
    .io_ptw_resp_bits_pte_u(tlb_io_ptw_resp_bits_pte_u),
    .io_ptw_resp_bits_pte_x(tlb_io_ptw_resp_bits_pte_x),
    .io_ptw_resp_bits_pte_w(tlb_io_ptw_resp_bits_pte_w),
    .io_ptw_resp_bits_pte_r(tlb_io_ptw_resp_bits_pte_r),
    .io_ptw_resp_bits_pte_v(tlb_io_ptw_resp_bits_pte_v),
    .io_ptw_resp_bits_level(tlb_io_ptw_resp_bits_level),
    .io_ptw_resp_bits_homogeneous(tlb_io_ptw_resp_bits_homogeneous),
    .io_ptw_ptbr_mode(tlb_io_ptw_ptbr_mode),
    .io_ptw_status_debug(tlb_io_ptw_status_debug),
    .io_ptw_status_prv(tlb_io_ptw_status_prv),
    .io_ptw_pmp_0_cfg_l(tlb_io_ptw_pmp_0_cfg_l),
    .io_ptw_pmp_0_cfg_a(tlb_io_ptw_pmp_0_cfg_a),
    .io_ptw_pmp_0_cfg_x(tlb_io_ptw_pmp_0_cfg_x),
    .io_ptw_pmp_0_cfg_w(tlb_io_ptw_pmp_0_cfg_w),
    .io_ptw_pmp_0_cfg_r(tlb_io_ptw_pmp_0_cfg_r),
    .io_ptw_pmp_0_addr(tlb_io_ptw_pmp_0_addr),
    .io_ptw_pmp_0_mask(tlb_io_ptw_pmp_0_mask),
    .io_ptw_pmp_1_cfg_l(tlb_io_ptw_pmp_1_cfg_l),
    .io_ptw_pmp_1_cfg_a(tlb_io_ptw_pmp_1_cfg_a),
    .io_ptw_pmp_1_cfg_x(tlb_io_ptw_pmp_1_cfg_x),
    .io_ptw_pmp_1_cfg_w(tlb_io_ptw_pmp_1_cfg_w),
    .io_ptw_pmp_1_cfg_r(tlb_io_ptw_pmp_1_cfg_r),
    .io_ptw_pmp_1_addr(tlb_io_ptw_pmp_1_addr),
    .io_ptw_pmp_1_mask(tlb_io_ptw_pmp_1_mask),
    .io_ptw_pmp_2_cfg_l(tlb_io_ptw_pmp_2_cfg_l),
    .io_ptw_pmp_2_cfg_a(tlb_io_ptw_pmp_2_cfg_a),
    .io_ptw_pmp_2_cfg_x(tlb_io_ptw_pmp_2_cfg_x),
    .io_ptw_pmp_2_cfg_w(tlb_io_ptw_pmp_2_cfg_w),
    .io_ptw_pmp_2_cfg_r(tlb_io_ptw_pmp_2_cfg_r),
    .io_ptw_pmp_2_addr(tlb_io_ptw_pmp_2_addr),
    .io_ptw_pmp_2_mask(tlb_io_ptw_pmp_2_mask),
    .io_ptw_pmp_3_cfg_l(tlb_io_ptw_pmp_3_cfg_l),
    .io_ptw_pmp_3_cfg_a(tlb_io_ptw_pmp_3_cfg_a),
    .io_ptw_pmp_3_cfg_x(tlb_io_ptw_pmp_3_cfg_x),
    .io_ptw_pmp_3_cfg_w(tlb_io_ptw_pmp_3_cfg_w),
    .io_ptw_pmp_3_cfg_r(tlb_io_ptw_pmp_3_cfg_r),
    .io_ptw_pmp_3_addr(tlb_io_ptw_pmp_3_addr),
    .io_ptw_pmp_3_mask(tlb_io_ptw_pmp_3_mask),
    .io_ptw_pmp_4_cfg_l(tlb_io_ptw_pmp_4_cfg_l),
    .io_ptw_pmp_4_cfg_a(tlb_io_ptw_pmp_4_cfg_a),
    .io_ptw_pmp_4_cfg_x(tlb_io_ptw_pmp_4_cfg_x),
    .io_ptw_pmp_4_cfg_w(tlb_io_ptw_pmp_4_cfg_w),
    .io_ptw_pmp_4_cfg_r(tlb_io_ptw_pmp_4_cfg_r),
    .io_ptw_pmp_4_addr(tlb_io_ptw_pmp_4_addr),
    .io_ptw_pmp_4_mask(tlb_io_ptw_pmp_4_mask),
    .io_ptw_pmp_5_cfg_l(tlb_io_ptw_pmp_5_cfg_l),
    .io_ptw_pmp_5_cfg_a(tlb_io_ptw_pmp_5_cfg_a),
    .io_ptw_pmp_5_cfg_x(tlb_io_ptw_pmp_5_cfg_x),
    .io_ptw_pmp_5_cfg_w(tlb_io_ptw_pmp_5_cfg_w),
    .io_ptw_pmp_5_cfg_r(tlb_io_ptw_pmp_5_cfg_r),
    .io_ptw_pmp_5_addr(tlb_io_ptw_pmp_5_addr),
    .io_ptw_pmp_5_mask(tlb_io_ptw_pmp_5_mask),
    .io_ptw_pmp_6_cfg_l(tlb_io_ptw_pmp_6_cfg_l),
    .io_ptw_pmp_6_cfg_a(tlb_io_ptw_pmp_6_cfg_a),
    .io_ptw_pmp_6_cfg_x(tlb_io_ptw_pmp_6_cfg_x),
    .io_ptw_pmp_6_cfg_w(tlb_io_ptw_pmp_6_cfg_w),
    .io_ptw_pmp_6_cfg_r(tlb_io_ptw_pmp_6_cfg_r),
    .io_ptw_pmp_6_addr(tlb_io_ptw_pmp_6_addr),
    .io_ptw_pmp_6_mask(tlb_io_ptw_pmp_6_mask),
    .io_ptw_pmp_7_cfg_l(tlb_io_ptw_pmp_7_cfg_l),
    .io_ptw_pmp_7_cfg_a(tlb_io_ptw_pmp_7_cfg_a),
    .io_ptw_pmp_7_cfg_x(tlb_io_ptw_pmp_7_cfg_x),
    .io_ptw_pmp_7_cfg_w(tlb_io_ptw_pmp_7_cfg_w),
    .io_ptw_pmp_7_cfg_r(tlb_io_ptw_pmp_7_cfg_r),
    .io_ptw_pmp_7_addr(tlb_io_ptw_pmp_7_addr),
    .io_ptw_pmp_7_mask(tlb_io_ptw_pmp_7_mask),
    .io_kill(tlb_io_kill)
  );
  BTB btb ( // @[Frontend.scala 181:21]
    .clock(btb_clock),
    .reset(btb_reset),
    .io_req_bits_addr(btb_io_req_bits_addr),
    .io_resp_valid(btb_io_resp_valid),
    .io_resp_bits_taken(btb_io_resp_bits_taken),
    .io_resp_bits_bridx(btb_io_resp_bits_bridx),
    .io_resp_bits_target(btb_io_resp_bits_target),
    .io_resp_bits_entry(btb_io_resp_bits_entry),
    .io_resp_bits_bht_history(btb_io_resp_bits_bht_history),
    .io_resp_bits_bht_value(btb_io_resp_bits_bht_value),
    .io_btb_update_valid(btb_io_btb_update_valid),
    .io_btb_update_bits_prediction_entry(btb_io_btb_update_bits_prediction_entry),
    .io_btb_update_bits_pc(btb_io_btb_update_bits_pc),
    .io_btb_update_bits_isValid(btb_io_btb_update_bits_isValid),
    .io_btb_update_bits_br_pc(btb_io_btb_update_bits_br_pc),
    .io_btb_update_bits_cfiType(btb_io_btb_update_bits_cfiType),
    .io_bht_update_valid(btb_io_bht_update_valid),
    .io_bht_update_bits_prediction_history(btb_io_bht_update_bits_prediction_history),
    .io_bht_update_bits_pc(btb_io_bht_update_bits_pc),
    .io_bht_update_bits_branch(btb_io_bht_update_bits_branch),
    .io_bht_update_bits_taken(btb_io_bht_update_bits_taken),
    .io_bht_update_bits_mispredict(btb_io_bht_update_bits_mispredict),
    .io_bht_advance_valid(btb_io_bht_advance_valid),
    .io_bht_advance_bits_bht_value(btb_io_bht_advance_bits_bht_value),
    .io_ras_update_valid(btb_io_ras_update_valid),
    .io_ras_update_bits_cfiType(btb_io_ras_update_bits_cfiType),
    .io_ras_update_bits_returnAddr(btb_io_ras_update_bits_returnAddr),
    .io_ras_head_valid(btb_io_ras_head_valid),
    .io_ras_head_bits(btb_io_ras_head_bits),
    .io_flush(btb_io_flush)
  );
  assign auto_icache_master_out_a_valid = icache_auto_master_out_a_valid; // @[LazyModule.scala 314:12]
  assign auto_icache_master_out_a_bits_address = icache_auto_master_out_a_bits_address; // @[LazyModule.scala 314:12]
  assign io_cpu_resp_valid = fq_io_deq_valid; // @[Frontend.scala 327:15]
  assign io_cpu_resp_bits_btb_taken = fq_io_deq_bits_btb_taken; // @[Frontend.scala 327:15]
  assign io_cpu_resp_bits_btb_bridx = fq_io_deq_bits_btb_bridx; // @[Frontend.scala 327:15]
  assign io_cpu_resp_bits_btb_entry = fq_io_deq_bits_btb_entry; // @[Frontend.scala 327:15]
  assign io_cpu_resp_bits_btb_bht_history = fq_io_deq_bits_btb_bht_history; // @[Frontend.scala 327:15]
  assign io_cpu_resp_bits_pc = fq_io_deq_bits_pc; // @[Frontend.scala 327:15]
  assign io_cpu_resp_bits_data = fq_io_deq_bits_data; // @[Frontend.scala 327:15]
  assign io_cpu_resp_bits_xcpt_pf_inst = fq_io_deq_bits_xcpt_pf_inst; // @[Frontend.scala 327:15]
  assign io_cpu_resp_bits_xcpt_ae_inst = fq_io_deq_bits_xcpt_ae_inst; // @[Frontend.scala 327:15]
  assign io_cpu_resp_bits_replay = fq_io_deq_bits_replay; // @[Frontend.scala 327:15]
  assign io_cpu_npc = ~_io_cpu_npc_T_2; // @[Frontend.scala 343:27]
  assign io_ptw_req_valid = tlb_io_ptw_req_valid; // @[Frontend.scala 149:10]
  assign io_ptw_req_bits_valid = tlb_io_ptw_req_bits_valid; // @[Frontend.scala 149:10]
  assign io_ptw_req_bits_bits_addr = tlb_io_ptw_req_bits_bits_addr; // @[Frontend.scala 149:10]
  assign icache_clock = gated_clock; // @[Frontend.scala 96:16]
  assign icache_reset = reset;
  assign icache_auto_master_out_a_ready = auto_icache_master_out_a_ready; // @[LazyModule.scala 314:12]
  assign icache_auto_master_out_d_valid = auto_icache_master_out_d_valid; // @[LazyModule.scala 314:12]
  assign icache_auto_master_out_d_bits_opcode = auto_icache_master_out_d_bits_opcode; // @[LazyModule.scala 314:12]
  assign icache_auto_master_out_d_bits_size = auto_icache_master_out_d_bits_size; // @[LazyModule.scala 314:12]
  assign icache_auto_master_out_d_bits_data = auto_icache_master_out_d_bits_data; // @[LazyModule.scala 314:12]
  assign icache_auto_master_out_d_bits_corrupt = auto_icache_master_out_d_bits_corrupt; // @[LazyModule.scala 314:12]
  assign icache_io_req_valid = io_cpu_req_valid | s0_fq_has_space; // @[Frontend.scala 108:35]
  assign icache_io_req_bits_addr = io_cpu_npc[38:0]; // @[Frontend.scala 158:27]
  assign icache_io_s1_paddr = tlb_io_resp_paddr; // @[Frontend.scala 160:22]
  assign icache_io_s1_kill = (s2_redirect | tlb_io_resp_miss) | s2_replay; // @[Frontend.scala 162:56]
  assign icache_io_s2_kill = (s2_speculative & (~s2_can_speculatively_refill)) | s2_xcpt; // @[Frontend.scala 164:71]
  assign icache_io_invalidate = io_cpu_flush_icache; // @[Frontend.scala 159:24]
  assign fq_clock = gated_clock;
  assign fq_reset = reset | io_cpu_req_valid; // @[Frontend.scala 86:28]
  assign fq_io_enq_valid = (fq_io_enq_valid_REG & s2_valid) & (icache_io_resp_valid | ((~s2_tlb_resp_miss) &
    icache_io_s2_kill)); // @[Frontend.scala 167:52]
  assign fq_io_enq_bits_btb_taken = _taken_T_36 ? _GEN_118 : s2_btb_taken; // @[Frontend.scala 313:26 Frontend.scala 175:28]
  assign fq_io_enq_bits_btb_bridx = _taken_T_36 ? _GEN_117 : s2_btb_resp_bits_bridx; // @[Frontend.scala 313:26 Frontend.scala 174:22]
  assign fq_io_enq_bits_btb_entry = _taken_T_36 ? _GEN_119 : s2_btb_resp_bits_entry; // @[Frontend.scala 313:26 Frontend.scala 174:22]
  assign fq_io_enq_bits_btb_bht_history = s2_btb_resp_bits_bht_history; // @[Frontend.scala 174:22]
  assign fq_io_enq_bits_pc = s2_pc; // @[Frontend.scala 168:21]
  assign fq_io_enq_bits_data = icache_io_resp_bits_data; // @[Frontend.scala 171:23]
  assign fq_io_enq_bits_mask = _fq_io_enq_bits_mask_T_1[1:0]; // @[Frontend.scala 172:23]
  assign fq_io_enq_bits_xcpt_pf_inst = s2_tlb_resp_pf_inst; // @[Frontend.scala 176:23]
  assign fq_io_enq_bits_xcpt_ae_inst = _T_20 | s2_tlb_resp_ae_inst; // @[Frontend.scala 178:57 Frontend.scala 178:87 Frontend.scala 176:23]
  assign fq_io_enq_bits_replay = _taken_T_34 | _GEN_39; // @[Frontend.scala 238:95 Frontend.scala 242:31]
  assign fq_io_deq_ready = io_cpu_resp_ready; // @[Frontend.scala 327:15]
  assign tlb_clock = gated_clock;
  assign tlb_reset = reset;
  assign tlb_io_req_valid = s1_valid & _T_11; // @[Frontend.scala 150:32]
  assign tlb_io_req_bits_vaddr = s1_pc; // @[Frontend.scala 151:25]
  assign tlb_io_sfence_valid = io_cpu_sfence_valid; // @[Frontend.scala 154:17]
  assign tlb_io_sfence_bits_rs1 = io_cpu_sfence_bits_rs1; // @[Frontend.scala 154:17]
  assign tlb_io_sfence_bits_rs2 = io_cpu_sfence_bits_rs2; // @[Frontend.scala 154:17]
  assign tlb_io_sfence_bits_addr = io_cpu_sfence_bits_addr; // @[Frontend.scala 154:17]
  assign tlb_io_ptw_req_ready = io_ptw_req_ready; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_resp_valid = io_ptw_resp_valid; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_resp_bits_ae = io_ptw_resp_bits_ae; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_resp_bits_pte_ppn = io_ptw_resp_bits_pte_ppn; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_resp_bits_pte_d = io_ptw_resp_bits_pte_d; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_resp_bits_pte_a = io_ptw_resp_bits_pte_a; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_resp_bits_pte_g = io_ptw_resp_bits_pte_g; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_resp_bits_pte_u = io_ptw_resp_bits_pte_u; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_resp_bits_pte_x = io_ptw_resp_bits_pte_x; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_resp_bits_pte_w = io_ptw_resp_bits_pte_w; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_resp_bits_pte_r = io_ptw_resp_bits_pte_r; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_resp_bits_pte_v = io_ptw_resp_bits_pte_v; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_resp_bits_level = io_ptw_resp_bits_level; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_resp_bits_homogeneous = io_ptw_resp_bits_homogeneous; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_ptbr_mode = io_ptw_ptbr_mode; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_status_debug = io_ptw_status_debug; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_status_prv = io_ptw_status_prv; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_0_cfg_l = io_ptw_pmp_0_cfg_l; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_0_cfg_a = io_ptw_pmp_0_cfg_a; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_0_cfg_x = io_ptw_pmp_0_cfg_x; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_0_cfg_w = io_ptw_pmp_0_cfg_w; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_0_cfg_r = io_ptw_pmp_0_cfg_r; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_0_addr = io_ptw_pmp_0_addr; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_0_mask = io_ptw_pmp_0_mask; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_1_cfg_l = io_ptw_pmp_1_cfg_l; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_1_cfg_a = io_ptw_pmp_1_cfg_a; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_1_cfg_x = io_ptw_pmp_1_cfg_x; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_1_cfg_w = io_ptw_pmp_1_cfg_w; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_1_cfg_r = io_ptw_pmp_1_cfg_r; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_1_addr = io_ptw_pmp_1_addr; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_1_mask = io_ptw_pmp_1_mask; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_2_cfg_l = io_ptw_pmp_2_cfg_l; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_2_cfg_a = io_ptw_pmp_2_cfg_a; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_2_cfg_x = io_ptw_pmp_2_cfg_x; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_2_cfg_w = io_ptw_pmp_2_cfg_w; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_2_cfg_r = io_ptw_pmp_2_cfg_r; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_2_addr = io_ptw_pmp_2_addr; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_2_mask = io_ptw_pmp_2_mask; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_3_cfg_l = io_ptw_pmp_3_cfg_l; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_3_cfg_a = io_ptw_pmp_3_cfg_a; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_3_cfg_x = io_ptw_pmp_3_cfg_x; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_3_cfg_w = io_ptw_pmp_3_cfg_w; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_3_cfg_r = io_ptw_pmp_3_cfg_r; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_3_addr = io_ptw_pmp_3_addr; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_3_mask = io_ptw_pmp_3_mask; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_4_cfg_l = io_ptw_pmp_4_cfg_l; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_4_cfg_a = io_ptw_pmp_4_cfg_a; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_4_cfg_x = io_ptw_pmp_4_cfg_x; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_4_cfg_w = io_ptw_pmp_4_cfg_w; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_4_cfg_r = io_ptw_pmp_4_cfg_r; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_4_addr = io_ptw_pmp_4_addr; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_4_mask = io_ptw_pmp_4_mask; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_5_cfg_l = io_ptw_pmp_5_cfg_l; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_5_cfg_a = io_ptw_pmp_5_cfg_a; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_5_cfg_x = io_ptw_pmp_5_cfg_x; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_5_cfg_w = io_ptw_pmp_5_cfg_w; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_5_cfg_r = io_ptw_pmp_5_cfg_r; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_5_addr = io_ptw_pmp_5_addr; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_5_mask = io_ptw_pmp_5_mask; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_6_cfg_l = io_ptw_pmp_6_cfg_l; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_6_cfg_a = io_ptw_pmp_6_cfg_a; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_6_cfg_x = io_ptw_pmp_6_cfg_x; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_6_cfg_w = io_ptw_pmp_6_cfg_w; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_6_cfg_r = io_ptw_pmp_6_cfg_r; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_6_addr = io_ptw_pmp_6_addr; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_6_mask = io_ptw_pmp_6_mask; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_7_cfg_l = io_ptw_pmp_7_cfg_l; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_7_cfg_a = io_ptw_pmp_7_cfg_a; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_7_cfg_x = io_ptw_pmp_7_cfg_x; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_7_cfg_w = io_ptw_pmp_7_cfg_w; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_7_cfg_r = io_ptw_pmp_7_cfg_r; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_7_addr = io_ptw_pmp_7_addr; // @[Frontend.scala 149:10]
  assign tlb_io_ptw_pmp_7_mask = io_ptw_pmp_7_mask; // @[Frontend.scala 149:10]
  assign tlb_io_kill = ~s2_valid; // @[Frontend.scala 155:18]
  assign btb_clock = gated_clock;
  assign btb_reset = reset;
  assign btb_io_req_bits_addr = s1_pc[38:0]; // @[Frontend.scala 184:26]
  assign btb_io_btb_update_valid = _T_23 ? _btb_io_btb_update_valid_T_4 : io_cpu_btb_update_valid; // @[Frontend.scala 294:37 Frontend.scala 296:31 Frontend.scala 185:23]
  assign btb_io_btb_update_bits_prediction_entry = _T_23 ? 5'h1c : io_cpu_btb_update_bits_prediction_entry; // @[Frontend.scala 294:37 Frontend.scala 297:47 Frontend.scala 185:23]
  assign btb_io_btb_update_bits_pc = _GEN_37[38:0];
  assign btb_io_btb_update_bits_isValid = _T_23 | io_cpu_btb_update_bits_isValid; // @[Frontend.scala 294:37 Frontend.scala 298:38 Frontend.scala 185:23]
  assign btb_io_btb_update_bits_br_pc = _GEN_36[38:0];
  assign btb_io_btb_update_bits_cfiType = _T_23 ? btb_io_ras_update_bits_cfiType : io_cpu_btb_update_bits_cfiType; // @[Frontend.scala 294:37 Frontend.scala 299:38 Frontend.scala 185:23]
  assign btb_io_bht_update_valid = io_cpu_bht_update_valid; // @[Frontend.scala 201:24 Frontend.scala 201:50 Frontend.scala 186:23]
  assign btb_io_bht_update_bits_prediction_history = io_cpu_bht_update_bits_prediction_history; // @[Frontend.scala 186:23]
  assign btb_io_bht_update_bits_pc = io_cpu_bht_update_bits_pc; // @[Frontend.scala 186:23]
  assign btb_io_bht_update_bits_branch = io_cpu_bht_update_bits_branch; // @[Frontend.scala 186:23]
  assign btb_io_bht_update_bits_taken = io_cpu_bht_update_bits_taken; // @[Frontend.scala 186:23]
  assign btb_io_bht_update_bits_mispredict = io_cpu_bht_update_bits_mispredict; // @[Frontend.scala 186:23]
  assign btb_io_bht_advance_valid = taken_idx ? _GEN_83 : _GEN_47; // @[Frontend.scala 247:25]
  assign btb_io_bht_advance_bits_bht_value = s2_btb_resp_bits_bht_value; // @[Frontend.scala 247:25]
  assign btb_io_ras_update_valid = taken_idx ? _taken_btb_io_ras_update_valid_T_17 : _taken_btb_io_ras_update_valid_T_8; // @[Frontend.scala 247:25 Frontend.scala 250:33]
  assign btb_io_ras_update_bits_cfiType = taken_idx ? _taken_btb_io_ras_update_bits_cfiType_T_15 :
    _taken_btb_io_ras_update_bits_cfiType_T_7; // @[Frontend.scala 247:25 Frontend.scala 251:40]
  assign btb_io_ras_update_bits_returnAddr = _btb_io_ras_update_bits_returnAddr_T_2[38:0]; // @[Frontend.scala 304:39]
  assign btb_io_flush = _taken_T_34 | _taken_T_5; // @[Frontend.scala 238:95 Frontend.scala 241:22]
  always @(posedge gated_clock) begin
    s1_valid <= io_cpu_req_valid | s0_fq_has_space; // @[Frontend.scala 108:35]
    if (reset) begin // @[Frontend.scala 103:25]
      s2_valid <= 1'h0; // @[Frontend.scala 103:25]
    end else begin
      s2_valid <= _GEN_0;
    end
    s1_pc <= io_cpu_npc; // @[Frontend.scala 132:9]
    if (io_cpu_req_valid) begin // @[Frontend.scala 138:24]
      s1_speculative <= io_cpu_req_bits_speculative;
    end else if (s2_replay) begin // @[Frontend.scala 138:75]
      s1_speculative <= s2_speculative;
    end else begin
      s1_speculative <= s0_speculative;
    end
    if (reset) begin // @[Frontend.scala 112:22]
      s2_pc <= 40'h10040; // @[Frontend.scala 112:22]
    end else if (_T_11) begin // @[Frontend.scala 142:21]
      s2_pc <= s1_pc; // @[Frontend.scala 144:11]
    end
    if (_T_11) begin // @[Frontend.scala 189:23]
      s2_btb_resp_valid <= btb_io_resp_valid; // @[Frontend.scala 191:25]
    end
    if (_T_11) begin // @[Frontend.scala 189:23]
      s2_btb_resp_bits_taken <= btb_io_resp_bits_taken; // @[Frontend.scala 192:24]
    end
    if (_T_11) begin // @[Frontend.scala 189:23]
      s2_btb_resp_bits_bridx <= btb_io_resp_bits_bridx; // @[Frontend.scala 192:24]
    end
    if (_T_11) begin // @[Frontend.scala 189:23]
      s2_btb_resp_bits_entry <= btb_io_resp_bits_entry; // @[Frontend.scala 192:24]
    end
    if (_T_11) begin // @[Frontend.scala 189:23]
      s2_btb_resp_bits_bht_history <= btb_io_resp_bits_bht_history; // @[Frontend.scala 192:24]
    end
    if (_T_11) begin // @[Frontend.scala 189:23]
      s2_btb_resp_bits_bht_value <= btb_io_resp_bits_bht_value; // @[Frontend.scala 192:24]
    end
    if (_T_11) begin // @[Frontend.scala 142:21]
      s2_tlb_resp_miss <= tlb_io_resp_miss; // @[Frontend.scala 146:17]
    end
    if (_T_11) begin // @[Frontend.scala 142:21]
      s2_tlb_resp_pf_inst <= tlb_io_resp_pf_inst; // @[Frontend.scala 146:17]
    end
    if (_T_11) begin // @[Frontend.scala 142:21]
      s2_tlb_resp_ae_inst <= tlb_io_resp_ae_inst; // @[Frontend.scala 146:17]
    end
    if (_T_11) begin // @[Frontend.scala 142:21]
      s2_tlb_resp_cacheable <= tlb_io_resp_cacheable; // @[Frontend.scala 146:17]
    end
    if (reset) begin // @[Frontend.scala 118:27]
      s2_speculative <= 1'h0; // @[Frontend.scala 118:27]
    end else if (_T_11) begin // @[Frontend.scala 142:21]
      s2_speculative <= s1_speculative; // @[Frontend.scala 145:20]
    end
    if (reset) begin // @[Frontend.scala 119:38]
      s2_partial_insn_valid <= 1'h0; // @[Frontend.scala 119:38]
    end else if (s2_redirect) begin // @[Frontend.scala 323:24]
      s2_partial_insn_valid <= 1'h0; // @[Frontend.scala 323:48]
    end else if (_T_26) begin // @[Frontend.scala 310:56]
      s2_partial_insn_valid <= 1'h0; // @[Frontend.scala 311:29]
    end else if (_s2_replay_T) begin // @[Frontend.scala 281:33]
      s2_partial_insn_valid <= _taken_T_61;
    end
    if (_s2_replay_T) begin // @[Frontend.scala 281:33]
      if (_taken_T_61) begin // @[Frontend.scala 283:46]
        s2_partial_insn <= _taken_s2_partial_insn_T; // @[Frontend.scala 285:29]
      end
    end
    if (io_cpu_req_valid) begin // @[Frontend.scala 324:29]
      wrong_path <= 1'h0; // @[Frontend.scala 324:42]
    end else if (taken_idx) begin // @[Frontend.scala 247:25]
      if (_taken_T_36) begin // @[Frontend.scala 256:30]
        wrong_path <= _GEN_77;
      end else begin
        wrong_path <= _GEN_76;
      end
    end else begin
      wrong_path <= _GEN_76;
    end
    s2_replay_REG <= reset | _s2_replay_T_4; // @[Frontend.scala 129:58 Frontend.scala 129:58 Frontend.scala 129:58]
    fq_io_enq_valid_REG <= s1_valid; // @[Frontend.scala 167:29]
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
  s1_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  s2_valid = _RAND_1[0:0];
  _RAND_2 = {2{`RANDOM}};
  s1_pc = _RAND_2[39:0];
  _RAND_3 = {1{`RANDOM}};
  s1_speculative = _RAND_3[0:0];
  _RAND_4 = {2{`RANDOM}};
  s2_pc = _RAND_4[39:0];
  _RAND_5 = {1{`RANDOM}};
  s2_btb_resp_valid = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  s2_btb_resp_bits_taken = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  s2_btb_resp_bits_bridx = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  s2_btb_resp_bits_entry = _RAND_8[4:0];
  _RAND_9 = {1{`RANDOM}};
  s2_btb_resp_bits_bht_history = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  s2_btb_resp_bits_bht_value = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  s2_tlb_resp_miss = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  s2_tlb_resp_pf_inst = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  s2_tlb_resp_ae_inst = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  s2_tlb_resp_cacheable = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  s2_speculative = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  s2_partial_insn_valid = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  s2_partial_insn = _RAND_17[15:0];
  _RAND_18 = {1{`RANDOM}};
  wrong_path = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  s2_replay_REG = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  fq_io_enq_valid_REG = _RAND_20[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
