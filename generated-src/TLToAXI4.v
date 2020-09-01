module TLToAXI4(
  input         clock,
  input         reset,
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [3:0]  auto_in_a_bits_size,
  input  [4:0]  auto_in_a_bits_source,
  input  [30:0] auto_in_a_bits_address,
  input         auto_in_a_bits_user_amba_prot_bufferable,
  input         auto_in_a_bits_user_amba_prot_modifiable,
  input         auto_in_a_bits_user_amba_prot_readalloc,
  input         auto_in_a_bits_user_amba_prot_writealloc,
  input         auto_in_a_bits_user_amba_prot_privileged,
  input         auto_in_a_bits_user_amba_prot_secure,
  input         auto_in_a_bits_user_amba_prot_fetch,
  input  [7:0]  auto_in_a_bits_mask,
  input  [63:0] auto_in_a_bits_data,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output [2:0]  auto_in_d_bits_opcode,
  output [3:0]  auto_in_d_bits_size,
  output [4:0]  auto_in_d_bits_source,
  output        auto_in_d_bits_denied,
  output [63:0] auto_in_d_bits_data,
  output        auto_in_d_bits_corrupt,
  input         auto_out_aw_ready,
  output        auto_out_aw_valid,
  output [2:0]  auto_out_aw_bits_id,
  output [30:0] auto_out_aw_bits_addr,
  output [7:0]  auto_out_aw_bits_len,
  output [2:0]  auto_out_aw_bits_size,
  output [1:0]  auto_out_aw_bits_burst,
  output        auto_out_aw_bits_lock,
  output [3:0]  auto_out_aw_bits_cache,
  output [2:0]  auto_out_aw_bits_prot,
  output [3:0]  auto_out_aw_bits_qos,
  output [3:0]  auto_out_aw_bits_echo_tl_state_size,
  output [4:0]  auto_out_aw_bits_echo_tl_state_source,
  input         auto_out_w_ready,
  output        auto_out_w_valid,
  output [63:0] auto_out_w_bits_data,
  output [7:0]  auto_out_w_bits_strb,
  output        auto_out_w_bits_last,
  output        auto_out_b_ready,
  input         auto_out_b_valid,
  input  [2:0]  auto_out_b_bits_id,
  input  [1:0]  auto_out_b_bits_resp,
  input  [3:0]  auto_out_b_bits_echo_tl_state_size,
  input  [4:0]  auto_out_b_bits_echo_tl_state_source,
  input         auto_out_ar_ready,
  output        auto_out_ar_valid,
  output [2:0]  auto_out_ar_bits_id,
  output [30:0] auto_out_ar_bits_addr,
  output [7:0]  auto_out_ar_bits_len,
  output [2:0]  auto_out_ar_bits_size,
  output [1:0]  auto_out_ar_bits_burst,
  output        auto_out_ar_bits_lock,
  output [3:0]  auto_out_ar_bits_cache,
  output [2:0]  auto_out_ar_bits_prot,
  output [3:0]  auto_out_ar_bits_qos,
  output [3:0]  auto_out_ar_bits_echo_tl_state_size,
  output [4:0]  auto_out_ar_bits_echo_tl_state_source,
  output        auto_out_r_ready,
  input         auto_out_r_valid,
  input  [2:0]  auto_out_r_bits_id,
  input  [63:0] auto_out_r_bits_data,
  input  [1:0]  auto_out_r_bits_resp,
  input  [3:0]  auto_out_r_bits_echo_tl_state_size,
  input  [4:0]  auto_out_r_bits_echo_tl_state_source,
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
`endif // RANDOMIZE_REG_INIT
  wire  deq_clock; // @[Decoupled.scala 296:21]
  wire  deq_reset; // @[Decoupled.scala 296:21]
  wire  deq_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  deq_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [63:0] deq_io_enq_bits_data; // @[Decoupled.scala 296:21]
  wire [7:0] deq_io_enq_bits_strb; // @[Decoupled.scala 296:21]
  wire  deq_io_enq_bits_last; // @[Decoupled.scala 296:21]
  wire  deq_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  deq_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [63:0] deq_io_deq_bits_data; // @[Decoupled.scala 296:21]
  wire [7:0] deq_io_deq_bits_strb; // @[Decoupled.scala 296:21]
  wire  deq_io_deq_bits_last; // @[Decoupled.scala 296:21]
  wire  queue_arw_deq_clock; // @[Decoupled.scala 296:21]
  wire  queue_arw_deq_reset; // @[Decoupled.scala 296:21]
  wire  queue_arw_deq_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  queue_arw_deq_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [2:0] queue_arw_deq_io_enq_bits_id; // @[Decoupled.scala 296:21]
  wire [30:0] queue_arw_deq_io_enq_bits_addr; // @[Decoupled.scala 296:21]
  wire [7:0] queue_arw_deq_io_enq_bits_len; // @[Decoupled.scala 296:21]
  wire [2:0] queue_arw_deq_io_enq_bits_size; // @[Decoupled.scala 296:21]
  wire [3:0] queue_arw_deq_io_enq_bits_cache; // @[Decoupled.scala 296:21]
  wire [2:0] queue_arw_deq_io_enq_bits_prot; // @[Decoupled.scala 296:21]
  wire [3:0] queue_arw_deq_io_enq_bits_echo_tl_state_size; // @[Decoupled.scala 296:21]
  wire [4:0] queue_arw_deq_io_enq_bits_echo_tl_state_source; // @[Decoupled.scala 296:21]
  wire  queue_arw_deq_io_enq_bits_wen; // @[Decoupled.scala 296:21]
  wire  queue_arw_deq_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  queue_arw_deq_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [2:0] queue_arw_deq_io_deq_bits_id; // @[Decoupled.scala 296:21]
  wire [30:0] queue_arw_deq_io_deq_bits_addr; // @[Decoupled.scala 296:21]
  wire [7:0] queue_arw_deq_io_deq_bits_len; // @[Decoupled.scala 296:21]
  wire [2:0] queue_arw_deq_io_deq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] queue_arw_deq_io_deq_bits_burst; // @[Decoupled.scala 296:21]
  wire  queue_arw_deq_io_deq_bits_lock; // @[Decoupled.scala 296:21]
  wire [3:0] queue_arw_deq_io_deq_bits_cache; // @[Decoupled.scala 296:21]
  wire [2:0] queue_arw_deq_io_deq_bits_prot; // @[Decoupled.scala 296:21]
  wire [3:0] queue_arw_deq_io_deq_bits_qos; // @[Decoupled.scala 296:21]
  wire [3:0] queue_arw_deq_io_deq_bits_echo_tl_state_size; // @[Decoupled.scala 296:21]
  wire [4:0] queue_arw_deq_io_deq_bits_echo_tl_state_source; // @[Decoupled.scala 296:21]
  wire  queue_arw_deq_io_deq_bits_wen; // @[Decoupled.scala 296:21]
  wire  a_isPut = ~(auto_in_a_bits_opcode[2]); // @[Edges.scala 93:28]
  reg  count_1; // @[ToAXI4.scala 247:28]
  wire  idle = ~count_1; // @[ToAXI4.scala 249:26]
  reg  count_4; // @[ToAXI4.scala 247:28]
  wire  idle_3 = ~count_4; // @[ToAXI4.scala 249:26]
  reg  count_5; // @[ToAXI4.scala 247:28]
  wire  idle_4 = ~count_5; // @[ToAXI4.scala 249:26]
  reg [3:0] count_3; // @[ToAXI4.scala 247:28]
  wire  idle_2 = count_3 == 4'h0; // @[ToAXI4.scala 249:26]
  reg  write_2; // @[ToAXI4.scala 248:24]
  wire  mismatch_1 = write_2 != a_isPut; // @[ToAXI4.scala 260:50]
  wire  idStall_2 = ((~idle_2) & mismatch_1) | (count_3 == 4'h8); // @[ToAXI4.scala 261:34]
  reg [3:0] count_2; // @[ToAXI4.scala 247:28]
  wire  idle_1 = count_2 == 4'h0; // @[ToAXI4.scala 249:26]
  reg  write_1; // @[ToAXI4.scala 248:24]
  wire  mismatch = write_1 != a_isPut; // @[ToAXI4.scala 260:50]
  wire  idStall_1 = ((~idle_1) & mismatch) | (count_2 == 4'h8); // @[ToAXI4.scala 261:34]
  wire  _GEN_29 = 5'h8 == auto_in_a_bits_source ? idStall_2 : idStall_1; // @[ToAXI4.scala 194:49 ToAXI4.scala 194:49]
  wire  _GEN_30 = 5'h9 == auto_in_a_bits_source ? idStall_2 : _GEN_29; // @[ToAXI4.scala 194:49 ToAXI4.scala 194:49]
  wire  _GEN_31 = 5'ha == auto_in_a_bits_source ? idStall_2 : _GEN_30; // @[ToAXI4.scala 194:49 ToAXI4.scala 194:49]
  wire  _GEN_32 = 5'hb == auto_in_a_bits_source ? idStall_2 : _GEN_31; // @[ToAXI4.scala 194:49 ToAXI4.scala 194:49]
  wire  _GEN_33 = 5'hc == auto_in_a_bits_source ? idStall_2 : _GEN_32; // @[ToAXI4.scala 194:49 ToAXI4.scala 194:49]
  wire  _GEN_34 = 5'hd == auto_in_a_bits_source ? idStall_2 : _GEN_33; // @[ToAXI4.scala 194:49 ToAXI4.scala 194:49]
  wire  _GEN_35 = 5'he == auto_in_a_bits_source ? idStall_2 : _GEN_34; // @[ToAXI4.scala 194:49 ToAXI4.scala 194:49]
  wire  _GEN_36 = 5'hf == auto_in_a_bits_source ? idStall_2 : _GEN_35; // @[ToAXI4.scala 194:49 ToAXI4.scala 194:49]
  wire  _GEN_37 = 5'h10 == auto_in_a_bits_source ? count_5 : _GEN_36; // @[ToAXI4.scala 194:49 ToAXI4.scala 194:49]
  wire  _GEN_38 = 5'h11 == auto_in_a_bits_source ? count_4 : _GEN_37; // @[ToAXI4.scala 194:49 ToAXI4.scala 194:49]
  wire  _GEN_39 = 5'h12 == auto_in_a_bits_source ? count_1 : _GEN_38; // @[ToAXI4.scala 194:49 ToAXI4.scala 194:49]
  reg [4:0] counter; // @[Edges.scala 230:27]
  wire  a_first = counter == 5'h0; // @[Edges.scala 232:25]
  wire  stall = _GEN_39 & a_first; // @[ToAXI4.scala 194:49]
  wire  _auto_data_a_ready_T = ~stall; // @[ToAXI4.scala 195:21]
  reg  doneAW; // @[ToAXI4.scala 160:30]
  wire  queue_arw_x7_ready = queue_arw_deq_io_enq_ready; // @[ToAXI4.scala 146:25 Decoupled.scala 299:17]
  wire  _auto_data_a_ready_T_1 = doneAW | queue_arw_x7_ready; // @[ToAXI4.scala 195:52]
  wire  x3_ready = deq_io_enq_ready; // @[ToAXI4.scala 147:23 Decoupled.scala 299:17]
  wire  _auto_data_a_ready_T_3 = a_isPut ? (doneAW | queue_arw_x7_ready) & x3_ready : queue_arw_x7_ready; // @[ToAXI4.scala 195:34]
  wire  auto_data_a_ready = (~stall) & _auto_data_a_ready_T_3; // @[ToAXI4.scala 195:28]
  wire  _T = auto_data_a_ready & auto_in_a_valid; // @[Decoupled.scala 40:37]
  wire [22:0] _beats1_decode_T_1 = 23'hff << auto_in_a_bits_size; // @[package.scala 212:77]
  wire [7:0] _beats1_decode_T_3 = ~(_beats1_decode_T_1[7:0]); // @[package.scala 212:46]
  wire [4:0] beats1_decode = _beats1_decode_T_3[7:3]; // @[Edges.scala 221:59]
  wire [4:0] beats1 = a_isPut ? beats1_decode : 5'h0; // @[Edges.scala 222:14]
  wire [4:0] counter1 = counter - 5'h1; // @[Edges.scala 231:28]
  wire  a_last = (counter == 5'h1) | (beats1 == 5'h0); // @[Edges.scala 233:37]
  wire  queue_arw_bits_wen = queue_arw_deq_io_deq_bits_wen; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  wire  queue_arw_valid = queue_arw_deq_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  wire  _doneAW_T = ~a_last; // @[ToAXI4.scala 161:38]
  wire [2:0] _GEN_10 = 5'h8 == auto_in_a_bits_source ? 3'h2 : 3'h1; // @[ToAXI4.scala 165:17 ToAXI4.scala 165:17]
  wire [2:0] _GEN_11 = 5'h9 == auto_in_a_bits_source ? 3'h2 : _GEN_10; // @[ToAXI4.scala 165:17 ToAXI4.scala 165:17]
  wire [2:0] _GEN_12 = 5'ha == auto_in_a_bits_source ? 3'h2 : _GEN_11; // @[ToAXI4.scala 165:17 ToAXI4.scala 165:17]
  wire [2:0] _GEN_13 = 5'hb == auto_in_a_bits_source ? 3'h2 : _GEN_12; // @[ToAXI4.scala 165:17 ToAXI4.scala 165:17]
  wire [2:0] _GEN_14 = 5'hc == auto_in_a_bits_source ? 3'h2 : _GEN_13; // @[ToAXI4.scala 165:17 ToAXI4.scala 165:17]
  wire [2:0] _GEN_15 = 5'hd == auto_in_a_bits_source ? 3'h2 : _GEN_14; // @[ToAXI4.scala 165:17 ToAXI4.scala 165:17]
  wire [2:0] _GEN_16 = 5'he == auto_in_a_bits_source ? 3'h2 : _GEN_15; // @[ToAXI4.scala 165:17 ToAXI4.scala 165:17]
  wire [2:0] _GEN_17 = 5'hf == auto_in_a_bits_source ? 3'h2 : _GEN_16; // @[ToAXI4.scala 165:17 ToAXI4.scala 165:17]
  wire [2:0] _GEN_18 = 5'h10 == auto_in_a_bits_source ? 3'h4 : _GEN_17; // @[ToAXI4.scala 165:17 ToAXI4.scala 165:17]
  wire [2:0] _GEN_19 = 5'h11 == auto_in_a_bits_source ? 3'h3 : _GEN_18; // @[ToAXI4.scala 165:17 ToAXI4.scala 165:17]
  wire [2:0] queue_arw_x7_bits_id = 5'h12 == auto_in_a_bits_source ? 3'h0 : _GEN_19; // @[ToAXI4.scala 165:17 ToAXI4.scala 165:17]
  wire [25:0] _queue_arw_x7_bits_len_T_1 = 26'h7ff << auto_in_a_bits_size; // @[package.scala 212:77]
  wire [10:0] _queue_arw_x7_bits_len_T_3 = ~(_queue_arw_x7_bits_len_T_1[10:0]); // @[package.scala 212:46]
  wire [3:0] _queue_arw_x7_bits_size_T_1 = auto_in_a_bits_size >= 4'h3 ? 4'h3 : auto_in_a_bits_size; // @[ToAXI4.scala 168:23]
  wire  prot_1 = ~auto_in_a_bits_user_amba_prot_secure; // @[ToAXI4.scala 184:20]
  wire [1:0] queue_arw_x7_bits_prot_right = {auto_in_a_bits_user_amba_prot_fetch,prot_1}; // @[Cat.scala 29:58]
  wire [1:0] queue_arw_x7_bits_cache_left = {auto_in_a_bits_user_amba_prot_modifiable,
    auto_in_a_bits_user_amba_prot_bufferable}; // @[Cat.scala 29:58]
  wire [1:0] queue_arw_x7_bits_cache_right = {auto_in_a_bits_user_amba_prot_writealloc,
    auto_in_a_bits_user_amba_prot_readalloc}; // @[Cat.scala 29:58]
  wire  _queue_arw_x7_valid_T_1 = _auto_data_a_ready_T & auto_in_a_valid; // @[ToAXI4.scala 196:31]
  wire  _queue_arw_x7_valid_T_4 = a_isPut ? (~doneAW) & x3_ready : 1'h1; // @[ToAXI4.scala 196:51]
  wire  queue_arw_x7_valid = (_auto_data_a_ready_T & auto_in_a_valid) & _queue_arw_x7_valid_T_4; // @[ToAXI4.scala 196:45]
  reg  r_holds_d; // @[ToAXI4.scala 205:30]
  wire  _T_2 = auto_in_d_ready & auto_out_r_valid; // @[Decoupled.scala 40:37]
  wire  _r_holds_d_T = ~auto_out_r_bits_last; // @[ToAXI4.scala 206:42]
  wire  r_wins = auto_out_r_valid | r_holds_d; // @[ToAXI4.scala 208:32]
  wire  auto_data_d_valid = r_wins ? auto_out_r_valid : auto_out_b_valid; // @[ToAXI4.scala 212:24]
  reg  r_first; // @[ToAXI4.scala 217:28]
  wire  _GEN_41 = _T_2 ? auto_out_r_bits_last : r_first; // @[ToAXI4.scala 218:27 ToAXI4.scala 218:37 ToAXI4.scala 217:28]
  wire  _r_denied_T = auto_out_r_bits_resp == 2'h3; // @[ToAXI4.scala 219:39]
  reg  r_denied_r; // @[Reg.scala 15:16]
  wire  _GEN_42 = r_first ? _r_denied_T : r_denied_r; // @[Reg.scala 16:19 Reg.scala 16:23 Reg.scala 15:16]
  wire  r_corrupt = auto_out_r_bits_resp != 2'h0; // @[ToAXI4.scala 220:39]
  wire  b_denied = auto_out_b_bits_resp != 2'h0; // @[ToAXI4.scala 221:39]
  wire  r_d_corrupt = r_corrupt | _GEN_42; // @[ToAXI4.scala 223:100]
  wire [7:0] _a_sel_T = 8'h1 << queue_arw_x7_bits_id; // @[OneHot.scala 65:12]
  wire  a_sel_0 = _a_sel_T[0]; // @[ToAXI4.scala 235:58]
  wire  a_sel_1 = _a_sel_T[1]; // @[ToAXI4.scala 235:58]
  wire  a_sel_2 = _a_sel_T[2]; // @[ToAXI4.scala 235:58]
  wire  a_sel_3 = _a_sel_T[3]; // @[ToAXI4.scala 235:58]
  wire  a_sel_4 = _a_sel_T[4]; // @[ToAXI4.scala 235:58]
  wire [2:0] d_sel_shiftAmount = r_wins ? auto_out_r_bits_id : auto_out_b_bits_id; // @[ToAXI4.scala 236:31]
  wire [7:0] _d_sel_T_1 = 8'h1 << d_sel_shiftAmount; // @[OneHot.scala 65:12]
  wire  d_sel_0 = _d_sel_T_1[0]; // @[ToAXI4.scala 236:93]
  wire  d_sel_1 = _d_sel_T_1[1]; // @[ToAXI4.scala 236:93]
  wire  d_sel_2 = _d_sel_T_1[2]; // @[ToAXI4.scala 236:93]
  wire  d_sel_3 = _d_sel_T_1[3]; // @[ToAXI4.scala 236:93]
  wire  d_sel_4 = _d_sel_T_1[4]; // @[ToAXI4.scala 236:93]
  wire  d_last = r_wins ? auto_out_r_bits_last : 1'h1; // @[ToAXI4.scala 237:23]
  wire  _inc_T = queue_arw_x7_ready & queue_arw_x7_valid; // @[Decoupled.scala 40:37]
  wire  inc = a_sel_0 & _inc_T; // @[ToAXI4.scala 251:22]
  wire  _dec_T_1 = auto_in_d_ready & auto_data_d_valid; // @[Decoupled.scala 40:37]
  wire  dec = (d_sel_0 & d_last) & _dec_T_1; // @[ToAXI4.scala 252:32]
  wire  _count_1_T_1 = count_1 + inc; // @[ToAXI4.scala 253:24]
  wire  _count_1_T_3 = _count_1_T_1 - dec; // @[ToAXI4.scala 253:37]
  wire  inc_1 = a_sel_1 & _inc_T; // @[ToAXI4.scala 251:22]
  wire  dec_1 = (d_sel_1 & d_last) & _dec_T_1; // @[ToAXI4.scala 252:32]
  wire [3:0] _GEN_48 = {{3'd0}, inc_1}; // @[ToAXI4.scala 253:24]
  wire [3:0] _count_2_T_1 = count_2 + _GEN_48; // @[ToAXI4.scala 253:24]
  wire [3:0] _GEN_49 = {{3'd0}, dec_1}; // @[ToAXI4.scala 253:37]
  wire [3:0] _count_2_T_3 = _count_2_T_1 - _GEN_49; // @[ToAXI4.scala 253:37]
  wire  inc_2 = a_sel_2 & _inc_T; // @[ToAXI4.scala 251:22]
  wire  dec_2 = (d_sel_2 & d_last) & _dec_T_1; // @[ToAXI4.scala 252:32]
  wire [3:0] _GEN_50 = {{3'd0}, inc_2}; // @[ToAXI4.scala 253:24]
  wire [3:0] _count_3_T_1 = count_3 + _GEN_50; // @[ToAXI4.scala 253:24]
  wire [3:0] _GEN_51 = {{3'd0}, dec_2}; // @[ToAXI4.scala 253:37]
  wire [3:0] _count_3_T_3 = _count_3_T_1 - _GEN_51; // @[ToAXI4.scala 253:37]
  wire  inc_3 = a_sel_3 & _inc_T; // @[ToAXI4.scala 251:22]
  wire  dec_3 = (d_sel_3 & d_last) & _dec_T_1; // @[ToAXI4.scala 252:32]
  wire  _count_4_T_1 = count_4 + inc_3; // @[ToAXI4.scala 253:24]
  wire  _count_4_T_3 = _count_4_T_1 - dec_3; // @[ToAXI4.scala 253:37]
  wire  inc_4 = a_sel_4 & _inc_T; // @[ToAXI4.scala 251:22]
  wire  dec_4 = (d_sel_4 & d_last) & _dec_T_1; // @[ToAXI4.scala 252:32]
  wire  _count_5_T_1 = count_5 + inc_4; // @[ToAXI4.scala 253:24]
  wire  _count_5_T_3 = _count_5_T_1 - dec_4; // @[ToAXI4.scala 253:37]
  Queue_10 deq ( // @[Decoupled.scala 296:21]
    .clock(deq_clock),
    .reset(deq_reset),
    .io_enq_ready(deq_io_enq_ready),
    .io_enq_valid(deq_io_enq_valid),
    .io_enq_bits_data(deq_io_enq_bits_data),
    .io_enq_bits_strb(deq_io_enq_bits_strb),
    .io_enq_bits_last(deq_io_enq_bits_last),
    .io_deq_ready(deq_io_deq_ready),
    .io_deq_valid(deq_io_deq_valid),
    .io_deq_bits_data(deq_io_deq_bits_data),
    .io_deq_bits_strb(deq_io_deq_bits_strb),
    .io_deq_bits_last(deq_io_deq_bits_last)
  );
  Queue_11 queue_arw_deq ( // @[Decoupled.scala 296:21]
    .clock(queue_arw_deq_clock),
    .reset(queue_arw_deq_reset),
    .io_enq_ready(queue_arw_deq_io_enq_ready),
    .io_enq_valid(queue_arw_deq_io_enq_valid),
    .io_enq_bits_id(queue_arw_deq_io_enq_bits_id),
    .io_enq_bits_addr(queue_arw_deq_io_enq_bits_addr),
    .io_enq_bits_len(queue_arw_deq_io_enq_bits_len),
    .io_enq_bits_size(queue_arw_deq_io_enq_bits_size),
    .io_enq_bits_cache(queue_arw_deq_io_enq_bits_cache),
    .io_enq_bits_prot(queue_arw_deq_io_enq_bits_prot),
    .io_enq_bits_echo_tl_state_size(queue_arw_deq_io_enq_bits_echo_tl_state_size),
    .io_enq_bits_echo_tl_state_source(queue_arw_deq_io_enq_bits_echo_tl_state_source),
    .io_enq_bits_wen(queue_arw_deq_io_enq_bits_wen),
    .io_deq_ready(queue_arw_deq_io_deq_ready),
    .io_deq_valid(queue_arw_deq_io_deq_valid),
    .io_deq_bits_id(queue_arw_deq_io_deq_bits_id),
    .io_deq_bits_addr(queue_arw_deq_io_deq_bits_addr),
    .io_deq_bits_len(queue_arw_deq_io_deq_bits_len),
    .io_deq_bits_size(queue_arw_deq_io_deq_bits_size),
    .io_deq_bits_burst(queue_arw_deq_io_deq_bits_burst),
    .io_deq_bits_lock(queue_arw_deq_io_deq_bits_lock),
    .io_deq_bits_cache(queue_arw_deq_io_deq_bits_cache),
    .io_deq_bits_prot(queue_arw_deq_io_deq_bits_prot),
    .io_deq_bits_qos(queue_arw_deq_io_deq_bits_qos),
    .io_deq_bits_echo_tl_state_size(queue_arw_deq_io_deq_bits_echo_tl_state_size),
    .io_deq_bits_echo_tl_state_source(queue_arw_deq_io_deq_bits_echo_tl_state_source),
    .io_deq_bits_wen(queue_arw_deq_io_deq_bits_wen)
  );
  assign auto_in_a_ready = (~stall) & _auto_data_a_ready_T_3; // @[ToAXI4.scala 195:28]
  assign auto_in_d_valid = r_wins ? auto_out_r_valid : auto_out_b_valid; // @[ToAXI4.scala 212:24]
  assign auto_in_d_bits_opcode = r_wins ? 3'h1 : 3'h0; // @[ToAXI4.scala 230:23]
  assign auto_in_d_bits_size = r_wins ? auto_out_r_bits_echo_tl_state_size : auto_out_b_bits_echo_tl_state_size; // @[ToAXI4.scala 230:23]
  assign auto_in_d_bits_source = r_wins ? auto_out_r_bits_echo_tl_state_source : auto_out_b_bits_echo_tl_state_source; // @[ToAXI4.scala 230:23]
  assign auto_in_d_bits_denied = r_wins ? _GEN_42 : b_denied; // @[ToAXI4.scala 230:23]
  assign auto_in_d_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_d_bits_corrupt = r_wins & r_d_corrupt; // @[ToAXI4.scala 230:23]
  assign auto_out_aw_valid = queue_arw_valid & queue_arw_bits_wen; // @[ToAXI4.scala 155:39]
  assign auto_out_aw_bits_id = queue_arw_deq_io_deq_bits_id; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_addr = queue_arw_deq_io_deq_bits_addr; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_len = queue_arw_deq_io_deq_bits_len; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_size = queue_arw_deq_io_deq_bits_size; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_burst = queue_arw_deq_io_deq_bits_burst; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_lock = queue_arw_deq_io_deq_bits_lock; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_cache = queue_arw_deq_io_deq_bits_cache; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_prot = queue_arw_deq_io_deq_bits_prot; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_qos = queue_arw_deq_io_deq_bits_qos; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_echo_tl_state_size = queue_arw_deq_io_deq_bits_echo_tl_state_size; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_echo_tl_state_source = queue_arw_deq_io_deq_bits_echo_tl_state_source; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_w_valid = deq_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  assign auto_out_w_bits_data = deq_io_deq_bits_data; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_w_bits_strb = deq_io_deq_bits_strb; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_w_bits_last = deq_io_deq_bits_last; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_b_ready = auto_in_d_ready & (~r_wins); // @[ToAXI4.scala 211:33]
  assign auto_out_ar_valid = queue_arw_valid & (~queue_arw_bits_wen); // @[ToAXI4.scala 154:39]
  assign auto_out_ar_bits_id = queue_arw_deq_io_deq_bits_id; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_addr = queue_arw_deq_io_deq_bits_addr; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_len = queue_arw_deq_io_deq_bits_len; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_size = queue_arw_deq_io_deq_bits_size; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_burst = queue_arw_deq_io_deq_bits_burst; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_lock = queue_arw_deq_io_deq_bits_lock; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_cache = queue_arw_deq_io_deq_bits_cache; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_prot = queue_arw_deq_io_deq_bits_prot; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_qos = queue_arw_deq_io_deq_bits_qos; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_echo_tl_state_size = queue_arw_deq_io_deq_bits_echo_tl_state_size; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_echo_tl_state_source = queue_arw_deq_io_deq_bits_echo_tl_state_source; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_r_ready = auto_in_d_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_clock = clock;
  assign deq_reset = reset;
  assign deq_io_enq_valid = (_queue_arw_x7_valid_T_1 & a_isPut) & _auto_data_a_ready_T_1; // @[ToAXI4.scala 198:54]
  assign deq_io_enq_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_io_enq_bits_strb = auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign deq_io_enq_bits_last = (counter == 5'h1) | (beats1 == 5'h0); // @[Edges.scala 233:37]
  assign deq_io_deq_ready = auto_out_w_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign queue_arw_deq_clock = clock;
  assign queue_arw_deq_reset = reset;
  assign queue_arw_deq_io_enq_valid = (_auto_data_a_ready_T & auto_in_a_valid) & _queue_arw_x7_valid_T_4; // @[ToAXI4.scala 196:45]
  assign queue_arw_deq_io_enq_bits_id = 5'h12 == auto_in_a_bits_source ? 3'h0 : _GEN_19; // @[ToAXI4.scala 165:17 ToAXI4.scala 165:17]
  assign queue_arw_deq_io_enq_bits_addr = auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign queue_arw_deq_io_enq_bits_len = _queue_arw_x7_bits_len_T_3[10:3]; // @[ToAXI4.scala 167:84]
  assign queue_arw_deq_io_enq_bits_size = _queue_arw_x7_bits_size_T_1[2:0]; // @[ToAXI4.scala 146:25 ToAXI4.scala 168:17]
  assign queue_arw_deq_io_enq_bits_cache = {queue_arw_x7_bits_cache_right,queue_arw_x7_bits_cache_left}; // @[Cat.scala 29:58]
  assign queue_arw_deq_io_enq_bits_prot = {queue_arw_x7_bits_prot_right,auto_in_a_bits_user_amba_prot_privileged}; // @[Cat.scala 29:58]
  assign queue_arw_deq_io_enq_bits_echo_tl_state_size = auto_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign queue_arw_deq_io_enq_bits_echo_tl_state_source = auto_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign queue_arw_deq_io_enq_bits_wen = ~(auto_in_a_bits_opcode[2]); // @[Edges.scala 93:28]
  assign queue_arw_deq_io_deq_ready = queue_arw_bits_wen ? auto_out_aw_ready : auto_out_ar_ready; // @[ToAXI4.scala 156:29]
  always @(posedge clock) begin
    if (reset) begin // @[ToAXI4.scala 247:28]
      count_1 <= 1'h0; // @[ToAXI4.scala 247:28]
    end else begin
      count_1 <= _count_1_T_3; // @[ToAXI4.scala 253:15]
    end
    if (reset) begin // @[ToAXI4.scala 247:28]
      count_4 <= 1'h0; // @[ToAXI4.scala 247:28]
    end else begin
      count_4 <= _count_4_T_3; // @[ToAXI4.scala 253:15]
    end
    if (reset) begin // @[ToAXI4.scala 247:28]
      count_5 <= 1'h0; // @[ToAXI4.scala 247:28]
    end else begin
      count_5 <= _count_5_T_3; // @[ToAXI4.scala 253:15]
    end
    if (reset) begin // @[ToAXI4.scala 247:28]
      count_3 <= 4'h0; // @[ToAXI4.scala 247:28]
    end else begin
      count_3 <= _count_3_T_3; // @[ToAXI4.scala 253:15]
    end
    if (inc_2) begin // @[ToAXI4.scala 258:20]
      write_2 <= a_isPut; // @[ToAXI4.scala 258:28]
    end
    if (reset) begin // @[ToAXI4.scala 247:28]
      count_2 <= 4'h0; // @[ToAXI4.scala 247:28]
    end else begin
      count_2 <= _count_2_T_3; // @[ToAXI4.scala 253:15]
    end
    if (inc_1) begin // @[ToAXI4.scala 258:20]
      write_1 <= a_isPut; // @[ToAXI4.scala 258:28]
    end
    if (reset) begin // @[Edges.scala 230:27]
      counter <= 5'h0; // @[Edges.scala 230:27]
    end else if (_T) begin // @[Edges.scala 236:17]
      if (a_first) begin // @[Edges.scala 237:21]
        if (a_isPut) begin // @[Edges.scala 222:14]
          counter <= beats1_decode;
        end else begin
          counter <= 5'h0;
        end
      end else begin
        counter <= counter1;
      end
    end
    if (reset) begin // @[ToAXI4.scala 160:30]
      doneAW <= 1'h0; // @[ToAXI4.scala 160:30]
    end else if (_T) begin // @[ToAXI4.scala 161:26]
      doneAW <= _doneAW_T; // @[ToAXI4.scala 161:35]
    end
    if (reset) begin // @[ToAXI4.scala 205:30]
      r_holds_d <= 1'h0; // @[ToAXI4.scala 205:30]
    end else if (_T_2) begin // @[ToAXI4.scala 206:27]
      r_holds_d <= _r_holds_d_T; // @[ToAXI4.scala 206:39]
    end
    r_first <= reset | _GEN_41; // @[ToAXI4.scala 217:28 ToAXI4.scala 217:28]
    if (r_first) begin // @[Reg.scala 16:19]
      r_denied_r <= _r_denied_T; // @[Reg.scala 16:23]
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
  count_1 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  count_4 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  count_5 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  count_3 = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  write_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  count_2 = _RAND_5[3:0];
  _RAND_6 = {1{`RANDOM}};
  write_1 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  counter = _RAND_7[4:0];
  _RAND_8 = {1{`RANDOM}};
  doneAW = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  r_holds_d = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  r_first = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  r_denied_r = _RAND_11[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
