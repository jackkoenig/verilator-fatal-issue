module CSRFile(
  input         clock,
  input         reset,
  input         io_ungated_clock,
  input         io_interrupts_debug,
  input         io_interrupts_mtip,
  input         io_interrupts_msip,
  input         io_interrupts_meip,
  input         io_interrupts_seip,
  input         io_hartid,
  input  [11:0] io_rw_addr,
  input  [2:0]  io_rw_cmd,
  output [63:0] io_rw_rdata,
  input  [63:0] io_rw_wdata,
  input  [11:0] io_decode_0_csr,
  output        io_decode_0_fp_illegal,
  output        io_decode_0_fp_csr,
  output        io_decode_0_read_illegal,
  output        io_decode_0_write_illegal,
  output        io_decode_0_write_flush,
  output        io_decode_0_system_illegal,
  output        io_csr_stall,
  output        io_eret,
  output        io_singleStep,
  output        io_status_debug,
  output        io_status_cease,
  output        io_status_wfi,
  output [31:0] io_status_isa,
  output [1:0]  io_status_dprv,
  output [1:0]  io_status_prv,
  output        io_status_sd,
  output [26:0] io_status_zero2,
  output [1:0]  io_status_sxl,
  output [1:0]  io_status_uxl,
  output        io_status_sd_rv32,
  output [7:0]  io_status_zero1,
  output        io_status_tsr,
  output        io_status_tw,
  output        io_status_tvm,
  output        io_status_mxr,
  output        io_status_sum,
  output        io_status_mprv,
  output [1:0]  io_status_xs,
  output [1:0]  io_status_fs,
  output [1:0]  io_status_mpp,
  output [1:0]  io_status_vs,
  output        io_status_spp,
  output        io_status_mpie,
  output        io_status_hpie,
  output        io_status_spie,
  output        io_status_upie,
  output        io_status_mie,
  output        io_status_hie,
  output        io_status_sie,
  output        io_status_uie,
  output [3:0]  io_ptbr_mode,
  output [43:0] io_ptbr_ppn,
  output [39:0] io_evec,
  input         io_exception,
  input         io_retire,
  input  [63:0] io_cause,
  input  [39:0] io_pc,
  input  [39:0] io_tval,
  output [63:0] io_time,
  output [2:0]  io_fcsr_rm,
  input         io_fcsr_flags_valid,
  input  [4:0]  io_fcsr_flags_bits,
  output        io_interrupt,
  output [63:0] io_interrupt_cause,
  output        io_bp_0_control_action,
  output [1:0]  io_bp_0_control_tmatch,
  output        io_bp_0_control_m,
  output        io_bp_0_control_s,
  output        io_bp_0_control_u,
  output        io_bp_0_control_x,
  output        io_bp_0_control_w,
  output        io_bp_0_control_r,
  output [38:0] io_bp_0_address,
  output        io_pmp_0_cfg_l,
  output [1:0]  io_pmp_0_cfg_a,
  output        io_pmp_0_cfg_x,
  output        io_pmp_0_cfg_w,
  output        io_pmp_0_cfg_r,
  output [29:0] io_pmp_0_addr,
  output [31:0] io_pmp_0_mask,
  output        io_pmp_1_cfg_l,
  output [1:0]  io_pmp_1_cfg_a,
  output        io_pmp_1_cfg_x,
  output        io_pmp_1_cfg_w,
  output        io_pmp_1_cfg_r,
  output [29:0] io_pmp_1_addr,
  output [31:0] io_pmp_1_mask,
  output        io_pmp_2_cfg_l,
  output [1:0]  io_pmp_2_cfg_a,
  output        io_pmp_2_cfg_x,
  output        io_pmp_2_cfg_w,
  output        io_pmp_2_cfg_r,
  output [29:0] io_pmp_2_addr,
  output [31:0] io_pmp_2_mask,
  output        io_pmp_3_cfg_l,
  output [1:0]  io_pmp_3_cfg_a,
  output        io_pmp_3_cfg_x,
  output        io_pmp_3_cfg_w,
  output        io_pmp_3_cfg_r,
  output [29:0] io_pmp_3_addr,
  output [31:0] io_pmp_3_mask,
  output        io_pmp_4_cfg_l,
  output [1:0]  io_pmp_4_cfg_a,
  output        io_pmp_4_cfg_x,
  output        io_pmp_4_cfg_w,
  output        io_pmp_4_cfg_r,
  output [29:0] io_pmp_4_addr,
  output [31:0] io_pmp_4_mask,
  output        io_pmp_5_cfg_l,
  output [1:0]  io_pmp_5_cfg_a,
  output        io_pmp_5_cfg_x,
  output        io_pmp_5_cfg_w,
  output        io_pmp_5_cfg_r,
  output [29:0] io_pmp_5_addr,
  output [31:0] io_pmp_5_mask,
  output        io_pmp_6_cfg_l,
  output [1:0]  io_pmp_6_cfg_a,
  output        io_pmp_6_cfg_x,
  output        io_pmp_6_cfg_w,
  output        io_pmp_6_cfg_r,
  output [29:0] io_pmp_6_addr,
  output [31:0] io_pmp_6_mask,
  output        io_pmp_7_cfg_l,
  output [1:0]  io_pmp_7_cfg_a,
  output        io_pmp_7_cfg_x,
  output        io_pmp_7_cfg_w,
  output        io_pmp_7_cfg_r,
  output [29:0] io_pmp_7_addr,
  output [31:0] io_pmp_7_mask,
  input  [31:0] io_inst_0,
  output        io_trace_0_valid,
  output [39:0] io_trace_0_iaddr,
  output [31:0] io_trace_0_insn,
  output        io_trace_0_exception,
  output [63:0] io_customCSRs_0_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
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
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [63:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [63:0] _RAND_35;
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
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
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
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [63:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [63:0] _RAND_88;
  reg [63:0] _RAND_89;
  reg [63:0] _RAND_90;
  reg [63:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [63:0] _RAND_95;
  reg [63:0] _RAND_96;
  reg [63:0] _RAND_97;
  reg [63:0] _RAND_98;
  reg [63:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [63:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [63:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [63:0] _RAND_108;
  reg [63:0] _RAND_109;
  reg [63:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] reg_mstatus_prv; // @[CSR.scala 314:24]
  reg  reg_mstatus_tsr; // @[CSR.scala 314:24]
  reg  reg_mstatus_tw; // @[CSR.scala 314:24]
  reg  reg_mstatus_tvm; // @[CSR.scala 314:24]
  reg  reg_mstatus_mxr; // @[CSR.scala 314:24]
  reg  reg_mstatus_sum; // @[CSR.scala 314:24]
  reg  reg_mstatus_mprv; // @[CSR.scala 314:24]
  reg [1:0] reg_mstatus_fs; // @[CSR.scala 314:24]
  reg [1:0] reg_mstatus_mpp; // @[CSR.scala 314:24]
  reg  reg_mstatus_spp; // @[CSR.scala 314:24]
  reg  reg_mstatus_mpie; // @[CSR.scala 314:24]
  reg  reg_mstatus_spie; // @[CSR.scala 314:24]
  reg  reg_mstatus_mie; // @[CSR.scala 314:24]
  reg  reg_mstatus_sie; // @[CSR.scala 314:24]
  wire  system_insn = io_rw_cmd == 3'h4; // @[CSR.scala 602:31]
  wire [31:0] _T_190 = {io_rw_addr, 20'h0}; // @[CSR.scala 614:28]
  wire [31:0] _T_197 = _T_190 & 32'h12400000; // @[Decode.scala 14:65]
  wire  _T_198 = _T_197 == 32'h10000000; // @[Decode.scala 14:121]
  wire [31:0] _T_199 = _T_190 & 32'h40000000; // @[Decode.scala 14:65]
  wire  _T_200 = _T_199 == 32'h40000000; // @[Decode.scala 14:121]
  wire  _T_202 = _T_198 | _T_200; // @[Decode.scala 15:30]
  wire  insn_ret = system_insn & _T_202; // @[CSR.scala 614:95]
  wire  _T_396 = ~(io_rw_addr[9]); // @[CSR.scala 752:36]
  reg [1:0] reg_dcsr_prv; // @[CSR.scala 322:21]
  wire [1:0] _GEN_105 = io_rw_addr[10] ? reg_dcsr_prv : reg_mstatus_mpp; // @[CSR.scala 758:53 CSR.scala 759:15 CSR.scala 766:15]
  wire [1:0] _GEN_114 = _T_396 ? {{1'd0}, reg_mstatus_spp} : _GEN_105; // @[CSR.scala 752:52 CSR.scala 756:15]
  wire [31:0] _T_191 = _T_190 & 32'h10100000; // @[Decode.scala 14:65]
  wire  _T_192 = _T_191 == 32'h0; // @[Decode.scala 14:121]
  wire  insn_call = system_insn & _T_192; // @[CSR.scala 614:95]
  wire  _T_195 = _T_191 == 32'h100000; // @[Decode.scala 14:121]
  wire  insn_break = system_insn & _T_195; // @[CSR.scala 614:95]
  wire  _exception_T = insn_call | insn_break; // @[CSR.scala 686:29]
  wire  exception = (insn_call | insn_break) | io_exception; // @[CSR.scala 686:43]
  reg  reg_singleStepped; // @[CSR.scala 366:30]
  wire [3:0] _GEN_18 = {{2'd0}, reg_mstatus_prv}; // @[CSR.scala 650:36]
  wire [3:0] _cause_T_1 = _GEN_18 + 4'h8; // @[CSR.scala 650:36]
  wire [63:0] _cause_T_2 = insn_break ? 64'h3 : io_cause; // @[CSR.scala 651:14]
  wire [63:0] cause = insn_call ? {{60'd0}, _cause_T_1} : _cause_T_2; // @[CSR.scala 650:8]
  wire [7:0] cause_lsbs = cause[7:0]; // @[CSR.scala 652:25]
  wire  _causeIsDebugInt_T_1 = cause_lsbs == 8'he; // @[CSR.scala 653:53]
  wire  causeIsDebugInt = (cause[63]) & (cause_lsbs == 8'he); // @[CSR.scala 653:39]
  wire  _causeIsDebugTrigger_T_1 = ~(cause[63]); // @[CSR.scala 654:29]
  wire  causeIsDebugTrigger = (~(cause[63])) & _causeIsDebugInt_T_1; // @[CSR.scala 654:44]
  reg  reg_dcsr_ebreakm; // @[CSR.scala 322:21]
  reg  reg_dcsr_ebreaks; // @[CSR.scala 322:21]
  reg  reg_dcsr_ebreaku; // @[CSR.scala 322:21]
  wire [3:0] _causeIsDebugBreak_T_3 = {reg_dcsr_ebreakm,1'h0,reg_dcsr_ebreaks,reg_dcsr_ebreaku}; // @[Cat.scala 29:58]
  wire [3:0] _causeIsDebugBreak_T_4 = _causeIsDebugBreak_T_3 >> reg_mstatus_prv; // @[CSR.scala 655:134]
  wire  causeIsDebugBreak = (_causeIsDebugTrigger_T_1 & insn_break) & (_causeIsDebugBreak_T_4[0]); // @[CSR.scala 655:56]
  reg  reg_debug; // @[CSR.scala 363:22]
  wire  trapToDebug = (((reg_singleStepped | causeIsDebugInt) | causeIsDebugTrigger) | causeIsDebugBreak) | reg_debug; // @[CSR.scala 656:123]
  wire  _T_274 = ~reg_debug; // @[CSR.scala 703:13]
  wire [1:0] _GEN_54 = _T_274 ? 2'h3 : reg_mstatus_prv; // @[CSR.scala 703:25 CSR.scala 708:17]
  wire  _delegate_T = reg_mstatus_prv <= 2'h1; // @[CSR.scala 658:59]
  reg [63:0] reg_mideleg; // @[CSR.scala 377:18]
  wire [63:0] read_mideleg = reg_mideleg & 64'h222; // @[CSR.scala 378:36]
  wire [63:0] _delegate_T_3 = read_mideleg >> cause_lsbs; // @[CSR.scala 658:102]
  reg [63:0] reg_medeleg; // @[CSR.scala 381:18]
  wire [63:0] read_medeleg = reg_medeleg & 64'hb15d; // @[CSR.scala 382:36]
  wire [63:0] _delegate_T_5 = read_medeleg >> cause_lsbs; // @[CSR.scala 658:128]
  wire  _delegate_T_7 = cause[63] ? _delegate_T_3[0] : _delegate_T_5[0]; // @[CSR.scala 658:74]
  wire  delegate = (reg_mstatus_prv <= 2'h1) & _delegate_T_7; // @[CSR.scala 658:68]
  wire [1:0] _GEN_62 = delegate ? 2'h1 : 2'h3; // @[CSR.scala 710:27 CSR.scala 718:15 CSR.scala 727:15]
  wire [1:0] _GEN_73 = trapToDebug ? _GEN_54 : _GEN_62; // @[CSR.scala 702:24]
  wire [1:0] _GEN_91 = exception ? _GEN_73 : reg_mstatus_prv; // @[CSR.scala 701:20]
  wire [1:0] new_prv = insn_ret ? _GEN_114 : _GEN_91; // @[CSR.scala 751:19]
  reg [2:0] reg_dcsr_cause; // @[CSR.scala 322:21]
  reg  reg_dcsr_step; // @[CSR.scala 322:21]
  reg [39:0] reg_dpc; // @[CSR.scala 364:20]
  reg [63:0] reg_dscratch; // @[CSR.scala 365:25]
  reg  reg_bp_0_control_dmode; // @[CSR.scala 372:19]
  reg  reg_bp_0_control_action; // @[CSR.scala 372:19]
  reg [1:0] reg_bp_0_control_tmatch; // @[CSR.scala 372:19]
  reg  reg_bp_0_control_m; // @[CSR.scala 372:19]
  reg  reg_bp_0_control_s; // @[CSR.scala 372:19]
  reg  reg_bp_0_control_u; // @[CSR.scala 372:19]
  reg  reg_bp_0_control_x; // @[CSR.scala 372:19]
  reg  reg_bp_0_control_w; // @[CSR.scala 372:19]
  reg  reg_bp_0_control_r; // @[CSR.scala 372:19]
  reg [38:0] reg_bp_0_address; // @[CSR.scala 372:19]
  reg  reg_pmp_0_cfg_l; // @[CSR.scala 373:20]
  reg [1:0] reg_pmp_0_cfg_a; // @[CSR.scala 373:20]
  reg  reg_pmp_0_cfg_x; // @[CSR.scala 373:20]
  reg  reg_pmp_0_cfg_w; // @[CSR.scala 373:20]
  reg  reg_pmp_0_cfg_r; // @[CSR.scala 373:20]
  reg [29:0] reg_pmp_0_addr; // @[CSR.scala 373:20]
  reg  reg_pmp_1_cfg_l; // @[CSR.scala 373:20]
  reg [1:0] reg_pmp_1_cfg_a; // @[CSR.scala 373:20]
  reg  reg_pmp_1_cfg_x; // @[CSR.scala 373:20]
  reg  reg_pmp_1_cfg_w; // @[CSR.scala 373:20]
  reg  reg_pmp_1_cfg_r; // @[CSR.scala 373:20]
  reg [29:0] reg_pmp_1_addr; // @[CSR.scala 373:20]
  reg  reg_pmp_2_cfg_l; // @[CSR.scala 373:20]
  reg [1:0] reg_pmp_2_cfg_a; // @[CSR.scala 373:20]
  reg  reg_pmp_2_cfg_x; // @[CSR.scala 373:20]
  reg  reg_pmp_2_cfg_w; // @[CSR.scala 373:20]
  reg  reg_pmp_2_cfg_r; // @[CSR.scala 373:20]
  reg [29:0] reg_pmp_2_addr; // @[CSR.scala 373:20]
  reg  reg_pmp_3_cfg_l; // @[CSR.scala 373:20]
  reg [1:0] reg_pmp_3_cfg_a; // @[CSR.scala 373:20]
  reg  reg_pmp_3_cfg_x; // @[CSR.scala 373:20]
  reg  reg_pmp_3_cfg_w; // @[CSR.scala 373:20]
  reg  reg_pmp_3_cfg_r; // @[CSR.scala 373:20]
  reg [29:0] reg_pmp_3_addr; // @[CSR.scala 373:20]
  reg  reg_pmp_4_cfg_l; // @[CSR.scala 373:20]
  reg [1:0] reg_pmp_4_cfg_a; // @[CSR.scala 373:20]
  reg  reg_pmp_4_cfg_x; // @[CSR.scala 373:20]
  reg  reg_pmp_4_cfg_w; // @[CSR.scala 373:20]
  reg  reg_pmp_4_cfg_r; // @[CSR.scala 373:20]
  reg [29:0] reg_pmp_4_addr; // @[CSR.scala 373:20]
  reg  reg_pmp_5_cfg_l; // @[CSR.scala 373:20]
  reg [1:0] reg_pmp_5_cfg_a; // @[CSR.scala 373:20]
  reg  reg_pmp_5_cfg_x; // @[CSR.scala 373:20]
  reg  reg_pmp_5_cfg_w; // @[CSR.scala 373:20]
  reg  reg_pmp_5_cfg_r; // @[CSR.scala 373:20]
  reg [29:0] reg_pmp_5_addr; // @[CSR.scala 373:20]
  reg  reg_pmp_6_cfg_l; // @[CSR.scala 373:20]
  reg [1:0] reg_pmp_6_cfg_a; // @[CSR.scala 373:20]
  reg  reg_pmp_6_cfg_x; // @[CSR.scala 373:20]
  reg  reg_pmp_6_cfg_w; // @[CSR.scala 373:20]
  reg  reg_pmp_6_cfg_r; // @[CSR.scala 373:20]
  reg [29:0] reg_pmp_6_addr; // @[CSR.scala 373:20]
  reg  reg_pmp_7_cfg_l; // @[CSR.scala 373:20]
  reg [1:0] reg_pmp_7_cfg_a; // @[CSR.scala 373:20]
  reg  reg_pmp_7_cfg_x; // @[CSR.scala 373:20]
  reg  reg_pmp_7_cfg_w; // @[CSR.scala 373:20]
  reg  reg_pmp_7_cfg_r; // @[CSR.scala 373:20]
  reg [29:0] reg_pmp_7_addr; // @[CSR.scala 373:20]
  reg [63:0] reg_mie; // @[CSR.scala 375:20]
  reg  reg_mip_seip; // @[CSR.scala 384:20]
  reg  reg_mip_stip; // @[CSR.scala 384:20]
  reg  reg_mip_ssip; // @[CSR.scala 384:20]
  reg [39:0] reg_mepc; // @[CSR.scala 385:21]
  reg [63:0] reg_mcause; // @[CSR.scala 386:27]
  reg [39:0] reg_mtval; // @[CSR.scala 387:22]
  reg [63:0] reg_mscratch; // @[CSR.scala 388:25]
  reg [31:0] reg_mtvec; // @[CSR.scala 391:27]
  reg [31:0] reg_mcounteren; // @[CSR.scala 397:18]
  wire [31:0] read_mcounteren = reg_mcounteren & 32'h7; // @[CSR.scala 398:30]
  reg [31:0] reg_scounteren; // @[CSR.scala 401:18]
  wire [31:0] read_scounteren = reg_scounteren & 32'h7; // @[CSR.scala 402:36]
  reg [39:0] reg_sepc; // @[CSR.scala 405:21]
  reg [63:0] reg_scause; // @[CSR.scala 406:23]
  reg [39:0] reg_stval; // @[CSR.scala 407:22]
  reg [63:0] reg_sscratch; // @[CSR.scala 408:25]
  reg [38:0] reg_stvec; // @[CSR.scala 409:22]
  reg [3:0] reg_satp_mode; // @[CSR.scala 410:21]
  reg [43:0] reg_satp_ppn; // @[CSR.scala 410:21]
  reg  reg_wfi; // @[CSR.scala 411:50]
  reg [4:0] reg_fflags; // @[CSR.scala 413:23]
  reg [2:0] reg_frm; // @[CSR.scala 414:20]
  reg [5:0] value_left; // @[Counters.scala 46:37]
  wire [5:0] _GEN_21 = {{5'd0}, io_retire}; // @[Counters.scala 47:33]
  wire [6:0] nextSmall = value_left + _GEN_21; // @[Counters.scala 47:33]
  reg [57:0] value_right; // @[Counters.scala 51:27]
  wire [57:0] _large_value_right_T_1 = value_right + 58'h1; // @[Counters.scala 52:43]
  wire [57:0] _GEN_0 = nextSmall[6] ? _large_value_right_T_1 : value_right; // @[Counters.scala 52:34 Counters.scala 52:38 Counters.scala 51:27]
  wire [63:0] value = {value_right,value_left}; // @[Cat.scala 29:58]
  wire  _T_5 = ~io_csr_stall; // @[CSR.scala 421:103]
  reg [5:0] value_left_1; // @[Counters.scala 46:37]
  wire [5:0] _GEN_40 = {{5'd0}, _T_5}; // @[Counters.scala 47:33]
  wire [6:0] nextSmall_1 = value_left_1 + _GEN_40; // @[Counters.scala 47:33]
  reg [57:0] value_right_1; // @[Counters.scala 51:27]
  wire [57:0] _large_value_right_1_T_1 = value_right_1 + 58'h1; // @[Counters.scala 52:43]
  wire [57:0] _GEN_1 = nextSmall_1[6] ? _large_value_right_1_T_1 : value_right_1; // @[Counters.scala 52:34 Counters.scala 52:38 Counters.scala 51:27]
  wire [63:0] value_1 = {value_right_1,value_left_1}; // @[Cat.scala 29:58]
  wire  mip_seip = reg_mip_seip | io_interrupts_seip; // @[CSR.scala 432:57]
  wire [7:0] read_mip_left = {io_interrupts_mtip,1'h0,reg_mip_stip,1'h0,io_interrupts_msip,1'h0,reg_mip_ssip,1'h0}; // @[CSR.scala 434:22]
  wire [15:0] _read_mip_T = {4'h0,io_interrupts_meip,1'h0,mip_seip,1'h0,read_mip_left}; // @[CSR.scala 434:22]
  wire [15:0] read_mip = _read_mip_T & 16'haaa; // @[CSR.scala 434:29]
  wire [63:0] _GEN_43 = {{48'd0}, read_mip}; // @[CSR.scala 437:56]
  wire [63:0] pending_interrupts = _GEN_43 & reg_mie; // @[CSR.scala 437:56]
  wire [14:0] d_interrupts = {io_interrupts_debug, 14'h0}; // @[CSR.scala 438:42]
  wire  _m_interrupts_T_1 = _delegate_T | reg_mstatus_mie; // @[CSR.scala 439:51]
  wire [63:0] _m_interrupts_T_2 = ~pending_interrupts; // @[CSR.scala 439:73]
  wire [63:0] _m_interrupts_T_3 = _m_interrupts_T_2 | read_mideleg; // @[CSR.scala 439:93]
  wire [63:0] _m_interrupts_T_4 = ~_m_interrupts_T_3; // @[CSR.scala 439:71]
  wire [63:0] m_interrupts = _m_interrupts_T_1 ? _m_interrupts_T_4 : 64'h0; // @[CSR.scala 439:25]
  wire  _s_interrupts_T_3 = (reg_mstatus_prv < 2'h1) | ((reg_mstatus_prv == 2'h1) & reg_mstatus_sie); // @[CSR.scala 440:50]
  wire [63:0] _s_interrupts_T_4 = pending_interrupts & read_mideleg; // @[CSR.scala 440:120]
  wire [63:0] s_interrupts = _s_interrupts_T_3 ? _s_interrupts_T_4 : 64'h0; // @[CSR.scala 440:25]
  wire  _any_T_52 = (((((((((((((((d_interrupts[14]) | (d_interrupts[13])) | (d_interrupts[12])) | (d_interrupts[11]))
     | (d_interrupts[3])) | (d_interrupts[7])) | (d_interrupts[9])) | (d_interrupts[1])) | (d_interrupts[5])) | (
    d_interrupts[8])) | (d_interrupts[0])) | (d_interrupts[4])) | (m_interrupts[15])) | (m_interrupts[14])) | (
    m_interrupts[13])) | (m_interrupts[12]); // @[CSR.scala 1092:90]
  wire  _any_T_67 = ((((((((((((((_any_T_52 | (m_interrupts[11])) | (m_interrupts[3])) | (m_interrupts[7])) | (
    m_interrupts[9])) | (m_interrupts[1])) | (m_interrupts[5])) | (m_interrupts[8])) | (m_interrupts[0])) | (
    m_interrupts[4])) | (s_interrupts[15])) | (s_interrupts[14])) | (s_interrupts[13])) | (s_interrupts[12])) | (
    s_interrupts[11])) | (s_interrupts[3]); // @[CSR.scala 1092:90]
  wire  anyInterrupt = ((((((_any_T_67 | (s_interrupts[7])) | (s_interrupts[9])) | (s_interrupts[1])) | (s_interrupts[5]
    )) | (s_interrupts[8])) | (s_interrupts[0])) | (s_interrupts[4]); // @[CSR.scala 1092:90]
  wire [2:0] _which_T_38 = s_interrupts[0] ? 3'h0 : 3'h4; // @[Mux.scala 47:69]
  wire [3:0] _which_T_39 = s_interrupts[8] ? 4'h8 : {{1'd0}, _which_T_38}; // @[Mux.scala 47:69]
  wire [3:0] _which_T_40 = s_interrupts[5] ? 4'h5 : _which_T_39; // @[Mux.scala 47:69]
  wire [3:0] _which_T_41 = s_interrupts[1] ? 4'h1 : _which_T_40; // @[Mux.scala 47:69]
  wire [3:0] _which_T_42 = s_interrupts[9] ? 4'h9 : _which_T_41; // @[Mux.scala 47:69]
  wire [3:0] _which_T_43 = s_interrupts[7] ? 4'h7 : _which_T_42; // @[Mux.scala 47:69]
  wire [3:0] _which_T_44 = s_interrupts[3] ? 4'h3 : _which_T_43; // @[Mux.scala 47:69]
  wire [3:0] _which_T_45 = s_interrupts[11] ? 4'hb : _which_T_44; // @[Mux.scala 47:69]
  wire [3:0] _which_T_46 = s_interrupts[12] ? 4'hc : _which_T_45; // @[Mux.scala 47:69]
  wire [3:0] _which_T_47 = s_interrupts[13] ? 4'hd : _which_T_46; // @[Mux.scala 47:69]
  wire [3:0] _which_T_48 = s_interrupts[14] ? 4'he : _which_T_47; // @[Mux.scala 47:69]
  wire [3:0] _which_T_49 = s_interrupts[15] ? 4'hf : _which_T_48; // @[Mux.scala 47:69]
  wire [3:0] _which_T_50 = m_interrupts[4] ? 4'h4 : _which_T_49; // @[Mux.scala 47:69]
  wire [3:0] _which_T_51 = m_interrupts[0] ? 4'h0 : _which_T_50; // @[Mux.scala 47:69]
  wire [3:0] _which_T_52 = m_interrupts[8] ? 4'h8 : _which_T_51; // @[Mux.scala 47:69]
  wire [3:0] _which_T_53 = m_interrupts[5] ? 4'h5 : _which_T_52; // @[Mux.scala 47:69]
  wire [3:0] _which_T_54 = m_interrupts[1] ? 4'h1 : _which_T_53; // @[Mux.scala 47:69]
  wire [3:0] _which_T_55 = m_interrupts[9] ? 4'h9 : _which_T_54; // @[Mux.scala 47:69]
  wire [3:0] _which_T_56 = m_interrupts[7] ? 4'h7 : _which_T_55; // @[Mux.scala 47:69]
  wire [3:0] _which_T_57 = m_interrupts[3] ? 4'h3 : _which_T_56; // @[Mux.scala 47:69]
  wire [3:0] _which_T_58 = m_interrupts[11] ? 4'hb : _which_T_57; // @[Mux.scala 47:69]
  wire [3:0] _which_T_59 = m_interrupts[12] ? 4'hc : _which_T_58; // @[Mux.scala 47:69]
  wire [3:0] _which_T_60 = m_interrupts[13] ? 4'hd : _which_T_59; // @[Mux.scala 47:69]
  wire [3:0] _which_T_61 = m_interrupts[14] ? 4'he : _which_T_60; // @[Mux.scala 47:69]
  wire [3:0] _which_T_62 = m_interrupts[15] ? 4'hf : _which_T_61; // @[Mux.scala 47:69]
  wire [3:0] _which_T_63 = d_interrupts[4] ? 4'h4 : _which_T_62; // @[Mux.scala 47:69]
  wire [3:0] _which_T_64 = d_interrupts[0] ? 4'h0 : _which_T_63; // @[Mux.scala 47:69]
  wire [3:0] _which_T_65 = d_interrupts[8] ? 4'h8 : _which_T_64; // @[Mux.scala 47:69]
  wire [3:0] _which_T_66 = d_interrupts[5] ? 4'h5 : _which_T_65; // @[Mux.scala 47:69]
  wire [3:0] _which_T_67 = d_interrupts[1] ? 4'h1 : _which_T_66; // @[Mux.scala 47:69]
  wire [3:0] _which_T_68 = d_interrupts[9] ? 4'h9 : _which_T_67; // @[Mux.scala 47:69]
  wire [3:0] _which_T_69 = d_interrupts[7] ? 4'h7 : _which_T_68; // @[Mux.scala 47:69]
  wire [3:0] _which_T_70 = d_interrupts[3] ? 4'h3 : _which_T_69; // @[Mux.scala 47:69]
  wire [3:0] _which_T_71 = d_interrupts[11] ? 4'hb : _which_T_70; // @[Mux.scala 47:69]
  wire [3:0] _which_T_72 = d_interrupts[12] ? 4'hc : _which_T_71; // @[Mux.scala 47:69]
  wire [3:0] _which_T_73 = d_interrupts[13] ? 4'hd : _which_T_72; // @[Mux.scala 47:69]
  wire [3:0] whichInterrupt = d_interrupts[14] ? 4'he : _which_T_73; // @[Mux.scala 47:69]
  wire [63:0] _GEN_502 = {{60'd0}, whichInterrupt}; // @[CSR.scala 443:43]
  wire  _io_interrupt_T = ~io_singleStep; // @[CSR.scala 444:36]
  wire  pmp_mask_base_left = reg_pmp_0_cfg_a[0]; // @[PMP.scala 59:31]
  wire [30:0] pmp_mask_base = {reg_pmp_0_addr,pmp_mask_base_left}; // @[Cat.scala 29:58]
  wire [30:0] _pmp_mask_T_1 = pmp_mask_base + 31'h1; // @[PMP.scala 60:23]
  wire [30:0] _pmp_mask_T_2 = ~_pmp_mask_T_1; // @[PMP.scala 60:16]
  wire [30:0] pmp_mask_right = pmp_mask_base & _pmp_mask_T_2; // @[PMP.scala 60:14]
  wire [32:0] _pmp_mask_T_3 = {pmp_mask_right,2'h3}; // @[Cat.scala 29:58]
  wire  pmp_1_mask_base_left = reg_pmp_1_cfg_a[0]; // @[PMP.scala 59:31]
  wire [30:0] pmp_1_mask_base = {reg_pmp_1_addr,pmp_1_mask_base_left}; // @[Cat.scala 29:58]
  wire [30:0] _pmp_1_mask_T_1 = pmp_1_mask_base + 31'h1; // @[PMP.scala 60:23]
  wire [30:0] _pmp_1_mask_T_2 = ~_pmp_1_mask_T_1; // @[PMP.scala 60:16]
  wire [30:0] pmp_1_mask_right = pmp_1_mask_base & _pmp_1_mask_T_2; // @[PMP.scala 60:14]
  wire [32:0] _pmp_1_mask_T_3 = {pmp_1_mask_right,2'h3}; // @[Cat.scala 29:58]
  wire  pmp_2_mask_base_left = reg_pmp_2_cfg_a[0]; // @[PMP.scala 59:31]
  wire [30:0] pmp_2_mask_base = {reg_pmp_2_addr,pmp_2_mask_base_left}; // @[Cat.scala 29:58]
  wire [30:0] _pmp_2_mask_T_1 = pmp_2_mask_base + 31'h1; // @[PMP.scala 60:23]
  wire [30:0] _pmp_2_mask_T_2 = ~_pmp_2_mask_T_1; // @[PMP.scala 60:16]
  wire [30:0] pmp_2_mask_right = pmp_2_mask_base & _pmp_2_mask_T_2; // @[PMP.scala 60:14]
  wire [32:0] _pmp_2_mask_T_3 = {pmp_2_mask_right,2'h3}; // @[Cat.scala 29:58]
  wire  pmp_3_mask_base_left = reg_pmp_3_cfg_a[0]; // @[PMP.scala 59:31]
  wire [30:0] pmp_3_mask_base = {reg_pmp_3_addr,pmp_3_mask_base_left}; // @[Cat.scala 29:58]
  wire [30:0] _pmp_3_mask_T_1 = pmp_3_mask_base + 31'h1; // @[PMP.scala 60:23]
  wire [30:0] _pmp_3_mask_T_2 = ~_pmp_3_mask_T_1; // @[PMP.scala 60:16]
  wire [30:0] pmp_3_mask_right = pmp_3_mask_base & _pmp_3_mask_T_2; // @[PMP.scala 60:14]
  wire [32:0] _pmp_3_mask_T_3 = {pmp_3_mask_right,2'h3}; // @[Cat.scala 29:58]
  wire  pmp_4_mask_base_left = reg_pmp_4_cfg_a[0]; // @[PMP.scala 59:31]
  wire [30:0] pmp_4_mask_base = {reg_pmp_4_addr,pmp_4_mask_base_left}; // @[Cat.scala 29:58]
  wire [30:0] _pmp_4_mask_T_1 = pmp_4_mask_base + 31'h1; // @[PMP.scala 60:23]
  wire [30:0] _pmp_4_mask_T_2 = ~_pmp_4_mask_T_1; // @[PMP.scala 60:16]
  wire [30:0] pmp_4_mask_right = pmp_4_mask_base & _pmp_4_mask_T_2; // @[PMP.scala 60:14]
  wire [32:0] _pmp_4_mask_T_3 = {pmp_4_mask_right,2'h3}; // @[Cat.scala 29:58]
  wire  pmp_5_mask_base_left = reg_pmp_5_cfg_a[0]; // @[PMP.scala 59:31]
  wire [30:0] pmp_5_mask_base = {reg_pmp_5_addr,pmp_5_mask_base_left}; // @[Cat.scala 29:58]
  wire [30:0] _pmp_5_mask_T_1 = pmp_5_mask_base + 31'h1; // @[PMP.scala 60:23]
  wire [30:0] _pmp_5_mask_T_2 = ~_pmp_5_mask_T_1; // @[PMP.scala 60:16]
  wire [30:0] pmp_5_mask_right = pmp_5_mask_base & _pmp_5_mask_T_2; // @[PMP.scala 60:14]
  wire [32:0] _pmp_5_mask_T_3 = {pmp_5_mask_right,2'h3}; // @[Cat.scala 29:58]
  wire  pmp_6_mask_base_left = reg_pmp_6_cfg_a[0]; // @[PMP.scala 59:31]
  wire [30:0] pmp_6_mask_base = {reg_pmp_6_addr,pmp_6_mask_base_left}; // @[Cat.scala 29:58]
  wire [30:0] _pmp_6_mask_T_1 = pmp_6_mask_base + 31'h1; // @[PMP.scala 60:23]
  wire [30:0] _pmp_6_mask_T_2 = ~_pmp_6_mask_T_1; // @[PMP.scala 60:16]
  wire [30:0] pmp_6_mask_right = pmp_6_mask_base & _pmp_6_mask_T_2; // @[PMP.scala 60:14]
  wire [32:0] _pmp_6_mask_T_3 = {pmp_6_mask_right,2'h3}; // @[Cat.scala 29:58]
  wire  pmp_7_mask_base_left = reg_pmp_7_cfg_a[0]; // @[PMP.scala 59:31]
  wire [30:0] pmp_7_mask_base = {reg_pmp_7_addr,pmp_7_mask_base_left}; // @[Cat.scala 29:58]
  wire [30:0] _pmp_7_mask_T_1 = pmp_7_mask_base + 31'h1; // @[PMP.scala 60:23]
  wire [30:0] _pmp_7_mask_T_2 = ~_pmp_7_mask_T_1; // @[PMP.scala 60:16]
  wire [30:0] pmp_7_mask_right = pmp_7_mask_base & _pmp_7_mask_T_2; // @[PMP.scala 60:14]
  wire [32:0] _pmp_7_mask_T_3 = {pmp_7_mask_right,2'h3}; // @[Cat.scala 29:58]
  reg [63:0] reg_misa; // @[CSR.scala 464:21]
  wire [6:0] read_mstatus_left_left = {io_status_hpie,io_status_spie,io_status_upie,io_status_mie,io_status_hie,
    io_status_sie,io_status_uie}; // @[CSR.scala 465:38]
  wire [18:0] read_mstatus_left = {io_status_sum,io_status_mprv,io_status_xs,io_status_fs,io_status_mpp,io_status_vs,
    io_status_spp,io_status_mpie,read_mstatus_left_left}; // @[CSR.scala 465:38]
  wire [16:0] read_mstatus_right_left = {io_status_sxl,io_status_uxl,io_status_sd_rv32,io_status_zero1,io_status_tsr,
    io_status_tw,io_status_tvm,io_status_mxr}; // @[CSR.scala 465:38]
  wire [102:0] _read_mstatus_T = {io_status_debug,io_status_cease,io_status_wfi,io_status_isa,io_status_dprv,
    io_status_prv,io_status_sd,io_status_zero2,read_mstatus_right_left,read_mstatus_left}; // @[CSR.scala 465:38]
  wire [63:0] read_mstatus = _read_mstatus_T[63:0]; // @[CSR.scala 465:40]
  wire [7:0] _read_mtvec_T_1 = reg_mtvec[0] ? 8'hfe : 8'h2; // @[CSR.scala 1121:39]
  wire [31:0] _read_mtvec_T_3 = {{24'd0}, _read_mtvec_T_1}; // @[package.scala 154:41]
  wire [31:0] _read_mtvec_T_4 = ~_read_mtvec_T_3; // @[package.scala 154:37]
  wire [31:0] read_mtvec_left = reg_mtvec & _read_mtvec_T_4; // @[package.scala 154:35]
  wire [63:0] read_mtvec = {32'h0,read_mtvec_left}; // @[Cat.scala 29:58]
  wire [7:0] _read_stvec_T_1 = reg_stvec[0] ? 8'hfe : 8'h2; // @[CSR.scala 1121:39]
  wire [38:0] _read_stvec_T_3 = {{31'd0}, _read_stvec_T_1}; // @[package.scala 154:41]
  wire [38:0] _read_stvec_T_4 = ~_read_stvec_T_3; // @[package.scala 154:37]
  wire [38:0] read_stvec_left = reg_stvec & _read_stvec_T_4; // @[package.scala 154:35]
  wire [24:0] read_stvec_right = read_stvec_left[38] ? 25'h1ffffff : 25'h0; // @[Bitwise.scala 72:12]
  wire [63:0] read_stvec = {read_stvec_right,read_stvec_left}; // @[Cat.scala 29:58]
  wire [6:0] left_2 = {reg_bp_0_control_m,1'h0,reg_bp_0_control_s,reg_bp_0_control_u,reg_bp_0_control_x,
    reg_bp_0_control_w,reg_bp_0_control_r}; // @[CSR.scala 471:48]
  wire [63:0] _T_6 = {4'h2,reg_bp_0_control_dmode,46'h40000000000,reg_bp_0_control_action,1'h0,2'h0,
    reg_bp_0_control_tmatch,left_2}; // @[CSR.scala 471:48]
  wire [24:0] right_3 = reg_bp_0_address[38] ? 25'h1ffffff : 25'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _T_9 = {right_3,reg_bp_0_address}; // @[Cat.scala 29:58]
  wire [39:0] _T_11 = ~reg_mepc; // @[CSR.scala 1120:28]
  wire [1:0] _T_13 = reg_misa[2] ? 2'h1 : 2'h3; // @[CSR.scala 1120:36]
  wire [39:0] _GEN_503 = {{38'd0}, _T_13}; // @[CSR.scala 1120:31]
  wire [39:0] _T_14 = _T_11 | _GEN_503; // @[CSR.scala 1120:31]
  wire [39:0] left_4 = ~_T_14; // @[CSR.scala 1120:26]
  wire [23:0] right_5 = left_4[39] ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _T_17 = {right_5,left_4}; // @[Cat.scala 29:58]
  wire [23:0] right_6 = reg_mtval[39] ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _T_20 = {right_6,reg_mtval}; // @[Cat.scala 29:58]
  wire [11:0] left_5 = {2'h0,1'h0,reg_dcsr_cause,3'h0,reg_dcsr_step,reg_dcsr_prv}; // @[CSR.scala 486:27]
  wire [31:0] _T_21 = {4'h4,12'h0,reg_dcsr_ebreakm,1'h0,reg_dcsr_ebreaks,reg_dcsr_ebreaku,left_5}; // @[CSR.scala 486:27]
  wire [39:0] _T_22 = ~reg_dpc; // @[CSR.scala 1120:28]
  wire [39:0] _T_25 = _T_22 | _GEN_503; // @[CSR.scala 1120:31]
  wire [39:0] left_6 = ~_T_25; // @[CSR.scala 1120:26]
  wire [23:0] right_8 = left_6[39] ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _T_28 = {right_8,left_6}; // @[Cat.scala 29:58]
  wire [7:0] read_fcsr = {reg_frm,reg_fflags}; // @[Cat.scala 29:58]
  wire [63:0] read_sie = reg_mie & read_mideleg; // @[CSR.scala 547:28]
  wire [63:0] read_sip = _GEN_43 & read_mideleg; // @[CSR.scala 548:29]
  wire [6:0] left_left_4 = {1'h0,io_status_spie,2'h0,1'h0,io_status_sie,1'h0}; // @[CSR.scala 562:57]
  wire [18:0] left_7 = {io_status_sum,1'h0,io_status_xs,io_status_fs,2'h0,io_status_vs,io_status_spp,1'h0,left_left_4}; // @[CSR.scala 562:57]
  wire [16:0] right_left_4 = {2'h0,io_status_uxl,io_status_sd_rv32,8'h0,2'h0,1'h0,io_status_mxr}; // @[CSR.scala 562:57]
  wire [102:0] _T_29 = {35'h0,4'h0,io_status_sd,27'h0,right_left_4,left_7}; // @[CSR.scala 562:57]
  wire [23:0] right_10 = reg_stval[39] ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _T_33 = {right_10,reg_stval}; // @[Cat.scala 29:58]
  wire [63:0] _T_34 = {reg_satp_mode,16'h0,reg_satp_ppn}; // @[CSR.scala 568:43]
  wire [39:0] _T_35 = ~reg_sepc; // @[CSR.scala 1120:28]
  wire [39:0] _T_38 = _T_35 | _GEN_503; // @[CSR.scala 1120:31]
  wire [39:0] left_8 = ~_T_38; // @[CSR.scala 1120:26]
  wire [23:0] right_12 = left_8[39] ? 24'hffffff : 24'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _T_41 = {right_12,left_8}; // @[Cat.scala 29:58]
  wire [7:0] left_left_left_3 = {reg_pmp_0_cfg_l,2'h0,reg_pmp_0_cfg_a,reg_pmp_0_cfg_x,reg_pmp_0_cfg_w,reg_pmp_0_cfg_r}; // @[package.scala 36:38]
  wire [7:0] left_right_left_5 = {reg_pmp_2_cfg_l,2'h0,reg_pmp_2_cfg_a,reg_pmp_2_cfg_x,reg_pmp_2_cfg_w,reg_pmp_2_cfg_r}; // @[package.scala 36:38]
  wire [7:0] right_left_left_4 = {reg_pmp_4_cfg_l,2'h0,reg_pmp_4_cfg_a,reg_pmp_4_cfg_x,reg_pmp_4_cfg_w,reg_pmp_4_cfg_r}; // @[package.scala 36:38]
  wire [7:0] right_right_left_5 = {reg_pmp_6_cfg_l,2'h0,reg_pmp_6_cfg_a,reg_pmp_6_cfg_x,reg_pmp_6_cfg_w,reg_pmp_6_cfg_r}
    ; // @[package.scala 36:38]
  wire [15:0] left_left_5 = {reg_pmp_1_cfg_l,2'h0,reg_pmp_1_cfg_a,reg_pmp_1_cfg_x,reg_pmp_1_cfg_w,reg_pmp_1_cfg_r,
    left_left_left_3}; // @[Cat.scala 29:58]
  wire [31:0] left_17 = {reg_pmp_3_cfg_l,2'h0,reg_pmp_3_cfg_a,reg_pmp_3_cfg_x,reg_pmp_3_cfg_w,reg_pmp_3_cfg_r,
    left_right_left_5,left_left_5}; // @[Cat.scala 29:58]
  wire [15:0] right_left_5 = {reg_pmp_5_cfg_l,2'h0,reg_pmp_5_cfg_a,reg_pmp_5_cfg_x,reg_pmp_5_cfg_w,reg_pmp_5_cfg_r,
    right_left_left_4}; // @[Cat.scala 29:58]
  wire [63:0] _T_42 = {reg_pmp_7_cfg_l,2'h0,reg_pmp_7_cfg_a,reg_pmp_7_cfg_x,reg_pmp_7_cfg_w,reg_pmp_7_cfg_r,
    right_right_left_5,right_left_5,left_17}; // @[Cat.scala 29:58]
  reg [63:0] reg_custom_0; // @[CSR.scala 591:43]
  wire  _T_45 = io_rw_addr == 12'h7a1; // @[CSR.scala 599:73]
  wire  _T_46 = io_rw_addr == 12'h7a2; // @[CSR.scala 599:73]
  wire  _T_48 = io_rw_addr == 12'h301; // @[CSR.scala 599:73]
  wire  _T_49 = io_rw_addr == 12'h300; // @[CSR.scala 599:73]
  wire  _T_50 = io_rw_addr == 12'h305; // @[CSR.scala 599:73]
  wire  _T_51 = io_rw_addr == 12'h344; // @[CSR.scala 599:73]
  wire  _T_52 = io_rw_addr == 12'h304; // @[CSR.scala 599:73]
  wire  _T_53 = io_rw_addr == 12'h340; // @[CSR.scala 599:73]
  wire  _T_54 = io_rw_addr == 12'h341; // @[CSR.scala 599:73]
  wire  _T_55 = io_rw_addr == 12'h343; // @[CSR.scala 599:73]
  wire  _T_56 = io_rw_addr == 12'h342; // @[CSR.scala 599:73]
  wire  _T_57 = io_rw_addr == 12'hf14; // @[CSR.scala 599:73]
  wire  _T_58 = io_rw_addr == 12'h7b0; // @[CSR.scala 599:73]
  wire  _T_59 = io_rw_addr == 12'h7b1; // @[CSR.scala 599:73]
  wire  _T_60 = io_rw_addr == 12'h7b2; // @[CSR.scala 599:73]
  wire  _T_61 = io_rw_addr == 12'h1; // @[CSR.scala 599:73]
  wire  _T_62 = io_rw_addr == 12'h2; // @[CSR.scala 599:73]
  wire  _T_63 = io_rw_addr == 12'h3; // @[CSR.scala 599:73]
  wire  _T_64 = io_rw_addr == 12'hb00; // @[CSR.scala 599:73]
  wire  _T_65 = io_rw_addr == 12'hb02; // @[CSR.scala 599:73]
  wire  _T_153 = io_rw_addr == 12'h306; // @[CSR.scala 599:73]
  wire  _T_154 = io_rw_addr == 12'hc00; // @[CSR.scala 599:73]
  wire  _T_155 = io_rw_addr == 12'hc02; // @[CSR.scala 599:73]
  wire  _T_156 = io_rw_addr == 12'h100; // @[CSR.scala 599:73]
  wire  _T_157 = io_rw_addr == 12'h144; // @[CSR.scala 599:73]
  wire  _T_158 = io_rw_addr == 12'h104; // @[CSR.scala 599:73]
  wire  _T_159 = io_rw_addr == 12'h140; // @[CSR.scala 599:73]
  wire  _T_160 = io_rw_addr == 12'h142; // @[CSR.scala 599:73]
  wire  _T_161 = io_rw_addr == 12'h143; // @[CSR.scala 599:73]
  wire  _T_162 = io_rw_addr == 12'h180; // @[CSR.scala 599:73]
  wire  _T_163 = io_rw_addr == 12'h141; // @[CSR.scala 599:73]
  wire  _T_164 = io_rw_addr == 12'h105; // @[CSR.scala 599:73]
  wire  _T_165 = io_rw_addr == 12'h106; // @[CSR.scala 599:73]
  wire  _T_166 = io_rw_addr == 12'h303; // @[CSR.scala 599:73]
  wire  _T_167 = io_rw_addr == 12'h302; // @[CSR.scala 599:73]
  wire  _T_168 = io_rw_addr == 12'h3a0; // @[CSR.scala 599:73]
  wire  _T_170 = io_rw_addr == 12'h3b0; // @[CSR.scala 599:73]
  wire  _T_171 = io_rw_addr == 12'h3b1; // @[CSR.scala 599:73]
  wire  _T_172 = io_rw_addr == 12'h3b2; // @[CSR.scala 599:73]
  wire  _T_173 = io_rw_addr == 12'h3b3; // @[CSR.scala 599:73]
  wire  _T_174 = io_rw_addr == 12'h3b4; // @[CSR.scala 599:73]
  wire  _T_175 = io_rw_addr == 12'h3b5; // @[CSR.scala 599:73]
  wire  _T_176 = io_rw_addr == 12'h3b6; // @[CSR.scala 599:73]
  wire  _T_177 = io_rw_addr == 12'h3b7; // @[CSR.scala 599:73]
  wire  _T_186 = io_rw_addr == 12'h7c1; // @[CSR.scala 599:73]
  wire  _T_187 = io_rw_addr == 12'hf12; // @[CSR.scala 599:73]
  wire  _T_189 = io_rw_addr == 12'hf13; // @[CSR.scala 599:73]
  wire [63:0] _wdata_T_1 = io_rw_cmd[1] ? io_rw_rdata : 64'h0; // @[CSR.scala 1098:9]
  wire [63:0] _wdata_T_2 = _wdata_T_1 | io_rw_wdata; // @[CSR.scala 1098:34]
  wire [63:0] _wdata_T_5 = &(io_rw_cmd[1:0]) ? io_rw_wdata : 64'h0; // @[CSR.scala 1098:49]
  wire [63:0] _wdata_T_6 = ~_wdata_T_5; // @[CSR.scala 1098:45]
  wire [63:0] wdata = _wdata_T_2 & _wdata_T_6; // @[CSR.scala 1098:43]
  wire [31:0] _T_203 = _T_190 & 32'h20200000; // @[Decode.scala 14:65]
  wire  _T_204 = _T_203 == 32'h20000000; // @[Decode.scala 14:121]
  wire [31:0] _T_206 = _T_190 & 32'h32200000; // @[Decode.scala 14:65]
  wire  _T_207 = _T_206 == 32'h10000000; // @[Decode.scala 14:121]
  wire  insn_cease = system_insn & _T_204; // @[CSR.scala 614:95]
  wire  insn_wfi = system_insn & _T_207; // @[CSR.scala 614:95]
  wire [31:0] _T_218 = {io_decode_0_csr, 20'h0}; // @[CSR.scala 621:30]
  wire [31:0] _T_225 = _T_218 & 32'h12400000; // @[Decode.scala 14:65]
  wire  _T_226 = _T_225 == 32'h10000000; // @[Decode.scala 14:121]
  wire [31:0] _T_227 = _T_218 & 32'h40000000; // @[Decode.scala 14:65]
  wire  _T_228 = _T_227 == 32'h40000000; // @[Decode.scala 14:121]
  wire  is_ret = _T_226 | _T_228; // @[Decode.scala 15:30]
  wire [31:0] _T_234 = _T_218 & 32'h32200000; // @[Decode.scala 14:65]
  wire  is_wfi = _T_234 == 32'h10000000; // @[Decode.scala 14:121]
  wire [31:0] _T_237 = _T_218 & 32'h42000000; // @[Decode.scala 14:65]
  wire  is_sfence = _T_237 == 32'h2000000; // @[Decode.scala 14:121]
  wire  _allow_wfi_T = reg_mstatus_prv > 2'h1; // @[CSR.scala 623:63]
  wire  allow_wfi = (reg_mstatus_prv > 2'h1) | (~reg_mstatus_tw); // @[CSR.scala 623:71]
  wire  allow_sfence_vma = _allow_wfi_T | (~reg_mstatus_tvm); // @[CSR.scala 624:70]
  wire  allow_sret = _allow_wfi_T | (~reg_mstatus_tsr); // @[CSR.scala 625:72]
  wire [4:0] counter_addr = io_decode_0_csr[4:0]; // @[CSR.scala 626:34]
  wire [31:0] _allow_counter_T_1 = read_mcounteren >> counter_addr; // @[CSR.scala 627:68]
  wire [31:0] _allow_counter_T_6 = read_scounteren >> counter_addr; // @[CSR.scala 628:71]
  wire  _allow_counter_T_8 = (reg_mstatus_prv >= 2'h1) | (_allow_counter_T_6[0]); // @[CSR.scala 628:53]
  wire  allow_counter = (_allow_wfi_T | (_allow_counter_T_1[0])) & _allow_counter_T_8; // @[CSR.scala 627:84]
  wire [11:0] _io_decode_0_fp_csr_T = io_decode_0_csr & 12'h900; // @[Decode.scala 14:65]
  wire  _io_decode_0_read_illegal_T_1 = reg_mstatus_prv < (io_decode_0_csr[9:8]); // @[CSR.scala 633:44]
  wire  _io_decode_0_read_illegal_T_17 = io_decode_0_csr == 12'h7b1; // @[CSR.scala 617:99]
  wire  _io_decode_0_read_illegal_T_120 = io_decode_0_csr == 12'h180; // @[CSR.scala 617:99]
  wire  _io_decode_0_read_illegal_T_162 = (((((((((((((((io_decode_0_csr == 12'h7a0) | (io_decode_0_csr == 12'h7a1)) | (
    io_decode_0_csr == 12'h7a2)) | (io_decode_0_csr == 12'h7a3)) | (io_decode_0_csr == 12'h301)) | (io_decode_0_csr == 12'h300
    )) | (io_decode_0_csr == 12'h305)) | (io_decode_0_csr == 12'h344)) | (io_decode_0_csr == 12'h304)) | (
    io_decode_0_csr == 12'h340)) | (io_decode_0_csr == 12'h341)) | (io_decode_0_csr == 12'h343)) | (io_decode_0_csr == 12'h342
    )) | (io_decode_0_csr == 12'hf14)) | (io_decode_0_csr == 12'h7b0)) | _io_decode_0_read_illegal_T_17; // @[CSR.scala 617:115]
  wire  _io_decode_0_read_illegal_T_177 = ((((((((((((((_io_decode_0_read_illegal_T_162 | (io_decode_0_csr == 12'h7b2))
     | (io_decode_0_csr == 12'h1)) | (io_decode_0_csr == 12'h2)) | (io_decode_0_csr == 12'h3)) | (io_decode_0_csr == 12'hb00
    )) | (io_decode_0_csr == 12'hb02)) | (io_decode_0_csr == 12'h323)) | (io_decode_0_csr == 12'hb03)) | (
    io_decode_0_csr == 12'hc03)) | (io_decode_0_csr == 12'h324)) | (io_decode_0_csr == 12'hb04)) | (io_decode_0_csr == 12'hc04
    )) | (io_decode_0_csr == 12'h325)) | (io_decode_0_csr == 12'hb05)) | (io_decode_0_csr == 12'hc05); // @[CSR.scala 617:115]
  wire  _io_decode_0_read_illegal_T_192 = ((((((((((((((_io_decode_0_read_illegal_T_177 | (io_decode_0_csr == 12'h326))
     | (io_decode_0_csr == 12'hb06)) | (io_decode_0_csr == 12'hc06)) | (io_decode_0_csr == 12'h327)) | (io_decode_0_csr
     == 12'hb07)) | (io_decode_0_csr == 12'hc07)) | (io_decode_0_csr == 12'h328)) | (io_decode_0_csr == 12'hb08)) | (
    io_decode_0_csr == 12'hc08)) | (io_decode_0_csr == 12'h329)) | (io_decode_0_csr == 12'hb09)) | (io_decode_0_csr == 12'hc09
    )) | (io_decode_0_csr == 12'h32a)) | (io_decode_0_csr == 12'hb0a)) | (io_decode_0_csr == 12'hc0a); // @[CSR.scala 617:115]
  wire  _io_decode_0_read_illegal_T_207 = ((((((((((((((_io_decode_0_read_illegal_T_192 | (io_decode_0_csr == 12'h32b))
     | (io_decode_0_csr == 12'hb0b)) | (io_decode_0_csr == 12'hc0b)) | (io_decode_0_csr == 12'h32c)) | (io_decode_0_csr
     == 12'hb0c)) | (io_decode_0_csr == 12'hc0c)) | (io_decode_0_csr == 12'h32d)) | (io_decode_0_csr == 12'hb0d)) | (
    io_decode_0_csr == 12'hc0d)) | (io_decode_0_csr == 12'h32e)) | (io_decode_0_csr == 12'hb0e)) | (io_decode_0_csr == 12'hc0e
    )) | (io_decode_0_csr == 12'h32f)) | (io_decode_0_csr == 12'hb0f)) | (io_decode_0_csr == 12'hc0f); // @[CSR.scala 617:115]
  wire  _io_decode_0_read_illegal_T_222 = ((((((((((((((_io_decode_0_read_illegal_T_207 | (io_decode_0_csr == 12'h330))
     | (io_decode_0_csr == 12'hb10)) | (io_decode_0_csr == 12'hc10)) | (io_decode_0_csr == 12'h331)) | (io_decode_0_csr
     == 12'hb11)) | (io_decode_0_csr == 12'hc11)) | (io_decode_0_csr == 12'h332)) | (io_decode_0_csr == 12'hb12)) | (
    io_decode_0_csr == 12'hc12)) | (io_decode_0_csr == 12'h333)) | (io_decode_0_csr == 12'hb13)) | (io_decode_0_csr == 12'hc13
    )) | (io_decode_0_csr == 12'h334)) | (io_decode_0_csr == 12'hb14)) | (io_decode_0_csr == 12'hc14); // @[CSR.scala 617:115]
  wire  _io_decode_0_read_illegal_T_237 = ((((((((((((((_io_decode_0_read_illegal_T_222 | (io_decode_0_csr == 12'h335))
     | (io_decode_0_csr == 12'hb15)) | (io_decode_0_csr == 12'hc15)) | (io_decode_0_csr == 12'h336)) | (io_decode_0_csr
     == 12'hb16)) | (io_decode_0_csr == 12'hc16)) | (io_decode_0_csr == 12'h337)) | (io_decode_0_csr == 12'hb17)) | (
    io_decode_0_csr == 12'hc17)) | (io_decode_0_csr == 12'h338)) | (io_decode_0_csr == 12'hb18)) | (io_decode_0_csr == 12'hc18
    )) | (io_decode_0_csr == 12'h339)) | (io_decode_0_csr == 12'hb19)) | (io_decode_0_csr == 12'hc19); // @[CSR.scala 617:115]
  wire  _io_decode_0_read_illegal_T_252 = ((((((((((((((_io_decode_0_read_illegal_T_237 | (io_decode_0_csr == 12'h33a))
     | (io_decode_0_csr == 12'hb1a)) | (io_decode_0_csr == 12'hc1a)) | (io_decode_0_csr == 12'h33b)) | (io_decode_0_csr
     == 12'hb1b)) | (io_decode_0_csr == 12'hc1b)) | (io_decode_0_csr == 12'h33c)) | (io_decode_0_csr == 12'hb1c)) | (
    io_decode_0_csr == 12'hc1c)) | (io_decode_0_csr == 12'h33d)) | (io_decode_0_csr == 12'hb1d)) | (io_decode_0_csr == 12'hc1d
    )) | (io_decode_0_csr == 12'h33e)) | (io_decode_0_csr == 12'hb1e)) | (io_decode_0_csr == 12'hc1e); // @[CSR.scala 617:115]
  wire  _io_decode_0_read_illegal_T_267 = ((((((((((((((_io_decode_0_read_illegal_T_252 | (io_decode_0_csr == 12'h33f))
     | (io_decode_0_csr == 12'hb1f)) | (io_decode_0_csr == 12'hc1f)) | (io_decode_0_csr == 12'h306)) | (io_decode_0_csr
     == 12'hc00)) | (io_decode_0_csr == 12'hc02)) | (io_decode_0_csr == 12'h100)) | (io_decode_0_csr == 12'h144)) | (
    io_decode_0_csr == 12'h104)) | (io_decode_0_csr == 12'h140)) | (io_decode_0_csr == 12'h142)) | (io_decode_0_csr == 12'h143
    )) | (io_decode_0_csr == 12'h180)) | (io_decode_0_csr == 12'h141)) | (io_decode_0_csr == 12'h105); // @[CSR.scala 617:115]
  wire  _io_decode_0_read_illegal_T_282 = ((((((((((((((_io_decode_0_read_illegal_T_267 | (io_decode_0_csr == 12'h106))
     | (io_decode_0_csr == 12'h303)) | (io_decode_0_csr == 12'h302)) | (io_decode_0_csr == 12'h3a0)) | (io_decode_0_csr
     == 12'h3a2)) | (io_decode_0_csr == 12'h3b0)) | (io_decode_0_csr == 12'h3b1)) | (io_decode_0_csr == 12'h3b2)) | (
    io_decode_0_csr == 12'h3b3)) | (io_decode_0_csr == 12'h3b4)) | (io_decode_0_csr == 12'h3b5)) | (io_decode_0_csr == 12'h3b6
    )) | (io_decode_0_csr == 12'h3b7)) | (io_decode_0_csr == 12'h3b8)) | (io_decode_0_csr == 12'h3b9); // @[CSR.scala 617:115]
  wire  _io_decode_0_read_illegal_T_292 = (((((((((_io_decode_0_read_illegal_T_282 | (io_decode_0_csr == 12'h3ba)) | (
    io_decode_0_csr == 12'h3bb)) | (io_decode_0_csr == 12'h3bc)) | (io_decode_0_csr == 12'h3bd)) | (io_decode_0_csr == 12'h3be
    )) | (io_decode_0_csr == 12'h3bf)) | (io_decode_0_csr == 12'h7c1)) | (io_decode_0_csr == 12'hf12)) | (
    io_decode_0_csr == 12'hf11)) | (io_decode_0_csr == 12'hf13); // @[CSR.scala 617:115]
  wire  _io_decode_0_read_illegal_T_293 = ~_io_decode_0_read_illegal_T_292; // @[CSR.scala 634:7]
  wire  _io_decode_0_read_illegal_T_294 = (reg_mstatus_prv < (io_decode_0_csr[9:8])) | _io_decode_0_read_illegal_T_293; // @[CSR.scala 633:62]
  wire  _io_decode_0_read_illegal_T_296 = ~allow_sfence_vma; // @[CSR.scala 635:35]
  wire  _io_decode_0_read_illegal_T_297 = _io_decode_0_read_illegal_T_120 & (~allow_sfence_vma); // @[CSR.scala 635:32]
  wire  _io_decode_0_read_illegal_T_298 = _io_decode_0_read_illegal_T_294 | _io_decode_0_read_illegal_T_297; // @[CSR.scala 634:32]
  wire  _io_decode_0_read_illegal_T_301 = (io_decode_0_csr >= 12'hc00) & (io_decode_0_csr < 12'hc20); // @[package.scala 185:55]
  wire  _io_decode_0_read_illegal_T_304 = (io_decode_0_csr >= 12'hc80) & (io_decode_0_csr < 12'hca0); // @[package.scala 185:55]
  wire  _io_decode_0_read_illegal_T_307 = (_io_decode_0_read_illegal_T_301 | _io_decode_0_read_illegal_T_304) & (~
    allow_counter); // @[CSR.scala 636:130]
  wire  _io_decode_0_read_illegal_T_308 = _io_decode_0_read_illegal_T_298 | _io_decode_0_read_illegal_T_307; // @[CSR.scala 635:53]
  wire [11:0] _io_decode_0_read_illegal_T_309 = io_decode_0_csr & 12'hc10; // @[Decode.scala 14:65]
  wire  _io_decode_0_read_illegal_T_310 = _io_decode_0_read_illegal_T_309 == 12'h410; // @[Decode.scala 14:121]
  wire  _io_decode_0_read_illegal_T_314 = _io_decode_0_read_illegal_T_310 & _T_274; // @[CSR.scala 637:42]
  wire  _io_decode_0_read_illegal_T_315 = _io_decode_0_read_illegal_T_308 | _io_decode_0_read_illegal_T_314; // @[CSR.scala 636:148]
  wire  _io_decode_0_read_illegal_T_318 = io_decode_0_fp_csr & io_decode_0_fp_illegal; // @[CSR.scala 639:21]
  wire  _io_decode_0_system_illegal_T_3 = is_wfi & (~allow_wfi); // @[CSR.scala 643:14]
  wire  _io_decode_0_system_illegal_T_4 = _io_decode_0_read_illegal_T_1 | _io_decode_0_system_illegal_T_3; // @[CSR.scala 642:64]
  wire  _io_decode_0_system_illegal_T_6 = is_ret & (~allow_sret); // @[CSR.scala 644:14]
  wire  _io_decode_0_system_illegal_T_7 = _io_decode_0_system_illegal_T_4 | _io_decode_0_system_illegal_T_6; // @[CSR.scala 643:28]
  wire  _io_decode_0_system_illegal_T_11 = (is_ret & (io_decode_0_csr[10])) & _T_274; // @[CSR.scala 645:32]
  wire  _io_decode_0_system_illegal_T_12 = _io_decode_0_system_illegal_T_7 | _io_decode_0_system_illegal_T_11; // @[CSR.scala 644:29]
  wire  _io_decode_0_system_illegal_T_14 = is_sfence & _io_decode_0_read_illegal_T_296; // @[CSR.scala 646:17]
  wire [11:0] _debugTVec_T = insn_break ? 12'h800 : 12'h808; // @[CSR.scala 657:37]
  wire [11:0] debugTVec = reg_debug ? _debugTVec_T : 12'h800; // @[CSR.scala 657:22]
  wire [63:0] notDebugTVec_base = delegate ? read_stvec : read_mtvec; // @[CSR.scala 665:19]
  wire [7:0] notDebugTVec_interruptVec_left = {cause[5:0], 2'h0}; // @[CSR.scala 666:59]
  wire [55:0] notDebugTVec_interruptVec_right = notDebugTVec_base[63:8]; // @[CSR.scala 667:33]
  wire [63:0] notDebugTVec_interruptVec = {notDebugTVec_interruptVec_right,notDebugTVec_interruptVec_left}; // @[Cat.scala 29:58]
  wire  notDebugTVec_doVector = ((notDebugTVec_base[0]) & (cause[63])) & ((cause_lsbs[7:6]) == 2'h0); // @[CSR.scala 668:55]
  wire [63:0] _notDebugTVec_T_1 = {notDebugTVec_base[63:2], 2'h0}; // @[CSR.scala 669:56]
  wire [63:0] notDebugTVec = notDebugTVec_doVector ? notDebugTVec_interruptVec : _notDebugTVec_T_1; // @[CSR.scala 669:8]
  wire [63:0] tvec = trapToDebug ? {{52'd0}, debugTVec} : notDebugTVec; // @[CSR.scala 671:17]
  wire  _io_status_dprv_x64_T_1 = reg_mstatus_mprv & _T_274; // @[CSR.scala 682:53]
  reg [1:0] io_status_dprv_REG; // @[CSR.scala 682:24]
  wire [1:0] _T_242 = insn_ret + insn_call; // @[Bitwise.scala 47:55]
  wire [1:0] _T_244 = insn_break + io_exception; // @[Bitwise.scala 47:55]
  wire [2:0] _T_246 = _T_242 + _T_244; // @[Bitwise.scala 47:55]
  wire  _T_255 = (insn_wfi & _io_interrupt_T) & _T_274; // @[CSR.scala 689:36]
  wire  _GEN_46 = _T_255 | reg_wfi; // @[CSR.scala 689:51 CSR.scala 689:61 CSR.scala 411:50]
  wire  _T_258 = ((|pending_interrupts) | io_interrupts_debug) | exception; // @[CSR.scala 690:55]
  wire  _T_260 = io_retire | exception; // @[CSR.scala 692:22]
  wire  _GEN_48 = _T_260 | reg_singleStepped; // @[CSR.scala 692:36 CSR.scala 692:56 CSR.scala 366:30]
  wire [39:0] _epc_T = ~io_pc; // @[CSR.scala 1119:28]
  wire [39:0] _epc_T_1 = _epc_T | 40'h1; // @[CSR.scala 1119:31]
  wire [39:0] epc = ~_epc_T_1; // @[CSR.scala 1119:26]
  wire [1:0] _reg_dcsr_cause_T = causeIsDebugTrigger ? 2'h2 : 2'h1; // @[CSR.scala 706:86]
  wire [1:0] _reg_dcsr_cause_T_1 = causeIsDebugInt ? 2'h3 : _reg_dcsr_cause_T; // @[CSR.scala 706:56]
  wire [2:0] _reg_dcsr_cause_T_2 = reg_singleStepped ? 3'h4 : {{1'd0}, _reg_dcsr_cause_T_1}; // @[CSR.scala 706:30]
  wire  _GEN_50 = _T_274 | reg_debug; // @[CSR.scala 703:25 CSR.scala 704:19 CSR.scala 363:22]
  wire [39:0] _GEN_51 = _T_274 ? epc : reg_dpc; // @[CSR.scala 703:25 CSR.scala 705:17 CSR.scala 364:20]
  wire [1:0] _GEN_53 = _T_274 ? reg_mstatus_prv : reg_dcsr_prv; // @[CSR.scala 703:25 CSR.scala 707:22 CSR.scala 322:21]
  wire [39:0] _GEN_55 = delegate ? epc : reg_sepc; // @[CSR.scala 710:27 CSR.scala 711:16 CSR.scala 405:21]
  wire [63:0] _GEN_56 = delegate ? cause : reg_scause; // @[CSR.scala 710:27 CSR.scala 712:18 CSR.scala 406:23]
  wire [39:0] _GEN_58 = delegate ? io_tval : reg_stval; // @[CSR.scala 710:27 CSR.scala 714:17 CSR.scala 407:22]
  wire  _GEN_59 = delegate ? reg_mstatus_sie : reg_mstatus_spie; // @[CSR.scala 710:27 CSR.scala 715:24 CSR.scala 314:24]
  wire [1:0] _GEN_60 = delegate ? reg_mstatus_prv : {{1'd0}, reg_mstatus_spp}; // @[CSR.scala 710:27 CSR.scala 716:23 CSR.scala 314:24]
  wire  _GEN_61 = delegate ? 1'h0 : reg_mstatus_sie; // @[CSR.scala 710:27 CSR.scala 717:23 CSR.scala 314:24]
  wire [39:0] _GEN_63 = delegate ? reg_mepc : epc; // @[CSR.scala 710:27 CSR.scala 385:21 CSR.scala 720:16]
  wire [63:0] _GEN_64 = delegate ? reg_mcause : cause; // @[CSR.scala 710:27 CSR.scala 386:27 CSR.scala 721:18]
  wire [39:0] _GEN_65 = delegate ? reg_mtval : io_tval; // @[CSR.scala 710:27 CSR.scala 387:22 CSR.scala 723:17]
  wire  _GEN_66 = delegate ? reg_mstatus_mpie : reg_mstatus_mie; // @[CSR.scala 710:27 CSR.scala 314:24 CSR.scala 724:24]
  wire [1:0] _GEN_67 = delegate ? reg_mstatus_mpp : reg_mstatus_prv; // @[CSR.scala 710:27 CSR.scala 314:24 CSR.scala 725:23]
  wire  _GEN_68 = delegate & reg_mstatus_mie; // @[CSR.scala 710:27 CSR.scala 314:24 CSR.scala 726:23]
  wire  _GEN_69 = trapToDebug ? _GEN_50 : reg_debug; // @[CSR.scala 702:24 CSR.scala 363:22]
  wire [39:0] _GEN_70 = trapToDebug ? _GEN_51 : reg_dpc; // @[CSR.scala 702:24 CSR.scala 364:20]
  wire [1:0] _GEN_72 = trapToDebug ? _GEN_53 : reg_dcsr_prv; // @[CSR.scala 702:24 CSR.scala 322:21]
  wire [39:0] _GEN_74 = trapToDebug ? reg_sepc : _GEN_55; // @[CSR.scala 702:24 CSR.scala 405:21]
  wire [63:0] _GEN_75 = trapToDebug ? reg_scause : _GEN_56; // @[CSR.scala 702:24 CSR.scala 406:23]
  wire [39:0] _GEN_77 = trapToDebug ? reg_stval : _GEN_58; // @[CSR.scala 702:24 CSR.scala 407:22]
  wire  _GEN_78 = trapToDebug ? reg_mstatus_spie : _GEN_59; // @[CSR.scala 702:24 CSR.scala 314:24]
  wire [1:0] _GEN_79 = trapToDebug ? {{1'd0}, reg_mstatus_spp} : _GEN_60; // @[CSR.scala 702:24 CSR.scala 314:24]
  wire  _GEN_80 = trapToDebug ? reg_mstatus_sie : _GEN_61; // @[CSR.scala 702:24 CSR.scala 314:24]
  wire [39:0] _GEN_81 = trapToDebug ? reg_mepc : _GEN_63; // @[CSR.scala 702:24 CSR.scala 385:21]
  wire [63:0] _GEN_82 = trapToDebug ? reg_mcause : _GEN_64; // @[CSR.scala 702:24 CSR.scala 386:27]
  wire [39:0] _GEN_83 = trapToDebug ? reg_mtval : _GEN_65; // @[CSR.scala 702:24 CSR.scala 387:22]
  wire  _GEN_84 = trapToDebug ? reg_mstatus_mpie : _GEN_66; // @[CSR.scala 702:24 CSR.scala 314:24]
  wire [1:0] _GEN_85 = trapToDebug ? reg_mstatus_mpp : _GEN_67; // @[CSR.scala 702:24 CSR.scala 314:24]
  wire  _GEN_86 = trapToDebug ? reg_mstatus_mie : _GEN_68; // @[CSR.scala 702:24 CSR.scala 314:24]
  wire  _GEN_87 = exception ? _GEN_69 : reg_debug; // @[CSR.scala 701:20 CSR.scala 363:22]
  wire [39:0] _GEN_88 = exception ? _GEN_70 : reg_dpc; // @[CSR.scala 701:20 CSR.scala 364:20]
  wire [1:0] _GEN_90 = exception ? _GEN_72 : reg_dcsr_prv; // @[CSR.scala 701:20 CSR.scala 322:21]
  wire [39:0] _GEN_92 = exception ? _GEN_74 : reg_sepc; // @[CSR.scala 701:20 CSR.scala 405:21]
  wire [63:0] _GEN_93 = exception ? _GEN_75 : reg_scause; // @[CSR.scala 701:20 CSR.scala 406:23]
  wire [39:0] _GEN_95 = exception ? _GEN_77 : reg_stval; // @[CSR.scala 701:20 CSR.scala 407:22]
  wire  _GEN_96 = exception ? _GEN_78 : reg_mstatus_spie; // @[CSR.scala 701:20 CSR.scala 314:24]
  wire [1:0] _GEN_97 = exception ? _GEN_79 : {{1'd0}, reg_mstatus_spp}; // @[CSR.scala 701:20 CSR.scala 314:24]
  wire  _GEN_98 = exception ? _GEN_80 : reg_mstatus_sie; // @[CSR.scala 701:20 CSR.scala 314:24]
  wire [39:0] _GEN_99 = exception ? _GEN_81 : reg_mepc; // @[CSR.scala 701:20 CSR.scala 385:21]
  wire [63:0] _GEN_100 = exception ? _GEN_82 : reg_mcause; // @[CSR.scala 701:20 CSR.scala 386:27]
  wire [39:0] _GEN_101 = exception ? _GEN_83 : reg_mtval; // @[CSR.scala 701:20 CSR.scala 387:22]
  wire  _GEN_102 = exception ? _GEN_84 : reg_mstatus_mpie; // @[CSR.scala 701:20 CSR.scala 314:24]
  wire [1:0] _GEN_103 = exception ? _GEN_85 : reg_mstatus_mpp; // @[CSR.scala 701:20 CSR.scala 314:24]
  wire  _GEN_104 = exception ? _GEN_86 : reg_mstatus_mie; // @[CSR.scala 701:20 CSR.scala 314:24]
  wire [39:0] _GEN_107 = io_rw_addr[10] ? left_6 : left_4; // @[CSR.scala 758:53 CSR.scala 761:15 CSR.scala 767:15]
  wire  _GEN_108 = io_rw_addr[10] ? _GEN_104 : reg_mstatus_mpie; // @[CSR.scala 758:53 CSR.scala 763:23]
  wire  _GEN_109 = io_rw_addr[10] ? _GEN_102 : 1'h1; // @[CSR.scala 758:53 CSR.scala 764:24]
  wire [1:0] _GEN_110 = io_rw_addr[10] ? _GEN_103 : 2'h0; // @[CSR.scala 758:53 CSR.scala 765:23]
  wire  _GEN_111 = _T_396 ? reg_mstatus_spie : _GEN_98; // @[CSR.scala 752:52 CSR.scala 753:23]
  wire  _GEN_112 = _T_396 | _GEN_96; // @[CSR.scala 752:52 CSR.scala 754:24]
  wire [1:0] _GEN_113 = _T_396 ? 2'h0 : _GEN_97; // @[CSR.scala 752:52 CSR.scala 755:23]
  wire [39:0] _GEN_115 = _T_396 ? left_8 : _GEN_107; // @[CSR.scala 752:52 CSR.scala 757:15]
  wire  _GEN_117 = _T_396 ? _GEN_104 : _GEN_108; // @[CSR.scala 752:52]
  wire  _GEN_118 = _T_396 ? _GEN_102 : _GEN_109; // @[CSR.scala 752:52]
  wire [1:0] _GEN_119 = _T_396 ? _GEN_103 : _GEN_110; // @[CSR.scala 752:52]
  wire  _GEN_120 = insn_ret ? _GEN_111 : _GEN_98; // @[CSR.scala 751:19]
  wire  _GEN_121 = insn_ret ? _GEN_112 : _GEN_96; // @[CSR.scala 751:19]
  wire [1:0] _GEN_122 = insn_ret ? _GEN_113 : _GEN_97; // @[CSR.scala 751:19]
  wire [63:0] _GEN_124 = insn_ret ? {{24'd0}, _GEN_115} : tvec; // @[CSR.scala 751:19 CSR.scala 672:11]
  wire  _GEN_126 = insn_ret ? _GEN_117 : _GEN_104; // @[CSR.scala 751:19]
  wire  _GEN_127 = insn_ret ? _GEN_118 : _GEN_102; // @[CSR.scala 751:19]
  wire [1:0] _GEN_128 = insn_ret ? _GEN_119 : _GEN_103; // @[CSR.scala 751:19]
  reg  io_status_cease_r; // @[Reg.scala 27:20]
  wire  _GEN_129 = insn_cease | io_status_cease_r; // @[Reg.scala 28:19 Reg.scala 28:23 Reg.scala 27:20]
  wire [63:0] _io_rw_rdata_T_1 = _T_45 ? _T_6 : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_2 = _T_46 ? _T_9 : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_4 = _T_48 ? reg_misa : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_5 = _T_49 ? read_mstatus : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_6 = _T_50 ? read_mtvec : 64'h0; // @[Mux.scala 27:72]
  wire [15:0] _io_rw_rdata_T_7 = _T_51 ? read_mip : 16'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_8 = _T_52 ? reg_mie : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_9 = _T_53 ? reg_mscratch : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_10 = _T_54 ? _T_17 : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_11 = _T_55 ? _T_20 : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_12 = _T_56 ? reg_mcause : 64'h0; // @[Mux.scala 27:72]
  wire  _io_rw_rdata_T_13 = _T_57 & io_hartid; // @[Mux.scala 27:72]
  wire [31:0] _io_rw_rdata_T_14 = _T_58 ? _T_21 : 32'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_15 = _T_59 ? _T_28 : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_16 = _T_60 ? reg_dscratch : 64'h0; // @[Mux.scala 27:72]
  wire [4:0] _io_rw_rdata_T_17 = _T_61 ? reg_fflags : 5'h0; // @[Mux.scala 27:72]
  wire [2:0] _io_rw_rdata_T_18 = _T_62 ? reg_frm : 3'h0; // @[Mux.scala 27:72]
  wire [7:0] _io_rw_rdata_T_19 = _T_63 ? read_fcsr : 8'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_20 = _T_64 ? value_1 : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_21 = _T_65 ? value : 64'h0; // @[Mux.scala 27:72]
  wire [31:0] _io_rw_rdata_T_109 = _T_153 ? read_mcounteren : 32'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_110 = _T_154 ? value_1 : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_111 = _T_155 ? value : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_112 = _T_156 ? _T_29[63:0] : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_113 = _T_157 ? read_sip : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_114 = _T_158 ? read_sie : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_115 = _T_159 ? reg_sscratch : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_116 = _T_160 ? reg_scause : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_117 = _T_161 ? _T_33 : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_118 = _T_162 ? _T_34 : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_119 = _T_163 ? _T_41 : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_120 = _T_164 ? read_stvec : 64'h0; // @[Mux.scala 27:72]
  wire [31:0] _io_rw_rdata_T_121 = _T_165 ? read_scounteren : 32'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_122 = _T_166 ? read_mideleg : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_123 = _T_167 ? read_medeleg : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_124 = _T_168 ? _T_42 : 64'h0; // @[Mux.scala 27:72]
  wire [29:0] _io_rw_rdata_T_126 = _T_170 ? reg_pmp_0_addr : 30'h0; // @[Mux.scala 27:72]
  wire [29:0] _io_rw_rdata_T_127 = _T_171 ? reg_pmp_1_addr : 30'h0; // @[Mux.scala 27:72]
  wire [29:0] _io_rw_rdata_T_128 = _T_172 ? reg_pmp_2_addr : 30'h0; // @[Mux.scala 27:72]
  wire [29:0] _io_rw_rdata_T_129 = _T_173 ? reg_pmp_3_addr : 30'h0; // @[Mux.scala 27:72]
  wire [29:0] _io_rw_rdata_T_130 = _T_174 ? reg_pmp_4_addr : 30'h0; // @[Mux.scala 27:72]
  wire [29:0] _io_rw_rdata_T_131 = _T_175 ? reg_pmp_5_addr : 30'h0; // @[Mux.scala 27:72]
  wire [29:0] _io_rw_rdata_T_132 = _T_176 ? reg_pmp_6_addr : 30'h0; // @[Mux.scala 27:72]
  wire [29:0] _io_rw_rdata_T_133 = _T_177 ? reg_pmp_7_addr : 30'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_142 = _T_186 ? reg_custom_0 : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_143 = _T_187 ? 64'h1 : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_145 = _T_189 ? 64'h20181004 : 64'h0; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_147 = _io_rw_rdata_T_1 | _io_rw_rdata_T_2; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_149 = _io_rw_rdata_T_147 | _io_rw_rdata_T_4; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_150 = _io_rw_rdata_T_149 | _io_rw_rdata_T_5; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_151 = _io_rw_rdata_T_150 | _io_rw_rdata_T_6; // @[Mux.scala 27:72]
  wire [63:0] _GEN_510 = {{48'd0}, _io_rw_rdata_T_7}; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_152 = _io_rw_rdata_T_151 | _GEN_510; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_153 = _io_rw_rdata_T_152 | _io_rw_rdata_T_8; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_154 = _io_rw_rdata_T_153 | _io_rw_rdata_T_9; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_155 = _io_rw_rdata_T_154 | _io_rw_rdata_T_10; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_156 = _io_rw_rdata_T_155 | _io_rw_rdata_T_11; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_157 = _io_rw_rdata_T_156 | _io_rw_rdata_T_12; // @[Mux.scala 27:72]
  wire [63:0] _GEN_511 = {{63'd0}, _io_rw_rdata_T_13}; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_158 = _io_rw_rdata_T_157 | _GEN_511; // @[Mux.scala 27:72]
  wire [63:0] _GEN_512 = {{32'd0}, _io_rw_rdata_T_14}; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_159 = _io_rw_rdata_T_158 | _GEN_512; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_160 = _io_rw_rdata_T_159 | _io_rw_rdata_T_15; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_161 = _io_rw_rdata_T_160 | _io_rw_rdata_T_16; // @[Mux.scala 27:72]
  wire [63:0] _GEN_513 = {{59'd0}, _io_rw_rdata_T_17}; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_162 = _io_rw_rdata_T_161 | _GEN_513; // @[Mux.scala 27:72]
  wire [63:0] _GEN_514 = {{61'd0}, _io_rw_rdata_T_18}; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_163 = _io_rw_rdata_T_162 | _GEN_514; // @[Mux.scala 27:72]
  wire [63:0] _GEN_515 = {{56'd0}, _io_rw_rdata_T_19}; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_164 = _io_rw_rdata_T_163 | _GEN_515; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_165 = _io_rw_rdata_T_164 | _io_rw_rdata_T_20; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_166 = _io_rw_rdata_T_165 | _io_rw_rdata_T_21; // @[Mux.scala 27:72]
  wire [63:0] _GEN_516 = {{32'd0}, _io_rw_rdata_T_109}; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_254 = _io_rw_rdata_T_166 | _GEN_516; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_255 = _io_rw_rdata_T_254 | _io_rw_rdata_T_110; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_256 = _io_rw_rdata_T_255 | _io_rw_rdata_T_111; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_257 = _io_rw_rdata_T_256 | _io_rw_rdata_T_112; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_258 = _io_rw_rdata_T_257 | _io_rw_rdata_T_113; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_259 = _io_rw_rdata_T_258 | _io_rw_rdata_T_114; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_260 = _io_rw_rdata_T_259 | _io_rw_rdata_T_115; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_261 = _io_rw_rdata_T_260 | _io_rw_rdata_T_116; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_262 = _io_rw_rdata_T_261 | _io_rw_rdata_T_117; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_263 = _io_rw_rdata_T_262 | _io_rw_rdata_T_118; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_264 = _io_rw_rdata_T_263 | _io_rw_rdata_T_119; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_265 = _io_rw_rdata_T_264 | _io_rw_rdata_T_120; // @[Mux.scala 27:72]
  wire [63:0] _GEN_517 = {{32'd0}, _io_rw_rdata_T_121}; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_266 = _io_rw_rdata_T_265 | _GEN_517; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_267 = _io_rw_rdata_T_266 | _io_rw_rdata_T_122; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_268 = _io_rw_rdata_T_267 | _io_rw_rdata_T_123; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_269 = _io_rw_rdata_T_268 | _io_rw_rdata_T_124; // @[Mux.scala 27:72]
  wire [63:0] _GEN_518 = {{34'd0}, _io_rw_rdata_T_126}; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_271 = _io_rw_rdata_T_269 | _GEN_518; // @[Mux.scala 27:72]
  wire [63:0] _GEN_519 = {{34'd0}, _io_rw_rdata_T_127}; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_272 = _io_rw_rdata_T_271 | _GEN_519; // @[Mux.scala 27:72]
  wire [63:0] _GEN_520 = {{34'd0}, _io_rw_rdata_T_128}; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_273 = _io_rw_rdata_T_272 | _GEN_520; // @[Mux.scala 27:72]
  wire [63:0] _GEN_521 = {{34'd0}, _io_rw_rdata_T_129}; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_274 = _io_rw_rdata_T_273 | _GEN_521; // @[Mux.scala 27:72]
  wire [63:0] _GEN_522 = {{34'd0}, _io_rw_rdata_T_130}; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_275 = _io_rw_rdata_T_274 | _GEN_522; // @[Mux.scala 27:72]
  wire [63:0] _GEN_523 = {{34'd0}, _io_rw_rdata_T_131}; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_276 = _io_rw_rdata_T_275 | _GEN_523; // @[Mux.scala 27:72]
  wire [63:0] _GEN_524 = {{34'd0}, _io_rw_rdata_T_132}; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_277 = _io_rw_rdata_T_276 | _GEN_524; // @[Mux.scala 27:72]
  wire [63:0] _GEN_525 = {{34'd0}, _io_rw_rdata_T_133}; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_278 = _io_rw_rdata_T_277 | _GEN_525; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_287 = _io_rw_rdata_T_278 | _io_rw_rdata_T_142; // @[Mux.scala 27:72]
  wire [63:0] _io_rw_rdata_T_288 = _io_rw_rdata_T_287 | _io_rw_rdata_T_143; // @[Mux.scala 27:72]
  wire  _T_402 = io_rw_cmd == 3'h5; // @[package.scala 15:47]
  wire  _T_403 = io_rw_cmd == 3'h6; // @[package.scala 15:47]
  wire  _T_404 = io_rw_cmd == 3'h7; // @[package.scala 15:47]
  wire [4:0] _reg_fflags_T = reg_fflags | io_fcsr_flags_bits; // @[CSR.scala 811:30]
  wire [4:0] _GEN_130 = io_fcsr_flags_valid ? _reg_fflags_T : reg_fflags; // @[CSR.scala 810:30 CSR.scala 811:16 CSR.scala 413:23]
  wire  csr_wen = (_T_403 | _T_404) | _T_402; // @[package.scala 64:59]
  wire [102:0] _new_mstatus_WIRE = {{39'd0}, wdata};
  wire  new_mstatus_sie = _new_mstatus_WIRE[1]; // @[CSR.scala 826:47]
  wire  new_mstatus_mie = _new_mstatus_WIRE[3]; // @[CSR.scala 826:47]
  wire  new_mstatus_spie = _new_mstatus_WIRE[5]; // @[CSR.scala 826:47]
  wire  new_mstatus_mpie = _new_mstatus_WIRE[7]; // @[CSR.scala 826:47]
  wire  new_mstatus_spp = _new_mstatus_WIRE[8]; // @[CSR.scala 826:47]
  wire [1:0] new_mstatus_mpp = _new_mstatus_WIRE[12:11]; // @[CSR.scala 826:47]
  wire [1:0] new_mstatus_fs = _new_mstatus_WIRE[14:13]; // @[CSR.scala 826:47]
  wire  new_mstatus_mprv = _new_mstatus_WIRE[17]; // @[CSR.scala 826:47]
  wire  new_mstatus_sum = _new_mstatus_WIRE[18]; // @[CSR.scala 826:47]
  wire  new_mstatus_mxr = _new_mstatus_WIRE[19]; // @[CSR.scala 826:47]
  wire  new_mstatus_tvm = _new_mstatus_WIRE[20]; // @[CSR.scala 826:47]
  wire  new_mstatus_tw = _new_mstatus_WIRE[21]; // @[CSR.scala 826:47]
  wire  new_mstatus_tsr = _new_mstatus_WIRE[22]; // @[CSR.scala 826:47]
  wire  _reg_mstatus_fs_T = |new_mstatus_fs; // @[CSR.scala 1123:73]
  wire [1:0] _reg_mstatus_fs_T_2 = _reg_mstatus_fs_T ? 2'h3 : 2'h0; // @[Bitwise.scala 72:12]
  wire [1:0] _GEN_136 = _T_49 ? {{1'd0}, new_mstatus_spp} : _GEN_122; // @[CSR.scala 825:39 CSR.scala 834:27]
  wire  f = wdata[5]; // @[CSR.scala 852:20]
  wire  _T_2156 = (~(io_pc[1])) | (wdata[2]); // @[CSR.scala 854:43]
  wire [63:0] _reg_misa_T = ~wdata; // @[CSR.scala 856:25]
  wire  _reg_misa_T_1 = ~f; // @[CSR.scala 856:35]
  wire [3:0] _reg_misa_T_2 = {_reg_misa_T_1, 3'h0}; // @[CSR.scala 856:38]
  wire [63:0] _GEN_526 = {{60'd0}, _reg_misa_T_2}; // @[CSR.scala 856:32]
  wire [63:0] _reg_misa_T_3 = _reg_misa_T | _GEN_526; // @[CSR.scala 856:32]
  wire [63:0] _reg_misa_T_4 = ~_reg_misa_T_3; // @[CSR.scala 856:23]
  wire [63:0] _reg_misa_T_5 = _reg_misa_T_4 & 64'h102d; // @[CSR.scala 856:55]
  wire [63:0] _reg_misa_T_7 = reg_misa & 64'hffffffffffffefd2; // @[CSR.scala 856:73]
  wire [63:0] _reg_misa_T_8 = _reg_misa_T_5 | _reg_misa_T_7; // @[CSR.scala 856:62]
  wire [15:0] _new_mip_T = {4'h0,2'h0,reg_mip_seip,1'h0,2'h0,reg_mip_stip,1'h0,2'h0,reg_mip_ssip,1'h0}; // @[CSR.scala 864:59]
  wire [15:0] _new_mip_T_2 = io_rw_cmd[1] ? _new_mip_T : 16'h0; // @[CSR.scala 1098:9]
  wire [63:0] _GEN_527 = {{48'd0}, _new_mip_T_2}; // @[CSR.scala 1098:34]
  wire [63:0] _new_mip_T_3 = _GEN_527 | io_rw_wdata; // @[CSR.scala 1098:34]
  wire [63:0] _new_mip_T_8 = _new_mip_T_3 & _wdata_T_6; // @[CSR.scala 1098:43]
  wire  new_mip_ssip = _new_mip_T_8[1]; // @[CSR.scala 864:88]
  wire  new_mip_stip = _new_mip_T_8[5]; // @[CSR.scala 864:88]
  wire  new_mip_seip = _new_mip_T_8[9]; // @[CSR.scala 864:88]
  wire [63:0] _reg_mie_T = wdata & 64'haaa; // @[CSR.scala 871:59]
  wire [63:0] _reg_mepc_T_1 = _reg_misa_T | 64'h1; // @[CSR.scala 1119:31]
  wire [63:0] _reg_mepc_T_2 = ~_reg_mepc_T_1; // @[CSR.scala 1119:26]
  wire [63:0] _GEN_152 = _T_54 ? _reg_mepc_T_2 : {{24'd0}, _GEN_99}; // @[CSR.scala 872:40 CSR.scala 872:51]
  wire [63:0] _GEN_154 = _T_50 ? wdata : {{32'd0}, reg_mtvec}; // @[CSR.scala 875:40 CSR.scala 875:52 CSR.scala 391:27]
  wire [63:0] _reg_mcause_T = wdata & 64'h800000000000000f; // @[CSR.scala 876:62]
  wire [63:0] _GEN_157 = _T_64 ? wdata : {{57'd0}, nextSmall_1}; // @[CSR.scala 1116:31 Counters.scala 66:11 Counters.scala 48:9]
  wire [63:0] _GEN_159 = _T_65 ? wdata : {{57'd0}, nextSmall}; // @[CSR.scala 1116:31 Counters.scala 66:11 Counters.scala 48:9]
  wire [63:0] _GEN_162 = _T_61 ? wdata : {{59'd0}, _GEN_130}; // @[CSR.scala 889:40 CSR.scala 889:75]
  wire [63:0] _GEN_164 = _T_62 ? wdata : {{61'd0}, reg_frm}; // @[CSR.scala 890:40 CSR.scala 890:72 CSR.scala 414:20]
  wire [63:0] _GEN_166 = _T_63 ? wdata : _GEN_162; // @[CSR.scala 891:38 CSR.scala 893:20]
  wire [63:0] _GEN_167 = _T_63 ? {{5'd0}, wdata[63:5]} : _GEN_164; // @[CSR.scala 891:38 CSR.scala 894:17]
  wire [1:0] new_dcsr_prv = wdata[1:0]; // @[CSR.scala 899:43]
  wire  new_dcsr_step = wdata[2]; // @[CSR.scala 899:43]
  wire  new_dcsr_ebreaku = wdata[12]; // @[CSR.scala 899:43]
  wire  new_dcsr_ebreaks = wdata[13]; // @[CSR.scala 899:43]
  wire  new_dcsr_ebreakm = wdata[15]; // @[CSR.scala 899:43]
  wire [63:0] _GEN_173 = _T_59 ? _reg_mepc_T_2 : {{24'd0}, _GEN_88}; // @[CSR.scala 906:42 CSR.scala 906:52]
  wire [1:0] _GEN_177 = _T_156 ? {{1'd0}, new_mstatus_spp} : _GEN_136; // @[CSR.scala 910:41 CSR.scala 914:25]
  wire [63:0] _new_sip_T = ~read_mideleg; // @[CSR.scala 923:54]
  wire [63:0] _new_sip_T_1 = _GEN_43 & _new_sip_T; // @[CSR.scala 923:52]
  wire [63:0] _new_sip_T_2 = wdata & read_mideleg; // @[CSR.scala 923:78]
  wire [63:0] _new_sip_T_3 = _new_sip_T_1 | _new_sip_T_2; // @[CSR.scala 923:69]
  wire  new_sip_ssip = _new_sip_T_3[1]; // @[CSR.scala 923:41]
  wire [43:0] new_satp_ppn = wdata[43:0]; // @[CSR.scala 928:45]
  wire [3:0] new_satp_mode = wdata[63:60]; // @[CSR.scala 928:45]
  wire  _T_2159 = new_satp_mode == 4'h0; // @[package.scala 15:47]
  wire  _T_2160 = new_satp_mode == 4'h8; // @[package.scala 15:47]
  wire  _T_2161 = _T_2159 | _T_2160; // @[package.scala 64:59]
  wire [3:0] _reg_satp_mode_T = new_satp_mode & 4'h8; // @[CSR.scala 931:44]
  wire [63:0] _reg_mie_T_2 = reg_mie & _new_sip_T; // @[CSR.scala 937:64]
  wire [63:0] _reg_mie_T_4 = _reg_mie_T_2 | _new_sip_T_2; // @[CSR.scala 937:81]
  wire [63:0] _GEN_189 = _T_163 ? _reg_mepc_T_2 : {{24'd0}, _GEN_92}; // @[CSR.scala 939:42 CSR.scala 939:53]
  wire [63:0] _GEN_190 = _T_164 ? wdata : {{25'd0}, reg_stvec}; // @[CSR.scala 940:42 CSR.scala 940:54 CSR.scala 409:22]
  wire [63:0] _reg_scause_T = wdata & 64'h800000000000001f; // @[CSR.scala 941:64]
  wire [63:0] _GEN_195 = _T_165 ? wdata : {{32'd0}, reg_scounteren}; // @[CSR.scala 945:44 CSR.scala 945:61 CSR.scala 401:18]
  wire [63:0] _GEN_196 = _T_153 ? wdata : {{32'd0}, reg_mcounteren}; // @[CSR.scala 948:44 CSR.scala 948:61 CSR.scala 397:18]
  wire  _T_2164 = (~reg_bp_0_control_dmode) | reg_debug; // @[CSR.scala 954:55]
  wire [63:0] _GEN_198 = _T_46 ? wdata : {{25'd0}, reg_bp_0_address}; // @[CSR.scala 955:44 CSR.scala 955:57 CSR.scala 372:19]
  wire [63:0] _newBPC_T_2 = io_rw_cmd[1] ? _T_6 : 64'h0; // @[CSR.scala 1098:9]
  wire [63:0] _newBPC_T_3 = _newBPC_T_2 | io_rw_wdata; // @[CSR.scala 1098:34]
  wire [63:0] _newBPC_T_8 = _newBPC_T_3 & _wdata_T_6; // @[CSR.scala 1098:43]
  wire  newBPC_action = _newBPC_T_8[12]; // @[CSR.scala 973:96]
  wire  newBPC_dmode = _newBPC_T_8[59]; // @[CSR.scala 973:96]
  wire  dMode = newBPC_dmode & reg_debug; // @[CSR.scala 974:38]
  wire  _GEN_199 = dMode & newBPC_action; // @[CSR.scala 976:51 CSR.scala 976:71 CSR.scala 976:120]
  wire [63:0] _GEN_215 = _T_2164 ? _GEN_198 : {{25'd0}, reg_bp_0_address}; // @[CSR.scala 954:70 CSR.scala 372:19]
  wire  _T_2175 = _T_168 & (~reg_pmp_0_cfg_l); // @[CSR.scala 986:57]
  wire  newCfg_r = wdata[0]; // @[CSR.scala 987:46]
  wire  newCfg_w = wdata[1]; // @[CSR.scala 987:46]
  wire  newCfg_x = wdata[2]; // @[CSR.scala 987:46]
  wire [1:0] newCfg_a = wdata[4:3]; // @[CSR.scala 987:46]
  wire  newCfg_l = wdata[7]; // @[CSR.scala 987:46]
  wire  _reg_pmp_0_cfg_w_T = newCfg_w & newCfg_r; // @[CSR.scala 990:31]
  wire  _T_2179 = (~(reg_pmp_1_cfg_a[1])) & pmp_1_mask_base_left; // @[PMP.scala 49:20]
  wire  _T_2181 = reg_pmp_0_cfg_l | (reg_pmp_1_cfg_l & _T_2179); // @[PMP.scala 51:44]
  wire  _T_2183 = _T_170 & (~_T_2181); // @[CSR.scala 995:45]
  wire [63:0] _GEN_270 = _T_2183 ? wdata : {{34'd0}, reg_pmp_0_addr}; // @[CSR.scala 995:71 CSR.scala 996:18 CSR.scala 373:20]
  wire  _T_2185 = _T_168 & (~reg_pmp_1_cfg_l); // @[CSR.scala 986:57]
  wire  newCfg_1_r = wdata[8]; // @[CSR.scala 987:46]
  wire  newCfg_1_w = wdata[9]; // @[CSR.scala 987:46]
  wire  newCfg_1_x = wdata[10]; // @[CSR.scala 987:46]
  wire [1:0] newCfg_1_a = wdata[12:11]; // @[CSR.scala 987:46]
  wire  newCfg_1_l = wdata[15]; // @[CSR.scala 987:46]
  wire  _reg_pmp_1_cfg_w_T = newCfg_1_w & newCfg_1_r; // @[CSR.scala 990:31]
  wire  _T_2189 = (~(reg_pmp_2_cfg_a[1])) & pmp_2_mask_base_left; // @[PMP.scala 49:20]
  wire  _T_2191 = reg_pmp_1_cfg_l | (reg_pmp_2_cfg_l & _T_2189); // @[PMP.scala 51:44]
  wire  _T_2193 = _T_171 & (~_T_2191); // @[CSR.scala 995:45]
  wire [63:0] _GEN_277 = _T_2193 ? wdata : {{34'd0}, reg_pmp_1_addr}; // @[CSR.scala 995:71 CSR.scala 996:18 CSR.scala 373:20]
  wire  _T_2195 = _T_168 & (~reg_pmp_2_cfg_l); // @[CSR.scala 986:57]
  wire  newCfg_2_r = wdata[16]; // @[CSR.scala 987:46]
  wire  newCfg_2_w = wdata[17]; // @[CSR.scala 987:46]
  wire  newCfg_2_x = wdata[18]; // @[CSR.scala 987:46]
  wire [1:0] newCfg_2_a = wdata[20:19]; // @[CSR.scala 987:46]
  wire  newCfg_2_l = wdata[23]; // @[CSR.scala 987:46]
  wire  _reg_pmp_2_cfg_w_T = newCfg_2_w & newCfg_2_r; // @[CSR.scala 990:31]
  wire  _T_2199 = (~(reg_pmp_3_cfg_a[1])) & pmp_3_mask_base_left; // @[PMP.scala 49:20]
  wire  _T_2201 = reg_pmp_2_cfg_l | (reg_pmp_3_cfg_l & _T_2199); // @[PMP.scala 51:44]
  wire  _T_2203 = _T_172 & (~_T_2201); // @[CSR.scala 995:45]
  wire [63:0] _GEN_284 = _T_2203 ? wdata : {{34'd0}, reg_pmp_2_addr}; // @[CSR.scala 995:71 CSR.scala 996:18 CSR.scala 373:20]
  wire  _T_2205 = _T_168 & (~reg_pmp_3_cfg_l); // @[CSR.scala 986:57]
  wire  newCfg_3_r = wdata[24]; // @[CSR.scala 987:46]
  wire  newCfg_3_w = wdata[25]; // @[CSR.scala 987:46]
  wire  newCfg_3_x = wdata[26]; // @[CSR.scala 987:46]
  wire [1:0] newCfg_3_a = wdata[28:27]; // @[CSR.scala 987:46]
  wire  newCfg_3_l = wdata[31]; // @[CSR.scala 987:46]
  wire  _reg_pmp_3_cfg_w_T = newCfg_3_w & newCfg_3_r; // @[CSR.scala 990:31]
  wire  _T_2209 = (~(reg_pmp_4_cfg_a[1])) & pmp_4_mask_base_left; // @[PMP.scala 49:20]
  wire  _T_2211 = reg_pmp_3_cfg_l | (reg_pmp_4_cfg_l & _T_2209); // @[PMP.scala 51:44]
  wire  _T_2213 = _T_173 & (~_T_2211); // @[CSR.scala 995:45]
  wire [63:0] _GEN_291 = _T_2213 ? wdata : {{34'd0}, reg_pmp_3_addr}; // @[CSR.scala 995:71 CSR.scala 996:18 CSR.scala 373:20]
  wire  _T_2215 = _T_168 & (~reg_pmp_4_cfg_l); // @[CSR.scala 986:57]
  wire  newCfg_4_r = wdata[32]; // @[CSR.scala 987:46]
  wire  newCfg_4_w = wdata[33]; // @[CSR.scala 987:46]
  wire  newCfg_4_x = wdata[34]; // @[CSR.scala 987:46]
  wire [1:0] newCfg_4_a = wdata[36:35]; // @[CSR.scala 987:46]
  wire  newCfg_4_l = wdata[39]; // @[CSR.scala 987:46]
  wire  _reg_pmp_4_cfg_w_T = newCfg_4_w & newCfg_4_r; // @[CSR.scala 990:31]
  wire  _T_2219 = (~(reg_pmp_5_cfg_a[1])) & pmp_5_mask_base_left; // @[PMP.scala 49:20]
  wire  _T_2221 = reg_pmp_4_cfg_l | (reg_pmp_5_cfg_l & _T_2219); // @[PMP.scala 51:44]
  wire  _T_2223 = _T_174 & (~_T_2221); // @[CSR.scala 995:45]
  wire [63:0] _GEN_298 = _T_2223 ? wdata : {{34'd0}, reg_pmp_4_addr}; // @[CSR.scala 995:71 CSR.scala 996:18 CSR.scala 373:20]
  wire  _T_2225 = _T_168 & (~reg_pmp_5_cfg_l); // @[CSR.scala 986:57]
  wire  newCfg_5_r = wdata[40]; // @[CSR.scala 987:46]
  wire  newCfg_5_w = wdata[41]; // @[CSR.scala 987:46]
  wire  newCfg_5_x = wdata[42]; // @[CSR.scala 987:46]
  wire [1:0] newCfg_5_a = wdata[44:43]; // @[CSR.scala 987:46]
  wire  newCfg_5_l = wdata[47]; // @[CSR.scala 987:46]
  wire  _reg_pmp_5_cfg_w_T = newCfg_5_w & newCfg_5_r; // @[CSR.scala 990:31]
  wire  _T_2229 = (~(reg_pmp_6_cfg_a[1])) & pmp_6_mask_base_left; // @[PMP.scala 49:20]
  wire  _T_2231 = reg_pmp_5_cfg_l | (reg_pmp_6_cfg_l & _T_2229); // @[PMP.scala 51:44]
  wire  _T_2233 = _T_175 & (~_T_2231); // @[CSR.scala 995:45]
  wire [63:0] _GEN_305 = _T_2233 ? wdata : {{34'd0}, reg_pmp_5_addr}; // @[CSR.scala 995:71 CSR.scala 996:18 CSR.scala 373:20]
  wire  _T_2235 = _T_168 & (~reg_pmp_6_cfg_l); // @[CSR.scala 986:57]
  wire  newCfg_6_r = wdata[48]; // @[CSR.scala 987:46]
  wire  newCfg_6_w = wdata[49]; // @[CSR.scala 987:46]
  wire  newCfg_6_x = wdata[50]; // @[CSR.scala 987:46]
  wire [1:0] newCfg_6_a = wdata[52:51]; // @[CSR.scala 987:46]
  wire  newCfg_6_l = wdata[55]; // @[CSR.scala 987:46]
  wire  _reg_pmp_6_cfg_w_T = newCfg_6_w & newCfg_6_r; // @[CSR.scala 990:31]
  wire  _T_2239 = (~(reg_pmp_7_cfg_a[1])) & pmp_7_mask_base_left; // @[PMP.scala 49:20]
  wire  _T_2241 = reg_pmp_6_cfg_l | (reg_pmp_7_cfg_l & _T_2239); // @[PMP.scala 51:44]
  wire  _T_2243 = _T_176 & (~_T_2241); // @[CSR.scala 995:45]
  wire [63:0] _GEN_312 = _T_2243 ? wdata : {{34'd0}, reg_pmp_6_addr}; // @[CSR.scala 995:71 CSR.scala 996:18 CSR.scala 373:20]
  wire  _T_2245 = _T_168 & (~reg_pmp_7_cfg_l); // @[CSR.scala 986:57]
  wire  newCfg_7_r = wdata[56]; // @[CSR.scala 987:46]
  wire  newCfg_7_w = wdata[57]; // @[CSR.scala 987:46]
  wire  newCfg_7_x = wdata[58]; // @[CSR.scala 987:46]
  wire [1:0] newCfg_7_a = wdata[60:59]; // @[CSR.scala 987:46]
  wire  newCfg_7_l = wdata[63]; // @[CSR.scala 987:46]
  wire  _reg_pmp_7_cfg_w_T = newCfg_7_w & newCfg_7_r; // @[CSR.scala 990:31]
  wire  _T_2251 = reg_pmp_7_cfg_l | (reg_pmp_7_cfg_l & _T_2239); // @[PMP.scala 51:44]
  wire  _T_2253 = _T_177 & (~_T_2251); // @[CSR.scala 995:45]
  wire [63:0] _GEN_319 = _T_2253 ? wdata : {{34'd0}, reg_pmp_7_addr}; // @[CSR.scala 995:71 CSR.scala 996:18 CSR.scala 373:20]
  wire [63:0] _reg_custom_0_T = wdata & 64'h208; // @[CSR.scala 1002:23]
  wire [63:0] _reg_custom_0_T_2 = reg_custom_0 & 64'hfffffffffffffdf7; // @[CSR.scala 1002:38]
  wire [63:0] _reg_custom_0_T_3 = _reg_custom_0_T | _reg_custom_0_T_2; // @[CSR.scala 1002:31]
  wire [1:0] _GEN_332 = csr_wen ? _GEN_177 : _GEN_122; // @[CSR.scala 824:18]
  wire [63:0] _GEN_347 = csr_wen ? _GEN_152 : {{24'd0}, _GEN_99}; // @[CSR.scala 824:18]
  wire [63:0] _GEN_349 = csr_wen ? _GEN_154 : {{32'd0}, reg_mtvec}; // @[CSR.scala 824:18 CSR.scala 391:27]
  wire [63:0] _GEN_352 = csr_wen ? _GEN_157 : {{57'd0}, nextSmall_1}; // @[CSR.scala 824:18 Counters.scala 48:9]
  wire [63:0] _GEN_354 = csr_wen ? _GEN_159 : {{57'd0}, nextSmall}; // @[CSR.scala 824:18 Counters.scala 48:9]
  wire [63:0] _GEN_357 = csr_wen ? _GEN_166 : {{59'd0}, _GEN_130}; // @[CSR.scala 824:18]
  wire [63:0] _GEN_358 = csr_wen ? _GEN_167 : {{61'd0}, reg_frm}; // @[CSR.scala 824:18 CSR.scala 414:20]
  wire [63:0] _GEN_364 = csr_wen ? _GEN_173 : {{24'd0}, _GEN_88}; // @[CSR.scala 824:18]
  wire [63:0] _GEN_369 = csr_wen ? _GEN_189 : {{24'd0}, _GEN_92}; // @[CSR.scala 824:18]
  wire [63:0] _GEN_370 = csr_wen ? _GEN_190 : {{25'd0}, reg_stvec}; // @[CSR.scala 824:18 CSR.scala 409:22]
  wire [63:0] _GEN_375 = csr_wen ? _GEN_195 : {{32'd0}, reg_scounteren}; // @[CSR.scala 824:18 CSR.scala 401:18]
  wire [63:0] _GEN_376 = csr_wen ? _GEN_196 : {{32'd0}, reg_mcounteren}; // @[CSR.scala 824:18 CSR.scala 397:18]
  wire [63:0] _GEN_378 = csr_wen ? _GEN_215 : {{25'd0}, reg_bp_0_address}; // @[CSR.scala 824:18 CSR.scala 372:19]
  wire [63:0] _GEN_416 = csr_wen ? _GEN_270 : {{34'd0}, reg_pmp_0_addr}; // @[CSR.scala 824:18 CSR.scala 373:20]
  wire [63:0] _GEN_423 = csr_wen ? _GEN_277 : {{34'd0}, reg_pmp_1_addr}; // @[CSR.scala 824:18 CSR.scala 373:20]
  wire [63:0] _GEN_430 = csr_wen ? _GEN_284 : {{34'd0}, reg_pmp_2_addr}; // @[CSR.scala 824:18 CSR.scala 373:20]
  wire [63:0] _GEN_437 = csr_wen ? _GEN_291 : {{34'd0}, reg_pmp_3_addr}; // @[CSR.scala 824:18 CSR.scala 373:20]
  wire [63:0] _GEN_444 = csr_wen ? _GEN_298 : {{34'd0}, reg_pmp_4_addr}; // @[CSR.scala 824:18 CSR.scala 373:20]
  wire [63:0] _GEN_451 = csr_wen ? _GEN_305 : {{34'd0}, reg_pmp_5_addr}; // @[CSR.scala 824:18 CSR.scala 373:20]
  wire [63:0] _GEN_458 = csr_wen ? _GEN_312 : {{34'd0}, reg_pmp_6_addr}; // @[CSR.scala 824:18 CSR.scala 373:20]
  wire [63:0] _GEN_465 = csr_wen ? _GEN_319 : {{34'd0}, reg_pmp_7_addr}; // @[CSR.scala 824:18 CSR.scala 373:20]
  assign io_rw_rdata = _io_rw_rdata_T_288 | _io_rw_rdata_T_145; // @[Mux.scala 27:72]
  assign io_decode_0_fp_illegal = (io_status_fs == 2'h0) | (~(reg_misa[5])); // @[CSR.scala 629:45]
  assign io_decode_0_fp_csr = _io_decode_0_fp_csr_T == 12'h0; // @[Decode.scala 14:121]
  assign io_decode_0_read_illegal = _io_decode_0_read_illegal_T_315 | _io_decode_0_read_illegal_T_318; // @[CSR.scala 638:68]
  assign io_decode_0_write_illegal = &(io_decode_0_csr[11:10]); // @[CSR.scala 640:47]
  assign io_decode_0_write_flush = ~(((io_decode_0_csr >= 12'h340) & (io_decode_0_csr <= 12'h343)) | ((io_decode_0_csr
     >= 12'h140) & (io_decode_0_csr <= 12'h143))); // @[CSR.scala 641:27]
  assign io_decode_0_system_illegal = _io_decode_0_system_illegal_T_12 | _io_decode_0_system_illegal_T_14; // @[CSR.scala 645:46]
  assign io_csr_stall = reg_wfi | io_status_cease; // @[CSR.scala 772:27]
  assign io_eret = _exception_T | insn_ret; // @[CSR.scala 674:38]
  assign io_singleStep = reg_dcsr_step & _T_274; // @[CSR.scala 675:34]
  assign io_status_debug = reg_debug; // @[CSR.scala 678:19]
  assign io_status_cease = io_status_cease_r; // @[CSR.scala 773:19]
  assign io_status_wfi = reg_wfi; // @[CSR.scala 774:17]
  assign io_status_isa = reg_misa[31:0]; // @[CSR.scala 679:17]
  assign io_status_dprv = io_status_dprv_REG; // @[CSR.scala 682:18]
  assign io_status_prv = reg_mstatus_prv; // @[CSR.scala 676:13]
  assign io_status_sd = ((&io_status_fs) | (&io_status_xs)) | (&io_status_vs); // @[CSR.scala 677:58]
  assign io_status_zero2 = 27'h0; // @[CSR.scala 676:13]
  assign io_status_sxl = 2'h2; // @[CSR.scala 681:17]
  assign io_status_uxl = 2'h2; // @[CSR.scala 680:17]
  assign io_status_sd_rv32 = 1'h0; // @[CSR.scala 676:13]
  assign io_status_zero1 = 8'h0; // @[CSR.scala 676:13]
  assign io_status_tsr = reg_mstatus_tsr; // @[CSR.scala 676:13]
  assign io_status_tw = reg_mstatus_tw; // @[CSR.scala 676:13]
  assign io_status_tvm = reg_mstatus_tvm; // @[CSR.scala 676:13]
  assign io_status_mxr = reg_mstatus_mxr; // @[CSR.scala 676:13]
  assign io_status_sum = reg_mstatus_sum; // @[CSR.scala 676:13]
  assign io_status_mprv = reg_mstatus_mprv; // @[CSR.scala 676:13]
  assign io_status_xs = 2'h0; // @[CSR.scala 676:13]
  assign io_status_fs = reg_mstatus_fs; // @[CSR.scala 676:13]
  assign io_status_mpp = reg_mstatus_mpp; // @[CSR.scala 676:13]
  assign io_status_vs = 2'h0; // @[CSR.scala 676:13]
  assign io_status_spp = reg_mstatus_spp; // @[CSR.scala 676:13]
  assign io_status_mpie = reg_mstatus_mpie; // @[CSR.scala 676:13]
  assign io_status_hpie = 1'h0; // @[CSR.scala 676:13]
  assign io_status_spie = reg_mstatus_spie; // @[CSR.scala 676:13]
  assign io_status_upie = 1'h0; // @[CSR.scala 676:13]
  assign io_status_mie = reg_mstatus_mie; // @[CSR.scala 676:13]
  assign io_status_hie = 1'h0; // @[CSR.scala 676:13]
  assign io_status_sie = reg_mstatus_sie; // @[CSR.scala 676:13]
  assign io_status_uie = 1'h0; // @[CSR.scala 676:13]
  assign io_ptbr_mode = reg_satp_mode; // @[CSR.scala 673:11]
  assign io_ptbr_ppn = reg_satp_ppn; // @[CSR.scala 673:11]
  assign io_evec = _GEN_124[39:0];
  assign io_time = {value_right_1,value_left_1}; // @[Cat.scala 29:58]
  assign io_fcsr_rm = reg_frm; // @[CSR.scala 809:14]
  assign io_interrupt = ((anyInterrupt & (~io_singleStep)) | reg_singleStepped) & (~(reg_debug | io_status_cease)); // @[CSR.scala 444:73]
  assign io_interrupt_cause = 64'h8000000000000000 + _GEN_502; // @[CSR.scala 443:43]
  assign io_bp_0_control_action = reg_bp_0_control_action; // @[CSR.scala 446:9]
  assign io_bp_0_control_tmatch = reg_bp_0_control_tmatch; // @[CSR.scala 446:9]
  assign io_bp_0_control_m = reg_bp_0_control_m; // @[CSR.scala 446:9]
  assign io_bp_0_control_s = reg_bp_0_control_s; // @[CSR.scala 446:9]
  assign io_bp_0_control_u = reg_bp_0_control_u; // @[CSR.scala 446:9]
  assign io_bp_0_control_x = reg_bp_0_control_x; // @[CSR.scala 446:9]
  assign io_bp_0_control_w = reg_bp_0_control_w; // @[CSR.scala 446:9]
  assign io_bp_0_control_r = reg_bp_0_control_r; // @[CSR.scala 446:9]
  assign io_bp_0_address = reg_bp_0_address; // @[CSR.scala 446:9]
  assign io_pmp_0_cfg_l = reg_pmp_0_cfg_l; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_0_cfg_a = reg_pmp_0_cfg_a; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_0_cfg_x = reg_pmp_0_cfg_x; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_0_cfg_w = reg_pmp_0_cfg_w; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_0_cfg_r = reg_pmp_0_cfg_r; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_0_addr = reg_pmp_0_addr; // @[PMP.scala 26:19 PMP.scala 28:14]
  assign io_pmp_0_mask = _pmp_mask_T_3[31:0]; // @[PMP.scala 26:19 PMP.scala 29:14]
  assign io_pmp_1_cfg_l = reg_pmp_1_cfg_l; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_1_cfg_a = reg_pmp_1_cfg_a; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_1_cfg_x = reg_pmp_1_cfg_x; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_1_cfg_w = reg_pmp_1_cfg_w; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_1_cfg_r = reg_pmp_1_cfg_r; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_1_addr = reg_pmp_1_addr; // @[PMP.scala 26:19 PMP.scala 28:14]
  assign io_pmp_1_mask = _pmp_1_mask_T_3[31:0]; // @[PMP.scala 26:19 PMP.scala 29:14]
  assign io_pmp_2_cfg_l = reg_pmp_2_cfg_l; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_2_cfg_a = reg_pmp_2_cfg_a; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_2_cfg_x = reg_pmp_2_cfg_x; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_2_cfg_w = reg_pmp_2_cfg_w; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_2_cfg_r = reg_pmp_2_cfg_r; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_2_addr = reg_pmp_2_addr; // @[PMP.scala 26:19 PMP.scala 28:14]
  assign io_pmp_2_mask = _pmp_2_mask_T_3[31:0]; // @[PMP.scala 26:19 PMP.scala 29:14]
  assign io_pmp_3_cfg_l = reg_pmp_3_cfg_l; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_3_cfg_a = reg_pmp_3_cfg_a; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_3_cfg_x = reg_pmp_3_cfg_x; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_3_cfg_w = reg_pmp_3_cfg_w; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_3_cfg_r = reg_pmp_3_cfg_r; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_3_addr = reg_pmp_3_addr; // @[PMP.scala 26:19 PMP.scala 28:14]
  assign io_pmp_3_mask = _pmp_3_mask_T_3[31:0]; // @[PMP.scala 26:19 PMP.scala 29:14]
  assign io_pmp_4_cfg_l = reg_pmp_4_cfg_l; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_4_cfg_a = reg_pmp_4_cfg_a; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_4_cfg_x = reg_pmp_4_cfg_x; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_4_cfg_w = reg_pmp_4_cfg_w; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_4_cfg_r = reg_pmp_4_cfg_r; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_4_addr = reg_pmp_4_addr; // @[PMP.scala 26:19 PMP.scala 28:14]
  assign io_pmp_4_mask = _pmp_4_mask_T_3[31:0]; // @[PMP.scala 26:19 PMP.scala 29:14]
  assign io_pmp_5_cfg_l = reg_pmp_5_cfg_l; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_5_cfg_a = reg_pmp_5_cfg_a; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_5_cfg_x = reg_pmp_5_cfg_x; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_5_cfg_w = reg_pmp_5_cfg_w; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_5_cfg_r = reg_pmp_5_cfg_r; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_5_addr = reg_pmp_5_addr; // @[PMP.scala 26:19 PMP.scala 28:14]
  assign io_pmp_5_mask = _pmp_5_mask_T_3[31:0]; // @[PMP.scala 26:19 PMP.scala 29:14]
  assign io_pmp_6_cfg_l = reg_pmp_6_cfg_l; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_6_cfg_a = reg_pmp_6_cfg_a; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_6_cfg_x = reg_pmp_6_cfg_x; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_6_cfg_w = reg_pmp_6_cfg_w; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_6_cfg_r = reg_pmp_6_cfg_r; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_6_addr = reg_pmp_6_addr; // @[PMP.scala 26:19 PMP.scala 28:14]
  assign io_pmp_6_mask = _pmp_6_mask_T_3[31:0]; // @[PMP.scala 26:19 PMP.scala 29:14]
  assign io_pmp_7_cfg_l = reg_pmp_7_cfg_l; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_7_cfg_a = reg_pmp_7_cfg_a; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_7_cfg_x = reg_pmp_7_cfg_x; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_7_cfg_w = reg_pmp_7_cfg_w; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_7_cfg_r = reg_pmp_7_cfg_r; // @[PMP.scala 26:19 PMP.scala 27:13]
  assign io_pmp_7_addr = reg_pmp_7_addr; // @[PMP.scala 26:19 PMP.scala 28:14]
  assign io_pmp_7_mask = _pmp_7_mask_T_3[31:0]; // @[PMP.scala 26:19 PMP.scala 29:14]
  assign io_trace_0_valid = (io_retire > 1'h0) | io_trace_0_exception; // @[CSR.scala 1077:30]
  assign io_trace_0_iaddr = io_pc; // @[CSR.scala 1079:13]
  assign io_trace_0_insn = io_inst_0; // @[CSR.scala 1078:12]
  assign io_trace_0_exception = (insn_call | insn_break) | io_exception; // @[CSR.scala 686:43]
  assign io_customCSRs_0_value = reg_custom_0; // @[CSR.scala 779:14]
  always @(posedge clock) begin
    if (reset) begin // @[CSR.scala 314:24]
      reg_mstatus_prv <= 2'h3; // @[CSR.scala 314:24]
    end else if (new_prv == 2'h2) begin // @[CSR.scala 1102:29]
      reg_mstatus_prv <= 2'h0;
    end else if (insn_ret) begin // @[CSR.scala 751:19]
      if (_T_396) begin // @[CSR.scala 752:52]
        reg_mstatus_prv <= {{1'd0}, reg_mstatus_spp}; // @[CSR.scala 756:15]
      end else begin
        reg_mstatus_prv <= _GEN_105;
      end
    end else if (exception) begin // @[CSR.scala 701:20]
      reg_mstatus_prv <= _GEN_73;
    end
    if (reset) begin // @[CSR.scala 314:24]
      reg_mstatus_tsr <= 1'h0; // @[CSR.scala 314:24]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_49) begin // @[CSR.scala 825:39]
        reg_mstatus_tsr <= new_mstatus_tsr; // @[CSR.scala 838:27]
      end
    end
    if (reset) begin // @[CSR.scala 314:24]
      reg_mstatus_tw <= 1'h0; // @[CSR.scala 314:24]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_49) begin // @[CSR.scala 825:39]
        reg_mstatus_tw <= new_mstatus_tw; // @[CSR.scala 837:26]
      end
    end
    if (reset) begin // @[CSR.scala 314:24]
      reg_mstatus_tvm <= 1'h0; // @[CSR.scala 314:24]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_49) begin // @[CSR.scala 825:39]
        reg_mstatus_tvm <= new_mstatus_tvm; // @[CSR.scala 843:27]
      end
    end
    if (reset) begin // @[CSR.scala 314:24]
      reg_mstatus_mxr <= 1'h0; // @[CSR.scala 314:24]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_156) begin // @[CSR.scala 910:41]
        reg_mstatus_mxr <= new_mstatus_mxr; // @[CSR.scala 918:27]
      end else if (_T_49) begin // @[CSR.scala 825:39]
        reg_mstatus_mxr <= new_mstatus_mxr; // @[CSR.scala 841:27]
      end
    end
    if (reset) begin // @[CSR.scala 314:24]
      reg_mstatus_sum <= 1'h0; // @[CSR.scala 314:24]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_156) begin // @[CSR.scala 910:41]
        reg_mstatus_sum <= new_mstatus_sum; // @[CSR.scala 919:27]
      end else if (_T_49) begin // @[CSR.scala 825:39]
        reg_mstatus_sum <= new_mstatus_sum; // @[CSR.scala 842:27]
      end
    end
    if (reset) begin // @[CSR.scala 314:24]
      reg_mstatus_mprv <= 1'h0; // @[CSR.scala 314:24]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_49) begin // @[CSR.scala 825:39]
        reg_mstatus_mprv <= new_mstatus_mprv; // @[CSR.scala 831:26]
      end
    end
    if (reset) begin // @[CSR.scala 314:24]
      reg_mstatus_fs <= 2'h0; // @[CSR.scala 314:24]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_156) begin // @[CSR.scala 910:41]
        reg_mstatus_fs <= _reg_mstatus_fs_T_2; // @[CSR.scala 915:24]
      end else if (_T_49) begin // @[CSR.scala 825:39]
        reg_mstatus_fs <= _reg_mstatus_fs_T_2; // @[CSR.scala 847:55]
      end
    end
    if (reset) begin // @[CSR.scala 314:24]
      reg_mstatus_mpp <= 2'h3; // @[CSR.scala 314:24]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_49) begin // @[CSR.scala 825:39]
        if (new_mstatus_mpp == 2'h2) begin // @[CSR.scala 1102:29]
          reg_mstatus_mpp <= 2'h0;
        end else begin
          reg_mstatus_mpp <= new_mstatus_mpp;
        end
      end else begin
        reg_mstatus_mpp <= _GEN_128;
      end
    end else begin
      reg_mstatus_mpp <= _GEN_128;
    end
    if (reset) begin // @[CSR.scala 314:24]
      reg_mstatus_spp <= 1'h0; // @[CSR.scala 314:24]
    end else begin
      reg_mstatus_spp <= _GEN_332[0];
    end
    if (reset) begin // @[CSR.scala 314:24]
      reg_mstatus_mpie <= 1'h0; // @[CSR.scala 314:24]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_49) begin // @[CSR.scala 825:39]
        reg_mstatus_mpie <= new_mstatus_mpie; // @[CSR.scala 828:24]
      end else begin
        reg_mstatus_mpie <= _GEN_127;
      end
    end else begin
      reg_mstatus_mpie <= _GEN_127;
    end
    if (reset) begin // @[CSR.scala 314:24]
      reg_mstatus_spie <= 1'h0; // @[CSR.scala 314:24]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_156) begin // @[CSR.scala 910:41]
        reg_mstatus_spie <= new_mstatus_spie; // @[CSR.scala 913:26]
      end else if (_T_49) begin // @[CSR.scala 825:39]
        reg_mstatus_spie <= new_mstatus_spie; // @[CSR.scala 835:28]
      end else begin
        reg_mstatus_spie <= _GEN_121;
      end
    end else begin
      reg_mstatus_spie <= _GEN_121;
    end
    if (reset) begin // @[CSR.scala 314:24]
      reg_mstatus_mie <= 1'h0; // @[CSR.scala 314:24]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_49) begin // @[CSR.scala 825:39]
        reg_mstatus_mie <= new_mstatus_mie; // @[CSR.scala 827:23]
      end else begin
        reg_mstatus_mie <= _GEN_126;
      end
    end else begin
      reg_mstatus_mie <= _GEN_126;
    end
    if (reset) begin // @[CSR.scala 314:24]
      reg_mstatus_sie <= 1'h0; // @[CSR.scala 314:24]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_156) begin // @[CSR.scala 910:41]
        reg_mstatus_sie <= new_mstatus_sie; // @[CSR.scala 912:25]
      end else if (_T_49) begin // @[CSR.scala 825:39]
        reg_mstatus_sie <= new_mstatus_sie; // @[CSR.scala 836:27]
      end else begin
        reg_mstatus_sie <= _GEN_120;
      end
    end else begin
      reg_mstatus_sie <= _GEN_120;
    end
    if (reset) begin // @[CSR.scala 322:21]
      reg_dcsr_prv <= 2'h3; // @[CSR.scala 322:21]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_58) begin // @[CSR.scala 898:38]
        if (new_dcsr_prv == 2'h2) begin // @[CSR.scala 1102:29]
          reg_dcsr_prv <= 2'h0;
        end else begin
          reg_dcsr_prv <= new_dcsr_prv;
        end
      end else begin
        reg_dcsr_prv <= _GEN_90;
      end
    end else begin
      reg_dcsr_prv <= _GEN_90;
    end
    if (_io_interrupt_T) begin // @[CSR.scala 693:25]
      reg_singleStepped <= 1'h0; // @[CSR.scala 693:45]
    end else begin
      reg_singleStepped <= _GEN_48;
    end
    if (reset) begin // @[CSR.scala 322:21]
      reg_dcsr_ebreakm <= 1'h0; // @[CSR.scala 322:21]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_58) begin // @[CSR.scala 898:38]
        reg_dcsr_ebreakm <= new_dcsr_ebreakm; // @[CSR.scala 901:26]
      end
    end
    if (reset) begin // @[CSR.scala 322:21]
      reg_dcsr_ebreaks <= 1'h0; // @[CSR.scala 322:21]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_58) begin // @[CSR.scala 898:38]
        reg_dcsr_ebreaks <= new_dcsr_ebreaks; // @[CSR.scala 902:47]
      end
    end
    if (reset) begin // @[CSR.scala 322:21]
      reg_dcsr_ebreaku <= 1'h0; // @[CSR.scala 322:21]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_58) begin // @[CSR.scala 898:38]
        reg_dcsr_ebreaku <= new_dcsr_ebreaku; // @[CSR.scala 903:41]
      end
    end
    if (reset) begin // @[CSR.scala 363:22]
      reg_debug <= 1'h0; // @[CSR.scala 363:22]
    end else if (insn_ret) begin // @[CSR.scala 751:19]
      if (_T_396) begin // @[CSR.scala 752:52]
        reg_debug <= _GEN_87;
      end else if (io_rw_addr[10]) begin // @[CSR.scala 758:53]
        reg_debug <= 1'h0; // @[CSR.scala 760:17]
      end else begin
        reg_debug <= _GEN_87;
      end
    end else begin
      reg_debug <= _GEN_87;
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_166) begin // @[CSR.scala 943:42]
        reg_mideleg <= wdata; // @[CSR.scala 943:56]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_167) begin // @[CSR.scala 944:42]
        reg_medeleg <= wdata; // @[CSR.scala 944:56]
      end
    end
    if (reset) begin // @[CSR.scala 322:21]
      reg_dcsr_cause <= 3'h0; // @[CSR.scala 322:21]
    end else if (exception) begin // @[CSR.scala 701:20]
      if (trapToDebug) begin // @[CSR.scala 702:24]
        if (_T_274) begin // @[CSR.scala 703:25]
          reg_dcsr_cause <= _reg_dcsr_cause_T_2; // @[CSR.scala 706:24]
        end
      end
    end
    if (reset) begin // @[CSR.scala 322:21]
      reg_dcsr_step <= 1'h0; // @[CSR.scala 322:21]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_58) begin // @[CSR.scala 898:38]
        reg_dcsr_step <= new_dcsr_step; // @[CSR.scala 900:23]
      end
    end
    reg_dpc <= _GEN_364[39:0];
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_60) begin // @[CSR.scala 907:42]
        reg_dscratch <= wdata; // @[CSR.scala 907:57]
      end
    end
    if (reset) begin // @[CSR.scala 1055:18]
      reg_bp_0_control_dmode <= 1'h0; // @[CSR.scala 1057:17]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2164) begin // @[CSR.scala 954:70]
        if (_T_45) begin // @[CSR.scala 966:44]
          reg_bp_0_control_dmode <= dMode; // @[CSR.scala 975:30]
        end
      end
    end
    if (reset) begin // @[CSR.scala 1055:18]
      reg_bp_0_control_action <= 1'h0; // @[CSR.scala 1056:18]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2164) begin // @[CSR.scala 954:70]
        if (_T_45) begin // @[CSR.scala 966:44]
          reg_bp_0_control_action <= _GEN_199;
        end
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2164) begin // @[CSR.scala 954:70]
        if (_T_45) begin // @[CSR.scala 966:44]
          reg_bp_0_control_tmatch <= wdata[8:7]; // @[CSR.scala 967:24]
        end
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2164) begin // @[CSR.scala 954:70]
        if (_T_45) begin // @[CSR.scala 966:44]
          reg_bp_0_control_m <= wdata[6]; // @[CSR.scala 967:24]
        end
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2164) begin // @[CSR.scala 954:70]
        if (_T_45) begin // @[CSR.scala 966:44]
          reg_bp_0_control_s <= wdata[4]; // @[CSR.scala 967:24]
        end
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2164) begin // @[CSR.scala 954:70]
        if (_T_45) begin // @[CSR.scala 966:44]
          reg_bp_0_control_u <= wdata[3]; // @[CSR.scala 967:24]
        end
      end
    end
    if (reset) begin // @[CSR.scala 1055:18]
      reg_bp_0_control_x <= 1'h0; // @[CSR.scala 1061:13]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2164) begin // @[CSR.scala 954:70]
        if (_T_45) begin // @[CSR.scala 966:44]
          reg_bp_0_control_x <= wdata[2]; // @[CSR.scala 967:24]
        end
      end
    end
    if (reset) begin // @[CSR.scala 1055:18]
      reg_bp_0_control_w <= 1'h0; // @[CSR.scala 1060:13]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2164) begin // @[CSR.scala 954:70]
        if (_T_45) begin // @[CSR.scala 966:44]
          reg_bp_0_control_w <= wdata[1]; // @[CSR.scala 967:24]
        end
      end
    end
    if (reset) begin // @[CSR.scala 1055:18]
      reg_bp_0_control_r <= 1'h0; // @[CSR.scala 1059:13]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2164) begin // @[CSR.scala 954:70]
        if (_T_45) begin // @[CSR.scala 966:44]
          reg_bp_0_control_r <= wdata[0]; // @[CSR.scala 967:24]
        end
      end
    end
    reg_bp_0_address <= _GEN_378[38:0];
    if (reset) begin // @[CSR.scala 1072:18]
      reg_pmp_0_cfg_l <= 1'h0; // @[PMP.scala 40:11]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2175) begin // @[CSR.scala 986:76]
        reg_pmp_0_cfg_l <= newCfg_l; // @[CSR.scala 988:17]
      end
    end
    if (reset) begin // @[CSR.scala 1072:18]
      reg_pmp_0_cfg_a <= 2'h0; // @[PMP.scala 39:11]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2175) begin // @[CSR.scala 986:76]
        reg_pmp_0_cfg_a <= newCfg_a; // @[CSR.scala 988:17]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2175) begin // @[CSR.scala 986:76]
        reg_pmp_0_cfg_x <= newCfg_x; // @[CSR.scala 988:17]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2175) begin // @[CSR.scala 986:76]
        reg_pmp_0_cfg_w <= _reg_pmp_0_cfg_w_T; // @[CSR.scala 990:19]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2175) begin // @[CSR.scala 986:76]
        reg_pmp_0_cfg_r <= newCfg_r; // @[CSR.scala 988:17]
      end
    end
    reg_pmp_0_addr <= _GEN_416[29:0];
    if (reset) begin // @[CSR.scala 1072:18]
      reg_pmp_1_cfg_l <= 1'h0; // @[PMP.scala 40:11]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2185) begin // @[CSR.scala 986:76]
        reg_pmp_1_cfg_l <= newCfg_1_l; // @[CSR.scala 988:17]
      end
    end
    if (reset) begin // @[CSR.scala 1072:18]
      reg_pmp_1_cfg_a <= 2'h0; // @[PMP.scala 39:11]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2185) begin // @[CSR.scala 986:76]
        reg_pmp_1_cfg_a <= newCfg_1_a; // @[CSR.scala 988:17]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2185) begin // @[CSR.scala 986:76]
        reg_pmp_1_cfg_x <= newCfg_1_x; // @[CSR.scala 988:17]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2185) begin // @[CSR.scala 986:76]
        reg_pmp_1_cfg_w <= _reg_pmp_1_cfg_w_T; // @[CSR.scala 990:19]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2185) begin // @[CSR.scala 986:76]
        reg_pmp_1_cfg_r <= newCfg_1_r; // @[CSR.scala 988:17]
      end
    end
    reg_pmp_1_addr <= _GEN_423[29:0];
    if (reset) begin // @[CSR.scala 1072:18]
      reg_pmp_2_cfg_l <= 1'h0; // @[PMP.scala 40:11]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2195) begin // @[CSR.scala 986:76]
        reg_pmp_2_cfg_l <= newCfg_2_l; // @[CSR.scala 988:17]
      end
    end
    if (reset) begin // @[CSR.scala 1072:18]
      reg_pmp_2_cfg_a <= 2'h0; // @[PMP.scala 39:11]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2195) begin // @[CSR.scala 986:76]
        reg_pmp_2_cfg_a <= newCfg_2_a; // @[CSR.scala 988:17]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2195) begin // @[CSR.scala 986:76]
        reg_pmp_2_cfg_x <= newCfg_2_x; // @[CSR.scala 988:17]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2195) begin // @[CSR.scala 986:76]
        reg_pmp_2_cfg_w <= _reg_pmp_2_cfg_w_T; // @[CSR.scala 990:19]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2195) begin // @[CSR.scala 986:76]
        reg_pmp_2_cfg_r <= newCfg_2_r; // @[CSR.scala 988:17]
      end
    end
    reg_pmp_2_addr <= _GEN_430[29:0];
    if (reset) begin // @[CSR.scala 1072:18]
      reg_pmp_3_cfg_l <= 1'h0; // @[PMP.scala 40:11]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2205) begin // @[CSR.scala 986:76]
        reg_pmp_3_cfg_l <= newCfg_3_l; // @[CSR.scala 988:17]
      end
    end
    if (reset) begin // @[CSR.scala 1072:18]
      reg_pmp_3_cfg_a <= 2'h0; // @[PMP.scala 39:11]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2205) begin // @[CSR.scala 986:76]
        reg_pmp_3_cfg_a <= newCfg_3_a; // @[CSR.scala 988:17]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2205) begin // @[CSR.scala 986:76]
        reg_pmp_3_cfg_x <= newCfg_3_x; // @[CSR.scala 988:17]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2205) begin // @[CSR.scala 986:76]
        reg_pmp_3_cfg_w <= _reg_pmp_3_cfg_w_T; // @[CSR.scala 990:19]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2205) begin // @[CSR.scala 986:76]
        reg_pmp_3_cfg_r <= newCfg_3_r; // @[CSR.scala 988:17]
      end
    end
    reg_pmp_3_addr <= _GEN_437[29:0];
    if (reset) begin // @[CSR.scala 1072:18]
      reg_pmp_4_cfg_l <= 1'h0; // @[PMP.scala 40:11]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2215) begin // @[CSR.scala 986:76]
        reg_pmp_4_cfg_l <= newCfg_4_l; // @[CSR.scala 988:17]
      end
    end
    if (reset) begin // @[CSR.scala 1072:18]
      reg_pmp_4_cfg_a <= 2'h0; // @[PMP.scala 39:11]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2215) begin // @[CSR.scala 986:76]
        reg_pmp_4_cfg_a <= newCfg_4_a; // @[CSR.scala 988:17]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2215) begin // @[CSR.scala 986:76]
        reg_pmp_4_cfg_x <= newCfg_4_x; // @[CSR.scala 988:17]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2215) begin // @[CSR.scala 986:76]
        reg_pmp_4_cfg_w <= _reg_pmp_4_cfg_w_T; // @[CSR.scala 990:19]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2215) begin // @[CSR.scala 986:76]
        reg_pmp_4_cfg_r <= newCfg_4_r; // @[CSR.scala 988:17]
      end
    end
    reg_pmp_4_addr <= _GEN_444[29:0];
    if (reset) begin // @[CSR.scala 1072:18]
      reg_pmp_5_cfg_l <= 1'h0; // @[PMP.scala 40:11]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2225) begin // @[CSR.scala 986:76]
        reg_pmp_5_cfg_l <= newCfg_5_l; // @[CSR.scala 988:17]
      end
    end
    if (reset) begin // @[CSR.scala 1072:18]
      reg_pmp_5_cfg_a <= 2'h0; // @[PMP.scala 39:11]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2225) begin // @[CSR.scala 986:76]
        reg_pmp_5_cfg_a <= newCfg_5_a; // @[CSR.scala 988:17]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2225) begin // @[CSR.scala 986:76]
        reg_pmp_5_cfg_x <= newCfg_5_x; // @[CSR.scala 988:17]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2225) begin // @[CSR.scala 986:76]
        reg_pmp_5_cfg_w <= _reg_pmp_5_cfg_w_T; // @[CSR.scala 990:19]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2225) begin // @[CSR.scala 986:76]
        reg_pmp_5_cfg_r <= newCfg_5_r; // @[CSR.scala 988:17]
      end
    end
    reg_pmp_5_addr <= _GEN_451[29:0];
    if (reset) begin // @[CSR.scala 1072:18]
      reg_pmp_6_cfg_l <= 1'h0; // @[PMP.scala 40:11]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2235) begin // @[CSR.scala 986:76]
        reg_pmp_6_cfg_l <= newCfg_6_l; // @[CSR.scala 988:17]
      end
    end
    if (reset) begin // @[CSR.scala 1072:18]
      reg_pmp_6_cfg_a <= 2'h0; // @[PMP.scala 39:11]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2235) begin // @[CSR.scala 986:76]
        reg_pmp_6_cfg_a <= newCfg_6_a; // @[CSR.scala 988:17]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2235) begin // @[CSR.scala 986:76]
        reg_pmp_6_cfg_x <= newCfg_6_x; // @[CSR.scala 988:17]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2235) begin // @[CSR.scala 986:76]
        reg_pmp_6_cfg_w <= _reg_pmp_6_cfg_w_T; // @[CSR.scala 990:19]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2235) begin // @[CSR.scala 986:76]
        reg_pmp_6_cfg_r <= newCfg_6_r; // @[CSR.scala 988:17]
      end
    end
    reg_pmp_6_addr <= _GEN_458[29:0];
    if (reset) begin // @[CSR.scala 1072:18]
      reg_pmp_7_cfg_l <= 1'h0; // @[PMP.scala 40:11]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2245) begin // @[CSR.scala 986:76]
        reg_pmp_7_cfg_l <= newCfg_7_l; // @[CSR.scala 988:17]
      end
    end
    if (reset) begin // @[CSR.scala 1072:18]
      reg_pmp_7_cfg_a <= 2'h0; // @[PMP.scala 39:11]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2245) begin // @[CSR.scala 986:76]
        reg_pmp_7_cfg_a <= newCfg_7_a; // @[CSR.scala 988:17]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2245) begin // @[CSR.scala 986:76]
        reg_pmp_7_cfg_x <= newCfg_7_x; // @[CSR.scala 988:17]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2245) begin // @[CSR.scala 986:76]
        reg_pmp_7_cfg_w <= _reg_pmp_7_cfg_w_T; // @[CSR.scala 990:19]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_2245) begin // @[CSR.scala 986:76]
        reg_pmp_7_cfg_r <= newCfg_7_r; // @[CSR.scala 988:17]
      end
    end
    reg_pmp_7_addr <= _GEN_465[29:0];
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_158) begin // @[CSR.scala 937:42]
        reg_mie <= _reg_mie_T_4; // @[CSR.scala 937:52]
      end else if (_T_52) begin // @[CSR.scala 871:40]
        reg_mie <= _reg_mie_T; // @[CSR.scala 871:50]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_51) begin // @[CSR.scala 859:35]
        reg_mip_seip <= new_mip_seip; // @[CSR.scala 868:22]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_51) begin // @[CSR.scala 859:35]
        reg_mip_stip <= new_mip_stip; // @[CSR.scala 867:22]
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_157) begin // @[CSR.scala 922:37]
        reg_mip_ssip <= new_sip_ssip; // @[CSR.scala 924:22]
      end else if (_T_51) begin // @[CSR.scala 859:35]
        reg_mip_ssip <= new_mip_ssip; // @[CSR.scala 866:22]
      end
    end
    reg_mepc <= _GEN_347[39:0];
    if (reset) begin // @[CSR.scala 386:27]
      reg_mcause <= 64'h0; // @[CSR.scala 386:27]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_56) begin // @[CSR.scala 876:40]
        reg_mcause <= _reg_mcause_T; // @[CSR.scala 876:53]
      end else begin
        reg_mcause <= _GEN_100;
      end
    end else begin
      reg_mcause <= _GEN_100;
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_55) begin // @[CSR.scala 877:40]
        reg_mtval <= wdata[39:0]; // @[CSR.scala 877:52]
      end else begin
        reg_mtval <= _GEN_101;
      end
    end else begin
      reg_mtval <= _GEN_101;
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_53) begin // @[CSR.scala 873:40]
        reg_mscratch <= wdata; // @[CSR.scala 873:55]
      end
    end
    if (reset) begin // @[CSR.scala 391:27]
      reg_mtvec <= 32'h0; // @[CSR.scala 391:27]
    end else begin
      reg_mtvec <= _GEN_349[31:0];
    end
    reg_mcounteren <= _GEN_376[31:0];
    reg_scounteren <= _GEN_375[31:0];
    reg_sepc <= _GEN_369[39:0];
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_160) begin // @[CSR.scala 941:42]
        reg_scause <= _reg_scause_T; // @[CSR.scala 941:55]
      end else begin
        reg_scause <= _GEN_93;
      end
    end else begin
      reg_scause <= _GEN_93;
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_161) begin // @[CSR.scala 942:42]
        reg_stval <= wdata[39:0]; // @[CSR.scala 942:54]
      end else begin
        reg_stval <= _GEN_95;
      end
    end else begin
      reg_stval <= _GEN_95;
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_159) begin // @[CSR.scala 938:42]
        reg_sscratch <= wdata; // @[CSR.scala 938:57]
      end
    end
    reg_stvec <= _GEN_370[38:0];
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_162) begin // @[CSR.scala 926:38]
        if (_T_2161) begin // @[CSR.scala 930:62]
          reg_satp_mode <= _reg_satp_mode_T; // @[CSR.scala 931:27]
        end
      end
    end
    if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_162) begin // @[CSR.scala 926:38]
        if (_T_2161) begin // @[CSR.scala 930:62]
          reg_satp_ppn <= {{24'd0}, new_satp_ppn[19:0]}; // @[CSR.scala 932:26]
        end
      end
    end
    reg_fflags <= _GEN_357[4:0];
    reg_frm <= _GEN_358[2:0];
    if (reset) begin // @[Counters.scala 46:37]
      value_left <= 6'h0; // @[Counters.scala 46:37]
    end else begin
      value_left <= _GEN_354[5:0];
    end
    if (reset) begin // @[Counters.scala 51:27]
      value_right <= 58'h0; // @[Counters.scala 51:27]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_65) begin // @[CSR.scala 1116:31]
        value_right <= wdata[63:6]; // @[Counters.scala 67:23]
      end else begin
        value_right <= _GEN_0;
      end
    end else begin
      value_right <= _GEN_0;
    end
    if (reset) begin // @[CSR.scala 464:21]
      reg_misa <= 64'h800000000094112d; // @[CSR.scala 464:21]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_48) begin // @[CSR.scala 850:36]
        if (_T_2156) begin // @[CSR.scala 854:64]
          reg_misa <= _reg_misa_T_8; // @[CSR.scala 856:20]
        end
      end
    end
    if (reset) begin // @[CSR.scala 591:43]
      reg_custom_0 <= 64'h208; // @[CSR.scala 591:43]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_186) begin // @[CSR.scala 1001:35]
        reg_custom_0 <= _reg_custom_0_T_3; // @[CSR.scala 1002:13]
      end
    end
    if (_io_status_dprv_x64_T_1) begin // @[CSR.scala 682:35]
      io_status_dprv_REG <= reg_mstatus_mpp;
    end else begin
      io_status_dprv_REG <= reg_mstatus_prv;
    end
    if (reset) begin // @[Reg.scala 27:20]
      io_status_cease_r <= 1'h0; // @[Reg.scala 27:20]
    end else begin
      io_status_cease_r <= _GEN_129;
    end
  end
  always @(posedge io_ungated_clock) begin
    if (reset) begin // @[CSR.scala 411:50]
      reg_wfi <= 1'h0; // @[CSR.scala 411:50]
    end else if (_T_258) begin // @[CSR.scala 690:69]
      reg_wfi <= 1'h0; // @[CSR.scala 690:79]
    end else begin
      reg_wfi <= _GEN_46;
    end
    if (reset) begin // @[Counters.scala 46:37]
      value_left_1 <= 6'h0; // @[Counters.scala 46:37]
    end else begin
      value_left_1 <= _GEN_352[5:0];
    end
    if (reset) begin // @[Counters.scala 51:27]
      value_right_1 <= 58'h0; // @[Counters.scala 51:27]
    end else if (csr_wen) begin // @[CSR.scala 824:18]
      if (_T_64) begin // @[CSR.scala 1116:31]
        value_right_1 <= wdata[63:6]; // @[Counters.scala 67:23]
      end else begin
        value_right_1 <= _GEN_1;
      end
    end else begin
      value_right_1 <= _GEN_1;
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
  reg_mstatus_prv = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  reg_mstatus_tsr = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  reg_mstatus_tw = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  reg_mstatus_tvm = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  reg_mstatus_mxr = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  reg_mstatus_sum = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  reg_mstatus_mprv = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  reg_mstatus_fs = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  reg_mstatus_mpp = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  reg_mstatus_spp = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  reg_mstatus_mpie = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  reg_mstatus_spie = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  reg_mstatus_mie = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  reg_mstatus_sie = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  reg_dcsr_prv = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  reg_singleStepped = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  reg_dcsr_ebreakm = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  reg_dcsr_ebreaks = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  reg_dcsr_ebreaku = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  reg_debug = _RAND_19[0:0];
  _RAND_20 = {2{`RANDOM}};
  reg_mideleg = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  reg_medeleg = _RAND_21[63:0];
  _RAND_22 = {1{`RANDOM}};
  reg_dcsr_cause = _RAND_22[2:0];
  _RAND_23 = {1{`RANDOM}};
  reg_dcsr_step = _RAND_23[0:0];
  _RAND_24 = {2{`RANDOM}};
  reg_dpc = _RAND_24[39:0];
  _RAND_25 = {2{`RANDOM}};
  reg_dscratch = _RAND_25[63:0];
  _RAND_26 = {1{`RANDOM}};
  reg_bp_0_control_dmode = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  reg_bp_0_control_action = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  reg_bp_0_control_tmatch = _RAND_28[1:0];
  _RAND_29 = {1{`RANDOM}};
  reg_bp_0_control_m = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  reg_bp_0_control_s = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  reg_bp_0_control_u = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  reg_bp_0_control_x = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  reg_bp_0_control_w = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  reg_bp_0_control_r = _RAND_34[0:0];
  _RAND_35 = {2{`RANDOM}};
  reg_bp_0_address = _RAND_35[38:0];
  _RAND_36 = {1{`RANDOM}};
  reg_pmp_0_cfg_l = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  reg_pmp_0_cfg_a = _RAND_37[1:0];
  _RAND_38 = {1{`RANDOM}};
  reg_pmp_0_cfg_x = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  reg_pmp_0_cfg_w = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  reg_pmp_0_cfg_r = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  reg_pmp_0_addr = _RAND_41[29:0];
  _RAND_42 = {1{`RANDOM}};
  reg_pmp_1_cfg_l = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  reg_pmp_1_cfg_a = _RAND_43[1:0];
  _RAND_44 = {1{`RANDOM}};
  reg_pmp_1_cfg_x = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  reg_pmp_1_cfg_w = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  reg_pmp_1_cfg_r = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  reg_pmp_1_addr = _RAND_47[29:0];
  _RAND_48 = {1{`RANDOM}};
  reg_pmp_2_cfg_l = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  reg_pmp_2_cfg_a = _RAND_49[1:0];
  _RAND_50 = {1{`RANDOM}};
  reg_pmp_2_cfg_x = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  reg_pmp_2_cfg_w = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  reg_pmp_2_cfg_r = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  reg_pmp_2_addr = _RAND_53[29:0];
  _RAND_54 = {1{`RANDOM}};
  reg_pmp_3_cfg_l = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  reg_pmp_3_cfg_a = _RAND_55[1:0];
  _RAND_56 = {1{`RANDOM}};
  reg_pmp_3_cfg_x = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  reg_pmp_3_cfg_w = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  reg_pmp_3_cfg_r = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  reg_pmp_3_addr = _RAND_59[29:0];
  _RAND_60 = {1{`RANDOM}};
  reg_pmp_4_cfg_l = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  reg_pmp_4_cfg_a = _RAND_61[1:0];
  _RAND_62 = {1{`RANDOM}};
  reg_pmp_4_cfg_x = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  reg_pmp_4_cfg_w = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  reg_pmp_4_cfg_r = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  reg_pmp_4_addr = _RAND_65[29:0];
  _RAND_66 = {1{`RANDOM}};
  reg_pmp_5_cfg_l = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  reg_pmp_5_cfg_a = _RAND_67[1:0];
  _RAND_68 = {1{`RANDOM}};
  reg_pmp_5_cfg_x = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  reg_pmp_5_cfg_w = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  reg_pmp_5_cfg_r = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  reg_pmp_5_addr = _RAND_71[29:0];
  _RAND_72 = {1{`RANDOM}};
  reg_pmp_6_cfg_l = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  reg_pmp_6_cfg_a = _RAND_73[1:0];
  _RAND_74 = {1{`RANDOM}};
  reg_pmp_6_cfg_x = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  reg_pmp_6_cfg_w = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  reg_pmp_6_cfg_r = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  reg_pmp_6_addr = _RAND_77[29:0];
  _RAND_78 = {1{`RANDOM}};
  reg_pmp_7_cfg_l = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  reg_pmp_7_cfg_a = _RAND_79[1:0];
  _RAND_80 = {1{`RANDOM}};
  reg_pmp_7_cfg_x = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  reg_pmp_7_cfg_w = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  reg_pmp_7_cfg_r = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  reg_pmp_7_addr = _RAND_83[29:0];
  _RAND_84 = {2{`RANDOM}};
  reg_mie = _RAND_84[63:0];
  _RAND_85 = {1{`RANDOM}};
  reg_mip_seip = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  reg_mip_stip = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  reg_mip_ssip = _RAND_87[0:0];
  _RAND_88 = {2{`RANDOM}};
  reg_mepc = _RAND_88[39:0];
  _RAND_89 = {2{`RANDOM}};
  reg_mcause = _RAND_89[63:0];
  _RAND_90 = {2{`RANDOM}};
  reg_mtval = _RAND_90[39:0];
  _RAND_91 = {2{`RANDOM}};
  reg_mscratch = _RAND_91[63:0];
  _RAND_92 = {1{`RANDOM}};
  reg_mtvec = _RAND_92[31:0];
  _RAND_93 = {1{`RANDOM}};
  reg_mcounteren = _RAND_93[31:0];
  _RAND_94 = {1{`RANDOM}};
  reg_scounteren = _RAND_94[31:0];
  _RAND_95 = {2{`RANDOM}};
  reg_sepc = _RAND_95[39:0];
  _RAND_96 = {2{`RANDOM}};
  reg_scause = _RAND_96[63:0];
  _RAND_97 = {2{`RANDOM}};
  reg_stval = _RAND_97[39:0];
  _RAND_98 = {2{`RANDOM}};
  reg_sscratch = _RAND_98[63:0];
  _RAND_99 = {2{`RANDOM}};
  reg_stvec = _RAND_99[38:0];
  _RAND_100 = {1{`RANDOM}};
  reg_satp_mode = _RAND_100[3:0];
  _RAND_101 = {2{`RANDOM}};
  reg_satp_ppn = _RAND_101[43:0];
  _RAND_102 = {1{`RANDOM}};
  reg_wfi = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  reg_fflags = _RAND_103[4:0];
  _RAND_104 = {1{`RANDOM}};
  reg_frm = _RAND_104[2:0];
  _RAND_105 = {1{`RANDOM}};
  value_left = _RAND_105[5:0];
  _RAND_106 = {2{`RANDOM}};
  value_right = _RAND_106[57:0];
  _RAND_107 = {1{`RANDOM}};
  value_left_1 = _RAND_107[5:0];
  _RAND_108 = {2{`RANDOM}};
  value_right_1 = _RAND_108[57:0];
  _RAND_109 = {2{`RANDOM}};
  reg_misa = _RAND_109[63:0];
  _RAND_110 = {2{`RANDOM}};
  reg_custom_0 = _RAND_110[63:0];
  _RAND_111 = {1{`RANDOM}};
  io_status_dprv_REG = _RAND_111[1:0];
  _RAND_112 = {1{`RANDOM}};
  io_status_cease_r = _RAND_112[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
