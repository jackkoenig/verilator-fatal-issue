module TLError_1(
  input         clock,
  input         reset,
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output [2:0]  auto_in_d_bits_opcode,
  output [1:0]  auto_in_d_bits_param,
  output [1:0]  auto_in_d_bits_size,
  output        auto_in_d_bits_source,
  output        auto_in_d_bits_sink,
  output        auto_in_d_bits_denied,
  output [31:0] auto_in_d_bits_data,
  output        auto_in_d_bits_corrupt
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg  idle; // @[Error.scala 46:23]
  reg  beatsLeft; // @[Arbiter.scala 88:30]
  wire  idle_1 = ~beatsLeft; // @[Arbiter.scala 89:28]
  wire  da_valid = auto_in_a_valid & idle; // @[Error.scala 53:35]
  wire [1:0] _readys_T = {da_valid,1'h0}; // @[Cat.scala 29:58]
  wire [2:0] _readys_T_1 = {_readys_T, 1'h0}; // @[package.scala 222:48]
  wire [1:0] _readys_T_3 = _readys_T | (_readys_T_1[1:0]); // @[package.scala 222:43]
  wire [2:0] _readys_T_5 = {_readys_T_3, 1'h0}; // @[Arbiter.scala 17:78]
  wire [1:0] _readys_T_7 = ~(_readys_T_5[1:0]); // @[Arbiter.scala 17:61]
  wire  readys_1 = _readys_T_7[1]; // @[Arbiter.scala 96:86]
  reg  state_1; // @[Arbiter.scala 117:26]
  wire  allowed_1 = idle_1 ? readys_1 : state_1; // @[Arbiter.scala 122:24]
  wire  sourcesIn_1_ready = auto_in_d_ready & allowed_1; // @[Arbiter.scala 124:31]
  reg  counter; // @[Edges.scala 230:27]
  wire [2:0] _GEN_4 = 3'h2 == auto_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Error.scala 55:21 Error.scala 55:21]
  wire [2:0] _GEN_5 = 3'h3 == auto_in_a_bits_opcode ? 3'h1 : _GEN_4; // @[Error.scala 55:21 Error.scala 55:21]
  wire [2:0] _GEN_6 = 3'h4 == auto_in_a_bits_opcode ? 3'h1 : _GEN_5; // @[Error.scala 55:21 Error.scala 55:21]
  wire [2:0] _GEN_7 = 3'h5 == auto_in_a_bits_opcode ? 3'h2 : _GEN_6; // @[Error.scala 55:21 Error.scala 55:21]
  wire [2:0] _GEN_8 = 3'h6 == auto_in_a_bits_opcode ? 3'h4 : _GEN_7; // @[Error.scala 55:21 Error.scala 55:21]
  wire [2:0] da_bits_opcode = 3'h7 == auto_in_a_bits_opcode ? 3'h4 : _GEN_8; // @[Error.scala 55:21 Error.scala 55:21]
  wire  beats1_opdata = da_bits_opcode[0]; // @[Edges.scala 107:36]
  wire  done = sourcesIn_1_ready & da_valid; // @[Decoupled.scala 40:37]
  wire  counter1 = counter - 1'h1; // @[Edges.scala 231:28]
  wire  da_first = ~counter; // @[Edges.scala 232:25]
  wire  _T_7 = done & (da_bits_opcode == 3'h4); // @[Error.scala 72:23]
  wire  _GEN_12 = _T_7 ? 1'h0 : idle; // @[Error.scala 72:52 Error.scala 72:59 Error.scala 46:23]
  wire  latch = idle_1 & auto_in_d_ready; // @[Arbiter.scala 90:24]
  wire  earlyWinner_1 = readys_1 & da_valid; // @[Arbiter.scala 98:79]
  wire  _T_20 = ~da_valid; // @[Arbiter.scala 108:15]
  wire  muxStateEarly_1 = idle_1 ? earlyWinner_1 : state_1; // @[Arbiter.scala 118:30]
  wire  _sink_ACancel_earlyValid_T_2 = state_1 & da_valid; // @[Mux.scala 27:72]
  wire  sink_ACancel_earlyValid = idle_1 ? da_valid : _sink_ACancel_earlyValid_T_2; // @[Arbiter.scala 126:29]
  wire  _beatsLeft_T_2 = auto_in_d_ready & sink_ACancel_earlyValid; // @[ReadyValidCancel.scala 52:33]
  wire [42:0] _T_35 = {da_bits_opcode,2'h0,3'h4,2'h1,32'h0,beats1_opdata}; // @[Mux.scala 27:72]
  wire [42:0] _T_36 = muxStateEarly_1 ? _T_35 : 43'h0; // @[Mux.scala 27:72]
  assign auto_in_a_ready = sourcesIn_1_ready & idle; // @[Error.scala 52:37]
  assign auto_in_d_valid = idle_1 ? da_valid : _sink_ACancel_earlyValid_T_2; // @[Arbiter.scala 126:29]
  assign auto_in_d_bits_opcode = _T_36[42:40]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_param = _T_36[39:38]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_size = _T_36[37:36]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_source = _T_36[35]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_sink = _T_36[34]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_denied = _T_36[33]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_data = _T_36[32:1]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_corrupt = _T_36[0]; // @[Mux.scala 27:72]
  always @(posedge clock) begin
    idle <= reset | _GEN_12; // @[Error.scala 46:23 Error.scala 46:23]
    if (reset) begin // @[Arbiter.scala 88:30]
      beatsLeft <= 1'h0; // @[Arbiter.scala 88:30]
    end else if (latch) begin // @[Arbiter.scala 114:23]
      beatsLeft <= 1'h0;
    end else begin
      beatsLeft <= beatsLeft - _beatsLeft_T_2;
    end
    if (reset) begin // @[Arbiter.scala 117:26]
      state_1 <= 1'h0; // @[Arbiter.scala 117:26]
    end else if (idle_1) begin // @[Arbiter.scala 118:30]
      state_1 <= earlyWinner_1;
    end
    if (reset) begin // @[Edges.scala 230:27]
      counter <= 1'h0; // @[Edges.scala 230:27]
    end else if (done) begin // @[Edges.scala 236:17]
      if (da_first) begin // @[Edges.scala 237:21]
        counter <= 1'h0;
      end else begin
        counter <= counter1;
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
  idle = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  beatsLeft = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  state_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  counter = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
