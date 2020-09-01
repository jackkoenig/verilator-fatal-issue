module FPUFMAPipe(
  input         clock,
  input         reset,
  input         io_in_valid,
  input         io_in_bits_ren3,
  input         io_in_bits_swap23,
  input  [2:0]  io_in_bits_rm,
  input  [1:0]  io_in_bits_fmaCmd,
  input  [64:0] io_in_bits_in1,
  input  [64:0] io_in_bits_in2,
  input  [64:0] io_in_bits_in3,
  output [64:0] io_out_bits_data,
  output [4:0]  io_out_bits_exc
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [95:0] _RAND_3;
  reg [95:0] _RAND_4;
  reg [95:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire  fma_clock; // @[FPU.scala 664:19]
  wire  fma_reset; // @[FPU.scala 664:19]
  wire  fma_io_validin; // @[FPU.scala 664:19]
  wire [1:0] fma_io_op; // @[FPU.scala 664:19]
  wire [32:0] fma_io_a; // @[FPU.scala 664:19]
  wire [32:0] fma_io_b; // @[FPU.scala 664:19]
  wire [32:0] fma_io_c; // @[FPU.scala 664:19]
  wire [2:0] fma_io_roundingMode; // @[FPU.scala 664:19]
  wire [32:0] fma_io_out; // @[FPU.scala 664:19]
  wire [4:0] fma_io_exceptionFlags; // @[FPU.scala 664:19]
  reg  valid; // @[FPU.scala 652:18]
  reg [2:0] in_rm; // @[FPU.scala 653:15]
  reg [1:0] in_fmaCmd; // @[FPU.scala 653:15]
  reg [64:0] in_in1; // @[FPU.scala 653:15]
  reg [64:0] in_in2; // @[FPU.scala 653:15]
  reg [64:0] in_in3; // @[FPU.scala 653:15]
  wire [64:0] _zero_T = io_in_bits_in1 ^ io_in_bits_in2; // @[FPU.scala 656:32]
  wire [64:0] zero = _zero_T & 65'h100000000; // @[FPU.scala 656:50]
  wire  _T_1 = ~(io_in_bits_ren3 | io_in_bits_swap23); // @[FPU.scala 661:11]
  MulAddRecFNPipe fma ( // @[FPU.scala 664:19]
    .clock(fma_clock),
    .reset(fma_reset),
    .io_validin(fma_io_validin),
    .io_op(fma_io_op),
    .io_a(fma_io_a),
    .io_b(fma_io_b),
    .io_c(fma_io_c),
    .io_roundingMode(fma_io_roundingMode),
    .io_out(fma_io_out),
    .io_exceptionFlags(fma_io_exceptionFlags)
  );
  assign io_out_bits_data = {{32'd0}, fma_io_out}; // @[FPU.scala 673:17 FPU.scala 674:12]
  assign io_out_bits_exc = fma_io_exceptionFlags; // @[FPU.scala 673:17 FPU.scala 675:11]
  assign fma_clock = clock;
  assign fma_reset = reset;
  assign fma_io_validin = valid; // @[FPU.scala 665:18]
  assign fma_io_op = in_fmaCmd; // @[FPU.scala 666:13]
  assign fma_io_a = in_in1[32:0]; // @[FPU.scala 669:12]
  assign fma_io_b = in_in2[32:0]; // @[FPU.scala 670:12]
  assign fma_io_c = in_in3[32:0]; // @[FPU.scala 671:12]
  assign fma_io_roundingMode = in_rm; // @[FPU.scala 667:23]
  always @(posedge clock) begin
    valid <= io_in_valid; // @[FPU.scala 652:18]
    if (io_in_valid) begin // @[FPU.scala 654:22]
      in_rm <= io_in_bits_rm; // @[FPU.scala 659:8]
    end
    if (io_in_valid) begin // @[FPU.scala 654:22]
      in_fmaCmd <= io_in_bits_fmaCmd; // @[FPU.scala 659:8]
    end
    if (io_in_valid) begin // @[FPU.scala 654:22]
      in_in1 <= io_in_bits_in1; // @[FPU.scala 659:8]
    end
    if (io_in_valid) begin // @[FPU.scala 654:22]
      if (io_in_bits_swap23) begin // @[FPU.scala 660:23]
        in_in2 <= 65'h80000000; // @[FPU.scala 660:32]
      end else begin
        in_in2 <= io_in_bits_in2; // @[FPU.scala 659:8]
      end
    end
    if (io_in_valid) begin // @[FPU.scala 654:22]
      if (_T_1) begin // @[FPU.scala 661:37]
        in_in3 <= zero; // @[FPU.scala 661:46]
      end else begin
        in_in3 <= io_in_bits_in3; // @[FPU.scala 659:8]
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
  valid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  in_rm = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  in_fmaCmd = _RAND_2[1:0];
  _RAND_3 = {3{`RANDOM}};
  in_in1 = _RAND_3[64:0];
  _RAND_4 = {3{`RANDOM}};
  in_in2 = _RAND_4[64:0];
  _RAND_5 = {3{`RANDOM}};
  in_in3 = _RAND_5[64:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
