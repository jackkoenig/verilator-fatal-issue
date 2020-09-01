module TLXbar_9(
  input         clock,
  input         reset,
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [8:0]  auto_in_a_bits_address,
  input  [31:0] auto_in_a_bits_data,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output        auto_in_d_bits_denied,
  output [31:0] auto_in_d_bits_data,
  output        auto_in_d_bits_corrupt,
  input         auto_out_1_a_ready,
  output        auto_out_1_a_valid,
  output [2:0]  auto_out_1_a_bits_opcode,
  output [6:0]  auto_out_1_a_bits_address,
  output [31:0] auto_out_1_a_bits_data,
  output        auto_out_1_d_ready,
  input         auto_out_1_d_valid,
  input  [2:0]  auto_out_1_d_bits_opcode,
  input  [31:0] auto_out_1_d_bits_data,
  input         auto_out_0_a_ready,
  output        auto_out_0_a_valid,
  output [2:0]  auto_out_0_a_bits_opcode,
  output [8:0]  auto_out_0_a_bits_address,
  output [31:0] auto_out_0_a_bits_data,
  output        auto_out_0_d_ready,
  input         auto_out_0_d_valid,
  input  [2:0]  auto_out_0_d_bits_opcode,
  input  [1:0]  auto_out_0_d_bits_param,
  input  [1:0]  auto_out_0_d_bits_size,
  input         auto_out_0_d_bits_source,
  input         auto_out_0_d_bits_sink,
  input         auto_out_0_d_bits_denied,
  input  [31:0] auto_out_0_d_bits_data,
  input         auto_out_0_d_bits_corrupt
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  monitor_clock; // @[Nodes.scala 25:25]
  wire  monitor_reset; // @[Nodes.scala 25:25]
  wire  monitor_io_in_a_ready; // @[Nodes.scala 25:25]
  wire  monitor_io_in_a_valid; // @[Nodes.scala 25:25]
  wire [2:0] monitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25]
  wire [8:0] monitor_io_in_a_bits_address; // @[Nodes.scala 25:25]
  wire  monitor_io_in_d_ready; // @[Nodes.scala 25:25]
  wire  monitor_io_in_d_valid; // @[Nodes.scala 25:25]
  wire [2:0] monitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25]
  wire [1:0] monitor_io_in_d_bits_param; // @[Nodes.scala 25:25]
  wire [1:0] monitor_io_in_d_bits_size; // @[Nodes.scala 25:25]
  wire  monitor_io_in_d_bits_sink; // @[Nodes.scala 25:25]
  wire  monitor_io_in_d_bits_denied; // @[Nodes.scala 25:25]
  wire  monitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25]
  wire [9:0] _requestAIO_T_1 = {1'b0,$signed(auto_in_a_bits_address)}; // @[Parameters.scala 138:49]
  wire [9:0] _requestAIO_T_3 = $signed(_requestAIO_T_1) & 10'sh1c0; // @[Parameters.scala 138:52]
  wire  _requestAIO_T_4 = $signed(_requestAIO_T_3) == 10'sh0; // @[Parameters.scala 138:67]
  wire [8:0] _requestAIO_T_5 = auto_in_a_bits_address ^ 9'h44; // @[Parameters.scala 138:31]
  wire [9:0] _requestAIO_T_6 = {1'b0,$signed(_requestAIO_T_5)}; // @[Parameters.scala 138:49]
  wire [9:0] _requestAIO_T_8 = $signed(_requestAIO_T_6) & 10'sh1f4; // @[Parameters.scala 138:52]
  wire  _requestAIO_T_9 = $signed(_requestAIO_T_8) == 10'sh0; // @[Parameters.scala 138:67]
  wire [8:0] _requestAIO_T_10 = auto_in_a_bits_address ^ 9'h58; // @[Parameters.scala 138:31]
  wire [9:0] _requestAIO_T_11 = {1'b0,$signed(_requestAIO_T_10)}; // @[Parameters.scala 138:49]
  wire [9:0] _requestAIO_T_13 = $signed(_requestAIO_T_11) & 10'sh1f8; // @[Parameters.scala 138:52]
  wire  _requestAIO_T_14 = $signed(_requestAIO_T_13) == 10'sh0; // @[Parameters.scala 138:67]
  wire [8:0] _requestAIO_T_15 = auto_in_a_bits_address ^ 9'h60; // @[Parameters.scala 138:31]
  wire [9:0] _requestAIO_T_16 = {1'b0,$signed(_requestAIO_T_15)}; // @[Parameters.scala 138:49]
  wire [9:0] _requestAIO_T_18 = $signed(_requestAIO_T_16) & 10'sh1e0; // @[Parameters.scala 138:52]
  wire  _requestAIO_T_19 = $signed(_requestAIO_T_18) == 10'sh0; // @[Parameters.scala 138:67]
  wire [8:0] _requestAIO_T_20 = auto_in_a_bits_address ^ 9'h80; // @[Parameters.scala 138:31]
  wire [9:0] _requestAIO_T_21 = {1'b0,$signed(_requestAIO_T_20)}; // @[Parameters.scala 138:49]
  wire [9:0] _requestAIO_T_23 = $signed(_requestAIO_T_21) & 10'sh180; // @[Parameters.scala 138:52]
  wire  _requestAIO_T_24 = $signed(_requestAIO_T_23) == 10'sh0; // @[Parameters.scala 138:67]
  wire [8:0] _requestAIO_T_25 = auto_in_a_bits_address ^ 9'h100; // @[Parameters.scala 138:31]
  wire [9:0] _requestAIO_T_26 = {1'b0,$signed(_requestAIO_T_25)}; // @[Parameters.scala 138:49]
  wire [9:0] _requestAIO_T_28 = $signed(_requestAIO_T_26) & 10'sh100; // @[Parameters.scala 138:52]
  wire  _requestAIO_T_29 = $signed(_requestAIO_T_28) == 10'sh0; // @[Parameters.scala 138:67]
  wire  requestAIO_0_0 = ((((_requestAIO_T_4 | _requestAIO_T_9) | _requestAIO_T_14) | _requestAIO_T_19) |
    _requestAIO_T_24) | _requestAIO_T_29; // @[Xbar.scala 363:92]
  wire [8:0] _requestAIO_T_35 = auto_in_a_bits_address ^ 9'h40; // @[Parameters.scala 138:31]
  wire [9:0] _requestAIO_T_36 = {1'b0,$signed(_requestAIO_T_35)}; // @[Parameters.scala 138:49]
  wire [9:0] _requestAIO_T_38 = $signed(_requestAIO_T_36) & 10'sh1f4; // @[Parameters.scala 138:52]
  wire  _requestAIO_T_39 = $signed(_requestAIO_T_38) == 10'sh0; // @[Parameters.scala 138:67]
  wire [8:0] _requestAIO_T_40 = auto_in_a_bits_address ^ 9'h50; // @[Parameters.scala 138:31]
  wire [9:0] _requestAIO_T_41 = {1'b0,$signed(_requestAIO_T_40)}; // @[Parameters.scala 138:49]
  wire [9:0] _requestAIO_T_43 = $signed(_requestAIO_T_41) & 10'sh1f8; // @[Parameters.scala 138:52]
  wire  _requestAIO_T_44 = $signed(_requestAIO_T_43) == 10'sh0; // @[Parameters.scala 138:67]
  wire  requestAIO_0_1 = _requestAIO_T_39 | _requestAIO_T_44; // @[Xbar.scala 363:92]
  reg  beatsLeft; // @[Arbiter.scala 88:30]
  wire  idle = ~beatsLeft; // @[Arbiter.scala 89:28]
  wire  latch = idle & auto_in_d_ready; // @[Arbiter.scala 90:24]
  wire [1:0] readys_filter_left = {auto_out_1_d_valid,auto_out_0_d_valid}; // @[Cat.scala 29:58]
  reg [1:0] readys_mask; // @[Arbiter.scala 24:23]
  wire [1:0] _readys_filter_T = ~readys_mask; // @[Arbiter.scala 25:30]
  wire [1:0] readys_filter_right = readys_filter_left & _readys_filter_T; // @[Arbiter.scala 25:28]
  wire [3:0] readys_filter = {readys_filter_right,auto_out_1_d_valid,auto_out_0_d_valid}; // @[Cat.scala 29:58]
  wire [3:0] _GEN_1 = {{1'd0}, readys_filter[3:1]}; // @[package.scala 231:43]
  wire [3:0] _readys_unready_T_1 = readys_filter | _GEN_1; // @[package.scala 231:43]
  wire [3:0] _readys_unready_T_4 = {readys_mask, 2'h0}; // @[Arbiter.scala 26:66]
  wire [3:0] _GEN_2 = {{1'd0}, _readys_unready_T_1[3:1]}; // @[Arbiter.scala 26:58]
  wire [3:0] readys_unready = _GEN_2 | _readys_unready_T_4; // @[Arbiter.scala 26:58]
  wire [1:0] _readys_readys_T_2 = (readys_unready[3:2]) & (readys_unready[1:0]); // @[Arbiter.scala 27:39]
  wire [1:0] readys_readys = ~_readys_readys_T_2; // @[Arbiter.scala 27:18]
  wire  _readys_T_6 = latch & (|readys_filter_left); // @[Arbiter.scala 28:18]
  wire [1:0] _readys_readys_mask_T = readys_readys & readys_filter_left; // @[Arbiter.scala 29:29]
  wire [2:0] _readys_readys_mask_T_1 = {_readys_readys_mask_T, 1'h0}; // @[package.scala 222:48]
  wire [1:0] _readys_readys_mask_T_3 = _readys_readys_mask_T | (_readys_readys_mask_T_1[1:0]); // @[package.scala 222:43]
  wire  readys_0 = readys_readys[0]; // @[Arbiter.scala 96:86]
  wire  readys_1 = readys_readys[1]; // @[Arbiter.scala 96:86]
  wire  earlyWinner_0 = readys_0 & auto_out_0_d_valid; // @[Arbiter.scala 98:79]
  wire  earlyWinner_1 = readys_1 & auto_out_1_d_valid; // @[Arbiter.scala 98:79]
  wire  _prefixOR_T = earlyWinner_0 | earlyWinner_1; // @[Arbiter.scala 105:53]
  wire  _T_10 = auto_out_0_d_valid | auto_out_1_d_valid; // @[Arbiter.scala 108:36]
  wire  _T_11 = ~(auto_out_0_d_valid | auto_out_1_d_valid); // @[Arbiter.scala 108:15]
  reg  state_0; // @[Arbiter.scala 117:26]
  wire  muxStateEarly_0 = idle ? earlyWinner_0 : state_0; // @[Arbiter.scala 118:30]
  reg  state_1; // @[Arbiter.scala 117:26]
  wire  muxStateEarly_1 = idle ? earlyWinner_1 : state_1; // @[Arbiter.scala 118:30]
  wire  _sink_ACancel_5_earlyValid_T_3 = (state_0 & auto_out_0_d_valid) | (state_1 & auto_out_1_d_valid); // @[Mux.scala 27:72]
  wire  sink_ACancel_5_earlyValid = idle ? _T_10 : _sink_ACancel_5_earlyValid_T_3; // @[Arbiter.scala 126:29]
  wire  _beatsLeft_T_2 = auto_in_d_ready & sink_ACancel_5_earlyValid; // @[ReadyValidCancel.scala 52:33]
  wire  allowed_0 = idle ? readys_0 : state_0; // @[Arbiter.scala 122:24]
  wire  allowed_1 = idle ? readys_1 : state_1; // @[Arbiter.scala 122:24]
  wire [42:0] _T_24 = {auto_out_0_d_bits_opcode,auto_out_0_d_bits_param,auto_out_0_d_bits_size,auto_out_0_d_bits_source,
    auto_out_0_d_bits_sink,auto_out_0_d_bits_denied,auto_out_0_d_bits_data,auto_out_0_d_bits_corrupt}; // @[Mux.scala 27:72]
  wire [42:0] _T_25 = muxStateEarly_0 ? _T_24 : 43'h0; // @[Mux.scala 27:72]
  wire [42:0] _T_26 = {auto_out_1_d_bits_opcode,2'h0,3'h4,2'h0,auto_out_1_d_bits_data,1'h0}; // @[Mux.scala 27:72]
  wire [42:0] _T_27 = muxStateEarly_1 ? _T_26 : 43'h0; // @[Mux.scala 27:72]
  wire [42:0] _T_28 = _T_25 | _T_27; // @[Mux.scala 27:72]
  TLMonitor_31 monitor ( // @[Nodes.scala 25:25]
    .clock(monitor_clock),
    .reset(monitor_reset),
    .io_in_a_ready(monitor_io_in_a_ready),
    .io_in_a_valid(monitor_io_in_a_valid),
    .io_in_a_bits_opcode(monitor_io_in_a_bits_opcode),
    .io_in_a_bits_address(monitor_io_in_a_bits_address),
    .io_in_d_ready(monitor_io_in_d_ready),
    .io_in_d_valid(monitor_io_in_d_valid),
    .io_in_d_bits_opcode(monitor_io_in_d_bits_opcode),
    .io_in_d_bits_param(monitor_io_in_d_bits_param),
    .io_in_d_bits_size(monitor_io_in_d_bits_size),
    .io_in_d_bits_sink(monitor_io_in_d_bits_sink),
    .io_in_d_bits_denied(monitor_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(monitor_io_in_d_bits_corrupt)
  );
  assign auto_in_a_ready = (requestAIO_0_0 & auto_out_0_a_ready) | (requestAIO_0_1 & auto_out_1_a_ready); // @[Mux.scala 27:72]
  assign auto_in_d_valid = idle ? _T_10 : _sink_ACancel_5_earlyValid_T_3; // @[Arbiter.scala 126:29]
  assign auto_in_d_bits_denied = _T_28[33]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_data = _T_28[32:1]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_corrupt = _T_28[0]; // @[Mux.scala 27:72]
  assign auto_out_1_a_valid = auto_in_a_valid & requestAIO_0_1; // @[Xbar.scala 428:50]
  assign auto_out_1_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_1_a_bits_address = auto_in_a_bits_address[6:0]; // @[Xbar.scala 132:50 BundleMap.scala 248:19]
  assign auto_out_1_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_1_d_ready = auto_in_d_ready & allowed_1; // @[Arbiter.scala 124:31]
  assign auto_out_0_a_valid = auto_in_a_valid & requestAIO_0_0; // @[Xbar.scala 428:50]
  assign auto_out_0_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_0_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_0_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_0_d_ready = auto_in_d_ready & allowed_0; // @[Arbiter.scala 124:31]
  assign monitor_clock = clock;
  assign monitor_reset = reset;
  assign monitor_io_in_a_ready = (requestAIO_0_0 & auto_out_0_a_ready) | (requestAIO_0_1 & auto_out_1_a_ready); // @[Mux.scala 27:72]
  assign monitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign monitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign monitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign monitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign monitor_io_in_d_valid = idle ? _T_10 : _sink_ACancel_5_earlyValid_T_3; // @[Arbiter.scala 126:29]
  assign monitor_io_in_d_bits_opcode = _T_28[42:40]; // @[Mux.scala 27:72]
  assign monitor_io_in_d_bits_param = _T_28[39:38]; // @[Mux.scala 27:72]
  assign monitor_io_in_d_bits_size = _T_28[37:36]; // @[Mux.scala 27:72]
  assign monitor_io_in_d_bits_sink = _T_28[34]; // @[Mux.scala 27:72]
  assign monitor_io_in_d_bits_denied = _T_28[33]; // @[Mux.scala 27:72]
  assign monitor_io_in_d_bits_corrupt = _T_28[0]; // @[Mux.scala 27:72]
  always @(posedge clock) begin
    if (reset) begin // @[Arbiter.scala 88:30]
      beatsLeft <= 1'h0; // @[Arbiter.scala 88:30]
    end else if (latch) begin // @[Arbiter.scala 114:23]
      beatsLeft <= 1'h0;
    end else begin
      beatsLeft <= beatsLeft - _beatsLeft_T_2;
    end
    if (reset) begin // @[Arbiter.scala 24:23]
      readys_mask <= 2'h3; // @[Arbiter.scala 24:23]
    end else if (_readys_T_6) begin // @[Arbiter.scala 28:32]
      readys_mask <= _readys_readys_mask_T_3; // @[Arbiter.scala 29:12]
    end
    if (reset) begin // @[Arbiter.scala 117:26]
      state_0 <= 1'h0; // @[Arbiter.scala 117:26]
    end else if (idle) begin // @[Arbiter.scala 118:30]
      state_0 <= earlyWinner_0;
    end
    if (reset) begin // @[Arbiter.scala 117:26]
      state_1 <= 1'h0; // @[Arbiter.scala 117:26]
    end else if (idle) begin // @[Arbiter.scala 118:30]
      state_1 <= earlyWinner_1;
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
  beatsLeft = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  readys_mask = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  state_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  state_1 = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
