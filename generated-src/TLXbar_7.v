module TLXbar_7(
  input         clock,
  input         reset,
  output        auto_in_1_a_ready,
  input         auto_in_1_a_valid,
  input  [31:0] auto_in_1_a_bits_address,
  output        auto_in_1_d_valid,
  output [2:0]  auto_in_1_d_bits_opcode,
  output [3:0]  auto_in_1_d_bits_size,
  output [63:0] auto_in_1_d_bits_data,
  output        auto_in_1_d_bits_corrupt,
  output        auto_in_0_a_ready,
  input         auto_in_0_a_valid,
  input  [2:0]  auto_in_0_a_bits_opcode,
  input  [2:0]  auto_in_0_a_bits_param,
  input  [3:0]  auto_in_0_a_bits_size,
  input         auto_in_0_a_bits_source,
  input  [31:0] auto_in_0_a_bits_address,
  input  [7:0]  auto_in_0_a_bits_mask,
  input  [63:0] auto_in_0_a_bits_data,
  input         auto_in_0_b_ready,
  output        auto_in_0_b_valid,
  output [1:0]  auto_in_0_b_bits_param,
  output [3:0]  auto_in_0_b_bits_size,
  output        auto_in_0_b_bits_source,
  output [31:0] auto_in_0_b_bits_address,
  output        auto_in_0_c_ready,
  input         auto_in_0_c_valid,
  input  [2:0]  auto_in_0_c_bits_opcode,
  input  [2:0]  auto_in_0_c_bits_param,
  input  [3:0]  auto_in_0_c_bits_size,
  input         auto_in_0_c_bits_source,
  input  [31:0] auto_in_0_c_bits_address,
  input  [63:0] auto_in_0_c_bits_data,
  input         auto_in_0_d_ready,
  output        auto_in_0_d_valid,
  output [2:0]  auto_in_0_d_bits_opcode,
  output [1:0]  auto_in_0_d_bits_param,
  output [3:0]  auto_in_0_d_bits_size,
  output        auto_in_0_d_bits_source,
  output [1:0]  auto_in_0_d_bits_sink,
  output        auto_in_0_d_bits_denied,
  output [63:0] auto_in_0_d_bits_data,
  output        auto_in_0_e_ready,
  input         auto_in_0_e_valid,
  input  [1:0]  auto_in_0_e_bits_sink,
  input         auto_out_a_ready,
  output        auto_out_a_valid,
  output [2:0]  auto_out_a_bits_opcode,
  output [2:0]  auto_out_a_bits_param,
  output [3:0]  auto_out_a_bits_size,
  output [1:0]  auto_out_a_bits_source,
  output [31:0] auto_out_a_bits_address,
  output [7:0]  auto_out_a_bits_mask,
  output [63:0] auto_out_a_bits_data,
  output        auto_out_a_bits_corrupt,
  output        auto_out_b_ready,
  input         auto_out_b_valid,
  input  [1:0]  auto_out_b_bits_param,
  input  [3:0]  auto_out_b_bits_size,
  input  [1:0]  auto_out_b_bits_source,
  input  [31:0] auto_out_b_bits_address,
  input         auto_out_c_ready,
  output        auto_out_c_valid,
  output [2:0]  auto_out_c_bits_opcode,
  output [2:0]  auto_out_c_bits_param,
  output [3:0]  auto_out_c_bits_size,
  output [1:0]  auto_out_c_bits_source,
  output [31:0] auto_out_c_bits_address,
  output [63:0] auto_out_c_bits_data,
  output        auto_out_d_ready,
  input         auto_out_d_valid,
  input  [2:0]  auto_out_d_bits_opcode,
  input  [1:0]  auto_out_d_bits_param,
  input  [3:0]  auto_out_d_bits_size,
  input  [1:0]  auto_out_d_bits_source,
  input  [1:0]  auto_out_d_bits_sink,
  input         auto_out_d_bits_denied,
  input  [63:0] auto_out_d_bits_data,
  input         auto_out_d_bits_corrupt,
  input         auto_out_e_ready,
  output        auto_out_e_valid,
  output [1:0]  auto_out_e_bits_sink
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  requestBOI_0_0 = ~(auto_out_b_bits_source[1]); // @[Parameters.scala 55:32]
  wire  requestDOI_0_0 = ~(auto_out_d_bits_source[1]); // @[Parameters.scala 55:32]
  wire  requestDOI_0_1 = auto_out_d_bits_source == 2'h2; // @[Parameters.scala 47:9]
  wire [26:0] _beatsAI_decode_T_1 = 27'hfff << auto_in_0_a_bits_size; // @[package.scala 212:77]
  wire [11:0] _beatsAI_decode_T_3 = ~(_beatsAI_decode_T_1[11:0]); // @[package.scala 212:46]
  wire [8:0] beatsAI_decode = _beatsAI_decode_T_3[11:3]; // @[Edges.scala 221:59]
  wire  beatsAI_opdata = ~(auto_in_0_a_bits_opcode[2]); // @[Edges.scala 93:28]
  reg [8:0] beatsLeft; // @[Arbiter.scala 88:30]
  wire  idle = beatsLeft == 9'h0; // @[Arbiter.scala 89:28]
  wire  latch = idle & auto_out_a_ready; // @[Arbiter.scala 90:24]
  wire [1:0] readys_filter_left = {auto_in_1_a_valid,auto_in_0_a_valid}; // @[Cat.scala 29:58]
  reg [1:0] readys_mask; // @[Arbiter.scala 24:23]
  wire [1:0] _readys_filter_T = ~readys_mask; // @[Arbiter.scala 25:30]
  wire [1:0] readys_filter_right = readys_filter_left & _readys_filter_T; // @[Arbiter.scala 25:28]
  wire [3:0] readys_filter = {readys_filter_right,auto_in_1_a_valid,auto_in_0_a_valid}; // @[Cat.scala 29:58]
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
  wire  earlyWinner_0 = readys_0 & auto_in_0_a_valid; // @[Arbiter.scala 98:79]
  wire  earlyWinner_1 = readys_1 & auto_in_1_a_valid; // @[Arbiter.scala 98:79]
  wire  _prefixOR_T = earlyWinner_0 | earlyWinner_1; // @[Arbiter.scala 105:53]
  wire  _T_10 = auto_in_0_a_valid | auto_in_1_a_valid; // @[Arbiter.scala 108:36]
  wire  _T_11 = ~(auto_in_0_a_valid | auto_in_1_a_valid); // @[Arbiter.scala 108:15]
  reg  state_0; // @[Arbiter.scala 117:26]
  wire  muxStateEarly_0 = idle ? earlyWinner_0 : state_0; // @[Arbiter.scala 118:30]
  reg  state_1; // @[Arbiter.scala 117:26]
  wire  muxStateEarly_1 = idle ? earlyWinner_1 : state_1; // @[Arbiter.scala 118:30]
  wire  _out_0_a_earlyValid_T_3 = (state_0 & auto_in_0_a_valid) | (state_1 & auto_in_1_a_valid); // @[Mux.scala 27:72]
  wire  out_0_a_earlyValid = idle ? _T_10 : _out_0_a_earlyValid_T_3; // @[Arbiter.scala 126:29]
  wire  _beatsLeft_T_2 = auto_out_a_ready & out_0_a_earlyValid; // @[ReadyValidCancel.scala 52:33]
  wire [8:0] _GEN_3 = {{8'd0}, _beatsLeft_T_2}; // @[Arbiter.scala 114:52]
  wire [8:0] _beatsLeft_T_4 = beatsLeft - _GEN_3; // @[Arbiter.scala 114:52]
  wire  allowed_0 = idle ? readys_0 : state_0; // @[Arbiter.scala 122:24]
  wire  allowed_1 = idle ? readys_1 : state_1; // @[Arbiter.scala 122:24]
  wire [1:0] in_0_a_bits_source = {{1'd0}, auto_in_0_a_bits_source}; // @[Xbar.scala 231:18 Xbar.scala 237:29]
  wire [116:0] _T_24 = {auto_in_0_a_bits_opcode,auto_in_0_a_bits_param,auto_in_0_a_bits_size,in_0_a_bits_source,
    auto_in_0_a_bits_address,auto_in_0_a_bits_mask,auto_in_0_a_bits_data,1'h0}; // @[Mux.scala 27:72]
  wire [116:0] _T_25 = muxStateEarly_0 ? _T_24 : 117'h0; // @[Mux.scala 27:72]
  wire [116:0] _T_26 = {12'h81a,auto_in_1_a_bits_address,8'hff,65'h0}; // @[Mux.scala 27:72]
  wire [116:0] _T_27 = muxStateEarly_1 ? _T_26 : 117'h0; // @[Mux.scala 27:72]
  wire [116:0] _T_28 = _T_25 | _T_27; // @[Mux.scala 27:72]
  assign auto_in_1_a_ready = auto_out_a_ready & allowed_1; // @[Arbiter.scala 124:31]
  assign auto_in_1_d_valid = auto_out_d_valid & requestDOI_0_1; // @[Xbar.scala 179:40]
  assign auto_in_1_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_1_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_1_d_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_1_d_bits_corrupt = auto_out_d_bits_corrupt; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_0_a_ready = auto_out_a_ready & allowed_0; // @[Arbiter.scala 124:31]
  assign auto_in_0_b_valid = auto_out_b_valid & requestBOI_0_0; // @[Xbar.scala 179:40]
  assign auto_in_0_b_bits_param = auto_out_b_bits_param; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_0_b_bits_size = auto_out_b_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_0_b_bits_source = auto_out_b_bits_source[0]; // @[Xbar.scala 228:69]
  assign auto_in_0_b_bits_address = auto_out_b_bits_address; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_0_c_ready = auto_out_c_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_0_d_valid = auto_out_d_valid & requestDOI_0_0; // @[Xbar.scala 179:40]
  assign auto_in_0_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_0_d_bits_param = auto_out_d_bits_param; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_0_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_0_d_bits_source = auto_out_d_bits_source[0]; // @[Xbar.scala 228:69]
  assign auto_in_0_d_bits_sink = auto_out_d_bits_sink; // @[Xbar.scala 323:53]
  assign auto_in_0_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_0_d_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_0_e_ready = auto_out_e_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_out_a_valid = idle ? _T_10 : _out_0_a_earlyValid_T_3; // @[Arbiter.scala 126:29]
  assign auto_out_a_bits_opcode = _T_28[116:114]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_param = _T_28[113:111]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_size = _T_28[110:107]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_source = _T_28[106:105]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_address = _T_28[104:73]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_mask = _T_28[72:65]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_data = _T_28[64:1]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_corrupt = _T_28[0]; // @[Mux.scala 27:72]
  assign auto_out_b_ready = requestBOI_0_0 & auto_in_0_b_ready; // @[Mux.scala 27:72]
  assign auto_out_c_valid = auto_in_0_c_valid; // @[ReadyValidCancel.scala 23:38]
  assign auto_out_c_bits_opcode = auto_in_0_c_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_c_bits_param = auto_in_0_c_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_c_bits_size = auto_in_0_c_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_c_bits_source = {{1'd0}, auto_in_0_c_bits_source}; // @[Xbar.scala 231:18 Xbar.scala 259:29]
  assign auto_out_c_bits_address = auto_in_0_c_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_c_bits_data = auto_in_0_c_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_d_ready = (requestDOI_0_0 & auto_in_0_d_ready) | requestDOI_0_1; // @[Mux.scala 27:72]
  assign auto_out_e_valid = auto_in_0_e_valid; // @[ReadyValidCancel.scala 23:38]
  assign auto_out_e_bits_sink = auto_in_0_e_bits_sink; // @[Xbar.scala 228:69]
  always @(posedge clock) begin
    if (reset) begin // @[Arbiter.scala 88:30]
      beatsLeft <= 9'h0; // @[Arbiter.scala 88:30]
    end else if (latch) begin // @[Arbiter.scala 114:23]
      if (earlyWinner_0) begin // @[Arbiter.scala 112:73]
        if (beatsAI_opdata) begin // @[Edges.scala 222:14]
          beatsLeft <= beatsAI_decode;
        end else begin
          beatsLeft <= 9'h0;
        end
      end else begin
        beatsLeft <= 9'h0;
      end
    end else begin
      beatsLeft <= _beatsLeft_T_4;
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
  beatsLeft = _RAND_0[8:0];
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
