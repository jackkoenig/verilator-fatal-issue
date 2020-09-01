module TLXbar_5(
  input         clock,
  input         reset,
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [3:0]  auto_in_a_bits_size,
  input  [4:0]  auto_in_a_bits_source,
  input  [27:0] auto_in_a_bits_address,
  input  [7:0]  auto_in_a_bits_mask,
  input  [63:0] auto_in_a_bits_data,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output [2:0]  auto_in_d_bits_opcode,
  output [1:0]  auto_in_d_bits_param,
  output [3:0]  auto_in_d_bits_size,
  output [4:0]  auto_in_d_bits_source,
  output        auto_in_d_bits_sink,
  output        auto_in_d_bits_denied,
  output [63:0] auto_in_d_bits_data,
  output        auto_in_d_bits_corrupt,
  input         auto_out_4_a_ready,
  output        auto_out_4_a_valid,
  output [2:0]  auto_out_4_a_bits_size,
  output [4:0]  auto_out_4_a_bits_source,
  output [16:0] auto_out_4_a_bits_address,
  output [7:0]  auto_out_4_a_bits_mask,
  output        auto_out_4_d_ready,
  input         auto_out_4_d_valid,
  input  [2:0]  auto_out_4_d_bits_size,
  input  [4:0]  auto_out_4_d_bits_source,
  input  [63:0] auto_out_4_d_bits_data,
  input         auto_out_3_a_ready,
  output        auto_out_3_a_valid,
  output [2:0]  auto_out_3_a_bits_opcode,
  output [2:0]  auto_out_3_a_bits_size,
  output [4:0]  auto_out_3_a_bits_source,
  output [11:0] auto_out_3_a_bits_address,
  output [7:0]  auto_out_3_a_bits_mask,
  output [63:0] auto_out_3_a_bits_data,
  output        auto_out_3_d_ready,
  input         auto_out_3_d_valid,
  input  [2:0]  auto_out_3_d_bits_opcode,
  input  [2:0]  auto_out_3_d_bits_size,
  input  [4:0]  auto_out_3_d_bits_source,
  input  [63:0] auto_out_3_d_bits_data,
  input         auto_out_2_a_ready,
  output        auto_out_2_a_valid,
  output [2:0]  auto_out_2_a_bits_opcode,
  output [2:0]  auto_out_2_a_bits_size,
  output [4:0]  auto_out_2_a_bits_source,
  output [25:0] auto_out_2_a_bits_address,
  output [7:0]  auto_out_2_a_bits_mask,
  output [63:0] auto_out_2_a_bits_data,
  output        auto_out_2_d_ready,
  input         auto_out_2_d_valid,
  input  [2:0]  auto_out_2_d_bits_opcode,
  input  [2:0]  auto_out_2_d_bits_size,
  input  [4:0]  auto_out_2_d_bits_source,
  input  [63:0] auto_out_2_d_bits_data,
  input         auto_out_1_a_ready,
  output        auto_out_1_a_valid,
  output [2:0]  auto_out_1_a_bits_opcode,
  output [2:0]  auto_out_1_a_bits_size,
  output [4:0]  auto_out_1_a_bits_source,
  output [27:0] auto_out_1_a_bits_address,
  output [7:0]  auto_out_1_a_bits_mask,
  output [63:0] auto_out_1_a_bits_data,
  output        auto_out_1_d_ready,
  input         auto_out_1_d_valid,
  input  [2:0]  auto_out_1_d_bits_opcode,
  input  [2:0]  auto_out_1_d_bits_size,
  input  [4:0]  auto_out_1_d_bits_source,
  input  [63:0] auto_out_1_d_bits_data,
  input         auto_out_0_a_ready,
  output        auto_out_0_a_valid,
  output [2:0]  auto_out_0_a_bits_opcode,
  output [3:0]  auto_out_0_a_bits_size,
  output [4:0]  auto_out_0_a_bits_source,
  output        auto_out_0_d_ready,
  input         auto_out_0_d_valid,
  input  [2:0]  auto_out_0_d_bits_opcode,
  input  [1:0]  auto_out_0_d_bits_param,
  input  [3:0]  auto_out_0_d_bits_size,
  input  [4:0]  auto_out_0_d_bits_source,
  input         auto_out_0_d_bits_sink,
  input         auto_out_0_d_bits_denied,
  input  [63:0] auto_out_0_d_bits_data,
  input         auto_out_0_d_bits_corrupt
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg [8:0] beatsLeft; // @[Arbiter.scala 88:30]
  wire  idle = beatsLeft == 9'h0; // @[Arbiter.scala 89:28]
  wire [4:0] readys_filter_left = {auto_out_4_d_valid,auto_out_3_d_valid,auto_out_2_d_valid,auto_out_1_d_valid,
    auto_out_0_d_valid}; // @[Cat.scala 29:58]
  reg [4:0] readys_mask; // @[Arbiter.scala 24:23]
  wire [4:0] _readys_filter_T = ~readys_mask; // @[Arbiter.scala 25:30]
  wire [4:0] readys_filter_right = readys_filter_left & _readys_filter_T; // @[Arbiter.scala 25:28]
  wire [9:0] readys_filter = {readys_filter_right,auto_out_4_d_valid,auto_out_3_d_valid,auto_out_2_d_valid,
    auto_out_1_d_valid,auto_out_0_d_valid}; // @[Cat.scala 29:58]
  wire [9:0] _GEN_1 = {{1'd0}, readys_filter[9:1]}; // @[package.scala 231:43]
  wire [9:0] _readys_unready_T_1 = readys_filter | _GEN_1; // @[package.scala 231:43]
  wire [9:0] _GEN_2 = {{2'd0}, _readys_unready_T_1[9:2]}; // @[package.scala 231:43]
  wire [9:0] _readys_unready_T_3 = _readys_unready_T_1 | _GEN_2; // @[package.scala 231:43]
  wire [9:0] _GEN_3 = {{4'd0}, _readys_unready_T_3[9:4]}; // @[package.scala 231:43]
  wire [9:0] _readys_unready_T_5 = _readys_unready_T_3 | _GEN_3; // @[package.scala 231:43]
  wire [9:0] _readys_unready_T_8 = {readys_mask, 5'h0}; // @[Arbiter.scala 26:66]
  wire [9:0] _GEN_4 = {{1'd0}, _readys_unready_T_5[9:1]}; // @[Arbiter.scala 26:58]
  wire [9:0] readys_unready = _GEN_4 | _readys_unready_T_8; // @[Arbiter.scala 26:58]
  wire [4:0] _readys_readys_T_2 = (readys_unready[9:5]) & (readys_unready[4:0]); // @[Arbiter.scala 27:39]
  wire [4:0] readys_readys = ~_readys_readys_T_2; // @[Arbiter.scala 27:18]
  wire  readys_0 = readys_readys[0]; // @[Arbiter.scala 96:86]
  wire  earlyWinner_0 = readys_0 & auto_out_0_d_valid; // @[Arbiter.scala 98:79]
  reg  state_0; // @[Arbiter.scala 117:26]
  wire  muxStateEarly_0 = idle ? earlyWinner_0 : state_0; // @[Arbiter.scala 118:30]
  wire [80:0] _T_48 = {auto_out_0_d_bits_opcode,auto_out_0_d_bits_param,auto_out_0_d_bits_size,auto_out_0_d_bits_source,
    auto_out_0_d_bits_sink,auto_out_0_d_bits_denied,auto_out_0_d_bits_data,auto_out_0_d_bits_corrupt}; // @[Mux.scala 27:72]
  wire [80:0] _T_49 = muxStateEarly_0 ? _T_48 : 81'h0; // @[Mux.scala 27:72]
  wire  readys_1 = readys_readys[1]; // @[Arbiter.scala 96:86]
  wire  earlyWinner_1 = readys_1 & auto_out_1_d_valid; // @[Arbiter.scala 98:79]
  reg  state_1; // @[Arbiter.scala 117:26]
  wire  muxStateEarly_1 = idle ? earlyWinner_1 : state_1; // @[Arbiter.scala 118:30]
  wire [3:0] out__1_d_bits_size = {{1'd0}, auto_out_1_d_bits_size}; // @[Xbar.scala 288:19 BundleMap.scala 248:19]
  wire [80:0] _T_50 = {auto_out_1_d_bits_opcode,2'h0,out__1_d_bits_size,auto_out_1_d_bits_source,2'h0,
    auto_out_1_d_bits_data,1'h0}; // @[Mux.scala 27:72]
  wire [80:0] _T_51 = muxStateEarly_1 ? _T_50 : 81'h0; // @[Mux.scala 27:72]
  wire [80:0] _T_58 = _T_49 | _T_51; // @[Mux.scala 27:72]
  wire  readys_2 = readys_readys[2]; // @[Arbiter.scala 96:86]
  wire  earlyWinner_2 = readys_2 & auto_out_2_d_valid; // @[Arbiter.scala 98:79]
  reg  state_2; // @[Arbiter.scala 117:26]
  wire  muxStateEarly_2 = idle ? earlyWinner_2 : state_2; // @[Arbiter.scala 118:30]
  wire [3:0] out__2_d_bits_size = {{1'd0}, auto_out_2_d_bits_size}; // @[Xbar.scala 288:19 BundleMap.scala 248:19]
  wire [80:0] _T_52 = {auto_out_2_d_bits_opcode,2'h0,out__2_d_bits_size,auto_out_2_d_bits_source,2'h0,
    auto_out_2_d_bits_data,1'h0}; // @[Mux.scala 27:72]
  wire [80:0] _T_53 = muxStateEarly_2 ? _T_52 : 81'h0; // @[Mux.scala 27:72]
  wire [80:0] _T_59 = _T_58 | _T_53; // @[Mux.scala 27:72]
  wire  readys_3 = readys_readys[3]; // @[Arbiter.scala 96:86]
  wire  earlyWinner_3 = readys_3 & auto_out_3_d_valid; // @[Arbiter.scala 98:79]
  reg  state_3; // @[Arbiter.scala 117:26]
  wire  muxStateEarly_3 = idle ? earlyWinner_3 : state_3; // @[Arbiter.scala 118:30]
  wire [3:0] out__3_d_bits_size = {{1'd0}, auto_out_3_d_bits_size}; // @[Xbar.scala 288:19 BundleMap.scala 248:19]
  wire [80:0] _T_54 = {auto_out_3_d_bits_opcode,2'h0,out__3_d_bits_size,auto_out_3_d_bits_source,2'h0,
    auto_out_3_d_bits_data,1'h0}; // @[Mux.scala 27:72]
  wire [80:0] _T_55 = muxStateEarly_3 ? _T_54 : 81'h0; // @[Mux.scala 27:72]
  wire [80:0] _T_60 = _T_59 | _T_55; // @[Mux.scala 27:72]
  wire  readys_4 = readys_readys[4]; // @[Arbiter.scala 96:86]
  wire  earlyWinner_4 = readys_4 & auto_out_4_d_valid; // @[Arbiter.scala 98:79]
  reg  state_4; // @[Arbiter.scala 117:26]
  wire  muxStateEarly_4 = idle ? earlyWinner_4 : state_4; // @[Arbiter.scala 118:30]
  wire [3:0] out__4_d_bits_size = {{1'd0}, auto_out_4_d_bits_size}; // @[Xbar.scala 288:19 BundleMap.scala 248:19]
  wire [80:0] _T_56 = {5'h4,out__4_d_bits_size,auto_out_4_d_bits_source,2'h0,auto_out_4_d_bits_data,1'h0}; // @[Mux.scala 27:72]
  wire [80:0] _T_57 = muxStateEarly_4 ? _T_56 : 81'h0; // @[Mux.scala 27:72]
  wire [80:0] _T_61 = _T_60 | _T_57; // @[Mux.scala 27:72]
  wire [27:0] _requestAIO_T = auto_in_a_bits_address ^ 28'h2000; // @[Parameters.scala 138:31]
  wire [28:0] _requestAIO_T_1 = {1'b0,$signed(_requestAIO_T)}; // @[Parameters.scala 138:49]
  wire [28:0] _requestAIO_T_3 = $signed(_requestAIO_T_1) & 29'sha012000; // @[Parameters.scala 138:52]
  wire  requestAIO_0_0 = $signed(_requestAIO_T_3) == 29'sh0; // @[Parameters.scala 138:67]
  wire [27:0] _requestAIO_T_5 = auto_in_a_bits_address ^ 28'h8000000; // @[Parameters.scala 138:31]
  wire [28:0] _requestAIO_T_6 = {1'b0,$signed(_requestAIO_T_5)}; // @[Parameters.scala 138:49]
  wire [28:0] _requestAIO_T_8 = $signed(_requestAIO_T_6) & 29'sh8000000; // @[Parameters.scala 138:52]
  wire  requestAIO_0_1 = $signed(_requestAIO_T_8) == 29'sh0; // @[Parameters.scala 138:67]
  wire [27:0] _requestAIO_T_10 = auto_in_a_bits_address ^ 28'h2000000; // @[Parameters.scala 138:31]
  wire [28:0] _requestAIO_T_11 = {1'b0,$signed(_requestAIO_T_10)}; // @[Parameters.scala 138:49]
  wire [28:0] _requestAIO_T_13 = $signed(_requestAIO_T_11) & 29'sha010000; // @[Parameters.scala 138:52]
  wire  requestAIO_0_2 = $signed(_requestAIO_T_13) == 29'sh0; // @[Parameters.scala 138:67]
  wire [28:0] _requestAIO_T_16 = {1'b0,$signed(auto_in_a_bits_address)}; // @[Parameters.scala 138:49]
  wire [28:0] _requestAIO_T_18 = $signed(_requestAIO_T_16) & 29'sha012000; // @[Parameters.scala 138:52]
  wire  requestAIO_0_3 = $signed(_requestAIO_T_18) == 29'sh0; // @[Parameters.scala 138:67]
  wire [27:0] _requestAIO_T_20 = auto_in_a_bits_address ^ 28'h10000; // @[Parameters.scala 138:31]
  wire [28:0] _requestAIO_T_21 = {1'b0,$signed(_requestAIO_T_20)}; // @[Parameters.scala 138:49]
  wire [28:0] _requestAIO_T_23 = $signed(_requestAIO_T_21) & 29'sha010000; // @[Parameters.scala 138:52]
  wire  requestAIO_0_4 = $signed(_requestAIO_T_23) == 29'sh0; // @[Parameters.scala 138:67]
  wire [26:0] _beatsDO_decode_T_1 = 27'hfff << auto_out_0_d_bits_size; // @[package.scala 212:77]
  wire [11:0] _beatsDO_decode_T_3 = ~(_beatsDO_decode_T_1[11:0]); // @[package.scala 212:46]
  wire [8:0] beatsDO_decode = _beatsDO_decode_T_3[11:3]; // @[Edges.scala 221:59]
  wire  beatsDO_opdata = auto_out_0_d_bits_opcode[0]; // @[Edges.scala 107:36]
  wire [8:0] beatsIn_0 = beatsDO_opdata ? beatsDO_decode : 9'h0; // @[Edges.scala 222:14]
  wire [20:0] _beatsDO_decode_T_5 = 21'h3f << out__1_d_bits_size; // @[package.scala 212:77]
  wire [5:0] _beatsDO_decode_T_7 = ~(_beatsDO_decode_T_5[5:0]); // @[package.scala 212:46]
  wire [2:0] beatsDO_decode_1 = _beatsDO_decode_T_7[5:3]; // @[Edges.scala 221:59]
  wire  beatsDO_opdata_1 = auto_out_1_d_bits_opcode[0]; // @[Edges.scala 107:36]
  wire [2:0] beatsIn_1 = beatsDO_opdata_1 ? beatsDO_decode_1 : 3'h0; // @[Edges.scala 222:14]
  wire [20:0] _beatsDO_decode_T_9 = 21'h3f << out__2_d_bits_size; // @[package.scala 212:77]
  wire [5:0] _beatsDO_decode_T_11 = ~(_beatsDO_decode_T_9[5:0]); // @[package.scala 212:46]
  wire [2:0] beatsDO_decode_2 = _beatsDO_decode_T_11[5:3]; // @[Edges.scala 221:59]
  wire  beatsDO_opdata_2 = auto_out_2_d_bits_opcode[0]; // @[Edges.scala 107:36]
  wire [2:0] beatsIn_2 = beatsDO_opdata_2 ? beatsDO_decode_2 : 3'h0; // @[Edges.scala 222:14]
  wire [20:0] _beatsDO_decode_T_13 = 21'h3f << out__3_d_bits_size; // @[package.scala 212:77]
  wire [5:0] _beatsDO_decode_T_15 = ~(_beatsDO_decode_T_13[5:0]); // @[package.scala 212:46]
  wire [2:0] beatsDO_decode_3 = _beatsDO_decode_T_15[5:3]; // @[Edges.scala 221:59]
  wire  beatsDO_opdata_3 = auto_out_3_d_bits_opcode[0]; // @[Edges.scala 107:36]
  wire [2:0] beatsIn_3 = beatsDO_opdata_3 ? beatsDO_decode_3 : 3'h0; // @[Edges.scala 222:14]
  wire [20:0] _beatsDO_decode_T_17 = 21'h3f << out__4_d_bits_size; // @[package.scala 212:77]
  wire [5:0] _beatsDO_decode_T_19 = ~(_beatsDO_decode_T_17[5:0]); // @[package.scala 212:46]
  wire [2:0] beatsDO_decode_4 = _beatsDO_decode_T_19[5:3]; // @[Edges.scala 221:59]
  wire  latch = idle & auto_in_d_ready; // @[Arbiter.scala 90:24]
  wire  _readys_T_6 = latch & (|readys_filter_left); // @[Arbiter.scala 28:18]
  wire [4:0] _readys_readys_mask_T = readys_readys & readys_filter_left; // @[Arbiter.scala 29:29]
  wire [5:0] _readys_readys_mask_T_1 = {_readys_readys_mask_T, 1'h0}; // @[package.scala 222:48]
  wire [4:0] _readys_readys_mask_T_3 = _readys_readys_mask_T | (_readys_readys_mask_T_1[4:0]); // @[package.scala 222:43]
  wire [6:0] _readys_readys_mask_T_4 = {_readys_readys_mask_T_3, 2'h0}; // @[package.scala 222:48]
  wire [4:0] _readys_readys_mask_T_6 = _readys_readys_mask_T_3 | (_readys_readys_mask_T_4[4:0]); // @[package.scala 222:43]
  wire [8:0] _readys_readys_mask_T_7 = {_readys_readys_mask_T_6, 4'h0}; // @[package.scala 222:48]
  wire [4:0] _readys_readys_mask_T_9 = _readys_readys_mask_T_6 | (_readys_readys_mask_T_7[4:0]); // @[package.scala 222:43]
  wire  prefixOR_2 = earlyWinner_0 | earlyWinner_1; // @[Arbiter.scala 105:53]
  wire  prefixOR_3 = prefixOR_2 | earlyWinner_2; // @[Arbiter.scala 105:53]
  wire  prefixOR_4 = prefixOR_3 | earlyWinner_3; // @[Arbiter.scala 105:53]
  wire  _prefixOR_T = prefixOR_4 | earlyWinner_4; // @[Arbiter.scala 105:53]
  wire  _T_25 = (((auto_out_0_d_valid | auto_out_1_d_valid) | auto_out_2_d_valid) | auto_out_3_d_valid) |
    auto_out_4_d_valid; // @[Arbiter.scala 108:36]
  wire  _T_26 = ~((((auto_out_0_d_valid | auto_out_1_d_valid) | auto_out_2_d_valid) | auto_out_3_d_valid) |
    auto_out_4_d_valid); // @[Arbiter.scala 108:15]
  wire [8:0] maskedBeats_0 = earlyWinner_0 ? beatsIn_0 : 9'h0; // @[Arbiter.scala 112:73]
  wire [2:0] maskedBeats_1 = earlyWinner_1 ? beatsIn_1 : 3'h0; // @[Arbiter.scala 112:73]
  wire [2:0] maskedBeats_2 = earlyWinner_2 ? beatsIn_2 : 3'h0; // @[Arbiter.scala 112:73]
  wire [2:0] maskedBeats_3 = earlyWinner_3 ? beatsIn_3 : 3'h0; // @[Arbiter.scala 112:73]
  wire [2:0] maskedBeats_4 = earlyWinner_4 ? beatsDO_decode_4 : 3'h0; // @[Arbiter.scala 112:73]
  wire [8:0] _GEN_5 = {{6'd0}, maskedBeats_1}; // @[Arbiter.scala 113:44]
  wire [8:0] _initBeats_T = maskedBeats_0 | _GEN_5; // @[Arbiter.scala 113:44]
  wire [8:0] _GEN_6 = {{6'd0}, maskedBeats_2}; // @[Arbiter.scala 113:44]
  wire [8:0] _initBeats_T_1 = _initBeats_T | _GEN_6; // @[Arbiter.scala 113:44]
  wire [8:0] _GEN_7 = {{6'd0}, maskedBeats_3}; // @[Arbiter.scala 113:44]
  wire [8:0] _initBeats_T_2 = _initBeats_T_1 | _GEN_7; // @[Arbiter.scala 113:44]
  wire [8:0] _GEN_8 = {{6'd0}, maskedBeats_4}; // @[Arbiter.scala 113:44]
  wire [8:0] initBeats = _initBeats_T_2 | _GEN_8; // @[Arbiter.scala 113:44]
  wire  _sink_ACancel_11_earlyValid_T_12 = ((((state_0 & auto_out_0_d_valid) | (state_1 & auto_out_1_d_valid)) | (
    state_2 & auto_out_2_d_valid)) | (state_3 & auto_out_3_d_valid)) | (state_4 & auto_out_4_d_valid); // @[Mux.scala 27:72]
  wire  sink_ACancel_11_earlyValid = idle ? _T_25 : _sink_ACancel_11_earlyValid_T_12; // @[Arbiter.scala 126:29]
  wire  _beatsLeft_T_2 = auto_in_d_ready & sink_ACancel_11_earlyValid; // @[ReadyValidCancel.scala 52:33]
  wire [8:0] _GEN_9 = {{8'd0}, _beatsLeft_T_2}; // @[Arbiter.scala 114:52]
  wire [8:0] _beatsLeft_T_4 = beatsLeft - _GEN_9; // @[Arbiter.scala 114:52]
  wire  allowed_0 = idle ? readys_0 : state_0; // @[Arbiter.scala 122:24]
  wire  allowed_1 = idle ? readys_1 : state_1; // @[Arbiter.scala 122:24]
  wire  allowed_2 = idle ? readys_2 : state_2; // @[Arbiter.scala 122:24]
  wire  allowed_3 = idle ? readys_3 : state_3; // @[Arbiter.scala 122:24]
  wire  allowed_4 = idle ? readys_4 : state_4; // @[Arbiter.scala 122:24]
  assign auto_in_a_ready = ((((requestAIO_0_0 & auto_out_0_a_ready) | (requestAIO_0_1 & auto_out_1_a_ready)) | (
    requestAIO_0_2 & auto_out_2_a_ready)) | (requestAIO_0_3 & auto_out_3_a_ready)) | (requestAIO_0_4 &
    auto_out_4_a_ready); // @[Mux.scala 27:72]
  assign auto_in_d_valid = idle ? _T_25 : _sink_ACancel_11_earlyValid_T_12; // @[Arbiter.scala 126:29]
  assign auto_in_d_bits_opcode = _T_61[80:78]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_param = _T_61[77:76]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_size = _T_61[75:72]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_source = _T_61[71:67]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_sink = _T_61[66]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_denied = _T_61[65]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_data = _T_61[64:1]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_corrupt = _T_61[0]; // @[Mux.scala 27:72]
  assign auto_out_4_a_valid = auto_in_a_valid & requestAIO_0_4; // @[Xbar.scala 428:50]
  assign auto_out_4_a_bits_size = auto_in_a_bits_size[2:0]; // @[Xbar.scala 132:50 BundleMap.scala 248:19]
  assign auto_out_4_a_bits_source = auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign auto_out_4_a_bits_address = auto_in_a_bits_address[16:0]; // @[Xbar.scala 132:50 BundleMap.scala 248:19]
  assign auto_out_4_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_4_d_ready = auto_in_d_ready & allowed_4; // @[Arbiter.scala 124:31]
  assign auto_out_3_a_valid = auto_in_a_valid & requestAIO_0_3; // @[Xbar.scala 428:50]
  assign auto_out_3_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_3_a_bits_size = auto_in_a_bits_size[2:0]; // @[Xbar.scala 132:50 BundleMap.scala 248:19]
  assign auto_out_3_a_bits_source = auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign auto_out_3_a_bits_address = auto_in_a_bits_address[11:0]; // @[Xbar.scala 132:50 BundleMap.scala 248:19]
  assign auto_out_3_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_3_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_3_d_ready = auto_in_d_ready & allowed_3; // @[Arbiter.scala 124:31]
  assign auto_out_2_a_valid = auto_in_a_valid & requestAIO_0_2; // @[Xbar.scala 428:50]
  assign auto_out_2_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_2_a_bits_size = auto_in_a_bits_size[2:0]; // @[Xbar.scala 132:50 BundleMap.scala 248:19]
  assign auto_out_2_a_bits_source = auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign auto_out_2_a_bits_address = auto_in_a_bits_address[25:0]; // @[Xbar.scala 132:50 BundleMap.scala 248:19]
  assign auto_out_2_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_2_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_2_d_ready = auto_in_d_ready & allowed_2; // @[Arbiter.scala 124:31]
  assign auto_out_1_a_valid = auto_in_a_valid & requestAIO_0_1; // @[Xbar.scala 428:50]
  assign auto_out_1_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_1_a_bits_size = auto_in_a_bits_size[2:0]; // @[Xbar.scala 132:50 BundleMap.scala 248:19]
  assign auto_out_1_a_bits_source = auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign auto_out_1_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_1_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_1_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_1_d_ready = auto_in_d_ready & allowed_1; // @[Arbiter.scala 124:31]
  assign auto_out_0_a_valid = auto_in_a_valid & requestAIO_0_0; // @[Xbar.scala 428:50]
  assign auto_out_0_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_0_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_0_a_bits_source = auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign auto_out_0_d_ready = auto_in_d_ready & allowed_0; // @[Arbiter.scala 124:31]
  always @(posedge clock) begin
    if (reset) begin // @[Arbiter.scala 88:30]
      beatsLeft <= 9'h0; // @[Arbiter.scala 88:30]
    end else if (latch) begin // @[Arbiter.scala 114:23]
      beatsLeft <= initBeats;
    end else begin
      beatsLeft <= _beatsLeft_T_4;
    end
    if (reset) begin // @[Arbiter.scala 24:23]
      readys_mask <= 5'h1f; // @[Arbiter.scala 24:23]
    end else if (_readys_T_6) begin // @[Arbiter.scala 28:32]
      readys_mask <= _readys_readys_mask_T_9; // @[Arbiter.scala 29:12]
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
    if (reset) begin // @[Arbiter.scala 117:26]
      state_2 <= 1'h0; // @[Arbiter.scala 117:26]
    end else if (idle) begin // @[Arbiter.scala 118:30]
      state_2 <= earlyWinner_2;
    end
    if (reset) begin // @[Arbiter.scala 117:26]
      state_3 <= 1'h0; // @[Arbiter.scala 117:26]
    end else if (idle) begin // @[Arbiter.scala 118:30]
      state_3 <= earlyWinner_3;
    end
    if (reset) begin // @[Arbiter.scala 117:26]
      state_4 <= 1'h0; // @[Arbiter.scala 117:26]
    end else if (idle) begin // @[Arbiter.scala 118:30]
      state_4 <= earlyWinner_4;
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
  readys_mask = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  state_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  state_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  state_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  state_3 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  state_4 = _RAND_6[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
