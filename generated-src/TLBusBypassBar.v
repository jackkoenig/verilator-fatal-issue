module TLBusBypassBar(
  input         clock,
  input         reset,
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [8:0]  auto_in_a_bits_address,
  input  [31:0] auto_in_a_bits_data,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output [2:0]  auto_in_d_bits_opcode,
  output [1:0]  auto_in_d_bits_param,
  output [1:0]  auto_in_d_bits_size,
  output        auto_in_d_bits_source,
  output        auto_in_d_bits_sink,
  output        auto_in_d_bits_denied,
  output [31:0] auto_in_d_bits_data,
  output        auto_in_d_bits_corrupt,
  input         auto_out_1_a_ready,
  output        auto_out_1_a_valid,
  output [2:0]  auto_out_1_a_bits_opcode,
  output [8:0]  auto_out_1_a_bits_address,
  output [31:0] auto_out_1_a_bits_data,
  output        auto_out_1_d_ready,
  input         auto_out_1_d_valid,
  input  [2:0]  auto_out_1_d_bits_opcode,
  input  [1:0]  auto_out_1_d_bits_param,
  input  [1:0]  auto_out_1_d_bits_size,
  input         auto_out_1_d_bits_source,
  input         auto_out_1_d_bits_sink,
  input         auto_out_1_d_bits_denied,
  input  [31:0] auto_out_1_d_bits_data,
  input         auto_out_1_d_bits_corrupt,
  input         auto_out_0_a_ready,
  output        auto_out_0_a_valid,
  output [2:0]  auto_out_0_a_bits_opcode,
  output        auto_out_0_d_ready,
  input         auto_out_0_d_valid,
  input  [2:0]  auto_out_0_d_bits_opcode,
  input  [1:0]  auto_out_0_d_bits_param,
  input  [1:0]  auto_out_0_d_bits_size,
  input         auto_out_0_d_bits_source,
  input         auto_out_0_d_bits_sink,
  input         auto_out_0_d_bits_denied,
  input  [31:0] auto_out_0_d_bits_data,
  input         auto_out_0_d_bits_corrupt,
  input         io_bypass
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  reg  in_reset; // @[BusBypass.scala 80:27]
  reg  bypass_reg; // @[BusBypass.scala 81:25]
  wire  bypass = in_reset ? io_bypass : bypass_reg; // @[BusBypass.scala 82:21]
  reg [1:0] flight; // @[Edges.scala 296:25]
  reg  stall_counter; // @[Edges.scala 230:27]
  wire  stall_first = ~stall_counter; // @[Edges.scala 232:25]
  wire  stall = (bypass != io_bypass) & stall_first; // @[BusBypass.scala 87:40]
  wire  _in_a_ready_T = ~stall; // @[BusBypass.scala 91:21]
  wire  _in_a_ready_T_1 = bypass ? auto_out_0_a_ready : auto_out_1_a_ready; // @[BusBypass.scala 91:34]
  wire  in_a_ready = (~stall) & _in_a_ready_T_1; // @[BusBypass.scala 91:28]
  wire  done = in_a_ready & auto_in_a_valid; // @[Decoupled.scala 40:37]
  reg  counter; // @[Edges.scala 230:27]
  wire  counter1 = counter - 1'h1; // @[Edges.scala 231:28]
  wire  a_first = ~counter; // @[Edges.scala 232:25]
  wire  in_d_valid = bypass ? auto_out_0_d_valid : auto_out_1_d_valid; // @[BusBypass.scala 97:24]
  wire  done_3 = auto_in_d_ready & in_d_valid; // @[Decoupled.scala 40:37]
  wire [2:0] in_d_bits_opcode = bypass ? auto_out_0_d_bits_opcode : auto_out_1_d_bits_opcode; // @[BusBypass.scala 99:21]
  reg  counter_3; // @[Edges.scala 230:27]
  wire  counter1_3 = counter_3 - 1'h1; // @[Edges.scala 231:28]
  wire  d_first = ~counter_3; // @[Edges.scala 232:25]
  wire  d_request = (in_d_bits_opcode[2]) & (~(in_d_bits_opcode[1])); // @[Edges.scala 72:40]
  wire  inc_right = done & a_first; // @[Edges.scala 311:28]
  wire  inc_left = (done_3 & d_first) & d_request; // @[Edges.scala 314:39]
  wire [1:0] inc = {inc_right,inc_left}; // @[Cat.scala 29:58]
  wire [1:0] dec = {1'h0,done_3}; // @[Cat.scala 29:58]
  wire [1:0] _next_flight_T_2 = (inc[0]) + (inc[1]); // @[Bitwise.scala 47:55]
  wire [1:0] _next_flight_T_5 = flight + _next_flight_T_2; // @[Edges.scala 325:30]
  wire [1:0] _next_flight_T_8 = (dec[0]) + (dec[1]); // @[Bitwise.scala 47:55]
  wire [1:0] next_flight = _next_flight_T_5 - _next_flight_T_8; // @[Edges.scala 325:46]
  wire  _T_15 = in_reset | (next_flight == 2'h0); // @[BusBypass.scala 86:20]
  wire  stall_counter1 = stall_counter - 1'h1; // @[Edges.scala 231:28]
  wire  _out0_a_valid_T_1 = _in_a_ready_T & auto_in_a_valid; // @[BusBypass.scala 89:28]
  wire  _out1_a_valid_T_2 = ~bypass; // @[BusBypass.scala 90:45]
  assign auto_in_a_ready = (~stall) & _in_a_ready_T_1; // @[BusBypass.scala 91:28]
  assign auto_in_d_valid = bypass ? auto_out_0_d_valid : auto_out_1_d_valid; // @[BusBypass.scala 97:24]
  assign auto_in_d_bits_opcode = bypass ? auto_out_0_d_bits_opcode : auto_out_1_d_bits_opcode; // @[BusBypass.scala 99:21]
  assign auto_in_d_bits_param = bypass ? auto_out_0_d_bits_param : auto_out_1_d_bits_param; // @[BusBypass.scala 99:21]
  assign auto_in_d_bits_size = bypass ? auto_out_0_d_bits_size : auto_out_1_d_bits_size; // @[BusBypass.scala 99:21]
  assign auto_in_d_bits_source = bypass ? auto_out_0_d_bits_source : auto_out_1_d_bits_source; // @[BusBypass.scala 99:21]
  assign auto_in_d_bits_sink = bypass ? auto_out_0_d_bits_sink : auto_out_1_d_bits_sink; // @[BusBypass.scala 99:21]
  assign auto_in_d_bits_denied = bypass ? auto_out_0_d_bits_denied : auto_out_1_d_bits_denied; // @[BusBypass.scala 99:21]
  assign auto_in_d_bits_data = bypass ? auto_out_0_d_bits_data : auto_out_1_d_bits_data; // @[BusBypass.scala 99:21]
  assign auto_in_d_bits_corrupt = bypass ? auto_out_0_d_bits_corrupt : auto_out_1_d_bits_corrupt; // @[BusBypass.scala 99:21]
  assign auto_out_1_a_valid = _out0_a_valid_T_1 & (~bypass); // @[BusBypass.scala 90:42]
  assign auto_out_1_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_1_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_1_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_1_d_ready = auto_in_d_ready & _out1_a_valid_T_2; // @[BusBypass.scala 96:32]
  assign auto_out_0_a_valid = (_in_a_ready_T & auto_in_a_valid) & bypass; // @[BusBypass.scala 89:42]
  assign auto_out_0_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_0_d_ready = auto_in_d_ready & bypass; // @[BusBypass.scala 95:32]
  always @(posedge clock) begin
    in_reset <= reset; // @[BusBypass.scala 80:27 BusBypass.scala 80:27 BusBypass.scala 80:27]
    if (_T_15) begin // @[BusBypass.scala 86:50]
      bypass_reg <= io_bypass; // @[BusBypass.scala 86:63]
    end
    if (reset) begin // @[Edges.scala 296:25]
      flight <= 2'h0; // @[Edges.scala 296:25]
    end else begin
      flight <= next_flight; // @[Edges.scala 326:12]
    end
    if (reset) begin // @[Edges.scala 230:27]
      stall_counter <= 1'h0; // @[Edges.scala 230:27]
    end else if (done) begin // @[Edges.scala 236:17]
      if (stall_first) begin // @[Edges.scala 237:21]
        stall_counter <= 1'h0;
      end else begin
        stall_counter <= stall_counter1;
      end
    end
    if (reset) begin // @[Edges.scala 230:27]
      counter <= 1'h0; // @[Edges.scala 230:27]
    end else if (done) begin // @[Edges.scala 236:17]
      if (a_first) begin // @[Edges.scala 237:21]
        counter <= 1'h0;
      end else begin
        counter <= counter1;
      end
    end
    if (reset) begin // @[Edges.scala 230:27]
      counter_3 <= 1'h0; // @[Edges.scala 230:27]
    end else if (done_3) begin // @[Edges.scala 236:17]
      if (d_first) begin // @[Edges.scala 237:21]
        counter_3 <= 1'h0;
      end else begin
        counter_3 <= counter1_3;
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
  in_reset = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  bypass_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  flight = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  stall_counter = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  counter = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  counter_3 = _RAND_5[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
