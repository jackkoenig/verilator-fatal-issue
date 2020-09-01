module TLDebugModuleOuter(
  input         clock,
  input         reset,
  output        auto_dmi_in_a_ready,
  input         auto_dmi_in_a_valid,
  input  [2:0]  auto_dmi_in_a_bits_opcode,
  input  [6:0]  auto_dmi_in_a_bits_address,
  input  [31:0] auto_dmi_in_a_bits_data,
  input         auto_dmi_in_d_ready,
  output        auto_dmi_in_d_valid,
  output [2:0]  auto_dmi_in_d_bits_opcode,
  output [31:0] auto_dmi_in_d_bits_data,
  output        auto_int_out_0,
  output        io_ctrl_ndreset,
  output        io_ctrl_dmactive,
  input         io_ctrl_dmactiveAck,
  input         io_innerCtrl_ready,
  output        io_innerCtrl_valid,
  output        io_innerCtrl_bits_resumereq,
  output [9:0]  io_innerCtrl_bits_hartsel,
  output        io_innerCtrl_bits_ackhavereset,
  output        io_innerCtrl_bits_hrmask_0,
  input         io_hgDebugInt_0
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
`endif // RANDOMIZE_REG_INIT
  reg  DMCONTROLReg_haltreq; // @[Debug.scala 337:31]
  reg  DMCONTROLReg_ndmreset; // @[Debug.scala 337:31]
  reg  DMCONTROLReg_dmactive; // @[Debug.scala 337:31]
  wire  _T_1 = ~DMCONTROLReg_dmactive; // @[Debug.scala 355:11]
  wire  in_bits_read = auto_dmi_in_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 69:36]
  wire [2:0] in_bits_index = auto_dmi_in_a_bits_address[4:2]; // @[RegisterRouter.scala 68:18 RegisterRouter.scala 70:19]
  wire  out_iindex = in_bits_index[1]; // @[RegisterRouter.scala 80:24]
  wire [2:0] out_findex = in_bits_index & 3'h5; // @[RegisterRouter.scala 80:24]
  wire  _out_T = out_findex == 3'h0; // @[RegisterRouter.scala 80:24]
  wire [1:0] _out_backSel_T = 2'h1 << out_iindex; // @[OneHot.scala 58:35]
  wire  out_backSel_0 = _out_backSel_T[0]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all = (((auto_dmi_in_a_valid & auto_dmi_in_d_ready) & (~in_bits_read)) & out_backSel_0) & (
    out_findex == 3'h0); // @[RegisterRouter.scala 80:24]
  wire  DMCONTROLWrData_ndmreset = auto_dmi_in_a_bits_data[1]; // @[RegisterRouter.scala 80:24]
  wire  DMCONTROLWrData_haltreq = auto_dmi_in_a_bits_data[31]; // @[RegisterRouter.scala 80:24]
  wire  DMCONTROLWrData_dmactive = auto_dmi_in_a_bits_data[0]; // @[RegisterRouter.scala 80:24]
  reg  hrmaskReg_0; // @[Debug.scala 469:28]
  wire  DMCONTROLWrData_clrresethaltreq = auto_dmi_in_a_bits_data[2]; // @[RegisterRouter.scala 80:24]
  wire  _T_11 = io_innerCtrl_bits_hartsel == 10'h0; // @[Debug.scala 398:35]
  wire  _T_13 = (out_wofireMux_all & DMCONTROLWrData_clrresethaltreq) & _T_11; // @[Debug.scala 475:74]
  wire  DMCONTROLWrData_setresethaltreq = auto_dmi_in_a_bits_data[3]; // @[RegisterRouter.scala 80:24]
  wire  _T_17 = (out_wofireMux_all & DMCONTROLWrData_setresethaltreq) & _T_11; // @[Debug.scala 477:74]
  wire  _GEN_23 = _T_17 | hrmaskReg_0; // @[Debug.scala 477:102 Debug.scala 478:30 Debug.scala 471:15]
  wire  _GEN_24 = _T_13 ? 1'h0 : _GEN_23; // @[Debug.scala 475:102 Debug.scala 476:30]
  wire  out_prepend = DMCONTROLReg_dmactive & io_ctrl_dmactiveAck; // @[Debug.scala 485:43]
  wire [4:0] out_prepend_8 = {1'h0,1'h0,1'h0,DMCONTROLReg_ndmreset,out_prepend}; // @[Cat.scala 29:58]
  wire [15:0] out_prepend_left_8 = {{11'd0}, out_prepend_8}; // @[RegisterRouter.scala 80:24]
  wire [17:0] out_prepend_10 = {1'h0,1'h0,out_prepend_left_8}; // @[Cat.scala 29:58]
  wire [25:0] out_prepend_left_10 = {{8'd0}, out_prepend_10}; // @[RegisterRouter.scala 80:24]
  wire  DMCONTROLWrData_ackhavereset = auto_dmi_in_a_bits_data[28]; // @[RegisterRouter.scala 80:24]
  wire  DMCONTROLWrData_resumereq = auto_dmi_in_a_bits_data[30]; // @[RegisterRouter.scala 80:24]
  wire [31:0] out_prepend_16 = {DMCONTROLReg_haltreq,1'h0,1'h0,1'h0,1'h0,1'h0,out_prepend_left_10}; // @[Cat.scala 29:58]
  wire  _GEN_35 = out_iindex ? _out_T : _out_T; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [31:0] _GEN_37 = out_iindex ? 32'h112380 : out_prepend_16; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  reg  debugIntRegs_0; // @[Debug.scala 550:31]
  reg  innerCtrlValidReg; // @[Debug.scala 581:36]
  reg  innerCtrlResumeReqReg; // @[Debug.scala 582:40]
  reg  innerCtrlAckHaveResetReg; // @[Debug.scala 583:43]
  wire  _innerCtrlValidReg_T = ~io_innerCtrl_ready; // @[Debug.scala 588:54]
  assign auto_dmi_in_a_ready = auto_dmi_in_d_ready; // @[RegisterRouter.scala 80:24]
  assign auto_dmi_in_d_valid = auto_dmi_in_a_valid; // @[RegisterRouter.scala 80:24]
  assign auto_dmi_in_d_bits_opcode = {{2'd0}, in_bits_read}; // @[Nodes.scala 1216:84 RegisterRouter.scala 95:19]
  assign auto_dmi_in_d_bits_data = _GEN_35 ? _GEN_37 : 32'h0; // @[RegisterRouter.scala 80:24]
  assign auto_int_out_0 = debugIntRegs_0 | io_hgDebugInt_0; // @[Debug.scala 556:60]
  assign io_ctrl_ndreset = DMCONTROLReg_ndmreset; // @[Debug.scala 602:21]
  assign io_ctrl_dmactive = DMCONTROLReg_dmactive; // @[Debug.scala 603:22]
  assign io_innerCtrl_valid = out_wofireMux_all | innerCtrlValidReg; // @[Debug.scala 592:54]
  assign io_innerCtrl_bits_resumereq = (out_wofireMux_all & DMCONTROLWrData_resumereq) | innerCtrlResumeReqReg; // @[Debug.scala 594:83]
  assign io_innerCtrl_bits_hartsel = 10'h0; // @[Debug.scala 593:42]
  assign io_innerCtrl_bits_ackhavereset = (out_wofireMux_all & DMCONTROLWrData_ackhavereset) | innerCtrlAckHaveResetReg; // @[Debug.scala 595:89]
  assign io_innerCtrl_bits_hrmask_0 = _T_1 ? 1'h0 : _GEN_24; // @[Debug.scala 473:44 Debug.scala 474:30]
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      DMCONTROLReg_haltreq <= 1'h0;
    end else if (_T_1) begin
      DMCONTROLReg_haltreq <= 1'h0;
    end else if (out_wofireMux_all) begin
      DMCONTROLReg_haltreq <= DMCONTROLWrData_haltreq;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      DMCONTROLReg_ndmreset <= 1'h0;
    end else if (_T_1) begin
      DMCONTROLReg_ndmreset <= 1'h0;
    end else if (out_wofireMux_all) begin
      DMCONTROLReg_ndmreset <= DMCONTROLWrData_ndmreset;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      DMCONTROLReg_dmactive <= 1'h0;
    end else if (out_wofireMux_all) begin
      DMCONTROLReg_dmactive <= DMCONTROLWrData_dmactive;
    end else if (_T_1) begin
      DMCONTROLReg_dmactive <= 1'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      hrmaskReg_0 <= 1'h0;
    end else if (_T_1) begin
      hrmaskReg_0 <= 1'h0;
    end else if (_T_13) begin
      hrmaskReg_0 <= 1'h0;
    end else begin
      hrmaskReg_0 <= _GEN_23;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      debugIntRegs_0 <= 1'h0;
    end else if (_T_1) begin
      debugIntRegs_0 <= 1'h0;
    end else if (out_wofireMux_all) begin
      debugIntRegs_0 <= DMCONTROLWrData_haltreq;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      innerCtrlValidReg <= 1'h0;
    end else begin
      innerCtrlValidReg <= io_innerCtrl_valid & (~io_innerCtrl_ready);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      innerCtrlResumeReqReg <= 1'h0;
    end else begin
      innerCtrlResumeReqReg <= io_innerCtrl_bits_resumereq & _innerCtrlValidReg_T;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      innerCtrlAckHaveResetReg <= 1'h0;
    end else begin
      innerCtrlAckHaveResetReg <= io_innerCtrl_bits_ackhavereset & _innerCtrlValidReg_T;
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
  DMCONTROLReg_haltreq = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  DMCONTROLReg_ndmreset = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  DMCONTROLReg_dmactive = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  hrmaskReg_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  debugIntRegs_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  innerCtrlValidReg = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  innerCtrlResumeReqReg = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  innerCtrlAckHaveResetReg = _RAND_7[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    DMCONTROLReg_haltreq = 1'h0;
  end
  if (reset) begin
    DMCONTROLReg_ndmreset = 1'h0;
  end
  if (reset) begin
    DMCONTROLReg_dmactive = 1'h0;
  end
  if (reset) begin
    hrmaskReg_0 = 1'h0;
  end
  if (reset) begin
    debugIntRegs_0 = 1'h0;
  end
  if (reset) begin
    innerCtrlValidReg = 1'h0;
  end
  if (reset) begin
    innerCtrlResumeReqReg = 1'h0;
  end
  if (reset) begin
    innerCtrlAckHaveResetReg = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
