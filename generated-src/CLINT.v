module CLINT(
  input         clock,
  input         reset,
  output        auto_int_out_0,
  output        auto_int_out_1,
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [1:0]  auto_in_a_bits_size,
  input  [8:0]  auto_in_a_bits_source,
  input  [25:0] auto_in_a_bits_address,
  input  [7:0]  auto_in_a_bits_mask,
  input  [63:0] auto_in_a_bits_data,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output [2:0]  auto_in_d_bits_opcode,
  output [1:0]  auto_in_d_bits_size,
  output [8:0]  auto_in_d_bits_source,
  output [63:0] auto_in_d_bits_data,
  input         io_rtcTick
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] time_; // @[CLINT.scala 69:23]
  wire [63:0] _time_T_1 = time_ + 64'h1; // @[CLINT.scala 70:38]
  reg [63:0] timecmp_0; // @[CLINT.scala 73:41]
  reg  ipi_0; // @[CLINT.scala 74:41]
  wire [7:0] newBytes_x1__0 = timecmp_0[7:0]; // @[RegField.scala 152:53]
  wire [7:0] newBytes_x1__1 = timecmp_0[15:8]; // @[RegField.scala 152:53]
  wire [7:0] newBytes_x1__2 = timecmp_0[23:16]; // @[RegField.scala 152:53]
  wire [7:0] newBytes_x1__3 = timecmp_0[31:24]; // @[RegField.scala 152:53]
  wire [7:0] newBytes_x1__4 = timecmp_0[39:32]; // @[RegField.scala 152:53]
  wire [7:0] newBytes_x1__5 = timecmp_0[47:40]; // @[RegField.scala 152:53]
  wire [7:0] newBytes_x1__6 = timecmp_0[55:48]; // @[RegField.scala 152:53]
  wire [7:0] newBytes_x1__7 = timecmp_0[63:56]; // @[RegField.scala 152:53]
  wire  in_bits_read = auto_in_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 69:36]
  wire [12:0] in_bits_index = auto_in_a_bits_address[15:3]; // @[RegisterRouter.scala 68:18 RegisterRouter.scala 70:19]
  wire  out_iindex_right = in_bits_index[12]; // @[RegisterRouter.scala 80:24]
  wire  out_iindex_left = in_bits_index[11]; // @[RegisterRouter.scala 80:24]
  wire [1:0] out_iindex = {out_iindex_right,out_iindex_left}; // @[Cat.scala 29:58]
  wire [12:0] out_findex = in_bits_index & 13'h7ff; // @[RegisterRouter.scala 80:24]
  wire  _out_T_2 = out_findex == 13'h7ff; // @[RegisterRouter.scala 80:24]
  wire  _out_T = out_findex == 13'h0; // @[RegisterRouter.scala 80:24]
  wire [3:0] _out_backSel_T = 4'h1 << out_iindex; // @[OneHot.scala 58:35]
  wire  out_backSel_1 = _out_backSel_T[1]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_1 = (((auto_in_a_valid & auto_in_d_ready) & (~in_bits_read)) & out_backSel_1) & (out_findex
     == 13'h0); // @[RegisterRouter.scala 80:24]
  wire [7:0] out_backMask_right_right_right = auto_in_a_bits_mask[7] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_right_right_left = auto_in_a_bits_mask[6] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_right_left_right = auto_in_a_bits_mask[5] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_right_left_left = auto_in_a_bits_mask[4] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_left_right_right = auto_in_a_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_left_right_left = auto_in_a_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_left_left_right = auto_in_a_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_left_left_left = auto_in_a_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [63:0] out_backMask = {out_backMask_right_right_right,out_backMask_right_right_left,out_backMask_right_left_right
    ,out_backMask_right_left_left,out_backMask_left_right_right,out_backMask_left_right_left,
    out_backMask_left_left_right,out_backMask_left_left_left}; // @[Cat.scala 29:58]
  wire  out_womask = &(out_backMask[7:0]); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready = out_wofireMux_all_1 & out_womask; // @[RegisterRouter.scala 80:24]
  wire  out_womask_1 = &(out_backMask[15:8]); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_1 = out_wofireMux_all_1 & out_womask_1; // @[RegisterRouter.scala 80:24]
  wire  out_womask_2 = &(out_backMask[23:16]); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_2 = out_wofireMux_all_1 & out_womask_2; // @[RegisterRouter.scala 80:24]
  wire  out_womask_3 = &(out_backMask[31:24]); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_3 = out_wofireMux_all_1 & out_womask_3; // @[RegisterRouter.scala 80:24]
  wire  out_womask_4 = &(out_backMask[39:32]); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_4 = out_wofireMux_all_1 & out_womask_4; // @[RegisterRouter.scala 80:24]
  wire  out_womask_5 = &(out_backMask[47:40]); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_5 = out_wofireMux_all_1 & out_womask_5; // @[RegisterRouter.scala 80:24]
  wire  out_womask_6 = &(out_backMask[55:48]); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_6 = out_wofireMux_all_1 & out_womask_6; // @[RegisterRouter.scala 80:24]
  wire  out_womask_7 = &(out_backMask[63:56]); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_7 = out_wofireMux_all_1 & out_womask_7; // @[RegisterRouter.scala 80:24]
  wire  _T_6 = ((((((out_f_woready | out_f_woready_1) | out_f_woready_2) | out_f_woready_3) | out_f_woready_4) |
    out_f_woready_5) | out_f_woready_6) | out_f_woready_7; // @[RegField.scala 155:27]
  wire [7:0] newBytes__1 = out_f_woready_1 ? auto_in_a_bits_data[15:8] : newBytes_x1__1; // @[RegField.scala 159:20 RegField.scala 159:33]
  wire [7:0] newBytes__0 = out_f_woready ? auto_in_a_bits_data[7:0] : newBytes_x1__0; // @[RegField.scala 159:20 RegField.scala 159:33]
  wire [7:0] newBytes__3 = out_f_woready_3 ? auto_in_a_bits_data[31:24] : newBytes_x1__3; // @[RegField.scala 159:20 RegField.scala 159:33]
  wire [7:0] newBytes__2 = out_f_woready_2 ? auto_in_a_bits_data[23:16] : newBytes_x1__2; // @[RegField.scala 159:20 RegField.scala 159:33]
  wire [7:0] newBytes__5 = out_f_woready_5 ? auto_in_a_bits_data[47:40] : newBytes_x1__5; // @[RegField.scala 159:20 RegField.scala 159:33]
  wire [7:0] newBytes__4 = out_f_woready_4 ? auto_in_a_bits_data[39:32] : newBytes_x1__4; // @[RegField.scala 159:20 RegField.scala 159:33]
  wire [7:0] newBytes__7 = out_f_woready_7 ? auto_in_a_bits_data[63:56] : newBytes_x1__7; // @[RegField.scala 159:20 RegField.scala 159:33]
  wire [7:0] newBytes__6 = out_f_woready_6 ? auto_in_a_bits_data[55:48] : newBytes_x1__6; // @[RegField.scala 159:20 RegField.scala 159:33]
  wire [63:0] _timecmp_0_T = {newBytes__7,newBytes__6,newBytes__5,newBytes__4,newBytes__3,newBytes__2,newBytes__1,
    newBytes__0}; // @[RegField.scala 155:52]
  wire [7:0] newBytes_x1_1_0 = time_[7:0]; // @[RegField.scala 152:53]
  wire [7:0] newBytes_x1_1_1 = time_[15:8]; // @[RegField.scala 152:53]
  wire [7:0] newBytes_x1_1_2 = time_[23:16]; // @[RegField.scala 152:53]
  wire [7:0] newBytes_x1_1_3 = time_[31:24]; // @[RegField.scala 152:53]
  wire [7:0] newBytes_x1_1_4 = time_[39:32]; // @[RegField.scala 152:53]
  wire [7:0] newBytes_x1_1_5 = time_[47:40]; // @[RegField.scala 152:53]
  wire [7:0] newBytes_x1_1_6 = time_[55:48]; // @[RegField.scala 152:53]
  wire [7:0] newBytes_x1_1_7 = time_[63:56]; // @[RegField.scala 152:53]
  wire  out_backSel_2 = _out_backSel_T[2]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_2 = (((auto_in_a_valid & auto_in_d_ready) & (~in_bits_read)) & out_backSel_2) & (out_findex
     == 13'h7ff); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_8 = out_wofireMux_all_2 & out_womask; // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_9 = out_wofireMux_all_2 & out_womask_1; // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_10 = out_wofireMux_all_2 & out_womask_2; // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_11 = out_wofireMux_all_2 & out_womask_3; // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_12 = out_wofireMux_all_2 & out_womask_4; // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_13 = out_wofireMux_all_2 & out_womask_5; // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_14 = out_wofireMux_all_2 & out_womask_6; // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_15 = out_wofireMux_all_2 & out_womask_7; // @[RegisterRouter.scala 80:24]
  wire  _T_13 = ((((((out_f_woready_8 | out_f_woready_9) | out_f_woready_10) | out_f_woready_11) | out_f_woready_12) |
    out_f_woready_13) | out_f_woready_14) | out_f_woready_15; // @[RegField.scala 155:27]
  wire [7:0] newBytes_1_1 = out_f_woready_9 ? auto_in_a_bits_data[15:8] : newBytes_x1_1_1; // @[RegField.scala 159:20 RegField.scala 159:33]
  wire [7:0] newBytes_1_0 = out_f_woready_8 ? auto_in_a_bits_data[7:0] : newBytes_x1_1_0; // @[RegField.scala 159:20 RegField.scala 159:33]
  wire [7:0] newBytes_1_3 = out_f_woready_11 ? auto_in_a_bits_data[31:24] : newBytes_x1_1_3; // @[RegField.scala 159:20 RegField.scala 159:33]
  wire [7:0] newBytes_1_2 = out_f_woready_10 ? auto_in_a_bits_data[23:16] : newBytes_x1_1_2; // @[RegField.scala 159:20 RegField.scala 159:33]
  wire [7:0] newBytes_1_5 = out_f_woready_13 ? auto_in_a_bits_data[47:40] : newBytes_x1_1_5; // @[RegField.scala 159:20 RegField.scala 159:33]
  wire [7:0] newBytes_1_4 = out_f_woready_12 ? auto_in_a_bits_data[39:32] : newBytes_x1_1_4; // @[RegField.scala 159:20 RegField.scala 159:33]
  wire [7:0] newBytes_1_7 = out_f_woready_15 ? auto_in_a_bits_data[63:56] : newBytes_x1_1_7; // @[RegField.scala 159:20 RegField.scala 159:33]
  wire [7:0] newBytes_1_6 = out_f_woready_14 ? auto_in_a_bits_data[55:48] : newBytes_x1_1_6; // @[RegField.scala 159:20 RegField.scala 159:33]
  wire [63:0] _time_T_2 = {newBytes_1_7,newBytes_1_6,newBytes_1_5,newBytes_1_4,newBytes_1_3,newBytes_1_2,newBytes_1_1,
    newBytes_1_0}; // @[RegField.scala 155:52]
  wire [63:0] out_prepend_6 = {newBytes_x1__7,newBytes_x1__6,newBytes_x1__5,newBytes_x1__4,newBytes_x1__3,newBytes_x1__2
    ,newBytes_x1__1,newBytes_x1__0}; // @[Cat.scala 29:58]
  wire [63:0] out_prepend_13 = {newBytes_x1_1_7,newBytes_x1_1_6,newBytes_x1_1_5,newBytes_x1_1_4,newBytes_x1_1_3,
    newBytes_x1_1_2,newBytes_x1_1_1,newBytes_x1_1_0}; // @[Cat.scala 29:58]
  wire  out_wimask_16 = &(out_backMask[0]); // @[RegisterRouter.scala 80:24]
  wire  out_frontSel_0 = _out_backSel_T[0]; // @[RegisterRouter.scala 80:24]
  wire  out_wifireMux_all = (((auto_in_a_valid & auto_in_d_ready) & (~in_bits_read)) & out_frontSel_0) & (out_findex == 13'h0
    ); // @[RegisterRouter.scala 80:24]
  wire  out_f_wivalid_16 = out_wifireMux_all & out_wimask_16; // @[RegisterRouter.scala 80:24]
  wire [1:0] out_prepend_14 = {1'h0,ipi_0}; // @[Cat.scala 29:58]
  wire [31:0] _out_T_200 = {{30'd0}, out_prepend_14}; // @[RegisterRouter.scala 80:24]
  wire  _GEN_37 = 2'h1 == out_iindex ? _out_T : _out_T; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_38 = 2'h2 == out_iindex ? _out_T_2 : _GEN_37; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire  _GEN_39 = (2'h3 == out_iindex) | _GEN_38; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _out_out_bits_data_WIRE_1_0 = {{32'd0}, _out_T_200}; // @[MuxLiteral.scala 48:48 MuxLiteral.scala 48:48]
  wire [63:0] _GEN_41 = 2'h1 == out_iindex ? out_prepend_6 : _out_out_bits_data_WIRE_1_0; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_42 = 2'h2 == out_iindex ? out_prepend_13 : _GEN_41; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  wire [63:0] _GEN_43 = 2'h3 == out_iindex ? 64'h0 : _GEN_42; // @[MuxLiteral.scala 48:10 MuxLiteral.scala 48:10]
  assign auto_int_out_0 = ipi_0; // @[CLINT.scala 78:37]
  assign auto_int_out_1 = time_ >= timecmp_0; // @[CLINT.scala 79:43]
  assign auto_in_a_ready = auto_in_d_ready; // @[RegisterRouter.scala 80:24]
  assign auto_in_d_valid = auto_in_a_valid; // @[RegisterRouter.scala 80:24]
  assign auto_in_d_bits_opcode = {{2'd0}, in_bits_read}; // @[Nodes.scala 1216:84 RegisterRouter.scala 95:19]
  assign auto_in_d_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_in_d_bits_source = auto_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_in_d_bits_data = _GEN_39 ? _GEN_43 : 64'h0; // @[RegisterRouter.scala 80:24]
  always @(posedge clock) begin
    if (reset) begin // @[CLINT.scala 69:23]
      time_ <= 64'h0; // @[CLINT.scala 69:23]
    end else if (_T_13) begin // @[RegField.scala 155:34]
      time_ <= _time_T_2; // @[RegField.scala 155:40]
    end else if (io_rtcTick) begin // @[CLINT.scala 70:23]
      time_ <= _time_T_1; // @[CLINT.scala 70:30]
    end
    if (_T_6) begin // @[RegField.scala 155:34]
      timecmp_0 <= _timecmp_0_T; // @[RegField.scala 155:40]
    end
    if (reset) begin // @[CLINT.scala 74:41]
      ipi_0 <= 1'h0; // @[CLINT.scala 74:41]
    end else if (out_f_wivalid_16) begin // @[RegField.scala 75:88]
      ipi_0 <= auto_in_a_bits_data[0]; // @[RegField.scala 75:92]
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
  _RAND_0 = {2{`RANDOM}};
  time_ = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  timecmp_0 = _RAND_1[63:0];
  _RAND_2 = {1{`RANDOM}};
  ipi_0 = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
