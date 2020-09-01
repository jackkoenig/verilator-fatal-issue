module Repeater_1(
  input         clock,
  input         reset,
  input         io_repeat,
  output        io_full,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [2:0]  io_enq_bits_opcode,
  input  [2:0]  io_enq_bits_size,
  input  [4:0]  io_enq_bits_source,
  input  [25:0] io_enq_bits_address,
  input  [7:0]  io_enq_bits_mask,
  input         io_deq_ready,
  output        io_deq_valid,
  output [2:0]  io_deq_bits_opcode,
  output [2:0]  io_deq_bits_size,
  output [4:0]  io_deq_bits_source,
  output [25:0] io_deq_bits_address,
  output [7:0]  io_deq_bits_mask
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  reg  full; // @[Repeater.scala 19:21]
  reg [2:0] saved_opcode; // @[Repeater.scala 20:18]
  reg [2:0] saved_size; // @[Repeater.scala 20:18]
  reg [4:0] saved_source; // @[Repeater.scala 20:18]
  reg [25:0] saved_address; // @[Repeater.scala 20:18]
  reg [7:0] saved_mask; // @[Repeater.scala 20:18]
  wire  _T = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37]
  wire  _T_1 = _T & io_repeat; // @[Repeater.scala 28:23]
  wire  _GEN_0 = _T_1 | full; // @[Repeater.scala 28:38 Repeater.scala 28:45 Repeater.scala 19:21]
  wire  _T_2 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37]
  wire  _T_4 = _T_2 & (~io_repeat); // @[Repeater.scala 29:23]
  assign io_full = full; // @[Repeater.scala 26:11]
  assign io_enq_ready = io_deq_ready & (~full); // @[Repeater.scala 24:32]
  assign io_deq_valid = io_enq_valid | full; // @[Repeater.scala 23:32]
  assign io_deq_bits_opcode = full ? saved_opcode : io_enq_bits_opcode; // @[Repeater.scala 25:21]
  assign io_deq_bits_size = full ? saved_size : io_enq_bits_size; // @[Repeater.scala 25:21]
  assign io_deq_bits_source = full ? saved_source : io_enq_bits_source; // @[Repeater.scala 25:21]
  assign io_deq_bits_address = full ? saved_address : io_enq_bits_address; // @[Repeater.scala 25:21]
  assign io_deq_bits_mask = full ? saved_mask : io_enq_bits_mask; // @[Repeater.scala 25:21]
  always @(posedge clock) begin
    if (reset) begin // @[Repeater.scala 19:21]
      full <= 1'h0; // @[Repeater.scala 19:21]
    end else if (_T_4) begin // @[Repeater.scala 29:38]
      full <= 1'h0; // @[Repeater.scala 29:45]
    end else begin
      full <= _GEN_0;
    end
    if (_T_1) begin // @[Repeater.scala 28:38]
      saved_opcode <= io_enq_bits_opcode; // @[Repeater.scala 28:62]
    end
    if (_T_1) begin // @[Repeater.scala 28:38]
      saved_size <= io_enq_bits_size; // @[Repeater.scala 28:62]
    end
    if (_T_1) begin // @[Repeater.scala 28:38]
      saved_source <= io_enq_bits_source; // @[Repeater.scala 28:62]
    end
    if (_T_1) begin // @[Repeater.scala 28:38]
      saved_address <= io_enq_bits_address; // @[Repeater.scala 28:62]
    end
    if (_T_1) begin // @[Repeater.scala 28:38]
      saved_mask <= io_enq_bits_mask; // @[Repeater.scala 28:62]
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
  full = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  saved_opcode = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  saved_size = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  saved_source = _RAND_3[4:0];
  _RAND_4 = {1{`RANDOM}};
  saved_address = _RAND_4[25:0];
  _RAND_5 = {1{`RANDOM}};
  saved_mask = _RAND_5[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
