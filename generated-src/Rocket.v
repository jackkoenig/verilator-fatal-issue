module Rocket(
  input         clock,
  input         reset,
  input         io_hartid,
  input         io_interrupts_debug,
  input         io_interrupts_mtip,
  input         io_interrupts_msip,
  input         io_interrupts_meip,
  input         io_interrupts_seip,
  output        io_imem_might_request,
  output        io_imem_req_valid,
  output [39:0] io_imem_req_bits_pc,
  output        io_imem_req_bits_speculative,
  output        io_imem_sfence_valid,
  output        io_imem_sfence_bits_rs1,
  output        io_imem_sfence_bits_rs2,
  output [38:0] io_imem_sfence_bits_addr,
  output        io_imem_resp_ready,
  input         io_imem_resp_valid,
  input         io_imem_resp_bits_btb_taken,
  input         io_imem_resp_bits_btb_bridx,
  input  [4:0]  io_imem_resp_bits_btb_entry,
  input  [7:0]  io_imem_resp_bits_btb_bht_history,
  input  [39:0] io_imem_resp_bits_pc,
  input  [31:0] io_imem_resp_bits_data,
  input         io_imem_resp_bits_xcpt_pf_inst,
  input         io_imem_resp_bits_xcpt_ae_inst,
  input         io_imem_resp_bits_replay,
  output        io_imem_btb_update_valid,
  output [4:0]  io_imem_btb_update_bits_prediction_entry,
  output [38:0] io_imem_btb_update_bits_pc,
  output        io_imem_btb_update_bits_isValid,
  output [38:0] io_imem_btb_update_bits_br_pc,
  output [1:0]  io_imem_btb_update_bits_cfiType,
  output        io_imem_bht_update_valid,
  output [7:0]  io_imem_bht_update_bits_prediction_history,
  output [38:0] io_imem_bht_update_bits_pc,
  output        io_imem_bht_update_bits_branch,
  output        io_imem_bht_update_bits_taken,
  output        io_imem_bht_update_bits_mispredict,
  output        io_imem_flush_icache,
  input         io_dmem_req_ready,
  output        io_dmem_req_valid,
  output [39:0] io_dmem_req_bits_addr,
  output [6:0]  io_dmem_req_bits_tag,
  output [4:0]  io_dmem_req_bits_cmd,
  output [1:0]  io_dmem_req_bits_size,
  output        io_dmem_req_bits_signed,
  output [1:0]  io_dmem_req_bits_dprv,
  output        io_dmem_s1_kill,
  output [63:0] io_dmem_s1_data_data,
  input         io_dmem_s2_nack,
  input         io_dmem_resp_valid,
  input  [6:0]  io_dmem_resp_bits_tag,
  input  [1:0]  io_dmem_resp_bits_size,
  input  [63:0] io_dmem_resp_bits_data,
  input         io_dmem_resp_bits_replay,
  input         io_dmem_resp_bits_has_data,
  input  [63:0] io_dmem_resp_bits_data_word_bypass,
  input         io_dmem_replay_next,
  input         io_dmem_s2_xcpt_ma_ld,
  input         io_dmem_s2_xcpt_ma_st,
  input         io_dmem_s2_xcpt_pf_ld,
  input         io_dmem_s2_xcpt_pf_st,
  input         io_dmem_s2_xcpt_ae_ld,
  input         io_dmem_s2_xcpt_ae_st,
  input         io_dmem_ordered,
  input         io_dmem_perf_release,
  input         io_dmem_perf_grant,
  output [3:0]  io_ptw_ptbr_mode,
  output [43:0] io_ptw_ptbr_ppn,
  output        io_ptw_sfence_valid,
  output        io_ptw_sfence_bits_rs1,
  output        io_ptw_status_debug,
  output [1:0]  io_ptw_status_dprv,
  output [1:0]  io_ptw_status_prv,
  output        io_ptw_status_mxr,
  output        io_ptw_status_sum,
  output        io_ptw_pmp_0_cfg_l,
  output [1:0]  io_ptw_pmp_0_cfg_a,
  output        io_ptw_pmp_0_cfg_x,
  output        io_ptw_pmp_0_cfg_w,
  output        io_ptw_pmp_0_cfg_r,
  output [29:0] io_ptw_pmp_0_addr,
  output [31:0] io_ptw_pmp_0_mask,
  output        io_ptw_pmp_1_cfg_l,
  output [1:0]  io_ptw_pmp_1_cfg_a,
  output        io_ptw_pmp_1_cfg_x,
  output        io_ptw_pmp_1_cfg_w,
  output        io_ptw_pmp_1_cfg_r,
  output [29:0] io_ptw_pmp_1_addr,
  output [31:0] io_ptw_pmp_1_mask,
  output        io_ptw_pmp_2_cfg_l,
  output [1:0]  io_ptw_pmp_2_cfg_a,
  output        io_ptw_pmp_2_cfg_x,
  output        io_ptw_pmp_2_cfg_w,
  output        io_ptw_pmp_2_cfg_r,
  output [29:0] io_ptw_pmp_2_addr,
  output [31:0] io_ptw_pmp_2_mask,
  output        io_ptw_pmp_3_cfg_l,
  output [1:0]  io_ptw_pmp_3_cfg_a,
  output        io_ptw_pmp_3_cfg_x,
  output        io_ptw_pmp_3_cfg_w,
  output        io_ptw_pmp_3_cfg_r,
  output [29:0] io_ptw_pmp_3_addr,
  output [31:0] io_ptw_pmp_3_mask,
  output        io_ptw_pmp_4_cfg_l,
  output [1:0]  io_ptw_pmp_4_cfg_a,
  output        io_ptw_pmp_4_cfg_x,
  output        io_ptw_pmp_4_cfg_w,
  output        io_ptw_pmp_4_cfg_r,
  output [29:0] io_ptw_pmp_4_addr,
  output [31:0] io_ptw_pmp_4_mask,
  output        io_ptw_pmp_5_cfg_l,
  output [1:0]  io_ptw_pmp_5_cfg_a,
  output        io_ptw_pmp_5_cfg_x,
  output        io_ptw_pmp_5_cfg_w,
  output        io_ptw_pmp_5_cfg_r,
  output [29:0] io_ptw_pmp_5_addr,
  output [31:0] io_ptw_pmp_5_mask,
  output        io_ptw_pmp_6_cfg_l,
  output [1:0]  io_ptw_pmp_6_cfg_a,
  output        io_ptw_pmp_6_cfg_x,
  output        io_ptw_pmp_6_cfg_w,
  output        io_ptw_pmp_6_cfg_r,
  output [29:0] io_ptw_pmp_6_addr,
  output [31:0] io_ptw_pmp_6_mask,
  output        io_ptw_pmp_7_cfg_l,
  output [1:0]  io_ptw_pmp_7_cfg_a,
  output        io_ptw_pmp_7_cfg_x,
  output        io_ptw_pmp_7_cfg_w,
  output        io_ptw_pmp_7_cfg_r,
  output [29:0] io_ptw_pmp_7_addr,
  output [31:0] io_ptw_pmp_7_mask,
  output [63:0] io_ptw_customCSRs_csrs_0_value,
  output [31:0] io_fpu_inst,
  output [63:0] io_fpu_fromint_data,
  output [2:0]  io_fpu_fcsr_rm,
  input         io_fpu_fcsr_flags_valid,
  input  [4:0]  io_fpu_fcsr_flags_bits,
  input  [63:0] io_fpu_store_data,
  input  [63:0] io_fpu_toint_data,
  output        io_fpu_dmem_resp_val,
  output [2:0]  io_fpu_dmem_resp_type,
  output [4:0]  io_fpu_dmem_resp_tag,
  output [63:0] io_fpu_dmem_resp_data,
  output        io_fpu_valid,
  input         io_fpu_fcsr_rdy,
  input         io_fpu_nack_mem,
  input         io_fpu_illegal_rm,
  output        io_fpu_killx,
  output        io_fpu_killm,
  input         io_fpu_dec_wen,
  input         io_fpu_dec_ren1,
  input         io_fpu_dec_ren2,
  input         io_fpu_dec_ren3,
  input         io_fpu_sboard_set,
  input         io_fpu_sboard_clr,
  input  [4:0]  io_fpu_sboard_clra
);
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  reg [63:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
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
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [63:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [63:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [63:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [63:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [63:0] _RAND_80;
  reg [63:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [63:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [63:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [63:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [63:0] _RAND_99;
  reg [63:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [63:0] _RAND_105;
  reg [63:0] _RAND_106;
  reg [63:0] _RAND_107;
  reg [63:0] _RAND_108;
`endif // RANDOMIZE_REG_INIT
  wire  ibuf_clock; // @[RocketCore.scala 250:20]
  wire  ibuf_reset; // @[RocketCore.scala 250:20]
  wire  ibuf_io_imem_ready; // @[RocketCore.scala 250:20]
  wire  ibuf_io_imem_valid; // @[RocketCore.scala 250:20]
  wire  ibuf_io_imem_bits_btb_taken; // @[RocketCore.scala 250:20]
  wire  ibuf_io_imem_bits_btb_bridx; // @[RocketCore.scala 250:20]
  wire [4:0] ibuf_io_imem_bits_btb_entry; // @[RocketCore.scala 250:20]
  wire [7:0] ibuf_io_imem_bits_btb_bht_history; // @[RocketCore.scala 250:20]
  wire [39:0] ibuf_io_imem_bits_pc; // @[RocketCore.scala 250:20]
  wire [31:0] ibuf_io_imem_bits_data; // @[RocketCore.scala 250:20]
  wire  ibuf_io_imem_bits_xcpt_pf_inst; // @[RocketCore.scala 250:20]
  wire  ibuf_io_imem_bits_xcpt_ae_inst; // @[RocketCore.scala 250:20]
  wire  ibuf_io_imem_bits_replay; // @[RocketCore.scala 250:20]
  wire  ibuf_io_kill; // @[RocketCore.scala 250:20]
  wire [39:0] ibuf_io_pc; // @[RocketCore.scala 250:20]
  wire [4:0] ibuf_io_btb_resp_entry; // @[RocketCore.scala 250:20]
  wire [7:0] ibuf_io_btb_resp_bht_history; // @[RocketCore.scala 250:20]
  wire  ibuf_io_inst_0_ready; // @[RocketCore.scala 250:20]
  wire  ibuf_io_inst_0_valid; // @[RocketCore.scala 250:20]
  wire  ibuf_io_inst_0_bits_xcpt0_pf_inst; // @[RocketCore.scala 250:20]
  wire  ibuf_io_inst_0_bits_xcpt0_ae_inst; // @[RocketCore.scala 250:20]
  wire  ibuf_io_inst_0_bits_xcpt1_pf_inst; // @[RocketCore.scala 250:20]
  wire  ibuf_io_inst_0_bits_xcpt1_ae_inst; // @[RocketCore.scala 250:20]
  wire  ibuf_io_inst_0_bits_replay; // @[RocketCore.scala 250:20]
  wire  ibuf_io_inst_0_bits_rvc; // @[RocketCore.scala 250:20]
  wire [31:0] ibuf_io_inst_0_bits_inst_bits; // @[RocketCore.scala 250:20]
  wire [4:0] ibuf_io_inst_0_bits_inst_rd; // @[RocketCore.scala 250:20]
  wire [4:0] ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 250:20]
  wire [4:0] ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 250:20]
  wire [4:0] ibuf_io_inst_0_bits_inst_rs3; // @[RocketCore.scala 250:20]
  wire [31:0] ibuf_io_inst_0_bits_raw; // @[RocketCore.scala 250:20]
  reg [63:0] rf [0:30]; // @[RocketCore.scala 1010:15]
  wire [63:0] rf_id_rs_id_rs_0_MPORT_data; // @[RocketCore.scala 1010:15]
  wire [4:0] rf_id_rs_id_rs_0_MPORT_addr; // @[RocketCore.scala 1010:15]
  wire [63:0] rf_id_rs_id_rs_1_MPORT_data; // @[RocketCore.scala 1010:15]
  wire [4:0] rf_id_rs_id_rs_1_MPORT_addr; // @[RocketCore.scala 1010:15]
  wire [63:0] rf_MPORT_data; // @[RocketCore.scala 1010:15]
  wire [4:0] rf_MPORT_addr; // @[RocketCore.scala 1010:15]
  wire  rf_MPORT_mask; // @[RocketCore.scala 1010:15]
  wire  rf_MPORT_en; // @[RocketCore.scala 1010:15]
  wire  csr_clock; // @[RocketCore.scala 278:19]
  wire  csr_reset; // @[RocketCore.scala 278:19]
  wire  csr_io_ungated_clock; // @[RocketCore.scala 278:19]
  wire  csr_io_interrupts_debug; // @[RocketCore.scala 278:19]
  wire  csr_io_interrupts_mtip; // @[RocketCore.scala 278:19]
  wire  csr_io_interrupts_msip; // @[RocketCore.scala 278:19]
  wire  csr_io_interrupts_meip; // @[RocketCore.scala 278:19]
  wire  csr_io_interrupts_seip; // @[RocketCore.scala 278:19]
  wire  csr_io_hartid; // @[RocketCore.scala 278:19]
  wire [11:0] csr_io_rw_addr; // @[RocketCore.scala 278:19]
  wire [2:0] csr_io_rw_cmd; // @[RocketCore.scala 278:19]
  wire [63:0] csr_io_rw_rdata; // @[RocketCore.scala 278:19]
  wire [63:0] csr_io_rw_wdata; // @[RocketCore.scala 278:19]
  wire [11:0] csr_io_decode_0_csr; // @[RocketCore.scala 278:19]
  wire  csr_io_decode_0_fp_illegal; // @[RocketCore.scala 278:19]
  wire  csr_io_decode_0_fp_csr; // @[RocketCore.scala 278:19]
  wire  csr_io_decode_0_read_illegal; // @[RocketCore.scala 278:19]
  wire  csr_io_decode_0_write_illegal; // @[RocketCore.scala 278:19]
  wire  csr_io_decode_0_write_flush; // @[RocketCore.scala 278:19]
  wire  csr_io_decode_0_system_illegal; // @[RocketCore.scala 278:19]
  wire  csr_io_csr_stall; // @[RocketCore.scala 278:19]
  wire  csr_io_eret; // @[RocketCore.scala 278:19]
  wire  csr_io_singleStep; // @[RocketCore.scala 278:19]
  wire  csr_io_status_debug; // @[RocketCore.scala 278:19]
  wire  csr_io_status_cease; // @[RocketCore.scala 278:19]
  wire  csr_io_status_wfi; // @[RocketCore.scala 278:19]
  wire [31:0] csr_io_status_isa; // @[RocketCore.scala 278:19]
  wire [1:0] csr_io_status_dprv; // @[RocketCore.scala 278:19]
  wire [1:0] csr_io_status_prv; // @[RocketCore.scala 278:19]
  wire  csr_io_status_sd; // @[RocketCore.scala 278:19]
  wire [26:0] csr_io_status_zero2; // @[RocketCore.scala 278:19]
  wire [1:0] csr_io_status_sxl; // @[RocketCore.scala 278:19]
  wire [1:0] csr_io_status_uxl; // @[RocketCore.scala 278:19]
  wire  csr_io_status_sd_rv32; // @[RocketCore.scala 278:19]
  wire [7:0] csr_io_status_zero1; // @[RocketCore.scala 278:19]
  wire  csr_io_status_tsr; // @[RocketCore.scala 278:19]
  wire  csr_io_status_tw; // @[RocketCore.scala 278:19]
  wire  csr_io_status_tvm; // @[RocketCore.scala 278:19]
  wire  csr_io_status_mxr; // @[RocketCore.scala 278:19]
  wire  csr_io_status_sum; // @[RocketCore.scala 278:19]
  wire  csr_io_status_mprv; // @[RocketCore.scala 278:19]
  wire [1:0] csr_io_status_xs; // @[RocketCore.scala 278:19]
  wire [1:0] csr_io_status_fs; // @[RocketCore.scala 278:19]
  wire [1:0] csr_io_status_mpp; // @[RocketCore.scala 278:19]
  wire [1:0] csr_io_status_vs; // @[RocketCore.scala 278:19]
  wire  csr_io_status_spp; // @[RocketCore.scala 278:19]
  wire  csr_io_status_mpie; // @[RocketCore.scala 278:19]
  wire  csr_io_status_hpie; // @[RocketCore.scala 278:19]
  wire  csr_io_status_spie; // @[RocketCore.scala 278:19]
  wire  csr_io_status_upie; // @[RocketCore.scala 278:19]
  wire  csr_io_status_mie; // @[RocketCore.scala 278:19]
  wire  csr_io_status_hie; // @[RocketCore.scala 278:19]
  wire  csr_io_status_sie; // @[RocketCore.scala 278:19]
  wire  csr_io_status_uie; // @[RocketCore.scala 278:19]
  wire [3:0] csr_io_ptbr_mode; // @[RocketCore.scala 278:19]
  wire [43:0] csr_io_ptbr_ppn; // @[RocketCore.scala 278:19]
  wire [39:0] csr_io_evec; // @[RocketCore.scala 278:19]
  wire  csr_io_exception; // @[RocketCore.scala 278:19]
  wire  csr_io_retire; // @[RocketCore.scala 278:19]
  wire [63:0] csr_io_cause; // @[RocketCore.scala 278:19]
  wire [39:0] csr_io_pc; // @[RocketCore.scala 278:19]
  wire [39:0] csr_io_tval; // @[RocketCore.scala 278:19]
  wire [63:0] csr_io_time; // @[RocketCore.scala 278:19]
  wire [2:0] csr_io_fcsr_rm; // @[RocketCore.scala 278:19]
  wire  csr_io_fcsr_flags_valid; // @[RocketCore.scala 278:19]
  wire [4:0] csr_io_fcsr_flags_bits; // @[RocketCore.scala 278:19]
  wire  csr_io_interrupt; // @[RocketCore.scala 278:19]
  wire [63:0] csr_io_interrupt_cause; // @[RocketCore.scala 278:19]
  wire  csr_io_bp_0_control_action; // @[RocketCore.scala 278:19]
  wire [1:0] csr_io_bp_0_control_tmatch; // @[RocketCore.scala 278:19]
  wire  csr_io_bp_0_control_m; // @[RocketCore.scala 278:19]
  wire  csr_io_bp_0_control_s; // @[RocketCore.scala 278:19]
  wire  csr_io_bp_0_control_u; // @[RocketCore.scala 278:19]
  wire  csr_io_bp_0_control_x; // @[RocketCore.scala 278:19]
  wire  csr_io_bp_0_control_w; // @[RocketCore.scala 278:19]
  wire  csr_io_bp_0_control_r; // @[RocketCore.scala 278:19]
  wire [38:0] csr_io_bp_0_address; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_0_cfg_l; // @[RocketCore.scala 278:19]
  wire [1:0] csr_io_pmp_0_cfg_a; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_0_cfg_x; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_0_cfg_w; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_0_cfg_r; // @[RocketCore.scala 278:19]
  wire [29:0] csr_io_pmp_0_addr; // @[RocketCore.scala 278:19]
  wire [31:0] csr_io_pmp_0_mask; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_1_cfg_l; // @[RocketCore.scala 278:19]
  wire [1:0] csr_io_pmp_1_cfg_a; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_1_cfg_x; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_1_cfg_w; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_1_cfg_r; // @[RocketCore.scala 278:19]
  wire [29:0] csr_io_pmp_1_addr; // @[RocketCore.scala 278:19]
  wire [31:0] csr_io_pmp_1_mask; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_2_cfg_l; // @[RocketCore.scala 278:19]
  wire [1:0] csr_io_pmp_2_cfg_a; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_2_cfg_x; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_2_cfg_w; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_2_cfg_r; // @[RocketCore.scala 278:19]
  wire [29:0] csr_io_pmp_2_addr; // @[RocketCore.scala 278:19]
  wire [31:0] csr_io_pmp_2_mask; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_3_cfg_l; // @[RocketCore.scala 278:19]
  wire [1:0] csr_io_pmp_3_cfg_a; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_3_cfg_x; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_3_cfg_w; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_3_cfg_r; // @[RocketCore.scala 278:19]
  wire [29:0] csr_io_pmp_3_addr; // @[RocketCore.scala 278:19]
  wire [31:0] csr_io_pmp_3_mask; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_4_cfg_l; // @[RocketCore.scala 278:19]
  wire [1:0] csr_io_pmp_4_cfg_a; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_4_cfg_x; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_4_cfg_w; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_4_cfg_r; // @[RocketCore.scala 278:19]
  wire [29:0] csr_io_pmp_4_addr; // @[RocketCore.scala 278:19]
  wire [31:0] csr_io_pmp_4_mask; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_5_cfg_l; // @[RocketCore.scala 278:19]
  wire [1:0] csr_io_pmp_5_cfg_a; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_5_cfg_x; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_5_cfg_w; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_5_cfg_r; // @[RocketCore.scala 278:19]
  wire [29:0] csr_io_pmp_5_addr; // @[RocketCore.scala 278:19]
  wire [31:0] csr_io_pmp_5_mask; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_6_cfg_l; // @[RocketCore.scala 278:19]
  wire [1:0] csr_io_pmp_6_cfg_a; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_6_cfg_x; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_6_cfg_w; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_6_cfg_r; // @[RocketCore.scala 278:19]
  wire [29:0] csr_io_pmp_6_addr; // @[RocketCore.scala 278:19]
  wire [31:0] csr_io_pmp_6_mask; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_7_cfg_l; // @[RocketCore.scala 278:19]
  wire [1:0] csr_io_pmp_7_cfg_a; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_7_cfg_x; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_7_cfg_w; // @[RocketCore.scala 278:19]
  wire  csr_io_pmp_7_cfg_r; // @[RocketCore.scala 278:19]
  wire [29:0] csr_io_pmp_7_addr; // @[RocketCore.scala 278:19]
  wire [31:0] csr_io_pmp_7_mask; // @[RocketCore.scala 278:19]
  wire [31:0] csr_io_inst_0; // @[RocketCore.scala 278:19]
  wire  csr_io_trace_0_valid; // @[RocketCore.scala 278:19]
  wire [39:0] csr_io_trace_0_iaddr; // @[RocketCore.scala 278:19]
  wire [31:0] csr_io_trace_0_insn; // @[RocketCore.scala 278:19]
  wire  csr_io_trace_0_exception; // @[RocketCore.scala 278:19]
  wire [63:0] csr_io_customCSRs_0_value; // @[RocketCore.scala 278:19]
  wire  bpu_io_status_debug; // @[RocketCore.scala 319:19]
  wire [1:0] bpu_io_status_prv; // @[RocketCore.scala 319:19]
  wire  bpu_io_bp_0_control_action; // @[RocketCore.scala 319:19]
  wire [1:0] bpu_io_bp_0_control_tmatch; // @[RocketCore.scala 319:19]
  wire  bpu_io_bp_0_control_m; // @[RocketCore.scala 319:19]
  wire  bpu_io_bp_0_control_s; // @[RocketCore.scala 319:19]
  wire  bpu_io_bp_0_control_u; // @[RocketCore.scala 319:19]
  wire  bpu_io_bp_0_control_x; // @[RocketCore.scala 319:19]
  wire  bpu_io_bp_0_control_w; // @[RocketCore.scala 319:19]
  wire  bpu_io_bp_0_control_r; // @[RocketCore.scala 319:19]
  wire [38:0] bpu_io_bp_0_address; // @[RocketCore.scala 319:19]
  wire [38:0] bpu_io_pc; // @[RocketCore.scala 319:19]
  wire [38:0] bpu_io_ea; // @[RocketCore.scala 319:19]
  wire  bpu_io_xcpt_if; // @[RocketCore.scala 319:19]
  wire  bpu_io_xcpt_ld; // @[RocketCore.scala 319:19]
  wire  bpu_io_xcpt_st; // @[RocketCore.scala 319:19]
  wire  bpu_io_debug_if; // @[RocketCore.scala 319:19]
  wire  bpu_io_debug_ld; // @[RocketCore.scala 319:19]
  wire  bpu_io_debug_st; // @[RocketCore.scala 319:19]
  wire  alu_io_dw; // @[RocketCore.scala 381:19]
  wire [3:0] alu_io_fn; // @[RocketCore.scala 381:19]
  wire [63:0] alu_io_in2; // @[RocketCore.scala 381:19]
  wire [63:0] alu_io_in1; // @[RocketCore.scala 381:19]
  wire [63:0] alu_io_out; // @[RocketCore.scala 381:19]
  wire [63:0] alu_io_adder_out; // @[RocketCore.scala 381:19]
  wire  alu_io_cmp_out; // @[RocketCore.scala 381:19]
  wire  div_clock; // @[RocketCore.scala 405:19]
  wire  div_reset; // @[RocketCore.scala 405:19]
  wire  div_io_req_ready; // @[RocketCore.scala 405:19]
  wire  div_io_req_valid; // @[RocketCore.scala 405:19]
  wire [3:0] div_io_req_bits_fn; // @[RocketCore.scala 405:19]
  wire  div_io_req_bits_dw; // @[RocketCore.scala 405:19]
  wire [63:0] div_io_req_bits_in1; // @[RocketCore.scala 405:19]
  wire [63:0] div_io_req_bits_in2; // @[RocketCore.scala 405:19]
  wire [4:0] div_io_req_bits_tag; // @[RocketCore.scala 405:19]
  wire  div_io_kill; // @[RocketCore.scala 405:19]
  wire  div_io_resp_ready; // @[RocketCore.scala 405:19]
  wire  div_io_resp_valid; // @[RocketCore.scala 405:19]
  wire [63:0] div_io_resp_bits_data; // @[RocketCore.scala 405:19]
  wire [4:0] div_io_resp_bits_tag; // @[RocketCore.scala 405:19]
  wire  PlusArgTimeout_clock; // @[PlusArg.scala 89:11]
  wire  PlusArgTimeout_reset; // @[PlusArg.scala 89:11]
  wire [31:0] PlusArgTimeout_io_count; // @[PlusArg.scala 89:11]
  reg  id_reg_pause; // @[RocketCore.scala 112:25]
  reg  imem_might_request_reg; // @[RocketCore.scala 113:35]
  reg  ex_ctrl_fp; // @[RocketCore.scala 186:20]
  reg  ex_ctrl_branch; // @[RocketCore.scala 186:20]
  reg  ex_ctrl_jal; // @[RocketCore.scala 186:20]
  reg  ex_ctrl_jalr; // @[RocketCore.scala 186:20]
  reg  ex_ctrl_rxs2; // @[RocketCore.scala 186:20]
  reg  ex_ctrl_rxs1; // @[RocketCore.scala 186:20]
  reg [1:0] ex_ctrl_sel_alu2; // @[RocketCore.scala 186:20]
  reg [1:0] ex_ctrl_sel_alu1; // @[RocketCore.scala 186:20]
  reg [2:0] ex_ctrl_sel_imm; // @[RocketCore.scala 186:20]
  reg  ex_ctrl_alu_dw; // @[RocketCore.scala 186:20]
  reg [3:0] ex_ctrl_alu_fn; // @[RocketCore.scala 186:20]
  reg  ex_ctrl_mem; // @[RocketCore.scala 186:20]
  reg [4:0] ex_ctrl_mem_cmd; // @[RocketCore.scala 186:20]
  reg  ex_ctrl_rfs1; // @[RocketCore.scala 186:20]
  reg  ex_ctrl_rfs2; // @[RocketCore.scala 186:20]
  reg  ex_ctrl_wfd; // @[RocketCore.scala 186:20]
  reg  ex_ctrl_div; // @[RocketCore.scala 186:20]
  reg  ex_ctrl_wxd; // @[RocketCore.scala 186:20]
  reg [2:0] ex_ctrl_csr; // @[RocketCore.scala 186:20]
  reg  ex_ctrl_fence_i; // @[RocketCore.scala 186:20]
  reg  mem_ctrl_fp; // @[RocketCore.scala 187:21]
  reg  mem_ctrl_branch; // @[RocketCore.scala 187:21]
  reg  mem_ctrl_jal; // @[RocketCore.scala 187:21]
  reg  mem_ctrl_jalr; // @[RocketCore.scala 187:21]
  reg  mem_ctrl_rxs2; // @[RocketCore.scala 187:21]
  reg  mem_ctrl_rxs1; // @[RocketCore.scala 187:21]
  reg  mem_ctrl_mem; // @[RocketCore.scala 187:21]
  reg  mem_ctrl_rfs1; // @[RocketCore.scala 187:21]
  reg  mem_ctrl_rfs2; // @[RocketCore.scala 187:21]
  reg  mem_ctrl_wfd; // @[RocketCore.scala 187:21]
  reg  mem_ctrl_div; // @[RocketCore.scala 187:21]
  reg  mem_ctrl_wxd; // @[RocketCore.scala 187:21]
  reg [2:0] mem_ctrl_csr; // @[RocketCore.scala 187:21]
  reg  mem_ctrl_fence_i; // @[RocketCore.scala 187:21]
  reg  wb_ctrl_rxs2; // @[RocketCore.scala 188:20]
  reg  wb_ctrl_rxs1; // @[RocketCore.scala 188:20]
  reg  wb_ctrl_mem; // @[RocketCore.scala 188:20]
  reg  wb_ctrl_rfs1; // @[RocketCore.scala 188:20]
  reg  wb_ctrl_rfs2; // @[RocketCore.scala 188:20]
  reg  wb_ctrl_wfd; // @[RocketCore.scala 188:20]
  reg  wb_ctrl_div; // @[RocketCore.scala 188:20]
  reg  wb_ctrl_wxd; // @[RocketCore.scala 188:20]
  reg [2:0] wb_ctrl_csr; // @[RocketCore.scala 188:20]
  reg  wb_ctrl_fence_i; // @[RocketCore.scala 188:20]
  reg  ex_reg_xcpt_interrupt; // @[RocketCore.scala 190:35]
  reg  ex_reg_valid; // @[RocketCore.scala 191:35]
  reg  ex_reg_rvc; // @[RocketCore.scala 192:35]
  reg [4:0] ex_reg_btb_resp_entry; // @[RocketCore.scala 193:35]
  reg [7:0] ex_reg_btb_resp_bht_history; // @[RocketCore.scala 193:35]
  reg  ex_reg_xcpt; // @[RocketCore.scala 194:35]
  reg  ex_reg_flush_pipe; // @[RocketCore.scala 195:35]
  reg  ex_reg_load_use; // @[RocketCore.scala 196:35]
  reg [63:0] ex_reg_cause; // @[RocketCore.scala 197:35]
  reg  ex_reg_replay; // @[RocketCore.scala 198:26]
  reg [39:0] ex_reg_pc; // @[RocketCore.scala 199:22]
  reg [1:0] ex_reg_mem_size; // @[RocketCore.scala 200:28]
  reg [31:0] ex_reg_inst; // @[RocketCore.scala 201:24]
  reg [31:0] ex_reg_raw_inst; // @[RocketCore.scala 202:28]
  reg  mem_reg_xcpt_interrupt; // @[RocketCore.scala 207:36]
  reg  mem_reg_valid; // @[RocketCore.scala 208:36]
  reg  mem_reg_rvc; // @[RocketCore.scala 209:36]
  reg [4:0] mem_reg_btb_resp_entry; // @[RocketCore.scala 210:36]
  reg [7:0] mem_reg_btb_resp_bht_history; // @[RocketCore.scala 210:36]
  reg  mem_reg_xcpt; // @[RocketCore.scala 211:36]
  reg  mem_reg_replay; // @[RocketCore.scala 212:36]
  reg  mem_reg_flush_pipe; // @[RocketCore.scala 213:36]
  reg [63:0] mem_reg_cause; // @[RocketCore.scala 214:36]
  reg  mem_reg_slow_bypass; // @[RocketCore.scala 215:36]
  reg  mem_reg_load; // @[RocketCore.scala 216:36]
  reg  mem_reg_store; // @[RocketCore.scala 217:36]
  reg  mem_reg_sfence; // @[RocketCore.scala 218:27]
  reg [39:0] mem_reg_pc; // @[RocketCore.scala 219:23]
  reg [31:0] mem_reg_inst; // @[RocketCore.scala 220:25]
  reg [1:0] mem_reg_mem_size; // @[RocketCore.scala 221:29]
  reg [31:0] mem_reg_raw_inst; // @[RocketCore.scala 222:29]
  reg [63:0] mem_reg_wdata; // @[RocketCore.scala 225:26]
  reg [63:0] mem_reg_rs2; // @[RocketCore.scala 226:24]
  reg  mem_br_taken; // @[RocketCore.scala 227:25]
  reg  wb_reg_valid; // @[RocketCore.scala 231:35]
  reg  wb_reg_xcpt; // @[RocketCore.scala 232:35]
  reg  wb_reg_replay; // @[RocketCore.scala 233:35]
  reg  wb_reg_flush_pipe; // @[RocketCore.scala 234:35]
  reg [63:0] wb_reg_cause; // @[RocketCore.scala 235:35]
  reg  wb_reg_sfence; // @[RocketCore.scala 236:26]
  reg [39:0] wb_reg_pc; // @[RocketCore.scala 237:22]
  reg [1:0] wb_reg_mem_size; // @[RocketCore.scala 238:28]
  reg [31:0] wb_reg_inst; // @[RocketCore.scala 239:24]
  reg [31:0] wb_reg_raw_inst; // @[RocketCore.scala 240:28]
  reg [63:0] wb_reg_wdata; // @[RocketCore.scala 241:25]
  wire  replay_wb_common = io_dmem_s2_nack | wb_reg_replay; // @[RocketCore.scala 633:42]
  wire  _T_83 = wb_reg_valid & wb_ctrl_mem; // @[RocketCore.scala 611:19]
  wire  _T_84 = (wb_reg_valid & wb_ctrl_mem) & io_dmem_s2_xcpt_ma_st; // @[RocketCore.scala 611:34]
  wire  _T_86 = _T_83 & io_dmem_s2_xcpt_ma_ld; // @[RocketCore.scala 612:34]
  wire  _T_88 = _T_83 & io_dmem_s2_xcpt_pf_st; // @[RocketCore.scala 613:34]
  wire  _T_90 = _T_83 & io_dmem_s2_xcpt_pf_ld; // @[RocketCore.scala 614:34]
  wire  _T_92 = _T_83 & io_dmem_s2_xcpt_ae_st; // @[RocketCore.scala 615:34]
  wire  _T_94 = _T_83 & io_dmem_s2_xcpt_ae_ld; // @[RocketCore.scala 616:34]
  wire  wb_xcpt = (((((wb_reg_xcpt | _T_84) | _T_86) | _T_88) | _T_90) | _T_92) | _T_94; // @[RocketCore.scala 970:26]
  wire  take_pc_wb = ((replay_wb_common | wb_xcpt) | csr_io_eret) | wb_reg_flush_pipe; // @[RocketCore.scala 636:53]
  wire  ex_pc_valid = (ex_reg_valid | ex_reg_replay) | ex_reg_xcpt_interrupt; // @[RocketCore.scala 486:51]
  wire  _mem_npc_T = mem_ctrl_jalr | mem_reg_sfence; // @[RocketCore.scala 509:36]
  wire [63:0] _mem_npc_a_T = mem_reg_wdata; // @[RocketCore.scala 984:16]
  wire [24:0] a = _mem_npc_a_T[63:39]; // @[RocketCore.scala 984:23]
  wire  msb = ($signed(a) == 25'sh0) | ($signed(a) == -25'sh1) ? mem_reg_wdata[39] : ~(mem_reg_wdata[38]); // @[RocketCore.scala 985:18]
  wire [38:0] mem_npc_left = mem_reg_wdata[38:0]; // @[RocketCore.scala 986:16]
  wire [39:0] _mem_npc_T_2 = {msb,mem_npc_left}; // @[RocketCore.scala 509:106]
  wire  _mem_br_target_T_1 = mem_ctrl_branch & mem_br_taken; // @[RocketCore.scala 506:25]
  wire  mem_br_target_sign = mem_reg_inst[31]; // @[RocketCore.scala 1032:53]
  wire  mem_br_target_right_right_right = mem_reg_inst[31]; // @[Cat.scala 29:58]
  wire [10:0] mem_br_target_right_right_left = {11{mem_br_target_sign}}; // @[Cat.scala 29:58]
  wire [7:0] mem_br_target_right_left_right = {8{mem_br_target_sign}}; // @[Cat.scala 29:58]
  wire  mem_br_target_right_left_left = mem_reg_inst[7]; // @[Cat.scala 29:58]
  wire [5:0] mem_br_target_left_right_right = mem_reg_inst[30:25]; // @[RocketCore.scala 1038:66]
  wire [3:0] mem_br_target_left_right_left = mem_reg_inst[11:8]; // @[RocketCore.scala 1040:57]
  wire [31:0] _mem_br_target_T_3 = {mem_br_target_right_right_right,mem_br_target_right_right_left,
    mem_br_target_right_left_right,mem_br_target_right_left_left,mem_br_target_left_right_right,
    mem_br_target_left_right_left,1'h0}; // @[RocketCore.scala 1046:53]
  wire [7:0] mem_br_target_right_left_right_1 = mem_reg_inst[19:12]; // @[Cat.scala 29:58]
  wire  mem_br_target_right_left_left_1 = mem_reg_inst[20]; // @[Cat.scala 29:58]
  wire [31:0] _mem_br_target_T_5 = {mem_br_target_right_right_right,mem_br_target_right_right_left,
    mem_br_target_right_left_right_1,mem_br_target_right_left_left_1,mem_br_target_left_right_right,mem_reg_inst[24:21],1'h0
    }; // @[RocketCore.scala 1046:53]
  wire [3:0] _mem_br_target_T_6 = mem_reg_rvc ? $signed(4'sh2) : $signed(4'sh4); // @[RocketCore.scala 508:8]
  wire [31:0] _mem_br_target_T_7 = mem_ctrl_jal ? $signed(_mem_br_target_T_5) : $signed({{28{_mem_br_target_T_6[3]}},
    _mem_br_target_T_6}); // @[RocketCore.scala 507:8]
  wire [31:0] _mem_br_target_T_8 = _mem_br_target_T_1 ? $signed(_mem_br_target_T_3) : $signed(_mem_br_target_T_7); // @[RocketCore.scala 506:8]
  wire [39:0] _GEN_248 = {{8{_mem_br_target_T_8[31]}},_mem_br_target_T_8}; // @[RocketCore.scala 505:41]
  wire [39:0] mem_br_target = $signed(mem_reg_pc) + $signed(_GEN_248); // @[RocketCore.scala 505:41]
  wire [39:0] _mem_npc_T_3 = _mem_npc_T ? $signed(_mem_npc_T_2) : $signed(mem_br_target); // @[RocketCore.scala 509:21]
  wire [39:0] mem_npc = $signed(_mem_npc_T_3) & -40'sh2; // @[RocketCore.scala 509:141]
  wire  _mem_wrong_npc_T_3 = ibuf_io_inst_0_valid | ibuf_io_imem_valid ? mem_npc != ibuf_io_pc : 1'h1; // @[RocketCore.scala 512:8]
  wire  mem_wrong_npc = ex_pc_valid ? mem_npc != ex_reg_pc : _mem_wrong_npc_T_3; // @[RocketCore.scala 511:8]
  wire  take_pc_mem = mem_reg_valid & (mem_wrong_npc | mem_reg_sfence); // @[RocketCore.scala 519:32]
  wire  take_pc_mem_wb = take_pc_wb | take_pc_mem; // @[RocketCore.scala 246:35]
  wire [31:0] _id_ctrl_decoder_bit_T = ibuf_io_inst_0_bits_inst_bits & 32'hfe00707f; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_bit_T_1 = _id_ctrl_decoder_bit_T == 32'h2000033; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_3 = _id_ctrl_decoder_bit_T == 32'h2001033; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_5 = _id_ctrl_decoder_bit_T == 32'h2003033; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_7 = _id_ctrl_decoder_bit_T == 32'h2002033; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_9 = _id_ctrl_decoder_bit_T == 32'h2004033; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_11 = _id_ctrl_decoder_bit_T == 32'h2005033; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_13 = _id_ctrl_decoder_bit_T == 32'h2006033; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_15 = _id_ctrl_decoder_bit_T == 32'h2007033; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_17 = _id_ctrl_decoder_bit_T == 32'h200003b; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_19 = _id_ctrl_decoder_bit_T == 32'h200403b; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_21 = _id_ctrl_decoder_bit_T == 32'h200503b; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_23 = _id_ctrl_decoder_bit_T == 32'h200603b; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_25 = _id_ctrl_decoder_bit_T == 32'h200703b; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_bit_T_26 = ibuf_io_inst_0_bits_inst_bits & 32'hf800707f; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_bit_T_27 = _id_ctrl_decoder_bit_T_26 == 32'h202f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_29 = _id_ctrl_decoder_bit_T_26 == 32'h2000202f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_31 = _id_ctrl_decoder_bit_T_26 == 32'h800202f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_33 = _id_ctrl_decoder_bit_T_26 == 32'h6000202f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_35 = _id_ctrl_decoder_bit_T_26 == 32'h4000202f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_37 = _id_ctrl_decoder_bit_T_26 == 32'h8000202f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_39 = _id_ctrl_decoder_bit_T_26 == 32'hc000202f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_41 = _id_ctrl_decoder_bit_T_26 == 32'ha000202f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_43 = _id_ctrl_decoder_bit_T_26 == 32'he000202f; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_bit_T_44 = ibuf_io_inst_0_bits_inst_bits & 32'hf9f0707f; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_bit_T_45 = _id_ctrl_decoder_bit_T_44 == 32'h1000202f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_47 = _id_ctrl_decoder_bit_T_26 == 32'h1800202f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_49 = _id_ctrl_decoder_bit_T_26 == 32'h302f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_51 = _id_ctrl_decoder_bit_T_26 == 32'h800302f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_53 = _id_ctrl_decoder_bit_T_26 == 32'h2000302f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_55 = _id_ctrl_decoder_bit_T_26 == 32'h6000302f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_57 = _id_ctrl_decoder_bit_T_26 == 32'h4000302f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_59 = _id_ctrl_decoder_bit_T_26 == 32'h8000302f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_61 = _id_ctrl_decoder_bit_T_26 == 32'hc000302f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_63 = _id_ctrl_decoder_bit_T_26 == 32'ha000302f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_65 = _id_ctrl_decoder_bit_T_26 == 32'he000302f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_67 = _id_ctrl_decoder_bit_T_44 == 32'h1000302f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_69 = _id_ctrl_decoder_bit_T_26 == 32'h1800302f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_71 = _id_ctrl_decoder_bit_T == 32'h20000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_73 = _id_ctrl_decoder_bit_T == 32'h20002053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_75 = _id_ctrl_decoder_bit_T == 32'h20001053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_77 = _id_ctrl_decoder_bit_T == 32'h28000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_79 = _id_ctrl_decoder_bit_T == 32'h28001053; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_bit_T_80 = ibuf_io_inst_0_bits_inst_bits & 32'hfe00007f; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_bit_T_81 = _id_ctrl_decoder_bit_T_80 == 32'h53; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_83 = _id_ctrl_decoder_bit_T_80 == 32'h8000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_85 = _id_ctrl_decoder_bit_T_80 == 32'h10000053; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_bit_T_86 = ibuf_io_inst_0_bits_inst_bits & 32'h600007f; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_bit_T_87 = _id_ctrl_decoder_bit_T_86 == 32'h43; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_89 = _id_ctrl_decoder_bit_T_86 == 32'h47; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_91 = _id_ctrl_decoder_bit_T_86 == 32'h4f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_93 = _id_ctrl_decoder_bit_T_86 == 32'h4b; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_bit_T_94 = ibuf_io_inst_0_bits_inst_bits & 32'hfff0707f; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_bit_T_95 = _id_ctrl_decoder_bit_T_94 == 32'he0001053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_97 = _id_ctrl_decoder_bit_T_94 == 32'he0000053; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_bit_T_98 = ibuf_io_inst_0_bits_inst_bits & 32'hfff0007f; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_bit_T_99 = _id_ctrl_decoder_bit_T_98 == 32'hc0000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_101 = _id_ctrl_decoder_bit_T_98 == 32'hc0100053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_103 = _id_ctrl_decoder_bit_T == 32'ha0002053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_105 = _id_ctrl_decoder_bit_T == 32'ha0001053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_107 = _id_ctrl_decoder_bit_T == 32'ha0000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_109 = _id_ctrl_decoder_bit_T_94 == 32'hf0000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_111 = _id_ctrl_decoder_bit_T_98 == 32'hd0000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_113 = _id_ctrl_decoder_bit_T_98 == 32'hd0100053; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_bit_T_114 = ibuf_io_inst_0_bits_inst_bits & 32'h707f; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_bit_T_115 = _id_ctrl_decoder_bit_T_114 == 32'h2007; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_117 = _id_ctrl_decoder_bit_T_114 == 32'h2027; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_119 = _id_ctrl_decoder_bit_T_80 == 32'h18000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_121 = _id_ctrl_decoder_bit_T_98 == 32'h58000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_123 = _id_ctrl_decoder_bit_T_98 == 32'hc0200053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_125 = _id_ctrl_decoder_bit_T_98 == 32'hc0300053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_127 = _id_ctrl_decoder_bit_T_98 == 32'hd0200053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_129 = _id_ctrl_decoder_bit_T_98 == 32'hd0300053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_131 = _id_ctrl_decoder_bit_T_98 == 32'h40100053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_133 = _id_ctrl_decoder_bit_T_98 == 32'h42000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_135 = _id_ctrl_decoder_bit_T == 32'h22000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_137 = _id_ctrl_decoder_bit_T == 32'h22002053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_139 = _id_ctrl_decoder_bit_T == 32'h22001053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_141 = _id_ctrl_decoder_bit_T == 32'h2a000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_143 = _id_ctrl_decoder_bit_T == 32'h2a001053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_145 = _id_ctrl_decoder_bit_T_80 == 32'h2000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_147 = _id_ctrl_decoder_bit_T_80 == 32'ha000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_149 = _id_ctrl_decoder_bit_T_80 == 32'h12000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_151 = _id_ctrl_decoder_bit_T_86 == 32'h2000043; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_153 = _id_ctrl_decoder_bit_T_86 == 32'h2000047; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_155 = _id_ctrl_decoder_bit_T_86 == 32'h200004f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_157 = _id_ctrl_decoder_bit_T_86 == 32'h200004b; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_159 = _id_ctrl_decoder_bit_T_94 == 32'he2001053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_161 = _id_ctrl_decoder_bit_T_98 == 32'hc2000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_163 = _id_ctrl_decoder_bit_T_98 == 32'hc2100053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_165 = _id_ctrl_decoder_bit_T == 32'ha2002053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_167 = _id_ctrl_decoder_bit_T == 32'ha2001053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_169 = _id_ctrl_decoder_bit_T == 32'ha2000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_171 = _id_ctrl_decoder_bit_T_98 == 32'hd2000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_173 = _id_ctrl_decoder_bit_T_98 == 32'hd2100053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_175 = _id_ctrl_decoder_bit_T_114 == 32'h3007; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_177 = _id_ctrl_decoder_bit_T_114 == 32'h3027; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_179 = _id_ctrl_decoder_bit_T_80 == 32'h1a000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_181 = _id_ctrl_decoder_bit_T_98 == 32'h5a000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_183 = _id_ctrl_decoder_bit_T_94 == 32'he2000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_185 = _id_ctrl_decoder_bit_T_98 == 32'hc2200053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_187 = _id_ctrl_decoder_bit_T_98 == 32'hc2300053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_189 = _id_ctrl_decoder_bit_T_94 == 32'hf2000053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_191 = _id_ctrl_decoder_bit_T_98 == 32'hd2200053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_193 = _id_ctrl_decoder_bit_T_98 == 32'hd2300053; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_195 = _id_ctrl_decoder_bit_T_114 == 32'h3003; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_197 = _id_ctrl_decoder_bit_T_114 == 32'h6003; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_199 = _id_ctrl_decoder_bit_T_114 == 32'h3023; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_bit_T_200 = ibuf_io_inst_0_bits_inst_bits & 32'hfc00707f; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_bit_T_201 = _id_ctrl_decoder_bit_T_200 == 32'h1013; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_203 = _id_ctrl_decoder_bit_T_200 == 32'h5013; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_205 = _id_ctrl_decoder_bit_T_200 == 32'h40005013; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_207 = _id_ctrl_decoder_bit_T_114 == 32'h1b; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_209 = _id_ctrl_decoder_bit_T == 32'h101b; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_211 = _id_ctrl_decoder_bit_T == 32'h501b; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_213 = _id_ctrl_decoder_bit_T == 32'h4000501b; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_215 = _id_ctrl_decoder_bit_T == 32'h3b; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_217 = _id_ctrl_decoder_bit_T == 32'h4000003b; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_219 = _id_ctrl_decoder_bit_T == 32'h103b; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_221 = _id_ctrl_decoder_bit_T == 32'h503b; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_223 = _id_ctrl_decoder_bit_T == 32'h4000503b; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_bit_T_224 = ibuf_io_inst_0_bits_inst_bits & 32'hfe007fff; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_bit_T_225 = _id_ctrl_decoder_bit_T_224 == 32'h12000073; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_226 = ibuf_io_inst_0_bits_inst_bits == 32'h10200073; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_227 = ibuf_io_inst_0_bits_inst_bits == 32'h7b200073; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_229 = _id_ctrl_decoder_bit_T_114 == 32'h100f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_231 = _id_ctrl_decoder_bit_T_114 == 32'h1063; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_233 = _id_ctrl_decoder_bit_T_114 == 32'h63; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_235 = _id_ctrl_decoder_bit_T_114 == 32'h4063; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_237 = _id_ctrl_decoder_bit_T_114 == 32'h6063; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_239 = _id_ctrl_decoder_bit_T_114 == 32'h5063; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_241 = _id_ctrl_decoder_bit_T_114 == 32'h7063; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_bit_T_242 = ibuf_io_inst_0_bits_inst_bits & 32'h7f; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_bit_T_243 = _id_ctrl_decoder_bit_T_242 == 32'h6f; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_245 = _id_ctrl_decoder_bit_T_114 == 32'h67; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_247 = _id_ctrl_decoder_bit_T_242 == 32'h17; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_249 = _id_ctrl_decoder_bit_T_114 == 32'h3; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_251 = _id_ctrl_decoder_bit_T_114 == 32'h1003; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_253 = _id_ctrl_decoder_bit_T_114 == 32'h2003; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_255 = _id_ctrl_decoder_bit_T_114 == 32'h4003; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_257 = _id_ctrl_decoder_bit_T_114 == 32'h5003; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_259 = _id_ctrl_decoder_bit_T_114 == 32'h23; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_261 = _id_ctrl_decoder_bit_T_114 == 32'h1023; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_263 = _id_ctrl_decoder_bit_T_114 == 32'h2023; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_265 = _id_ctrl_decoder_bit_T_242 == 32'h37; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_267 = _id_ctrl_decoder_bit_T_114 == 32'h13; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_269 = _id_ctrl_decoder_bit_T_114 == 32'h2013; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_271 = _id_ctrl_decoder_bit_T_114 == 32'h3013; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_273 = _id_ctrl_decoder_bit_T_114 == 32'h7013; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_275 = _id_ctrl_decoder_bit_T_114 == 32'h6013; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_277 = _id_ctrl_decoder_bit_T_114 == 32'h4013; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_279 = _id_ctrl_decoder_bit_T == 32'h33; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_281 = _id_ctrl_decoder_bit_T == 32'h40000033; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_283 = _id_ctrl_decoder_bit_T == 32'h2033; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_285 = _id_ctrl_decoder_bit_T == 32'h3033; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_287 = _id_ctrl_decoder_bit_T == 32'h7033; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_289 = _id_ctrl_decoder_bit_T == 32'h6033; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_291 = _id_ctrl_decoder_bit_T == 32'h4033; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_293 = _id_ctrl_decoder_bit_T == 32'h1033; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_295 = _id_ctrl_decoder_bit_T == 32'h5033; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_297 = _id_ctrl_decoder_bit_T == 32'h40005033; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_299 = _id_ctrl_decoder_bit_T_114 == 32'hf; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_300 = ibuf_io_inst_0_bits_inst_bits == 32'h73; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_301 = ibuf_io_inst_0_bits_inst_bits == 32'h100073; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_302 = ibuf_io_inst_0_bits_inst_bits == 32'h30200073; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_303 = ibuf_io_inst_0_bits_inst_bits == 32'h10500073; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_304 = ibuf_io_inst_0_bits_inst_bits == 32'h30500073; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_306 = _id_ctrl_decoder_bit_T_114 == 32'h1073; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_308 = _id_ctrl_decoder_bit_T_114 == 32'h2073; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_310 = _id_ctrl_decoder_bit_T_114 == 32'h3073; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_312 = _id_ctrl_decoder_bit_T_114 == 32'h5073; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_314 = _id_ctrl_decoder_bit_T_114 == 32'h6073; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_316 = _id_ctrl_decoder_bit_T_114 == 32'h7073; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_bit_T_347 = (((((((((((((((((((((((((((((_id_ctrl_decoder_bit_T_1 | _id_ctrl_decoder_bit_T_3)
     | _id_ctrl_decoder_bit_T_5) | _id_ctrl_decoder_bit_T_7) | _id_ctrl_decoder_bit_T_9) | _id_ctrl_decoder_bit_T_11) |
    _id_ctrl_decoder_bit_T_13) | _id_ctrl_decoder_bit_T_15) | _id_ctrl_decoder_bit_T_17) | _id_ctrl_decoder_bit_T_19) |
    _id_ctrl_decoder_bit_T_21) | _id_ctrl_decoder_bit_T_23) | _id_ctrl_decoder_bit_T_25) | _id_ctrl_decoder_bit_T_27) |
    _id_ctrl_decoder_bit_T_29) | _id_ctrl_decoder_bit_T_31) | _id_ctrl_decoder_bit_T_33) | _id_ctrl_decoder_bit_T_35) |
    _id_ctrl_decoder_bit_T_37) | _id_ctrl_decoder_bit_T_39) | _id_ctrl_decoder_bit_T_41) | _id_ctrl_decoder_bit_T_43) |
    _id_ctrl_decoder_bit_T_45) | _id_ctrl_decoder_bit_T_47) | _id_ctrl_decoder_bit_T_49) | _id_ctrl_decoder_bit_T_51) |
    _id_ctrl_decoder_bit_T_53) | _id_ctrl_decoder_bit_T_55) | _id_ctrl_decoder_bit_T_57) | _id_ctrl_decoder_bit_T_59) |
    _id_ctrl_decoder_bit_T_61; // @[Decode.scala 15:30]
  wire  _id_ctrl_decoder_bit_T_377 = (((((((((((((((((((((((((((((_id_ctrl_decoder_bit_T_347 | _id_ctrl_decoder_bit_T_63
    ) | _id_ctrl_decoder_bit_T_65) | _id_ctrl_decoder_bit_T_67) | _id_ctrl_decoder_bit_T_69) | _id_ctrl_decoder_bit_T_71
    ) | _id_ctrl_decoder_bit_T_73) | _id_ctrl_decoder_bit_T_75) | _id_ctrl_decoder_bit_T_77) | _id_ctrl_decoder_bit_T_79
    ) | _id_ctrl_decoder_bit_T_81) | _id_ctrl_decoder_bit_T_83) | _id_ctrl_decoder_bit_T_85) | _id_ctrl_decoder_bit_T_87
    ) | _id_ctrl_decoder_bit_T_89) | _id_ctrl_decoder_bit_T_91) | _id_ctrl_decoder_bit_T_93) | _id_ctrl_decoder_bit_T_95
    ) | _id_ctrl_decoder_bit_T_97) | _id_ctrl_decoder_bit_T_99) | _id_ctrl_decoder_bit_T_101) |
    _id_ctrl_decoder_bit_T_103) | _id_ctrl_decoder_bit_T_105) | _id_ctrl_decoder_bit_T_107) | _id_ctrl_decoder_bit_T_109
    ) | _id_ctrl_decoder_bit_T_111) | _id_ctrl_decoder_bit_T_113) | _id_ctrl_decoder_bit_T_115) |
    _id_ctrl_decoder_bit_T_117) | _id_ctrl_decoder_bit_T_119) | _id_ctrl_decoder_bit_T_121; // @[Decode.scala 15:30]
  wire  _id_ctrl_decoder_bit_T_407 = (((((((((((((((((((((((((((((_id_ctrl_decoder_bit_T_377 |
    _id_ctrl_decoder_bit_T_123) | _id_ctrl_decoder_bit_T_125) | _id_ctrl_decoder_bit_T_127) | _id_ctrl_decoder_bit_T_129
    ) | _id_ctrl_decoder_bit_T_131) | _id_ctrl_decoder_bit_T_133) | _id_ctrl_decoder_bit_T_135) |
    _id_ctrl_decoder_bit_T_137) | _id_ctrl_decoder_bit_T_139) | _id_ctrl_decoder_bit_T_141) | _id_ctrl_decoder_bit_T_143
    ) | _id_ctrl_decoder_bit_T_145) | _id_ctrl_decoder_bit_T_147) | _id_ctrl_decoder_bit_T_149) |
    _id_ctrl_decoder_bit_T_151) | _id_ctrl_decoder_bit_T_153) | _id_ctrl_decoder_bit_T_155) | _id_ctrl_decoder_bit_T_157
    ) | _id_ctrl_decoder_bit_T_159) | _id_ctrl_decoder_bit_T_161) | _id_ctrl_decoder_bit_T_163) |
    _id_ctrl_decoder_bit_T_165) | _id_ctrl_decoder_bit_T_167) | _id_ctrl_decoder_bit_T_169) | _id_ctrl_decoder_bit_T_171
    ) | _id_ctrl_decoder_bit_T_173) | _id_ctrl_decoder_bit_T_175) | _id_ctrl_decoder_bit_T_177) |
    _id_ctrl_decoder_bit_T_179) | _id_ctrl_decoder_bit_T_181; // @[Decode.scala 15:30]
  wire  _id_ctrl_decoder_bit_T_437 = (((((((((((((((((((((((((((((_id_ctrl_decoder_bit_T_407 |
    _id_ctrl_decoder_bit_T_183) | _id_ctrl_decoder_bit_T_185) | _id_ctrl_decoder_bit_T_187) | _id_ctrl_decoder_bit_T_189
    ) | _id_ctrl_decoder_bit_T_191) | _id_ctrl_decoder_bit_T_193) | _id_ctrl_decoder_bit_T_195) |
    _id_ctrl_decoder_bit_T_197) | _id_ctrl_decoder_bit_T_199) | _id_ctrl_decoder_bit_T_201) | _id_ctrl_decoder_bit_T_203
    ) | _id_ctrl_decoder_bit_T_205) | _id_ctrl_decoder_bit_T_207) | _id_ctrl_decoder_bit_T_209) |
    _id_ctrl_decoder_bit_T_211) | _id_ctrl_decoder_bit_T_213) | _id_ctrl_decoder_bit_T_215) | _id_ctrl_decoder_bit_T_217
    ) | _id_ctrl_decoder_bit_T_219) | _id_ctrl_decoder_bit_T_221) | _id_ctrl_decoder_bit_T_223) |
    _id_ctrl_decoder_bit_T_225) | _id_ctrl_decoder_bit_T_226) | _id_ctrl_decoder_bit_T_227) | _id_ctrl_decoder_bit_T_229
    ) | _id_ctrl_decoder_bit_T_231) | _id_ctrl_decoder_bit_T_233) | _id_ctrl_decoder_bit_T_235) |
    _id_ctrl_decoder_bit_T_237) | _id_ctrl_decoder_bit_T_239; // @[Decode.scala 15:30]
  wire  _id_ctrl_decoder_bit_T_467 = (((((((((((((((((((((((((((((_id_ctrl_decoder_bit_T_437 |
    _id_ctrl_decoder_bit_T_241) | _id_ctrl_decoder_bit_T_243) | _id_ctrl_decoder_bit_T_245) | _id_ctrl_decoder_bit_T_247
    ) | _id_ctrl_decoder_bit_T_249) | _id_ctrl_decoder_bit_T_251) | _id_ctrl_decoder_bit_T_253) |
    _id_ctrl_decoder_bit_T_255) | _id_ctrl_decoder_bit_T_257) | _id_ctrl_decoder_bit_T_259) | _id_ctrl_decoder_bit_T_261
    ) | _id_ctrl_decoder_bit_T_263) | _id_ctrl_decoder_bit_T_265) | _id_ctrl_decoder_bit_T_267) |
    _id_ctrl_decoder_bit_T_269) | _id_ctrl_decoder_bit_T_271) | _id_ctrl_decoder_bit_T_273) | _id_ctrl_decoder_bit_T_275
    ) | _id_ctrl_decoder_bit_T_277) | _id_ctrl_decoder_bit_T_279) | _id_ctrl_decoder_bit_T_281) |
    _id_ctrl_decoder_bit_T_283) | _id_ctrl_decoder_bit_T_285) | _id_ctrl_decoder_bit_T_287) | _id_ctrl_decoder_bit_T_289
    ) | _id_ctrl_decoder_bit_T_291) | _id_ctrl_decoder_bit_T_293) | _id_ctrl_decoder_bit_T_295) |
    _id_ctrl_decoder_bit_T_297) | _id_ctrl_decoder_bit_T_299; // @[Decode.scala 15:30]
  wire  id_ctrl_decoder_0 = ((((((((((_id_ctrl_decoder_bit_T_467 | _id_ctrl_decoder_bit_T_300) |
    _id_ctrl_decoder_bit_T_301) | _id_ctrl_decoder_bit_T_302) | _id_ctrl_decoder_bit_T_303) | _id_ctrl_decoder_bit_T_304
    ) | _id_ctrl_decoder_bit_T_306) | _id_ctrl_decoder_bit_T_308) | _id_ctrl_decoder_bit_T_310) |
    _id_ctrl_decoder_bit_T_312) | _id_ctrl_decoder_bit_T_314) | _id_ctrl_decoder_bit_T_316; // @[Decode.scala 15:30]
  wire [31:0] _id_ctrl_decoder_T = ibuf_io_inst_0_bits_inst_bits & 32'h5c; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_1 = _id_ctrl_decoder_T == 32'h4; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_2 = ibuf_io_inst_0_bits_inst_bits & 32'h60; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_3 = _id_ctrl_decoder_T_2 == 32'h40; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_1 = _id_ctrl_decoder_T_1 | _id_ctrl_decoder_T_3; // @[Decode.scala 15:30]
  wire [31:0] _id_ctrl_decoder_T_5 = ibuf_io_inst_0_bits_inst_bits & 32'h74; // @[Decode.scala 14:65]
  wire  id_ctrl_decoder_3 = _id_ctrl_decoder_T_5 == 32'h60; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_7 = ibuf_io_inst_0_bits_inst_bits & 32'h68; // @[Decode.scala 14:65]
  wire  id_ctrl_decoder_4 = _id_ctrl_decoder_T_7 == 32'h68; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_9 = ibuf_io_inst_0_bits_inst_bits & 32'h203c; // @[Decode.scala 14:65]
  wire  id_ctrl_decoder_5 = _id_ctrl_decoder_T_9 == 32'h24; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_11 = ibuf_io_inst_0_bits_inst_bits & 32'h64; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_12 = _id_ctrl_decoder_T_11 == 32'h20; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_13 = ibuf_io_inst_0_bits_inst_bits & 32'h34; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_14 = _id_ctrl_decoder_T_13 == 32'h20; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_15 = ibuf_io_inst_0_bits_inst_bits & 32'h2048; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_16 = _id_ctrl_decoder_T_15 == 32'h2008; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_17 = ibuf_io_inst_0_bits_inst_bits & 32'h42003024; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_18 = _id_ctrl_decoder_T_17 == 32'h2000020; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_6 = ((_id_ctrl_decoder_T_12 | _id_ctrl_decoder_T_14) | _id_ctrl_decoder_T_16) |
    _id_ctrl_decoder_T_18; // @[Decode.scala 15:30]
  wire [31:0] _id_ctrl_decoder_T_22 = ibuf_io_inst_0_bits_inst_bits & 32'h44; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_23 = _id_ctrl_decoder_T_22 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_24 = ibuf_io_inst_0_bits_inst_bits & 32'h4024; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_25 = _id_ctrl_decoder_T_24 == 32'h20; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_26 = ibuf_io_inst_0_bits_inst_bits & 32'h38; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_27 = _id_ctrl_decoder_T_26 == 32'h20; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_28 = ibuf_io_inst_0_bits_inst_bits & 32'h2050; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_29 = _id_ctrl_decoder_T_28 == 32'h2000; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_30 = ibuf_io_inst_0_bits_inst_bits & 32'h90000034; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_31 = _id_ctrl_decoder_T_30 == 32'h90000010; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_7 = (((_id_ctrl_decoder_T_23 | _id_ctrl_decoder_T_25) | _id_ctrl_decoder_T_27) |
    _id_ctrl_decoder_T_29) | _id_ctrl_decoder_T_31; // @[Decode.scala 15:30]
  wire [31:0] _id_ctrl_decoder_T_36 = ibuf_io_inst_0_bits_inst_bits & 32'h58; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_37 = _id_ctrl_decoder_T_36 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_38 = ibuf_io_inst_0_bits_inst_bits & 32'h20; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_39 = _id_ctrl_decoder_T_38 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_40 = ibuf_io_inst_0_bits_inst_bits & 32'hc; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_41 = _id_ctrl_decoder_T_40 == 32'h4; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_42 = ibuf_io_inst_0_bits_inst_bits & 32'h48; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_43 = _id_ctrl_decoder_T_42 == 32'h48; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_44 = ibuf_io_inst_0_bits_inst_bits & 32'h4050; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_45 = _id_ctrl_decoder_T_44 == 32'h4050; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_left = (((_id_ctrl_decoder_T_37 | _id_ctrl_decoder_T_39) | _id_ctrl_decoder_T_41) |
    _id_ctrl_decoder_T_43) | _id_ctrl_decoder_T_45; // @[Decode.scala 15:30]
  wire  _id_ctrl_decoder_T_51 = _id_ctrl_decoder_T_42 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_52 = ibuf_io_inst_0_bits_inst_bits & 32'h18; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_53 = _id_ctrl_decoder_T_52 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_54 = ibuf_io_inst_0_bits_inst_bits & 32'h4008; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_55 = _id_ctrl_decoder_T_54 == 32'h4000; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_right = ((_id_ctrl_decoder_T_51 | _id_ctrl_decoder_T_23) | _id_ctrl_decoder_T_53) |
    _id_ctrl_decoder_T_55; // @[Decode.scala 15:30]
  wire [1:0] id_ctrl_decoder_9 = {id_ctrl_decoder_right,id_ctrl_decoder_left}; // @[Cat.scala 29:58]
  wire [31:0] _id_ctrl_decoder_T_59 = ibuf_io_inst_0_bits_inst_bits & 32'h4004; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_60 = _id_ctrl_decoder_T_59 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_61 = ibuf_io_inst_0_bits_inst_bits & 32'h50; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_62 = _id_ctrl_decoder_T_61 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_63 = ibuf_io_inst_0_bits_inst_bits & 32'h24; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_64 = _id_ctrl_decoder_T_63 == 32'h0; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_left_1 = (((_id_ctrl_decoder_T_60 | _id_ctrl_decoder_T_62) | _id_ctrl_decoder_T_23) |
    _id_ctrl_decoder_T_64) | _id_ctrl_decoder_T_53; // @[Decode.scala 15:30]
  wire  _id_ctrl_decoder_T_70 = _id_ctrl_decoder_T_13 == 32'h14; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_right_1 = _id_ctrl_decoder_T_70 | _id_ctrl_decoder_T_43; // @[Decode.scala 15:30]
  wire [1:0] id_ctrl_decoder_10 = {id_ctrl_decoder_right_1,id_ctrl_decoder_left_1}; // @[Cat.scala 29:58]
  wire  _id_ctrl_decoder_T_73 = _id_ctrl_decoder_T_52 == 32'h8; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_T_75 = _id_ctrl_decoder_T_22 == 32'h40; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_left_2 = _id_ctrl_decoder_T_73 | _id_ctrl_decoder_T_75; // @[Decode.scala 15:30]
  wire [31:0] _id_ctrl_decoder_T_77 = ibuf_io_inst_0_bits_inst_bits & 32'h14; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_78 = _id_ctrl_decoder_T_77 == 32'h14; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_right_left = _id_ctrl_decoder_T_73 | _id_ctrl_decoder_T_78; // @[Decode.scala 15:30]
  wire [31:0] _id_ctrl_decoder_T_80 = ibuf_io_inst_0_bits_inst_bits & 32'h30; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_81 = _id_ctrl_decoder_T_80 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_82 = ibuf_io_inst_0_bits_inst_bits & 32'h201c; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_83 = _id_ctrl_decoder_T_82 == 32'h4; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_T_85 = _id_ctrl_decoder_T_77 == 32'h10; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_right_right = (_id_ctrl_decoder_T_81 | _id_ctrl_decoder_T_83) | _id_ctrl_decoder_T_85; // @[Decode.scala 15:30]
  wire [2:0] id_ctrl_decoder_11 = {id_ctrl_decoder_right_right,id_ctrl_decoder_right_left,id_ctrl_decoder_left_2}; // @[Cat.scala 29:58]
  wire [31:0] _id_ctrl_decoder_T_88 = ibuf_io_inst_0_bits_inst_bits & 32'h10; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_89 = _id_ctrl_decoder_T_88 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_90 = ibuf_io_inst_0_bits_inst_bits & 32'h8; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_91 = _id_ctrl_decoder_T_90 == 32'h0; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_12 = _id_ctrl_decoder_T_89 | _id_ctrl_decoder_T_91; // @[Decode.scala 15:30]
  wire [31:0] _id_ctrl_decoder_T_93 = ibuf_io_inst_0_bits_inst_bits & 32'h3054; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_94 = _id_ctrl_decoder_T_93 == 32'h1010; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_95 = ibuf_io_inst_0_bits_inst_bits & 32'h1058; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_96 = _id_ctrl_decoder_T_95 == 32'h1040; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_97 = ibuf_io_inst_0_bits_inst_bits & 32'h7044; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_98 = _id_ctrl_decoder_T_97 == 32'h7000; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_99 = ibuf_io_inst_0_bits_inst_bits & 32'h2001074; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_100 = _id_ctrl_decoder_T_99 == 32'h2001030; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_left_left = ((_id_ctrl_decoder_T_94 | _id_ctrl_decoder_T_96) | _id_ctrl_decoder_T_98) |
    _id_ctrl_decoder_T_100; // @[Decode.scala 15:30]
  wire [31:0] _id_ctrl_decoder_T_104 = ibuf_io_inst_0_bits_inst_bits & 32'h4054; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_105 = _id_ctrl_decoder_T_104 == 32'h40; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_106 = ibuf_io_inst_0_bits_inst_bits & 32'h2058; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_107 = _id_ctrl_decoder_T_106 == 32'h2040; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_T_109 = _id_ctrl_decoder_T_93 == 32'h3010; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_110 = ibuf_io_inst_0_bits_inst_bits & 32'h6054; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_111 = _id_ctrl_decoder_T_110 == 32'h6010; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_112 = ibuf_io_inst_0_bits_inst_bits & 32'h2002074; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_113 = _id_ctrl_decoder_T_112 == 32'h2002030; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_114 = ibuf_io_inst_0_bits_inst_bits & 32'h40003034; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_115 = _id_ctrl_decoder_T_114 == 32'h40000030; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_116 = ibuf_io_inst_0_bits_inst_bits & 32'h40001054; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_117 = _id_ctrl_decoder_T_116 == 32'h40001010; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_left_right = (((((_id_ctrl_decoder_T_105 | _id_ctrl_decoder_T_107) | _id_ctrl_decoder_T_109) |
    _id_ctrl_decoder_T_111) | _id_ctrl_decoder_T_113) | _id_ctrl_decoder_T_115) | _id_ctrl_decoder_T_117; // @[Decode.scala 15:30]
  wire [31:0] _id_ctrl_decoder_T_124 = ibuf_io_inst_0_bits_inst_bits & 32'h2002054; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_125 = _id_ctrl_decoder_T_124 == 32'h2010; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_126 = ibuf_io_inst_0_bits_inst_bits & 32'h2034; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_127 = _id_ctrl_decoder_T_126 == 32'h2010; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_128 = ibuf_io_inst_0_bits_inst_bits & 32'h40004054; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_129 = _id_ctrl_decoder_T_128 == 32'h4010; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_130 = ibuf_io_inst_0_bits_inst_bits & 32'h5054; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_131 = _id_ctrl_decoder_T_130 == 32'h4010; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_132 = ibuf_io_inst_0_bits_inst_bits & 32'h4058; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_133 = _id_ctrl_decoder_T_132 == 32'h4040; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_right_left_1 = (((_id_ctrl_decoder_T_125 | _id_ctrl_decoder_T_127) | _id_ctrl_decoder_T_129) |
    _id_ctrl_decoder_T_131) | _id_ctrl_decoder_T_133; // @[Decode.scala 15:30]
  wire [31:0] _id_ctrl_decoder_T_138 = ibuf_io_inst_0_bits_inst_bits & 32'h2006054; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_139 = _id_ctrl_decoder_T_138 == 32'h2010; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_140 = ibuf_io_inst_0_bits_inst_bits & 32'h6034; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_141 = _id_ctrl_decoder_T_140 == 32'h2010; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_142 = ibuf_io_inst_0_bits_inst_bits & 32'h40003054; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_143 = _id_ctrl_decoder_T_142 == 32'h40001010; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_right_right_1 = (((_id_ctrl_decoder_T_139 | _id_ctrl_decoder_T_141) | _id_ctrl_decoder_T_133) |
    _id_ctrl_decoder_T_115) | _id_ctrl_decoder_T_143; // @[Decode.scala 15:30]
  wire [3:0] id_ctrl_decoder_13 = {id_ctrl_decoder_right_right_1,id_ctrl_decoder_right_left_1,id_ctrl_decoder_left_right
    ,id_ctrl_decoder_left_left}; // @[Cat.scala 29:58]
  wire  _id_ctrl_decoder_bit_T_508 = (((((((((((((((((((((((((((((_id_ctrl_decoder_bit_T_27 | _id_ctrl_decoder_bit_T_29)
     | _id_ctrl_decoder_bit_T_31) | _id_ctrl_decoder_bit_T_33) | _id_ctrl_decoder_bit_T_35) | _id_ctrl_decoder_bit_T_37)
     | _id_ctrl_decoder_bit_T_39) | _id_ctrl_decoder_bit_T_41) | _id_ctrl_decoder_bit_T_43) | _id_ctrl_decoder_bit_T_45)
     | _id_ctrl_decoder_bit_T_47) | _id_ctrl_decoder_bit_T_49) | _id_ctrl_decoder_bit_T_51) | _id_ctrl_decoder_bit_T_53)
     | _id_ctrl_decoder_bit_T_55) | _id_ctrl_decoder_bit_T_57) | _id_ctrl_decoder_bit_T_59) | _id_ctrl_decoder_bit_T_61)
     | _id_ctrl_decoder_bit_T_63) | _id_ctrl_decoder_bit_T_65) | _id_ctrl_decoder_bit_T_67) | _id_ctrl_decoder_bit_T_69)
     | _id_ctrl_decoder_bit_T_115) | _id_ctrl_decoder_bit_T_117) | _id_ctrl_decoder_bit_T_175) |
    _id_ctrl_decoder_bit_T_177) | _id_ctrl_decoder_bit_T_195) | _id_ctrl_decoder_bit_T_197) | _id_ctrl_decoder_bit_T_199
    ) | _id_ctrl_decoder_bit_T_225) | _id_ctrl_decoder_bit_T_249; // @[Decode.scala 15:30]
  wire  id_ctrl_decoder_14 = ((((((_id_ctrl_decoder_bit_T_508 | _id_ctrl_decoder_bit_T_251) | _id_ctrl_decoder_bit_T_253
    ) | _id_ctrl_decoder_bit_T_255) | _id_ctrl_decoder_bit_T_257) | _id_ctrl_decoder_bit_T_259) |
    _id_ctrl_decoder_bit_T_261) | _id_ctrl_decoder_bit_T_263; // @[Decode.scala 15:30]
  wire  _id_ctrl_decoder_T_149 = _id_ctrl_decoder_T_7 == 32'h20; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_150 = ibuf_io_inst_0_bits_inst_bits & 32'h18000020; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_151 = _id_ctrl_decoder_T_150 == 32'h18000020; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_152 = ibuf_io_inst_0_bits_inst_bits & 32'h20000020; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_153 = _id_ctrl_decoder_T_152 == 32'h20000020; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_left_left_1 = (_id_ctrl_decoder_T_149 | _id_ctrl_decoder_T_151) | _id_ctrl_decoder_T_153; // @[Decode.scala 15:30]
  wire [31:0] _id_ctrl_decoder_T_156 = ibuf_io_inst_0_bits_inst_bits & 32'h10000008; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_157 = _id_ctrl_decoder_T_156 == 32'h10000008; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_158 = ibuf_io_inst_0_bits_inst_bits & 32'h40000008; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_159 = _id_ctrl_decoder_T_158 == 32'h40000008; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_left_right_1 = _id_ctrl_decoder_T_157 | _id_ctrl_decoder_T_159; // @[Decode.scala 15:30]
  wire [31:0] _id_ctrl_decoder_T_161 = ibuf_io_inst_0_bits_inst_bits & 32'h40; // @[Decode.scala 14:65]
  wire  id_ctrl_decoder_right_right_right = _id_ctrl_decoder_T_161 == 32'h40; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_163 = ibuf_io_inst_0_bits_inst_bits & 32'h8000008; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_164 = _id_ctrl_decoder_T_163 == 32'h8000008; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_165 = ibuf_io_inst_0_bits_inst_bits & 32'h80000008; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_166 = _id_ctrl_decoder_T_165 == 32'h80000008; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_right_left_2 = ((id_ctrl_decoder_right_right_right | _id_ctrl_decoder_T_164) |
    _id_ctrl_decoder_T_157) | _id_ctrl_decoder_T_166; // @[Decode.scala 15:30]
  wire [31:0] _id_ctrl_decoder_T_170 = ibuf_io_inst_0_bits_inst_bits & 32'h18000008; // @[Decode.scala 14:65]
  wire  id_ctrl_decoder_right_right_left = _id_ctrl_decoder_T_170 == 32'h8; // @[Decode.scala 14:121]
  wire [4:0] id_ctrl_decoder_15 = {id_ctrl_decoder_right_right_right,id_ctrl_decoder_right_right_left,
    id_ctrl_decoder_right_left_2,id_ctrl_decoder_left_right_1,id_ctrl_decoder_left_left_1}; // @[Cat.scala 29:58]
  wire [31:0] _id_ctrl_decoder_T_172 = ibuf_io_inst_0_bits_inst_bits & 32'h80000060; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_173 = _id_ctrl_decoder_T_172 == 32'h40; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_174 = ibuf_io_inst_0_bits_inst_bits & 32'h10000060; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_175 = _id_ctrl_decoder_T_174 == 32'h40; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_176 = ibuf_io_inst_0_bits_inst_bits & 32'h70; // @[Decode.scala 14:65]
  wire  id_ctrl_decoder_18 = _id_ctrl_decoder_T_176 == 32'h40; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_16 = (_id_ctrl_decoder_T_173 | _id_ctrl_decoder_T_175) | id_ctrl_decoder_18; // @[Decode.scala 15:30]
  wire [31:0] _id_ctrl_decoder_T_180 = ibuf_io_inst_0_bits_inst_bits & 32'h7c; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_181 = _id_ctrl_decoder_T_180 == 32'h24; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_182 = ibuf_io_inst_0_bits_inst_bits & 32'h40000060; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_183 = _id_ctrl_decoder_T_182 == 32'h40; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_184 = ibuf_io_inst_0_bits_inst_bits & 32'h90000060; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_185 = _id_ctrl_decoder_T_184 == 32'h10000040; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_17 = ((_id_ctrl_decoder_T_181 | _id_ctrl_decoder_T_183) | id_ctrl_decoder_18) |
    _id_ctrl_decoder_T_185; // @[Decode.scala 15:30]
  wire [31:0] _id_ctrl_decoder_T_189 = ibuf_io_inst_0_bits_inst_bits & 32'h3c; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_190 = _id_ctrl_decoder_T_189 == 32'h4; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_T_192 = _id_ctrl_decoder_T_174 == 32'h10000040; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_19 = ((_id_ctrl_decoder_T_190 | _id_ctrl_decoder_T_173) | id_ctrl_decoder_18) |
    _id_ctrl_decoder_T_192; // @[Decode.scala 15:30]
  wire [31:0] _id_ctrl_decoder_T_196 = ibuf_io_inst_0_bits_inst_bits & 32'h2000074; // @[Decode.scala 14:65]
  wire  id_ctrl_decoder_21 = _id_ctrl_decoder_T_196 == 32'h2000030; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_T_199 = _id_ctrl_decoder_T_11 == 32'h0; // @[Decode.scala 14:121]
  wire  _id_ctrl_decoder_T_201 = _id_ctrl_decoder_T_61 == 32'h10; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_202 = ibuf_io_inst_0_bits_inst_bits & 32'h2024; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_203 = _id_ctrl_decoder_T_202 == 32'h24; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_204 = ibuf_io_inst_0_bits_inst_bits & 32'h28; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_205 = _id_ctrl_decoder_T_204 == 32'h28; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_206 = ibuf_io_inst_0_bits_inst_bits & 32'h1030; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_207 = _id_ctrl_decoder_T_206 == 32'h1030; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_208 = ibuf_io_inst_0_bits_inst_bits & 32'h2030; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_209 = _id_ctrl_decoder_T_208 == 32'h2030; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_210 = ibuf_io_inst_0_bits_inst_bits & 32'h90000010; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_211 = _id_ctrl_decoder_T_210 == 32'h80000010; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_22 = (((((_id_ctrl_decoder_T_199 | _id_ctrl_decoder_T_201) | _id_ctrl_decoder_T_203) |
    _id_ctrl_decoder_T_205) | _id_ctrl_decoder_T_207) | _id_ctrl_decoder_T_209) | _id_ctrl_decoder_T_211; // @[Decode.scala 15:30]
  wire [31:0] _id_ctrl_decoder_T_218 = ibuf_io_inst_0_bits_inst_bits & 32'h1070; // @[Decode.scala 14:65]
  wire  id_ctrl_decoder_left_5 = _id_ctrl_decoder_T_218 == 32'h1070; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_220 = ibuf_io_inst_0_bits_inst_bits & 32'h2070; // @[Decode.scala 14:65]
  wire  id_ctrl_decoder_right_left_3 = _id_ctrl_decoder_T_220 == 32'h2070; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_222 = ibuf_io_inst_0_bits_inst_bits & 32'h10000070; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_223 = _id_ctrl_decoder_T_222 == 32'h70; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_224 = ibuf_io_inst_0_bits_inst_bits & 32'h12000034; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_225 = _id_ctrl_decoder_T_224 == 32'h10000030; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_226 = ibuf_io_inst_0_bits_inst_bits & 32'he0000050; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_227 = _id_ctrl_decoder_T_226 == 32'h60000050; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_right_right_3 = (((_id_ctrl_decoder_T_223 | id_ctrl_decoder_left_5) |
    id_ctrl_decoder_right_left_3) | _id_ctrl_decoder_T_225) | _id_ctrl_decoder_T_227; // @[Decode.scala 15:30]
  wire [2:0] id_ctrl_decoder_23 = {id_ctrl_decoder_right_right_3,id_ctrl_decoder_right_left_3,id_ctrl_decoder_left_5}; // @[Cat.scala 29:58]
  wire [31:0] _id_ctrl_decoder_T_232 = ibuf_io_inst_0_bits_inst_bits & 32'h3058; // @[Decode.scala 14:65]
  wire  id_ctrl_decoder_24 = _id_ctrl_decoder_T_232 == 32'h1008; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_25 = _id_ctrl_decoder_T_106 == 32'h8; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_236 = ibuf_io_inst_0_bits_inst_bits & 32'h6048; // @[Decode.scala 14:65]
  wire  id_ctrl_decoder_26 = _id_ctrl_decoder_T_236 == 32'h2008; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_238 = ibuf_io_inst_0_bits_inst_bits & 32'h105c; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_239 = _id_ctrl_decoder_T_238 == 32'h1004; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_240 = ibuf_io_inst_0_bits_inst_bits & 32'h2000060; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_241 = _id_ctrl_decoder_T_240 == 32'h2000040; // @[Decode.scala 14:121]
  wire [31:0] _id_ctrl_decoder_T_242 = ibuf_io_inst_0_bits_inst_bits & 32'hd0000070; // @[Decode.scala 14:65]
  wire  _id_ctrl_decoder_T_243 = _id_ctrl_decoder_T_242 == 32'h40000050; // @[Decode.scala 14:121]
  wire  id_ctrl_decoder_27 = (_id_ctrl_decoder_T_239 | _id_ctrl_decoder_T_241) | _id_ctrl_decoder_T_243; // @[Decode.scala 15:30]
  wire [4:0] id_raddr3 = ibuf_io_inst_0_bits_inst_rs3; // @[RocketCore.scala 263:72]
  wire [4:0] id_raddr2 = ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 263:72]
  wire [4:0] id_raddr1 = ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 263:72]
  wire [4:0] id_waddr = ibuf_io_inst_0_bits_inst_rd; // @[RocketCore.scala 263:72]
  reg  id_reg_fence; // @[RocketCore.scala 270:25]
  wire  _id_rs_id_rs_0_T = id_raddr1 == 5'h0; // @[RocketCore.scala 1017:45]
  wire [63:0] _id_rs_id_rs_0_T_4 = rf_id_rs_id_rs_0_MPORT_data; // @[RocketCore.scala 1017:25]
  wire [63:0] _id_rs_id_rs_1_T_4 = rf_id_rs_id_rs_1_MPORT_data; // @[RocketCore.scala 1017:25]
  wire  _id_csr_en_T = id_ctrl_decoder_23 == 3'h6; // @[package.scala 15:47]
  wire  _id_csr_en_T_1 = id_ctrl_decoder_23 == 3'h7; // @[package.scala 15:47]
  wire  _id_csr_en_T_2 = id_ctrl_decoder_23 == 3'h5; // @[package.scala 15:47]
  wire  _id_csr_en_T_3 = _id_csr_en_T | _id_csr_en_T_1; // @[package.scala 64:59]
  wire  id_csr_en = (_id_csr_en_T | _id_csr_en_T_1) | _id_csr_en_T_2; // @[package.scala 64:59]
  wire  id_system_insn = id_ctrl_decoder_23 == 3'h4; // @[RocketCore.scala 280:36]
  wire  id_csr_ren = _id_csr_en_T_3 & _id_rs_id_rs_0_T; // @[RocketCore.scala 281:54]
  wire  _id_sfence_T = id_ctrl_decoder_15 == 5'h14; // @[RocketCore.scala 283:50]
  wire  id_sfence = id_ctrl_decoder_14 & (id_ctrl_decoder_15 == 5'h14); // @[RocketCore.scala 283:31]
  wire  _id_csr_flush_T = id_sfence | id_system_insn; // @[RocketCore.scala 284:32]
  wire  _id_csr_flush_T_1 = ~id_csr_ren; // @[RocketCore.scala 284:67]
  wire  id_csr_flush = (id_sfence | id_system_insn) | ((id_csr_en & (~id_csr_ren)) & csr_io_decode_0_write_flush); // @[RocketCore.scala 284:50]
  wire  _id_illegal_insn_T_4 = id_ctrl_decoder_21 & (~(csr_io_status_isa[12])); // @[RocketCore.scala 293:34]
  wire  _id_illegal_insn_T_5 = (~id_ctrl_decoder_0) | _id_illegal_insn_T_4; // @[RocketCore.scala 292:40]
  wire  _id_illegal_insn_T_8 = id_ctrl_decoder_26 & (~(csr_io_status_isa[0])); // @[RocketCore.scala 294:17]
  wire  _id_illegal_insn_T_9 = _id_illegal_insn_T_5 | _id_illegal_insn_T_8; // @[RocketCore.scala 293:65]
  wire  _id_illegal_insn_T_11 = id_ctrl_decoder_1 & (csr_io_decode_0_fp_illegal | io_fpu_illegal_rm); // @[RocketCore.scala 295:16]
  wire  _id_illegal_insn_T_12 = _id_illegal_insn_T_9 | _id_illegal_insn_T_11; // @[RocketCore.scala 294:48]
  wire  _id_illegal_insn_T_15 = id_ctrl_decoder_27 & (~(csr_io_status_isa[3])); // @[RocketCore.scala 296:16]
  wire  _id_illegal_insn_T_16 = _id_illegal_insn_T_12 | _id_illegal_insn_T_15; // @[RocketCore.scala 295:70]
  wire  _id_illegal_insn_T_18 = ~(csr_io_status_isa[2]); // @[RocketCore.scala 297:33]
  wire  _id_illegal_insn_T_19 = ibuf_io_inst_0_bits_rvc & (~(csr_io_status_isa[2])); // @[RocketCore.scala 297:30]
  wire  _id_illegal_insn_T_20 = _id_illegal_insn_T_16 | _id_illegal_insn_T_19; // @[RocketCore.scala 296:47]
  wire  _id_illegal_insn_T_42 = id_csr_en & (csr_io_decode_0_read_illegal | (_id_csr_flush_T_1 &
    csr_io_decode_0_write_illegal)); // @[RocketCore.scala 303:15]
  wire  _id_illegal_insn_T_43 = _id_illegal_insn_T_20 | _id_illegal_insn_T_42; // @[RocketCore.scala 302:81]
  wire  _id_illegal_insn_T_47 = (~ibuf_io_inst_0_bits_rvc) & (_id_csr_flush_T & csr_io_decode_0_system_illegal); // @[RocketCore.scala 304:31]
  wire  id_illegal_insn = _id_illegal_insn_T_43 | _id_illegal_insn_T_47; // @[RocketCore.scala 303:99]
  wire  id_amo_aq = ibuf_io_inst_0_bits_inst_bits[26]; // @[RocketCore.scala 306:29]
  wire  id_amo_rl = ibuf_io_inst_0_bits_inst_bits[25]; // @[RocketCore.scala 307:29]
  wire [3:0] id_fence_succ = ibuf_io_inst_0_bits_inst_bits[23:20]; // @[RocketCore.scala 309:33]
  wire  id_fence_next = id_ctrl_decoder_25 | (id_ctrl_decoder_26 & id_amo_aq); // @[RocketCore.scala 310:37]
  wire  id_mem_busy = (~io_dmem_ordered) | io_dmem_req_valid; // @[RocketCore.scala 311:38]
  wire  _T = ~id_mem_busy; // @[RocketCore.scala 312:9]
  wire  _GEN_0 = _T ? 1'h0 : id_reg_fence; // @[RocketCore.scala 312:23 RocketCore.scala 312:38 RocketCore.scala 270:25]
  wire  id_do_fence_x8 = id_mem_busy & (((id_ctrl_decoder_26 & id_amo_rl) | id_ctrl_decoder_24) | (id_reg_fence &
    id_ctrl_decoder_14)); // @[RocketCore.scala 317:17]
  wire  id_xcpt = ((((((csr_io_interrupt | bpu_io_debug_if) | bpu_io_xcpt_if) | ibuf_io_inst_0_bits_xcpt0_pf_inst) |
    ibuf_io_inst_0_bits_xcpt0_ae_inst) | ibuf_io_inst_0_bits_xcpt1_pf_inst) | ibuf_io_inst_0_bits_xcpt1_ae_inst) |
    id_illegal_insn; // @[RocketCore.scala 970:26]
  wire [1:0] _T_7 = ibuf_io_inst_0_bits_xcpt1_ae_inst ? 2'h1 : 2'h2; // @[Mux.scala 47:69]
  wire [3:0] _T_8 = ibuf_io_inst_0_bits_xcpt1_pf_inst ? 4'hc : {{2'd0}, _T_7}; // @[Mux.scala 47:69]
  wire [3:0] _T_9 = ibuf_io_inst_0_bits_xcpt0_ae_inst ? 4'h1 : _T_8; // @[Mux.scala 47:69]
  wire [3:0] _T_10 = ibuf_io_inst_0_bits_xcpt0_pf_inst ? 4'hc : _T_9; // @[Mux.scala 47:69]
  wire [3:0] _T_11 = bpu_io_xcpt_if ? 4'h3 : _T_10; // @[Mux.scala 47:69]
  wire [3:0] _T_12 = bpu_io_debug_if ? 4'he : _T_11; // @[Mux.scala 47:69]
  wire [4:0] ex_waddr = ex_reg_inst[11:7]; // @[RocketCore.scala 355:29]
  wire [4:0] mem_waddr = mem_reg_inst[11:7]; // @[RocketCore.scala 356:31]
  wire [4:0] wb_waddr = wb_reg_inst[11:7]; // @[RocketCore.scala 357:29]
  wire  _T_23 = ex_reg_valid & ex_ctrl_wxd; // @[RocketCore.scala 360:19]
  wire  _T_24 = mem_reg_valid & mem_ctrl_wxd; // @[RocketCore.scala 361:20]
  wire  _T_26 = (mem_reg_valid & mem_ctrl_wxd) & (~mem_ctrl_mem); // @[RocketCore.scala 361:36]
  wire  id_bypass_src_0_0 = 5'h0 == id_raddr1; // @[RocketCore.scala 363:82]
  wire  id_bypass_src_0_1 = _T_23 & (ex_waddr == id_raddr1); // @[RocketCore.scala 363:74]
  wire  id_bypass_src_0_2 = _T_26 & (mem_waddr == id_raddr1); // @[RocketCore.scala 363:74]
  wire  id_bypass_src_0_3 = _T_24 & (mem_waddr == id_raddr1); // @[RocketCore.scala 363:74]
  wire  id_bypass_src_1_0 = 5'h0 == id_raddr2; // @[RocketCore.scala 363:82]
  wire  id_bypass_src_1_1 = _T_23 & (ex_waddr == id_raddr2); // @[RocketCore.scala 363:74]
  wire  id_bypass_src_1_2 = _T_26 & (mem_waddr == id_raddr2); // @[RocketCore.scala 363:74]
  wire  id_bypass_src_1_3 = _T_24 & (mem_waddr == id_raddr2); // @[RocketCore.scala 363:74]
  reg  ex_reg_rs_bypass_0; // @[RocketCore.scala 367:29]
  reg  ex_reg_rs_bypass_1; // @[RocketCore.scala 367:29]
  reg [1:0] ex_reg_rs_lsb_0; // @[RocketCore.scala 368:26]
  reg [1:0] ex_reg_rs_lsb_1; // @[RocketCore.scala 368:26]
  reg [61:0] ex_reg_rs_msb_0; // @[RocketCore.scala 369:26]
  reg [61:0] ex_reg_rs_msb_1; // @[RocketCore.scala 369:26]
  wire [63:0] _ex_rs_T_1 = ex_reg_rs_lsb_0 == 2'h1 ? mem_reg_wdata : 64'h0; // @[package.scala 32:76]
  wire [63:0] _ex_rs_T_3 = ex_reg_rs_lsb_0 == 2'h2 ? wb_reg_wdata : _ex_rs_T_1; // @[package.scala 32:76]
  wire [63:0] _ex_rs_T_5 = ex_reg_rs_lsb_0 == 2'h3 ? io_dmem_resp_bits_data_word_bypass : _ex_rs_T_3; // @[package.scala 32:76]
  wire [63:0] _ex_rs_T_6 = {ex_reg_rs_msb_0,ex_reg_rs_lsb_0}; // @[Cat.scala 29:58]
  wire [63:0] _ex_rs_T_8 = ex_reg_rs_lsb_1 == 2'h1 ? mem_reg_wdata : 64'h0; // @[package.scala 32:76]
  wire [63:0] _ex_rs_T_10 = ex_reg_rs_lsb_1 == 2'h2 ? wb_reg_wdata : _ex_rs_T_8; // @[package.scala 32:76]
  wire [63:0] _ex_rs_T_12 = ex_reg_rs_lsb_1 == 2'h3 ? io_dmem_resp_bits_data_word_bypass : _ex_rs_T_10; // @[package.scala 32:76]
  wire [63:0] _ex_rs_T_13 = {ex_reg_rs_msb_1,ex_reg_rs_lsb_1}; // @[Cat.scala 29:58]
  wire [63:0] ex_rs_1 = ex_reg_rs_bypass_1 ? _ex_rs_T_12 : _ex_rs_T_13; // @[RocketCore.scala 371:14]
  wire  _ex_imm_sign_T = ex_ctrl_sel_imm == 3'h5; // @[RocketCore.scala 1032:24]
  wire  _ex_imm_sign_T_2 = ex_reg_inst[31]; // @[RocketCore.scala 1032:53]
  wire  ex_imm_sign = ex_ctrl_sel_imm == 3'h5 ? $signed(1'sh0) : $signed(_ex_imm_sign_T_2); // @[RocketCore.scala 1032:19]
  wire  _ex_imm_b30_20_T = ex_ctrl_sel_imm == 3'h2; // @[RocketCore.scala 1033:26]
  wire [10:0] _ex_imm_b30_20_T_2 = ex_reg_inst[30:20]; // @[RocketCore.scala 1033:49]
  wire  _ex_imm_b19_12_T_2 = (ex_ctrl_sel_imm != 3'h2) & (ex_ctrl_sel_imm != 3'h3); // @[RocketCore.scala 1034:36]
  wire [7:0] _ex_imm_b19_12_T_4 = ex_reg_inst[19:12]; // @[RocketCore.scala 1034:73]
  wire  _ex_imm_b11_T_2 = _ex_imm_b30_20_T | _ex_imm_sign_T; // @[RocketCore.scala 1035:33]
  wire  _ex_imm_b11_T_5 = ex_reg_inst[20]; // @[RocketCore.scala 1036:44]
  wire  _ex_imm_b11_T_6 = ex_ctrl_sel_imm == 3'h1; // @[RocketCore.scala 1037:23]
  wire  _ex_imm_b11_T_8 = ex_reg_inst[7]; // @[RocketCore.scala 1037:43]
  wire  _ex_imm_b11_T_9 = ex_ctrl_sel_imm == 3'h1 ? $signed(_ex_imm_b11_T_8) : $signed(ex_imm_sign); // @[RocketCore.scala 1037:18]
  wire  _ex_imm_b11_T_10 = ex_ctrl_sel_imm == 3'h3 ? $signed(_ex_imm_b11_T_5) : $signed(_ex_imm_b11_T_9); // @[RocketCore.scala 1036:18]
  wire [5:0] ex_imm_left_right_right = _ex_imm_b11_T_2 ? 6'h0 : ex_reg_inst[30:25]; // @[RocketCore.scala 1038:20]
  wire  _ex_imm_b4_1_T_1 = ex_ctrl_sel_imm == 3'h0; // @[RocketCore.scala 1040:24]
  wire  _ex_imm_b4_1_T_3 = (ex_ctrl_sel_imm == 3'h0) | _ex_imm_b11_T_6; // @[RocketCore.scala 1040:34]
  wire [3:0] _ex_imm_b4_1_T_8 = _ex_imm_sign_T ? ex_reg_inst[19:16] : ex_reg_inst[24:21]; // @[RocketCore.scala 1041:19]
  wire [3:0] _ex_imm_b4_1_T_9 = _ex_imm_b4_1_T_3 ? ex_reg_inst[11:8] : _ex_imm_b4_1_T_8; // @[RocketCore.scala 1040:19]
  wire [3:0] ex_imm_left_right_left = _ex_imm_b30_20_T ? 4'h0 : _ex_imm_b4_1_T_9; // @[RocketCore.scala 1039:19]
  wire  _ex_imm_b0_T_6 = _ex_imm_sign_T & (ex_reg_inst[15]); // @[RocketCore.scala 1044:17]
  wire  _ex_imm_b0_T_7 = ex_ctrl_sel_imm == 3'h4 ? ex_reg_inst[20] : _ex_imm_b0_T_6; // @[RocketCore.scala 1043:17]
  wire  ex_imm_left_left = _ex_imm_b4_1_T_1 ? ex_reg_inst[7] : _ex_imm_b0_T_7; // @[RocketCore.scala 1042:17]
  wire  ex_imm_right_left_left = _ex_imm_b11_T_2 ? $signed(1'sh0) : $signed(_ex_imm_b11_T_10); // @[Cat.scala 29:58]
  wire [7:0] ex_imm_right_left_right = _ex_imm_b19_12_T_2 ? $signed({8{ex_imm_sign}}) : $signed(_ex_imm_b19_12_T_4); // @[Cat.scala 29:58]
  wire [10:0] ex_imm_right_right_left = ex_ctrl_sel_imm == 3'h2 ? $signed(_ex_imm_b30_20_T_2) : $signed({11{ex_imm_sign
    }}); // @[Cat.scala 29:58]
  wire  ex_imm_right_right_right = ex_ctrl_sel_imm == 3'h5 ? $signed(1'sh0) : $signed(_ex_imm_sign_T_2); // @[Cat.scala 29:58]
  wire [31:0] ex_imm = {ex_imm_right_right_right,ex_imm_right_right_left,ex_imm_right_left_right,ex_imm_right_left_left,
    ex_imm_left_right_right,ex_imm_left_right_left,ex_imm_left_left}; // @[RocketCore.scala 1046:53]
  wire [63:0] _ex_op1_T = ex_reg_rs_bypass_0 ? _ex_rs_T_5 : _ex_rs_T_6; // @[RocketCore.scala 374:24]
  wire [39:0] _ex_op1_T_1 = ex_reg_pc; // @[RocketCore.scala 375:24]
  wire [63:0] _ex_op1_T_3 = 2'h1 == ex_ctrl_sel_alu1 ? $signed(_ex_op1_T) : $signed(64'sh0); // @[Mux.scala 80:57]
  wire [63:0] _ex_op2_T = ex_reg_rs_bypass_1 ? _ex_rs_T_12 : _ex_rs_T_13; // @[RocketCore.scala 377:24]
  wire [3:0] _ex_op2_T_1 = ex_reg_rvc ? $signed(4'sh2) : $signed(4'sh4); // @[RocketCore.scala 379:19]
  wire [63:0] _ex_op2_T_3 = 2'h2 == ex_ctrl_sel_alu2 ? $signed(_ex_op2_T) : $signed(64'sh0); // @[Mux.scala 80:57]
  wire [63:0] _ex_op2_T_5 = 2'h3 == ex_ctrl_sel_alu2 ? $signed({{32{ex_imm[31]}},ex_imm}) : $signed(_ex_op2_T_3); // @[Mux.scala 80:57]
  wire  _T_123 = id_raddr1 != 5'h0; // @[RocketCore.scala 710:55]
  wire  _T_124 = id_ctrl_decoder_7 & (id_raddr1 != 5'h0); // @[RocketCore.scala 710:42]
  wire  _data_hazard_ex_T = id_raddr1 == ex_waddr; // @[RocketCore.scala 730:70]
  wire  _T_125 = id_raddr2 != 5'h0; // @[RocketCore.scala 711:55]
  wire  _T_126 = id_ctrl_decoder_6 & (id_raddr2 != 5'h0); // @[RocketCore.scala 711:42]
  wire  _data_hazard_ex_T_2 = id_raddr2 == ex_waddr; // @[RocketCore.scala 730:70]
  wire  _T_128 = id_ctrl_decoder_22 & (id_waddr != 5'h0); // @[RocketCore.scala 712:42]
  wire  _data_hazard_ex_T_4 = id_waddr == ex_waddr; // @[RocketCore.scala 730:70]
  wire  _data_hazard_ex_T_7 = ((_T_124 & _data_hazard_ex_T) | (_T_126 & _data_hazard_ex_T_2)) | (_T_128 &
    _data_hazard_ex_T_4); // @[RocketCore.scala 979:50]
  wire  data_hazard_ex = ex_ctrl_wxd & _data_hazard_ex_T_7; // @[RocketCore.scala 730:36]
  wire  ex_cannot_bypass = ((((ex_ctrl_csr != 3'h0) | ex_ctrl_jalr) | ex_ctrl_mem) | ex_ctrl_div) | ex_ctrl_fp; // @[RocketCore.scala 729:109]
  wire  _fp_data_hazard_ex_T_4 = id_raddr3 == ex_waddr; // @[RocketCore.scala 731:76]
  wire  _fp_data_hazard_ex_T_10 = (((io_fpu_dec_ren1 & _data_hazard_ex_T) | (io_fpu_dec_ren2 & _data_hazard_ex_T_2)) | (
    io_fpu_dec_ren3 & _fp_data_hazard_ex_T_4)) | (io_fpu_dec_wen & _data_hazard_ex_T_4); // @[RocketCore.scala 979:50]
  wire  fp_data_hazard_ex = ex_ctrl_wfd & _fp_data_hazard_ex_T_10; // @[RocketCore.scala 731:39]
  wire  id_ex_hazard = ex_reg_valid & ((data_hazard_ex & ex_cannot_bypass) | fp_data_hazard_ex); // @[RocketCore.scala 732:35]
  wire  _data_hazard_mem_T = id_raddr1 == mem_waddr; // @[RocketCore.scala 739:72]
  wire  _data_hazard_mem_T_2 = id_raddr2 == mem_waddr; // @[RocketCore.scala 739:72]
  wire  _data_hazard_mem_T_4 = id_waddr == mem_waddr; // @[RocketCore.scala 739:72]
  wire  _data_hazard_mem_T_7 = ((_T_124 & _data_hazard_mem_T) | (_T_126 & _data_hazard_mem_T_2)) | (_T_128 &
    _data_hazard_mem_T_4); // @[RocketCore.scala 979:50]
  wire  data_hazard_mem = mem_ctrl_wxd & _data_hazard_mem_T_7; // @[RocketCore.scala 739:38]
  wire  mem_cannot_bypass = (((mem_ctrl_csr != 3'h0) | (mem_ctrl_mem & mem_reg_slow_bypass)) | mem_ctrl_div) |
    mem_ctrl_fp; // @[RocketCore.scala 738:116]
  wire  _fp_data_hazard_mem_T_4 = id_raddr3 == mem_waddr; // @[RocketCore.scala 740:78]
  wire  _fp_data_hazard_mem_T_10 = (((io_fpu_dec_ren1 & _data_hazard_mem_T) | (io_fpu_dec_ren2 & _data_hazard_mem_T_2))
     | (io_fpu_dec_ren3 & _fp_data_hazard_mem_T_4)) | (io_fpu_dec_wen & _data_hazard_mem_T_4); // @[RocketCore.scala 979:50]
  wire  fp_data_hazard_mem = mem_ctrl_wfd & _fp_data_hazard_mem_T_10; // @[RocketCore.scala 740:41]
  wire  id_mem_hazard = mem_reg_valid & ((data_hazard_mem & mem_cannot_bypass) | fp_data_hazard_mem); // @[RocketCore.scala 741:37]
  wire  _data_hazard_wb_T = id_raddr1 == wb_waddr; // @[RocketCore.scala 745:70]
  wire  _data_hazard_wb_T_2 = id_raddr2 == wb_waddr; // @[RocketCore.scala 745:70]
  wire  _data_hazard_wb_T_4 = id_waddr == wb_waddr; // @[RocketCore.scala 745:70]
  wire  _data_hazard_wb_T_7 = ((_T_124 & _data_hazard_wb_T) | (_T_126 & _data_hazard_wb_T_2)) | (_T_128 &
    _data_hazard_wb_T_4); // @[RocketCore.scala 979:50]
  wire  data_hazard_wb = wb_ctrl_wxd & _data_hazard_wb_T_7; // @[RocketCore.scala 745:36]
  wire  wb_dcache_miss = wb_ctrl_mem & (~io_dmem_resp_valid); // @[RocketCore.scala 487:36]
  wire  wb_set_sboard = wb_ctrl_div | wb_dcache_miss; // @[RocketCore.scala 632:35]
  wire  _fp_data_hazard_wb_T_4 = id_raddr3 == wb_waddr; // @[RocketCore.scala 746:76]
  wire  _fp_data_hazard_wb_T_10 = (((io_fpu_dec_ren1 & _data_hazard_wb_T) | (io_fpu_dec_ren2 & _data_hazard_wb_T_2)) | (
    io_fpu_dec_ren3 & _fp_data_hazard_wb_T_4)) | (io_fpu_dec_wen & _data_hazard_wb_T_4); // @[RocketCore.scala 979:50]
  wire  fp_data_hazard_wb = wb_ctrl_wfd & _fp_data_hazard_wb_T_10; // @[RocketCore.scala 746:39]
  wire  id_wb_hazard = wb_reg_valid & ((data_hazard_wb & wb_set_sboard) | fp_data_hazard_wb); // @[RocketCore.scala 747:35]
  reg [31:0] _r; // @[RocketCore.scala 996:25]
  wire [31:0] _next = {_r[31:1], 1'h0}; // @[RocketCore.scala 997:40]
  wire [31:0] _id_sboard_hazard_T = _next >> id_raddr1; // @[RocketCore.scala 993:35]
  wire  dmem_resp_valid = io_dmem_resp_valid & io_dmem_resp_bits_has_data; // @[RocketCore.scala 642:44]
  wire  dmem_resp_replay = dmem_resp_valid & io_dmem_resp_bits_replay; // @[RocketCore.scala 643:42]
  wire  dmem_resp_xpu = ~(io_dmem_resp_bits_tag[0]); // @[RocketCore.scala 639:23]
  wire  _T_117 = dmem_resp_replay & dmem_resp_xpu; // @[RocketCore.scala 658:26]
  wire  ll_wen_x1 = div_io_resp_ready & div_io_resp_valid; // @[Decoupled.scala 40:37]
  wire  ll_wen = _T_117 | ll_wen_x1; // @[RocketCore.scala 658:44 RocketCore.scala 663:12]
  wire [4:0] dmem_resp_waddr = io_dmem_resp_bits_tag[5:1]; // @[RocketCore.scala 641:46]
  wire [4:0] ll_waddr = _T_117 ? dmem_resp_waddr : div_io_resp_bits_tag; // @[RocketCore.scala 658:44 RocketCore.scala 662:14]
  wire  _id_sboard_hazard_T_3 = ll_wen & (ll_waddr == id_raddr1); // @[RocketCore.scala 722:58]
  wire  _id_sboard_hazard_T_5 = (_id_sboard_hazard_T[0]) & (~_id_sboard_hazard_T_3); // @[RocketCore.scala 725:77]
  wire [31:0] _id_sboard_hazard_T_7 = _next >> id_raddr2; // @[RocketCore.scala 993:35]
  wire  _id_sboard_hazard_T_10 = ll_wen & (ll_waddr == id_raddr2); // @[RocketCore.scala 722:58]
  wire  _id_sboard_hazard_T_12 = (_id_sboard_hazard_T_7[0]) & (~_id_sboard_hazard_T_10); // @[RocketCore.scala 725:77]
  wire [31:0] _id_sboard_hazard_T_14 = _next >> id_waddr; // @[RocketCore.scala 993:35]
  wire  _id_sboard_hazard_T_17 = ll_wen & (ll_waddr == id_waddr); // @[RocketCore.scala 722:58]
  wire  _id_sboard_hazard_T_19 = (_id_sboard_hazard_T_14[0]) & (~_id_sboard_hazard_T_17); // @[RocketCore.scala 725:77]
  wire  id_sboard_hazard = ((_T_124 & _id_sboard_hazard_T_5) | (_T_126 & _id_sboard_hazard_T_12)) | (_T_128 &
    _id_sboard_hazard_T_19); // @[RocketCore.scala 979:50]
  wire  _ctrl_stalld_T_5 = csr_io_singleStep & ((ex_reg_valid | mem_reg_valid) | wb_reg_valid); // @[RocketCore.scala 769:23]
  wire  _ctrl_stalld_T_6 = (((id_ex_hazard | id_mem_hazard) | id_wb_hazard) | id_sboard_hazard) | _ctrl_stalld_T_5; // @[RocketCore.scala 768:71]
  wire  _ctrl_stalld_T_9 = (id_csr_en & csr_io_decode_0_fp_csr) & (~io_fpu_fcsr_rdy); // @[RocketCore.scala 770:42]
  wire  _ctrl_stalld_T_10 = _ctrl_stalld_T_6 | _ctrl_stalld_T_9; // @[RocketCore.scala 769:74]
  reg [31:0] id_stall_fpu__next; // @[RocketCore.scala 996:25]
  wire [31:0] _id_stall_fpu_T_18 = id_stall_fpu__next >> id_raddr1; // @[RocketCore.scala 993:35]
  wire [31:0] _id_stall_fpu_T_21 = id_stall_fpu__next >> id_raddr2; // @[RocketCore.scala 993:35]
  wire [31:0] _id_stall_fpu_T_24 = id_stall_fpu__next >> id_raddr3; // @[RocketCore.scala 993:35]
  wire [31:0] _id_stall_fpu_T_27 = id_stall_fpu__next >> id_waddr; // @[RocketCore.scala 993:35]
  wire  id_stall_fpu = (((io_fpu_dec_ren1 & (_id_stall_fpu_T_18[0])) | (io_fpu_dec_ren2 & (_id_stall_fpu_T_21[0]))) | (
    io_fpu_dec_ren3 & (_id_stall_fpu_T_24[0]))) | (io_fpu_dec_wen & (_id_stall_fpu_T_27[0])); // @[RocketCore.scala 979:50]
  wire  _ctrl_stalld_T_11 = id_ctrl_decoder_1 & id_stall_fpu; // @[RocketCore.scala 771:16]
  wire  _ctrl_stalld_T_12 = _ctrl_stalld_T_10 | _ctrl_stalld_T_11; // @[RocketCore.scala 770:62]
  reg  blocked; // @[RocketCore.scala 760:22]
  wire  _dcache_blocked_T = ~io_dmem_perf_grant; // @[RocketCore.scala 762:16]
  wire  dcache_blocked = blocked & (~io_dmem_perf_grant); // @[RocketCore.scala 762:13]
  wire  _ctrl_stalld_T_13 = id_ctrl_decoder_14 & dcache_blocked; // @[RocketCore.scala 772:17]
  wire  _ctrl_stalld_T_14 = _ctrl_stalld_T_12 | _ctrl_stalld_T_13; // @[RocketCore.scala 771:32]
  wire  wb_wxd = wb_reg_valid & wb_ctrl_wxd; // @[RocketCore.scala 631:29]
  wire  _ctrl_stalld_T_17 = ~wb_wxd; // @[RocketCore.scala 774:65]
  wire  _ctrl_stalld_T_22 = id_ctrl_decoder_21 & ((~(div_io_req_ready | (div_io_resp_valid & (~wb_wxd)))) |
    div_io_req_valid); // @[RocketCore.scala 774:17]
  wire  _ctrl_stalld_T_23 = _ctrl_stalld_T_14 | _ctrl_stalld_T_22; // @[RocketCore.scala 773:34]
  wire  _ctrl_stalld_T_26 = _ctrl_stalld_T_23 | id_do_fence_x8; // @[RocketCore.scala 775:15]
  wire  _ctrl_stalld_T_27 = _ctrl_stalld_T_26 | csr_io_csr_stall; // @[RocketCore.scala 776:17]
  wire  ctrl_stalld = _ctrl_stalld_T_27 | id_reg_pause; // @[RocketCore.scala 777:22]
  wire  ctrl_killd = ((((~ibuf_io_inst_0_valid) | ibuf_io_inst_0_bits_replay) | take_pc_mem_wb) | ctrl_stalld) |
    csr_io_interrupt; // @[RocketCore.scala 780:104]
  wire  _ex_reg_valid_T = ~ctrl_killd; // @[RocketCore.scala 419:19]
  wire  _ex_reg_replay_T = ~take_pc_mem_wb; // @[RocketCore.scala 420:20]
  wire  _ex_reg_replay_T_1 = (~take_pc_mem_wb) & ibuf_io_inst_0_valid; // @[RocketCore.scala 420:29]
  wire  _T_30 = id_ctrl_decoder_25 & (id_fence_succ == 4'h0); // @[RocketCore.scala 430:25]
  wire  _GEN_1 = _T_30 | id_reg_pause; // @[RocketCore.scala 430:49 RocketCore.scala 430:64 RocketCore.scala 112:25]
  wire  _GEN_2 = id_fence_next | _GEN_0; // @[RocketCore.scala 431:26 RocketCore.scala 431:41]
  wire [1:0] _T_31 = {ibuf_io_inst_0_bits_xcpt1_pf_inst,ibuf_io_inst_0_bits_xcpt1_ae_inst}; // @[RocketCore.scala 437:22]
  wire  _T_32 = |_T_31; // @[RocketCore.scala 437:29]
  wire  _GEN_5 = _T_32 | ibuf_io_inst_0_bits_rvc; // @[RocketCore.scala 437:34 RocketCore.scala 440:20 RocketCore.scala 426:16]
  wire [1:0] _T_33 = {ibuf_io_inst_0_bits_xcpt0_pf_inst,ibuf_io_inst_0_bits_xcpt0_ae_inst}; // @[RocketCore.scala 442:40]
  wire  _T_35 = bpu_io_xcpt_if | (|_T_33); // @[RocketCore.scala 442:28]
  wire  _GEN_9 = id_xcpt | id_ctrl_decoder_12; // @[RocketCore.scala 432:20 RocketCore.scala 434:22 RocketCore.scala 425:13]
  wire  _ex_reg_flush_pipe_T = id_ctrl_decoder_24 | id_csr_flush; // @[RocketCore.scala 447:42]
  wire  _T_37 = id_ctrl_decoder_15 == 5'h5; // @[package.scala 15:47]
  wire  _T_38 = _id_sfence_T | _T_37; // @[package.scala 64:59]
  wire [1:0] _ex_reg_mem_size_T_1 = {_T_125,_T_123}; // @[Cat.scala 29:58]
  wire  do_bypass = ((id_bypass_src_0_0 | id_bypass_src_0_1) | id_bypass_src_0_2) | id_bypass_src_0_3; // @[RocketCore.scala 460:48]
  wire [1:0] _bypass_src_T = id_bypass_src_0_2 ? 2'h2 : 2'h3; // @[Mux.scala 47:69]
  wire [1:0] _bypass_src_T_1 = id_bypass_src_0_1 ? 2'h1 : _bypass_src_T; // @[Mux.scala 47:69]
  wire  _T_40 = id_ctrl_decoder_7 & (~do_bypass); // @[RocketCore.scala 464:23]
  wire  wb_valid = (wb_reg_valid & (~replay_wb_common)) & (~wb_xcpt); // @[RocketCore.scala 666:45]
  wire  wb_wen = wb_valid & wb_ctrl_wxd; // @[RocketCore.scala 667:25]
  wire  rf_wen = wb_wen | ll_wen; // @[RocketCore.scala 668:23]
  wire [4:0] rf_waddr = ll_wen ? ll_waddr : wb_waddr; // @[RocketCore.scala 669:21]
  wire  _T_118 = rf_waddr != 5'h0; // @[RocketCore.scala 1022:16]
  wire  _T_121 = rf_waddr == id_raddr1; // @[RocketCore.scala 1025:20]
  wire  _rf_wdata_T = dmem_resp_valid & dmem_resp_xpu; // @[RocketCore.scala 670:38]
  wire [63:0] ll_wdata = div_io_resp_bits_data;
  wire [63:0] _rf_wdata_T_4 = wb_ctrl_csr != 3'h0 ? csr_io_rw_rdata : wb_reg_wdata; // @[RocketCore.scala 672:21]
  wire [63:0] _rf_wdata_T_5 = ll_wen ? ll_wdata : _rf_wdata_T_4; // @[RocketCore.scala 671:21]
  wire [63:0] rf_wdata = _rf_wdata_T ? io_dmem_resp_bits_data : _rf_wdata_T_5; // @[RocketCore.scala 670:21]
  wire [63:0] _GEN_226 = _T_121 ? rf_wdata : _id_rs_id_rs_0_T_4; // @[RocketCore.scala 1025:31 RocketCore.scala 1025:39 RocketCore.scala 1017:19]
  wire [63:0] _GEN_233 = _T_118 ? _GEN_226 : _id_rs_id_rs_0_T_4; // @[RocketCore.scala 1022:29 RocketCore.scala 1017:19]
  wire [63:0] id_rs_0 = rf_wen ? _GEN_233 : _id_rs_id_rs_0_T_4; // @[RocketCore.scala 675:17 RocketCore.scala 1017:19]
  wire  do_bypass_1 = ((id_bypass_src_1_0 | id_bypass_src_1_1) | id_bypass_src_1_2) | id_bypass_src_1_3; // @[RocketCore.scala 460:48]
  wire [1:0] _bypass_src_T_2 = id_bypass_src_1_2 ? 2'h2 : 2'h3; // @[Mux.scala 47:69]
  wire  _T_42 = id_ctrl_decoder_6 & (~do_bypass_1); // @[RocketCore.scala 464:23]
  wire  _T_122 = rf_waddr == id_raddr2; // @[RocketCore.scala 1025:20]
  wire [63:0] _GEN_227 = _T_122 ? rf_wdata : _id_rs_id_rs_1_T_4; // @[RocketCore.scala 1025:31 RocketCore.scala 1025:39 RocketCore.scala 1017:19]
  wire [63:0] _GEN_234 = _T_118 ? _GEN_227 : _id_rs_id_rs_1_T_4; // @[RocketCore.scala 1022:29 RocketCore.scala 1017:19]
  wire [63:0] id_rs_1 = rf_wen ? _GEN_234 : _id_rs_id_rs_1_T_4; // @[RocketCore.scala 675:17 RocketCore.scala 1017:19]
  wire [31:0] inst = ibuf_io_inst_0_bits_rvc ? {{16'd0}, ibuf_io_inst_0_bits_raw[15:0]} : ibuf_io_inst_0_bits_raw; // @[RocketCore.scala 470:21]
  wire  id_load_use = (mem_reg_valid & data_hazard_mem) & mem_ctrl_mem; // @[RocketCore.scala 742:51]
  wire  _T_45 = (_ex_reg_valid_T | csr_io_interrupt) | ibuf_io_inst_0_bits_replay; // @[RocketCore.scala 476:41]
  wire  _replay_ex_structural_T = ~io_dmem_req_ready; // @[RocketCore.scala 488:45]
  wire  _replay_ex_structural_T_3 = ex_ctrl_div & (~div_io_req_ready); // @[RocketCore.scala 489:42]
  wire  replay_ex_structural = (ex_ctrl_mem & (~io_dmem_req_ready)) | _replay_ex_structural_T_3; // @[RocketCore.scala 488:64]
  wire  replay_ex_load_use = wb_dcache_miss & ex_reg_load_use; // @[RocketCore.scala 490:43]
  wire  replay_ex = ex_reg_replay | (ex_reg_valid & (replay_ex_structural | replay_ex_load_use)); // @[RocketCore.scala 491:33]
  wire  ctrl_killx = (take_pc_mem_wb | replay_ex) | (~ex_reg_valid); // @[RocketCore.scala 492:48]
  wire  _ex_slow_bypass_T = ex_ctrl_mem_cmd == 5'h7; // @[RocketCore.scala 494:40]
  wire  ex_slow_bypass = (ex_ctrl_mem_cmd == 5'h7) | (ex_reg_mem_size < 2'h2); // @[RocketCore.scala 494:50]
  wire  ex_sfence = ex_ctrl_mem & (ex_ctrl_mem_cmd == 5'h14); // @[RocketCore.scala 495:48]
  wire  ex_xcpt = ex_reg_xcpt_interrupt | ex_reg_xcpt; // @[RocketCore.scala 498:28]
  wire  mem_pc_valid = (mem_reg_valid | mem_reg_replay) | mem_reg_xcpt_interrupt; // @[RocketCore.scala 504:54]
  wire  mem_npc_misaligned = (_id_illegal_insn_T_18 & (mem_npc[1])) & (~mem_reg_sfence); // @[RocketCore.scala 513:70]
  wire  _mem_int_wdata_T = ~mem_reg_xcpt; // @[RocketCore.scala 514:27]
  wire  _mem_int_wdata_T_2 = (~mem_reg_xcpt) & (mem_ctrl_jalr ^ mem_npc_misaligned); // @[RocketCore.scala 514:41]
  wire [63:0] mem_int_wdata = _mem_int_wdata_T_2 ? $signed({{24{mem_br_target[39]}},mem_br_target}) : $signed(
    mem_reg_wdata); // @[RocketCore.scala 514:119]
  wire  mem_cfi = (mem_ctrl_branch | mem_ctrl_jalr) | mem_ctrl_jal; // @[RocketCore.scala 515:50]
  wire  mem_cfi_taken = (_mem_br_target_T_1 | mem_ctrl_jalr) | mem_ctrl_jal; // @[RocketCore.scala 516:74]
  wire  _mem_reg_valid_T = ~ctrl_killx; // @[RocketCore.scala 521:20]
  wire  _T_56 = mem_reg_valid & mem_reg_flush_pipe; // @[RocketCore.scala 528:23]
  wire  _mem_reg_load_T_5 = ex_ctrl_mem_cmd == 5'h4; // @[package.scala 15:47]
  wire  _mem_reg_load_T_6 = ex_ctrl_mem_cmd == 5'h9; // @[package.scala 15:47]
  wire  _mem_reg_load_T_7 = ex_ctrl_mem_cmd == 5'ha; // @[package.scala 15:47]
  wire  _mem_reg_load_T_8 = ex_ctrl_mem_cmd == 5'hb; // @[package.scala 15:47]
  wire  _mem_reg_load_T_11 = ((_mem_reg_load_T_5 | _mem_reg_load_T_6) | _mem_reg_load_T_7) | _mem_reg_load_T_8; // @[package.scala 64:59]
  wire  _mem_reg_load_T_12 = ex_ctrl_mem_cmd == 5'h8; // @[package.scala 15:47]
  wire  _mem_reg_load_T_13 = ex_ctrl_mem_cmd == 5'hc; // @[package.scala 15:47]
  wire  _mem_reg_load_T_14 = ex_ctrl_mem_cmd == 5'hd; // @[package.scala 15:47]
  wire  _mem_reg_load_T_15 = ex_ctrl_mem_cmd == 5'he; // @[package.scala 15:47]
  wire  _mem_reg_load_T_16 = ex_ctrl_mem_cmd == 5'hf; // @[package.scala 15:47]
  wire  _mem_reg_load_T_20 = (((_mem_reg_load_T_12 | _mem_reg_load_T_13) | _mem_reg_load_T_14) | _mem_reg_load_T_15) |
    _mem_reg_load_T_16; // @[package.scala 64:59]
  wire  _mem_reg_load_T_21 = _mem_reg_load_T_11 | _mem_reg_load_T_20; // @[Consts.scala 80:44]
  wire  _mem_reg_load_T_22 = (((ex_ctrl_mem_cmd == 5'h0) | (ex_ctrl_mem_cmd == 5'h6)) | _ex_slow_bypass_T) |
    _mem_reg_load_T_21; // @[Consts.scala 82:75]
  wire  _mem_reg_load_T_23 = ex_ctrl_mem & _mem_reg_load_T_22; // @[RocketCore.scala 535:33]
  wire  _mem_reg_store_T_22 = (((ex_ctrl_mem_cmd == 5'h1) | (ex_ctrl_mem_cmd == 5'h11)) | _ex_slow_bypass_T) |
    _mem_reg_load_T_21; // @[Consts.scala 83:76]
  wire  _mem_reg_store_T_23 = ex_ctrl_mem & _mem_reg_store_T_22; // @[RocketCore.scala 536:34]
  wire [63:0] _mem_reg_wdata_T = alu_io_out; // @[RocketCore.scala 548:25]
  wire  _T_59 = ex_ctrl_rxs2 & (ex_ctrl_mem | ex_sfence); // @[RocketCore.scala 551:24]
  wire [7:0] mem_reg_rs2_right = ex_rs_1[7:0]; // @[AMOALU.scala 26:66]
  wire [63:0] _mem_reg_rs2_T_1 = {mem_reg_rs2_right,mem_reg_rs2_right,mem_reg_rs2_right,mem_reg_rs2_right,
    mem_reg_rs2_right,mem_reg_rs2_right,mem_reg_rs2_right,mem_reg_rs2_right}; // @[Cat.scala 29:58]
  wire [15:0] mem_reg_rs2_right_3 = ex_rs_1[15:0]; // @[AMOALU.scala 26:66]
  wire [63:0] _mem_reg_rs2_T_3 = {mem_reg_rs2_right_3,mem_reg_rs2_right_3,mem_reg_rs2_right_3,mem_reg_rs2_right_3}; // @[Cat.scala 29:58]
  wire [31:0] mem_reg_rs2_right_5 = ex_rs_1[31:0]; // @[AMOALU.scala 26:66]
  wire [63:0] _mem_reg_rs2_T_5 = {mem_reg_rs2_right_5,mem_reg_rs2_right_5}; // @[Cat.scala 29:58]
  wire [63:0] _mem_reg_rs2_T_6 = ex_reg_mem_size == 2'h2 ? _mem_reg_rs2_T_5 : ex_rs_1; // @[AMOALU.scala 26:13]
  wire [63:0] _mem_reg_rs2_T_7 = ex_reg_mem_size == 2'h1 ? _mem_reg_rs2_T_3 : _mem_reg_rs2_T_6; // @[AMOALU.scala 26:13]
  wire  _T_60 = ex_ctrl_jalr & csr_io_status_debug; // @[RocketCore.scala 555:24]
  wire  _GEN_77 = _T_60 | ex_ctrl_fence_i; // @[RocketCore.scala 555:48 RocketCore.scala 557:24 RocketCore.scala 531:14]
  wire  _GEN_78 = _T_60 | ex_reg_flush_pipe; // @[RocketCore.scala 555:48 RocketCore.scala 558:26 RocketCore.scala 539:24]
  wire  mem_breakpoint = (mem_reg_load & bpu_io_xcpt_ld) | (mem_reg_store & bpu_io_xcpt_st); // @[RocketCore.scala 562:57]
  wire  mem_debug_breakpoint = (mem_reg_load & bpu_io_debug_ld) | (mem_reg_store & bpu_io_debug_st); // @[RocketCore.scala 563:64]
  wire  mem_ldst_xcpt = mem_debug_breakpoint | mem_breakpoint; // @[RocketCore.scala 970:26]
  wire [3:0] mem_ldst_cause = mem_debug_breakpoint ? 4'he : 4'h3; // @[Mux.scala 47:69]
  wire  _T_61 = mem_reg_xcpt_interrupt | mem_reg_xcpt; // @[RocketCore.scala 569:29]
  wire  _T_62 = mem_reg_valid & mem_npc_misaligned; // @[RocketCore.scala 570:20]
  wire  _T_63 = mem_reg_valid & mem_ldst_xcpt; // @[RocketCore.scala 571:20]
  wire  mem_xcpt = (_T_61 | _T_62) | _T_63; // @[RocketCore.scala 970:26]
  wire [3:0] _T_65 = _T_62 ? 4'h0 : mem_ldst_cause; // @[Mux.scala 47:69]
  wire  dcache_kill_mem = _T_24 & io_dmem_replay_next; // @[RocketCore.scala 580:55]
  wire  fpu_kill_mem = (mem_reg_valid & mem_ctrl_fp) & io_fpu_nack_mem; // @[RocketCore.scala 581:51]
  wire  replay_mem = (dcache_kill_mem | mem_reg_replay) | fpu_kill_mem; // @[RocketCore.scala 582:55]
  wire  killm_common = ((dcache_kill_mem | take_pc_wb) | mem_reg_xcpt) | (~mem_reg_valid); // @[RocketCore.scala 583:68]
  reg  div_io_kill_REG; // @[RocketCore.scala 584:37]
  wire  ctrl_killm = (killm_common | mem_xcpt) | fpu_kill_mem; // @[RocketCore.scala 585:45]
  wire  _wb_reg_valid_T = ~ctrl_killm; // @[RocketCore.scala 588:19]
  wire  _wb_reg_replay_T = ~take_pc_wb; // @[RocketCore.scala 589:34]
  wire  _wb_reg_wdata_T_2 = (_mem_int_wdata_T & mem_ctrl_fp) & mem_ctrl_wxd; // @[RocketCore.scala 596:40]
  wire [2:0] _T_100 = _T_92 ? 3'h7 : 3'h5; // @[Mux.scala 47:69]
  wire [3:0] _T_101 = _T_90 ? 4'hd : {{1'd0}, _T_100}; // @[Mux.scala 47:69]
  wire [3:0] _T_102 = _T_88 ? 4'hf : _T_101; // @[Mux.scala 47:69]
  wire [3:0] _T_103 = _T_86 ? 4'h4 : _T_102; // @[Mux.scala 47:69]
  wire [3:0] _T_104 = _T_84 ? 4'h6 : _T_103; // @[Mux.scala 47:69]
  wire [63:0] wb_cause = wb_reg_xcpt ? wb_reg_cause : {{60'd0}, _T_104}; // @[Mux.scala 47:69]
  wire  _T_105 = wb_cause == 64'h6; // @[RocketCore.scala 974:38]
  wire  _T_107 = wb_cause == 64'h4; // @[RocketCore.scala 974:38]
  wire  _T_109 = wb_cause == 64'h7; // @[RocketCore.scala 974:38]
  wire  _T_111 = wb_cause == 64'h5; // @[RocketCore.scala 974:38]
  wire  _T_113 = wb_cause == 64'hf; // @[RocketCore.scala 974:38]
  wire  _T_115 = wb_cause == 64'hd; // @[RocketCore.scala 974:38]
  wire [15:0] csr_io_inst_0_right = &(wb_reg_raw_inst[1:0]) ? wb_reg_inst[31:16] : 16'h0; // @[RocketCore.scala 683:50]
  wire [15:0] csr_io_inst_0_left = wb_reg_raw_inst[15:0]; // @[RocketCore.scala 683:119]
  wire  _tval_valid_T = wb_cause == 64'h2; // @[package.scala 15:47]
  wire  _tval_valid_T_1 = wb_cause == 64'h3; // @[package.scala 15:47]
  wire  _tval_valid_T_6 = wb_cause == 64'h1; // @[package.scala 15:47]
  wire  _tval_valid_T_9 = wb_cause == 64'hc; // @[package.scala 15:47]
  wire  _tval_valid_T_18 = ((((((((_tval_valid_T | _tval_valid_T_1) | _T_107) | _T_105) | _T_111) | _T_109) |
    _tval_valid_T_6) | _T_115) | _T_113) | _tval_valid_T_9; // @[package.scala 64:59]
  wire  tval_valid = wb_xcpt & _tval_valid_T_18; // @[RocketCore.scala 692:28]
  wire [63:0] _csr_io_tval_a_T = wb_reg_wdata; // @[RocketCore.scala 984:16]
  wire [24:0] a_1 = _csr_io_tval_a_T[63:39]; // @[RocketCore.scala 984:23]
  wire  msb_1 = ($signed(a_1) == 25'sh0) | ($signed(a_1) == -25'sh1) ? wb_reg_wdata[39] : ~(wb_reg_wdata[38]); // @[RocketCore.scala 985:18]
  wire [38:0] csr_io_tval_left = wb_reg_wdata[38:0]; // @[RocketCore.scala 986:16]
  wire [39:0] _csr_io_tval_T = {msb_1,csr_io_tval_left}; // @[Cat.scala 29:58]
  wire [2:0] _csr_io_rw_cmd_T = wb_reg_valid ? 3'h0 : 3'h4; // @[CSR.scala 131:15]
  wire [2:0] _csr_io_rw_cmd_T_1 = ~_csr_io_rw_cmd_T; // @[CSR.scala 131:11]
  wire [31:0] _T_129 = 32'h1 << ll_waddr; // @[RocketCore.scala 1000:62]
  wire [31:0] _T_130 = ll_wen ? _T_129 : 32'h0; // @[RocketCore.scala 1000:49]
  wire [31:0] _T_131 = ~_T_130; // @[RocketCore.scala 992:64]
  wire [31:0] _T_132 = _next & _T_131; // @[RocketCore.scala 992:62]
  wire  _T_134 = wb_set_sboard & wb_wen; // @[RocketCore.scala 726:28]
  wire [31:0] _T_135 = 32'h1 << wb_waddr; // @[RocketCore.scala 1000:62]
  wire [31:0] _T_136 = _T_134 ? _T_135 : 32'h0; // @[RocketCore.scala 1000:49]
  wire [31:0] _T_137 = _T_132 | _T_136; // @[RocketCore.scala 991:60]
  wire  _T_138 = ll_wen | _T_134; // @[RocketCore.scala 1003:17]
  wire  _id_stall_fpu_T_2 = ((wb_dcache_miss & wb_ctrl_wfd) | io_fpu_sboard_set) & wb_valid; // @[RocketCore.scala 751:72]
  wire [31:0] _id_stall_fpu_T_4 = _id_stall_fpu_T_2 ? _T_135 : 32'h0; // @[RocketCore.scala 1000:49]
  wire [31:0] _id_stall_fpu_T_5 = id_stall_fpu__next | _id_stall_fpu_T_4; // @[RocketCore.scala 991:60]
  wire  _id_stall_fpu_T_7 = dmem_resp_replay & (io_dmem_resp_bits_tag[0]); // @[RocketCore.scala 752:38]
  wire [31:0] _id_stall_fpu_T_8 = 32'h1 << dmem_resp_waddr; // @[RocketCore.scala 1000:62]
  wire [31:0] _id_stall_fpu_T_9 = _id_stall_fpu_T_7 ? _id_stall_fpu_T_8 : 32'h0; // @[RocketCore.scala 1000:49]
  wire [31:0] _id_stall_fpu_T_10 = ~_id_stall_fpu_T_9; // @[RocketCore.scala 992:64]
  wire [31:0] _id_stall_fpu_T_11 = _id_stall_fpu_T_5 & _id_stall_fpu_T_10; // @[RocketCore.scala 992:62]
  wire  _id_stall_fpu_T_12 = _id_stall_fpu_T_2 | _id_stall_fpu_T_7; // @[RocketCore.scala 1003:17]
  wire [31:0] _id_stall_fpu_T_13 = 32'h1 << io_fpu_sboard_clra; // @[RocketCore.scala 1000:62]
  wire [31:0] _id_stall_fpu_T_14 = io_fpu_sboard_clr ? _id_stall_fpu_T_13 : 32'h0; // @[RocketCore.scala 1000:49]
  wire [31:0] _id_stall_fpu_T_15 = ~_id_stall_fpu_T_14; // @[RocketCore.scala 992:64]
  wire [31:0] _id_stall_fpu_T_16 = _id_stall_fpu_T_11 & _id_stall_fpu_T_15; // @[RocketCore.scala 992:62]
  wire  _id_stall_fpu_T_17 = (_id_stall_fpu_T_2 | _id_stall_fpu_T_7) | io_fpu_sboard_clr; // @[RocketCore.scala 1003:17]
  wire  _io_imem_req_bits_pc_T = wb_xcpt | csr_io_eret; // @[RocketCore.scala 785:17]
  wire [39:0] _io_imem_req_bits_pc_T_1 = replay_wb_common ? wb_reg_pc : mem_npc; // @[RocketCore.scala 786:8]
  wire  _io_imem_btb_update_bits_cfiType_T = mem_ctrl_jal | mem_ctrl_jalr; // @[RocketCore.scala 805:23]
  wire  _io_imem_btb_update_bits_cfiType_T_2 = (mem_ctrl_jal | mem_ctrl_jalr) & (mem_waddr[0]); // @[RocketCore.scala 805:41]
  wire [4:0] _io_imem_btb_update_bits_cfiType_T_5 = (mem_reg_inst[19:15]) & 5'h1b; // @[RocketCore.scala 806:62]
  wire  _io_imem_btb_update_bits_cfiType_T_7 = mem_ctrl_jalr & (5'h1 == _io_imem_btb_update_bits_cfiType_T_5); // @[RocketCore.scala 806:23]
  wire [1:0] _io_imem_btb_update_bits_cfiType_T_10 = _io_imem_btb_update_bits_cfiType_T_7 ? 2'h3 : {{1'd0},
    _io_imem_btb_update_bits_cfiType_T}; // @[RocketCore.scala 806:8]
  wire [1:0] _io_imem_btb_update_bits_br_pc_T = mem_reg_rvc ? 2'h0 : 2'h2; // @[RocketCore.scala 810:74]
  wire [39:0] _GEN_250 = {{38'd0}, _io_imem_btb_update_bits_br_pc_T}; // @[RocketCore.scala 810:69]
  wire [39:0] _io_imem_btb_update_bits_br_pc_T_2 = mem_reg_pc + _GEN_250; // @[RocketCore.scala 810:69]
  wire [38:0] _io_imem_btb_update_bits_pc_T = ~io_imem_btb_update_bits_br_pc; // @[RocketCore.scala 811:35]
  wire [38:0] _io_imem_btb_update_bits_pc_T_1 = _io_imem_btb_update_bits_pc_T | 39'h3; // @[RocketCore.scala 811:66]
  wire [5:0] ex_dcache_tag = {ex_waddr,ex_ctrl_fp}; // @[Cat.scala 29:58]
  wire [24:0] a_2 = _ex_op1_T[63:39]; // @[RocketCore.scala 984:23]
  wire  msb_2 = ($signed(a_2) == 25'sh0) | ($signed(a_2) == -25'sh1) ? alu_io_adder_out[39] : ~(alu_io_adder_out[38]); // @[RocketCore.scala 985:18]
  wire [38:0] io_dmem_req_bits_addr_left = alu_io_adder_out[38:0]; // @[RocketCore.scala 986:16]
  wire  unpause = (((csr_io_time[4:0]) == 5'h0) | io_dmem_perf_release) | take_pc_mem_wb; // @[RocketCore.scala 856:92]
  wire  coreMonitorBundle_valid = csr_io_trace_0_valid & (~csr_io_trace_0_exception); // @[RocketCore.scala 884:52]
  wire [39:0] coreMonitorBundle_pc_left = csr_io_trace_0_iaddr; // @[RocketCore.scala 885:48]
  wire [23:0] coreMonitorBundle_pc_right = coreMonitorBundle_pc_left[39] ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12]
  wire [63:0] coreMonitorBundle_pc = {coreMonitorBundle_pc_right,coreMonitorBundle_pc_left}; // @[Cat.scala 29:58]
  wire  coreMonitorBundle_wrenx = wb_wen & (~wb_set_sboard); // @[RocketCore.scala 886:37]
  reg [63:0] coreMonitorBundle_rd0val_x20; // @[RocketCore.scala 891:43]
  reg [63:0] coreMonitorBundle_rd0val_REG; // @[RocketCore.scala 891:34]
  reg [63:0] coreMonitorBundle_rd1val_x26; // @[RocketCore.scala 893:43]
  reg [63:0] coreMonitorBundle_rd1val_REG; // @[RocketCore.scala 893:34]
  wire  _T_139 = wb_ctrl_wxd | wb_ctrl_wfd; // @[RocketCore.scala 929:26]
  wire [4:0] _T_140 = _T_139 ? wb_waddr : 5'h0; // @[RocketCore.scala 929:13]
  wire [63:0] _T_141 = coreMonitorBundle_wrenx ? rf_wdata : 64'h0; // @[RocketCore.scala 930:13]
  wire  _T_142 = wb_ctrl_rxs1 | wb_ctrl_rfs1; // @[RocketCore.scala 932:27]
  wire [4:0] _T_143 = _T_142 ? wb_reg_inst[19:15] : 5'h0; // @[RocketCore.scala 932:13]
  wire [63:0] _T_145 = _T_142 ? coreMonitorBundle_rd0val_REG : 64'h0; // @[RocketCore.scala 933:13]
  wire  _T_146 = wb_ctrl_rxs2 | wb_ctrl_rfs2; // @[RocketCore.scala 934:27]
  wire [4:0] _T_147 = _T_146 ? wb_reg_inst[24:20] : 5'h0; // @[RocketCore.scala 934:13]
  wire [63:0] _T_149 = _T_146 ? coreMonitorBundle_rd1val_REG : 64'h0; // @[RocketCore.scala 935:13]
  wire [31:0] coreMonitorBundle_inst = csr_io_trace_0_insn; // @[RocketCore.scala 878:31 RocketCore.scala 894:26]
  IBuf ibuf ( // @[RocketCore.scala 250:20]
    .clock(ibuf_clock),
    .reset(ibuf_reset),
    .io_imem_ready(ibuf_io_imem_ready),
    .io_imem_valid(ibuf_io_imem_valid),
    .io_imem_bits_btb_taken(ibuf_io_imem_bits_btb_taken),
    .io_imem_bits_btb_bridx(ibuf_io_imem_bits_btb_bridx),
    .io_imem_bits_btb_entry(ibuf_io_imem_bits_btb_entry),
    .io_imem_bits_btb_bht_history(ibuf_io_imem_bits_btb_bht_history),
    .io_imem_bits_pc(ibuf_io_imem_bits_pc),
    .io_imem_bits_data(ibuf_io_imem_bits_data),
    .io_imem_bits_xcpt_pf_inst(ibuf_io_imem_bits_xcpt_pf_inst),
    .io_imem_bits_xcpt_ae_inst(ibuf_io_imem_bits_xcpt_ae_inst),
    .io_imem_bits_replay(ibuf_io_imem_bits_replay),
    .io_kill(ibuf_io_kill),
    .io_pc(ibuf_io_pc),
    .io_btb_resp_entry(ibuf_io_btb_resp_entry),
    .io_btb_resp_bht_history(ibuf_io_btb_resp_bht_history),
    .io_inst_0_ready(ibuf_io_inst_0_ready),
    .io_inst_0_valid(ibuf_io_inst_0_valid),
    .io_inst_0_bits_xcpt0_pf_inst(ibuf_io_inst_0_bits_xcpt0_pf_inst),
    .io_inst_0_bits_xcpt0_ae_inst(ibuf_io_inst_0_bits_xcpt0_ae_inst),
    .io_inst_0_bits_xcpt1_pf_inst(ibuf_io_inst_0_bits_xcpt1_pf_inst),
    .io_inst_0_bits_xcpt1_ae_inst(ibuf_io_inst_0_bits_xcpt1_ae_inst),
    .io_inst_0_bits_replay(ibuf_io_inst_0_bits_replay),
    .io_inst_0_bits_rvc(ibuf_io_inst_0_bits_rvc),
    .io_inst_0_bits_inst_bits(ibuf_io_inst_0_bits_inst_bits),
    .io_inst_0_bits_inst_rd(ibuf_io_inst_0_bits_inst_rd),
    .io_inst_0_bits_inst_rs1(ibuf_io_inst_0_bits_inst_rs1),
    .io_inst_0_bits_inst_rs2(ibuf_io_inst_0_bits_inst_rs2),
    .io_inst_0_bits_inst_rs3(ibuf_io_inst_0_bits_inst_rs3),
    .io_inst_0_bits_raw(ibuf_io_inst_0_bits_raw)
  );
  CSRFile csr ( // @[RocketCore.scala 278:19]
    .clock(csr_clock),
    .reset(csr_reset),
    .io_ungated_clock(csr_io_ungated_clock),
    .io_interrupts_debug(csr_io_interrupts_debug),
    .io_interrupts_mtip(csr_io_interrupts_mtip),
    .io_interrupts_msip(csr_io_interrupts_msip),
    .io_interrupts_meip(csr_io_interrupts_meip),
    .io_interrupts_seip(csr_io_interrupts_seip),
    .io_hartid(csr_io_hartid),
    .io_rw_addr(csr_io_rw_addr),
    .io_rw_cmd(csr_io_rw_cmd),
    .io_rw_rdata(csr_io_rw_rdata),
    .io_rw_wdata(csr_io_rw_wdata),
    .io_decode_0_csr(csr_io_decode_0_csr),
    .io_decode_0_fp_illegal(csr_io_decode_0_fp_illegal),
    .io_decode_0_fp_csr(csr_io_decode_0_fp_csr),
    .io_decode_0_read_illegal(csr_io_decode_0_read_illegal),
    .io_decode_0_write_illegal(csr_io_decode_0_write_illegal),
    .io_decode_0_write_flush(csr_io_decode_0_write_flush),
    .io_decode_0_system_illegal(csr_io_decode_0_system_illegal),
    .io_csr_stall(csr_io_csr_stall),
    .io_eret(csr_io_eret),
    .io_singleStep(csr_io_singleStep),
    .io_status_debug(csr_io_status_debug),
    .io_status_cease(csr_io_status_cease),
    .io_status_wfi(csr_io_status_wfi),
    .io_status_isa(csr_io_status_isa),
    .io_status_dprv(csr_io_status_dprv),
    .io_status_prv(csr_io_status_prv),
    .io_status_sd(csr_io_status_sd),
    .io_status_zero2(csr_io_status_zero2),
    .io_status_sxl(csr_io_status_sxl),
    .io_status_uxl(csr_io_status_uxl),
    .io_status_sd_rv32(csr_io_status_sd_rv32),
    .io_status_zero1(csr_io_status_zero1),
    .io_status_tsr(csr_io_status_tsr),
    .io_status_tw(csr_io_status_tw),
    .io_status_tvm(csr_io_status_tvm),
    .io_status_mxr(csr_io_status_mxr),
    .io_status_sum(csr_io_status_sum),
    .io_status_mprv(csr_io_status_mprv),
    .io_status_xs(csr_io_status_xs),
    .io_status_fs(csr_io_status_fs),
    .io_status_mpp(csr_io_status_mpp),
    .io_status_vs(csr_io_status_vs),
    .io_status_spp(csr_io_status_spp),
    .io_status_mpie(csr_io_status_mpie),
    .io_status_hpie(csr_io_status_hpie),
    .io_status_spie(csr_io_status_spie),
    .io_status_upie(csr_io_status_upie),
    .io_status_mie(csr_io_status_mie),
    .io_status_hie(csr_io_status_hie),
    .io_status_sie(csr_io_status_sie),
    .io_status_uie(csr_io_status_uie),
    .io_ptbr_mode(csr_io_ptbr_mode),
    .io_ptbr_ppn(csr_io_ptbr_ppn),
    .io_evec(csr_io_evec),
    .io_exception(csr_io_exception),
    .io_retire(csr_io_retire),
    .io_cause(csr_io_cause),
    .io_pc(csr_io_pc),
    .io_tval(csr_io_tval),
    .io_time(csr_io_time),
    .io_fcsr_rm(csr_io_fcsr_rm),
    .io_fcsr_flags_valid(csr_io_fcsr_flags_valid),
    .io_fcsr_flags_bits(csr_io_fcsr_flags_bits),
    .io_interrupt(csr_io_interrupt),
    .io_interrupt_cause(csr_io_interrupt_cause),
    .io_bp_0_control_action(csr_io_bp_0_control_action),
    .io_bp_0_control_tmatch(csr_io_bp_0_control_tmatch),
    .io_bp_0_control_m(csr_io_bp_0_control_m),
    .io_bp_0_control_s(csr_io_bp_0_control_s),
    .io_bp_0_control_u(csr_io_bp_0_control_u),
    .io_bp_0_control_x(csr_io_bp_0_control_x),
    .io_bp_0_control_w(csr_io_bp_0_control_w),
    .io_bp_0_control_r(csr_io_bp_0_control_r),
    .io_bp_0_address(csr_io_bp_0_address),
    .io_pmp_0_cfg_l(csr_io_pmp_0_cfg_l),
    .io_pmp_0_cfg_a(csr_io_pmp_0_cfg_a),
    .io_pmp_0_cfg_x(csr_io_pmp_0_cfg_x),
    .io_pmp_0_cfg_w(csr_io_pmp_0_cfg_w),
    .io_pmp_0_cfg_r(csr_io_pmp_0_cfg_r),
    .io_pmp_0_addr(csr_io_pmp_0_addr),
    .io_pmp_0_mask(csr_io_pmp_0_mask),
    .io_pmp_1_cfg_l(csr_io_pmp_1_cfg_l),
    .io_pmp_1_cfg_a(csr_io_pmp_1_cfg_a),
    .io_pmp_1_cfg_x(csr_io_pmp_1_cfg_x),
    .io_pmp_1_cfg_w(csr_io_pmp_1_cfg_w),
    .io_pmp_1_cfg_r(csr_io_pmp_1_cfg_r),
    .io_pmp_1_addr(csr_io_pmp_1_addr),
    .io_pmp_1_mask(csr_io_pmp_1_mask),
    .io_pmp_2_cfg_l(csr_io_pmp_2_cfg_l),
    .io_pmp_2_cfg_a(csr_io_pmp_2_cfg_a),
    .io_pmp_2_cfg_x(csr_io_pmp_2_cfg_x),
    .io_pmp_2_cfg_w(csr_io_pmp_2_cfg_w),
    .io_pmp_2_cfg_r(csr_io_pmp_2_cfg_r),
    .io_pmp_2_addr(csr_io_pmp_2_addr),
    .io_pmp_2_mask(csr_io_pmp_2_mask),
    .io_pmp_3_cfg_l(csr_io_pmp_3_cfg_l),
    .io_pmp_3_cfg_a(csr_io_pmp_3_cfg_a),
    .io_pmp_3_cfg_x(csr_io_pmp_3_cfg_x),
    .io_pmp_3_cfg_w(csr_io_pmp_3_cfg_w),
    .io_pmp_3_cfg_r(csr_io_pmp_3_cfg_r),
    .io_pmp_3_addr(csr_io_pmp_3_addr),
    .io_pmp_3_mask(csr_io_pmp_3_mask),
    .io_pmp_4_cfg_l(csr_io_pmp_4_cfg_l),
    .io_pmp_4_cfg_a(csr_io_pmp_4_cfg_a),
    .io_pmp_4_cfg_x(csr_io_pmp_4_cfg_x),
    .io_pmp_4_cfg_w(csr_io_pmp_4_cfg_w),
    .io_pmp_4_cfg_r(csr_io_pmp_4_cfg_r),
    .io_pmp_4_addr(csr_io_pmp_4_addr),
    .io_pmp_4_mask(csr_io_pmp_4_mask),
    .io_pmp_5_cfg_l(csr_io_pmp_5_cfg_l),
    .io_pmp_5_cfg_a(csr_io_pmp_5_cfg_a),
    .io_pmp_5_cfg_x(csr_io_pmp_5_cfg_x),
    .io_pmp_5_cfg_w(csr_io_pmp_5_cfg_w),
    .io_pmp_5_cfg_r(csr_io_pmp_5_cfg_r),
    .io_pmp_5_addr(csr_io_pmp_5_addr),
    .io_pmp_5_mask(csr_io_pmp_5_mask),
    .io_pmp_6_cfg_l(csr_io_pmp_6_cfg_l),
    .io_pmp_6_cfg_a(csr_io_pmp_6_cfg_a),
    .io_pmp_6_cfg_x(csr_io_pmp_6_cfg_x),
    .io_pmp_6_cfg_w(csr_io_pmp_6_cfg_w),
    .io_pmp_6_cfg_r(csr_io_pmp_6_cfg_r),
    .io_pmp_6_addr(csr_io_pmp_6_addr),
    .io_pmp_6_mask(csr_io_pmp_6_mask),
    .io_pmp_7_cfg_l(csr_io_pmp_7_cfg_l),
    .io_pmp_7_cfg_a(csr_io_pmp_7_cfg_a),
    .io_pmp_7_cfg_x(csr_io_pmp_7_cfg_x),
    .io_pmp_7_cfg_w(csr_io_pmp_7_cfg_w),
    .io_pmp_7_cfg_r(csr_io_pmp_7_cfg_r),
    .io_pmp_7_addr(csr_io_pmp_7_addr),
    .io_pmp_7_mask(csr_io_pmp_7_mask),
    .io_inst_0(csr_io_inst_0),
    .io_trace_0_valid(csr_io_trace_0_valid),
    .io_trace_0_iaddr(csr_io_trace_0_iaddr),
    .io_trace_0_insn(csr_io_trace_0_insn),
    .io_trace_0_exception(csr_io_trace_0_exception),
    .io_customCSRs_0_value(csr_io_customCSRs_0_value)
  );
  BreakpointUnit bpu ( // @[RocketCore.scala 319:19]
    .io_status_debug(bpu_io_status_debug),
    .io_status_prv(bpu_io_status_prv),
    .io_bp_0_control_action(bpu_io_bp_0_control_action),
    .io_bp_0_control_tmatch(bpu_io_bp_0_control_tmatch),
    .io_bp_0_control_m(bpu_io_bp_0_control_m),
    .io_bp_0_control_s(bpu_io_bp_0_control_s),
    .io_bp_0_control_u(bpu_io_bp_0_control_u),
    .io_bp_0_control_x(bpu_io_bp_0_control_x),
    .io_bp_0_control_w(bpu_io_bp_0_control_w),
    .io_bp_0_control_r(bpu_io_bp_0_control_r),
    .io_bp_0_address(bpu_io_bp_0_address),
    .io_pc(bpu_io_pc),
    .io_ea(bpu_io_ea),
    .io_xcpt_if(bpu_io_xcpt_if),
    .io_xcpt_ld(bpu_io_xcpt_ld),
    .io_xcpt_st(bpu_io_xcpt_st),
    .io_debug_if(bpu_io_debug_if),
    .io_debug_ld(bpu_io_debug_ld),
    .io_debug_st(bpu_io_debug_st)
  );
  ALU alu ( // @[RocketCore.scala 381:19]
    .io_dw(alu_io_dw),
    .io_fn(alu_io_fn),
    .io_in2(alu_io_in2),
    .io_in1(alu_io_in1),
    .io_out(alu_io_out),
    .io_adder_out(alu_io_adder_out),
    .io_cmp_out(alu_io_cmp_out)
  );
  MulDiv div ( // @[RocketCore.scala 405:19]
    .clock(div_clock),
    .reset(div_reset),
    .io_req_ready(div_io_req_ready),
    .io_req_valid(div_io_req_valid),
    .io_req_bits_fn(div_io_req_bits_fn),
    .io_req_bits_dw(div_io_req_bits_dw),
    .io_req_bits_in1(div_io_req_bits_in1),
    .io_req_bits_in2(div_io_req_bits_in2),
    .io_req_bits_tag(div_io_req_bits_tag),
    .io_kill(div_io_kill),
    .io_resp_ready(div_io_resp_ready),
    .io_resp_valid(div_io_resp_valid),
    .io_resp_bits_data(div_io_resp_bits_data),
    .io_resp_bits_tag(div_io_resp_bits_tag)
  );
  PlusArgTimeout PlusArgTimeout ( // @[PlusArg.scala 89:11]
    .clock(PlusArgTimeout_clock),
    .reset(PlusArgTimeout_reset),
    .io_count(PlusArgTimeout_io_count)
  );
  assign rf_id_rs_id_rs_0_MPORT_addr = ~id_raddr1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign rf_id_rs_id_rs_0_MPORT_data = rf[rf_id_rs_id_rs_0_MPORT_addr]; // @[RocketCore.scala 1010:15]
  `else
  assign rf_id_rs_id_rs_0_MPORT_data = rf_id_rs_id_rs_0_MPORT_addr >= 5'h1f ? _RAND_1[63:0] :
    rf[rf_id_rs_id_rs_0_MPORT_addr]; // @[RocketCore.scala 1010:15]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign rf_id_rs_id_rs_1_MPORT_addr = ~id_raddr2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign rf_id_rs_id_rs_1_MPORT_data = rf[rf_id_rs_id_rs_1_MPORT_addr]; // @[RocketCore.scala 1010:15]
  `else
  assign rf_id_rs_id_rs_1_MPORT_data = rf_id_rs_id_rs_1_MPORT_addr >= 5'h1f ? _RAND_2[63:0] :
    rf[rf_id_rs_id_rs_1_MPORT_addr]; // @[RocketCore.scala 1010:15]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign rf_MPORT_data = _rf_wdata_T ? io_dmem_resp_bits_data : _rf_wdata_T_5;
  assign rf_MPORT_addr = ~rf_waddr;
  assign rf_MPORT_mask = 1'h1;
  assign rf_MPORT_en = rf_wen & _T_118;
  assign io_imem_might_request = imem_might_request_reg; // @[RocketCore.scala 789:25]
  assign io_imem_req_valid = take_pc_wb | take_pc_mem; // @[RocketCore.scala 246:35]
  assign io_imem_req_bits_pc = _io_imem_req_bits_pc_T ? csr_io_evec : _io_imem_req_bits_pc_T_1; // @[RocketCore.scala 785:8]
  assign io_imem_req_bits_speculative = ~take_pc_wb; // @[RocketCore.scala 783:35]
  assign io_imem_sfence_valid = wb_reg_valid & wb_reg_sfence; // @[RocketCore.scala 793:40]
  assign io_imem_sfence_bits_rs1 = wb_reg_mem_size[0]; // @[RocketCore.scala 794:45]
  assign io_imem_sfence_bits_rs2 = wb_reg_mem_size[1]; // @[RocketCore.scala 795:45]
  assign io_imem_sfence_bits_addr = wb_reg_wdata[38:0]; // @[RocketCore.scala 796:28]
  assign io_imem_resp_ready = ibuf_io_imem_ready; // @[RocketCore.scala 254:16]
  assign io_imem_btb_update_valid = ((mem_reg_valid & _wb_reg_replay_T) & mem_wrong_npc) & ((~mem_cfi) | mem_cfi_taken); // @[RocketCore.scala 802:77]
  assign io_imem_btb_update_bits_prediction_entry = mem_reg_btb_resp_entry; // @[RocketCore.scala 812:38]
  assign io_imem_btb_update_bits_pc = ~_io_imem_btb_update_bits_pc_T_1; // @[RocketCore.scala 811:33]
  assign io_imem_btb_update_bits_isValid = (mem_ctrl_branch | mem_ctrl_jalr) | mem_ctrl_jal; // @[RocketCore.scala 515:50]
  assign io_imem_btb_update_bits_br_pc = _io_imem_btb_update_bits_br_pc_T_2[38:0]; // @[RocketCore.scala 810:33]
  assign io_imem_btb_update_bits_cfiType = _io_imem_btb_update_bits_cfiType_T_2 ? 2'h2 :
    _io_imem_btb_update_bits_cfiType_T_10; // @[RocketCore.scala 805:8]
  assign io_imem_bht_update_valid = mem_reg_valid & _wb_reg_replay_T; // @[RocketCore.scala 814:45]
  assign io_imem_bht_update_bits_prediction_history = mem_reg_btb_resp_bht_history; // @[RocketCore.scala 819:38]
  assign io_imem_bht_update_bits_pc = io_imem_btb_update_bits_pc; // @[RocketCore.scala 815:30]
  assign io_imem_bht_update_bits_branch = mem_ctrl_branch; // @[RocketCore.scala 818:34]
  assign io_imem_bht_update_bits_taken = mem_br_taken; // @[RocketCore.scala 816:33]
  assign io_imem_bht_update_bits_mispredict = ex_pc_valid ? mem_npc != ex_reg_pc : _mem_wrong_npc_T_3; // @[RocketCore.scala 511:8]
  assign io_imem_flush_icache = (wb_reg_valid & wb_ctrl_fence_i) & (~io_dmem_s2_nack); // @[RocketCore.scala 788:59]
  assign io_dmem_req_valid = ex_reg_valid & ex_ctrl_mem; // @[RocketCore.scala 832:41]
  assign io_dmem_req_bits_addr = {msb_2,io_dmem_req_bits_addr_left}; // @[Cat.scala 29:58]
  assign io_dmem_req_bits_tag = {{1'd0}, ex_dcache_tag}; // @[Cat.scala 29:58]
  assign io_dmem_req_bits_cmd = ex_ctrl_mem_cmd; // @[RocketCore.scala 836:25]
  assign io_dmem_req_bits_size = ex_reg_mem_size; // @[RocketCore.scala 837:25]
  assign io_dmem_req_bits_signed = ~(ex_reg_inst[14]); // @[RocketCore.scala 838:30]
  assign io_dmem_req_bits_dprv = csr_io_status_dprv; // @[RocketCore.scala 841:25]
  assign io_dmem_s1_kill = (killm_common | mem_ldst_xcpt) | fpu_kill_mem; // @[RocketCore.scala 843:52]
  assign io_dmem_s1_data_data = mem_ctrl_fp ? io_fpu_store_data : mem_reg_rs2; // @[RocketCore.scala 842:63]
  assign io_ptw_ptbr_mode = csr_io_ptbr_mode; // @[RocketCore.scala 697:15]
  assign io_ptw_ptbr_ppn = csr_io_ptbr_ppn; // @[RocketCore.scala 697:15]
  assign io_ptw_sfence_valid = io_imem_sfence_valid; // @[RocketCore.scala 798:17]
  assign io_ptw_sfence_bits_rs1 = io_imem_sfence_bits_rs1; // @[RocketCore.scala 798:17]
  assign io_ptw_status_debug = csr_io_status_debug; // @[RocketCore.scala 699:17]
  assign io_ptw_status_dprv = csr_io_status_dprv; // @[RocketCore.scala 699:17]
  assign io_ptw_status_prv = csr_io_status_prv; // @[RocketCore.scala 699:17]
  assign io_ptw_status_mxr = csr_io_status_mxr; // @[RocketCore.scala 699:17]
  assign io_ptw_status_sum = csr_io_status_sum; // @[RocketCore.scala 699:17]
  assign io_ptw_pmp_0_cfg_l = csr_io_pmp_0_cfg_l; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_0_cfg_a = csr_io_pmp_0_cfg_a; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_0_cfg_x = csr_io_pmp_0_cfg_x; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_0_cfg_w = csr_io_pmp_0_cfg_w; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_0_cfg_r = csr_io_pmp_0_cfg_r; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_0_addr = csr_io_pmp_0_addr; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_0_mask = csr_io_pmp_0_mask; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_1_cfg_l = csr_io_pmp_1_cfg_l; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_1_cfg_a = csr_io_pmp_1_cfg_a; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_1_cfg_x = csr_io_pmp_1_cfg_x; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_1_cfg_w = csr_io_pmp_1_cfg_w; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_1_cfg_r = csr_io_pmp_1_cfg_r; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_1_addr = csr_io_pmp_1_addr; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_1_mask = csr_io_pmp_1_mask; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_2_cfg_l = csr_io_pmp_2_cfg_l; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_2_cfg_a = csr_io_pmp_2_cfg_a; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_2_cfg_x = csr_io_pmp_2_cfg_x; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_2_cfg_w = csr_io_pmp_2_cfg_w; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_2_cfg_r = csr_io_pmp_2_cfg_r; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_2_addr = csr_io_pmp_2_addr; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_2_mask = csr_io_pmp_2_mask; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_3_cfg_l = csr_io_pmp_3_cfg_l; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_3_cfg_a = csr_io_pmp_3_cfg_a; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_3_cfg_x = csr_io_pmp_3_cfg_x; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_3_cfg_w = csr_io_pmp_3_cfg_w; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_3_cfg_r = csr_io_pmp_3_cfg_r; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_3_addr = csr_io_pmp_3_addr; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_3_mask = csr_io_pmp_3_mask; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_4_cfg_l = csr_io_pmp_4_cfg_l; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_4_cfg_a = csr_io_pmp_4_cfg_a; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_4_cfg_x = csr_io_pmp_4_cfg_x; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_4_cfg_w = csr_io_pmp_4_cfg_w; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_4_cfg_r = csr_io_pmp_4_cfg_r; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_4_addr = csr_io_pmp_4_addr; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_4_mask = csr_io_pmp_4_mask; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_5_cfg_l = csr_io_pmp_5_cfg_l; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_5_cfg_a = csr_io_pmp_5_cfg_a; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_5_cfg_x = csr_io_pmp_5_cfg_x; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_5_cfg_w = csr_io_pmp_5_cfg_w; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_5_cfg_r = csr_io_pmp_5_cfg_r; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_5_addr = csr_io_pmp_5_addr; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_5_mask = csr_io_pmp_5_mask; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_6_cfg_l = csr_io_pmp_6_cfg_l; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_6_cfg_a = csr_io_pmp_6_cfg_a; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_6_cfg_x = csr_io_pmp_6_cfg_x; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_6_cfg_w = csr_io_pmp_6_cfg_w; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_6_cfg_r = csr_io_pmp_6_cfg_r; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_6_addr = csr_io_pmp_6_addr; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_6_mask = csr_io_pmp_6_mask; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_7_cfg_l = csr_io_pmp_7_cfg_l; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_7_cfg_a = csr_io_pmp_7_cfg_a; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_7_cfg_x = csr_io_pmp_7_cfg_x; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_7_cfg_w = csr_io_pmp_7_cfg_w; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_7_cfg_r = csr_io_pmp_7_cfg_r; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_7_addr = csr_io_pmp_7_addr; // @[RocketCore.scala 700:14]
  assign io_ptw_pmp_7_mask = csr_io_pmp_7_mask; // @[RocketCore.scala 700:14]
  assign io_ptw_customCSRs_csrs_0_value = csr_io_customCSRs_0_value; // @[RocketCore.scala 698:79]
  assign io_fpu_inst = ibuf_io_inst_0_bits_inst_bits; // @[RocketCore.scala 824:15]
  assign io_fpu_fromint_data = ex_reg_rs_bypass_0 ? _ex_rs_T_5 : _ex_rs_T_6; // @[RocketCore.scala 371:14]
  assign io_fpu_fcsr_rm = csr_io_fcsr_rm; // @[RocketCore.scala 686:18]
  assign io_fpu_dmem_resp_val = dmem_resp_valid & (io_dmem_resp_bits_tag[0]); // @[RocketCore.scala 826:43]
  assign io_fpu_dmem_resp_type = {{1'd0}, io_dmem_resp_bits_size}; // @[RocketCore.scala 828:25]
  assign io_fpu_dmem_resp_tag = io_dmem_resp_bits_tag[5:1]; // @[RocketCore.scala 641:46]
  assign io_fpu_dmem_resp_data = io_dmem_resp_bits_data_word_bypass; // @[RocketCore.scala 827:25]
  assign io_fpu_valid = _ex_reg_valid_T & id_ctrl_decoder_1; // @[RocketCore.scala 821:31]
  assign io_fpu_killx = (take_pc_mem_wb | replay_ex) | (~ex_reg_valid); // @[RocketCore.scala 492:48]
  assign io_fpu_killm = ((dcache_kill_mem | take_pc_wb) | mem_reg_xcpt) | (~mem_reg_valid); // @[RocketCore.scala 583:68]
  assign ibuf_clock = clock;
  assign ibuf_reset = reset;
  assign ibuf_io_imem_valid = io_imem_resp_valid; // @[RocketCore.scala 254:16]
  assign ibuf_io_imem_bits_btb_taken = io_imem_resp_bits_btb_taken; // @[RocketCore.scala 254:16]
  assign ibuf_io_imem_bits_btb_bridx = io_imem_resp_bits_btb_bridx; // @[RocketCore.scala 254:16]
  assign ibuf_io_imem_bits_btb_entry = io_imem_resp_bits_btb_entry; // @[RocketCore.scala 254:16]
  assign ibuf_io_imem_bits_btb_bht_history = io_imem_resp_bits_btb_bht_history; // @[RocketCore.scala 254:16]
  assign ibuf_io_imem_bits_pc = io_imem_resp_bits_pc; // @[RocketCore.scala 254:16]
  assign ibuf_io_imem_bits_data = io_imem_resp_bits_data; // @[RocketCore.scala 254:16]
  assign ibuf_io_imem_bits_xcpt_pf_inst = io_imem_resp_bits_xcpt_pf_inst; // @[RocketCore.scala 254:16]
  assign ibuf_io_imem_bits_xcpt_ae_inst = io_imem_resp_bits_xcpt_ae_inst; // @[RocketCore.scala 254:16]
  assign ibuf_io_imem_bits_replay = io_imem_resp_bits_replay; // @[RocketCore.scala 254:16]
  assign ibuf_io_kill = take_pc_wb | take_pc_mem; // @[RocketCore.scala 246:35]
  assign ibuf_io_inst_0_ready = ~ctrl_stalld; // @[RocketCore.scala 800:28]
  assign csr_clock = clock;
  assign csr_reset = reset;
  assign csr_io_ungated_clock = clock; // @[RocketCore.scala 678:24]
  assign csr_io_interrupts_debug = io_interrupts_debug; // @[RocketCore.scala 684:21]
  assign csr_io_interrupts_mtip = io_interrupts_mtip; // @[RocketCore.scala 684:21]
  assign csr_io_interrupts_msip = io_interrupts_msip; // @[RocketCore.scala 684:21]
  assign csr_io_interrupts_meip = io_interrupts_meip; // @[RocketCore.scala 684:21]
  assign csr_io_interrupts_seip = io_interrupts_seip; // @[RocketCore.scala 684:21]
  assign csr_io_hartid = io_hartid; // @[RocketCore.scala 685:17]
  assign csr_io_rw_addr = wb_reg_inst[31:20]; // @[RocketCore.scala 701:32]
  assign csr_io_rw_cmd = wb_ctrl_csr & _csr_io_rw_cmd_T_1; // @[CSR.scala 131:9]
  assign csr_io_rw_wdata = wb_reg_wdata; // @[RocketCore.scala 703:19]
  assign csr_io_decode_0_csr = ibuf_io_inst_0_bits_raw[31:20]; // @[RocketCore.scala 679:41]
  assign csr_io_exception = (((((wb_reg_xcpt | _T_84) | _T_86) | _T_88) | _T_90) | _T_92) | _T_94; // @[RocketCore.scala 970:26]
  assign csr_io_retire = (wb_reg_valid & (~replay_wb_common)) & (~wb_xcpt); // @[RocketCore.scala 666:45]
  assign csr_io_cause = wb_reg_xcpt ? wb_reg_cause : {{60'd0}, _T_104}; // @[Mux.scala 47:69]
  assign csr_io_pc = wb_reg_pc; // @[RocketCore.scala 691:13]
  assign csr_io_tval = tval_valid ? _csr_io_tval_T : 40'h0; // @[RocketCore.scala 696:21]
  assign csr_io_fcsr_flags_valid = io_fpu_fcsr_flags_valid; // @[RocketCore.scala 687:21]
  assign csr_io_fcsr_flags_bits = io_fpu_fcsr_flags_bits; // @[RocketCore.scala 687:21]
  assign csr_io_inst_0 = {csr_io_inst_0_right,csr_io_inst_0_left}; // @[Cat.scala 29:58]
  assign bpu_io_status_debug = csr_io_status_debug; // @[RocketCore.scala 320:17]
  assign bpu_io_status_prv = csr_io_status_prv; // @[RocketCore.scala 320:17]
  assign bpu_io_bp_0_control_action = csr_io_bp_0_control_action; // @[RocketCore.scala 321:13]
  assign bpu_io_bp_0_control_tmatch = csr_io_bp_0_control_tmatch; // @[RocketCore.scala 321:13]
  assign bpu_io_bp_0_control_m = csr_io_bp_0_control_m; // @[RocketCore.scala 321:13]
  assign bpu_io_bp_0_control_s = csr_io_bp_0_control_s; // @[RocketCore.scala 321:13]
  assign bpu_io_bp_0_control_u = csr_io_bp_0_control_u; // @[RocketCore.scala 321:13]
  assign bpu_io_bp_0_control_x = csr_io_bp_0_control_x; // @[RocketCore.scala 321:13]
  assign bpu_io_bp_0_control_w = csr_io_bp_0_control_w; // @[RocketCore.scala 321:13]
  assign bpu_io_bp_0_control_r = csr_io_bp_0_control_r; // @[RocketCore.scala 321:13]
  assign bpu_io_bp_0_address = csr_io_bp_0_address; // @[RocketCore.scala 321:13]
  assign bpu_io_pc = ibuf_io_pc[38:0]; // @[RocketCore.scala 322:13]
  assign bpu_io_ea = mem_reg_wdata[38:0]; // @[RocketCore.scala 323:13]
  assign alu_io_dw = ex_ctrl_alu_dw; // @[RocketCore.scala 382:13]
  assign alu_io_fn = ex_ctrl_alu_fn; // @[RocketCore.scala 383:13]
  assign alu_io_in2 = 2'h1 == ex_ctrl_sel_alu2 ? $signed({{60{_ex_op2_T_1[3]}},_ex_op2_T_1}) : $signed(_ex_op2_T_5); // @[RocketCore.scala 384:24]
  assign alu_io_in1 = 2'h2 == ex_ctrl_sel_alu1 ? $signed({{24{_ex_op1_T_1[39]}},_ex_op1_T_1}) : $signed(_ex_op1_T_3); // @[RocketCore.scala 385:24]
  assign div_clock = clock;
  assign div_reset = reset;
  assign div_io_req_valid = ex_reg_valid & ex_ctrl_div; // @[RocketCore.scala 406:36]
  assign div_io_req_bits_fn = ex_ctrl_alu_fn; // @[RocketCore.scala 408:22]
  assign div_io_req_bits_dw = ex_ctrl_alu_dw; // @[RocketCore.scala 407:22]
  assign div_io_req_bits_in1 = ex_reg_rs_bypass_0 ? _ex_rs_T_5 : _ex_rs_T_6; // @[RocketCore.scala 371:14]
  assign div_io_req_bits_in2 = ex_reg_rs_bypass_1 ? _ex_rs_T_12 : _ex_rs_T_13; // @[RocketCore.scala 371:14]
  assign div_io_req_bits_tag = ex_reg_inst[11:7]; // @[RocketCore.scala 355:29]
  assign div_io_kill = killm_common & div_io_kill_REG; // @[RocketCore.scala 584:31]
  assign div_io_resp_ready = _T_117 ? 1'h0 : _ctrl_stalld_T_17; // @[RocketCore.scala 658:44 RocketCore.scala 659:23 RocketCore.scala 645:21]
  assign PlusArgTimeout_clock = clock;
  assign PlusArgTimeout_reset = reset;
  assign PlusArgTimeout_io_count = csr_io_time[31:0]; // @[PlusArg.scala 89:82]
  always @(posedge clock) begin
    if(rf_MPORT_en & rf_MPORT_mask) begin
      rf[rf_MPORT_addr] <= rf_MPORT_data; // @[RocketCore.scala 1010:15]
    end
    if (unpause) begin // @[RocketCore.scala 857:18]
      id_reg_pause <= 1'h0; // @[RocketCore.scala 857:33]
    end else if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      id_reg_pause <= _GEN_1;
    end
    imem_might_request_reg <= (ex_pc_valid | mem_pc_valid) | (io_ptw_customCSRs_csrs_0_value[1]); // @[RocketCore.scala 790:59]
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      ex_ctrl_fp <= id_ctrl_decoder_1; // @[RocketCore.scala 425:13]
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      ex_ctrl_branch <= id_ctrl_decoder_3; // @[RocketCore.scala 425:13]
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      ex_ctrl_jal <= id_ctrl_decoder_4; // @[RocketCore.scala 425:13]
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      ex_ctrl_jalr <= id_ctrl_decoder_5; // @[RocketCore.scala 425:13]
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      ex_ctrl_rxs2 <= id_ctrl_decoder_6; // @[RocketCore.scala 425:13]
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      ex_ctrl_rxs1 <= id_ctrl_decoder_7; // @[RocketCore.scala 425:13]
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      if (id_xcpt) begin // @[RocketCore.scala 432:20]
        if (_T_35) begin // @[RocketCore.scala 442:52]
          ex_ctrl_sel_alu2 <= 2'h0; // @[RocketCore.scala 444:26]
        end else if (_T_32) begin // @[RocketCore.scala 437:34]
          ex_ctrl_sel_alu2 <= 2'h1; // @[RocketCore.scala 439:26]
        end else begin
          ex_ctrl_sel_alu2 <= 2'h0; // @[RocketCore.scala 436:24]
        end
      end else begin
        ex_ctrl_sel_alu2 <= id_ctrl_decoder_9; // @[RocketCore.scala 425:13]
      end
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      if (id_xcpt) begin // @[RocketCore.scala 432:20]
        if (_T_35) begin // @[RocketCore.scala 442:52]
          ex_ctrl_sel_alu1 <= 2'h2; // @[RocketCore.scala 443:26]
        end else if (_T_32) begin // @[RocketCore.scala 437:34]
          ex_ctrl_sel_alu1 <= 2'h2; // @[RocketCore.scala 438:26]
        end else begin
          ex_ctrl_sel_alu1 <= 2'h1; // @[RocketCore.scala 435:24]
        end
      end else begin
        ex_ctrl_sel_alu1 <= id_ctrl_decoder_10; // @[RocketCore.scala 425:13]
      end
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      ex_ctrl_sel_imm <= id_ctrl_decoder_11; // @[RocketCore.scala 425:13]
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      ex_ctrl_alu_dw <= _GEN_9;
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      if (id_xcpt) begin // @[RocketCore.scala 432:20]
        ex_ctrl_alu_fn <= 4'h0; // @[RocketCore.scala 433:22]
      end else begin
        ex_ctrl_alu_fn <= id_ctrl_decoder_13; // @[RocketCore.scala 425:13]
      end
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      ex_ctrl_mem <= id_ctrl_decoder_14; // @[RocketCore.scala 425:13]
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      ex_ctrl_mem_cmd <= id_ctrl_decoder_15; // @[RocketCore.scala 425:13]
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      ex_ctrl_rfs1 <= id_ctrl_decoder_16; // @[RocketCore.scala 425:13]
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      ex_ctrl_rfs2 <= id_ctrl_decoder_17; // @[RocketCore.scala 425:13]
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      ex_ctrl_wfd <= id_ctrl_decoder_19; // @[RocketCore.scala 425:13]
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      ex_ctrl_div <= id_ctrl_decoder_21; // @[RocketCore.scala 425:13]
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      ex_ctrl_wxd <= id_ctrl_decoder_22; // @[RocketCore.scala 425:13]
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      if (id_csr_ren) begin // @[RocketCore.scala 282:19]
        ex_ctrl_csr <= 3'h2;
      end else begin
        ex_ctrl_csr <= id_ctrl_decoder_23;
      end
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      ex_ctrl_fence_i <= id_ctrl_decoder_24; // @[RocketCore.scala 425:13]
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_ctrl_fp <= ex_ctrl_fp; // @[RocketCore.scala 531:14]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_ctrl_branch <= ex_ctrl_branch; // @[RocketCore.scala 531:14]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_ctrl_jal <= ex_ctrl_jal; // @[RocketCore.scala 531:14]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_ctrl_jalr <= ex_ctrl_jalr; // @[RocketCore.scala 531:14]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_ctrl_rxs2 <= ex_ctrl_rxs2; // @[RocketCore.scala 531:14]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_ctrl_rxs1 <= ex_ctrl_rxs1; // @[RocketCore.scala 531:14]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_ctrl_mem <= ex_ctrl_mem; // @[RocketCore.scala 531:14]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_ctrl_rfs1 <= ex_ctrl_rfs1; // @[RocketCore.scala 531:14]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_ctrl_rfs2 <= ex_ctrl_rfs2; // @[RocketCore.scala 531:14]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_ctrl_wfd <= ex_ctrl_wfd; // @[RocketCore.scala 531:14]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_ctrl_div <= ex_ctrl_div; // @[RocketCore.scala 531:14]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_ctrl_wxd <= ex_ctrl_wxd; // @[RocketCore.scala 531:14]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_ctrl_csr <= ex_ctrl_csr; // @[RocketCore.scala 531:14]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_ctrl_fence_i <= _GEN_77;
      end
    end
    if (mem_pc_valid) begin // @[RocketCore.scala 592:23]
      wb_ctrl_rxs2 <= mem_ctrl_rxs2; // @[RocketCore.scala 593:13]
    end
    if (mem_pc_valid) begin // @[RocketCore.scala 592:23]
      wb_ctrl_rxs1 <= mem_ctrl_rxs1; // @[RocketCore.scala 593:13]
    end
    if (mem_pc_valid) begin // @[RocketCore.scala 592:23]
      wb_ctrl_mem <= mem_ctrl_mem; // @[RocketCore.scala 593:13]
    end
    if (mem_pc_valid) begin // @[RocketCore.scala 592:23]
      wb_ctrl_rfs1 <= mem_ctrl_rfs1; // @[RocketCore.scala 593:13]
    end
    if (mem_pc_valid) begin // @[RocketCore.scala 592:23]
      wb_ctrl_rfs2 <= mem_ctrl_rfs2; // @[RocketCore.scala 593:13]
    end
    if (mem_pc_valid) begin // @[RocketCore.scala 592:23]
      wb_ctrl_wfd <= mem_ctrl_wfd; // @[RocketCore.scala 593:13]
    end
    if (mem_pc_valid) begin // @[RocketCore.scala 592:23]
      wb_ctrl_div <= mem_ctrl_div; // @[RocketCore.scala 593:13]
    end
    if (mem_pc_valid) begin // @[RocketCore.scala 592:23]
      wb_ctrl_wxd <= mem_ctrl_wxd; // @[RocketCore.scala 593:13]
    end
    if (mem_pc_valid) begin // @[RocketCore.scala 592:23]
      wb_ctrl_csr <= mem_ctrl_csr; // @[RocketCore.scala 593:13]
    end
    if (mem_pc_valid) begin // @[RocketCore.scala 592:23]
      wb_ctrl_fence_i <= mem_ctrl_fence_i; // @[RocketCore.scala 593:13]
    end
    ex_reg_xcpt_interrupt <= _ex_reg_replay_T_1 & csr_io_interrupt; // @[RocketCore.scala 422:62]
    ex_reg_valid <= ~ctrl_killd; // @[RocketCore.scala 419:19]
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      if (id_xcpt) begin // @[RocketCore.scala 432:20]
        ex_reg_rvc <= _GEN_5;
      end else begin
        ex_reg_rvc <= ibuf_io_inst_0_bits_rvc; // @[RocketCore.scala 426:16]
      end
    end
    if (_T_45) begin // @[RocketCore.scala 476:73]
      ex_reg_btb_resp_entry <= ibuf_io_btb_resp_entry; // @[RocketCore.scala 481:21]
    end
    if (_T_45) begin // @[RocketCore.scala 476:73]
      ex_reg_btb_resp_bht_history <= ibuf_io_btb_resp_bht_history; // @[RocketCore.scala 481:21]
    end
    ex_reg_xcpt <= _ex_reg_valid_T & id_xcpt; // @[RocketCore.scala 421:30]
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      ex_reg_flush_pipe <= _ex_reg_flush_pipe_T; // @[RocketCore.scala 447:23]
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      ex_reg_load_use <= id_load_use; // @[RocketCore.scala 448:21]
    end
    if (_T_45) begin // @[RocketCore.scala 476:73]
      if (csr_io_interrupt) begin // @[Mux.scala 47:69]
        ex_reg_cause <= csr_io_interrupt_cause;
      end else begin
        ex_reg_cause <= {{60'd0}, _T_12};
      end
    end
    ex_reg_replay <= ((~take_pc_mem_wb) & ibuf_io_inst_0_valid) & ibuf_io_inst_0_bits_replay; // @[RocketCore.scala 420:54]
    if (_T_45) begin // @[RocketCore.scala 476:73]
      ex_reg_pc <= ibuf_io_pc; // @[RocketCore.scala 480:15]
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      if (_T_38) begin // @[RocketCore.scala 450:59]
        ex_reg_mem_size <= _ex_reg_mem_size_T_1; // @[RocketCore.scala 451:23]
      end else begin
        ex_reg_mem_size <= ibuf_io_inst_0_bits_inst_bits[13:12]; // @[RocketCore.scala 449:21]
      end
    end
    if (_T_45) begin // @[RocketCore.scala 476:73]
      ex_reg_inst <= ibuf_io_inst_0_bits_inst_bits; // @[RocketCore.scala 478:17]
    end
    if (_T_45) begin // @[RocketCore.scala 476:73]
      ex_reg_raw_inst <= ibuf_io_inst_0_bits_raw; // @[RocketCore.scala 479:21]
    end
    mem_reg_xcpt_interrupt <= _ex_reg_replay_T & ex_reg_xcpt_interrupt; // @[RocketCore.scala 524:45]
    mem_reg_valid <= ~ctrl_killx; // @[RocketCore.scala 521:20]
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_reg_rvc <= ex_reg_rvc; // @[RocketCore.scala 534:17]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_reg_btb_resp_entry <= ex_reg_btb_resp_entry; // @[RocketCore.scala 538:22]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_reg_btb_resp_bht_history <= ex_reg_btb_resp_bht_history; // @[RocketCore.scala 538:22]
      end
    end
    mem_reg_xcpt <= _mem_reg_valid_T & ex_xcpt; // @[RocketCore.scala 523:31]
    mem_reg_replay <= _ex_reg_replay_T & replay_ex; // @[RocketCore.scala 522:37]
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_reg_flush_pipe <= _GEN_78;
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_reg_cause <= ex_reg_cause; // @[RocketCore.scala 543:19]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_reg_slow_bypass <= ex_slow_bypass; // @[RocketCore.scala 540:25]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_reg_load <= _mem_reg_load_T_23; // @[RocketCore.scala 535:18]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_reg_store <= _mem_reg_store_T_23; // @[RocketCore.scala 536:19]
      end
    end
    if (_T_56) begin // @[RocketCore.scala 528:46]
      mem_reg_sfence <= 1'h0; // @[RocketCore.scala 529:20]
    end else if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
      mem_reg_sfence <= ex_sfence; // @[RocketCore.scala 537:20]
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_reg_pc <= ex_reg_pc; // @[RocketCore.scala 547:16]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_reg_inst <= ex_reg_inst; // @[RocketCore.scala 544:18]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_reg_mem_size <= ex_reg_mem_size; // @[RocketCore.scala 546:22]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_reg_raw_inst <= ex_reg_raw_inst; // @[RocketCore.scala 545:22]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_reg_wdata <= _mem_reg_wdata_T; // @[RocketCore.scala 548:19]
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        if (_T_59) begin // @[RocketCore.scala 551:71]
          if (ex_reg_mem_size == 2'h0) begin // @[AMOALU.scala 26:13]
            mem_reg_rs2 <= _mem_reg_rs2_T_1;
          end else begin
            mem_reg_rs2 <= _mem_reg_rs2_T_7;
          end
        end
      end
    end
    if (!(_T_56)) begin // @[RocketCore.scala 528:46]
      if (ex_pc_valid) begin // @[RocketCore.scala 530:28]
        mem_br_taken <= alu_io_cmp_out; // @[RocketCore.scala 549:18]
      end
    end
    wb_reg_valid <= ~ctrl_killm; // @[RocketCore.scala 588:19]
    wb_reg_xcpt <= mem_xcpt & _wb_reg_replay_T; // @[RocketCore.scala 590:27]
    wb_reg_replay <= replay_mem & (~take_pc_wb); // @[RocketCore.scala 589:31]
    wb_reg_flush_pipe <= _wb_reg_valid_T & mem_reg_flush_pipe; // @[RocketCore.scala 591:36]
    if (mem_pc_valid) begin // @[RocketCore.scala 592:23]
      if (_T_61) begin // @[Mux.scala 47:69]
        wb_reg_cause <= mem_reg_cause;
      end else begin
        wb_reg_cause <= {{60'd0}, _T_65};
      end
    end
    if (mem_pc_valid) begin // @[RocketCore.scala 592:23]
      wb_reg_sfence <= mem_reg_sfence; // @[RocketCore.scala 594:19]
    end
    if (mem_pc_valid) begin // @[RocketCore.scala 592:23]
      wb_reg_pc <= mem_reg_pc; // @[RocketCore.scala 604:15]
    end
    if (mem_pc_valid) begin // @[RocketCore.scala 592:23]
      wb_reg_mem_size <= mem_reg_mem_size; // @[RocketCore.scala 603:21]
    end
    if (mem_pc_valid) begin // @[RocketCore.scala 592:23]
      wb_reg_inst <= mem_reg_inst; // @[RocketCore.scala 601:17]
    end
    if (mem_pc_valid) begin // @[RocketCore.scala 592:23]
      wb_reg_raw_inst <= mem_reg_raw_inst; // @[RocketCore.scala 602:21]
    end
    if (mem_pc_valid) begin // @[RocketCore.scala 592:23]
      if (_wb_reg_wdata_T_2) begin // @[RocketCore.scala 596:10]
        wb_reg_wdata <= io_fpu_toint_data;
      end else begin
        wb_reg_wdata <= mem_int_wdata;
      end
    end
    if (reset) begin // @[RocketCore.scala 270:25]
      id_reg_fence <= 1'h0; // @[RocketCore.scala 270:25]
    end else if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      id_reg_fence <= _GEN_2;
    end else if (_T) begin // @[RocketCore.scala 312:23]
      id_reg_fence <= 1'h0; // @[RocketCore.scala 312:38]
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      if (id_illegal_insn) begin // @[RocketCore.scala 469:28]
        ex_reg_rs_bypass_0 <= 1'h0; // @[RocketCore.scala 471:27]
      end else begin
        ex_reg_rs_bypass_0 <= do_bypass; // @[RocketCore.scala 462:27]
      end
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      ex_reg_rs_bypass_1 <= do_bypass_1; // @[RocketCore.scala 462:27]
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      if (id_illegal_insn) begin // @[RocketCore.scala 469:28]
        ex_reg_rs_lsb_0 <= inst[1:0]; // @[RocketCore.scala 472:24]
      end else if (_T_40) begin // @[RocketCore.scala 464:38]
        ex_reg_rs_lsb_0 <= id_rs_0[1:0]; // @[RocketCore.scala 465:26]
      end else if (id_bypass_src_0_0) begin // @[Mux.scala 47:69]
        ex_reg_rs_lsb_0 <= 2'h0;
      end else begin
        ex_reg_rs_lsb_0 <= _bypass_src_T_1;
      end
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      if (_T_42) begin // @[RocketCore.scala 464:38]
        ex_reg_rs_lsb_1 <= id_rs_1[1:0]; // @[RocketCore.scala 465:26]
      end else if (id_bypass_src_1_0) begin // @[Mux.scala 47:69]
        ex_reg_rs_lsb_1 <= 2'h0;
      end else if (id_bypass_src_1_1) begin // @[Mux.scala 47:69]
        ex_reg_rs_lsb_1 <= 2'h1;
      end else begin
        ex_reg_rs_lsb_1 <= _bypass_src_T_2;
      end
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      if (id_illegal_insn) begin // @[RocketCore.scala 469:28]
        ex_reg_rs_msb_0 <= {{32'd0}, inst[31:2]}; // @[RocketCore.scala 473:24]
      end else if (_T_40) begin // @[RocketCore.scala 464:38]
        ex_reg_rs_msb_0 <= id_rs_0[63:2]; // @[RocketCore.scala 466:26]
      end
    end
    if (_ex_reg_valid_T) begin // @[RocketCore.scala 424:22]
      if (_T_42) begin // @[RocketCore.scala 464:38]
        ex_reg_rs_msb_1 <= id_rs_1[63:2]; // @[RocketCore.scala 466:26]
      end
    end
    if (reset) begin // @[RocketCore.scala 996:25]
      _r <= 32'h0; // @[RocketCore.scala 996:25]
    end else if (_T_138) begin // @[RocketCore.scala 1004:18]
      _r <= _T_137; // @[RocketCore.scala 1004:23]
    end else if (ll_wen) begin // @[RocketCore.scala 1004:18]
      _r <= _T_132; // @[RocketCore.scala 1004:23]
    end
    if (reset) begin // @[RocketCore.scala 996:25]
      id_stall_fpu__next <= 32'h0; // @[RocketCore.scala 996:25]
    end else if (_id_stall_fpu_T_17) begin // @[RocketCore.scala 1004:18]
      id_stall_fpu__next <= _id_stall_fpu_T_16; // @[RocketCore.scala 1004:23]
    end else if (_id_stall_fpu_T_12) begin // @[RocketCore.scala 1004:18]
      id_stall_fpu__next <= _id_stall_fpu_T_11; // @[RocketCore.scala 1004:23]
    end else if (_id_stall_fpu_T_2) begin // @[RocketCore.scala 1004:18]
      id_stall_fpu__next <= _id_stall_fpu_T_5; // @[RocketCore.scala 1004:23]
    end
    blocked <= (_replay_ex_structural_T & _dcache_blocked_T) & ((blocked | io_dmem_req_valid) | io_dmem_s2_nack); // @[RocketCore.scala 761:83]
    div_io_kill_REG <= div_io_req_ready & div_io_req_valid; // @[Decoupled.scala 40:37]
    if (ex_reg_rs_bypass_0) begin // @[RocketCore.scala 371:14]
      if (ex_reg_rs_lsb_0 == 2'h3) begin // @[package.scala 32:76]
        coreMonitorBundle_rd0val_x20 <= io_dmem_resp_bits_data_word_bypass;
      end else if (ex_reg_rs_lsb_0 == 2'h2) begin // @[package.scala 32:76]
        coreMonitorBundle_rd0val_x20 <= wb_reg_wdata;
      end else if (ex_reg_rs_lsb_0 == 2'h1) begin // @[package.scala 32:76]
        coreMonitorBundle_rd0val_x20 <= mem_reg_wdata;
      end else begin
        coreMonitorBundle_rd0val_x20 <= 64'h0;
      end
    end else begin
      coreMonitorBundle_rd0val_x20 <= _ex_rs_T_6;
    end
    coreMonitorBundle_rd0val_REG <= coreMonitorBundle_rd0val_x20; // @[RocketCore.scala 891:34]
    if (ex_reg_rs_bypass_1) begin // @[RocketCore.scala 371:14]
      if (ex_reg_rs_lsb_1 == 2'h3) begin // @[package.scala 32:76]
        coreMonitorBundle_rd1val_x26 <= io_dmem_resp_bits_data_word_bypass;
      end else if (ex_reg_rs_lsb_1 == 2'h2) begin // @[package.scala 32:76]
        coreMonitorBundle_rd1val_x26 <= wb_reg_wdata;
      end else if (ex_reg_rs_lsb_1 == 2'h1) begin // @[package.scala 32:76]
        coreMonitorBundle_rd1val_x26 <= mem_reg_wdata;
      end else begin
        coreMonitorBundle_rd1val_x26 <= 64'h0;
      end
    end else begin
      coreMonitorBundle_rd1val_x26 <= _ex_rs_T_13;
    end
    coreMonitorBundle_rd1val_REG <= coreMonitorBundle_rd1val_x26; // @[RocketCore.scala 893:34]
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (csr_io_trace_0_valid & (~reset)) begin
          $fwrite(32'h80000002,"C%d: %d [%d] pc=[%x] W[r%d=%x][%d] R[r%d=%x] R[r%d=%x] inst=[%x] DASM(%x)\n",io_hartid,
            csr_io_time[31:0],coreMonitorBundle_valid,coreMonitorBundle_pc,_T_140,_T_141,coreMonitorBundle_wrenx,_T_143,
            _T_145,_T_147,_T_149,coreMonitorBundle_inst,coreMonitorBundle_inst); // @[RocketCore.scala 926:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
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
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  _RAND_1 = {2{`RANDOM}};
  _RAND_2 = {2{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {2{`RANDOM}};
  for (initvar = 0; initvar < 31; initvar = initvar+1)
    rf[initvar] = _RAND_0[63:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  id_reg_pause = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  imem_might_request_reg = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  ex_ctrl_fp = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  ex_ctrl_branch = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  ex_ctrl_jal = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  ex_ctrl_jalr = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  ex_ctrl_rxs2 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  ex_ctrl_rxs1 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  ex_ctrl_sel_alu2 = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  ex_ctrl_sel_alu1 = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  ex_ctrl_sel_imm = _RAND_13[2:0];
  _RAND_14 = {1{`RANDOM}};
  ex_ctrl_alu_dw = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  ex_ctrl_alu_fn = _RAND_15[3:0];
  _RAND_16 = {1{`RANDOM}};
  ex_ctrl_mem = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  ex_ctrl_mem_cmd = _RAND_17[4:0];
  _RAND_18 = {1{`RANDOM}};
  ex_ctrl_rfs1 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  ex_ctrl_rfs2 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  ex_ctrl_wfd = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  ex_ctrl_div = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  ex_ctrl_wxd = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  ex_ctrl_csr = _RAND_23[2:0];
  _RAND_24 = {1{`RANDOM}};
  ex_ctrl_fence_i = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  mem_ctrl_fp = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  mem_ctrl_branch = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  mem_ctrl_jal = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  mem_ctrl_jalr = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  mem_ctrl_rxs2 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  mem_ctrl_rxs1 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  mem_ctrl_mem = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  mem_ctrl_rfs1 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  mem_ctrl_rfs2 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  mem_ctrl_wfd = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  mem_ctrl_div = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  mem_ctrl_wxd = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  mem_ctrl_csr = _RAND_37[2:0];
  _RAND_38 = {1{`RANDOM}};
  mem_ctrl_fence_i = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  wb_ctrl_rxs2 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  wb_ctrl_rxs1 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  wb_ctrl_mem = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  wb_ctrl_rfs1 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  wb_ctrl_rfs2 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  wb_ctrl_wfd = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  wb_ctrl_div = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  wb_ctrl_wxd = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  wb_ctrl_csr = _RAND_47[2:0];
  _RAND_48 = {1{`RANDOM}};
  wb_ctrl_fence_i = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  ex_reg_xcpt_interrupt = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  ex_reg_valid = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  ex_reg_rvc = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  ex_reg_btb_resp_entry = _RAND_52[4:0];
  _RAND_53 = {1{`RANDOM}};
  ex_reg_btb_resp_bht_history = _RAND_53[7:0];
  _RAND_54 = {1{`RANDOM}};
  ex_reg_xcpt = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  ex_reg_flush_pipe = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  ex_reg_load_use = _RAND_56[0:0];
  _RAND_57 = {2{`RANDOM}};
  ex_reg_cause = _RAND_57[63:0];
  _RAND_58 = {1{`RANDOM}};
  ex_reg_replay = _RAND_58[0:0];
  _RAND_59 = {2{`RANDOM}};
  ex_reg_pc = _RAND_59[39:0];
  _RAND_60 = {1{`RANDOM}};
  ex_reg_mem_size = _RAND_60[1:0];
  _RAND_61 = {1{`RANDOM}};
  ex_reg_inst = _RAND_61[31:0];
  _RAND_62 = {1{`RANDOM}};
  ex_reg_raw_inst = _RAND_62[31:0];
  _RAND_63 = {1{`RANDOM}};
  mem_reg_xcpt_interrupt = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  mem_reg_valid = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  mem_reg_rvc = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  mem_reg_btb_resp_entry = _RAND_66[4:0];
  _RAND_67 = {1{`RANDOM}};
  mem_reg_btb_resp_bht_history = _RAND_67[7:0];
  _RAND_68 = {1{`RANDOM}};
  mem_reg_xcpt = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  mem_reg_replay = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  mem_reg_flush_pipe = _RAND_70[0:0];
  _RAND_71 = {2{`RANDOM}};
  mem_reg_cause = _RAND_71[63:0];
  _RAND_72 = {1{`RANDOM}};
  mem_reg_slow_bypass = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  mem_reg_load = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  mem_reg_store = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  mem_reg_sfence = _RAND_75[0:0];
  _RAND_76 = {2{`RANDOM}};
  mem_reg_pc = _RAND_76[39:0];
  _RAND_77 = {1{`RANDOM}};
  mem_reg_inst = _RAND_77[31:0];
  _RAND_78 = {1{`RANDOM}};
  mem_reg_mem_size = _RAND_78[1:0];
  _RAND_79 = {1{`RANDOM}};
  mem_reg_raw_inst = _RAND_79[31:0];
  _RAND_80 = {2{`RANDOM}};
  mem_reg_wdata = _RAND_80[63:0];
  _RAND_81 = {2{`RANDOM}};
  mem_reg_rs2 = _RAND_81[63:0];
  _RAND_82 = {1{`RANDOM}};
  mem_br_taken = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  wb_reg_valid = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  wb_reg_xcpt = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  wb_reg_replay = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  wb_reg_flush_pipe = _RAND_86[0:0];
  _RAND_87 = {2{`RANDOM}};
  wb_reg_cause = _RAND_87[63:0];
  _RAND_88 = {1{`RANDOM}};
  wb_reg_sfence = _RAND_88[0:0];
  _RAND_89 = {2{`RANDOM}};
  wb_reg_pc = _RAND_89[39:0];
  _RAND_90 = {1{`RANDOM}};
  wb_reg_mem_size = _RAND_90[1:0];
  _RAND_91 = {1{`RANDOM}};
  wb_reg_inst = _RAND_91[31:0];
  _RAND_92 = {1{`RANDOM}};
  wb_reg_raw_inst = _RAND_92[31:0];
  _RAND_93 = {2{`RANDOM}};
  wb_reg_wdata = _RAND_93[63:0];
  _RAND_94 = {1{`RANDOM}};
  id_reg_fence = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  ex_reg_rs_bypass_0 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  ex_reg_rs_bypass_1 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  ex_reg_rs_lsb_0 = _RAND_97[1:0];
  _RAND_98 = {1{`RANDOM}};
  ex_reg_rs_lsb_1 = _RAND_98[1:0];
  _RAND_99 = {2{`RANDOM}};
  ex_reg_rs_msb_0 = _RAND_99[61:0];
  _RAND_100 = {2{`RANDOM}};
  ex_reg_rs_msb_1 = _RAND_100[61:0];
  _RAND_101 = {1{`RANDOM}};
  _r = _RAND_101[31:0];
  _RAND_102 = {1{`RANDOM}};
  id_stall_fpu__next = _RAND_102[31:0];
  _RAND_103 = {1{`RANDOM}};
  blocked = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  div_io_kill_REG = _RAND_104[0:0];
  _RAND_105 = {2{`RANDOM}};
  coreMonitorBundle_rd0val_x20 = _RAND_105[63:0];
  _RAND_106 = {2{`RANDOM}};
  coreMonitorBundle_rd0val_REG = _RAND_106[63:0];
  _RAND_107 = {2{`RANDOM}};
  coreMonitorBundle_rd1val_x26 = _RAND_107[63:0];
  _RAND_108 = {2{`RANDOM}};
  coreMonitorBundle_rd1val_REG = _RAND_108[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
