module AXI4Fragmenter_1(
  input         clock,
  input         reset,
  output        auto_in_aw_ready,
  input         auto_in_aw_valid,
  input  [3:0]  auto_in_aw_bits_id,
  input  [27:0] auto_in_aw_bits_addr,
  input  [7:0]  auto_in_aw_bits_len,
  input  [2:0]  auto_in_aw_bits_size,
  input  [1:0]  auto_in_aw_bits_burst,
  output        auto_in_w_ready,
  input         auto_in_w_valid,
  input  [63:0] auto_in_w_bits_data,
  input  [7:0]  auto_in_w_bits_strb,
  input         auto_in_w_bits_last,
  input         auto_in_b_ready,
  output        auto_in_b_valid,
  output [3:0]  auto_in_b_bits_id,
  output [1:0]  auto_in_b_bits_resp,
  output        auto_in_ar_ready,
  input         auto_in_ar_valid,
  input  [3:0]  auto_in_ar_bits_id,
  input  [27:0] auto_in_ar_bits_addr,
  input  [7:0]  auto_in_ar_bits_len,
  input  [2:0]  auto_in_ar_bits_size,
  input  [1:0]  auto_in_ar_bits_burst,
  input         auto_in_r_ready,
  output        auto_in_r_valid,
  output [3:0]  auto_in_r_bits_id,
  output [63:0] auto_in_r_bits_data,
  output [1:0]  auto_in_r_bits_resp,
  output        auto_in_r_bits_last,
  input         auto_out_aw_ready,
  output        auto_out_aw_valid,
  output [3:0]  auto_out_aw_bits_id,
  output [27:0] auto_out_aw_bits_addr,
  output        auto_out_aw_bits_echo_real_last,
  input         auto_out_w_ready,
  output        auto_out_w_valid,
  output [63:0] auto_out_w_bits_data,
  output [7:0]  auto_out_w_bits_strb,
  output        auto_out_w_bits_last,
  output        auto_out_b_ready,
  input         auto_out_b_valid,
  input  [3:0]  auto_out_b_bits_id,
  input  [1:0]  auto_out_b_bits_resp,
  input         auto_out_b_bits_echo_real_last,
  input         auto_out_ar_ready,
  output        auto_out_ar_valid,
  output [3:0]  auto_out_ar_bits_id,
  output [27:0] auto_out_ar_bits_addr,
  output        auto_out_ar_bits_echo_real_last,
  output        auto_out_r_ready,
  input         auto_out_r_valid,
  input  [3:0]  auto_out_r_bits_id,
  input  [63:0] auto_out_r_bits_data,
  input  [1:0]  auto_out_r_bits_resp,
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
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
`endif // RANDOMIZE_REG_INIT
  wire  deq_clock; // @[Decoupled.scala 296:21]
  wire  deq_reset; // @[Decoupled.scala 296:21]
  wire  deq_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  deq_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [3:0] deq_io_enq_bits_id; // @[Decoupled.scala 296:21]
  wire [27:0] deq_io_enq_bits_addr; // @[Decoupled.scala 296:21]
  wire [7:0] deq_io_enq_bits_len; // @[Decoupled.scala 296:21]
  wire [2:0] deq_io_enq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] deq_io_enq_bits_burst; // @[Decoupled.scala 296:21]
  wire  deq_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  deq_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [3:0] deq_io_deq_bits_id; // @[Decoupled.scala 296:21]
  wire [27:0] deq_io_deq_bits_addr; // @[Decoupled.scala 296:21]
  wire [7:0] deq_io_deq_bits_len; // @[Decoupled.scala 296:21]
  wire [2:0] deq_io_deq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] deq_io_deq_bits_burst; // @[Decoupled.scala 296:21]
  wire  deq_1_clock; // @[Decoupled.scala 296:21]
  wire  deq_1_reset; // @[Decoupled.scala 296:21]
  wire  deq_1_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  deq_1_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [3:0] deq_1_io_enq_bits_id; // @[Decoupled.scala 296:21]
  wire [27:0] deq_1_io_enq_bits_addr; // @[Decoupled.scala 296:21]
  wire [7:0] deq_1_io_enq_bits_len; // @[Decoupled.scala 296:21]
  wire [2:0] deq_1_io_enq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] deq_1_io_enq_bits_burst; // @[Decoupled.scala 296:21]
  wire  deq_1_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  deq_1_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [3:0] deq_1_io_deq_bits_id; // @[Decoupled.scala 296:21]
  wire [27:0] deq_1_io_deq_bits_addr; // @[Decoupled.scala 296:21]
  wire [7:0] deq_1_io_deq_bits_len; // @[Decoupled.scala 296:21]
  wire [2:0] deq_1_io_deq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] deq_1_io_deq_bits_burst; // @[Decoupled.scala 296:21]
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
  reg [27:0] r_addr; // @[Fragmenter.scala 62:25]
  reg [7:0] r_len; // @[Fragmenter.scala 63:25]
  wire [7:0] irr_bits_len = deq_io_deq_bits_len; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  wire [7:0] len = busy ? r_len : irr_bits_len; // @[Fragmenter.scala 65:23]
  wire [27:0] irr_bits_addr = deq_io_deq_bits_addr; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  wire [27:0] addr = busy ? r_addr : irr_bits_addr; // @[Fragmenter.scala 66:23]
  wire [1:0] irr_bits_burst = deq_io_deq_bits_burst; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  wire  fixed = irr_bits_burst == 2'h0; // @[Fragmenter.scala 93:34]
  wire [2:0] irr_bits_size = deq_io_deq_bits_size; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  wire [15:0] _inc_addr_T = 16'h1 << irr_bits_size; // @[Fragmenter.scala 101:38]
  wire [27:0] _GEN_48 = {{12'd0}, _inc_addr_T}; // @[Fragmenter.scala 101:29]
  wire [27:0] mux_addr_x5 = addr + _GEN_48; // @[Fragmenter.scala 101:29]
  wire [15:0] _wrapMask_T = {irr_bits_len,8'hff}; // @[Cat.scala 29:58]
  wire [22:0] _GEN_49 = {{7'd0}, _wrapMask_T}; // @[Bundles.scala 30:21]
  wire [22:0] _wrapMask_T_1 = _GEN_49 << irr_bits_size; // @[Bundles.scala 30:21]
  wire [14:0] wrapMask = _wrapMask_T_1[22:8]; // @[Bundles.scala 30:30]
  wire  _T = irr_bits_burst == 2'h2; // @[Fragmenter.scala 104:28]
  wire [27:0] _GEN_50 = {{13'd0}, wrapMask}; // @[Fragmenter.scala 105:33]
  wire [27:0] _mux_addr_T = mux_addr_x5 & _GEN_50; // @[Fragmenter.scala 105:33]
  wire [27:0] _mux_addr_T_1 = ~irr_bits_addr; // @[Fragmenter.scala 105:49]
  wire [27:0] _mux_addr_T_2 = _mux_addr_T_1 | _GEN_50; // @[Fragmenter.scala 105:62]
  wire [27:0] _mux_addr_T_3 = ~_mux_addr_T_2; // @[Fragmenter.scala 105:47]
  wire [27:0] _mux_addr_T_4 = _mux_addr_T | _mux_addr_T_3; // @[Fragmenter.scala 105:45]
  wire  ar_last = 8'h0 == len; // @[Fragmenter.scala 111:27]
  wire [27:0] _in_ar_bits_addr_T = ~addr; // @[Fragmenter.scala 123:28]
  wire [9:0] _in_ar_bits_addr_T_2 = 10'h7 << irr_bits_size; // @[package.scala 212:77]
  wire [2:0] _in_ar_bits_addr_T_4 = ~(_in_ar_bits_addr_T_2[2:0]); // @[package.scala 212:46]
  wire [27:0] _GEN_52 = {{25'd0}, _in_ar_bits_addr_T_4}; // @[Fragmenter.scala 123:34]
  wire [27:0] _in_ar_bits_addr_T_5 = _in_ar_bits_addr_T | _GEN_52; // @[Fragmenter.scala 123:34]
  wire  irr_valid = deq_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  wire  _T_2 = auto_out_ar_ready & irr_valid; // @[Decoupled.scala 40:37]
  wire  _busy_T = ~ar_last; // @[Fragmenter.scala 126:19]
  wire [8:0] _GEN_53 = {{1'd0}, len}; // @[Fragmenter.scala 128:25]
  wire [8:0] _r_len_T_1 = _GEN_53 - 9'h1; // @[Fragmenter.scala 128:25]
  wire [8:0] _GEN_4 = _T_2 ? _r_len_T_1 : {{1'd0}, r_len}; // @[Fragmenter.scala 125:27 Fragmenter.scala 128:18 Fragmenter.scala 63:25]
  reg  busy_1; // @[Fragmenter.scala 61:29]
  reg [27:0] r_addr_1; // @[Fragmenter.scala 62:25]
  reg [7:0] r_len_1; // @[Fragmenter.scala 63:25]
  wire [7:0] irr_1_bits_len = deq_1_io_deq_bits_len; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  wire [7:0] len_1 = busy_1 ? r_len_1 : irr_1_bits_len; // @[Fragmenter.scala 65:23]
  wire [27:0] irr_1_bits_addr = deq_1_io_deq_bits_addr; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  wire [27:0] addr_1 = busy_1 ? r_addr_1 : irr_1_bits_addr; // @[Fragmenter.scala 66:23]
  wire [1:0] irr_1_bits_burst = deq_1_io_deq_bits_burst; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  wire  fixed_1 = irr_1_bits_burst == 2'h0; // @[Fragmenter.scala 93:34]
  wire [2:0] irr_1_bits_size = deq_1_io_deq_bits_size; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  wire [15:0] _inc_addr_T_2 = 16'h1 << irr_1_bits_size; // @[Fragmenter.scala 101:38]
  wire [27:0] _GEN_58 = {{12'd0}, _inc_addr_T_2}; // @[Fragmenter.scala 101:29]
  wire [27:0] mux_addr_x5_1 = addr_1 + _GEN_58; // @[Fragmenter.scala 101:29]
  wire [15:0] _wrapMask_T_2 = {irr_1_bits_len,8'hff}; // @[Cat.scala 29:58]
  wire [22:0] _GEN_59 = {{7'd0}, _wrapMask_T_2}; // @[Bundles.scala 30:21]
  wire [22:0] _wrapMask_T_3 = _GEN_59 << irr_1_bits_size; // @[Bundles.scala 30:21]
  wire [14:0] wrapMask_1 = _wrapMask_T_3[22:8]; // @[Bundles.scala 30:30]
  wire  _T_3 = irr_1_bits_burst == 2'h2; // @[Fragmenter.scala 104:28]
  wire [27:0] _GEN_60 = {{13'd0}, wrapMask_1}; // @[Fragmenter.scala 105:33]
  wire [27:0] _mux_addr_1_T = mux_addr_x5_1 & _GEN_60; // @[Fragmenter.scala 105:33]
  wire [27:0] _mux_addr_1_T_1 = ~irr_1_bits_addr; // @[Fragmenter.scala 105:49]
  wire [27:0] _mux_addr_1_T_2 = _mux_addr_1_T_1 | _GEN_60; // @[Fragmenter.scala 105:62]
  wire [27:0] _mux_addr_1_T_3 = ~_mux_addr_1_T_2; // @[Fragmenter.scala 105:47]
  wire [27:0] _mux_addr_1_T_4 = _mux_addr_1_T | _mux_addr_1_T_3; // @[Fragmenter.scala 105:45]
  wire  aw_last = 8'h0 == len_1; // @[Fragmenter.scala 111:27]
  reg [8:0] w_counter; // @[Fragmenter.scala 165:30]
  wire  w_idle = w_counter == 9'h0; // @[Fragmenter.scala 166:30]
  reg  wbeats_latched; // @[Fragmenter.scala 151:35]
  wire  _in_aw_ready_T = w_idle | wbeats_latched; // @[Fragmenter.scala 159:52]
  wire  in_aw_ready = auto_out_aw_ready & (w_idle | wbeats_latched); // @[Fragmenter.scala 159:35]
  wire [27:0] _in_aw_bits_addr_T = ~addr_1; // @[Fragmenter.scala 123:28]
  wire [9:0] _in_aw_bits_addr_T_2 = 10'h7 << irr_1_bits_size; // @[package.scala 212:77]
  wire [2:0] _in_aw_bits_addr_T_4 = ~(_in_aw_bits_addr_T_2[2:0]); // @[package.scala 212:46]
  wire [27:0] _GEN_62 = {{25'd0}, _in_aw_bits_addr_T_4}; // @[Fragmenter.scala 123:34]
  wire [27:0] _in_aw_bits_addr_T_5 = _in_aw_bits_addr_T | _GEN_62; // @[Fragmenter.scala 123:34]
  wire  irr_1_valid = deq_1_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  wire  _T_5 = in_aw_ready & irr_1_valid; // @[Decoupled.scala 40:37]
  wire  _busy_1_T = ~aw_last; // @[Fragmenter.scala 126:19]
  wire [8:0] _GEN_63 = {{1'd0}, len_1}; // @[Fragmenter.scala 128:25]
  wire [8:0] _r_len_1_T_1 = _GEN_63 - 9'h1; // @[Fragmenter.scala 128:25]
  wire [8:0] _GEN_9 = _T_5 ? _r_len_1_T_1 : {{1'd0}, r_len_1}; // @[Fragmenter.scala 125:27 Fragmenter.scala 128:18 Fragmenter.scala 63:25]
  wire  wbeats_valid = irr_1_valid & (~wbeats_latched); // @[Fragmenter.scala 160:35]
  wire  _T_6 = wbeats_valid & w_idle; // @[Fragmenter.scala 154:26]
  wire  _GEN_10 = _T_6 | wbeats_latched; // @[Fragmenter.scala 154:43 Fragmenter.scala 154:60 Fragmenter.scala 151:35]
  wire  auto_data_1_aw_valid = irr_1_valid & _in_aw_ready_T; // @[Fragmenter.scala 158:35]
  wire  _T_7 = auto_out_aw_ready & auto_data_1_aw_valid; // @[Decoupled.scala 40:37]
  wire [8:0] _w_todo_T = wbeats_valid ? 9'h1 : 9'h0; // @[Fragmenter.scala 167:35]
  wire [8:0] w_todo = w_idle ? _w_todo_T : w_counter; // @[Fragmenter.scala 167:23]
  wire  w_last = w_todo == 9'h1; // @[Fragmenter.scala 168:27]
  wire  in_w_valid = in_w_deq_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  wire  _auto_data_1_w_valid_T_1 = (~w_idle) | wbeats_valid; // @[Fragmenter.scala 174:51]
  wire  auto_data_1_w_valid = in_w_valid & ((~w_idle) | wbeats_valid); // @[Fragmenter.scala 174:33]
  wire  _w_counter_T = auto_out_w_ready & auto_data_1_w_valid; // @[Decoupled.scala 40:37]
  wire [8:0] _GEN_64 = {{8'd0}, _w_counter_T}; // @[Fragmenter.scala 169:27]
  wire [8:0] _w_counter_T_2 = w_todo - _GEN_64; // @[Fragmenter.scala 169:27]
  wire  in_w_bits_last = in_w_deq_io_deq_bits_last; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  wire  auto_data_1_b_ready = auto_in_b_ready | (~auto_out_b_bits_echo_real_last); // @[Fragmenter.scala 190:33]
  reg [1:0] error_0; // @[Fragmenter.scala 193:26]
  reg [1:0] error_1; // @[Fragmenter.scala 193:26]
  reg [1:0] error_2; // @[Fragmenter.scala 193:26]
  reg [1:0] error_3; // @[Fragmenter.scala 193:26]
  reg [1:0] error_4; // @[Fragmenter.scala 193:26]
  reg [1:0] error_5; // @[Fragmenter.scala 193:26]
  reg [1:0] error_6; // @[Fragmenter.scala 193:26]
  reg [1:0] error_7; // @[Fragmenter.scala 193:26]
  reg [1:0] error_8; // @[Fragmenter.scala 193:26]
  reg [1:0] error_9; // @[Fragmenter.scala 193:26]
  reg [1:0] error_10; // @[Fragmenter.scala 193:26]
  reg [1:0] error_11; // @[Fragmenter.scala 193:26]
  reg [1:0] error_12; // @[Fragmenter.scala 193:26]
  reg [1:0] error_13; // @[Fragmenter.scala 193:26]
  reg [1:0] error_14; // @[Fragmenter.scala 193:26]
  reg [1:0] error_15; // @[Fragmenter.scala 193:26]
  wire [1:0] _GEN_13 = 4'h1 == auto_out_b_bits_id ? error_1 : error_0; // @[Fragmenter.scala 194:41 Fragmenter.scala 194:41]
  wire [1:0] _GEN_14 = 4'h2 == auto_out_b_bits_id ? error_2 : _GEN_13; // @[Fragmenter.scala 194:41 Fragmenter.scala 194:41]
  wire [1:0] _GEN_15 = 4'h3 == auto_out_b_bits_id ? error_3 : _GEN_14; // @[Fragmenter.scala 194:41 Fragmenter.scala 194:41]
  wire [1:0] _GEN_16 = 4'h4 == auto_out_b_bits_id ? error_4 : _GEN_15; // @[Fragmenter.scala 194:41 Fragmenter.scala 194:41]
  wire [1:0] _GEN_17 = 4'h5 == auto_out_b_bits_id ? error_5 : _GEN_16; // @[Fragmenter.scala 194:41 Fragmenter.scala 194:41]
  wire [1:0] _GEN_18 = 4'h6 == auto_out_b_bits_id ? error_6 : _GEN_17; // @[Fragmenter.scala 194:41 Fragmenter.scala 194:41]
  wire [1:0] _GEN_19 = 4'h7 == auto_out_b_bits_id ? error_7 : _GEN_18; // @[Fragmenter.scala 194:41 Fragmenter.scala 194:41]
  wire [1:0] _GEN_20 = 4'h8 == auto_out_b_bits_id ? error_8 : _GEN_19; // @[Fragmenter.scala 194:41 Fragmenter.scala 194:41]
  wire [1:0] _GEN_21 = 4'h9 == auto_out_b_bits_id ? error_9 : _GEN_20; // @[Fragmenter.scala 194:41 Fragmenter.scala 194:41]
  wire [1:0] _GEN_22 = 4'ha == auto_out_b_bits_id ? error_10 : _GEN_21; // @[Fragmenter.scala 194:41 Fragmenter.scala 194:41]
  wire [1:0] _GEN_23 = 4'hb == auto_out_b_bits_id ? error_11 : _GEN_22; // @[Fragmenter.scala 194:41 Fragmenter.scala 194:41]
  wire [1:0] _GEN_24 = 4'hc == auto_out_b_bits_id ? error_12 : _GEN_23; // @[Fragmenter.scala 194:41 Fragmenter.scala 194:41]
  wire [1:0] _GEN_25 = 4'hd == auto_out_b_bits_id ? error_13 : _GEN_24; // @[Fragmenter.scala 194:41 Fragmenter.scala 194:41]
  wire [1:0] _GEN_26 = 4'he == auto_out_b_bits_id ? error_14 : _GEN_25; // @[Fragmenter.scala 194:41 Fragmenter.scala 194:41]
  wire [1:0] _GEN_27 = 4'hf == auto_out_b_bits_id ? error_15 : _GEN_26; // @[Fragmenter.scala 194:41 Fragmenter.scala 194:41]
  wire [15:0] _T_22 = 16'h1 << auto_out_b_bits_id; // @[OneHot.scala 65:12]
  wire  _T_40 = auto_data_1_b_ready & auto_out_b_valid; // @[Decoupled.scala 40:37]
  wire  _T_41 = (_T_22[0]) & _T_40; // @[Fragmenter.scala 196:19]
  wire [1:0] _error_0_T = error_0 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70]
  wire  _T_43 = (_T_22[1]) & _T_40; // @[Fragmenter.scala 196:19]
  wire [1:0] _error_1_T = error_1 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70]
  wire  _T_45 = (_T_22[2]) & _T_40; // @[Fragmenter.scala 196:19]
  wire [1:0] _error_2_T = error_2 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70]
  wire  _T_47 = (_T_22[3]) & _T_40; // @[Fragmenter.scala 196:19]
  wire [1:0] _error_3_T = error_3 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70]
  wire  _T_49 = (_T_22[4]) & _T_40; // @[Fragmenter.scala 196:19]
  wire [1:0] _error_4_T = error_4 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70]
  wire  _T_51 = (_T_22[5]) & _T_40; // @[Fragmenter.scala 196:19]
  wire [1:0] _error_5_T = error_5 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70]
  wire  _T_53 = (_T_22[6]) & _T_40; // @[Fragmenter.scala 196:19]
  wire [1:0] _error_6_T = error_6 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70]
  wire  _T_55 = (_T_22[7]) & _T_40; // @[Fragmenter.scala 196:19]
  wire [1:0] _error_7_T = error_7 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70]
  wire  _T_57 = (_T_22[8]) & _T_40; // @[Fragmenter.scala 196:19]
  wire [1:0] _error_8_T = error_8 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70]
  wire  _T_59 = (_T_22[9]) & _T_40; // @[Fragmenter.scala 196:19]
  wire [1:0] _error_9_T = error_9 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70]
  wire  _T_61 = (_T_22[10]) & _T_40; // @[Fragmenter.scala 196:19]
  wire [1:0] _error_10_T = error_10 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70]
  wire  _T_63 = (_T_22[11]) & _T_40; // @[Fragmenter.scala 196:19]
  wire [1:0] _error_11_T = error_11 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70]
  wire  _T_65 = (_T_22[12]) & _T_40; // @[Fragmenter.scala 196:19]
  wire [1:0] _error_12_T = error_12 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70]
  wire  _T_67 = (_T_22[13]) & _T_40; // @[Fragmenter.scala 196:19]
  wire [1:0] _error_13_T = error_13 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70]
  wire  _T_69 = (_T_22[14]) & _T_40; // @[Fragmenter.scala 196:19]
  wire [1:0] _error_14_T = error_14 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70]
  wire  _T_71 = (_T_22[15]) & _T_40; // @[Fragmenter.scala 196:19]
  wire [1:0] _error_15_T = error_15 | auto_out_b_bits_resp; // @[Fragmenter.scala 196:70]
  Queue_43 deq ( // @[Decoupled.scala 296:21]
    .clock(deq_clock),
    .reset(deq_reset),
    .io_enq_ready(deq_io_enq_ready),
    .io_enq_valid(deq_io_enq_valid),
    .io_enq_bits_id(deq_io_enq_bits_id),
    .io_enq_bits_addr(deq_io_enq_bits_addr),
    .io_enq_bits_len(deq_io_enq_bits_len),
    .io_enq_bits_size(deq_io_enq_bits_size),
    .io_enq_bits_burst(deq_io_enq_bits_burst),
    .io_deq_ready(deq_io_deq_ready),
    .io_deq_valid(deq_io_deq_valid),
    .io_deq_bits_id(deq_io_deq_bits_id),
    .io_deq_bits_addr(deq_io_deq_bits_addr),
    .io_deq_bits_len(deq_io_deq_bits_len),
    .io_deq_bits_size(deq_io_deq_bits_size),
    .io_deq_bits_burst(deq_io_deq_bits_burst)
  );
  Queue_43 deq_1 ( // @[Decoupled.scala 296:21]
    .clock(deq_1_clock),
    .reset(deq_1_reset),
    .io_enq_ready(deq_1_io_enq_ready),
    .io_enq_valid(deq_1_io_enq_valid),
    .io_enq_bits_id(deq_1_io_enq_bits_id),
    .io_enq_bits_addr(deq_1_io_enq_bits_addr),
    .io_enq_bits_len(deq_1_io_enq_bits_len),
    .io_enq_bits_size(deq_1_io_enq_bits_size),
    .io_enq_bits_burst(deq_1_io_enq_bits_burst),
    .io_deq_ready(deq_1_io_deq_ready),
    .io_deq_valid(deq_1_io_deq_valid),
    .io_deq_bits_id(deq_1_io_deq_bits_id),
    .io_deq_bits_addr(deq_1_io_deq_bits_addr),
    .io_deq_bits_len(deq_1_io_deq_bits_len),
    .io_deq_bits_size(deq_1_io_deq_bits_size),
    .io_deq_bits_burst(deq_1_io_deq_bits_burst)
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
  assign auto_in_b_bits_resp = auto_out_b_bits_resp | _GEN_27; // @[Fragmenter.scala 194:41]
  assign auto_in_ar_ready = deq_io_enq_ready; // @[Nodes.scala 1216:84 Decoupled.scala 299:17]
  assign auto_in_r_valid = auto_out_r_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_r_bits_last = auto_out_r_bits_last & auto_out_r_bits_echo_real_last; // @[Fragmenter.scala 184:41]
  assign auto_out_aw_valid = irr_1_valid & _in_aw_ready_T; // @[Fragmenter.scala 158:35]
  assign auto_out_aw_bits_id = deq_1_io_deq_bits_id; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_addr = ~_in_aw_bits_addr_T_5; // @[Fragmenter.scala 123:26]
  assign auto_out_aw_bits_echo_real_last = 8'h0 == len_1; // @[Fragmenter.scala 111:27]
  assign auto_out_w_valid = in_w_valid & ((~w_idle) | wbeats_valid); // @[Fragmenter.scala 174:33]
  assign auto_out_w_bits_data = in_w_deq_io_deq_bits_data; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_w_bits_strb = in_w_deq_io_deq_bits_strb; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_w_bits_last = w_todo == 9'h1; // @[Fragmenter.scala 168:27]
  assign auto_out_b_ready = auto_in_b_ready | (~auto_out_b_bits_echo_real_last); // @[Fragmenter.scala 190:33]
  assign auto_out_ar_valid = deq_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  assign auto_out_ar_bits_id = deq_io_deq_bits_id; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_addr = ~_in_ar_bits_addr_T_5; // @[Fragmenter.scala 123:26]
  assign auto_out_ar_bits_echo_real_last = 8'h0 == len; // @[Fragmenter.scala 111:27]
  assign auto_out_r_ready = auto_in_r_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_clock = clock;
  assign deq_reset = reset;
  assign deq_io_enq_valid = auto_in_ar_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_io_enq_bits_id = auto_in_ar_bits_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_io_enq_bits_addr = auto_in_ar_bits_addr; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_io_enq_bits_len = auto_in_ar_bits_len; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_io_enq_bits_size = auto_in_ar_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_io_enq_bits_burst = auto_in_ar_bits_burst; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_io_deq_ready = auto_out_ar_ready & ar_last; // @[Fragmenter.scala 112:30]
  assign deq_1_clock = clock;
  assign deq_1_reset = reset;
  assign deq_1_io_enq_valid = auto_in_aw_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_1_io_enq_bits_id = auto_in_aw_bits_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_1_io_enq_bits_addr = auto_in_aw_bits_addr; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_1_io_enq_bits_len = auto_in_aw_bits_len; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_1_io_enq_bits_size = auto_in_aw_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_1_io_enq_bits_burst = auto_in_aw_bits_burst; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
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
    end else if (_T_41) begin // @[Fragmenter.scala 196:36]
      if (auto_out_b_bits_echo_real_last) begin // @[Fragmenter.scala 196:48]
        error_0 <= 2'h0;
      end else begin
        error_0 <= _error_0_T;
      end
    end
    if (reset) begin // @[Fragmenter.scala 193:26]
      error_1 <= 2'h0; // @[Fragmenter.scala 193:26]
    end else if (_T_43) begin // @[Fragmenter.scala 196:36]
      if (auto_out_b_bits_echo_real_last) begin // @[Fragmenter.scala 196:48]
        error_1 <= 2'h0;
      end else begin
        error_1 <= _error_1_T;
      end
    end
    if (reset) begin // @[Fragmenter.scala 193:26]
      error_2 <= 2'h0; // @[Fragmenter.scala 193:26]
    end else if (_T_45) begin // @[Fragmenter.scala 196:36]
      if (auto_out_b_bits_echo_real_last) begin // @[Fragmenter.scala 196:48]
        error_2 <= 2'h0;
      end else begin
        error_2 <= _error_2_T;
      end
    end
    if (reset) begin // @[Fragmenter.scala 193:26]
      error_3 <= 2'h0; // @[Fragmenter.scala 193:26]
    end else if (_T_47) begin // @[Fragmenter.scala 196:36]
      if (auto_out_b_bits_echo_real_last) begin // @[Fragmenter.scala 196:48]
        error_3 <= 2'h0;
      end else begin
        error_3 <= _error_3_T;
      end
    end
    if (reset) begin // @[Fragmenter.scala 193:26]
      error_4 <= 2'h0; // @[Fragmenter.scala 193:26]
    end else if (_T_49) begin // @[Fragmenter.scala 196:36]
      if (auto_out_b_bits_echo_real_last) begin // @[Fragmenter.scala 196:48]
        error_4 <= 2'h0;
      end else begin
        error_4 <= _error_4_T;
      end
    end
    if (reset) begin // @[Fragmenter.scala 193:26]
      error_5 <= 2'h0; // @[Fragmenter.scala 193:26]
    end else if (_T_51) begin // @[Fragmenter.scala 196:36]
      if (auto_out_b_bits_echo_real_last) begin // @[Fragmenter.scala 196:48]
        error_5 <= 2'h0;
      end else begin
        error_5 <= _error_5_T;
      end
    end
    if (reset) begin // @[Fragmenter.scala 193:26]
      error_6 <= 2'h0; // @[Fragmenter.scala 193:26]
    end else if (_T_53) begin // @[Fragmenter.scala 196:36]
      if (auto_out_b_bits_echo_real_last) begin // @[Fragmenter.scala 196:48]
        error_6 <= 2'h0;
      end else begin
        error_6 <= _error_6_T;
      end
    end
    if (reset) begin // @[Fragmenter.scala 193:26]
      error_7 <= 2'h0; // @[Fragmenter.scala 193:26]
    end else if (_T_55) begin // @[Fragmenter.scala 196:36]
      if (auto_out_b_bits_echo_real_last) begin // @[Fragmenter.scala 196:48]
        error_7 <= 2'h0;
      end else begin
        error_7 <= _error_7_T;
      end
    end
    if (reset) begin // @[Fragmenter.scala 193:26]
      error_8 <= 2'h0; // @[Fragmenter.scala 193:26]
    end else if (_T_57) begin // @[Fragmenter.scala 196:36]
      if (auto_out_b_bits_echo_real_last) begin // @[Fragmenter.scala 196:48]
        error_8 <= 2'h0;
      end else begin
        error_8 <= _error_8_T;
      end
    end
    if (reset) begin // @[Fragmenter.scala 193:26]
      error_9 <= 2'h0; // @[Fragmenter.scala 193:26]
    end else if (_T_59) begin // @[Fragmenter.scala 196:36]
      if (auto_out_b_bits_echo_real_last) begin // @[Fragmenter.scala 196:48]
        error_9 <= 2'h0;
      end else begin
        error_9 <= _error_9_T;
      end
    end
    if (reset) begin // @[Fragmenter.scala 193:26]
      error_10 <= 2'h0; // @[Fragmenter.scala 193:26]
    end else if (_T_61) begin // @[Fragmenter.scala 196:36]
      if (auto_out_b_bits_echo_real_last) begin // @[Fragmenter.scala 196:48]
        error_10 <= 2'h0;
      end else begin
        error_10 <= _error_10_T;
      end
    end
    if (reset) begin // @[Fragmenter.scala 193:26]
      error_11 <= 2'h0; // @[Fragmenter.scala 193:26]
    end else if (_T_63) begin // @[Fragmenter.scala 196:36]
      if (auto_out_b_bits_echo_real_last) begin // @[Fragmenter.scala 196:48]
        error_11 <= 2'h0;
      end else begin
        error_11 <= _error_11_T;
      end
    end
    if (reset) begin // @[Fragmenter.scala 193:26]
      error_12 <= 2'h0; // @[Fragmenter.scala 193:26]
    end else if (_T_65) begin // @[Fragmenter.scala 196:36]
      if (auto_out_b_bits_echo_real_last) begin // @[Fragmenter.scala 196:48]
        error_12 <= 2'h0;
      end else begin
        error_12 <= _error_12_T;
      end
    end
    if (reset) begin // @[Fragmenter.scala 193:26]
      error_13 <= 2'h0; // @[Fragmenter.scala 193:26]
    end else if (_T_67) begin // @[Fragmenter.scala 196:36]
      if (auto_out_b_bits_echo_real_last) begin // @[Fragmenter.scala 196:48]
        error_13 <= 2'h0;
      end else begin
        error_13 <= _error_13_T;
      end
    end
    if (reset) begin // @[Fragmenter.scala 193:26]
      error_14 <= 2'h0; // @[Fragmenter.scala 193:26]
    end else if (_T_69) begin // @[Fragmenter.scala 196:36]
      if (auto_out_b_bits_echo_real_last) begin // @[Fragmenter.scala 196:48]
        error_14 <= 2'h0;
      end else begin
        error_14 <= _error_14_T;
      end
    end
    if (reset) begin // @[Fragmenter.scala 193:26]
      error_15 <= 2'h0; // @[Fragmenter.scala 193:26]
    end else if (_T_71) begin // @[Fragmenter.scala 196:36]
      if (auto_out_b_bits_echo_real_last) begin // @[Fragmenter.scala 196:48]
        error_15 <= 2'h0;
      end else begin
        error_15 <= _error_15_T;
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
  r_addr = _RAND_1[27:0];
  _RAND_2 = {1{`RANDOM}};
  r_len = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  busy_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  r_addr_1 = _RAND_4[27:0];
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
  _RAND_10 = {1{`RANDOM}};
  error_2 = _RAND_10[1:0];
  _RAND_11 = {1{`RANDOM}};
  error_3 = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  error_4 = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  error_5 = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  error_6 = _RAND_14[1:0];
  _RAND_15 = {1{`RANDOM}};
  error_7 = _RAND_15[1:0];
  _RAND_16 = {1{`RANDOM}};
  error_8 = _RAND_16[1:0];
  _RAND_17 = {1{`RANDOM}};
  error_9 = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  error_10 = _RAND_18[1:0];
  _RAND_19 = {1{`RANDOM}};
  error_11 = _RAND_19[1:0];
  _RAND_20 = {1{`RANDOM}};
  error_12 = _RAND_20[1:0];
  _RAND_21 = {1{`RANDOM}};
  error_13 = _RAND_21[1:0];
  _RAND_22 = {1{`RANDOM}};
  error_14 = _RAND_22[1:0];
  _RAND_23 = {1{`RANDOM}};
  error_15 = _RAND_23[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
