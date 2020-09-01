module FPToFP(
  input         clock,
  input         reset,
  input         io_in_valid,
  input         io_in_bits_ren2,
  input         io_in_bits_singleOut,
  input         io_in_bits_wflags,
  input  [2:0]  io_in_bits_rm,
  input  [64:0] io_in_bits_in1,
  input  [64:0] io_in_bits_in2,
  output [64:0] io_out_bits_data,
  output [4:0]  io_out_bits_exc,
  input         io_lt
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [95:0] _RAND_5;
  reg [95:0] _RAND_6;
  reg [95:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  wire [64:0] narrower_io_in; // @[FPU.scala 566:30]
  wire [2:0] narrower_io_roundingMode; // @[FPU.scala 566:30]
  wire [32:0] narrower_io_out; // @[FPU.scala 566:30]
  wire [4:0] narrower_io_exceptionFlags; // @[FPU.scala 566:30]
  reg  inPipe_valid; // @[Valid.scala 117:22]
  reg  inPipe_bits_ren2; // @[Reg.scala 15:16]
  reg  inPipe_bits_singleOut; // @[Reg.scala 15:16]
  reg  inPipe_bits_wflags; // @[Reg.scala 15:16]
  reg [2:0] inPipe_bits_rm; // @[Reg.scala 15:16]
  reg [64:0] inPipe_bits_in1; // @[Reg.scala 15:16]
  reg [64:0] inPipe_bits_in2; // @[Reg.scala 15:16]
  wire [64:0] _signNum_T_1 = inPipe_bits_in1 ^ inPipe_bits_in2; // @[FPU.scala 529:48]
  wire [64:0] _signNum_T_3 = ~inPipe_bits_in2; // @[FPU.scala 529:82]
  wire [64:0] _signNum_T_4 = inPipe_bits_rm[0] ? _signNum_T_3 : inPipe_bits_in2; // @[FPU.scala 529:66]
  wire [64:0] signNum = inPipe_bits_rm[1] ? _signNum_T_1 : _signNum_T_4; // @[FPU.scala 529:20]
  wire  fsgnj_right = signNum[64]; // @[FPU.scala 530:26]
  wire [63:0] fsgnj_left = inPipe_bits_in1[63:0]; // @[FPU.scala 530:45]
  wire [64:0] fsgnj = {fsgnj_right,fsgnj_left}; // @[Cat.scala 29:58]
  wire  isnan1 = &(inPipe_bits_in1[63:61]); // @[FPU.scala 203:56]
  wire  isnan2 = &(inPipe_bits_in2[63:61]); // @[FPU.scala 203:56]
  wire  _isInvalid_T_4 = isnan1 & (~(inPipe_bits_in1[51])); // @[FPU.scala 204:34]
  wire  _isInvalid_T_9 = isnan2 & (~(inPipe_bits_in2[51])); // @[FPU.scala 204:34]
  wire  isInvalid = _isInvalid_T_4 | _isInvalid_T_9; // @[FPU.scala 539:49]
  wire  isNaNOut = isnan1 & isnan2; // @[FPU.scala 540:27]
  wire  isLHS = isnan2 | (((inPipe_bits_rm[0]) != io_lt) & (~isnan1)); // @[FPU.scala 541:24]
  wire [4:0] _fsgnjMux_exc_T = {isInvalid, 4'h0}; // @[FPU.scala 542:31]
  wire [64:0] _fsgnjMux_data_T = isLHS ? inPipe_bits_in1 : inPipe_bits_in2; // @[FPU.scala 543:53]
  wire [64:0] _fsgnjMux_data_T_1 = isNaNOut ? 65'he008000000000000 : _fsgnjMux_data_T; // @[FPU.scala 543:25]
  wire [4:0] _GEN_22 = inPipe_bits_wflags ? _fsgnjMux_exc_T : 5'h0; // @[FPU.scala 536:25 FPU.scala 542:18 FPU.scala 533:16]
  wire [64:0] _GEN_23 = inPipe_bits_wflags ? _fsgnjMux_data_T_1 : fsgnj; // @[FPU.scala 536:25 FPU.scala 543:19 FPU.scala 534:17]
  wire  outTag = ~inPipe_bits_singleOut; // @[FPU.scala 547:16]
  wire  _T = ~outTag; // @[FPU.scala 550:18]
  wire  _T_2 = inPipe_bits_wflags & (~inPipe_bits_ren2); // @[FPU.scala 555:24]
  wire [64:0] widened = isnan1 ? 65'he008000000000000 : inPipe_bits_in1; // @[FPU.scala 558:24]
  wire [64:0] fsgnjMux_data = _T_2 ? widened : _GEN_23; // @[FPU.scala 555:42 FPU.scala 559:21]
  wire [31:0] mux_data_right = fsgnjMux_data[64:33]; // @[FPU.scala 551:37]
  wire  mux_data_right_right = fsgnjMux_data[64]; // @[FPU.scala 228:17]
  wire [51:0] mux_data_fractIn = fsgnjMux_data[51:0]; // @[FPU.scala 229:20]
  wire [11:0] mux_data_expIn = fsgnjMux_data[63:52]; // @[FPU.scala 230:18]
  wire [75:0] _mux_data_fractOut_T = {mux_data_fractIn, 24'h0}; // @[FPU.scala 231:28]
  wire [22:0] mux_data_left = _mux_data_fractOut_T[75:53]; // @[FPU.scala 231:38]
  wire [2:0] mux_data_expOut_right = mux_data_expIn[11:9]; // @[FPU.scala 233:26]
  wire [11:0] _mux_data_expOut_commonCase_T_1 = mux_data_expIn + 12'h100; // @[FPU.scala 234:31]
  wire [11:0] mux_data_expOut_commonCase = _mux_data_expOut_commonCase_T_1 - 12'h800; // @[FPU.scala 234:48]
  wire  _mux_data_expOut_T_2 = (mux_data_expOut_right == 3'h0) | (mux_data_expOut_right >= 3'h6); // @[FPU.scala 235:25]
  wire [5:0] mux_data_expOut_left = mux_data_expOut_commonCase[5:0]; // @[FPU.scala 235:65]
  wire [8:0] _mux_data_expOut_T_3 = {mux_data_expOut_right,mux_data_expOut_left}; // @[Cat.scala 29:58]
  wire [8:0] mux_data_right_left = _mux_data_expOut_T_2 ? _mux_data_expOut_T_3 : mux_data_expOut_commonCase[8:0]; // @[FPU.scala 235:10]
  wire [64:0] _mux_data_T = {mux_data_right,mux_data_right_right,mux_data_right_left,mux_data_left}; // @[Cat.scala 29:58]
  wire [64:0] _GEN_24 = _T ? _mux_data_T : fsgnjMux_data; // @[FPU.scala 550:34 FPU.scala 551:16]
  wire [4:0] _fsgnjMux_exc_T_6 = {_isInvalid_T_4, 4'h0}; // @[FPU.scala 560:51]
  wire [64:0] _mux_data_T_1 = {mux_data_right,narrower_io_out}; // @[Cat.scala 29:58]
  wire [4:0] fsgnjMux_exc = _T_2 ? _fsgnjMux_exc_T_6 : _GEN_22; // @[FPU.scala 555:42 FPU.scala 560:20]
  reg [64:0] io_out_b_data; // @[Reg.scala 15:16]
  reg [4:0] io_out_b_exc; // @[Reg.scala 15:16]
  RecFNToRecFN narrower ( // @[FPU.scala 566:30]
    .io_in(narrower_io_in),
    .io_roundingMode(narrower_io_roundingMode),
    .io_out(narrower_io_out),
    .io_exceptionFlags(narrower_io_exceptionFlags)
  );
  assign io_out_bits_data = io_out_b_data; // @[Valid.scala 112:21 Valid.scala 114:16]
  assign io_out_bits_exc = io_out_b_exc; // @[Valid.scala 112:21 Valid.scala 114:16]
  assign narrower_io_in = inPipe_bits_in1; // @[Valid.scala 112:21 Valid.scala 114:16]
  assign narrower_io_roundingMode = inPipe_bits_rm; // @[Valid.scala 112:21 Valid.scala 114:16]
  always @(posedge clock) begin
    if (reset) begin // @[Valid.scala 117:22]
      inPipe_valid <= 1'h0; // @[Valid.scala 117:22]
    end else begin
      inPipe_valid <= io_in_valid; // @[Valid.scala 117:22]
    end
    if (io_in_valid) begin // @[Reg.scala 16:19]
      inPipe_bits_ren2 <= io_in_bits_ren2; // @[Reg.scala 16:23]
    end
    if (io_in_valid) begin // @[Reg.scala 16:19]
      inPipe_bits_singleOut <= io_in_bits_singleOut; // @[Reg.scala 16:23]
    end
    if (io_in_valid) begin // @[Reg.scala 16:19]
      inPipe_bits_wflags <= io_in_bits_wflags; // @[Reg.scala 16:23]
    end
    if (io_in_valid) begin // @[Reg.scala 16:19]
      inPipe_bits_rm <= io_in_bits_rm; // @[Reg.scala 16:23]
    end
    if (io_in_valid) begin // @[Reg.scala 16:19]
      inPipe_bits_in1 <= io_in_bits_in1; // @[Reg.scala 16:23]
    end
    if (io_in_valid) begin // @[Reg.scala 16:19]
      inPipe_bits_in2 <= io_in_bits_in2; // @[Reg.scala 16:23]
    end
    if (inPipe_valid) begin // @[Reg.scala 16:19]
      if (_T_2) begin // @[FPU.scala 555:42]
        if (_T) begin // @[FPU.scala 565:120]
          io_out_b_data <= _mux_data_T_1; // @[FPU.scala 571:18]
        end else begin
          io_out_b_data <= _GEN_24;
        end
      end else begin
        io_out_b_data <= _GEN_24;
      end
    end
    if (inPipe_valid) begin // @[Reg.scala 16:19]
      if (_T_2) begin // @[FPU.scala 555:42]
        if (_T) begin // @[FPU.scala 565:120]
          io_out_b_exc <= narrower_io_exceptionFlags; // @[FPU.scala 572:17]
        end else begin
          io_out_b_exc <= fsgnjMux_exc;
        end
      end else begin
        io_out_b_exc <= fsgnjMux_exc;
      end
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
  inPipe_valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  inPipe_bits_ren2 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  inPipe_bits_singleOut = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  inPipe_bits_wflags = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  inPipe_bits_rm = _RAND_4[2:0];
  _RAND_5 = {3{`RANDOM}};
  inPipe_bits_in1 = _RAND_5[64:0];
  _RAND_6 = {3{`RANDOM}};
  inPipe_bits_in2 = _RAND_6[64:0];
  _RAND_7 = {3{`RANDOM}};
  io_out_b_data = _RAND_7[64:0];
  _RAND_8 = {1{`RANDOM}};
  io_out_b_exc = _RAND_8[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
