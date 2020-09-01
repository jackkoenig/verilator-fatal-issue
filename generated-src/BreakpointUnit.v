module BreakpointUnit(
  input         io_status_debug,
  input  [1:0]  io_status_prv,
  input         io_bp_0_control_action,
  input  [1:0]  io_bp_0_control_tmatch,
  input         io_bp_0_control_m,
  input         io_bp_0_control_s,
  input         io_bp_0_control_u,
  input         io_bp_0_control_x,
  input         io_bp_0_control_w,
  input         io_bp_0_control_r,
  input  [38:0] io_bp_0_address,
  input  [38:0] io_pc,
  input  [38:0] io_ea,
  output        io_xcpt_if,
  output        io_xcpt_ld,
  output        io_xcpt_st,
  output        io_debug_if,
  output        io_debug_ld,
  output        io_debug_st
);
  wire [3:0] _en_T_1 = {io_bp_0_control_m,1'h0,io_bp_0_control_s,io_bp_0_control_u}; // @[Cat.scala 29:58]
  wire [3:0] _en_T_2 = _en_T_1 >> io_status_prv; // @[Breakpoint.scala 31:68]
  wire  en = (~io_status_debug) & (_en_T_2[0]); // @[Breakpoint.scala 31:50]
  wire  _r_T_4 = (io_ea >= io_bp_0_address) ^ (io_bp_0_control_tmatch[0]); // @[Breakpoint.scala 66:20]
  wire [38:0] _r_T_5 = ~io_ea; // @[Breakpoint.scala 63:6]
  wire  r_left_right = (io_bp_0_control_tmatch[0]) & (io_bp_0_address[0]); // @[Breakpoint.scala 60:73]
  wire  r_right_left = r_left_right & (io_bp_0_address[1]); // @[Breakpoint.scala 60:73]
  wire  r_right_right = r_right_left & (io_bp_0_address[2]); // @[Breakpoint.scala 60:73]
  wire [3:0] _r_T_9 = {r_right_right,r_right_left,r_left_right,io_bp_0_control_tmatch[0]}; // @[Cat.scala 29:58]
  wire [38:0] _GEN_11 = {{35'd0}, _r_T_9}; // @[Breakpoint.scala 63:9]
  wire [38:0] _r_T_10 = _r_T_5 | _GEN_11; // @[Breakpoint.scala 63:9]
  wire [38:0] _r_T_11 = ~io_bp_0_address; // @[Breakpoint.scala 63:24]
  wire [38:0] _r_T_16 = _r_T_11 | _GEN_11; // @[Breakpoint.scala 63:33]
  wire  _r_T_17 = _r_T_10 == _r_T_16; // @[Breakpoint.scala 63:19]
  wire  _r_T_18 = io_bp_0_control_tmatch[1] ? _r_T_4 : _r_T_17; // @[Breakpoint.scala 69:8]
  wire  r = (en & io_bp_0_control_r) & _r_T_18; // @[Breakpoint.scala 107:32]
  wire  w = (en & io_bp_0_control_w) & _r_T_18; // @[Breakpoint.scala 108:32]
  wire  _x_T_4 = (io_pc >= io_bp_0_address) ^ (io_bp_0_control_tmatch[0]); // @[Breakpoint.scala 66:20]
  wire [38:0] _x_T_5 = ~io_pc; // @[Breakpoint.scala 63:6]
  wire [38:0] _x_T_10 = _x_T_5 | _GEN_11; // @[Breakpoint.scala 63:9]
  wire  _x_T_17 = _x_T_10 == _r_T_16; // @[Breakpoint.scala 63:19]
  wire  _x_T_18 = io_bp_0_control_tmatch[1] ? _x_T_4 : _x_T_17; // @[Breakpoint.scala 69:8]
  wire  x = (en & io_bp_0_control_x) & _x_T_18; // @[Breakpoint.scala 109:32]
  wire  _io_xcpt_ld_T = ~io_bp_0_control_action; // @[Breakpoint.scala 119:51]
  assign io_xcpt_if = x & _io_xcpt_ld_T; // @[Breakpoint.scala 121:27 Breakpoint.scala 121:40 Breakpoint.scala 97:14]
  assign io_xcpt_ld = r & _io_xcpt_ld_T; // @[Breakpoint.scala 119:27 Breakpoint.scala 119:40 Breakpoint.scala 98:14]
  assign io_xcpt_st = w & _io_xcpt_ld_T; // @[Breakpoint.scala 120:27 Breakpoint.scala 120:40 Breakpoint.scala 99:14]
  assign io_debug_if = x & io_bp_0_control_action; // @[Breakpoint.scala 121:27 Breakpoint.scala 121:73 Breakpoint.scala 100:15]
  assign io_debug_ld = r & io_bp_0_control_action; // @[Breakpoint.scala 119:27 Breakpoint.scala 119:73 Breakpoint.scala 101:15]
  assign io_debug_st = w & io_bp_0_control_action; // @[Breakpoint.scala 120:27 Breakpoint.scala 120:73 Breakpoint.scala 102:15]
endmodule
