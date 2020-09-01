module AXI4Fragmenter(
  input         clock,
  input         reset,
  output        auto_in_aw_ready,
  input         auto_in_aw_valid,
  input         auto_in_aw_bits_id,
  input  [31:0] auto_in_aw_bits_addr,
  input  [7:0]  auto_in_aw_bits_len,
  input  [2:0]  auto_in_aw_bits_size,
  input  [1:0]  auto_in_aw_bits_burst,
  input  [3:0]  auto_in_aw_bits_cache,
  input  [2:0]  auto_in_aw_bits_prot,
  input  [6:0]  auto_in_aw_bits_echo_extra_id,
  output        auto_in_w_ready,
  input         auto_in_w_valid,
  input  [63:0] auto_in_w_bits_data,
  input  [7:0]  auto_in_w_bits_strb,
  input         auto_in_w_bits_last,
  input         auto_in_b_ready,
  output        auto_in_b_valid,
  output        auto_in_b_bits_id,
  output [1:0]  auto_in_b_bits_resp,
  output [6:0]  auto_in_b_bits_echo_extra_id,
  output        auto_in_ar_ready,
  input         auto_in_ar_valid,
  input         auto_in_ar_bits_id,
  input  [31:0] auto_in_ar_bits_addr,
  input  [7:0]  auto_in_ar_bits_len,
  input  [2:0]  auto_in_ar_bits_size,
  input  [1:0]  auto_in_ar_bits_burst,
  input  [3:0]  auto_in_ar_bits_cache,
  input  [2:0]  auto_in_ar_bits_prot,
  input  [6:0]  auto_in_ar_bits_echo_extra_id,
  input         auto_in_r_ready,
  output        auto_in_r_valid,
  output        auto_in_r_bits_id,
  output [63:0] auto_in_r_bits_data,
  output [1:0]  auto_in_r_bits_resp,
  output [6:0]  auto_in_r_bits_echo_extra_id,
  output        auto_in_r_bits_last,
  input         auto_out_aw_ready,
  output        auto_out_aw_valid,
  output        auto_out_aw_bits_id,
  output [31:0] auto_out_aw_bits_addr,
  output [7:0]  auto_out_aw_bits_len,
  output [2:0]  auto_out_aw_bits_size,
  output [3:0]  auto_out_aw_bits_cache,
  output [2:0]  auto_out_aw_bits_prot,
  output [6:0]  auto_out_aw_bits_echo_extra_id,
  output        auto_out_aw_bits_echo_real_last,
  input         auto_out_w_ready,
  output        auto_out_w_valid,
  output [63:0] auto_out_w_bits_data,
  output [7:0]  auto_out_w_bits_strb,
  output        auto_out_w_bits_last,
  output        auto_out_b_ready,
  input         auto_out_b_valid,
  input         auto_out_b_bits_id,
  input  [1:0]  auto_out_b_bits_resp,
  input  [6:0]  auto_out_b_bits_echo_extra_id,
  input         auto_out_b_bits_echo_real_last,
  input         auto_out_ar_ready,
  output        auto_out_ar_valid,
  output        auto_out_ar_bits_id,
  output [31:0] auto_out_ar_bits_addr,
  output [7:0]  auto_out_ar_bits_len,
  output [2:0]  auto_out_ar_bits_size,
  output [3:0]  auto_out_ar_bits_cache,
  output [2:0]  auto_out_ar_bits_prot,
  output [6:0]  auto_out_ar_bits_echo_extra_id,
  output        auto_out_ar_bits_echo_real_last,
  output        auto_out_r_ready,
  input         auto_out_r_valid,
  input         auto_out_r_bits_id,
  input  [63:0] auto_out_r_bits_data,
  input  [1:0]  auto_out_r_bits_resp,
  input  [6:0]  auto_out_r_bits_echo_extra_id,
  input         auto_out_r_bits_echo_real_last,
  input         auto_out_r_bits_last
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
`endif // RANDOMIZE_REG_INIT
  wire  deq_clock; // @[Decoupled.scala 296:21]
  wire  deq_reset; // @[Decoupled.scala 296:21]
  wire  deq_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  deq_io_enq_valid; // @[Decoupled.scala 296:21]
  wire  deq_io_enq_bits_id; // @[Decoupled.scala 296:21]
  wire [31:0] deq_io_enq_bits_addr; // @[Decoupled.scala 296:21]
  wire [7:0] deq_io_enq_bits_len; // @[Decoupled.scala 296:21]
  wire [2:0] deq_io_enq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] deq_io_enq_bits_burst; // @[Decoupled.scala 296:21]
  wire [3:0] deq_io_enq_bits_cache; // @[Decoupled.scala 296:21]
  wire [2:0] deq_io_enq_bits_prot; // @[Decoupled.scala 296:21]
  wire [6:0] deq_io_enq_bits_echo_extra_id; // @[Decoupled.scala 296:21]
  wire  deq_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  deq_io_deq_valid; // @[Decoupled.scala 296:21]
  wire  deq_io_deq_bits_id; // @[Decoupled.scala 296:21]
  wire [31:0] deq_io_deq_bits_addr; // @[Decoupled.scala 296:21]
  wire [7:0] deq_io_deq_bits_len; // @[Decoupled.scala 296:21]
  wire [2:0] deq_io_deq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] deq_io_deq_bits_burst; // @[Decoupled.scala 296:21]
  wire [3:0] deq_io_deq_bits_cache; // @[Decoupled.scala 296:21]
  wire [2:0] deq_io_deq_bits_prot; // @[Decoupled.scala 296:21]
  wire [6:0] deq_io_deq_bits_echo_extra_id; // @[Decoupled.scala 296:21]
  wire  deq_1_clock; // @[Decoupled.scala 296:21]
  wire  deq_1_reset; // @[Decoupled.scala 296:21]
  wire  deq_1_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  deq_1_io_enq_valid; // @[Decoupled.scala 296:21]
  wire  deq_1_io_enq_bits_id; // @[Decoupled.scala 296:21]
  wire [31:0] deq_1_io_enq_bits_addr; // @[Decoupled.scala 296:21]
  wire [7:0] deq_1_io_enq_bits_len; // @[Decoupled.scala 296:21]
  wire [2:0] deq_1_io_enq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] deq_1_io_enq_bits_burst; // @[Decoupled.scala 296:21]
  wire [3:0] deq_1_io_enq_bits_cache; // @[Decoupled.scala 296:21]
  wire [2:0] deq_1_io_enq_bits_prot; // @[Decoupled.scala 296:21]
  wire [6:0] deq_1_io_enq_bits_echo_extra_id; // @[Decoupled.scala 296:21]
  wire  deq_1_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  deq_1_io_deq_valid; // @[Decoupled.scala 296:21]
  wire  deq_1_io_deq_bits_id; // @[Decoupled.scala 296:21]
  wire [31:0] deq_1_io_deq_bits_addr; // @[Decoupled.scala 296:21]
  wire [7:0] deq_1_io_deq_bits_len; // @[Decoupled.scala 296:21]
  wire [2:0] deq_1_io_deq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] deq_1_io_deq_bits_burst; // @[Decoupled.scala 296:21]
  wire [3:0] deq_1_io_deq_bits_cache; // @[Decoupled.scala 296:21]
  wire [2:0] deq_1_io_deq_bits_prot; // @[Decoupled.scala 296:21]
  wire [6:0] deq_1_io_deq_bits_echo_extra_id; // @[Decoupled.scala 296:21]
  wire  in_w_deq_clock; // @[Decoupled.scala 296:21]
  wire  in_w_deq_reset; // @[Decoupled.scala 296:21]
  wire  in_w_deq_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  in_w_deq_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [63:0] in_w_deq_io_enq_bits_data; // @[Decoupled.scala 296:21]
  wire [7:0] in_w_deq_io_enq_bits_strb; // @[Decoupled.scala 296:21]
  wire  in_w_deq_io_enq_bits_last; // @[Decoupled.scala 296:21]
  wire  in_w_deq_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  in_w_deq_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [63:0] in_w_deq_io_deq_bits_data; // @[Decoupled.scala 296:21]
  wire [7:0] in_w_deq_io_deq_bits_strb; // @[Decoupled.scala 296:21]
  wire  in_w_deq_io_deq_bits_last; // @[Decoupled.scala 296:21]
  reg  busy; // @[Fragmenter.scala 61:29]
  reg [31:0] r_addr; // @[Fragmenter.scala 62:25]
  reg [7:0] r_len; // @[Fragmenter.scala 63:25]
  wire [7:0] irr_bits_len = deq_io_deq_bits_len; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  wire [7:0] len = busy ? r_len : irr_bits_len; // @[Fragmenter.scala 65:23]
  wire [31:0] irr_bits_addr = deq_io_deq_bits_addr; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  wire [31:0] addr = busy ? r_addr : irr_bits_addr; // @[Fragmenter.scala 66:23]
  wire [7:0] alignment = addr[10:3]; // @[Fragmenter.scala 70:29]
  wire [32:0] _support1_T_1 = {1'b0,$signed(addr)}; // @[Parameters.scala 138:49]
  wire [32:0] _support1_T_3 = $signed(_support1_T_1) & 33'shca012000; // @[Parameters.scala 138:52]
  wire  _support1_T_4 = $signed(_support1_T_3) == 33'sh0; // @[Parameters.scala 138:67]
  wire [31:0] _support1_T_5 = addr ^ 32'h10000; // @[Parameters.scala 138:31]
  wire [32:0] _support1_T_6 = {1'b0,$signed(_support1_T_5)}; // @[Parameters.scala 138:49]
  wire [32:0] _support1_T_8 = $signed(_support1_T_6) & 33'shca010000; // @[Parameters.scala 138:52]
  wire  _support1_T_9 = $signed(_support1_T_8) == 33'sh0; // @[Parameters.scala 138:67]
  wire [31:0] _support1_T_10 = addr ^ 32'h2000000; // @[Parameters.scala 138:31]
  wire [32:0] _support1_T_11 = {1'b0,$signed(_support1_T_10)}; // @[Parameters.scala 138:49]
  wire [32:0] _support1_T_13 = $signed(_support1_T_11) & 33'shca010000; // @[Parameters.scala 138:52]
  wire  _support1_T_14 = $signed(_support1_T_13) == 33'sh0; // @[Parameters.scala 138:67]
  wire [31:0] _support1_T_15 = addr ^ 32'h8000000; // @[Parameters.scala 138:31]
  wire [32:0] _support1_T_16 = {1'b0,$signed(_support1_T_15)}; // @[Parameters.scala 138:49]
  wire [32:0] _support1_T_18 = $signed(_support1_T_16) & 33'shc8000000; // @[Parameters.scala 138:52]
  wire  _support1_T_19 = $signed(_support1_T_18) == 33'sh0; // @[Parameters.scala 138:67]
  wire [31:0] _support1_T_20 = addr ^ 32'h40000000; // @[Parameters.scala 138:31]
  wire [32:0] _support1_T_21 = {1'b0,$signed(_support1_T_20)}; // @[Parameters.scala 138:49]
  wire [32:0] _support1_T_23 = $signed(_support1_T_21) & 33'shc0000000; // @[Parameters.scala 138:52]
  wire  _support1_T_24 = $signed(_support1_T_23) == 33'sh0; // @[Parameters.scala 138:67]
  wire [31:0] _support1_T_25 = addr ^ 32'h80000000; // @[Parameters.scala 138:31]
  wire [32:0] _support1_T_26 = {1'b0,$signed(_support1_T_25)}; // @[Parameters.scala 138:49]
  wire [32:0] _support1_T_28 = $signed(_support1_T_26) & 33'shc0000000; // @[Parameters.scala 138:52]
  wire  _support1_T_29 = $signed(_support1_T_28) == 33'sh0; // @[Parameters.scala 138:67]
  wire  _support1_T_34 = ((((_support1_T_4 | _support1_T_9) | _support1_T_14) | _support1_T_19) | _support1_T_24) |
    _support1_T_29; // @[Fragmenter.scala 77:100]
  wire [31:0] _support1_T_35 = addr ^ 32'h2000; // @[Parameters.scala 138:31]
  wire [32:0] _support1_T_36 = {1'b0,$signed(_support1_T_35)}; // @[Parameters.scala 138:49]
  wire [32:0] _support1_T_38 = $signed(_support1_T_36) & 33'shca012000; // @[Parameters.scala 138:52]
  wire  _support1_T_39 = $signed(_support1_T_38) == 33'sh0; // @[Parameters.scala 138:67]
  wire [2:0] _support1_T_40 = _support1_T_34 ? 3'h7 : 3'h0; // @[Mux.scala 27:72]
  wire [7:0] _support1_T_41 = _support1_T_39 ? 8'hff : 8'h0; // @[Mux.scala 27:72]
  wire [7:0] _GEN_16 = {{5'd0}, _support1_T_40}; // @[Mux.scala 27:72]
  wire [7:0] support1 = _GEN_16 | _support1_T_41; // @[Mux.scala 27:72]
  wire [7:0] _GEN_17 = {{1'd0}, len[7:1]}; // @[package.scala 231:43]
  wire [7:0] _fillLow_T_1 = len | _GEN_17; // @[package.scala 231:43]
  wire [7:0] _GEN_18 = {{2'd0}, _fillLow_T_1[7:2]}; // @[package.scala 231:43]
  wire [7:0] _fillLow_T_3 = _fillLow_T_1 | _GEN_18; // @[package.scala 231:43]
  wire [7:0] _GEN_19 = {{4'd0}, _fillLow_T_3[7:4]}; // @[package.scala 231:43]
  wire [7:0] _fillLow_T_5 = _fillLow_T_3 | _GEN_19; // @[package.scala 231:43]
  wire [6:0] fillLow = _fillLow_T_5[7:1]; // @[Fragmenter.scala 86:37]
  wire [7:0] _wipeHigh_T = ~len; // @[Fragmenter.scala 87:32]
  wire [8:0] _wipeHigh_T_1 = {_wipeHigh_T, 1'h0}; // @[package.scala 222:48]
  wire [7:0] _wipeHigh_T_3 = _wipeHigh_T | (_wipeHigh_T_1[7:0]); // @[package.scala 222:43]
  wire [9:0] _wipeHigh_T_4 = {_wipeHigh_T_3, 2'h0}; // @[package.scala 222:48]
  wire [7:0] _wipeHigh_T_6 = _wipeHigh_T_3 | (_wipeHigh_T_4[7:0]); // @[package.scala 222:43]
  wire [11:0] _wipeHigh_T_7 = {_wipeHigh_T_6, 4'h0}; // @[package.scala 222:48]
  wire [7:0] _wipeHigh_T_9 = _wipeHigh_T_6 | (_wipeHigh_T_7[7:0]); // @[package.scala 222:43]
  wire [7:0] wipeHigh = ~_wipeHigh_T_9; // @[Fragmenter.scala 87:24]
  wire [7:0] _GEN_20 = {{1'd0}, fillLow}; // @[Fragmenter.scala 88:32]
  wire [7:0] remain1 = _GEN_20 | wipeHigh; // @[Fragmenter.scala 88:32]
  wire [8:0] _align1_T = {alignment, 1'h0}; // @[package.scala 222:48]
  wire [7:0] _align1_T_2 = alignment | (_align1_T[7:0]); // @[package.scala 222:43]
  wire [9:0] _align1_T_3 = {_align1_T_2, 2'h0}; // @[package.scala 222:48]
  wire [7:0] _align1_T_5 = _align1_T_2 | (_align1_T_3[7:0]); // @[package.scala 222:43]
  wire [11:0] _align1_T_6 = {_align1_T_5, 4'h0}; // @[package.scala 222:48]
  wire [7:0] _align1_T_8 = _align1_T_5 | (_align1_T_6[7:0]); // @[package.scala 222:43]
  wire [7:0] align1 = ~_align1_T_8; // @[Fragmenter.scala 89:24]
  wire [7:0] _maxSupported1_T = remain1 & align1; // @[Fragmenter.scala 90:37]
  wire [7:0] maxSupported1 = _maxSupported1_T & support1; // @[Fragmenter.scala 90:46]
  wire [1:0] irr_bits_burst = deq_io_deq_bits_burst; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  wire  fixed = irr_bits_burst == 2'h0; // @[Fragmenter.scala 93:34]
  wire [2:0] irr_bits_size = deq_io_deq_bits_size; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  wire  narrow = irr_bits_size != 3'h3; // @[Fragmenter.scala 94:34]
  wire  bad = fixed | narrow; // @[Fragmenter.scala 95:25]
  wire [7:0] beats_left = bad ? 8'h0 : maxSupported1; // @[Fragmenter.scala 98:25]
  wire [8:0] _beats_T = {beats_left, 1'h0}; // @[package.scala 210:35]
  wire [8:0] _beats_T_1 = _beats_T | 9'h1; // @[package.scala 210:40]
  wire [8:0] _beats_T_2 = {1'h0,beats_left}; // @[Cat.scala 29:58]
  wire [8:0] _beats_T_3 = ~_beats_T_2; // @[package.scala 210:53]
  wire [8:0] beats = _beats_T_1 & _beats_T_3; // @[package.scala 210:51]
  wire [15:0] _GEN_21 = {{7'd0}, beats}; // @[Fragmenter.scala 101:38]
  wire [15:0] _inc_addr_T = _GEN_21 << irr_bits_size; // @[Fragmenter.scala 101:38]
  wire [31:0] _GEN_22 = {{16'd0}, _inc_addr_T}; // @[Fragmenter.scala 101:29]
  wire [31:0] mux_addr_x5 = addr + _GEN_22; // @[Fragmenter.scala 101:29]
  wire [15:0] _wrapMask_T = {irr_bits_len,8'hff}; // @[Cat.scala 29:58]
  wire [22:0] _GEN_23 = {{7'd0}, _wrapMask_T}; // @[Bundles.scala 30:21]
  wire [22:0] _wrapMask_T_1 = _GEN_23 << irr_bits_size; // @[Bundles.scala 30:21]
  wire [14:0] wrapMask = _wrapMask_T_1[22:8]; // @[Bundles.scala 30:30]
  wire  _T = irr_bits_burst == 2'h2; // @[Fragmenter.scala 104:28]
  wire [31:0] _GEN_24 = {{17'd0}, wrapMask}; // @[Fragmenter.scala 105:33]
  wire [31:0] _mux_addr_T = mux_addr_x5 & _GEN_24; // @[Fragmenter.scala 105:33]
  wire [31:0] _mux_addr_T_1 = ~irr_bits_addr; // @[Fragmenter.scala 105:49]
  wire [31:0] _mux_addr_T_2 = _mux_addr_T_1 | _GEN_24; // @[Fragmenter.scala 105:62]
  wire [31:0] _mux_addr_T_3 = ~_mux_addr_T_2; // @[Fragmenter.scala 105:47]
  wire [31:0] _mux_addr_T_4 = _mux_addr_T | _mux_addr_T_3; // @[Fragmenter.scala 105:45]
  wire  ar_last = beats_left == len; // @[Fragmenter.scala 111:27]
  wire [31:0] _in_ar_bits_addr_T = ~addr; // @[Fragmenter.scala 123:28]
  wire [9:0] _in_ar_bits_addr_T_2 = 10'h7 << irr_bits_size; // @[package.scala 212:77]
  wire [2:0] _in_ar_bits_addr_T_4 = ~(_in_ar_bits_addr_T_2[2:0]); // @[package.scala 212:46]
  wire [31:0] _GEN_26 = {{29'd0}, _in_ar_bits_addr_T_4}; // @[Fragmenter.scala 123:34]
  wire [31:0] _in_ar_bits_addr_T_5 = _in_ar_bits_addr_T | _GEN_26; // @[Fragmenter.scala 123:34]
  wire  irr_valid = deq_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  wire  _T_2 = auto_out_ar_ready & irr_valid; // @[Decoupled.scala 40:37]
  wire  _busy_T = ~ar_last; // @[Fragmenter.scala 126:19]
  wire [8:0] _GEN_27 = {{1'd0}, len}; // @[Fragmenter.scala 128:25]
  wire [8:0] _r_len_T_1 = _GEN_27 - beats; // @[Fragmenter.scala 128:25]
  wire [8:0] _GEN_4 = _T_2 ? _r_len_T_1 : {{1'd0}, r_len}; // @[Fragmenter.scala 125:27 Fragmenter.scala 128:18 Fragmenter.scala 63:25]
  reg  busy_1; // @[Fragmenter.scala 61:29]
  reg [31:0] r_addr_1; // @[Fragmenter.scala 62:25]
  reg [7:0] r_len_1; // @[Fragmenter.scala 63:25]
  wire [7:0] irr_1_bits_len = deq_1_io_deq_bits_len; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  wire [7:0] len_1 = busy_1 ? r_len_1 : irr_1_bits_len; // @[Fragmenter.scala 65:23]
  wire [31:0] irr_1_bits_addr = deq_1_io_deq_bits_addr; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  wire [31:0] addr_1 = busy_1 ? r_addr_1 : irr_1_bits_addr; // @[Fragmenter.scala 66:23]
  wire [7:0] alignment_1 = addr_1[10:3]; // @[Fragmenter.scala 70:29]
  wire [31:0] _support1_T_43 = addr_1 ^ 32'h40000000; // @[Parameters.scala 138:31]
  wire [32:0] _support1_T_44 = {1'b0,$signed(_support1_T_43)}; // @[Parameters.scala 138:49]
  wire [32:0] _support1_T_46 = $signed(_support1_T_44) & 33'shc0000000; // @[Parameters.scala 138:52]
  wire  _support1_T_47 = $signed(_support1_T_46) == 33'sh0; // @[Parameters.scala 138:67]
  wire [32:0] _support1_T_49 = {1'b0,$signed(addr_1)}; // @[Parameters.scala 138:49]
  wire [32:0] _support1_T_51 = $signed(_support1_T_49) & 33'shca002000; // @[Parameters.scala 138:52]
  wire  _support1_T_52 = $signed(_support1_T_51) == 33'sh0; // @[Parameters.scala 138:67]
  wire [31:0] _support1_T_53 = addr_1 ^ 32'h2000000; // @[Parameters.scala 138:31]
  wire [32:0] _support1_T_54 = {1'b0,$signed(_support1_T_53)}; // @[Parameters.scala 138:49]
  wire [32:0] _support1_T_56 = $signed(_support1_T_54) & 33'shca000000; // @[Parameters.scala 138:52]
  wire  _support1_T_57 = $signed(_support1_T_56) == 33'sh0; // @[Parameters.scala 138:67]
  wire [31:0] _support1_T_58 = addr_1 ^ 32'h8000000; // @[Parameters.scala 138:31]
  wire [32:0] _support1_T_59 = {1'b0,$signed(_support1_T_58)}; // @[Parameters.scala 138:49]
  wire [32:0] _support1_T_61 = $signed(_support1_T_59) & 33'shc8000000; // @[Parameters.scala 138:52]
  wire  _support1_T_62 = $signed(_support1_T_61) == 33'sh0; // @[Parameters.scala 138:67]
  wire [31:0] _support1_T_63 = addr_1 ^ 32'h80000000; // @[Parameters.scala 138:31]
  wire [32:0] _support1_T_64 = {1'b0,$signed(_support1_T_63)}; // @[Parameters.scala 138:49]
  wire [32:0] _support1_T_66 = $signed(_support1_T_64) & 33'shc0000000; // @[Parameters.scala 138:52]
  wire  _support1_T_67 = $signed(_support1_T_66) == 33'sh0; // @[Parameters.scala 138:67]
  wire  _support1_T_70 = ((_support1_T_52 | _support1_T_57) | _support1_T_62) | _support1_T_67; // @[Fragmenter.scala 77:100]
  wire [31:0] _support1_T_71 = addr_1 ^ 32'h2000; // @[Parameters.scala 138:31]
  wire [32:0] _support1_T_72 = {1'b0,$signed(_support1_T_71)}; // @[Parameters.scala 138:49]
  wire [32:0] _support1_T_74 = $signed(_support1_T_72) & 33'shca002000; // @[Parameters.scala 138:52]
  wire  _support1_T_75 = $signed(_support1_T_74) == 33'sh0; // @[Parameters.scala 138:67]
  wire [4:0] _support1_T_76 = _support1_T_47 ? 5'h1f : 5'h0; // @[Mux.scala 27:72]
  wire [2:0] _support1_T_77 = _support1_T_70 ? 3'h7 : 3'h0; // @[Mux.scala 27:72]
  wire [7:0] _support1_T_78 = _support1_T_75 ? 8'hff : 8'h0; // @[Mux.scala 27:72]
  wire [4:0] _GEN_28 = {{2'd0}, _support1_T_77}; // @[Mux.scala 27:72]
  wire [4:0] _support1_T_79 = _support1_T_76 | _GEN_28; // @[Mux.scala 27:72]
  wire [7:0] _GEN_29 = {{3'd0}, _support1_T_79}; // @[Mux.scala 27:72]
  wire [7:0] support1_1 = _GEN_29 | _support1_T_78; // @[Mux.scala 27:72]
  wire [7:0] _GEN_30 = {{1'd0}, len_1[7:1]}; // @[package.scala 231:43]
  wire [7:0] _fillLow_T_8 = len_1 | _GEN_30; // @[package.scala 231:43]
  wire [7:0] _GEN_31 = {{2'd0}, _fillLow_T_8[7:2]}; // @[package.scala 231:43]
  wire [7:0] _fillLow_T_10 = _fillLow_T_8 | _GEN_31; // @[package.scala 231:43]
  wire [7:0] _GEN_32 = {{4'd0}, _fillLow_T_10[7:4]}; // @[package.scala 231:43]
  wire [7:0] _fillLow_T_12 = _fillLow_T_10 | _GEN_32; // @[package.scala 231:43]
  wire [6:0] fillLow_1 = _fillLow_T_12[7:1]; // @[Fragmenter.scala 86:37]
  wire [7:0] _wipeHigh_T_11 = ~len_1; // @[Fragmenter.scala 87:32]
  wire [8:0] _wipeHigh_T_12 = {_wipeHigh_T_11, 1'h0}; // @[package.scala 222:48]
  wire [7:0] _wipeHigh_T_14 = _wipeHigh_T_11 | (_wipeHigh_T_12[7:0]); // @[package.scala 222:43]
  wire [9:0] _wipeHigh_T_15 = {_wipeHigh_T_14, 2'h0}; // @[package.scala 222:48]
  wire [7:0] _wipeHigh_T_17 = _wipeHigh_T_14 | (_wipeHigh_T_15[7:0]); // @[package.scala 222:43]
  wire [11:0] _wipeHigh_T_18 = {_wipeHigh_T_17, 4'h0}; // @[package.scala 222:48]
  wire [7:0] _wipeHigh_T_20 = _wipeHigh_T_17 | (_wipeHigh_T_18[7:0]); // @[package.scala 222:43]
  wire [7:0] wipeHigh_1 = ~_wipeHigh_T_20; // @[Fragmenter.scala 87:24]
  wire [7:0] _GEN_33 = {{1'd0}, fillLow_1}; // @[Fragmenter.scala 88:32]
  wire [7:0] remain1_1 = _GEN_33 | wipeHigh_1; // @[Fragmenter.scala 88:32]
  wire [8:0] _align1_T_10 = {alignment_1, 1'h0}; // @[package.scala 222:48]
  wire [7:0] _align1_T_12 = alignment_1 | (_align1_T_10[7:0]); // @[package.scala 222:43]
  wire [9:0] _align1_T_13 = {_align1_T_12, 2'h0}; // @[package.scala 222:48]
  wire [7:0] _align1_T_15 = _align1_T_12 | (_align1_T_13[7:0]); // @[package.scala 222:43]
  wire [11:0] _align1_T_16 = {_align1_T_15, 4'h0}; // @[package.scala 222:48]
  wire [7:0] _align1_T_18 = _align1_T_15 | (_align1_T_16[7:0]); // @[package.scala 222:43]
  wire [7:0] align1_1 = ~_align1_T_18; // @[Fragmenter.scala 89:24]
  wire [7:0] _maxSupported1_T_1 = remain1_1 & align1_1; // @[Fragmenter.scala 90:37]
  wire [7:0] maxSupported1_1 = _maxSupported1_T_1 & support1_1; // @[Fragmenter.scala 90:46]
  wire [1:0] irr_1_bits_burst = deq_1_io_deq_bits_burst; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  wire  fixed_1 = irr_1_bits_burst == 2'h0; // @[Fragmenter.scala 93:34]
  wire [2:0] irr_1_bits_size = deq_1_io_deq_bits_size; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  wire  narrow_1 = irr_1_bits_size != 3'h3; // @[Fragmenter.scala 94:34]
  wire  bad_1 = fixed_1 | narrow_1; // @[Fragmenter.scala 95:25]
  wire [7:0] beats_left_1 = bad_1 ? 8'h0 : maxSupported1_1; // @[Fragmenter.scala 98:25]
  wire [8:0] _beats_T_4 = {beats_left_1, 1'h0}; // @[package.scala 210:35]
  wire [8:0] _beats_T_5 = _beats_T_4 | 9'h1; // @[package.scala 210:40]
  wire [8:0] _beats_T_6 = {1'h0,beats_left_1}; // @[Cat.scala 29:58]
  wire [8:0] _beats_T_7 = ~_beats_T_6; // @[package.scala 210:53]
  wire [8:0] w_beats = _beats_T_5 & _beats_T_7; // @[package.scala 210:51]
  wire [15:0] _GEN_34 = {{7'd0}, w_beats}; // @[Fragmenter.scala 101:38]
  wire [15:0] _inc_addr_T_2 = _GEN_34 << irr_1_bits_size; // @[Fragmenter.scala 101:38]
  wire [31:0] _GEN_35 = {{16'd0}, _inc_addr_T_2}; // @[Fragmenter.scala 101:29]
  wire [31:0] mux_addr_x5_1 = addr_1 + _GEN_35; // @[Fragmenter.scala 101:29]
  wire [15:0] _wrapMask_T_2 = {irr_1_bits_len,8'hff}; // @[Cat.scala 29:58]
  wire [22:0] _GEN_36 = {{7'd0}, _wrapMask_T_2}; // @[Bundles.scala 30:21]
  wire [22:0] _wrapMask_T_3 = _GEN_36 << irr_1_bits_size; // @[Bundles.scala 30:21]
  wire [14:0] wrapMask_1 = _wrapMask_T_3[22:8]; // @[Bundles.scala 30:30]
  wire  _T_3 = irr_1_bits_burst == 2'h2; // @[Fragmenter.scala 104:28]
  wire [31:0] _GEN_37 = {{17'd0}, wrapMask_1}; // @[Fragmenter.scala 105:33]
  wire [31:0] _mux_addr_1_T = mux_addr_x5_1 & _GEN_37; // @[Fragmenter.scala 105:33]
  wire [31:0] _mux_addr_1_T_1 = ~irr_1_bits_addr; // @[Fragmenter.scala 105:49]
  wire [31:0] _mux_addr_1_T_2 = _mux_addr_1_T_1 | _GEN_37; // @[Fragmenter.scala 105:62]
  wire [31:0] _mux_addr_1_T_3 = ~_mux_addr_1_T_2; // @[Fragmenter.scala 105:47]
  wire [31:0] _mux_addr_1_T_4 = _mux_addr_1_T | _mux_addr_1_T_3; // @[Fragmenter.scala 105:45]
  wire  aw_last = beats_left_1 == len_1; // @[Fragmenter.scala 111:27]
  reg [8:0] w_counter; // @[Fragmenter.scala 165:30]
  wire  w_idle = w_counter == 9'h0; // @[Fragmenter.scala 166:30]
  reg  wbeats_latched; // @[Fragmenter.scala 151:35]
  wire  _in_aw_ready_T = w_idle | wbeats_latched; // @[Fragmenter.scala 159:52]
  wire  in_aw_ready = auto_out_aw_ready & (w_idle | wbeats_latched); // @[Fragmenter.scala 159:35]
  wire [31:0] _in_aw_bits_addr_T = ~addr_1; // @[Fragmenter.scala 123:28]
  wire [9:0] _in_aw_bits_addr_T_2 = 10'h7 << irr_1_bits_size; // @[package.scala 212:77]
  wire [2:0] _in_aw_bits_addr_T_4 = ~(_in_aw_bits_addr_T_2[2:0]); // @[package.scala 212:46]
  wire [31:0] _GEN_39 = {{29'd0}, _in_aw_bits_addr_T_4}; // @[Fragmenter.scala 123:34]
  wire [31:0] _in_aw_bits_addr_T_5 = _in_aw_bits_addr_T | _GEN_39; // @[Fragmenter.scala 123:34]
  wire  irr_1_valid = deq_1_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  wire  _T_5 = in_aw_ready & irr_1_valid; // @[Decoupled.scala 40:37]
  wire  _busy_1_T = ~aw_last; // @[Fragmenter.scala 126:19]
  wire [8:0] _GEN_40 = {{1'd0}, len_1}; // @[Fragmenter.scala 128:25]
  wire [8:0] _r_len_1_T_1 = _GEN_40 - w_beats; // @[Fragmenter.scala 128:25]
  wire [8:0] _GEN_9 = _T_5 ? _r_len_1_T_1 : {{1'd0}, r_len_1}; // @[Fragmenter.scala 125:27 Fragmenter.scala 128:18 Fragmenter.scala 63:25]
  wire  wbeats_valid = irr_1_valid & (~wbeats_latched); // @[Fragmenter.scala 160:35]
  wire  _T_6 = wbeats_valid & w_idle; // @[Fragmenter.scala 154:26]
  wire  _GEN_10 = _T_6 | wbeats_latched; // @[Fragmenter.scala 154:43 Fragmenter.scala 154:60 Fragmenter.scala 151:35]
  wire  auto_data_1_aw_valid = irr_1_valid & _in_aw_ready_T; // @[Fragmenter.scala 158:35]
  wire  _T_7 = auto_out_aw_ready & auto_data_1_aw_valid; // @[Decoupled.scala 40:37]
  wire [8:0] _w_todo_T = wbeats_valid ? w_beats : 9'h0; // @[Fragmenter.scala 167:35]
  wire [8:0] w_todo = w_idle ? _w_todo_T : w_counter; // @[Fragmenter.scala 167:23]
  wire  w_last = w_todo == 9'h1; // @[Fragmenter.scala 168:27]
  wire  in_w_valid = in_w_deq_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  wire  _auto_data_1_w_valid_T_1 = (~w_idle) | wbeats_valid; // @[Fragmenter.scala 174:51]
  wire  auto_data_1_w_valid = in_w_valid & ((~w_idle) | wbeats_valid); // @[Fragmenter.scala 174:33]
  wire  _w_counter_T = auto_out_w_ready & auto_data_1_w_valid; // @[Decoupled.scala 40:37]
  wire [8:0] _GEN_41 = {{8'd0}, _w_counter_T}; // @[Fragmenter.scala 169:27]
  wire [8:0] _w_counter_T_2 = w_todo - _GEN_41; // @[Fragmenter.scala 169:27]
  wire  in_w_bits_last = in_w_deq_io_deq_bits_last; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  wire  auto_data_1_b_ready = auto_in_b_ready | (~auto_out_b_bits_echo_real_last); // @[Fragmenter.scala 190:33]
  reg [1:0] error_0; // @[Fragmenter.scala 193:26]
  reg [1:0] error_1; // @[Fragmenter.scala 193:26]
  wire [1:0] _GEN_13 = auto_out_b_bits_id ? error_1 : error_0; // @[Fragmenter.scala 194:41 Fragmenter.scala 194:41]
  wire [1:0] _T_22 = 2'h1 << auto_out_b_bits_id; // @[OneHot.scala 65:12]
  wire  _T_26 = auto_data_1_b_ready & auto_out_b_valid; // @[Decoupled.scala 40:37]
  wire  _T_27 = (_T_22[0]) & _T_26; // @[Fragmenter.scala 196:19]
  wire [1:0] _error_0_T = error_0 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70]
  wire  _T_29 = (_T_22[1]) & _T_26; // @[Fragmenter.scala 196:19]
  wire [1:0] _error_1_T = error_1 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70]
  Queue_18 deq ( // @[Decoupled.scala 296:21]
    .clock(deq_clock),
    .reset(deq_reset),
    .io_enq_ready(deq_io_enq_ready),
    .io_enq_valid(deq_io_enq_valid),
    .io_enq_bits_id(deq_io_enq_bits_id),
    .io_enq_bits_addr(deq_io_enq_bits_addr),
    .io_enq_bits_len(deq_io_enq_bits_len),
    .io_enq_bits_size(deq_io_enq_bits_size),
    .io_enq_bits_burst(deq_io_enq_bits_burst),
    .io_enq_bits_cache(deq_io_enq_bits_cache),
    .io_enq_bits_prot(deq_io_enq_bits_prot),
    .io_enq_bits_echo_extra_id(deq_io_enq_bits_echo_extra_id),
    .io_deq_ready(deq_io_deq_ready),
    .io_deq_valid(deq_io_deq_valid),
    .io_deq_bits_id(deq_io_deq_bits_id),
    .io_deq_bits_addr(deq_io_deq_bits_addr),
    .io_deq_bits_len(deq_io_deq_bits_len),
    .io_deq_bits_size(deq_io_deq_bits_size),
    .io_deq_bits_burst(deq_io_deq_bits_burst),
    .io_deq_bits_cache(deq_io_deq_bits_cache),
    .io_deq_bits_prot(deq_io_deq_bits_prot),
    .io_deq_bits_echo_extra_id(deq_io_deq_bits_echo_extra_id)
  );
  Queue_18 deq_1 ( // @[Decoupled.scala 296:21]
    .clock(deq_1_clock),
    .reset(deq_1_reset),
    .io_enq_ready(deq_1_io_enq_ready),
    .io_enq_valid(deq_1_io_enq_valid),
    .io_enq_bits_id(deq_1_io_enq_bits_id),
    .io_enq_bits_addr(deq_1_io_enq_bits_addr),
    .io_enq_bits_len(deq_1_io_enq_bits_len),
    .io_enq_bits_size(deq_1_io_enq_bits_size),
    .io_enq_bits_burst(deq_1_io_enq_bits_burst),
    .io_enq_bits_cache(deq_1_io_enq_bits_cache),
    .io_enq_bits_prot(deq_1_io_enq_bits_prot),
    .io_enq_bits_echo_extra_id(deq_1_io_enq_bits_echo_extra_id),
    .io_deq_ready(deq_1_io_deq_ready),
    .io_deq_valid(deq_1_io_deq_valid),
    .io_deq_bits_id(deq_1_io_deq_bits_id),
    .io_deq_bits_addr(deq_1_io_deq_bits_addr),
    .io_deq_bits_len(deq_1_io_deq_bits_len),
    .io_deq_bits_size(deq_1_io_deq_bits_size),
    .io_deq_bits_burst(deq_1_io_deq_bits_burst),
    .io_deq_bits_cache(deq_1_io_deq_bits_cache),
    .io_deq_bits_prot(deq_1_io_deq_bits_prot),
    .io_deq_bits_echo_extra_id(deq_1_io_deq_bits_echo_extra_id)
  );
  Queue_10 in_w_deq ( // @[Decoupled.scala 296:21]
    .clock(in_w_deq_clock),
    .reset(in_w_deq_reset),
    .io_enq_ready(in_w_deq_io_enq_ready),
    .io_enq_valid(in_w_deq_io_enq_valid),
    .io_enq_bits_data(in_w_deq_io_enq_bits_data),
    .io_enq_bits_strb(in_w_deq_io_enq_bits_strb),
    .io_enq_bits_last(in_w_deq_io_enq_bits_last),
    .io_deq_ready(in_w_deq_io_deq_ready),
    .io_deq_valid(in_w_deq_io_deq_valid),
    .io_deq_bits_data(in_w_deq_io_deq_bits_data),
    .io_deq_bits_strb(in_w_deq_io_deq_bits_strb),
    .io_deq_bits_last(in_w_deq_io_deq_bits_last)
  );
  assign auto_in_aw_ready = deq_1_io_enq_ready; // @[Nodes.scala 1216:84 Decoupled.scala 299:17]
  assign auto_in_w_ready = in_w_deq_io_enq_ready; // @[Nodes.scala 1216:84 Decoupled.scala 299:17]
  assign auto_in_b_valid = auto_out_b_valid & auto_out_b_bits_echo_real_last; // @[Fragmenter.scala 189:33]
  assign auto_in_b_bits_id = auto_out_b_bits_id; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_b_bits_resp = auto_out_b_bits_resp | _GEN_13; // @[Fragmenter.scala 194:41]
  assign auto_in_b_bits_echo_extra_id = auto_out_b_bits_echo_extra_id; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_ar_ready = deq_io_enq_ready; // @[Nodes.scala 1216:84 Decoupled.scala 299:17]
  assign auto_in_r_valid = auto_out_r_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_echo_extra_id = auto_out_r_bits_echo_extra_id; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_last = auto_out_r_bits_last & auto_out_r_bits_echo_real_last; // @[Fragmenter.scala 184:41]
  assign auto_out_aw_valid = irr_1_valid & _in_aw_ready_T; // @[Fragmenter.scala 158:35]
  assign auto_out_aw_bits_id = deq_1_io_deq_bits_id; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_addr = ~_in_aw_bits_addr_T_5; // @[Fragmenter.scala 123:26]
  assign auto_out_aw_bits_len = bad_1 ? 8'h0 : maxSupported1_1; // @[Fragmenter.scala 98:25]
  assign auto_out_aw_bits_size = deq_1_io_deq_bits_size; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_cache = deq_1_io_deq_bits_cache; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_prot = deq_1_io_deq_bits_prot; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_echo_extra_id = deq_1_io_deq_bits_echo_extra_id; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_echo_real_last = beats_left_1 == len_1; // @[Fragmenter.scala 111:27]
  assign auto_out_w_valid = in_w_valid & ((~w_idle) | wbeats_valid); // @[Fragmenter.scala 174:33]
  assign auto_out_w_bits_data = in_w_deq_io_deq_bits_data; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_w_bits_strb = in_w_deq_io_deq_bits_strb; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_w_bits_last = w_todo == 9'h1; // @[Fragmenter.scala 168:27]
  assign auto_out_b_ready = auto_in_b_ready | (~auto_out_b_bits_echo_real_last); // @[Fragmenter.scala 190:33]
  assign auto_out_ar_valid = deq_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  assign auto_out_ar_bits_id = deq_io_deq_bits_id; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_addr = ~_in_ar_bits_addr_T_5; // @[Fragmenter.scala 123:26]
  assign auto_out_ar_bits_len = bad ? 8'h0 : maxSupported1; // @[Fragmenter.scala 98:25]
  assign auto_out_ar_bits_size = deq_io_deq_bits_size; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_cache = deq_io_deq_bits_cache; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_prot = deq_io_deq_bits_prot; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_echo_extra_id = deq_io_deq_bits_echo_extra_id; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_echo_real_last = beats_left == len; // @[Fragmenter.scala 111:27]
  assign auto_out_r_ready = auto_in_r_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_clock = clock;
  assign deq_reset = reset;
  assign deq_io_enq_valid = auto_in_ar_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_io_enq_bits_id = auto_in_ar_bits_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_io_enq_bits_addr = auto_in_ar_bits_addr; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_io_enq_bits_len = auto_in_ar_bits_len; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_io_enq_bits_size = auto_in_ar_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_io_enq_bits_burst = auto_in_ar_bits_burst; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_io_enq_bits_cache = auto_in_ar_bits_cache; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_io_enq_bits_prot = auto_in_ar_bits_prot; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_io_enq_bits_echo_extra_id = auto_in_ar_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_io_deq_ready = auto_out_ar_ready & ar_last; // @[Fragmenter.scala 112:30]
  assign deq_1_clock = clock;
  assign deq_1_reset = reset;
  assign deq_1_io_enq_valid = auto_in_aw_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_1_io_enq_bits_id = auto_in_aw_bits_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_1_io_enq_bits_addr = auto_in_aw_bits_addr; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_1_io_enq_bits_len = auto_in_aw_bits_len; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_1_io_enq_bits_size = auto_in_aw_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_1_io_enq_bits_burst = auto_in_aw_bits_burst; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_1_io_enq_bits_cache = auto_in_aw_bits_cache; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_1_io_enq_bits_prot = auto_in_aw_bits_prot; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_1_io_enq_bits_echo_extra_id = auto_in_aw_bits_echo_extra_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_1_io_deq_ready = in_aw_ready & aw_last; // @[Fragmenter.scala 112:30]
  assign in_w_deq_clock = clock;
  assign in_w_deq_reset = reset;
  assign in_w_deq_io_enq_valid = auto_in_w_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign in_w_deq_io_enq_bits_data = auto_in_w_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign in_w_deq_io_enq_bits_strb = auto_in_w_bits_strb; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign in_w_deq_io_enq_bits_last = auto_in_w_bits_last; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign in_w_deq_io_deq_ready = auto_out_w_ready & _auto_data_1_w_valid_T_1; // @[Fragmenter.scala 175:33]
  always @(posedge clock) begin
    if (reset) begin // @[Fragmenter.scala 61:29]
      busy <= 1'h0; // @[Fragmenter.scala 61:29]
    end else if (_T_2) begin // @[Fragmenter.scala 125:27]
      busy <= _busy_T; // @[Fragmenter.scala 126:16]
    end
    if (_T_2) begin // @[Fragmenter.scala 125:27]
      if (fixed) begin // @[Fragmenter.scala 107:60]
        r_addr <= irr_bits_addr; // @[Fragmenter.scala 108:20]
      end else if (_T) begin // @[Fragmenter.scala 104:59]
        r_addr <= _mux_addr_T_4; // @[Fragmenter.scala 105:20]
      end else begin
        r_addr <= mux_addr_x5;
      end
    end
    r_len <= _GEN_4[7:0];
    if (reset) begin // @[Fragmenter.scala 61:29]
      busy_1 <= 1'h0; // @[Fragmenter.scala 61:29]
    end else if (_T_5) begin // @[Fragmenter.scala 125:27]
      busy_1 <= _busy_1_T; // @[Fragmenter.scala 126:16]
    end
    if (_T_5) begin // @[Fragmenter.scala 125:27]
      if (fixed_1) begin // @[Fragmenter.scala 107:60]
        r_addr_1 <= irr_1_bits_addr; // @[Fragmenter.scala 108:20]
      end else if (_T_3) begin // @[Fragmenter.scala 104:59]
        r_addr_1 <= _mux_addr_1_T_4; // @[Fragmenter.scala 105:20]
      end else begin
        r_addr_1 <= mux_addr_x5_1;
      end
    end
    r_len_1 <= _GEN_9[7:0];
    if (reset) begin // @[Fragmenter.scala 165:30]
      w_counter <= 9'h0; // @[Fragmenter.scala 165:30]
    end else begin
      w_counter <= _w_counter_T_2; // @[Fragmenter.scala 169:17]
    end
    if (reset) begin // @[Fragmenter.scala 151:35]
      wbeats_latched <= 1'h0; // @[Fragmenter.scala 151:35]
    end else if (_T_7) begin // @[Fragmenter.scala 155:28]
      wbeats_latched <= 1'h0; // @[Fragmenter.scala 155:45]
    end else begin
      wbeats_latched <= _GEN_10;
    end
    if (reset) begin // @[Fragmenter.scala 193:26]
      error_0 <= 2'h0; // @[Fragmenter.scala 193:26]
    end else if (_T_27) begin // @[Fragmenter.scala 196:36]
      if (auto_out_b_bits_echo_real_last) begin // @[Fragmenter.scala 196:48]
        error_0 <= 2'h0;
      end else begin
        error_0 <= _error_0_T;
      end
    end
    if (reset) begin // @[Fragmenter.scala 193:26]
      error_1 <= 2'h0; // @[Fragmenter.scala 193:26]
    end else if (_T_29) begin // @[Fragmenter.scala 196:36]
      if (auto_out_b_bits_echo_real_last) begin // @[Fragmenter.scala 196:48]
        error_1 <= 2'h0;
      end else begin
        error_1 <= _error_1_T;
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
  busy = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  r_addr = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  r_len = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  busy_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  r_addr_1 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  r_len_1 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  w_counter = _RAND_6[8:0];
  _RAND_7 = {1{`RANDOM}};
  wbeats_latched = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  error_0 = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  error_1 = _RAND_9[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
