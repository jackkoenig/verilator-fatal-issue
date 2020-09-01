module TLDebugModuleInner(
  input         clock,
  input         reset,
  output        auto_tl_in_a_ready,
  input         auto_tl_in_a_valid,
  input  [2:0]  auto_tl_in_a_bits_opcode,
  input  [1:0]  auto_tl_in_a_bits_size,
  input  [8:0]  auto_tl_in_a_bits_source,
  input  [11:0] auto_tl_in_a_bits_address,
  input  [7:0]  auto_tl_in_a_bits_mask,
  input  [63:0] auto_tl_in_a_bits_data,
  input         auto_tl_in_d_ready,
  output        auto_tl_in_d_valid,
  output [2:0]  auto_tl_in_d_bits_opcode,
  output [1:0]  auto_tl_in_d_bits_size,
  output [8:0]  auto_tl_in_d_bits_source,
  output [63:0] auto_tl_in_d_bits_data,
  output        auto_dmi_in_a_ready,
  input         auto_dmi_in_a_valid,
  input  [2:0]  auto_dmi_in_a_bits_opcode,
  input  [1:0]  auto_dmi_in_a_bits_size,
  input         auto_dmi_in_a_bits_source,
  input  [8:0]  auto_dmi_in_a_bits_address,
  input  [3:0]  auto_dmi_in_a_bits_mask,
  input  [31:0] auto_dmi_in_a_bits_data,
  input         auto_dmi_in_d_ready,
  output        auto_dmi_in_d_valid,
  output [2:0]  auto_dmi_in_d_bits_opcode,
  output [1:0]  auto_dmi_in_d_bits_size,
  output        auto_dmi_in_d_bits_source,
  output [31:0] auto_dmi_in_d_bits_data,
  input         io_dmactive,
  output        io_innerCtrl_ready,
  input         io_innerCtrl_valid,
  input         io_innerCtrl_bits_resumereq,
  input  [9:0]  io_innerCtrl_bits_hartsel,
  input         io_innerCtrl_bits_ackhavereset,
  input         io_innerCtrl_bits_hrmask_0,
  output        io_hgDebugInt_0,
  input         io_hartIsInReset_0
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
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
`endif // RANDOMIZE_REG_INIT
  wire  hartIsInResetSync_0_debug_hartReset_0_clock; // @[ShiftReg.scala 45:23]
  wire  hartIsInResetSync_0_debug_hartReset_0_reset; // @[ShiftReg.scala 45:23]
  wire  hartIsInResetSync_0_debug_hartReset_0_io_d; // @[ShiftReg.scala 45:23]
  wire  hartIsInResetSync_0_debug_hartReset_0_io_q; // @[ShiftReg.scala 45:23]
  reg  haltedBitRegs; // @[Debug.scala 778:31]
  reg  resumeReqRegs; // @[Debug.scala 779:31]
  reg  haveResetBitRegs; // @[Debug.scala 780:31]
  wire  hamaskWrSel_0 = io_innerCtrl_bits_hartsel == 10'h0; // @[Debug.scala 842:61]
  reg  hrmaskReg_0; // @[Debug.scala 854:29]
  wire  _T_1 = ~io_dmactive; // @[Debug.scala 861:11]
  wire  _T_4 = io_innerCtrl_ready & io_innerCtrl_valid; // @[Decoupled.scala 40:37]
  reg  hrDebugIntReg_0; // @[Debug.scala 868:34]
  wire  _T_10 = ~haltedBitRegs; // @[package.scala 62:38]
  wire  _T_11 = hrDebugIntReg_0 & _T_10; // @[package.scala 57:72]
  wire  hartIsInResetSync_0 = hartIsInResetSync_0_debug_hartReset_0_io_q; // @[ShiftReg.scala 48:24 ShiftReg.scala 48:24]
  wire  _T_12 = hartIsInResetSync_0 | _T_11; // @[package.scala 58:75]
  wire  _T_13 = hrmaskReg_0 & _T_12; // @[package.scala 57:72]
  wire  resumereq = _T_4 & io_innerCtrl_bits_resumereq; // @[Debug.scala 890:41]
  wire  _resumeAcks_T = ~resumeReqRegs; // @[Debug.scala 1235:24]
  wire  _resumeAcks_T_1 = ~hamaskWrSel_0; // @[Debug.scala 1235:41]
  wire  _resumeAcks_T_2 = (~resumeReqRegs) & (~hamaskWrSel_0); // @[Debug.scala 1235:39]
  wire  resumeAcks = resumereq ? _resumeAcks_T_2 : _resumeAcks_T; // @[Debug.scala 1234:24 Debug.scala 1235:20 Debug.scala 1237:20]
  wire  _T_20 = _T_4 & io_innerCtrl_bits_ackhavereset; // @[Debug.scala 922:33]
  wire  _haveResetBitRegs_T_2 = (haveResetBitRegs & _resumeAcks_T_1) | hartIsInResetSync_0; // @[Debug.scala 923:74]
  wire  _haveResetBitRegs_T_3 = haveResetBitRegs | hartIsInResetSync_0; // @[Debug.scala 925:46]
  wire [31:0] haltedStatus_0 = {{31'd0}, haltedBitRegs}; // @[Debug.scala 1063:30]
  wire  haltedSummary = |haltedStatus_0; // @[Debug.scala 1073:48]
  wire [31:0] HALTSUM1RdData_haltsum1 = {{31'd0}, haltedSummary};
  reg [2:0] ABSTRACTCSReg_cmderr; // @[Debug.scala 1087:34]
  wire  in_bits_read = auto_dmi_in_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 69:36]
  wire [6:0] in_bits_index = auto_dmi_in_a_bits_address[8:2]; // @[Edges.scala 193:34]
  wire  out_iindex_right_right_right = in_bits_index[5]; // @[RegisterRouter.scala 80:24]
  wire  out_iindex_right_right_left = in_bits_index[3]; // @[RegisterRouter.scala 80:24]
  wire  out_iindex_right_left = in_bits_index[2]; // @[RegisterRouter.scala 80:24]
  wire  out_iindex_left_right = in_bits_index[1]; // @[RegisterRouter.scala 80:24]
  wire  out_iindex_left_left = in_bits_index[0]; // @[RegisterRouter.scala 80:24]
  wire [4:0] out_iindex = {out_iindex_right_right_right,out_iindex_right_right_left,out_iindex_right_left,
    out_iindex_left_right,out_iindex_left_left}; // @[Cat.scala 29:58]
  wire [6:0] out_findex = in_bits_index & 7'h50; // @[RegisterRouter.scala 80:24]
  wire  _out_T_46 = out_findex == 7'h0; // @[RegisterRouter.scala 80:24]
  wire  _out_T_4 = out_findex == 7'h10; // @[RegisterRouter.scala 80:24]
  wire  _out_T_22 = out_findex == 7'h40; // @[RegisterRouter.scala 80:24]
  wire [31:0] _out_backSel_T = 32'h1 << out_iindex; // @[OneHot.scala 58:35]
  wire  out_backSel_6 = _out_backSel_T[6]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_6 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_6) & (
    out_findex == 7'h10); // @[RegisterRouter.scala 80:24]
  wire [7:0] out_backMask_right_right = auto_dmi_in_a_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_right_left = auto_dmi_in_a_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_left_right = auto_dmi_in_a_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_left_left = auto_dmi_in_a_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [31:0] out_backMask = {out_backMask_right_right,out_backMask_right_left,out_backMask_left_right,
    out_backMask_left_left}; // @[Cat.scala 29:58]
  wire  out_womask_65 = &(out_backMask[10:8]); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_65 = out_wofireMux_all_6 & out_womask_65; // @[RegisterRouter.scala 80:24]
  reg [1:0] ctrlStateReg; // @[Debug.scala 1561:27]
  wire  ABSTRACTCSWrEnLegal = ctrlStateReg == 2'h0; // @[Debug.scala 1571:44]
  wire  ABSTRACTCSWrEn = out_f_woready_65 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1095:51]
  wire [2:0] ABSTRACTCSWrData_cmderr = auto_dmi_in_a_bits_data[10:8]; // @[RegisterRouter.scala 80:24]
  wire [2:0] _ABSTRACTCSReg_cmderr_T = ~ABSTRACTCSWrData_cmderr; // @[Debug.scala 1115:58]
  wire [2:0] _ABSTRACTCSReg_cmderr_T_1 = ABSTRACTCSReg_cmderr & _ABSTRACTCSReg_cmderr_T; // @[Debug.scala 1115:56]
  wire [2:0] _GEN_37 = ABSTRACTCSWrEn ? _ABSTRACTCSReg_cmderr_T_1 : ABSTRACTCSReg_cmderr; // @[Debug.scala 1114:30 Debug.scala 1115:32 Debug.scala 1087:34]
  wire  _T_301 = ctrlStateReg == 2'h1; // @[Debug.scala 1625:30]
  reg [7:0] COMMANDRdData_cmdtype; // @[Debug.scala 1172:25]
  wire  commandRegIsAccessRegister = COMMANDRdData_cmdtype == 8'h0; // @[Debug.scala 1586:58]
  reg [23:0] COMMANDRdData_control; // @[Debug.scala 1172:25]
  wire [31:0] _accessRegisterCommandReg_T = {COMMANDRdData_cmdtype,COMMANDRdData_control}; // @[Debug.scala 1417:62]
  wire  accessRegisterCommandReg_transfer = _accessRegisterCommandReg_T[17]; // @[Debug.scala 1417:73]
  wire  accessRegisterCommandReg_write = _accessRegisterCommandReg_T[16]; // @[Debug.scala 1417:73]
  wire [15:0] accessRegisterCommandReg_regno = _accessRegisterCommandReg_T[15:0]; // @[Debug.scala 1417:73]
  wire  accessRegIsGPR = (accessRegisterCommandReg_regno >= 16'h1000) & (accessRegisterCommandReg_regno <= 16'h101f); // @[Debug.scala 1594:70]
  wire  _T_297 = (~accessRegisterCommandReg_transfer) | accessRegIsGPR; // @[Debug.scala 1604:54]
  wire  _GEN_2094 = _T_297 ? 1'h0 : 1'h1; // @[Debug.scala 1604:73 Debug.scala 1605:33]
  wire  commandRegIsUnsupported = commandRegIsAccessRegister ? _GEN_2094 : 1'h1; // @[Debug.scala 1601:39]
  wire  _GEN_2095 = _T_297 & _T_10; // @[Debug.scala 1604:73 Debug.scala 1606:33]
  wire  commandRegBadHaltResume = commandRegIsAccessRegister & _GEN_2095; // @[Debug.scala 1601:39]
  wire  _GEN_2111 = commandRegIsUnsupported ? 1'h0 : commandRegBadHaltResume; // @[Debug.scala 1632:38]
  wire  _GEN_2124 = _T_301 & _GEN_2111; // @[Debug.scala 1625:59]
  wire  errorHaltResume = ABSTRACTCSWrEnLegal ? 1'h0 : _GEN_2124; // @[Debug.scala 1617:47]
  wire [2:0] _GEN_38 = errorHaltResume ? 3'h4 : _GEN_37; // @[Debug.scala 1111:36 Debug.scala 1112:30]
  wire  out_backSel_7 = _out_backSel_T[7]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_7 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_7) & (
    out_findex == 7'h10); // @[RegisterRouter.scala 80:24]
  wire  out_womask_90 = &out_backMask; // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_90 = out_wofireMux_all_7 & out_womask_90; // @[RegisterRouter.scala 80:24]
  wire  COMMANDWrEn = out_f_woready_90 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1180:40]
  wire [31:0] COMMANDWrDataVal = out_f_woready_90 ? auto_dmi_in_a_bits_data : 32'h0; // @[Debug.scala 265:24 Debug.scala 265:30]
  wire [7:0] COMMANDWrData_cmdtype = COMMANDWrDataVal[31:24]; // @[Debug.scala 1175:65]
  wire  commandWrIsAccessRegister = COMMANDWrData_cmdtype == 8'h0; // @[Debug.scala 1585:60]
  wire  _wrAccessRegisterCommand_T_1 = ABSTRACTCSReg_cmderr == 3'h0; // @[Debug.scala 1610:103]
  wire  wrAccessRegisterCommand = (COMMANDWrEn & commandWrIsAccessRegister) & (ABSTRACTCSReg_cmderr == 3'h0); // @[Debug.scala 1610:78]
  wire  out_backSel_4 = _out_backSel_T[4]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_4 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_4) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_womask_96 = &(out_backMask[7:0]); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_96 = out_wofireMux_all_4 & out_womask_96; // @[RegisterRouter.scala 80:24]
  wire  out_rofireMux_all_4 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & in_bits_read) & out_backSel_4) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_romask_96 = |(out_backMask[7:0]); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_96 = out_rofireMux_all_4 & out_romask_96; // @[RegisterRouter.scala 80:24]
  wire  dmiAbstractDataAccessVec_0 = out_f_woready_96 | out_f_roready_96; // @[Debug.scala 1153:105]
  reg [11:0] ABSTRACTAUTOReg_autoexecdata; // @[Debug.scala 1131:36]
  wire  autoexecData_0 = dmiAbstractDataAccessVec_0 & (ABSTRACTAUTOReg_autoexecdata[0]); // @[Debug.scala 1164:140]
  wire  out_backSel_5 = _out_backSel_T[5]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_5 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_5) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready = out_wofireMux_all_5 & out_womask_96; // @[RegisterRouter.scala 80:24]
  wire  out_rofireMux_all_5 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & in_bits_read) & out_backSel_5) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready = out_rofireMux_all_5 & out_romask_96; // @[RegisterRouter.scala 80:24]
  wire  dmiAbstractDataAccessVec_4 = out_f_woready | out_f_roready; // @[Debug.scala 1153:105]
  wire  autoexecData_1 = dmiAbstractDataAccessVec_4 & (ABSTRACTAUTOReg_autoexecdata[1]); // @[Debug.scala 1164:140]
  wire  out_backSel_16 = _out_backSel_T[16]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_16 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_16) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_31 = out_wofireMux_all_16 & out_womask_96; // @[RegisterRouter.scala 80:24]
  wire  out_rofireMux_all_16 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & in_bits_read) & out_backSel_16) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_31 = out_rofireMux_all_16 & out_romask_96; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_0 = out_f_woready_31 | out_f_roready_31; // @[Debug.scala 1156:108]
  reg [15:0] ABSTRACTAUTOReg_autoexecprogbuf; // @[Debug.scala 1131:36]
  wire  autoexecProg_0 = dmiProgramBufferAccessVec_0 & (ABSTRACTAUTOReg_autoexecprogbuf[0]); // @[Debug.scala 1165:144]
  wire  out_backSel_17 = _out_backSel_T[17]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_17 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_17) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_23 = out_wofireMux_all_17 & out_womask_96; // @[RegisterRouter.scala 80:24]
  wire  out_rofireMux_all_17 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & in_bits_read) & out_backSel_17) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_23 = out_rofireMux_all_17 & out_romask_96; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_4 = out_f_woready_23 | out_f_roready_23; // @[Debug.scala 1156:108]
  wire  autoexecProg_1 = dmiProgramBufferAccessVec_4 & (ABSTRACTAUTOReg_autoexecprogbuf[1]); // @[Debug.scala 1165:144]
  wire  out_backSel_18 = _out_backSel_T[18]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_18 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_18) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_35 = out_wofireMux_all_18 & out_womask_96; // @[RegisterRouter.scala 80:24]
  wire  out_rofireMux_all_18 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & in_bits_read) & out_backSel_18) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_35 = out_rofireMux_all_18 & out_romask_96; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_8 = out_f_woready_35 | out_f_roready_35; // @[Debug.scala 1156:108]
  wire  autoexecProg_2 = dmiProgramBufferAccessVec_8 & (ABSTRACTAUTOReg_autoexecprogbuf[2]); // @[Debug.scala 1165:144]
  wire  out_backSel_19 = _out_backSel_T[19]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_19 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_19) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_78 = out_wofireMux_all_19 & out_womask_96; // @[RegisterRouter.scala 80:24]
  wire  out_rofireMux_all_19 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & in_bits_read) & out_backSel_19) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_78 = out_rofireMux_all_19 & out_romask_96; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_12 = out_f_woready_78 | out_f_roready_78; // @[Debug.scala 1156:108]
  wire  autoexecProg_3 = dmiProgramBufferAccessVec_12 & (ABSTRACTAUTOReg_autoexecprogbuf[3]); // @[Debug.scala 1165:144]
  wire  out_backSel_20 = _out_backSel_T[20]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_20 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_20) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_91 = out_wofireMux_all_20 & out_womask_96; // @[RegisterRouter.scala 80:24]
  wire  out_rofireMux_all_20 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & in_bits_read) & out_backSel_20) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_91 = out_rofireMux_all_20 & out_romask_96; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_16 = out_f_woready_91 | out_f_roready_91; // @[Debug.scala 1156:108]
  wire  autoexecProg_4 = dmiProgramBufferAccessVec_16 & (ABSTRACTAUTOReg_autoexecprogbuf[4]); // @[Debug.scala 1165:144]
  wire  out_backSel_21 = _out_backSel_T[21]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_21 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_21) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_11 = out_wofireMux_all_21 & out_womask_96; // @[RegisterRouter.scala 80:24]
  wire  out_rofireMux_all_21 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & in_bits_read) & out_backSel_21) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_11 = out_rofireMux_all_21 & out_romask_96; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_20 = out_f_woready_11 | out_f_roready_11; // @[Debug.scala 1156:108]
  wire  autoexecProg_5 = dmiProgramBufferAccessVec_20 & (ABSTRACTAUTOReg_autoexecprogbuf[5]); // @[Debug.scala 1165:144]
  wire  out_backSel_22 = _out_backSel_T[22]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_22 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_22) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_19 = out_wofireMux_all_22 & out_womask_96; // @[RegisterRouter.scala 80:24]
  wire  out_rofireMux_all_22 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & in_bits_read) & out_backSel_22) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_19 = out_rofireMux_all_22 & out_romask_96; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_24 = out_f_woready_19 | out_f_roready_19; // @[Debug.scala 1156:108]
  wire  autoexecProg_6 = dmiProgramBufferAccessVec_24 & (ABSTRACTAUTOReg_autoexecprogbuf[6]); // @[Debug.scala 1165:144]
  wire  out_backSel_23 = _out_backSel_T[23]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_23 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_23) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_74 = out_wofireMux_all_23 & out_womask_96; // @[RegisterRouter.scala 80:24]
  wire  out_rofireMux_all_23 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & in_bits_read) & out_backSel_23) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_74 = out_rofireMux_all_23 & out_romask_96; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_28 = out_f_woready_74 | out_f_roready_74; // @[Debug.scala 1156:108]
  wire  autoexecProg_7 = dmiProgramBufferAccessVec_28 & (ABSTRACTAUTOReg_autoexecprogbuf[7]); // @[Debug.scala 1165:144]
  wire  out_backSel_24 = _out_backSel_T[24]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_24 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_24) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_86 = out_wofireMux_all_24 & out_womask_96; // @[RegisterRouter.scala 80:24]
  wire  out_rofireMux_all_24 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & in_bits_read) & out_backSel_24) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_86 = out_rofireMux_all_24 & out_romask_96; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_32 = out_f_woready_86 | out_f_roready_86; // @[Debug.scala 1156:108]
  wire  autoexecProg_8 = dmiProgramBufferAccessVec_32 & (ABSTRACTAUTOReg_autoexecprogbuf[8]); // @[Debug.scala 1165:144]
  wire  out_backSel_25 = _out_backSel_T[25]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_25 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_25) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_27 = out_wofireMux_all_25 & out_womask_96; // @[RegisterRouter.scala 80:24]
  wire  out_rofireMux_all_25 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & in_bits_read) & out_backSel_25) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_27 = out_rofireMux_all_25 & out_romask_96; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_36 = out_f_woready_27 | out_f_roready_27; // @[Debug.scala 1156:108]
  wire  autoexecProg_9 = dmiProgramBufferAccessVec_36 & (ABSTRACTAUTOReg_autoexecprogbuf[9]); // @[Debug.scala 1165:144]
  wire  out_backSel_26 = _out_backSel_T[26]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_26 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_26) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_4 = out_wofireMux_all_26 & out_womask_96; // @[RegisterRouter.scala 80:24]
  wire  out_rofireMux_all_26 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & in_bits_read) & out_backSel_26) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_4 = out_rofireMux_all_26 & out_romask_96; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_40 = out_f_woready_4 | out_f_roready_4; // @[Debug.scala 1156:108]
  wire  autoexecProg_10 = dmiProgramBufferAccessVec_40 & (ABSTRACTAUTOReg_autoexecprogbuf[10]); // @[Debug.scala 1165:144]
  wire  out_backSel_27 = _out_backSel_T[27]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_27 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_27) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_82 = out_wofireMux_all_27 & out_womask_96; // @[RegisterRouter.scala 80:24]
  wire  out_rofireMux_all_27 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & in_bits_read) & out_backSel_27) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_82 = out_rofireMux_all_27 & out_romask_96; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_44 = out_f_woready_82 | out_f_roready_82; // @[Debug.scala 1156:108]
  wire  autoexecProg_11 = dmiProgramBufferAccessVec_44 & (ABSTRACTAUTOReg_autoexecprogbuf[11]); // @[Debug.scala 1165:144]
  wire  out_backSel_28 = _out_backSel_T[28]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_28 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_28) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_70 = out_wofireMux_all_28 & out_womask_96; // @[RegisterRouter.scala 80:24]
  wire  out_rofireMux_all_28 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & in_bits_read) & out_backSel_28) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_70 = out_rofireMux_all_28 & out_romask_96; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_48 = out_f_woready_70 | out_f_roready_70; // @[Debug.scala 1156:108]
  wire  autoexecProg_12 = dmiProgramBufferAccessVec_48 & (ABSTRACTAUTOReg_autoexecprogbuf[12]); // @[Debug.scala 1165:144]
  wire  out_backSel_29 = _out_backSel_T[29]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_29 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_29) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_39 = out_wofireMux_all_29 & out_womask_96; // @[RegisterRouter.scala 80:24]
  wire  out_rofireMux_all_29 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & in_bits_read) & out_backSel_29) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_39 = out_rofireMux_all_29 & out_romask_96; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_52 = out_f_woready_39 | out_f_roready_39; // @[Debug.scala 1156:108]
  wire  autoexecProg_13 = dmiProgramBufferAccessVec_52 & (ABSTRACTAUTOReg_autoexecprogbuf[13]); // @[Debug.scala 1165:144]
  wire  out_backSel_30 = _out_backSel_T[30]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_30 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_30) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_15 = out_wofireMux_all_30 & out_womask_96; // @[RegisterRouter.scala 80:24]
  wire  out_rofireMux_all_30 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & in_bits_read) & out_backSel_30) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_15 = out_rofireMux_all_30 & out_romask_96; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_56 = out_f_woready_15 | out_f_roready_15; // @[Debug.scala 1156:108]
  wire  autoexecProg_14 = dmiProgramBufferAccessVec_56 & (ABSTRACTAUTOReg_autoexecprogbuf[14]); // @[Debug.scala 1165:144]
  wire  out_backSel_31 = _out_backSel_T[31]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_31 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_31) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_100 = out_wofireMux_all_31 & out_womask_96; // @[RegisterRouter.scala 80:24]
  wire  out_rofireMux_all_31 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & in_bits_read) & out_backSel_31) & (
    out_findex == 7'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_100 = out_rofireMux_all_31 & out_romask_96; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_60 = out_f_woready_100 | out_f_roready_100; // @[Debug.scala 1156:108]
  wire  autoexecProg_15 = dmiProgramBufferAccessVec_60 & (ABSTRACTAUTOReg_autoexecprogbuf[15]); // @[Debug.scala 1165:144]
  wire  autoexec = (autoexecData_0 | autoexecData_1) | (((((((((((((((autoexecProg_0 | autoexecProg_1) | autoexecProg_2)
     | autoexecProg_3) | autoexecProg_4) | autoexecProg_5) | autoexecProg_6) | autoexecProg_7) | autoexecProg_8) |
    autoexecProg_9) | autoexecProg_10) | autoexecProg_11) | autoexecProg_12) | autoexecProg_13) | autoexecProg_14) |
    autoexecProg_15); // @[Debug.scala 1167:48]
  wire  regAccessRegisterCommand = (autoexec & commandRegIsAccessRegister) & _wrAccessRegisterCommand_T_1; // @[Debug.scala 1611:78]
  wire  _T_299 = wrAccessRegisterCommand | regAccessRegisterCommand; // @[Debug.scala 1618:37]
  wire  commandWrIsUnsupported = COMMANDWrEn & (~commandWrIsAccessRegister); // @[Debug.scala 1588:46]
  wire  _T_300 = autoexec & commandRegIsUnsupported; // @[Debug.scala 1622:28]
  wire  _GEN_2101 = commandWrIsUnsupported | _T_300; // @[Debug.scala 1620:43 Debug.scala 1621:26]
  wire  _GEN_2103 = _T_299 ? 1'h0 : _GEN_2101; // @[Debug.scala 1618:66]
  wire  _GEN_2122 = _T_301 & commandRegIsUnsupported; // @[Debug.scala 1625:59]
  wire  errorUnsupported = ABSTRACTCSWrEnLegal ? _GEN_2103 : _GEN_2122; // @[Debug.scala 1617:47]
  wire  _T_302 = ctrlStateReg == 2'h2; // @[Debug.scala 1646:30]
  wire  in_1_bits_read = auto_tl_in_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 69:36]
  wire [8:0] in_1_bits_index = auto_tl_in_a_bits_address[11:3]; // @[Edges.scala 193:34]
  wire  out_iindex_right_right_right_1 = in_1_bits_index[7]; // @[RegisterRouter.scala 80:24]
  wire  out_iindex_right_right_left_1 = in_1_bits_index[6]; // @[RegisterRouter.scala 80:24]
  wire  out_iindex_right_left_right = in_1_bits_index[5]; // @[RegisterRouter.scala 80:24]
  wire  out_iindex_right_left_left = in_1_bits_index[4]; // @[RegisterRouter.scala 80:24]
  wire  out_iindex_left_right_right = in_1_bits_index[3]; // @[RegisterRouter.scala 80:24]
  wire  out_iindex_left_right_left = in_1_bits_index[2]; // @[RegisterRouter.scala 80:24]
  wire  out_iindex_left_left_right = in_1_bits_index[1]; // @[RegisterRouter.scala 80:24]
  wire  out_iindex_left_left_left = in_1_bits_index[0]; // @[RegisterRouter.scala 80:24]
  wire [7:0] out_iindex_1 = {out_iindex_right_right_right_1,out_iindex_right_right_left_1,out_iindex_right_left_right,
    out_iindex_right_left_left,out_iindex_left_right_right,out_iindex_left_right_left,out_iindex_left_left_right,
    out_iindex_left_left_left}; // @[Cat.scala 29:58]
  wire [8:0] out_findex_1 = in_1_bits_index & 9'h100; // @[RegisterRouter.scala 80:24]
  wire  _out_T_1342 = out_findex_1 == 9'h0; // @[RegisterRouter.scala 80:24]
  wire  _out_T_1266 = out_findex_1 == 9'h100; // @[RegisterRouter.scala 80:24]
  wire [255:0] _out_backSel_T_1 = 256'h1 << out_iindex_1; // @[OneHot.scala 58:35]
  wire  out_backSel_33 = _out_backSel_T_1[33]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_65 = (((auto_tl_in_a_valid & auto_tl_in_d_ready) & (~in_1_bits_read)) & out_backSel_33) & (
    out_findex_1 == 9'h0); // @[RegisterRouter.scala 80:24]
  wire [7:0] out_backMask_right_right_right = auto_tl_in_a_bits_mask[7] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_right_right_left = auto_tl_in_a_bits_mask[6] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_right_left_right = auto_tl_in_a_bits_mask[5] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_right_left_left = auto_tl_in_a_bits_mask[4] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_left_right_right = auto_tl_in_a_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_left_right_left = auto_tl_in_a_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_left_left_right = auto_tl_in_a_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_left_left_left = auto_tl_in_a_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [63:0] out_backMask_1 = {out_backMask_right_right_right,out_backMask_right_right_left,
    out_backMask_right_left_right,out_backMask_right_left_left,out_backMask_left_right_right,
    out_backMask_left_right_left,out_backMask_left_left_right,out_backMask_left_left_left}; // @[Cat.scala 29:58]
  wire  out_womask_449 = &(out_backMask_1[41:32]); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_449 = out_wofireMux_all_65 & out_womask_449; // @[RegisterRouter.scala 80:24]
  wire  _GEN_2120 = _T_302 & out_f_woready_449; // @[Debug.scala 1646:51]
  wire  _GEN_2126 = _T_301 ? 1'h0 : _GEN_2120; // @[Debug.scala 1625:59]
  wire  errorException = ABSTRACTCSWrEnLegal ? 1'h0 : _GEN_2126; // @[Debug.scala 1617:47]
  wire  _errorBusy_T = ~ABSTRACTCSWrEnLegal; // @[Debug.scala 1577:45]
  wire  out_backSel_8 = _out_backSel_T[8]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_8 = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_8) & (
    out_findex == 7'h10); // @[RegisterRouter.scala 80:24]
  wire  out_womask_8 = &(out_backMask[1:0]); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_8 = out_wofireMux_all_8 & out_womask_8; // @[RegisterRouter.scala 80:24]
  wire  _errorBusy_T_3 = out_f_woready_8 & _errorBusy_T; // @[Debug.scala 1578:42]
  wire  _errorBusy_T_4 = (out_f_woready_65 & (~ABSTRACTCSWrEnLegal)) | _errorBusy_T_3; // @[Debug.scala 1577:74]
  wire  out_womask_10 = &(out_backMask[31:16]); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_10 = out_wofireMux_all_8 & out_womask_10; // @[RegisterRouter.scala 80:24]
  wire  _errorBusy_T_6 = out_f_woready_10 & _errorBusy_T; // @[Debug.scala 1579:44]
  wire  _errorBusy_T_7 = _errorBusy_T_4 | _errorBusy_T_6; // @[Debug.scala 1578:74]
  wire  _errorBusy_T_9 = out_f_woready_90 & _errorBusy_T; // @[Debug.scala 1580:42]
  wire  _errorBusy_T_10 = _errorBusy_T_7 | _errorBusy_T_9; // @[Debug.scala 1579:74]
  wire  out_womask_97 = &(out_backMask[15:8]); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_97 = out_wofireMux_all_4 & out_womask_97; // @[RegisterRouter.scala 80:24]
  wire  out_romask_97 = |(out_backMask[15:8]); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_97 = out_rofireMux_all_4 & out_romask_97; // @[RegisterRouter.scala 80:24]
  wire  dmiAbstractDataAccessVec_1 = out_f_woready_97 | out_f_roready_97; // @[Debug.scala 1153:105]
  wire  out_womask_98 = &(out_backMask[23:16]); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_98 = out_wofireMux_all_4 & out_womask_98; // @[RegisterRouter.scala 80:24]
  wire  out_romask_98 = |(out_backMask[23:16]); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_98 = out_rofireMux_all_4 & out_romask_98; // @[RegisterRouter.scala 80:24]
  wire  dmiAbstractDataAccessVec_2 = out_f_woready_98 | out_f_roready_98; // @[Debug.scala 1153:105]
  wire  out_womask_99 = &(out_backMask[31:24]); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_99 = out_wofireMux_all_4 & out_womask_99; // @[RegisterRouter.scala 80:24]
  wire  out_romask_99 = |(out_backMask[31:24]); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_99 = out_rofireMux_all_4 & out_romask_99; // @[RegisterRouter.scala 80:24]
  wire  dmiAbstractDataAccessVec_3 = out_f_woready_99 | out_f_roready_99; // @[Debug.scala 1153:105]
  wire  out_f_woready_1 = out_wofireMux_all_5 & out_womask_97; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_1 = out_rofireMux_all_5 & out_romask_97; // @[RegisterRouter.scala 80:24]
  wire  dmiAbstractDataAccessVec_5 = out_f_woready_1 | out_f_roready_1; // @[Debug.scala 1153:105]
  wire  out_f_woready_2 = out_wofireMux_all_5 & out_womask_98; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_2 = out_rofireMux_all_5 & out_romask_98; // @[RegisterRouter.scala 80:24]
  wire  dmiAbstractDataAccessVec_6 = out_f_woready_2 | out_f_roready_2; // @[Debug.scala 1153:105]
  wire  out_f_woready_3 = out_wofireMux_all_5 & out_womask_99; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_3 = out_rofireMux_all_5 & out_romask_99; // @[RegisterRouter.scala 80:24]
  wire  dmiAbstractDataAccessVec_7 = out_f_woready_3 | out_f_roready_3; // @[Debug.scala 1153:105]
  wire  dmiAbstractDataAccess = ((((((dmiAbstractDataAccessVec_0 | dmiAbstractDataAccessVec_1) |
    dmiAbstractDataAccessVec_2) | dmiAbstractDataAccessVec_3) | dmiAbstractDataAccessVec_4) | dmiAbstractDataAccessVec_5
    ) | dmiAbstractDataAccessVec_6) | dmiAbstractDataAccessVec_7; // @[Debug.scala 1158:68]
  wire  _errorBusy_T_12 = dmiAbstractDataAccess & _errorBusy_T; // @[Debug.scala 1581:42]
  wire  _errorBusy_T_13 = _errorBusy_T_10 | _errorBusy_T_12; // @[Debug.scala 1580:74]
  wire  out_f_woready_32 = out_wofireMux_all_16 & out_womask_97; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_32 = out_rofireMux_all_16 & out_romask_97; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_1 = out_f_woready_32 | out_f_roready_32; // @[Debug.scala 1156:108]
  wire  out_f_woready_33 = out_wofireMux_all_16 & out_womask_98; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_33 = out_rofireMux_all_16 & out_romask_98; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_2 = out_f_woready_33 | out_f_roready_33; // @[Debug.scala 1156:108]
  wire  out_f_woready_34 = out_wofireMux_all_16 & out_womask_99; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_34 = out_rofireMux_all_16 & out_romask_99; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_3 = out_f_woready_34 | out_f_roready_34; // @[Debug.scala 1156:108]
  wire  out_f_woready_24 = out_wofireMux_all_17 & out_womask_97; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_24 = out_rofireMux_all_17 & out_romask_97; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_5 = out_f_woready_24 | out_f_roready_24; // @[Debug.scala 1156:108]
  wire  out_f_woready_25 = out_wofireMux_all_17 & out_womask_98; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_25 = out_rofireMux_all_17 & out_romask_98; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_6 = out_f_woready_25 | out_f_roready_25; // @[Debug.scala 1156:108]
  wire  out_f_woready_26 = out_wofireMux_all_17 & out_womask_99; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_26 = out_rofireMux_all_17 & out_romask_99; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_7 = out_f_woready_26 | out_f_roready_26; // @[Debug.scala 1156:108]
  wire  out_f_woready_36 = out_wofireMux_all_18 & out_womask_97; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_36 = out_rofireMux_all_18 & out_romask_97; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_9 = out_f_woready_36 | out_f_roready_36; // @[Debug.scala 1156:108]
  wire  out_f_woready_37 = out_wofireMux_all_18 & out_womask_98; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_37 = out_rofireMux_all_18 & out_romask_98; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_10 = out_f_woready_37 | out_f_roready_37; // @[Debug.scala 1156:108]
  wire  out_f_woready_38 = out_wofireMux_all_18 & out_womask_99; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_38 = out_rofireMux_all_18 & out_romask_99; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_11 = out_f_woready_38 | out_f_roready_38; // @[Debug.scala 1156:108]
  wire  out_f_woready_79 = out_wofireMux_all_19 & out_womask_97; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_79 = out_rofireMux_all_19 & out_romask_97; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_13 = out_f_woready_79 | out_f_roready_79; // @[Debug.scala 1156:108]
  wire  out_f_woready_80 = out_wofireMux_all_19 & out_womask_98; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_80 = out_rofireMux_all_19 & out_romask_98; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_14 = out_f_woready_80 | out_f_roready_80; // @[Debug.scala 1156:108]
  wire  out_f_woready_81 = out_wofireMux_all_19 & out_womask_99; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_81 = out_rofireMux_all_19 & out_romask_99; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_15 = out_f_woready_81 | out_f_roready_81; // @[Debug.scala 1156:108]
  wire  out_f_woready_92 = out_wofireMux_all_20 & out_womask_97; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_92 = out_rofireMux_all_20 & out_romask_97; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_17 = out_f_woready_92 | out_f_roready_92; // @[Debug.scala 1156:108]
  wire  out_f_woready_93 = out_wofireMux_all_20 & out_womask_98; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_93 = out_rofireMux_all_20 & out_romask_98; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_18 = out_f_woready_93 | out_f_roready_93; // @[Debug.scala 1156:108]
  wire  out_f_woready_94 = out_wofireMux_all_20 & out_womask_99; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_94 = out_rofireMux_all_20 & out_romask_99; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_19 = out_f_woready_94 | out_f_roready_94; // @[Debug.scala 1156:108]
  wire  out_f_woready_12 = out_wofireMux_all_21 & out_womask_97; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_12 = out_rofireMux_all_21 & out_romask_97; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_21 = out_f_woready_12 | out_f_roready_12; // @[Debug.scala 1156:108]
  wire  out_f_woready_13 = out_wofireMux_all_21 & out_womask_98; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_13 = out_rofireMux_all_21 & out_romask_98; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_22 = out_f_woready_13 | out_f_roready_13; // @[Debug.scala 1156:108]
  wire  out_f_woready_14 = out_wofireMux_all_21 & out_womask_99; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_14 = out_rofireMux_all_21 & out_romask_99; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_23 = out_f_woready_14 | out_f_roready_14; // @[Debug.scala 1156:108]
  wire  out_f_woready_20 = out_wofireMux_all_22 & out_womask_97; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_20 = out_rofireMux_all_22 & out_romask_97; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_25 = out_f_woready_20 | out_f_roready_20; // @[Debug.scala 1156:108]
  wire  out_f_woready_21 = out_wofireMux_all_22 & out_womask_98; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_21 = out_rofireMux_all_22 & out_romask_98; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_26 = out_f_woready_21 | out_f_roready_21; // @[Debug.scala 1156:108]
  wire  out_f_woready_22 = out_wofireMux_all_22 & out_womask_99; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_22 = out_rofireMux_all_22 & out_romask_99; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_27 = out_f_woready_22 | out_f_roready_22; // @[Debug.scala 1156:108]
  wire  out_f_woready_75 = out_wofireMux_all_23 & out_womask_97; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_75 = out_rofireMux_all_23 & out_romask_97; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_29 = out_f_woready_75 | out_f_roready_75; // @[Debug.scala 1156:108]
  wire  out_f_woready_76 = out_wofireMux_all_23 & out_womask_98; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_76 = out_rofireMux_all_23 & out_romask_98; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_30 = out_f_woready_76 | out_f_roready_76; // @[Debug.scala 1156:108]
  wire  _dmiProgramBufferAccess_T_29 = (((((((((((((((((((((((((((((dmiProgramBufferAccessVec_0 |
    dmiProgramBufferAccessVec_1) | dmiProgramBufferAccessVec_2) | dmiProgramBufferAccessVec_3) |
    dmiProgramBufferAccessVec_4) | dmiProgramBufferAccessVec_5) | dmiProgramBufferAccessVec_6) |
    dmiProgramBufferAccessVec_7) | dmiProgramBufferAccessVec_8) | dmiProgramBufferAccessVec_9) |
    dmiProgramBufferAccessVec_10) | dmiProgramBufferAccessVec_11) | dmiProgramBufferAccessVec_12) |
    dmiProgramBufferAccessVec_13) | dmiProgramBufferAccessVec_14) | dmiProgramBufferAccessVec_15) |
    dmiProgramBufferAccessVec_16) | dmiProgramBufferAccessVec_17) | dmiProgramBufferAccessVec_18) |
    dmiProgramBufferAccessVec_19) | dmiProgramBufferAccessVec_20) | dmiProgramBufferAccessVec_21) |
    dmiProgramBufferAccessVec_22) | dmiProgramBufferAccessVec_23) | dmiProgramBufferAccessVec_24) |
    dmiProgramBufferAccessVec_25) | dmiProgramBufferAccessVec_26) | dmiProgramBufferAccessVec_27) |
    dmiProgramBufferAccessVec_28) | dmiProgramBufferAccessVec_29) | dmiProgramBufferAccessVec_30; // @[Debug.scala 1159:69]
  wire  out_f_woready_77 = out_wofireMux_all_23 & out_womask_99; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_77 = out_rofireMux_all_23 & out_romask_99; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_31 = out_f_woready_77 | out_f_roready_77; // @[Debug.scala 1156:108]
  wire  out_f_woready_87 = out_wofireMux_all_24 & out_womask_97; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_87 = out_rofireMux_all_24 & out_romask_97; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_33 = out_f_woready_87 | out_f_roready_87; // @[Debug.scala 1156:108]
  wire  out_f_woready_88 = out_wofireMux_all_24 & out_womask_98; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_88 = out_rofireMux_all_24 & out_romask_98; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_34 = out_f_woready_88 | out_f_roready_88; // @[Debug.scala 1156:108]
  wire  out_f_woready_89 = out_wofireMux_all_24 & out_womask_99; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_89 = out_rofireMux_all_24 & out_romask_99; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_35 = out_f_woready_89 | out_f_roready_89; // @[Debug.scala 1156:108]
  wire  out_f_woready_28 = out_wofireMux_all_25 & out_womask_97; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_28 = out_rofireMux_all_25 & out_romask_97; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_37 = out_f_woready_28 | out_f_roready_28; // @[Debug.scala 1156:108]
  wire  out_f_woready_29 = out_wofireMux_all_25 & out_womask_98; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_29 = out_rofireMux_all_25 & out_romask_98; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_38 = out_f_woready_29 | out_f_roready_29; // @[Debug.scala 1156:108]
  wire  out_f_woready_30 = out_wofireMux_all_25 & out_womask_99; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_30 = out_rofireMux_all_25 & out_romask_99; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_39 = out_f_woready_30 | out_f_roready_30; // @[Debug.scala 1156:108]
  wire  out_f_woready_5 = out_wofireMux_all_26 & out_womask_97; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_5 = out_rofireMux_all_26 & out_romask_97; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_41 = out_f_woready_5 | out_f_roready_5; // @[Debug.scala 1156:108]
  wire  out_f_woready_6 = out_wofireMux_all_26 & out_womask_98; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_6 = out_rofireMux_all_26 & out_romask_98; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_42 = out_f_woready_6 | out_f_roready_6; // @[Debug.scala 1156:108]
  wire  out_f_woready_7 = out_wofireMux_all_26 & out_womask_99; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_7 = out_rofireMux_all_26 & out_romask_99; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_43 = out_f_woready_7 | out_f_roready_7; // @[Debug.scala 1156:108]
  wire  out_f_woready_83 = out_wofireMux_all_27 & out_womask_97; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_83 = out_rofireMux_all_27 & out_romask_97; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_45 = out_f_woready_83 | out_f_roready_83; // @[Debug.scala 1156:108]
  wire  out_f_woready_84 = out_wofireMux_all_27 & out_womask_98; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_84 = out_rofireMux_all_27 & out_romask_98; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_46 = out_f_woready_84 | out_f_roready_84; // @[Debug.scala 1156:108]
  wire  out_f_woready_85 = out_wofireMux_all_27 & out_womask_99; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_85 = out_rofireMux_all_27 & out_romask_99; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_47 = out_f_woready_85 | out_f_roready_85; // @[Debug.scala 1156:108]
  wire  out_f_woready_71 = out_wofireMux_all_28 & out_womask_97; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_71 = out_rofireMux_all_28 & out_romask_97; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_49 = out_f_woready_71 | out_f_roready_71; // @[Debug.scala 1156:108]
  wire  out_f_woready_72 = out_wofireMux_all_28 & out_womask_98; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_72 = out_rofireMux_all_28 & out_romask_98; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_50 = out_f_woready_72 | out_f_roready_72; // @[Debug.scala 1156:108]
  wire  out_f_woready_73 = out_wofireMux_all_28 & out_womask_99; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_73 = out_rofireMux_all_28 & out_romask_99; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_51 = out_f_woready_73 | out_f_roready_73; // @[Debug.scala 1156:108]
  wire  out_f_woready_40 = out_wofireMux_all_29 & out_womask_97; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_40 = out_rofireMux_all_29 & out_romask_97; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_53 = out_f_woready_40 | out_f_roready_40; // @[Debug.scala 1156:108]
  wire  out_f_woready_41 = out_wofireMux_all_29 & out_womask_98; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_41 = out_rofireMux_all_29 & out_romask_98; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_54 = out_f_woready_41 | out_f_roready_41; // @[Debug.scala 1156:108]
  wire  out_f_woready_42 = out_wofireMux_all_29 & out_womask_99; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_42 = out_rofireMux_all_29 & out_romask_99; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_55 = out_f_woready_42 | out_f_roready_42; // @[Debug.scala 1156:108]
  wire  out_f_woready_16 = out_wofireMux_all_30 & out_womask_97; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_16 = out_rofireMux_all_30 & out_romask_97; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_57 = out_f_woready_16 | out_f_roready_16; // @[Debug.scala 1156:108]
  wire  out_f_woready_17 = out_wofireMux_all_30 & out_womask_98; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_17 = out_rofireMux_all_30 & out_romask_98; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_58 = out_f_woready_17 | out_f_roready_17; // @[Debug.scala 1156:108]
  wire  out_f_woready_18 = out_wofireMux_all_30 & out_womask_99; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_18 = out_rofireMux_all_30 & out_romask_99; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_59 = out_f_woready_18 | out_f_roready_18; // @[Debug.scala 1156:108]
  wire  _dmiProgramBufferAccess_T_59 = (((((((((((((((((((((((((((((_dmiProgramBufferAccess_T_29 |
    dmiProgramBufferAccessVec_31) | dmiProgramBufferAccessVec_32) | dmiProgramBufferAccessVec_33) |
    dmiProgramBufferAccessVec_34) | dmiProgramBufferAccessVec_35) | dmiProgramBufferAccessVec_36) |
    dmiProgramBufferAccessVec_37) | dmiProgramBufferAccessVec_38) | dmiProgramBufferAccessVec_39) |
    dmiProgramBufferAccessVec_40) | dmiProgramBufferAccessVec_41) | dmiProgramBufferAccessVec_42) |
    dmiProgramBufferAccessVec_43) | dmiProgramBufferAccessVec_44) | dmiProgramBufferAccessVec_45) |
    dmiProgramBufferAccessVec_46) | dmiProgramBufferAccessVec_47) | dmiProgramBufferAccessVec_48) |
    dmiProgramBufferAccessVec_49) | dmiProgramBufferAccessVec_50) | dmiProgramBufferAccessVec_51) |
    dmiProgramBufferAccessVec_52) | dmiProgramBufferAccessVec_53) | dmiProgramBufferAccessVec_54) |
    dmiProgramBufferAccessVec_55) | dmiProgramBufferAccessVec_56) | dmiProgramBufferAccessVec_57) |
    dmiProgramBufferAccessVec_58) | dmiProgramBufferAccessVec_59) | dmiProgramBufferAccessVec_60; // @[Debug.scala 1159:69]
  wire  out_f_woready_101 = out_wofireMux_all_31 & out_womask_97; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_101 = out_rofireMux_all_31 & out_romask_97; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_61 = out_f_woready_101 | out_f_roready_101; // @[Debug.scala 1156:108]
  wire  out_f_woready_102 = out_wofireMux_all_31 & out_womask_98; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_102 = out_rofireMux_all_31 & out_romask_98; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_62 = out_f_woready_102 | out_f_roready_102; // @[Debug.scala 1156:108]
  wire  out_f_woready_103 = out_wofireMux_all_31 & out_womask_99; // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_103 = out_rofireMux_all_31 & out_romask_99; // @[RegisterRouter.scala 80:24]
  wire  dmiProgramBufferAccessVec_63 = out_f_woready_103 | out_f_roready_103; // @[Debug.scala 1156:108]
  wire  dmiProgramBufferAccess = ((_dmiProgramBufferAccess_T_59 | dmiProgramBufferAccessVec_61) |
    dmiProgramBufferAccessVec_62) | dmiProgramBufferAccessVec_63; // @[Debug.scala 1159:69]
  wire  _errorBusy_T_15 = dmiProgramBufferAccess & _errorBusy_T; // @[Debug.scala 1582:42]
  wire  errorBusy = _errorBusy_T_13 | _errorBusy_T_15; // @[Debug.scala 1581:74]
  wire  _T_29 = out_f_woready_10 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1144:38]
  wire [15:0] ABSTRACTAUTOWrData_autoexecprogbuf = auto_dmi_in_a_bits_data[31:16]; // @[RegisterRouter.scala 80:24]
  wire  _T_30 = out_f_woready_8 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1147:35]
  wire [11:0] ABSTRACTAUTOWrData_autoexecdata = {{10'd0}, auto_dmi_in_a_bits_data[1:0]};
  wire [11:0] _ABSTRACTAUTOReg_autoexecdata_T = ABSTRACTAUTOWrData_autoexecdata & 12'h3; // @[Debug.scala 1148:73]
  wire [23:0] COMMANDWrData_control = COMMANDWrDataVal[23:0]; // @[Debug.scala 1175:65]
  reg [7:0] abstractDataMem_0; // @[Debug.scala 1195:36]
  reg [7:0] abstractDataMem_1; // @[Debug.scala 1195:36]
  reg [7:0] abstractDataMem_2; // @[Debug.scala 1195:36]
  reg [7:0] abstractDataMem_3; // @[Debug.scala 1195:36]
  reg [7:0] abstractDataMem_4; // @[Debug.scala 1195:36]
  reg [7:0] abstractDataMem_5; // @[Debug.scala 1195:36]
  reg [7:0] abstractDataMem_6; // @[Debug.scala 1195:36]
  reg [7:0] abstractDataMem_7; // @[Debug.scala 1195:36]
  reg [7:0] programBufferMem_0; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_1; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_2; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_3; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_4; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_5; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_6; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_7; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_8; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_9; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_10; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_11; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_12; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_13; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_14; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_15; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_16; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_17; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_18; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_19; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_20; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_21; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_22; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_23; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_24; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_25; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_26; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_27; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_28; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_29; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_30; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_31; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_32; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_33; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_34; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_35; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_36; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_37; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_38; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_39; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_40; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_41; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_42; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_43; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_44; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_45; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_46; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_47; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_48; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_49; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_50; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_51; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_52; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_53; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_54; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_55; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_56; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_57; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_58; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_59; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_60; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_61; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_62; // @[Debug.scala 1199:34]
  reg [7:0] programBufferMem_63; // @[Debug.scala 1199:34]
  wire  _resumeReqRegs_T = ~hartIsInResetSync_0; // @[Debug.scala 1212:42]
  wire  _resumeReqRegs_T_1 = resumeReqRegs & (~hartIsInResetSync_0); // @[Debug.scala 1212:40]
  wire [1:0] _haltedBitRegs_T_2 = {{1'd0}, _resumeReqRegs_T}; // @[Debug.scala 1218:64]
  wire [1:0] _GEN_2135 = {{1'd0}, haltedBitRegs}; // @[Debug.scala 1220:43]
  wire [1:0] _haltedBitRegs_T_4 = _GEN_2135 & 2'h2; // @[Debug.scala 1220:43]
  wire [1:0] _haltedBitRegs_T_6 = _haltedBitRegs_T_4 & _haltedBitRegs_T_2; // @[Debug.scala 1220:69]
  wire  _haltedBitRegs_T_8 = haltedBitRegs & _resumeReqRegs_T; // @[Debug.scala 1222:42]
  wire  out_womask_448 = &(out_backMask_1[9:0]); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_448 = out_wofireMux_all_65 & out_womask_448; // @[RegisterRouter.scala 80:24]
  wire [1:0] _GEN_61 = out_f_woready_448 ? _haltedBitRegs_T_6 : {{1'd0}, _haltedBitRegs_T_8}; // @[Debug.scala 1219:39 Debug.scala 1220:25 Debug.scala 1222:25]
  wire  out_backSel_32 = _out_backSel_T_1[32]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_64 = (((auto_tl_in_a_valid & auto_tl_in_d_ready) & (~in_1_bits_read)) & out_backSel_32) & (
    out_findex_1 == 9'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_631 = out_wofireMux_all_64 & out_womask_448; // @[RegisterRouter.scala 80:24]
  wire [1:0] _GEN_62 = out_f_woready_631 ? _haltedBitRegs_T_2 : _GEN_61; // @[Debug.scala 1217:31 Debug.scala 1218:25]
  wire [1:0] _GEN_2137 = {{1'd0}, resumeReqRegs}; // @[Debug.scala 1226:43]
  wire [1:0] _resumeReqRegs_T_3 = _GEN_2137 & 2'h2; // @[Debug.scala 1226:43]
  wire [1:0] _resumeReqRegs_T_5 = _resumeReqRegs_T_3 & _haltedBitRegs_T_2; // @[Debug.scala 1226:69]
  wire [1:0] _GEN_63 = out_f_woready_448 ? _resumeReqRegs_T_5 : {{1'd0}, _resumeReqRegs_T_1}; // @[Debug.scala 1225:33 Debug.scala 1226:25 Debug.scala 1212:23]
  wire  _resumeReqRegs_T_8 = (resumeReqRegs | hamaskWrSel_0) & _resumeReqRegs_T; // @[Debug.scala 1229:65]
  wire [1:0] _GEN_64 = resumereq ? {{1'd0}, _resumeReqRegs_T_8} : _GEN_63; // @[Debug.scala 1228:26 Debug.scala 1229:25]
  wire [1:0] _GEN_65 = _T_1 ? 2'h0 : _GEN_62; // @[Debug.scala 1207:45 Debug.scala 1208:23]
  wire [1:0] _GEN_66 = _T_1 ? 2'h0 : _GEN_64; // @[Debug.scala 1207:45 Debug.scala 1209:23]
  wire [31:0] out_prepend_21 = {abstractDataMem_7,abstractDataMem_6,abstractDataMem_5,abstractDataMem_4}; // @[Cat.scala 29:58]
  wire [31:0] out_prepend_24 = {programBufferMem_43,programBufferMem_42,programBufferMem_41,programBufferMem_40}; // @[Cat.scala 29:58]
  wire [1:0] out_prepend_left_6 = ABSTRACTAUTOReg_autoexecdata[1:0]; // @[RegisterRouter.scala 80:24]
  wire [2:0] out_prepend_25 = {1'h0,out_prepend_left_6}; // @[Cat.scala 29:58]
  wire [15:0] out_prepend_left_7 = {{13'd0}, out_prepend_25}; // @[RegisterRouter.scala 80:24]
  wire [31:0] out_prepend_26 = {ABSTRACTAUTOReg_autoexecprogbuf,out_prepend_left_7}; // @[Cat.scala 29:58]
  wire [31:0] out_prepend_29 = {programBufferMem_23,programBufferMem_22,programBufferMem_21,programBufferMem_20}; // @[Cat.scala 29:58]
  wire [31:0] out_prepend_32 = {programBufferMem_59,programBufferMem_58,programBufferMem_57,programBufferMem_56}; // @[Cat.scala 29:58]
  wire [31:0] out_prepend_35 = {programBufferMem_27,programBufferMem_26,programBufferMem_25,programBufferMem_24}; // @[Cat.scala 29:58]
  wire [31:0] out_prepend_38 = {programBufferMem_7,programBufferMem_6,programBufferMem_5,programBufferMem_4}; // @[Cat.scala 29:58]
  wire [31:0] out_prepend_41 = {programBufferMem_39,programBufferMem_38,programBufferMem_37,programBufferMem_36}; // @[Cat.scala 29:58]
  wire [31:0] out_prepend_44 = {programBufferMem_3,programBufferMem_2,programBufferMem_1,programBufferMem_0}; // @[Cat.scala 29:58]
  wire [31:0] out_prepend_47 = {programBufferMem_11,programBufferMem_10,programBufferMem_9,programBufferMem_8}; // @[Cat.scala 29:58]
  wire [31:0] out_prepend_50 = {programBufferMem_55,programBufferMem_54,programBufferMem_53,programBufferMem_52}; // @[Cat.scala 29:58]
  wire [16:0] out_prepend_63 = {resumeAcks,1'h0,1'h0,1'h0,1'h0,_T_10,_T_10,haltedBitRegs,haltedBitRegs,8'ha2}; // @[Cat.scala 29:58]
  wire [20:0] out_prepend_67 = {1'h0,haveResetBitRegs,haveResetBitRegs,resumeAcks,out_prepend_63}; // @[Cat.scala 29:58]
  wire [21:0] out_prepend_left_49 = {{1'd0}, out_prepend_67}; // @[RegisterRouter.scala 80:24]
  wire [22:0] out_prepend_68 = {1'h0,out_prepend_left_49}; // @[Cat.scala 29:58]
  wire  abstractCommandBusy = ctrlStateReg != 2'h0; // @[Debug.scala 1569:42]
  wire [13:0] out_prepend_73 = {1'h0,abstractCommandBusy,1'h0,ABSTRACTCSReg_cmderr,8'h2}; // @[Cat.scala 29:58]
  wire [23:0] out_prepend_left_55 = {{10'd0}, out_prepend_73}; // @[RegisterRouter.scala 80:24]
  wire [28:0] out_prepend_74 = {5'h10,out_prepend_left_55}; // @[Cat.scala 29:58]
  wire [31:0] out_prepend_77 = {programBufferMem_51,programBufferMem_50,programBufferMem_49,programBufferMem_48}; // @[Cat.scala 29:58]
  wire [31:0] out_prepend_80 = {programBufferMem_31,programBufferMem_30,programBufferMem_29,programBufferMem_28}; // @[Cat.scala 29:58]
  wire [31:0] out_prepend_83 = {programBufferMem_15,programBufferMem_14,programBufferMem_13,programBufferMem_12}; // @[Cat.scala 29:58]
  wire [31:0] out_prepend_86 = {programBufferMem_47,programBufferMem_46,programBufferMem_45,programBufferMem_44}; // @[Cat.scala 29:58]
  wire [31:0] out_prepend_89 = {programBufferMem_35,programBufferMem_34,programBufferMem_33,programBufferMem_32}; // @[Cat.scala 29:58]
  wire [31:0] out_prepend_92 = {programBufferMem_19,programBufferMem_18,programBufferMem_17,programBufferMem_16}; // @[Cat.scala 29:58]
  wire [31:0] out_prepend_95 = {abstractDataMem_3,abstractDataMem_2,abstractDataMem_1,abstractDataMem_0}; // @[Cat.scala 29:58]
  wire [31:0] out_prepend_98 = {programBufferMem_63,programBufferMem_62,programBufferMem_61,programBufferMem_60}; // @[Cat.scala 29:58]
  wire  _GEN_270 = 5'h1 == out_iindex ? _out_T_4 : _out_T_22; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_272 = 5'h3 == out_iindex ? _out_T_4 : (5'h2 == out_iindex) | _GEN_270; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_273 = 5'h4 == out_iindex ? _out_T_46 : _GEN_272; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_274 = 5'h5 == out_iindex ? _out_T_46 : _GEN_273; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_275 = 5'h6 == out_iindex ? _out_T_4 : _GEN_274; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_276 = 5'h7 == out_iindex ? _out_T_4 : _GEN_275; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_277 = 5'h8 == out_iindex ? _out_T_4 : _GEN_276; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_285 = 5'h10 == out_iindex ? _out_T_46 : (5'hf == out_iindex) | ((5'he == out_iindex) | ((5'hd == out_iindex
    ) | ((5'hc == out_iindex) | ((5'hb == out_iindex) | ((5'ha == out_iindex) | ((5'h9 == out_iindex) | _GEN_277)))))); // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_286 = 5'h11 == out_iindex ? _out_T_46 : _GEN_285; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_287 = 5'h12 == out_iindex ? _out_T_46 : _GEN_286; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_288 = 5'h13 == out_iindex ? _out_T_46 : _GEN_287; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_289 = 5'h14 == out_iindex ? _out_T_46 : _GEN_288; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_290 = 5'h15 == out_iindex ? _out_T_46 : _GEN_289; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_291 = 5'h16 == out_iindex ? _out_T_46 : _GEN_290; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_292 = 5'h17 == out_iindex ? _out_T_46 : _GEN_291; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_293 = 5'h18 == out_iindex ? _out_T_46 : _GEN_292; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_294 = 5'h19 == out_iindex ? _out_T_46 : _GEN_293; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_295 = 5'h1a == out_iindex ? _out_T_46 : _GEN_294; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_296 = 5'h1b == out_iindex ? _out_T_46 : _GEN_295; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_297 = 5'h1c == out_iindex ? _out_T_46 : _GEN_296; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_298 = 5'h1d == out_iindex ? _out_T_46 : _GEN_297; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_299 = 5'h1e == out_iindex ? _out_T_46 : _GEN_298; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_300 = 5'h1f == out_iindex ? _out_T_46 : _GEN_299; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _out_out_bits_data_WIRE_1_1 = {{9'd0}, out_prepend_68}; // @[MuxLiteral.scala 48:48 MuxLiteral.scala 48:48]
  wire [31:0] _GEN_302 = 5'h1 == out_iindex ? _out_out_bits_data_WIRE_1_1 : haltedStatus_0; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_303 = 5'h2 == out_iindex ? 32'h0 : _GEN_302; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_304 = 5'h3 == out_iindex ? HALTSUM1RdData_haltsum1 : _GEN_303; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_305 = 5'h4 == out_iindex ? out_prepend_95 : _GEN_304; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_306 = 5'h5 == out_iindex ? out_prepend_21 : _GEN_305; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _out_out_bits_data_WIRE_1_6 = {{3'd0}, out_prepend_74}; // @[MuxLiteral.scala 48:48 MuxLiteral.scala 48:48]
  wire [31:0] _GEN_307 = 5'h6 == out_iindex ? _out_out_bits_data_WIRE_1_6 : _GEN_306; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_308 = 5'h7 == out_iindex ? _accessRegisterCommandReg_T : _GEN_307; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_309 = 5'h8 == out_iindex ? out_prepend_26 : _GEN_308; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_310 = 5'h9 == out_iindex ? 32'h0 : _GEN_309; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_311 = 5'ha == out_iindex ? 32'h0 : _GEN_310; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_312 = 5'hb == out_iindex ? 32'h0 : _GEN_311; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_313 = 5'hc == out_iindex ? 32'h0 : _GEN_312; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_314 = 5'hd == out_iindex ? 32'h0 : _GEN_313; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_315 = 5'he == out_iindex ? 32'h0 : _GEN_314; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_316 = 5'hf == out_iindex ? 32'h0 : _GEN_315; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_317 = 5'h10 == out_iindex ? out_prepend_44 : _GEN_316; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_318 = 5'h11 == out_iindex ? out_prepend_38 : _GEN_317; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_319 = 5'h12 == out_iindex ? out_prepend_47 : _GEN_318; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_320 = 5'h13 == out_iindex ? out_prepend_83 : _GEN_319; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_321 = 5'h14 == out_iindex ? out_prepend_92 : _GEN_320; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_322 = 5'h15 == out_iindex ? out_prepend_29 : _GEN_321; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_323 = 5'h16 == out_iindex ? out_prepend_35 : _GEN_322; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_324 = 5'h17 == out_iindex ? out_prepend_80 : _GEN_323; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_325 = 5'h18 == out_iindex ? out_prepend_89 : _GEN_324; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_326 = 5'h19 == out_iindex ? out_prepend_41 : _GEN_325; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_327 = 5'h1a == out_iindex ? out_prepend_24 : _GEN_326; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_328 = 5'h1b == out_iindex ? out_prepend_86 : _GEN_327; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_329 = 5'h1c == out_iindex ? out_prepend_77 : _GEN_328; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_330 = 5'h1d == out_iindex ? out_prepend_50 : _GEN_329; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_331 = 5'h1e == out_iindex ? out_prepend_32 : _GEN_330; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_332 = 5'h1f == out_iindex ? out_prepend_98 : _GEN_331; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _T_138 = out_f_woready_96 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1348:60]
  wire  _T_140 = out_f_woready_97 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1348:60]
  wire  _T_142 = out_f_woready_98 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1348:60]
  wire  _T_144 = out_f_woready_99 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1348:60]
  wire  _T_146 = out_f_woready & ABSTRACTCSWrEnLegal; // @[Debug.scala 1348:60]
  wire  _T_148 = out_f_woready_1 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1348:60]
  wire  _T_150 = out_f_woready_2 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1348:60]
  wire  _T_152 = out_f_woready_3 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1348:60]
  wire  _T_154 = out_f_woready_31 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_156 = out_f_woready_32 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_158 = out_f_woready_33 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_160 = out_f_woready_34 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_162 = out_f_woready_23 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_164 = out_f_woready_24 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_166 = out_f_woready_25 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_168 = out_f_woready_26 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_170 = out_f_woready_35 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_172 = out_f_woready_36 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_174 = out_f_woready_37 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_176 = out_f_woready_38 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_178 = out_f_woready_78 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_180 = out_f_woready_79 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_182 = out_f_woready_80 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_184 = out_f_woready_81 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_186 = out_f_woready_91 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_188 = out_f_woready_92 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_190 = out_f_woready_93 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_192 = out_f_woready_94 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_194 = out_f_woready_11 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_196 = out_f_woready_12 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_198 = out_f_woready_13 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_200 = out_f_woready_14 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_202 = out_f_woready_19 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_204 = out_f_woready_20 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_206 = out_f_woready_21 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_208 = out_f_woready_22 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_210 = out_f_woready_74 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_212 = out_f_woready_75 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_214 = out_f_woready_76 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_216 = out_f_woready_77 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_218 = out_f_woready_86 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_220 = out_f_woready_87 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_222 = out_f_woready_88 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_224 = out_f_woready_89 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_226 = out_f_woready_27 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_228 = out_f_woready_28 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_230 = out_f_woready_29 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_232 = out_f_woready_30 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_234 = out_f_woready_4 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_236 = out_f_woready_5 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_238 = out_f_woready_6 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_240 = out_f_woready_7 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_242 = out_f_woready_82 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_244 = out_f_woready_83 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_246 = out_f_woready_84 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_248 = out_f_woready_85 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_250 = out_f_woready_70 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_252 = out_f_woready_71 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_254 = out_f_woready_72 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_256 = out_f_woready_73 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_258 = out_f_woready_39 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_260 = out_f_woready_40 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_262 = out_f_woready_41 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_264 = out_f_woready_42 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_266 = out_f_woready_15 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_268 = out_f_woready_16 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_270 = out_f_woready_17 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_272 = out_f_woready_18 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_274 = out_f_woready_100 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_276 = out_f_woready_101 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_278 = out_f_woready_102 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  wire  _T_280 = out_f_woready_103 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1370:61]
  reg  goReg; // @[Debug.scala 1379:27]
  wire [9:0] hartGoingId = auto_tl_in_a_bits_data[41:32]; // @[RegisterRouter.scala 80:24]
  wire  _T_285 = ~((hartGoingId == 10'h0) | reset); // @[Debug.scala 1391:15]
  wire  out_f_woready_632 = out_wofireMux_all_64 & out_womask_449; // @[RegisterRouter.scala 80:24]
  wire  _GEN_405 = out_f_woready_632 ? 1'h0 : goReg; // @[Debug.scala 1390:33 Debug.scala 1392:15 Debug.scala 1379:27]
  wire  _GEN_2108 = commandRegBadHaltResume ? 1'h0 : 1'h1; // @[Debug.scala 1635:43]
  wire  _GEN_2112 = commandRegIsUnsupported ? 1'h0 : _GEN_2108; // @[Debug.scala 1632:38]
  wire  _GEN_2125 = _T_301 & _GEN_2112; // @[Debug.scala 1625:59]
  wire  goAbstract = ABSTRACTCSWrEnLegal ? 1'h0 : _GEN_2125; // @[Debug.scala 1617:47]
  wire  _GEN_406 = goAbstract | _GEN_405; // @[Debug.scala 1388:25 Debug.scala 1389:15]
  wire  accessRegisterCommandReg_postexec = _accessRegisterCommandReg_T[18]; // @[Debug.scala 1417:73]
  wire [2:0] accessRegisterCommandReg_size = _accessRegisterCommandReg_T[22:20]; // @[Debug.scala 1417:73]
  reg [31:0] abstractGeneratedMem_0; // @[Debug.scala 1460:35]
  reg [31:0] abstractGeneratedMem_1; // @[Debug.scala 1460:35]
  wire [15:0] _abstractGeneratedI_rd_T = accessRegisterCommandReg_regno & 16'h1f; // @[Debug.scala 1466:66]
  wire [4:0] abstractGeneratedI_rd = _abstractGeneratedI_rd_T[4:0]; // @[Debug.scala 1461:34 Debug.scala 1466:31]
  wire [31:0] _abstractGeneratedMem_0_T = {17'h7000,accessRegisterCommandReg_size,abstractGeneratedI_rd,7'h3}; // @[Debug.scala 1487:36]
  wire [31:0] _abstractGeneratedMem_0_T_1 = {7'h1c,abstractGeneratedI_rd,5'h0,accessRegisterCommandReg_size,5'h0,7'h23}; // @[Debug.scala 1489:36]
  wire  out_wimask_104 = &(out_backMask_1[7:0]); // @[RegisterRouter.scala 80:24]
  wire  out_wimask_105 = &(out_backMask_1[15:8]); // @[RegisterRouter.scala 80:24]
  wire  out_wimask_106 = &(out_backMask_1[23:16]); // @[RegisterRouter.scala 80:24]
  wire [23:0] out_prepend_229 = {6'h0,resumeReqRegs,goReg,6'h0,resumeReqRegs,goReg,6'h0,resumeReqRegs,goReg}; // @[Cat.scala 29:58]
  wire  out_wimask_107 = &(out_backMask_1[31:24]); // @[RegisterRouter.scala 80:24]
  wire  out_wimask_108 = &(out_backMask_1[39:32]); // @[RegisterRouter.scala 80:24]
  wire  out_wimask_109 = &(out_backMask_1[47:40]); // @[RegisterRouter.scala 80:24]
  wire [47:0] out_prepend_232 = {6'h0,resumeReqRegs,goReg,6'h0,resumeReqRegs,goReg,6'h0,resumeReqRegs,goReg,
    out_prepend_229}; // @[Cat.scala 29:58]
  wire  out_wimask_110 = &(out_backMask_1[55:48]); // @[RegisterRouter.scala 80:24]
  wire  out_wimask_111 = &(out_backMask_1[63:56]); // @[RegisterRouter.scala 80:24]
  wire [63:0] out_prepend_234 = {6'h0,resumeReqRegs,goReg,6'h0,resumeReqRegs,goReg,out_prepend_232}; // @[Cat.scala 29:58]
  wire  out_frontSel_110 = _out_backSel_T_1[110]; // @[RegisterRouter.scala 80:24]
  wire  out_wifireMux_all_142 = (((auto_tl_in_a_valid & auto_tl_in_d_ready) & (~in_1_bits_read)) & out_frontSel_110) & (
    out_findex_1 == 9'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_208 = out_wifireMux_all_142 & out_wimask_104; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_209 = out_wifireMux_all_142 & out_wimask_105; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_210 = out_wifireMux_all_142 & out_wimask_106; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_211 = out_wifireMux_all_142 & out_wimask_107; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_212 = out_wifireMux_all_142 & out_wimask_108; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_213 = out_wifireMux_all_142 & out_wimask_109; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_214 = out_wifireMux_all_142 & out_wimask_110; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_215 = out_wifireMux_all_142 & out_wimask_111; // @[RegisterRouter.scala 80:24]
  wire [63:0] out_prepend_325 = {programBufferMem_55,programBufferMem_54,programBufferMem_53,programBufferMem_52,
    programBufferMem_51,programBufferMem_50,programBufferMem_49,programBufferMem_48}; // @[Cat.scala 29:58]
  wire  out_frontSel_106 = _out_backSel_T_1[106]; // @[RegisterRouter.scala 80:24]
  wire  out_wifireMux_all_138 = (((auto_tl_in_a_valid & auto_tl_in_d_ready) & (~in_1_bits_read)) & out_frontSel_106) & (
    out_findex_1 == 9'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_304 = out_wifireMux_all_138 & out_wimask_104; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_305 = out_wifireMux_all_138 & out_wimask_105; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_306 = out_wifireMux_all_138 & out_wimask_106; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_307 = out_wifireMux_all_138 & out_wimask_107; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_308 = out_wifireMux_all_138 & out_wimask_108; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_309 = out_wifireMux_all_138 & out_wimask_109; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_310 = out_wifireMux_all_138 & out_wimask_110; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_311 = out_wifireMux_all_138 & out_wimask_111; // @[RegisterRouter.scala 80:24]
  wire [63:0] out_prepend_409 = {programBufferMem_23,programBufferMem_22,programBufferMem_21,programBufferMem_20,
    programBufferMem_19,programBufferMem_18,programBufferMem_17,programBufferMem_16}; // @[Cat.scala 29:58]
  wire  out_frontSel_109 = _out_backSel_T_1[109]; // @[RegisterRouter.scala 80:24]
  wire  out_wifireMux_all_141 = (((auto_tl_in_a_valid & auto_tl_in_d_ready) & (~in_1_bits_read)) & out_frontSel_109) & (
    out_findex_1 == 9'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_514 = out_wifireMux_all_141 & out_wimask_104; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_515 = out_wifireMux_all_141 & out_wimask_105; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_516 = out_wifireMux_all_141 & out_wimask_106; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_517 = out_wifireMux_all_141 & out_wimask_107; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_518 = out_wifireMux_all_141 & out_wimask_108; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_519 = out_wifireMux_all_141 & out_wimask_109; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_520 = out_wifireMux_all_141 & out_wimask_110; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_521 = out_wifireMux_all_141 & out_wimask_111; // @[RegisterRouter.scala 80:24]
  wire [63:0] out_prepend_592 = {programBufferMem_47,programBufferMem_46,programBufferMem_45,programBufferMem_44,
    programBufferMem_43,programBufferMem_42,programBufferMem_41,programBufferMem_40}; // @[Cat.scala 29:58]
  wire  out_frontSel_105 = _out_backSel_T_1[105]; // @[RegisterRouter.scala 80:24]
  wire  out_wifireMux_all_137 = (((auto_tl_in_a_valid & auto_tl_in_d_ready) & (~in_1_bits_read)) & out_frontSel_105) & (
    out_findex_1 == 9'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_595 = out_wifireMux_all_137 & out_wimask_104; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_596 = out_wifireMux_all_137 & out_wimask_105; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_597 = out_wifireMux_all_137 & out_wimask_106; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_598 = out_wifireMux_all_137 & out_wimask_107; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_599 = out_wifireMux_all_137 & out_wimask_108; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_600 = out_wifireMux_all_137 & out_wimask_109; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_601 = out_wifireMux_all_137 & out_wimask_110; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_602 = out_wifireMux_all_137 & out_wimask_111; // @[RegisterRouter.scala 80:24]
  wire [63:0] out_prepend_662 = {programBufferMem_15,programBufferMem_14,programBufferMem_13,programBufferMem_12,
    programBufferMem_11,programBufferMem_10,programBufferMem_9,programBufferMem_8}; // @[Cat.scala 29:58]
  wire [63:0] out_prepend_821 = {abstractGeneratedMem_1,abstractGeneratedMem_0}; // @[Cat.scala 29:58]
  wire  out_frontSel_108 = _out_backSel_T_1[108]; // @[RegisterRouter.scala 80:24]
  wire  out_wifireMux_all_140 = (((auto_tl_in_a_valid & auto_tl_in_d_ready) & (~in_1_bits_read)) & out_frontSel_108) & (
    out_findex_1 == 9'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_835 = out_wifireMux_all_140 & out_wimask_104; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_836 = out_wifireMux_all_140 & out_wimask_105; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_837 = out_wifireMux_all_140 & out_wimask_106; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_838 = out_wifireMux_all_140 & out_wimask_107; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_839 = out_wifireMux_all_140 & out_wimask_108; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_840 = out_wifireMux_all_140 & out_wimask_109; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_841 = out_wifireMux_all_140 & out_wimask_110; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_842 = out_wifireMux_all_140 & out_wimask_111; // @[RegisterRouter.scala 80:24]
  wire [63:0] out_prepend_870 = {programBufferMem_39,programBufferMem_38,programBufferMem_37,programBufferMem_36,
    programBufferMem_35,programBufferMem_34,programBufferMem_33,programBufferMem_32}; // @[Cat.scala 29:58]
  wire  out_frontSel_112 = _out_backSel_T_1[112]; // @[RegisterRouter.scala 80:24]
  wire  out_wifireMux_all_144 = (((auto_tl_in_a_valid & auto_tl_in_d_ready) & (~in_1_bits_read)) & out_frontSel_112) & (
    out_findex_1 == 9'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_915 = out_wifireMux_all_144 & out_wimask_104; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_916 = out_wifireMux_all_144 & out_wimask_105; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_917 = out_wifireMux_all_144 & out_wimask_106; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_918 = out_wifireMux_all_144 & out_wimask_107; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_919 = out_wifireMux_all_144 & out_wimask_108; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_920 = out_wifireMux_all_144 & out_wimask_109; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_921 = out_wifireMux_all_144 & out_wimask_110; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_922 = out_wifireMux_all_144 & out_wimask_111; // @[RegisterRouter.scala 80:24]
  wire [63:0] out_prepend_940 = {abstractDataMem_7,abstractDataMem_6,abstractDataMem_5,abstractDataMem_4,
    abstractDataMem_3,abstractDataMem_2,abstractDataMem_1,abstractDataMem_0}; // @[Cat.scala 29:58]
  wire  out_frontSel_104 = _out_backSel_T_1[104]; // @[RegisterRouter.scala 80:24]
  wire  out_wifireMux_all_136 = (((auto_tl_in_a_valid & auto_tl_in_d_ready) & (~in_1_bits_read)) & out_frontSel_104) & (
    out_findex_1 == 9'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1035 = out_wifireMux_all_136 & out_wimask_104; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1036 = out_wifireMux_all_136 & out_wimask_105; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1037 = out_wifireMux_all_136 & out_wimask_106; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1038 = out_wifireMux_all_136 & out_wimask_107; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1039 = out_wifireMux_all_136 & out_wimask_108; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1040 = out_wifireMux_all_136 & out_wimask_109; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1041 = out_wifireMux_all_136 & out_wimask_110; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1042 = out_wifireMux_all_136 & out_wimask_111; // @[RegisterRouter.scala 80:24]
  wire [63:0] out_prepend_1045 = {programBufferMem_7,programBufferMem_6,programBufferMem_5,programBufferMem_4,
    programBufferMem_3,programBufferMem_2,programBufferMem_1,programBufferMem_0}; // @[Cat.scala 29:58]
  wire  out_frontSel_107 = _out_backSel_T_1[107]; // @[RegisterRouter.scala 80:24]
  wire  out_wifireMux_all_139 = (((auto_tl_in_a_valid & auto_tl_in_d_ready) & (~in_1_bits_read)) & out_frontSel_107) & (
    out_findex_1 == 9'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1171 = out_wifireMux_all_139 & out_wimask_104; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1172 = out_wifireMux_all_139 & out_wimask_105; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1173 = out_wifireMux_all_139 & out_wimask_106; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1174 = out_wifireMux_all_139 & out_wimask_107; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1175 = out_wifireMux_all_139 & out_wimask_108; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1176 = out_wifireMux_all_139 & out_wimask_109; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1177 = out_wifireMux_all_139 & out_wimask_110; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1178 = out_wifireMux_all_139 & out_wimask_111; // @[RegisterRouter.scala 80:24]
  wire [63:0] out_prepend_1164 = {programBufferMem_31,programBufferMem_30,programBufferMem_29,programBufferMem_28,
    programBufferMem_27,programBufferMem_26,programBufferMem_25,programBufferMem_24}; // @[Cat.scala 29:58]
  wire  out_frontSel_111 = _out_backSel_T_1[111]; // @[RegisterRouter.scala 80:24]
  wire  out_wifireMux_all_143 = (((auto_tl_in_a_valid & auto_tl_in_d_ready) & (~in_1_bits_read)) & out_frontSel_111) & (
    out_findex_1 == 9'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1243 = out_wifireMux_all_143 & out_wimask_104; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1244 = out_wifireMux_all_143 & out_wimask_105; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1245 = out_wifireMux_all_143 & out_wimask_106; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1246 = out_wifireMux_all_143 & out_wimask_107; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1247 = out_wifireMux_all_143 & out_wimask_108; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1248 = out_wifireMux_all_143 & out_wimask_109; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1249 = out_wifireMux_all_143 & out_wimask_110; // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_1250 = out_wifireMux_all_143 & out_wimask_111; // @[RegisterRouter.scala 80:24]
  wire [63:0] out_prepend_1227 = {programBufferMem_63,programBufferMem_62,programBufferMem_61,programBufferMem_60,
    programBufferMem_59,programBufferMem_58,programBufferMem_57,programBufferMem_56}; // @[Cat.scala 29:58]
  wire  _GEN_1511 = 8'h1 == out_iindex_1 ? _out_T_1266 : _out_T_1266; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1512 = 8'h2 == out_iindex_1 ? _out_T_1266 : _GEN_1511; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1513 = 8'h3 == out_iindex_1 ? _out_T_1266 : _GEN_1512; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1514 = 8'h4 == out_iindex_1 ? _out_T_1266 : _GEN_1513; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1515 = 8'h5 == out_iindex_1 ? _out_T_1266 : _GEN_1514; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1516 = 8'h6 == out_iindex_1 ? _out_T_1266 : _GEN_1515; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1517 = 8'h7 == out_iindex_1 ? _out_T_1266 : _GEN_1516; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1518 = 8'h8 == out_iindex_1 ? _out_T_1266 : _GEN_1517; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1519 = 8'h9 == out_iindex_1 ? _out_T_1266 : _GEN_1518; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1520 = 8'ha == out_iindex_1 ? _out_T_1266 : _GEN_1519; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1535 = (8'h19 == out_iindex_1) | ((8'h18 == out_iindex_1) | ((8'h17 == out_iindex_1) | ((8'h16 ==
    out_iindex_1) | ((8'h15 == out_iindex_1) | ((8'h14 == out_iindex_1) | ((8'h13 == out_iindex_1) | ((8'h12 ==
    out_iindex_1) | ((8'h11 == out_iindex_1) | ((8'h10 == out_iindex_1) | ((8'hf == out_iindex_1) | ((8'he ==
    out_iindex_1) | ((8'hd == out_iindex_1) | ((8'hc == out_iindex_1) | ((8'hb == out_iindex_1) | _GEN_1520)))))))))))))
    ); // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1542 = 8'h20 == out_iindex_1 ? _out_T_1342 : (8'h1f == out_iindex_1) | ((8'h1e == out_iindex_1) | ((8'h1d
     == out_iindex_1) | ((8'h1c == out_iindex_1) | ((8'h1b == out_iindex_1) | ((8'h1a == out_iindex_1) | _GEN_1535))))); // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1543 = 8'h21 == out_iindex_1 ? _out_T_1342 : _GEN_1542; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1558 = (8'h30 == out_iindex_1) | ((8'h2f == out_iindex_1) | ((8'h2e == out_iindex_1) | ((8'h2d ==
    out_iindex_1) | ((8'h2c == out_iindex_1) | ((8'h2b == out_iindex_1) | ((8'h2a == out_iindex_1) | ((8'h29 ==
    out_iindex_1) | ((8'h28 == out_iindex_1) | ((8'h27 == out_iindex_1) | ((8'h26 == out_iindex_1) | ((8'h25 ==
    out_iindex_1) | ((8'h24 == out_iindex_1) | ((8'h23 == out_iindex_1) | ((8'h22 == out_iindex_1) | _GEN_1543))))))))))
    )))); // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1573 = (8'h3f == out_iindex_1) | ((8'h3e == out_iindex_1) | ((8'h3d == out_iindex_1) | ((8'h3c ==
    out_iindex_1) | ((8'h3b == out_iindex_1) | ((8'h3a == out_iindex_1) | ((8'h39 == out_iindex_1) | ((8'h38 ==
    out_iindex_1) | ((8'h37 == out_iindex_1) | ((8'h36 == out_iindex_1) | ((8'h35 == out_iindex_1) | ((8'h34 ==
    out_iindex_1) | ((8'h33 == out_iindex_1) | ((8'h32 == out_iindex_1) | ((8'h31 == out_iindex_1) | _GEN_1558))))))))))
    )))); // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1588 = (8'h4e == out_iindex_1) | ((8'h4d == out_iindex_1) | ((8'h4c == out_iindex_1) | ((8'h4b ==
    out_iindex_1) | ((8'h4a == out_iindex_1) | ((8'h49 == out_iindex_1) | ((8'h48 == out_iindex_1) | ((8'h47 ==
    out_iindex_1) | ((8'h46 == out_iindex_1) | ((8'h45 == out_iindex_1) | ((8'h44 == out_iindex_1) | ((8'h43 ==
    out_iindex_1) | ((8'h42 == out_iindex_1) | ((8'h41 == out_iindex_1) | ((8'h40 == out_iindex_1) | _GEN_1573))))))))))
    )))); // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1603 = (8'h5d == out_iindex_1) | ((8'h5c == out_iindex_1) | ((8'h5b == out_iindex_1) | ((8'h5a ==
    out_iindex_1) | ((8'h59 == out_iindex_1) | ((8'h58 == out_iindex_1) | ((8'h57 == out_iindex_1) | ((8'h56 ==
    out_iindex_1) | ((8'h55 == out_iindex_1) | ((8'h54 == out_iindex_1) | ((8'h53 == out_iindex_1) | ((8'h52 ==
    out_iindex_1) | ((8'h51 == out_iindex_1) | ((8'h50 == out_iindex_1) | ((8'h4f == out_iindex_1) | _GEN_1588))))))))))
    )))); // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1606 = 8'h60 == out_iindex_1 ? _out_T_1342 : (8'h5f == out_iindex_1) | ((8'h5e == out_iindex_1) | _GEN_1603
    ); // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1613 = 8'h67 == out_iindex_1 ? _out_T_1342 : (8'h66 == out_iindex_1) | ((8'h65 == out_iindex_1) | ((8'h64
     == out_iindex_1) | ((8'h63 == out_iindex_1) | ((8'h62 == out_iindex_1) | ((8'h61 == out_iindex_1) | _GEN_1606))))); // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1614 = 8'h68 == out_iindex_1 ? _out_T_1342 : _GEN_1613; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1615 = 8'h69 == out_iindex_1 ? _out_T_1342 : _GEN_1614; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1616 = 8'h6a == out_iindex_1 ? _out_T_1342 : _GEN_1615; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1617 = 8'h6b == out_iindex_1 ? _out_T_1342 : _GEN_1616; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1618 = 8'h6c == out_iindex_1 ? _out_T_1342 : _GEN_1617; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1619 = 8'h6d == out_iindex_1 ? _out_T_1342 : _GEN_1618; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1620 = 8'h6e == out_iindex_1 ? _out_T_1342 : _GEN_1619; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1621 = 8'h6f == out_iindex_1 ? _out_T_1342 : _GEN_1620; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1622 = 8'h70 == out_iindex_1 ? _out_T_1342 : _GEN_1621; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1637 = (8'h7f == out_iindex_1) | ((8'h7e == out_iindex_1) | ((8'h7d == out_iindex_1) | ((8'h7c ==
    out_iindex_1) | ((8'h7b == out_iindex_1) | ((8'h7a == out_iindex_1) | ((8'h79 == out_iindex_1) | ((8'h78 ==
    out_iindex_1) | ((8'h77 == out_iindex_1) | ((8'h76 == out_iindex_1) | ((8'h75 == out_iindex_1) | ((8'h74 ==
    out_iindex_1) | ((8'h73 == out_iindex_1) | ((8'h72 == out_iindex_1) | ((8'h71 == out_iindex_1) | _GEN_1622))))))))))
    )))); // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1638 = 8'h80 == out_iindex_1 ? _out_T_1342 : _GEN_1637; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1639 = 8'h81 == out_iindex_1 ? _out_T_1342 : _GEN_1638; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1640 = 8'h82 == out_iindex_1 ? _out_T_1342 : _GEN_1639; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1641 = 8'h83 == out_iindex_1 ? _out_T_1342 : _GEN_1640; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1642 = 8'h84 == out_iindex_1 ? _out_T_1342 : _GEN_1641; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1643 = 8'h85 == out_iindex_1 ? _out_T_1342 : _GEN_1642; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1644 = 8'h86 == out_iindex_1 ? _out_T_1342 : _GEN_1643; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1645 = 8'h87 == out_iindex_1 ? _out_T_1342 : _GEN_1644; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1646 = 8'h88 == out_iindex_1 ? _out_T_1342 : _GEN_1645; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1647 = 8'h89 == out_iindex_1 ? _out_T_1342 : _GEN_1646; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1648 = 8'h8a == out_iindex_1 ? _out_T_1342 : _GEN_1647; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1649 = 8'h8b == out_iindex_1 ? _out_T_1342 : _GEN_1648; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1650 = 8'h8c == out_iindex_1 ? _out_T_1342 : _GEN_1649; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1651 = 8'h8d == out_iindex_1 ? _out_T_1342 : _GEN_1650; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1652 = 8'h8e == out_iindex_1 ? _out_T_1342 : _GEN_1651; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1653 = 8'h8f == out_iindex_1 ? _out_T_1342 : _GEN_1652; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1654 = 8'h90 == out_iindex_1 ? _out_T_1342 : _GEN_1653; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1655 = 8'h91 == out_iindex_1 ? _out_T_1342 : _GEN_1654; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1656 = 8'h92 == out_iindex_1 ? _out_T_1342 : _GEN_1655; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1657 = 8'h93 == out_iindex_1 ? _out_T_1342 : _GEN_1656; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1658 = 8'h94 == out_iindex_1 ? _out_T_1342 : _GEN_1657; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1659 = 8'h95 == out_iindex_1 ? _out_T_1342 : _GEN_1658; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1660 = 8'h96 == out_iindex_1 ? _out_T_1342 : _GEN_1659; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1661 = 8'h97 == out_iindex_1 ? _out_T_1342 : _GEN_1660; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1662 = 8'h98 == out_iindex_1 ? _out_T_1342 : _GEN_1661; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1663 = 8'h99 == out_iindex_1 ? _out_T_1342 : _GEN_1662; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1664 = 8'h9a == out_iindex_1 ? _out_T_1342 : _GEN_1663; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1665 = 8'h9b == out_iindex_1 ? _out_T_1342 : _GEN_1664; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1666 = 8'h9c == out_iindex_1 ? _out_T_1342 : _GEN_1665; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1667 = 8'h9d == out_iindex_1 ? _out_T_1342 : _GEN_1666; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1668 = 8'h9e == out_iindex_1 ? _out_T_1342 : _GEN_1667; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1669 = 8'h9f == out_iindex_1 ? _out_T_1342 : _GEN_1668; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1670 = 8'ha0 == out_iindex_1 ? _out_T_1342 : _GEN_1669; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1671 = 8'ha1 == out_iindex_1 ? _out_T_1342 : _GEN_1670; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1672 = 8'ha2 == out_iindex_1 ? _out_T_1342 : _GEN_1671; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1673 = 8'ha3 == out_iindex_1 ? _out_T_1342 : _GEN_1672; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1674 = 8'ha4 == out_iindex_1 ? _out_T_1342 : _GEN_1673; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1675 = 8'ha5 == out_iindex_1 ? _out_T_1342 : _GEN_1674; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1676 = 8'ha6 == out_iindex_1 ? _out_T_1342 : _GEN_1675; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1677 = 8'ha7 == out_iindex_1 ? _out_T_1342 : _GEN_1676; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1678 = 8'ha8 == out_iindex_1 ? _out_T_1342 : _GEN_1677; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1679 = 8'ha9 == out_iindex_1 ? _out_T_1342 : _GEN_1678; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1680 = 8'haa == out_iindex_1 ? _out_T_1342 : _GEN_1679; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1681 = 8'hab == out_iindex_1 ? _out_T_1342 : _GEN_1680; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1682 = 8'hac == out_iindex_1 ? _out_T_1342 : _GEN_1681; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1683 = 8'had == out_iindex_1 ? _out_T_1342 : _GEN_1682; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1684 = 8'hae == out_iindex_1 ? _out_T_1342 : _GEN_1683; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1685 = 8'haf == out_iindex_1 ? _out_T_1342 : _GEN_1684; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1686 = 8'hb0 == out_iindex_1 ? _out_T_1342 : _GEN_1685; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1687 = 8'hb1 == out_iindex_1 ? _out_T_1342 : _GEN_1686; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1688 = 8'hb2 == out_iindex_1 ? _out_T_1342 : _GEN_1687; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1689 = 8'hb3 == out_iindex_1 ? _out_T_1342 : _GEN_1688; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1690 = 8'hb4 == out_iindex_1 ? _out_T_1342 : _GEN_1689; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1691 = 8'hb5 == out_iindex_1 ? _out_T_1342 : _GEN_1690; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1692 = 8'hb6 == out_iindex_1 ? _out_T_1342 : _GEN_1691; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1693 = 8'hb7 == out_iindex_1 ? _out_T_1342 : _GEN_1692; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1694 = 8'hb8 == out_iindex_1 ? _out_T_1342 : _GEN_1693; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1695 = 8'hb9 == out_iindex_1 ? _out_T_1342 : _GEN_1694; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1696 = 8'hba == out_iindex_1 ? _out_T_1342 : _GEN_1695; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1697 = 8'hbb == out_iindex_1 ? _out_T_1342 : _GEN_1696; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1698 = 8'hbc == out_iindex_1 ? _out_T_1342 : _GEN_1697; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1699 = 8'hbd == out_iindex_1 ? _out_T_1342 : _GEN_1698; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1700 = 8'hbe == out_iindex_1 ? _out_T_1342 : _GEN_1699; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1701 = 8'hbf == out_iindex_1 ? _out_T_1342 : _GEN_1700; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1702 = 8'hc0 == out_iindex_1 ? _out_T_1342 : _GEN_1701; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1703 = 8'hc1 == out_iindex_1 ? _out_T_1342 : _GEN_1702; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1704 = 8'hc2 == out_iindex_1 ? _out_T_1342 : _GEN_1703; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1705 = 8'hc3 == out_iindex_1 ? _out_T_1342 : _GEN_1704; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1706 = 8'hc4 == out_iindex_1 ? _out_T_1342 : _GEN_1705; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1707 = 8'hc5 == out_iindex_1 ? _out_T_1342 : _GEN_1706; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1708 = 8'hc6 == out_iindex_1 ? _out_T_1342 : _GEN_1707; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1709 = 8'hc7 == out_iindex_1 ? _out_T_1342 : _GEN_1708; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1710 = 8'hc8 == out_iindex_1 ? _out_T_1342 : _GEN_1709; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1711 = 8'hc9 == out_iindex_1 ? _out_T_1342 : _GEN_1710; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1712 = 8'hca == out_iindex_1 ? _out_T_1342 : _GEN_1711; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1713 = 8'hcb == out_iindex_1 ? _out_T_1342 : _GEN_1712; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1714 = 8'hcc == out_iindex_1 ? _out_T_1342 : _GEN_1713; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1715 = 8'hcd == out_iindex_1 ? _out_T_1342 : _GEN_1714; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1716 = 8'hce == out_iindex_1 ? _out_T_1342 : _GEN_1715; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1717 = 8'hcf == out_iindex_1 ? _out_T_1342 : _GEN_1716; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1718 = 8'hd0 == out_iindex_1 ? _out_T_1342 : _GEN_1717; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1719 = 8'hd1 == out_iindex_1 ? _out_T_1342 : _GEN_1718; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1720 = 8'hd2 == out_iindex_1 ? _out_T_1342 : _GEN_1719; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1721 = 8'hd3 == out_iindex_1 ? _out_T_1342 : _GEN_1720; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1722 = 8'hd4 == out_iindex_1 ? _out_T_1342 : _GEN_1721; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1723 = 8'hd5 == out_iindex_1 ? _out_T_1342 : _GEN_1722; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1724 = 8'hd6 == out_iindex_1 ? _out_T_1342 : _GEN_1723; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1725 = 8'hd7 == out_iindex_1 ? _out_T_1342 : _GEN_1724; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1726 = 8'hd8 == out_iindex_1 ? _out_T_1342 : _GEN_1725; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1727 = 8'hd9 == out_iindex_1 ? _out_T_1342 : _GEN_1726; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1728 = 8'hda == out_iindex_1 ? _out_T_1342 : _GEN_1727; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1729 = 8'hdb == out_iindex_1 ? _out_T_1342 : _GEN_1728; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1730 = 8'hdc == out_iindex_1 ? _out_T_1342 : _GEN_1729; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1731 = 8'hdd == out_iindex_1 ? _out_T_1342 : _GEN_1730; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1732 = 8'hde == out_iindex_1 ? _out_T_1342 : _GEN_1731; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1733 = 8'hdf == out_iindex_1 ? _out_T_1342 : _GEN_1732; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1734 = 8'he0 == out_iindex_1 ? _out_T_1342 : _GEN_1733; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1735 = 8'he1 == out_iindex_1 ? _out_T_1342 : _GEN_1734; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1736 = 8'he2 == out_iindex_1 ? _out_T_1342 : _GEN_1735; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1737 = 8'he3 == out_iindex_1 ? _out_T_1342 : _GEN_1736; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1738 = 8'he4 == out_iindex_1 ? _out_T_1342 : _GEN_1737; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1739 = 8'he5 == out_iindex_1 ? _out_T_1342 : _GEN_1738; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1740 = 8'he6 == out_iindex_1 ? _out_T_1342 : _GEN_1739; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1741 = 8'he7 == out_iindex_1 ? _out_T_1342 : _GEN_1740; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1742 = 8'he8 == out_iindex_1 ? _out_T_1342 : _GEN_1741; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1743 = 8'he9 == out_iindex_1 ? _out_T_1342 : _GEN_1742; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1744 = 8'hea == out_iindex_1 ? _out_T_1342 : _GEN_1743; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1745 = 8'heb == out_iindex_1 ? _out_T_1342 : _GEN_1744; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1746 = 8'hec == out_iindex_1 ? _out_T_1342 : _GEN_1745; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1747 = 8'hed == out_iindex_1 ? _out_T_1342 : _GEN_1746; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1748 = 8'hee == out_iindex_1 ? _out_T_1342 : _GEN_1747; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1749 = 8'hef == out_iindex_1 ? _out_T_1342 : _GEN_1748; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1750 = 8'hf0 == out_iindex_1 ? _out_T_1342 : _GEN_1749; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1751 = 8'hf1 == out_iindex_1 ? _out_T_1342 : _GEN_1750; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1752 = 8'hf2 == out_iindex_1 ? _out_T_1342 : _GEN_1751; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1753 = 8'hf3 == out_iindex_1 ? _out_T_1342 : _GEN_1752; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1754 = 8'hf4 == out_iindex_1 ? _out_T_1342 : _GEN_1753; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1755 = 8'hf5 == out_iindex_1 ? _out_T_1342 : _GEN_1754; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1756 = 8'hf6 == out_iindex_1 ? _out_T_1342 : _GEN_1755; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1757 = 8'hf7 == out_iindex_1 ? _out_T_1342 : _GEN_1756; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1758 = 8'hf8 == out_iindex_1 ? _out_T_1342 : _GEN_1757; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1759 = 8'hf9 == out_iindex_1 ? _out_T_1342 : _GEN_1758; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1760 = 8'hfa == out_iindex_1 ? _out_T_1342 : _GEN_1759; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1761 = 8'hfb == out_iindex_1 ? _out_T_1342 : _GEN_1760; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1762 = 8'hfc == out_iindex_1 ? _out_T_1342 : _GEN_1761; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1763 = 8'hfd == out_iindex_1 ? _out_T_1342 : _GEN_1762; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1764 = 8'hfe == out_iindex_1 ? _out_T_1342 : _GEN_1763; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_1765 = 8'hff == out_iindex_1 ? _out_T_1342 : _GEN_1764; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1767 = 8'h1 == out_iindex_1 ? 64'hff0000f0440006f : 64'h380006f00c0006f; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1768 = 8'h2 == out_iindex_1 ? 64'hf14024737b241073 : _GEN_1767; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1769 = 8'h3 == out_iindex_1 ? 64'h4004440310802023 : _GEN_1768; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1770 = 8'h4 == out_iindex_1 ? 64'hfe0408e300347413 : _GEN_1769; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1771 = 8'h5 == out_iindex_1 ? 64'h4086300147413 : _GEN_1770; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1772 = 8'h6 == out_iindex_1 ? 64'h100022237b202473 : _GEN_1771; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1773 = 8'h7 == out_iindex_1 ? 64'hf140247330000067 : _GEN_1772; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1774 = 8'h8 == out_iindex_1 ? 64'h7b20247310802423 : _GEN_1773; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1775 = 8'h9 == out_iindex_1 ? 64'h100026237b200073 : _GEN_1774; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1776 = 8'ha == out_iindex_1 ? 64'h100073 : _GEN_1775; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1777 = 8'hb == out_iindex_1 ? 64'h0 : _GEN_1776; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1778 = 8'hc == out_iindex_1 ? 64'h0 : _GEN_1777; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1779 = 8'hd == out_iindex_1 ? 64'h0 : _GEN_1778; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1780 = 8'he == out_iindex_1 ? 64'h0 : _GEN_1779; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1781 = 8'hf == out_iindex_1 ? 64'h0 : _GEN_1780; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1782 = 8'h10 == out_iindex_1 ? 64'h0 : _GEN_1781; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1783 = 8'h11 == out_iindex_1 ? 64'h0 : _GEN_1782; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1784 = 8'h12 == out_iindex_1 ? 64'h0 : _GEN_1783; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1785 = 8'h13 == out_iindex_1 ? 64'h0 : _GEN_1784; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1786 = 8'h14 == out_iindex_1 ? 64'h0 : _GEN_1785; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1787 = 8'h15 == out_iindex_1 ? 64'h0 : _GEN_1786; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1788 = 8'h16 == out_iindex_1 ? 64'h0 : _GEN_1787; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1789 = 8'h17 == out_iindex_1 ? 64'h0 : _GEN_1788; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1790 = 8'h18 == out_iindex_1 ? 64'h0 : _GEN_1789; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1791 = 8'h19 == out_iindex_1 ? 64'h0 : _GEN_1790; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1792 = 8'h1a == out_iindex_1 ? 64'h0 : _GEN_1791; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1793 = 8'h1b == out_iindex_1 ? 64'h0 : _GEN_1792; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1794 = 8'h1c == out_iindex_1 ? 64'h0 : _GEN_1793; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1795 = 8'h1d == out_iindex_1 ? 64'h0 : _GEN_1794; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1796 = 8'h1e == out_iindex_1 ? 64'h0 : _GEN_1795; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1797 = 8'h1f == out_iindex_1 ? 64'h0 : _GEN_1796; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1798 = 8'h20 == out_iindex_1 ? 64'h0 : _GEN_1797; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1799 = 8'h21 == out_iindex_1 ? 64'h0 : _GEN_1798; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1800 = 8'h22 == out_iindex_1 ? 64'h0 : _GEN_1799; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1801 = 8'h23 == out_iindex_1 ? 64'h0 : _GEN_1800; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1802 = 8'h24 == out_iindex_1 ? 64'h0 : _GEN_1801; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1803 = 8'h25 == out_iindex_1 ? 64'h0 : _GEN_1802; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1804 = 8'h26 == out_iindex_1 ? 64'h0 : _GEN_1803; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1805 = 8'h27 == out_iindex_1 ? 64'h0 : _GEN_1804; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1806 = 8'h28 == out_iindex_1 ? 64'h0 : _GEN_1805; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1807 = 8'h29 == out_iindex_1 ? 64'h0 : _GEN_1806; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1808 = 8'h2a == out_iindex_1 ? 64'h0 : _GEN_1807; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1809 = 8'h2b == out_iindex_1 ? 64'h0 : _GEN_1808; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1810 = 8'h2c == out_iindex_1 ? 64'h0 : _GEN_1809; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1811 = 8'h2d == out_iindex_1 ? 64'h0 : _GEN_1810; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1812 = 8'h2e == out_iindex_1 ? 64'h0 : _GEN_1811; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1813 = 8'h2f == out_iindex_1 ? 64'h0 : _GEN_1812; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1814 = 8'h30 == out_iindex_1 ? 64'h0 : _GEN_1813; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1815 = 8'h31 == out_iindex_1 ? 64'h0 : _GEN_1814; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1816 = 8'h32 == out_iindex_1 ? 64'h0 : _GEN_1815; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1817 = 8'h33 == out_iindex_1 ? 64'h0 : _GEN_1816; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1818 = 8'h34 == out_iindex_1 ? 64'h0 : _GEN_1817; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1819 = 8'h35 == out_iindex_1 ? 64'h0 : _GEN_1818; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1820 = 8'h36 == out_iindex_1 ? 64'h0 : _GEN_1819; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1821 = 8'h37 == out_iindex_1 ? 64'h0 : _GEN_1820; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1822 = 8'h38 == out_iindex_1 ? 64'h0 : _GEN_1821; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1823 = 8'h39 == out_iindex_1 ? 64'h0 : _GEN_1822; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1824 = 8'h3a == out_iindex_1 ? 64'h0 : _GEN_1823; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1825 = 8'h3b == out_iindex_1 ? 64'h0 : _GEN_1824; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1826 = 8'h3c == out_iindex_1 ? 64'h0 : _GEN_1825; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1827 = 8'h3d == out_iindex_1 ? 64'h0 : _GEN_1826; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1828 = 8'h3e == out_iindex_1 ? 64'h0 : _GEN_1827; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1829 = 8'h3f == out_iindex_1 ? 64'h0 : _GEN_1828; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1830 = 8'h40 == out_iindex_1 ? 64'h0 : _GEN_1829; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1831 = 8'h41 == out_iindex_1 ? 64'h0 : _GEN_1830; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1832 = 8'h42 == out_iindex_1 ? 64'h0 : _GEN_1831; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1833 = 8'h43 == out_iindex_1 ? 64'h0 : _GEN_1832; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1834 = 8'h44 == out_iindex_1 ? 64'h0 : _GEN_1833; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1835 = 8'h45 == out_iindex_1 ? 64'h0 : _GEN_1834; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1836 = 8'h46 == out_iindex_1 ? 64'h0 : _GEN_1835; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1837 = 8'h47 == out_iindex_1 ? 64'h0 : _GEN_1836; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1838 = 8'h48 == out_iindex_1 ? 64'h0 : _GEN_1837; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1839 = 8'h49 == out_iindex_1 ? 64'h0 : _GEN_1838; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1840 = 8'h4a == out_iindex_1 ? 64'h0 : _GEN_1839; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1841 = 8'h4b == out_iindex_1 ? 64'h0 : _GEN_1840; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1842 = 8'h4c == out_iindex_1 ? 64'h0 : _GEN_1841; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1843 = 8'h4d == out_iindex_1 ? 64'h0 : _GEN_1842; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1844 = 8'h4e == out_iindex_1 ? 64'h0 : _GEN_1843; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1845 = 8'h4f == out_iindex_1 ? 64'h0 : _GEN_1844; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1846 = 8'h50 == out_iindex_1 ? 64'h0 : _GEN_1845; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1847 = 8'h51 == out_iindex_1 ? 64'h0 : _GEN_1846; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1848 = 8'h52 == out_iindex_1 ? 64'h0 : _GEN_1847; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1849 = 8'h53 == out_iindex_1 ? 64'h0 : _GEN_1848; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1850 = 8'h54 == out_iindex_1 ? 64'h0 : _GEN_1849; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1851 = 8'h55 == out_iindex_1 ? 64'h0 : _GEN_1850; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1852 = 8'h56 == out_iindex_1 ? 64'h0 : _GEN_1851; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1853 = 8'h57 == out_iindex_1 ? 64'h0 : _GEN_1852; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1854 = 8'h58 == out_iindex_1 ? 64'h0 : _GEN_1853; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1855 = 8'h59 == out_iindex_1 ? 64'h0 : _GEN_1854; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1856 = 8'h5a == out_iindex_1 ? 64'h0 : _GEN_1855; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1857 = 8'h5b == out_iindex_1 ? 64'h0 : _GEN_1856; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1858 = 8'h5c == out_iindex_1 ? 64'h0 : _GEN_1857; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1859 = 8'h5d == out_iindex_1 ? 64'h0 : _GEN_1858; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1860 = 8'h5e == out_iindex_1 ? 64'h0 : _GEN_1859; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1861 = 8'h5f == out_iindex_1 ? 64'h0 : _GEN_1860; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1862 = 8'h60 == out_iindex_1 ? 64'h380006f : _GEN_1861; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1863 = 8'h61 == out_iindex_1 ? 64'h0 : _GEN_1862; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1864 = 8'h62 == out_iindex_1 ? 64'h0 : _GEN_1863; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1865 = 8'h63 == out_iindex_1 ? 64'h0 : _GEN_1864; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1866 = 8'h64 == out_iindex_1 ? 64'h0 : _GEN_1865; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1867 = 8'h65 == out_iindex_1 ? 64'h0 : _GEN_1866; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1868 = 8'h66 == out_iindex_1 ? 64'h0 : _GEN_1867; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1869 = 8'h67 == out_iindex_1 ? out_prepend_821 : _GEN_1868; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1870 = 8'h68 == out_iindex_1 ? out_prepend_1045 : _GEN_1869; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1871 = 8'h69 == out_iindex_1 ? out_prepend_662 : _GEN_1870; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1872 = 8'h6a == out_iindex_1 ? out_prepend_409 : _GEN_1871; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1873 = 8'h6b == out_iindex_1 ? out_prepend_1164 : _GEN_1872; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1874 = 8'h6c == out_iindex_1 ? out_prepend_870 : _GEN_1873; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1875 = 8'h6d == out_iindex_1 ? out_prepend_592 : _GEN_1874; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1876 = 8'h6e == out_iindex_1 ? out_prepend_325 : _GEN_1875; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1877 = 8'h6f == out_iindex_1 ? out_prepend_1227 : _GEN_1876; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1878 = 8'h70 == out_iindex_1 ? out_prepend_940 : _GEN_1877; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1879 = 8'h71 == out_iindex_1 ? 64'h0 : _GEN_1878; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1880 = 8'h72 == out_iindex_1 ? 64'h0 : _GEN_1879; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1881 = 8'h73 == out_iindex_1 ? 64'h0 : _GEN_1880; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1882 = 8'h74 == out_iindex_1 ? 64'h0 : _GEN_1881; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1883 = 8'h75 == out_iindex_1 ? 64'h0 : _GEN_1882; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1884 = 8'h76 == out_iindex_1 ? 64'h0 : _GEN_1883; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1885 = 8'h77 == out_iindex_1 ? 64'h0 : _GEN_1884; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1886 = 8'h78 == out_iindex_1 ? 64'h0 : _GEN_1885; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1887 = 8'h79 == out_iindex_1 ? 64'h0 : _GEN_1886; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1888 = 8'h7a == out_iindex_1 ? 64'h0 : _GEN_1887; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1889 = 8'h7b == out_iindex_1 ? 64'h0 : _GEN_1888; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1890 = 8'h7c == out_iindex_1 ? 64'h0 : _GEN_1889; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1891 = 8'h7d == out_iindex_1 ? 64'h0 : _GEN_1890; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1892 = 8'h7e == out_iindex_1 ? 64'h0 : _GEN_1891; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1893 = 8'h7f == out_iindex_1 ? 64'h0 : _GEN_1892; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1894 = 8'h80 == out_iindex_1 ? out_prepend_234 : _GEN_1893; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1895 = 8'h81 == out_iindex_1 ? out_prepend_234 : _GEN_1894; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1896 = 8'h82 == out_iindex_1 ? out_prepend_234 : _GEN_1895; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1897 = 8'h83 == out_iindex_1 ? out_prepend_234 : _GEN_1896; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1898 = 8'h84 == out_iindex_1 ? out_prepend_234 : _GEN_1897; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1899 = 8'h85 == out_iindex_1 ? out_prepend_234 : _GEN_1898; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1900 = 8'h86 == out_iindex_1 ? out_prepend_234 : _GEN_1899; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1901 = 8'h87 == out_iindex_1 ? out_prepend_234 : _GEN_1900; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1902 = 8'h88 == out_iindex_1 ? out_prepend_234 : _GEN_1901; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1903 = 8'h89 == out_iindex_1 ? out_prepend_234 : _GEN_1902; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1904 = 8'h8a == out_iindex_1 ? out_prepend_234 : _GEN_1903; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1905 = 8'h8b == out_iindex_1 ? out_prepend_234 : _GEN_1904; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1906 = 8'h8c == out_iindex_1 ? out_prepend_234 : _GEN_1905; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1907 = 8'h8d == out_iindex_1 ? out_prepend_234 : _GEN_1906; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1908 = 8'h8e == out_iindex_1 ? out_prepend_234 : _GEN_1907; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1909 = 8'h8f == out_iindex_1 ? out_prepend_234 : _GEN_1908; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1910 = 8'h90 == out_iindex_1 ? out_prepend_234 : _GEN_1909; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1911 = 8'h91 == out_iindex_1 ? out_prepend_234 : _GEN_1910; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1912 = 8'h92 == out_iindex_1 ? out_prepend_234 : _GEN_1911; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1913 = 8'h93 == out_iindex_1 ? out_prepend_234 : _GEN_1912; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1914 = 8'h94 == out_iindex_1 ? out_prepend_234 : _GEN_1913; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1915 = 8'h95 == out_iindex_1 ? out_prepend_234 : _GEN_1914; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1916 = 8'h96 == out_iindex_1 ? out_prepend_234 : _GEN_1915; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1917 = 8'h97 == out_iindex_1 ? out_prepend_234 : _GEN_1916; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1918 = 8'h98 == out_iindex_1 ? out_prepend_234 : _GEN_1917; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1919 = 8'h99 == out_iindex_1 ? out_prepend_234 : _GEN_1918; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1920 = 8'h9a == out_iindex_1 ? out_prepend_234 : _GEN_1919; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1921 = 8'h9b == out_iindex_1 ? out_prepend_234 : _GEN_1920; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1922 = 8'h9c == out_iindex_1 ? out_prepend_234 : _GEN_1921; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1923 = 8'h9d == out_iindex_1 ? out_prepend_234 : _GEN_1922; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1924 = 8'h9e == out_iindex_1 ? out_prepend_234 : _GEN_1923; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1925 = 8'h9f == out_iindex_1 ? out_prepend_234 : _GEN_1924; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1926 = 8'ha0 == out_iindex_1 ? out_prepend_234 : _GEN_1925; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1927 = 8'ha1 == out_iindex_1 ? out_prepend_234 : _GEN_1926; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1928 = 8'ha2 == out_iindex_1 ? out_prepend_234 : _GEN_1927; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1929 = 8'ha3 == out_iindex_1 ? out_prepend_234 : _GEN_1928; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1930 = 8'ha4 == out_iindex_1 ? out_prepend_234 : _GEN_1929; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1931 = 8'ha5 == out_iindex_1 ? out_prepend_234 : _GEN_1930; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1932 = 8'ha6 == out_iindex_1 ? out_prepend_234 : _GEN_1931; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1933 = 8'ha7 == out_iindex_1 ? out_prepend_234 : _GEN_1932; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1934 = 8'ha8 == out_iindex_1 ? out_prepend_234 : _GEN_1933; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1935 = 8'ha9 == out_iindex_1 ? out_prepend_234 : _GEN_1934; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1936 = 8'haa == out_iindex_1 ? out_prepend_234 : _GEN_1935; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1937 = 8'hab == out_iindex_1 ? out_prepend_234 : _GEN_1936; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1938 = 8'hac == out_iindex_1 ? out_prepend_234 : _GEN_1937; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1939 = 8'had == out_iindex_1 ? out_prepend_234 : _GEN_1938; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1940 = 8'hae == out_iindex_1 ? out_prepend_234 : _GEN_1939; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1941 = 8'haf == out_iindex_1 ? out_prepend_234 : _GEN_1940; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1942 = 8'hb0 == out_iindex_1 ? out_prepend_234 : _GEN_1941; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1943 = 8'hb1 == out_iindex_1 ? out_prepend_234 : _GEN_1942; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1944 = 8'hb2 == out_iindex_1 ? out_prepend_234 : _GEN_1943; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1945 = 8'hb3 == out_iindex_1 ? out_prepend_234 : _GEN_1944; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1946 = 8'hb4 == out_iindex_1 ? out_prepend_234 : _GEN_1945; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1947 = 8'hb5 == out_iindex_1 ? out_prepend_234 : _GEN_1946; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1948 = 8'hb6 == out_iindex_1 ? out_prepend_234 : _GEN_1947; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1949 = 8'hb7 == out_iindex_1 ? out_prepend_234 : _GEN_1948; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1950 = 8'hb8 == out_iindex_1 ? out_prepend_234 : _GEN_1949; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1951 = 8'hb9 == out_iindex_1 ? out_prepend_234 : _GEN_1950; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1952 = 8'hba == out_iindex_1 ? out_prepend_234 : _GEN_1951; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1953 = 8'hbb == out_iindex_1 ? out_prepend_234 : _GEN_1952; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1954 = 8'hbc == out_iindex_1 ? out_prepend_234 : _GEN_1953; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1955 = 8'hbd == out_iindex_1 ? out_prepend_234 : _GEN_1954; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1956 = 8'hbe == out_iindex_1 ? out_prepend_234 : _GEN_1955; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1957 = 8'hbf == out_iindex_1 ? out_prepend_234 : _GEN_1956; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1958 = 8'hc0 == out_iindex_1 ? out_prepend_234 : _GEN_1957; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1959 = 8'hc1 == out_iindex_1 ? out_prepend_234 : _GEN_1958; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1960 = 8'hc2 == out_iindex_1 ? out_prepend_234 : _GEN_1959; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1961 = 8'hc3 == out_iindex_1 ? out_prepend_234 : _GEN_1960; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1962 = 8'hc4 == out_iindex_1 ? out_prepend_234 : _GEN_1961; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1963 = 8'hc5 == out_iindex_1 ? out_prepend_234 : _GEN_1962; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1964 = 8'hc6 == out_iindex_1 ? out_prepend_234 : _GEN_1963; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1965 = 8'hc7 == out_iindex_1 ? out_prepend_234 : _GEN_1964; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1966 = 8'hc8 == out_iindex_1 ? out_prepend_234 : _GEN_1965; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1967 = 8'hc9 == out_iindex_1 ? out_prepend_234 : _GEN_1966; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1968 = 8'hca == out_iindex_1 ? out_prepend_234 : _GEN_1967; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1969 = 8'hcb == out_iindex_1 ? out_prepend_234 : _GEN_1968; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1970 = 8'hcc == out_iindex_1 ? out_prepend_234 : _GEN_1969; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1971 = 8'hcd == out_iindex_1 ? out_prepend_234 : _GEN_1970; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1972 = 8'hce == out_iindex_1 ? out_prepend_234 : _GEN_1971; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1973 = 8'hcf == out_iindex_1 ? out_prepend_234 : _GEN_1972; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1974 = 8'hd0 == out_iindex_1 ? out_prepend_234 : _GEN_1973; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1975 = 8'hd1 == out_iindex_1 ? out_prepend_234 : _GEN_1974; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1976 = 8'hd2 == out_iindex_1 ? out_prepend_234 : _GEN_1975; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1977 = 8'hd3 == out_iindex_1 ? out_prepend_234 : _GEN_1976; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1978 = 8'hd4 == out_iindex_1 ? out_prepend_234 : _GEN_1977; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1979 = 8'hd5 == out_iindex_1 ? out_prepend_234 : _GEN_1978; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1980 = 8'hd6 == out_iindex_1 ? out_prepend_234 : _GEN_1979; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1981 = 8'hd7 == out_iindex_1 ? out_prepend_234 : _GEN_1980; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1982 = 8'hd8 == out_iindex_1 ? out_prepend_234 : _GEN_1981; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1983 = 8'hd9 == out_iindex_1 ? out_prepend_234 : _GEN_1982; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1984 = 8'hda == out_iindex_1 ? out_prepend_234 : _GEN_1983; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1985 = 8'hdb == out_iindex_1 ? out_prepend_234 : _GEN_1984; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1986 = 8'hdc == out_iindex_1 ? out_prepend_234 : _GEN_1985; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1987 = 8'hdd == out_iindex_1 ? out_prepend_234 : _GEN_1986; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1988 = 8'hde == out_iindex_1 ? out_prepend_234 : _GEN_1987; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1989 = 8'hdf == out_iindex_1 ? out_prepend_234 : _GEN_1988; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1990 = 8'he0 == out_iindex_1 ? out_prepend_234 : _GEN_1989; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1991 = 8'he1 == out_iindex_1 ? out_prepend_234 : _GEN_1990; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1992 = 8'he2 == out_iindex_1 ? out_prepend_234 : _GEN_1991; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1993 = 8'he3 == out_iindex_1 ? out_prepend_234 : _GEN_1992; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1994 = 8'he4 == out_iindex_1 ? out_prepend_234 : _GEN_1993; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1995 = 8'he5 == out_iindex_1 ? out_prepend_234 : _GEN_1994; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1996 = 8'he6 == out_iindex_1 ? out_prepend_234 : _GEN_1995; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1997 = 8'he7 == out_iindex_1 ? out_prepend_234 : _GEN_1996; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1998 = 8'he8 == out_iindex_1 ? out_prepend_234 : _GEN_1997; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_1999 = 8'he9 == out_iindex_1 ? out_prepend_234 : _GEN_1998; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2000 = 8'hea == out_iindex_1 ? out_prepend_234 : _GEN_1999; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2001 = 8'heb == out_iindex_1 ? out_prepend_234 : _GEN_2000; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2002 = 8'hec == out_iindex_1 ? out_prepend_234 : _GEN_2001; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2003 = 8'hed == out_iindex_1 ? out_prepend_234 : _GEN_2002; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2004 = 8'hee == out_iindex_1 ? out_prepend_234 : _GEN_2003; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2005 = 8'hef == out_iindex_1 ? out_prepend_234 : _GEN_2004; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2006 = 8'hf0 == out_iindex_1 ? out_prepend_234 : _GEN_2005; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2007 = 8'hf1 == out_iindex_1 ? out_prepend_234 : _GEN_2006; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2008 = 8'hf2 == out_iindex_1 ? out_prepend_234 : _GEN_2007; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2009 = 8'hf3 == out_iindex_1 ? out_prepend_234 : _GEN_2008; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2010 = 8'hf4 == out_iindex_1 ? out_prepend_234 : _GEN_2009; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2011 = 8'hf5 == out_iindex_1 ? out_prepend_234 : _GEN_2010; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2012 = 8'hf6 == out_iindex_1 ? out_prepend_234 : _GEN_2011; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2013 = 8'hf7 == out_iindex_1 ? out_prepend_234 : _GEN_2012; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2014 = 8'hf8 == out_iindex_1 ? out_prepend_234 : _GEN_2013; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2015 = 8'hf9 == out_iindex_1 ? out_prepend_234 : _GEN_2014; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2016 = 8'hfa == out_iindex_1 ? out_prepend_234 : _GEN_2015; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2017 = 8'hfb == out_iindex_1 ? out_prepend_234 : _GEN_2016; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2018 = 8'hfc == out_iindex_1 ? out_prepend_234 : _GEN_2017; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2019 = 8'hfd == out_iindex_1 ? out_prepend_234 : _GEN_2018; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2020 = 8'hfe == out_iindex_1 ? out_prepend_234 : _GEN_2019; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_2021 = 8'hff == out_iindex_1 ? out_prepend_234 : _GEN_2020; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [1:0] _GEN_2107 = commandRegBadHaltResume ? 2'h0 : 2'h2; // @[Debug.scala 1635:43 Debug.scala 1637:22]
  wire  _T_304 = (~goReg) & out_f_woready_631; // @[Debug.scala 1651:30]
  wire [1:0] _GEN_2113 = _T_304 ? 2'h0 : ctrlStateReg; // @[Debug.scala 1651:116 Debug.scala 1652:22]
  wire [1:0] _GEN_2114 = out_f_woready_449 ? 2'h0 : _GEN_2113; // @[Debug.scala 1654:31 Debug.scala 1656:24]
  wire  _T_311 = ctrlStateReg == 2'h3; // @[Debug.scala 1659:30]
  wire  _GEN_2261 = _errorBusy_T & (~_T_301); // @[Debug.scala 1655:15]
  AsyncResetSynchronizerShiftReg_w1_d3_i0 hartIsInResetSync_0_debug_hartReset_0 ( // @[ShiftReg.scala 45:23]
    .clock(hartIsInResetSync_0_debug_hartReset_0_clock),
    .reset(hartIsInResetSync_0_debug_hartReset_0_reset),
    .io_d(hartIsInResetSync_0_debug_hartReset_0_io_d),
    .io_q(hartIsInResetSync_0_debug_hartReset_0_io_q)
  );
  assign auto_tl_in_a_ready = auto_tl_in_d_ready; // @[RegisterRouter.scala 80:24]
  assign auto_tl_in_d_valid = auto_tl_in_a_valid; // @[RegisterRouter.scala 80:24]
  assign auto_tl_in_d_bits_opcode = {{2'd0}, in_1_bits_read}; // @[Nodes.scala 1216:84 RegisterRouter.scala 95:19]
  assign auto_tl_in_d_bits_size = auto_tl_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_tl_in_d_bits_source = auto_tl_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_tl_in_d_bits_data = _GEN_1765 ? _GEN_2021 : 64'h0; // @[RegisterRouter.scala 80:24]
  assign auto_dmi_in_a_ready = auto_dmi_in_d_ready; // @[RegisterRouter.scala 80:24]
  assign auto_dmi_in_d_valid = auto_dmi_in_a_valid; // @[RegisterRouter.scala 80:24]
  assign auto_dmi_in_d_bits_opcode = {{2'd0}, in_bits_read}; // @[Nodes.scala 1216:84 RegisterRouter.scala 95:19]
  assign auto_dmi_in_d_bits_size = auto_dmi_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_dmi_in_d_bits_source = auto_dmi_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_dmi_in_d_bits_data = _GEN_300 ? _GEN_332 : 32'h0; // @[RegisterRouter.scala 80:24]
  assign io_innerCtrl_ready = 1'h1; // @[Debug.scala 836:24]
  assign io_hgDebugInt_0 = hrDebugIntReg_0; // @[package.scala 58:75]
  assign hartIsInResetSync_0_debug_hartReset_0_clock = clock;
  assign hartIsInResetSync_0_debug_hartReset_0_reset = reset;
  assign hartIsInResetSync_0_debug_hartReset_0_io_d = io_hartIsInReset_0; // @[ShiftReg.scala 47:16]
  always @(posedge clock) begin
    haltedBitRegs <= _GEN_65[0];
    resumeReqRegs <= _GEN_66[0];
    if (_T_1) begin // @[Debug.scala 919:44]
      haveResetBitRegs <= 1'h0; // @[Debug.scala 920:24]
    end else if (_T_20) begin // @[Debug.scala 922:68]
      haveResetBitRegs <= _haveResetBitRegs_T_2; // @[Debug.scala 923:26]
    end else begin
      haveResetBitRegs <= _haveResetBitRegs_T_3; // @[Debug.scala 925:26]
    end
    if (reset) begin // @[Debug.scala 854:29]
      hrmaskReg_0 <= 1'h0; // @[Debug.scala 854:29]
    end else if (_T_1) begin // @[Debug.scala 861:45]
      hrmaskReg_0 <= 1'h0; // @[Debug.scala 862:17]
    end else if (_T_4) begin // @[Debug.scala 863:37]
      hrmaskReg_0 <= io_innerCtrl_bits_hrmask_0; // @[Debug.scala 864:17]
    end
    if (_T_1) begin // @[Debug.scala 1102:45]
      ABSTRACTCSReg_cmderr <= 3'h0; // @[Debug.scala 1103:21]
    end else if (errorBusy) begin // @[Debug.scala 1105:23]
      ABSTRACTCSReg_cmderr <= 3'h1; // @[Debug.scala 1106:30]
    end else if (errorException) begin // @[Debug.scala 1107:35]
      ABSTRACTCSReg_cmderr <= 3'h3; // @[Debug.scala 1108:30]
    end else if (errorUnsupported) begin // @[Debug.scala 1109:37]
      ABSTRACTCSReg_cmderr <= 3'h2; // @[Debug.scala 1110:30]
    end else begin
      ABSTRACTCSReg_cmderr <= _GEN_38;
    end
    if (_T_1) begin // @[Debug.scala 1668:45]
      ctrlStateReg <= 2'h0; // @[Debug.scala 1669:20]
    end else if (ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1617:47]
      if (_T_299) begin // @[Debug.scala 1618:66]
        ctrlStateReg <= 2'h1; // @[Debug.scala 1619:22]
      end
    end else if (_T_301) begin // @[Debug.scala 1625:59]
      if (commandRegIsUnsupported) begin // @[Debug.scala 1632:38]
        ctrlStateReg <= 2'h0; // @[Debug.scala 1634:22]
      end else begin
        ctrlStateReg <= _GEN_2107;
      end
    end else if (_T_302) begin // @[Debug.scala 1646:51]
      ctrlStateReg <= _GEN_2114;
    end
    if (_T_1) begin // @[Debug.scala 1183:45]
      COMMANDRdData_cmdtype <= 8'h0; // @[Debug.scala 1184:18]
    end else if (COMMANDWrEn) begin // @[Debug.scala 1186:26]
      COMMANDRdData_cmdtype <= COMMANDWrData_cmdtype; // @[Debug.scala 1187:20]
    end
    if (_T_1) begin // @[Debug.scala 1183:45]
      COMMANDRdData_control <= 24'h0; // @[Debug.scala 1184:18]
    end else if (COMMANDWrEn) begin // @[Debug.scala 1186:26]
      COMMANDRdData_control <= COMMANDWrData_control; // @[Debug.scala 1187:20]
    end
    if (_T_1) begin // @[Debug.scala 1141:45]
      ABSTRACTAUTOReg_autoexecdata <= 12'h0; // @[Debug.scala 1142:23]
    end else if (_T_30) begin // @[Debug.scala 1147:61]
      ABSTRACTAUTOReg_autoexecdata <= _ABSTRACTAUTOReg_autoexecdata_T; // @[Debug.scala 1148:38]
    end
    if (_T_1) begin // @[Debug.scala 1141:45]
      ABSTRACTAUTOReg_autoexecprogbuf <= 16'h0; // @[Debug.scala 1142:23]
    end else if (_T_29) begin // @[Debug.scala 1144:64]
      ABSTRACTAUTOReg_autoexecprogbuf <= ABSTRACTAUTOWrData_autoexecprogbuf; // @[Debug.scala 1145:41]
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      abstractDataMem_0 <= 8'h0; // @[Debug.scala 1542:40]
    end else if (out_f_wivalid_915) begin // @[RegField.scala 75:88]
      abstractDataMem_0 <= auto_tl_in_a_bits_data[7:0]; // @[RegField.scala 75:92]
    end else if (_T_138) begin // @[Debug.scala 1348:91]
      if (out_f_woready_96) begin // @[Debug.scala 265:24]
        abstractDataMem_0 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      abstractDataMem_1 <= 8'h0; // @[Debug.scala 1542:40]
    end else if (out_f_wivalid_916) begin // @[RegField.scala 75:88]
      abstractDataMem_1 <= auto_tl_in_a_bits_data[15:8]; // @[RegField.scala 75:92]
    end else if (_T_140) begin // @[Debug.scala 1348:91]
      if (out_f_woready_97) begin // @[Debug.scala 265:24]
        abstractDataMem_1 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      abstractDataMem_2 <= 8'h0; // @[Debug.scala 1542:40]
    end else if (out_f_wivalid_917) begin // @[RegField.scala 75:88]
      abstractDataMem_2 <= auto_tl_in_a_bits_data[23:16]; // @[RegField.scala 75:92]
    end else if (_T_142) begin // @[Debug.scala 1348:91]
      if (out_f_woready_98) begin // @[Debug.scala 265:24]
        abstractDataMem_2 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      abstractDataMem_3 <= 8'h0; // @[Debug.scala 1542:40]
    end else if (out_f_wivalid_918) begin // @[RegField.scala 75:88]
      abstractDataMem_3 <= auto_tl_in_a_bits_data[31:24]; // @[RegField.scala 75:92]
    end else if (_T_144) begin // @[Debug.scala 1348:91]
      if (out_f_woready_99) begin // @[Debug.scala 265:24]
        abstractDataMem_3 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      abstractDataMem_4 <= 8'h0; // @[Debug.scala 1542:40]
    end else if (out_f_wivalid_919) begin // @[RegField.scala 75:88]
      abstractDataMem_4 <= auto_tl_in_a_bits_data[39:32]; // @[RegField.scala 75:92]
    end else if (_T_146) begin // @[Debug.scala 1348:91]
      if (out_f_woready) begin // @[Debug.scala 265:24]
        abstractDataMem_4 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      abstractDataMem_5 <= 8'h0; // @[Debug.scala 1542:40]
    end else if (out_f_wivalid_920) begin // @[RegField.scala 75:88]
      abstractDataMem_5 <= auto_tl_in_a_bits_data[47:40]; // @[RegField.scala 75:92]
    end else if (_T_148) begin // @[Debug.scala 1348:91]
      if (out_f_woready_1) begin // @[Debug.scala 265:24]
        abstractDataMem_5 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      abstractDataMem_6 <= 8'h0; // @[Debug.scala 1542:40]
    end else if (out_f_wivalid_921) begin // @[RegField.scala 75:88]
      abstractDataMem_6 <= auto_tl_in_a_bits_data[55:48]; // @[RegField.scala 75:92]
    end else if (_T_150) begin // @[Debug.scala 1348:91]
      if (out_f_woready_2) begin // @[Debug.scala 265:24]
        abstractDataMem_6 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      abstractDataMem_7 <= 8'h0; // @[Debug.scala 1542:40]
    end else if (out_f_wivalid_922) begin // @[RegField.scala 75:88]
      abstractDataMem_7 <= auto_tl_in_a_bits_data[63:56]; // @[RegField.scala 75:92]
    end else if (_T_152) begin // @[Debug.scala 1348:91]
      if (out_f_woready_3) begin // @[Debug.scala 265:24]
        abstractDataMem_7 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_0 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1035) begin // @[RegField.scala 75:88]
      programBufferMem_0 <= auto_tl_in_a_bits_data[7:0]; // @[RegField.scala 75:92]
    end else if (_T_154) begin // @[Debug.scala 1370:93]
      if (out_f_woready_31) begin // @[Debug.scala 265:24]
        programBufferMem_0 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_1 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1036) begin // @[RegField.scala 75:88]
      programBufferMem_1 <= auto_tl_in_a_bits_data[15:8]; // @[RegField.scala 75:92]
    end else if (_T_156) begin // @[Debug.scala 1370:93]
      if (out_f_woready_32) begin // @[Debug.scala 265:24]
        programBufferMem_1 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_2 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1037) begin // @[RegField.scala 75:88]
      programBufferMem_2 <= auto_tl_in_a_bits_data[23:16]; // @[RegField.scala 75:92]
    end else if (_T_158) begin // @[Debug.scala 1370:93]
      if (out_f_woready_33) begin // @[Debug.scala 265:24]
        programBufferMem_2 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_3 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1038) begin // @[RegField.scala 75:88]
      programBufferMem_3 <= auto_tl_in_a_bits_data[31:24]; // @[RegField.scala 75:92]
    end else if (_T_160) begin // @[Debug.scala 1370:93]
      if (out_f_woready_34) begin // @[Debug.scala 265:24]
        programBufferMem_3 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_4 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1039) begin // @[RegField.scala 75:88]
      programBufferMem_4 <= auto_tl_in_a_bits_data[39:32]; // @[RegField.scala 75:92]
    end else if (_T_162) begin // @[Debug.scala 1370:93]
      if (out_f_woready_23) begin // @[Debug.scala 265:24]
        programBufferMem_4 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_5 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1040) begin // @[RegField.scala 75:88]
      programBufferMem_5 <= auto_tl_in_a_bits_data[47:40]; // @[RegField.scala 75:92]
    end else if (_T_164) begin // @[Debug.scala 1370:93]
      if (out_f_woready_24) begin // @[Debug.scala 265:24]
        programBufferMem_5 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_6 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1041) begin // @[RegField.scala 75:88]
      programBufferMem_6 <= auto_tl_in_a_bits_data[55:48]; // @[RegField.scala 75:92]
    end else if (_T_166) begin // @[Debug.scala 1370:93]
      if (out_f_woready_25) begin // @[Debug.scala 265:24]
        programBufferMem_6 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_7 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1042) begin // @[RegField.scala 75:88]
      programBufferMem_7 <= auto_tl_in_a_bits_data[63:56]; // @[RegField.scala 75:92]
    end else if (_T_168) begin // @[Debug.scala 1370:93]
      if (out_f_woready_26) begin // @[Debug.scala 265:24]
        programBufferMem_7 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_8 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_595) begin // @[RegField.scala 75:88]
      programBufferMem_8 <= auto_tl_in_a_bits_data[7:0]; // @[RegField.scala 75:92]
    end else if (_T_170) begin // @[Debug.scala 1370:93]
      if (out_f_woready_35) begin // @[Debug.scala 265:24]
        programBufferMem_8 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_9 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_596) begin // @[RegField.scala 75:88]
      programBufferMem_9 <= auto_tl_in_a_bits_data[15:8]; // @[RegField.scala 75:92]
    end else if (_T_172) begin // @[Debug.scala 1370:93]
      if (out_f_woready_36) begin // @[Debug.scala 265:24]
        programBufferMem_9 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_10 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_597) begin // @[RegField.scala 75:88]
      programBufferMem_10 <= auto_tl_in_a_bits_data[23:16]; // @[RegField.scala 75:92]
    end else if (_T_174) begin // @[Debug.scala 1370:93]
      if (out_f_woready_37) begin // @[Debug.scala 265:24]
        programBufferMem_10 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_11 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_598) begin // @[RegField.scala 75:88]
      programBufferMem_11 <= auto_tl_in_a_bits_data[31:24]; // @[RegField.scala 75:92]
    end else if (_T_176) begin // @[Debug.scala 1370:93]
      if (out_f_woready_38) begin // @[Debug.scala 265:24]
        programBufferMem_11 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_12 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_599) begin // @[RegField.scala 75:88]
      programBufferMem_12 <= auto_tl_in_a_bits_data[39:32]; // @[RegField.scala 75:92]
    end else if (_T_178) begin // @[Debug.scala 1370:93]
      if (out_f_woready_78) begin // @[Debug.scala 265:24]
        programBufferMem_12 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_13 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_600) begin // @[RegField.scala 75:88]
      programBufferMem_13 <= auto_tl_in_a_bits_data[47:40]; // @[RegField.scala 75:92]
    end else if (_T_180) begin // @[Debug.scala 1370:93]
      if (out_f_woready_79) begin // @[Debug.scala 265:24]
        programBufferMem_13 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_14 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_601) begin // @[RegField.scala 75:88]
      programBufferMem_14 <= auto_tl_in_a_bits_data[55:48]; // @[RegField.scala 75:92]
    end else if (_T_182) begin // @[Debug.scala 1370:93]
      if (out_f_woready_80) begin // @[Debug.scala 265:24]
        programBufferMem_14 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_15 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_602) begin // @[RegField.scala 75:88]
      programBufferMem_15 <= auto_tl_in_a_bits_data[63:56]; // @[RegField.scala 75:92]
    end else if (_T_184) begin // @[Debug.scala 1370:93]
      if (out_f_woready_81) begin // @[Debug.scala 265:24]
        programBufferMem_15 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_16 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_304) begin // @[RegField.scala 75:88]
      programBufferMem_16 <= auto_tl_in_a_bits_data[7:0]; // @[RegField.scala 75:92]
    end else if (_T_186) begin // @[Debug.scala 1370:93]
      if (out_f_woready_91) begin // @[Debug.scala 265:24]
        programBufferMem_16 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_17 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_305) begin // @[RegField.scala 75:88]
      programBufferMem_17 <= auto_tl_in_a_bits_data[15:8]; // @[RegField.scala 75:92]
    end else if (_T_188) begin // @[Debug.scala 1370:93]
      if (out_f_woready_92) begin // @[Debug.scala 265:24]
        programBufferMem_17 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_18 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_306) begin // @[RegField.scala 75:88]
      programBufferMem_18 <= auto_tl_in_a_bits_data[23:16]; // @[RegField.scala 75:92]
    end else if (_T_190) begin // @[Debug.scala 1370:93]
      if (out_f_woready_93) begin // @[Debug.scala 265:24]
        programBufferMem_18 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_19 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_307) begin // @[RegField.scala 75:88]
      programBufferMem_19 <= auto_tl_in_a_bits_data[31:24]; // @[RegField.scala 75:92]
    end else if (_T_192) begin // @[Debug.scala 1370:93]
      if (out_f_woready_94) begin // @[Debug.scala 265:24]
        programBufferMem_19 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_20 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_308) begin // @[RegField.scala 75:88]
      programBufferMem_20 <= auto_tl_in_a_bits_data[39:32]; // @[RegField.scala 75:92]
    end else if (_T_194) begin // @[Debug.scala 1370:93]
      if (out_f_woready_11) begin // @[Debug.scala 265:24]
        programBufferMem_20 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_21 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_309) begin // @[RegField.scala 75:88]
      programBufferMem_21 <= auto_tl_in_a_bits_data[47:40]; // @[RegField.scala 75:92]
    end else if (_T_196) begin // @[Debug.scala 1370:93]
      if (out_f_woready_12) begin // @[Debug.scala 265:24]
        programBufferMem_21 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_22 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_310) begin // @[RegField.scala 75:88]
      programBufferMem_22 <= auto_tl_in_a_bits_data[55:48]; // @[RegField.scala 75:92]
    end else if (_T_198) begin // @[Debug.scala 1370:93]
      if (out_f_woready_13) begin // @[Debug.scala 265:24]
        programBufferMem_22 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_23 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_311) begin // @[RegField.scala 75:88]
      programBufferMem_23 <= auto_tl_in_a_bits_data[63:56]; // @[RegField.scala 75:92]
    end else if (_T_200) begin // @[Debug.scala 1370:93]
      if (out_f_woready_14) begin // @[Debug.scala 265:24]
        programBufferMem_23 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_24 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1171) begin // @[RegField.scala 75:88]
      programBufferMem_24 <= auto_tl_in_a_bits_data[7:0]; // @[RegField.scala 75:92]
    end else if (_T_202) begin // @[Debug.scala 1370:93]
      if (out_f_woready_19) begin // @[Debug.scala 265:24]
        programBufferMem_24 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_25 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1172) begin // @[RegField.scala 75:88]
      programBufferMem_25 <= auto_tl_in_a_bits_data[15:8]; // @[RegField.scala 75:92]
    end else if (_T_204) begin // @[Debug.scala 1370:93]
      if (out_f_woready_20) begin // @[Debug.scala 265:24]
        programBufferMem_25 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_26 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1173) begin // @[RegField.scala 75:88]
      programBufferMem_26 <= auto_tl_in_a_bits_data[23:16]; // @[RegField.scala 75:92]
    end else if (_T_206) begin // @[Debug.scala 1370:93]
      if (out_f_woready_21) begin // @[Debug.scala 265:24]
        programBufferMem_26 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_27 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1174) begin // @[RegField.scala 75:88]
      programBufferMem_27 <= auto_tl_in_a_bits_data[31:24]; // @[RegField.scala 75:92]
    end else if (_T_208) begin // @[Debug.scala 1370:93]
      if (out_f_woready_22) begin // @[Debug.scala 265:24]
        programBufferMem_27 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_28 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1175) begin // @[RegField.scala 75:88]
      programBufferMem_28 <= auto_tl_in_a_bits_data[39:32]; // @[RegField.scala 75:92]
    end else if (_T_210) begin // @[Debug.scala 1370:93]
      if (out_f_woready_74) begin // @[Debug.scala 265:24]
        programBufferMem_28 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_29 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1176) begin // @[RegField.scala 75:88]
      programBufferMem_29 <= auto_tl_in_a_bits_data[47:40]; // @[RegField.scala 75:92]
    end else if (_T_212) begin // @[Debug.scala 1370:93]
      if (out_f_woready_75) begin // @[Debug.scala 265:24]
        programBufferMem_29 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_30 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1177) begin // @[RegField.scala 75:88]
      programBufferMem_30 <= auto_tl_in_a_bits_data[55:48]; // @[RegField.scala 75:92]
    end else if (_T_214) begin // @[Debug.scala 1370:93]
      if (out_f_woready_76) begin // @[Debug.scala 265:24]
        programBufferMem_30 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_31 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1178) begin // @[RegField.scala 75:88]
      programBufferMem_31 <= auto_tl_in_a_bits_data[63:56]; // @[RegField.scala 75:92]
    end else if (_T_216) begin // @[Debug.scala 1370:93]
      if (out_f_woready_77) begin // @[Debug.scala 265:24]
        programBufferMem_31 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_32 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_835) begin // @[RegField.scala 75:88]
      programBufferMem_32 <= auto_tl_in_a_bits_data[7:0]; // @[RegField.scala 75:92]
    end else if (_T_218) begin // @[Debug.scala 1370:93]
      if (out_f_woready_86) begin // @[Debug.scala 265:24]
        programBufferMem_32 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_33 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_836) begin // @[RegField.scala 75:88]
      programBufferMem_33 <= auto_tl_in_a_bits_data[15:8]; // @[RegField.scala 75:92]
    end else if (_T_220) begin // @[Debug.scala 1370:93]
      if (out_f_woready_87) begin // @[Debug.scala 265:24]
        programBufferMem_33 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_34 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_837) begin // @[RegField.scala 75:88]
      programBufferMem_34 <= auto_tl_in_a_bits_data[23:16]; // @[RegField.scala 75:92]
    end else if (_T_222) begin // @[Debug.scala 1370:93]
      if (out_f_woready_88) begin // @[Debug.scala 265:24]
        programBufferMem_34 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_35 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_838) begin // @[RegField.scala 75:88]
      programBufferMem_35 <= auto_tl_in_a_bits_data[31:24]; // @[RegField.scala 75:92]
    end else if (_T_224) begin // @[Debug.scala 1370:93]
      if (out_f_woready_89) begin // @[Debug.scala 265:24]
        programBufferMem_35 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_36 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_839) begin // @[RegField.scala 75:88]
      programBufferMem_36 <= auto_tl_in_a_bits_data[39:32]; // @[RegField.scala 75:92]
    end else if (_T_226) begin // @[Debug.scala 1370:93]
      if (out_f_woready_27) begin // @[Debug.scala 265:24]
        programBufferMem_36 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_37 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_840) begin // @[RegField.scala 75:88]
      programBufferMem_37 <= auto_tl_in_a_bits_data[47:40]; // @[RegField.scala 75:92]
    end else if (_T_228) begin // @[Debug.scala 1370:93]
      if (out_f_woready_28) begin // @[Debug.scala 265:24]
        programBufferMem_37 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_38 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_841) begin // @[RegField.scala 75:88]
      programBufferMem_38 <= auto_tl_in_a_bits_data[55:48]; // @[RegField.scala 75:92]
    end else if (_T_230) begin // @[Debug.scala 1370:93]
      if (out_f_woready_29) begin // @[Debug.scala 265:24]
        programBufferMem_38 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_39 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_842) begin // @[RegField.scala 75:88]
      programBufferMem_39 <= auto_tl_in_a_bits_data[63:56]; // @[RegField.scala 75:92]
    end else if (_T_232) begin // @[Debug.scala 1370:93]
      if (out_f_woready_30) begin // @[Debug.scala 265:24]
        programBufferMem_39 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_40 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_514) begin // @[RegField.scala 75:88]
      programBufferMem_40 <= auto_tl_in_a_bits_data[7:0]; // @[RegField.scala 75:92]
    end else if (_T_234) begin // @[Debug.scala 1370:93]
      if (out_f_woready_4) begin // @[Debug.scala 265:24]
        programBufferMem_40 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_41 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_515) begin // @[RegField.scala 75:88]
      programBufferMem_41 <= auto_tl_in_a_bits_data[15:8]; // @[RegField.scala 75:92]
    end else if (_T_236) begin // @[Debug.scala 1370:93]
      if (out_f_woready_5) begin // @[Debug.scala 265:24]
        programBufferMem_41 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_42 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_516) begin // @[RegField.scala 75:88]
      programBufferMem_42 <= auto_tl_in_a_bits_data[23:16]; // @[RegField.scala 75:92]
    end else if (_T_238) begin // @[Debug.scala 1370:93]
      if (out_f_woready_6) begin // @[Debug.scala 265:24]
        programBufferMem_42 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_43 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_517) begin // @[RegField.scala 75:88]
      programBufferMem_43 <= auto_tl_in_a_bits_data[31:24]; // @[RegField.scala 75:92]
    end else if (_T_240) begin // @[Debug.scala 1370:93]
      if (out_f_woready_7) begin // @[Debug.scala 265:24]
        programBufferMem_43 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_44 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_518) begin // @[RegField.scala 75:88]
      programBufferMem_44 <= auto_tl_in_a_bits_data[39:32]; // @[RegField.scala 75:92]
    end else if (_T_242) begin // @[Debug.scala 1370:93]
      if (out_f_woready_82) begin // @[Debug.scala 265:24]
        programBufferMem_44 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_45 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_519) begin // @[RegField.scala 75:88]
      programBufferMem_45 <= auto_tl_in_a_bits_data[47:40]; // @[RegField.scala 75:92]
    end else if (_T_244) begin // @[Debug.scala 1370:93]
      if (out_f_woready_83) begin // @[Debug.scala 265:24]
        programBufferMem_45 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_46 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_520) begin // @[RegField.scala 75:88]
      programBufferMem_46 <= auto_tl_in_a_bits_data[55:48]; // @[RegField.scala 75:92]
    end else if (_T_246) begin // @[Debug.scala 1370:93]
      if (out_f_woready_84) begin // @[Debug.scala 265:24]
        programBufferMem_46 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_47 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_521) begin // @[RegField.scala 75:88]
      programBufferMem_47 <= auto_tl_in_a_bits_data[63:56]; // @[RegField.scala 75:92]
    end else if (_T_248) begin // @[Debug.scala 1370:93]
      if (out_f_woready_85) begin // @[Debug.scala 265:24]
        programBufferMem_47 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_48 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_208) begin // @[RegField.scala 75:88]
      programBufferMem_48 <= auto_tl_in_a_bits_data[7:0]; // @[RegField.scala 75:92]
    end else if (_T_250) begin // @[Debug.scala 1370:93]
      if (out_f_woready_70) begin // @[Debug.scala 265:24]
        programBufferMem_48 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_49 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_209) begin // @[RegField.scala 75:88]
      programBufferMem_49 <= auto_tl_in_a_bits_data[15:8]; // @[RegField.scala 75:92]
    end else if (_T_252) begin // @[Debug.scala 1370:93]
      if (out_f_woready_71) begin // @[Debug.scala 265:24]
        programBufferMem_49 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_50 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_210) begin // @[RegField.scala 75:88]
      programBufferMem_50 <= auto_tl_in_a_bits_data[23:16]; // @[RegField.scala 75:92]
    end else if (_T_254) begin // @[Debug.scala 1370:93]
      if (out_f_woready_72) begin // @[Debug.scala 265:24]
        programBufferMem_50 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_51 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_211) begin // @[RegField.scala 75:88]
      programBufferMem_51 <= auto_tl_in_a_bits_data[31:24]; // @[RegField.scala 75:92]
    end else if (_T_256) begin // @[Debug.scala 1370:93]
      if (out_f_woready_73) begin // @[Debug.scala 265:24]
        programBufferMem_51 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_52 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_212) begin // @[RegField.scala 75:88]
      programBufferMem_52 <= auto_tl_in_a_bits_data[39:32]; // @[RegField.scala 75:92]
    end else if (_T_258) begin // @[Debug.scala 1370:93]
      if (out_f_woready_39) begin // @[Debug.scala 265:24]
        programBufferMem_52 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_53 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_213) begin // @[RegField.scala 75:88]
      programBufferMem_53 <= auto_tl_in_a_bits_data[47:40]; // @[RegField.scala 75:92]
    end else if (_T_260) begin // @[Debug.scala 1370:93]
      if (out_f_woready_40) begin // @[Debug.scala 265:24]
        programBufferMem_53 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_54 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_214) begin // @[RegField.scala 75:88]
      programBufferMem_54 <= auto_tl_in_a_bits_data[55:48]; // @[RegField.scala 75:92]
    end else if (_T_262) begin // @[Debug.scala 1370:93]
      if (out_f_woready_41) begin // @[Debug.scala 265:24]
        programBufferMem_54 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_55 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_215) begin // @[RegField.scala 75:88]
      programBufferMem_55 <= auto_tl_in_a_bits_data[63:56]; // @[RegField.scala 75:92]
    end else if (_T_264) begin // @[Debug.scala 1370:93]
      if (out_f_woready_42) begin // @[Debug.scala 265:24]
        programBufferMem_55 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_56 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1243) begin // @[RegField.scala 75:88]
      programBufferMem_56 <= auto_tl_in_a_bits_data[7:0]; // @[RegField.scala 75:92]
    end else if (_T_266) begin // @[Debug.scala 1370:93]
      if (out_f_woready_15) begin // @[Debug.scala 265:24]
        programBufferMem_56 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_57 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1244) begin // @[RegField.scala 75:88]
      programBufferMem_57 <= auto_tl_in_a_bits_data[15:8]; // @[RegField.scala 75:92]
    end else if (_T_268) begin // @[Debug.scala 1370:93]
      if (out_f_woready_16) begin // @[Debug.scala 265:24]
        programBufferMem_57 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_58 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1245) begin // @[RegField.scala 75:88]
      programBufferMem_58 <= auto_tl_in_a_bits_data[23:16]; // @[RegField.scala 75:92]
    end else if (_T_270) begin // @[Debug.scala 1370:93]
      if (out_f_woready_17) begin // @[Debug.scala 265:24]
        programBufferMem_58 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_59 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1246) begin // @[RegField.scala 75:88]
      programBufferMem_59 <= auto_tl_in_a_bits_data[31:24]; // @[RegField.scala 75:92]
    end else if (_T_272) begin // @[Debug.scala 1370:93]
      if (out_f_woready_18) begin // @[Debug.scala 265:24]
        programBufferMem_59 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_60 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1247) begin // @[RegField.scala 75:88]
      programBufferMem_60 <= auto_tl_in_a_bits_data[39:32]; // @[RegField.scala 75:92]
    end else if (_T_274) begin // @[Debug.scala 1370:93]
      if (out_f_woready_100) begin // @[Debug.scala 265:24]
        programBufferMem_60 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_61 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1248) begin // @[RegField.scala 75:88]
      programBufferMem_61 <= auto_tl_in_a_bits_data[47:40]; // @[RegField.scala 75:92]
    end else if (_T_276) begin // @[Debug.scala 1370:93]
      if (out_f_woready_101) begin // @[Debug.scala 265:24]
        programBufferMem_61 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_62 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1249) begin // @[RegField.scala 75:88]
      programBufferMem_62 <= auto_tl_in_a_bits_data[55:48]; // @[RegField.scala 75:92]
    end else if (_T_278) begin // @[Debug.scala 1370:93]
      if (out_f_woready_102) begin // @[Debug.scala 265:24]
        programBufferMem_62 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1541:24]
      programBufferMem_63 <= 8'h0; // @[Debug.scala 1543:40]
    end else if (out_f_wivalid_1250) begin // @[RegField.scala 75:88]
      programBufferMem_63 <= auto_tl_in_a_bits_data[63:56]; // @[RegField.scala 75:92]
    end else if (_T_280) begin // @[Debug.scala 1370:93]
      if (out_f_woready_103) begin // @[Debug.scala 265:24]
        programBufferMem_63 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 265:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1385:24]
      goReg <= 1'h0; // @[Debug.scala 1386:13]
    end else begin
      goReg <= _GEN_406;
    end
    if (goAbstract) begin // @[Debug.scala 1483:23]
      if (accessRegisterCommandReg_transfer) begin // @[Debug.scala 1484:37]
        if (accessRegisterCommandReg_write) begin // @[Debug.scala 1485:12]
          abstractGeneratedMem_0 <= _abstractGeneratedMem_0_T;
        end else begin
          abstractGeneratedMem_0 <= _abstractGeneratedMem_0_T_1;
        end
      end else begin
        abstractGeneratedMem_0 <= 32'h13;
      end
    end
    if (goAbstract) begin // @[Debug.scala 1483:23]
      if (accessRegisterCommandReg_postexec) begin // @[Debug.scala 1492:37]
        abstractGeneratedMem_1 <= 32'h13;
      end else begin
        abstractGeneratedMem_1 <= 32'h100073;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      hrDebugIntReg_0 <= 1'h0;
    end else if (_T_1) begin
      hrDebugIntReg_0 <= 1'h0;
    end else begin
      hrDebugIntReg_0 <= _T_13;
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
  haltedBitRegs = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  resumeReqRegs = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  haveResetBitRegs = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  hrmaskReg_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  hrDebugIntReg_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  ABSTRACTCSReg_cmderr = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  ctrlStateReg = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  COMMANDRdData_cmdtype = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  COMMANDRdData_control = _RAND_8[23:0];
  _RAND_9 = {1{`RANDOM}};
  ABSTRACTAUTOReg_autoexecdata = _RAND_9[11:0];
  _RAND_10 = {1{`RANDOM}};
  ABSTRACTAUTOReg_autoexecprogbuf = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  abstractDataMem_0 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  abstractDataMem_1 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  abstractDataMem_2 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  abstractDataMem_3 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  abstractDataMem_4 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  abstractDataMem_5 = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  abstractDataMem_6 = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  abstractDataMem_7 = _RAND_18[7:0];
  _RAND_19 = {1{`RANDOM}};
  programBufferMem_0 = _RAND_19[7:0];
  _RAND_20 = {1{`RANDOM}};
  programBufferMem_1 = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  programBufferMem_2 = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  programBufferMem_3 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  programBufferMem_4 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  programBufferMem_5 = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  programBufferMem_6 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  programBufferMem_7 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  programBufferMem_8 = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  programBufferMem_9 = _RAND_28[7:0];
  _RAND_29 = {1{`RANDOM}};
  programBufferMem_10 = _RAND_29[7:0];
  _RAND_30 = {1{`RANDOM}};
  programBufferMem_11 = _RAND_30[7:0];
  _RAND_31 = {1{`RANDOM}};
  programBufferMem_12 = _RAND_31[7:0];
  _RAND_32 = {1{`RANDOM}};
  programBufferMem_13 = _RAND_32[7:0];
  _RAND_33 = {1{`RANDOM}};
  programBufferMem_14 = _RAND_33[7:0];
  _RAND_34 = {1{`RANDOM}};
  programBufferMem_15 = _RAND_34[7:0];
  _RAND_35 = {1{`RANDOM}};
  programBufferMem_16 = _RAND_35[7:0];
  _RAND_36 = {1{`RANDOM}};
  programBufferMem_17 = _RAND_36[7:0];
  _RAND_37 = {1{`RANDOM}};
  programBufferMem_18 = _RAND_37[7:0];
  _RAND_38 = {1{`RANDOM}};
  programBufferMem_19 = _RAND_38[7:0];
  _RAND_39 = {1{`RANDOM}};
  programBufferMem_20 = _RAND_39[7:0];
  _RAND_40 = {1{`RANDOM}};
  programBufferMem_21 = _RAND_40[7:0];
  _RAND_41 = {1{`RANDOM}};
  programBufferMem_22 = _RAND_41[7:0];
  _RAND_42 = {1{`RANDOM}};
  programBufferMem_23 = _RAND_42[7:0];
  _RAND_43 = {1{`RANDOM}};
  programBufferMem_24 = _RAND_43[7:0];
  _RAND_44 = {1{`RANDOM}};
  programBufferMem_25 = _RAND_44[7:0];
  _RAND_45 = {1{`RANDOM}};
  programBufferMem_26 = _RAND_45[7:0];
  _RAND_46 = {1{`RANDOM}};
  programBufferMem_27 = _RAND_46[7:0];
  _RAND_47 = {1{`RANDOM}};
  programBufferMem_28 = _RAND_47[7:0];
  _RAND_48 = {1{`RANDOM}};
  programBufferMem_29 = _RAND_48[7:0];
  _RAND_49 = {1{`RANDOM}};
  programBufferMem_30 = _RAND_49[7:0];
  _RAND_50 = {1{`RANDOM}};
  programBufferMem_31 = _RAND_50[7:0];
  _RAND_51 = {1{`RANDOM}};
  programBufferMem_32 = _RAND_51[7:0];
  _RAND_52 = {1{`RANDOM}};
  programBufferMem_33 = _RAND_52[7:0];
  _RAND_53 = {1{`RANDOM}};
  programBufferMem_34 = _RAND_53[7:0];
  _RAND_54 = {1{`RANDOM}};
  programBufferMem_35 = _RAND_54[7:0];
  _RAND_55 = {1{`RANDOM}};
  programBufferMem_36 = _RAND_55[7:0];
  _RAND_56 = {1{`RANDOM}};
  programBufferMem_37 = _RAND_56[7:0];
  _RAND_57 = {1{`RANDOM}};
  programBufferMem_38 = _RAND_57[7:0];
  _RAND_58 = {1{`RANDOM}};
  programBufferMem_39 = _RAND_58[7:0];
  _RAND_59 = {1{`RANDOM}};
  programBufferMem_40 = _RAND_59[7:0];
  _RAND_60 = {1{`RANDOM}};
  programBufferMem_41 = _RAND_60[7:0];
  _RAND_61 = {1{`RANDOM}};
  programBufferMem_42 = _RAND_61[7:0];
  _RAND_62 = {1{`RANDOM}};
  programBufferMem_43 = _RAND_62[7:0];
  _RAND_63 = {1{`RANDOM}};
  programBufferMem_44 = _RAND_63[7:0];
  _RAND_64 = {1{`RANDOM}};
  programBufferMem_45 = _RAND_64[7:0];
  _RAND_65 = {1{`RANDOM}};
  programBufferMem_46 = _RAND_65[7:0];
  _RAND_66 = {1{`RANDOM}};
  programBufferMem_47 = _RAND_66[7:0];
  _RAND_67 = {1{`RANDOM}};
  programBufferMem_48 = _RAND_67[7:0];
  _RAND_68 = {1{`RANDOM}};
  programBufferMem_49 = _RAND_68[7:0];
  _RAND_69 = {1{`RANDOM}};
  programBufferMem_50 = _RAND_69[7:0];
  _RAND_70 = {1{`RANDOM}};
  programBufferMem_51 = _RAND_70[7:0];
  _RAND_71 = {1{`RANDOM}};
  programBufferMem_52 = _RAND_71[7:0];
  _RAND_72 = {1{`RANDOM}};
  programBufferMem_53 = _RAND_72[7:0];
  _RAND_73 = {1{`RANDOM}};
  programBufferMem_54 = _RAND_73[7:0];
  _RAND_74 = {1{`RANDOM}};
  programBufferMem_55 = _RAND_74[7:0];
  _RAND_75 = {1{`RANDOM}};
  programBufferMem_56 = _RAND_75[7:0];
  _RAND_76 = {1{`RANDOM}};
  programBufferMem_57 = _RAND_76[7:0];
  _RAND_77 = {1{`RANDOM}};
  programBufferMem_58 = _RAND_77[7:0];
  _RAND_78 = {1{`RANDOM}};
  programBufferMem_59 = _RAND_78[7:0];
  _RAND_79 = {1{`RANDOM}};
  programBufferMem_60 = _RAND_79[7:0];
  _RAND_80 = {1{`RANDOM}};
  programBufferMem_61 = _RAND_80[7:0];
  _RAND_81 = {1{`RANDOM}};
  programBufferMem_62 = _RAND_81[7:0];
  _RAND_82 = {1{`RANDOM}};
  programBufferMem_63 = _RAND_82[7:0];
  _RAND_83 = {1{`RANDOM}};
  goReg = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  abstractGeneratedMem_0 = _RAND_84[31:0];
  _RAND_85 = {1{`RANDOM}};
  abstractGeneratedMem_1 = _RAND_85[31:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    hrDebugIntReg_0 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
