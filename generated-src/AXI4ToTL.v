module AXI4ToTL(
  input         clock,
  input         reset,
  output        auto_in_aw_ready,
  input         auto_in_aw_valid,
  input         auto_in_aw_bits_id,
  input  [31:0] auto_in_aw_bits_addr,
  input  [7:0]  auto_in_aw_bits_len,
  input  [2:0]  auto_in_aw_bits_size,
  input  [3:0]  auto_in_aw_bits_cache,
  input  [2:0]  auto_in_aw_bits_prot,
  output        auto_in_w_ready,
  input         auto_in_w_valid,
  input  [63:0] auto_in_w_bits_data,
  input  [7:0]  auto_in_w_bits_strb,
  input         auto_in_w_bits_last,
  input         auto_in_b_ready,
  output        auto_in_b_valid,
  output        auto_in_b_bits_id,
  output [1:0]  auto_in_b_bits_resp,
  output        auto_in_ar_ready,
  input         auto_in_ar_valid,
  input         auto_in_ar_bits_id,
  input  [31:0] auto_in_ar_bits_addr,
  input  [7:0]  auto_in_ar_bits_len,
  input  [2:0]  auto_in_ar_bits_size,
  input  [3:0]  auto_in_ar_bits_cache,
  input  [2:0]  auto_in_ar_bits_prot,
  input         auto_in_r_ready,
  output        auto_in_r_valid,
  output        auto_in_r_bits_id,
  output [63:0] auto_in_r_bits_data,
  output [1:0]  auto_in_r_bits_resp,
  output        auto_in_r_bits_last,
  input         auto_out_a_ready,
  output        auto_out_a_valid,
  output [2:0]  auto_out_a_bits_opcode,
  output [2:0]  auto_out_a_bits_param,
  output [3:0]  auto_out_a_bits_size,
  output [3:0]  auto_out_a_bits_source,
  output [31:0] auto_out_a_bits_address,
  output        auto_out_a_bits_user_amba_prot_bufferable,
  output        auto_out_a_bits_user_amba_prot_modifiable,
  output        auto_out_a_bits_user_amba_prot_readalloc,
  output        auto_out_a_bits_user_amba_prot_writealloc,
  output        auto_out_a_bits_user_amba_prot_privileged,
  output        auto_out_a_bits_user_amba_prot_secure,
  output        auto_out_a_bits_user_amba_prot_fetch,
  output [7:0]  auto_out_a_bits_mask,
  output [63:0] auto_out_a_bits_data,
  output        auto_out_a_bits_corrupt,
  output        auto_out_d_ready,
  input         auto_out_d_valid,
  input  [2:0]  auto_out_d_bits_opcode,
  input  [3:0]  auto_out_d_bits_size,
  input  [3:0]  auto_out_d_bits_source,
  input         auto_out_d_bits_denied,
  input  [63:0] auto_out_d_bits_data,
  input         auto_out_d_bits_corrupt
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
`endif // RANDOMIZE_REG_INIT
  wire  deq_clock; // @[Decoupled.scala 296:21]
  wire  deq_reset; // @[Decoupled.scala 296:21]
  wire  deq_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  deq_io_enq_valid; // @[Decoupled.scala 296:21]
  wire  deq_io_enq_bits_id; // @[Decoupled.scala 296:21]
  wire [63:0] deq_io_enq_bits_data; // @[Decoupled.scala 296:21]
  wire [1:0] deq_io_enq_bits_resp; // @[Decoupled.scala 296:21]
  wire  deq_io_enq_bits_last; // @[Decoupled.scala 296:21]
  wire  deq_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  deq_io_deq_valid; // @[Decoupled.scala 296:21]
  wire  deq_io_deq_bits_id; // @[Decoupled.scala 296:21]
  wire [63:0] deq_io_deq_bits_data; // @[Decoupled.scala 296:21]
  wire [1:0] deq_io_deq_bits_resp; // @[Decoupled.scala 296:21]
  wire  deq_io_deq_bits_last; // @[Decoupled.scala 296:21]
  wire  q_b_deq_clock; // @[Decoupled.scala 296:21]
  wire  q_b_deq_reset; // @[Decoupled.scala 296:21]
  wire  q_b_deq_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  q_b_deq_io_enq_valid; // @[Decoupled.scala 296:21]
  wire  q_b_deq_io_enq_bits_id; // @[Decoupled.scala 296:21]
  wire [1:0] q_b_deq_io_enq_bits_resp; // @[Decoupled.scala 296:21]
  wire  q_b_deq_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  q_b_deq_io_deq_valid; // @[Decoupled.scala 296:21]
  wire  q_b_deq_io_deq_bits_id; // @[Decoupled.scala 296:21]
  wire [1:0] q_b_deq_io_deq_bits_resp; // @[Decoupled.scala 296:21]
  wire [15:0] _r_size1_T = {auto_in_ar_bits_len,8'hff}; // @[Cat.scala 29:58]
  wire [22:0] _GEN_16 = {{7'd0}, _r_size1_T}; // @[Bundles.scala 30:21]
  wire [22:0] _r_size1_T_1 = _GEN_16 << auto_in_ar_bits_size; // @[Bundles.scala 30:21]
  wire [14:0] r_size_left = _r_size1_T_1[22:8]; // @[Bundles.scala 30:30]
  wire [15:0] _r_size_T = {r_size_left, 1'h0}; // @[package.scala 210:35]
  wire [15:0] _r_size_T_1 = _r_size_T | 16'h1; // @[package.scala 210:40]
  wire [15:0] _r_size_T_2 = {1'h0,r_size_left}; // @[Cat.scala 29:58]
  wire [15:0] _r_size_T_3 = ~_r_size_T_2; // @[package.scala 210:53]
  wire [15:0] _r_size_T_4 = _r_size_T_1 & _r_size_T_3; // @[package.scala 210:51]
  wire [7:0] r_size_hi = _r_size_T_4[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] r_size_lo = _r_size_T_4[7:0]; // @[OneHot.scala 31:18]
  wire  r_size_right = |r_size_hi; // @[OneHot.scala 32:14]
  wire [7:0] _r_size_T_5 = r_size_hi | r_size_lo; // @[OneHot.scala 32:28]
  wire [3:0] r_size_hi_1 = _r_size_T_5[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] r_size_lo_1 = _r_size_T_5[3:0]; // @[OneHot.scala 31:18]
  wire  r_size_right_1 = |r_size_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] _r_size_T_6 = r_size_hi_1 | r_size_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] r_size_hi_2 = _r_size_T_6[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] r_size_lo_2 = _r_size_T_6[1:0]; // @[OneHot.scala 31:18]
  wire  r_size_right_2 = |r_size_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] _r_size_T_7 = r_size_hi_2 | r_size_lo_2; // @[OneHot.scala 32:28]
  wire  r_size_left_1 = _r_size_T_7[1]; // @[CircuitMath.scala 30:8]
  wire [3:0] r_ok_x3 = {r_size_right,r_size_right_1,r_size_right_2,r_size_left_1}; // @[Cat.scala 29:58]
  wire  _r_ok_T_1 = r_ok_x3 <= 4'hc; // @[Parameters.scala 93:42]
  wire [31:0] _r_ok_T_4 = auto_in_ar_bits_addr ^ 32'h3000; // @[Parameters.scala 138:31]
  wire [32:0] _r_ok_T_5 = {1'b0,$signed(_r_ok_T_4)}; // @[Parameters.scala 138:49]
  wire [32:0] _r_ok_T_7 = $signed(_r_ok_T_5) & -33'sh1000; // @[Parameters.scala 138:52]
  wire  _r_ok_T_8 = $signed(_r_ok_T_7) == 33'sh0; // @[Parameters.scala 138:67]
  wire  _r_ok_T_9 = _r_ok_T_1 & _r_ok_T_8; // @[Parameters.scala 668:56]
  wire  _r_ok_T_11 = r_ok_x3 <= 4'h6; // @[Parameters.scala 93:42]
  wire [32:0] _r_ok_T_15 = {1'b0,$signed(auto_in_ar_bits_addr)}; // @[Parameters.scala 138:49]
  wire [32:0] _r_ok_T_17 = $signed(_r_ok_T_15) & -33'sh1000; // @[Parameters.scala 138:52]
  wire  _r_ok_T_18 = $signed(_r_ok_T_17) == 33'sh0; // @[Parameters.scala 138:67]
  wire [31:0] _r_ok_T_19 = auto_in_ar_bits_addr ^ 32'h10000; // @[Parameters.scala 138:31]
  wire [32:0] _r_ok_T_20 = {1'b0,$signed(_r_ok_T_19)}; // @[Parameters.scala 138:49]
  wire [32:0] _r_ok_T_22 = $signed(_r_ok_T_20) & -33'sh10000; // @[Parameters.scala 138:52]
  wire  _r_ok_T_23 = $signed(_r_ok_T_22) == 33'sh0; // @[Parameters.scala 138:67]
  wire [31:0] _r_ok_T_24 = auto_in_ar_bits_addr ^ 32'h2000000; // @[Parameters.scala 138:31]
  wire [32:0] _r_ok_T_25 = {1'b0,$signed(_r_ok_T_24)}; // @[Parameters.scala 138:49]
  wire [32:0] _r_ok_T_27 = $signed(_r_ok_T_25) & -33'sh10000; // @[Parameters.scala 138:52]
  wire  _r_ok_T_28 = $signed(_r_ok_T_27) == 33'sh0; // @[Parameters.scala 138:67]
  wire [31:0] _r_ok_T_29 = auto_in_ar_bits_addr ^ 32'hc000000; // @[Parameters.scala 138:31]
  wire [32:0] _r_ok_T_30 = {1'b0,$signed(_r_ok_T_29)}; // @[Parameters.scala 138:49]
  wire [32:0] _r_ok_T_32 = $signed(_r_ok_T_30) & -33'sh4000000; // @[Parameters.scala 138:52]
  wire  _r_ok_T_33 = $signed(_r_ok_T_32) == 33'sh0; // @[Parameters.scala 138:67]
  wire [31:0] _r_ok_T_34 = auto_in_ar_bits_addr ^ 32'h60000000; // @[Parameters.scala 138:31]
  wire [32:0] _r_ok_T_35 = {1'b0,$signed(_r_ok_T_34)}; // @[Parameters.scala 138:49]
  wire [32:0] _r_ok_T_37 = $signed(_r_ok_T_35) & -33'sh20000000; // @[Parameters.scala 138:52]
  wire  _r_ok_T_38 = $signed(_r_ok_T_37) == 33'sh0; // @[Parameters.scala 138:67]
  wire [31:0] _r_ok_T_39 = auto_in_ar_bits_addr ^ 32'h80000000; // @[Parameters.scala 138:31]
  wire [32:0] _r_ok_T_40 = {1'b0,$signed(_r_ok_T_39)}; // @[Parameters.scala 138:49]
  wire [32:0] _r_ok_T_42 = $signed(_r_ok_T_40) & -33'sh10000000; // @[Parameters.scala 138:52]
  wire  _r_ok_T_43 = $signed(_r_ok_T_42) == 33'sh0; // @[Parameters.scala 138:67]
  wire  _r_ok_T_48 = ((((_r_ok_T_18 | _r_ok_T_23) | _r_ok_T_28) | _r_ok_T_33) | _r_ok_T_38) | _r_ok_T_43; // @[Parameters.scala 669:42]
  wire  _r_ok_T_49 = _r_ok_T_11 & _r_ok_T_48; // @[Parameters.scala 668:56]
  wire  r_ok = _r_ok_T_9 | _r_ok_T_49; // @[Parameters.scala 670:30]
  wire [13:0] _GEN_17 = {{11'd0}, auto_in_ar_bits_addr[2:0]}; // @[ToTL.scala 89:59]
  wire [13:0] _r_addr_T_1 = 14'h3000 | _GEN_17; // @[ToTL.scala 89:59]
  wire [31:0] r_addr = r_ok ? auto_in_ar_bits_addr : {{18'd0}, _r_addr_T_1}; // @[ToTL.scala 89:23]
  reg [2:0] r_count_0; // @[ToTL.scala 90:28]
  reg [2:0] r_count_1; // @[ToTL.scala 90:28]
  wire [2:0] _GEN_1 = auto_in_ar_bits_id ? r_count_1 : r_count_0; // @[ToTL.scala 94:50 ToTL.scala 94:50]
  wire [1:0] r_id_right_left = _GEN_1[1:0]; // @[ToTL.scala 94:50]
  wire [29:0] _T_2 = 30'h7fff << r_ok_x3; // @[package.scala 212:77]
  wire [14:0] _T_4 = ~(_T_2[14:0]); // @[package.scala 212:46]
  wire [1:0] a_mask_sizeOH_shiftAmount = r_ok_x3[1:0]; // @[OneHot.scala 64:49]
  wire [3:0] _a_mask_sizeOH_T_1 = 4'h1 << a_mask_sizeOH_shiftAmount; // @[OneHot.scala 65:12]
  wire [2:0] a_mask_sizeOH = (_a_mask_sizeOH_T_1[2:0]) | 3'h1; // @[Misc.scala 201:81]
  wire  a_mask_sub_acc = r_ok_x3 >= 4'h3; // @[Misc.scala 205:21]
  wire  a_mask_size = a_mask_sizeOH[2]; // @[Misc.scala 208:26]
  wire  a_mask_bit = r_addr[2]; // @[Misc.scala 209:26]
  wire  a_mask_nbit = ~a_mask_bit; // @[Misc.scala 210:20]
  wire  a_mask_sub_acc_1 = a_mask_sub_acc | (a_mask_size & a_mask_nbit); // @[Misc.scala 214:29]
  wire  a_mask_sub_acc_2 = a_mask_sub_acc | (a_mask_size & a_mask_bit); // @[Misc.scala 214:29]
  wire  a_mask_size_1 = a_mask_sizeOH[1]; // @[Misc.scala 208:26]
  wire  a_mask_bit_1 = r_addr[1]; // @[Misc.scala 209:26]
  wire  a_mask_nbit_1 = ~a_mask_bit_1; // @[Misc.scala 210:20]
  wire  a_mask_sub_eq_2 = a_mask_nbit & a_mask_nbit_1; // @[Misc.scala 213:27]
  wire  a_mask_sub_acc_3 = a_mask_sub_acc_1 | (a_mask_size_1 & a_mask_sub_eq_2); // @[Misc.scala 214:29]
  wire  a_mask_sub_eq_3 = a_mask_nbit & a_mask_bit_1; // @[Misc.scala 213:27]
  wire  a_mask_sub_acc_4 = a_mask_sub_acc_1 | (a_mask_size_1 & a_mask_sub_eq_3); // @[Misc.scala 214:29]
  wire  a_mask_sub_eq_4 = a_mask_bit & a_mask_nbit_1; // @[Misc.scala 213:27]
  wire  a_mask_sub_acc_5 = a_mask_sub_acc_2 | (a_mask_size_1 & a_mask_sub_eq_4); // @[Misc.scala 214:29]
  wire  a_mask_sub_eq_5 = a_mask_bit & a_mask_bit_1; // @[Misc.scala 213:27]
  wire  a_mask_sub_acc_6 = a_mask_sub_acc_2 | (a_mask_size_1 & a_mask_sub_eq_5); // @[Misc.scala 214:29]
  wire  a_mask_size_2 = a_mask_sizeOH[0]; // @[Misc.scala 208:26]
  wire  a_mask_bit_2 = r_addr[0]; // @[Misc.scala 209:26]
  wire  a_mask_nbit_2 = ~a_mask_bit_2; // @[Misc.scala 210:20]
  wire  a_mask_eq = a_mask_sub_eq_2 & a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  a_mask_left_left_left = a_mask_sub_acc_3 | (a_mask_size_2 & a_mask_eq); // @[Misc.scala 214:29]
  wire  a_mask_eq_1 = a_mask_sub_eq_2 & a_mask_bit_2; // @[Misc.scala 213:27]
  wire  a_mask_left_left_right = a_mask_sub_acc_3 | (a_mask_size_2 & a_mask_eq_1); // @[Misc.scala 214:29]
  wire  a_mask_eq_2 = a_mask_sub_eq_3 & a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  a_mask_left_right_left = a_mask_sub_acc_4 | (a_mask_size_2 & a_mask_eq_2); // @[Misc.scala 214:29]
  wire  a_mask_eq_3 = a_mask_sub_eq_3 & a_mask_bit_2; // @[Misc.scala 213:27]
  wire  a_mask_left_right_right = a_mask_sub_acc_4 | (a_mask_size_2 & a_mask_eq_3); // @[Misc.scala 214:29]
  wire  a_mask_eq_4 = a_mask_sub_eq_4 & a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  a_mask_right_left_left = a_mask_sub_acc_5 | (a_mask_size_2 & a_mask_eq_4); // @[Misc.scala 214:29]
  wire  a_mask_eq_5 = a_mask_sub_eq_4 & a_mask_bit_2; // @[Misc.scala 213:27]
  wire  a_mask_right_left_right = a_mask_sub_acc_5 | (a_mask_size_2 & a_mask_eq_5); // @[Misc.scala 214:29]
  wire  a_mask_eq_6 = a_mask_sub_eq_5 & a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  a_mask_right_right_left = a_mask_sub_acc_6 | (a_mask_size_2 & a_mask_eq_6); // @[Misc.scala 214:29]
  wire  a_mask_eq_7 = a_mask_sub_eq_5 & a_mask_bit_2; // @[Misc.scala 213:27]
  wire  a_mask_right_right_right = a_mask_sub_acc_6 | (a_mask_size_2 & a_mask_eq_7); // @[Misc.scala 214:29]
  wire  r_out_bits_user_amba_prot_privileged = auto_in_ar_bits_prot[0]; // @[ToTL.scala 104:45]
  wire  r_out_bits_user_amba_prot_secure = ~(auto_in_ar_bits_prot[1]); // @[ToTL.scala 105:29]
  wire  r_out_bits_user_amba_prot_fetch = auto_in_ar_bits_prot[2]; // @[ToTL.scala 106:45]
  wire  r_out_bits_user_amba_prot_bufferable = auto_in_ar_bits_cache[0]; // @[ToTL.scala 107:46]
  wire  r_out_bits_user_amba_prot_modifiable = auto_in_ar_bits_cache[1]; // @[ToTL.scala 108:46]
  wire  r_out_bits_user_amba_prot_readalloc = auto_in_ar_bits_cache[2]; // @[ToTL.scala 109:46]
  wire  r_out_bits_user_amba_prot_writealloc = auto_in_ar_bits_cache[3]; // @[ToTL.scala 110:46]
  wire [1:0] r_sel = 2'h1 << auto_in_ar_bits_id; // @[OneHot.scala 65:12]
  reg [7:0] beatsLeft; // @[Arbiter.scala 88:30]
  wire  idle = beatsLeft == 8'h0; // @[Arbiter.scala 89:28]
  wire  w_out_valid = auto_in_aw_valid & auto_in_w_valid; // @[ToTL.scala 134:34]
  wire [1:0] readys_filter_left = {w_out_valid,auto_in_ar_valid}; // @[Cat.scala 29:58]
  reg [1:0] readys_mask; // @[Arbiter.scala 24:23]
  wire [1:0] _readys_filter_T = ~readys_mask; // @[Arbiter.scala 25:30]
  wire [1:0] readys_filter_right = readys_filter_left & _readys_filter_T; // @[Arbiter.scala 25:28]
  wire [3:0] readys_filter = {readys_filter_right,w_out_valid,auto_in_ar_valid}; // @[Cat.scala 29:58]
  wire [3:0] _GEN_18 = {{1'd0}, readys_filter[3:1]}; // @[package.scala 231:43]
  wire [3:0] _readys_unready_T_1 = readys_filter | _GEN_18; // @[package.scala 231:43]
  wire [3:0] _readys_unready_T_4 = {readys_mask, 2'h0}; // @[Arbiter.scala 26:66]
  wire [3:0] _GEN_19 = {{1'd0}, _readys_unready_T_1[3:1]}; // @[Arbiter.scala 26:58]
  wire [3:0] readys_unready = _GEN_19 | _readys_unready_T_4; // @[Arbiter.scala 26:58]
  wire [1:0] _readys_readys_T_2 = (readys_unready[3:2]) & (readys_unready[1:0]); // @[Arbiter.scala 27:39]
  wire [1:0] readys_readys = ~_readys_readys_T_2; // @[Arbiter.scala 27:18]
  wire  readys_0 = readys_readys[0]; // @[Arbiter.scala 96:86]
  reg  state_0; // @[Arbiter.scala 117:26]
  wire  allowed_0 = idle ? readys_0 : state_0; // @[Arbiter.scala 122:24]
  wire  sourcesIn_0_ready = auto_out_a_ready & allowed_0; // @[Arbiter.scala 124:31]
  wire  _T_12 = sourcesIn_0_ready & auto_in_ar_valid; // @[Decoupled.scala 40:37]
  wire  _T_13 = _T_12 & (r_sel[0]); // @[ToTL.scala 115:28]
  wire [2:0] _r_count_0_T_1 = r_count_0 + 3'h1; // @[ToTL.scala 115:43]
  wire  _T_15 = _T_12 & (r_sel[1]); // @[ToTL.scala 115:28]
  wire [2:0] _r_count_1_T_1 = r_count_1 + 3'h1; // @[ToTL.scala 115:43]
  wire [15:0] _w_size1_T = {auto_in_aw_bits_len,8'hff}; // @[Cat.scala 29:58]
  wire [22:0] _GEN_20 = {{7'd0}, _w_size1_T}; // @[Bundles.scala 30:21]
  wire [22:0] _w_size1_T_1 = _GEN_20 << auto_in_aw_bits_size; // @[Bundles.scala 30:21]
  wire [14:0] w_size_left = _w_size1_T_1[22:8]; // @[Bundles.scala 30:30]
  wire [15:0] _w_size_T = {w_size_left, 1'h0}; // @[package.scala 210:35]
  wire [15:0] _w_size_T_1 = _w_size_T | 16'h1; // @[package.scala 210:40]
  wire [15:0] _w_size_T_2 = {1'h0,w_size_left}; // @[Cat.scala 29:58]
  wire [15:0] _w_size_T_3 = ~_w_size_T_2; // @[package.scala 210:53]
  wire [15:0] _w_size_T_4 = _w_size_T_1 & _w_size_T_3; // @[package.scala 210:51]
  wire [7:0] w_size_hi = _w_size_T_4[15:8]; // @[OneHot.scala 30:18]
  wire [7:0] w_size_lo = _w_size_T_4[7:0]; // @[OneHot.scala 31:18]
  wire  w_size_right = |w_size_hi; // @[OneHot.scala 32:14]
  wire [7:0] _w_size_T_5 = w_size_hi | w_size_lo; // @[OneHot.scala 32:28]
  wire [3:0] w_size_hi_1 = _w_size_T_5[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] w_size_lo_1 = _w_size_T_5[3:0]; // @[OneHot.scala 31:18]
  wire  w_size_right_1 = |w_size_hi_1; // @[OneHot.scala 32:14]
  wire [3:0] _w_size_T_6 = w_size_hi_1 | w_size_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] w_size_hi_2 = _w_size_T_6[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] w_size_lo_2 = _w_size_T_6[1:0]; // @[OneHot.scala 31:18]
  wire  w_size_right_2 = |w_size_hi_2; // @[OneHot.scala 32:14]
  wire [1:0] _w_size_T_7 = w_size_hi_2 | w_size_lo_2; // @[OneHot.scala 32:28]
  wire  w_size_left_1 = _w_size_T_7[1]; // @[CircuitMath.scala 30:8]
  wire [3:0] w_ok_x6 = {w_size_right,w_size_right_1,w_size_right_2,w_size_left_1}; // @[Cat.scala 29:58]
  wire  _w_ok_T_1 = w_ok_x6 <= 4'hc; // @[Parameters.scala 93:42]
  wire [31:0] _w_ok_T_4 = auto_in_aw_bits_addr ^ 32'h3000; // @[Parameters.scala 138:31]
  wire [32:0] _w_ok_T_5 = {1'b0,$signed(_w_ok_T_4)}; // @[Parameters.scala 138:49]
  wire [32:0] _w_ok_T_7 = $signed(_w_ok_T_5) & -33'sh1000; // @[Parameters.scala 138:52]
  wire  _w_ok_T_8 = $signed(_w_ok_T_7) == 33'sh0; // @[Parameters.scala 138:67]
  wire  _w_ok_T_9 = _w_ok_T_1 & _w_ok_T_8; // @[Parameters.scala 668:56]
  wire  _w_ok_T_11 = w_ok_x6 <= 4'h6; // @[Parameters.scala 93:42]
  wire [32:0] _w_ok_T_15 = {1'b0,$signed(auto_in_aw_bits_addr)}; // @[Parameters.scala 138:49]
  wire [32:0] _w_ok_T_17 = $signed(_w_ok_T_15) & -33'sh1000; // @[Parameters.scala 138:52]
  wire  _w_ok_T_18 = $signed(_w_ok_T_17) == 33'sh0; // @[Parameters.scala 138:67]
  wire [31:0] _w_ok_T_19 = auto_in_aw_bits_addr ^ 32'h2000000; // @[Parameters.scala 138:31]
  wire [32:0] _w_ok_T_20 = {1'b0,$signed(_w_ok_T_19)}; // @[Parameters.scala 138:49]
  wire [32:0] _w_ok_T_22 = $signed(_w_ok_T_20) & -33'sh10000; // @[Parameters.scala 138:52]
  wire  _w_ok_T_23 = $signed(_w_ok_T_22) == 33'sh0; // @[Parameters.scala 138:67]
  wire [31:0] _w_ok_T_24 = auto_in_aw_bits_addr ^ 32'hc000000; // @[Parameters.scala 138:31]
  wire [32:0] _w_ok_T_25 = {1'b0,$signed(_w_ok_T_24)}; // @[Parameters.scala 138:49]
  wire [32:0] _w_ok_T_27 = $signed(_w_ok_T_25) & -33'sh4000000; // @[Parameters.scala 138:52]
  wire  _w_ok_T_28 = $signed(_w_ok_T_27) == 33'sh0; // @[Parameters.scala 138:67]
  wire [31:0] _w_ok_T_29 = auto_in_aw_bits_addr ^ 32'h80000000; // @[Parameters.scala 138:31]
  wire [32:0] _w_ok_T_30 = {1'b0,$signed(_w_ok_T_29)}; // @[Parameters.scala 138:49]
  wire [32:0] _w_ok_T_32 = $signed(_w_ok_T_30) & -33'sh10000000; // @[Parameters.scala 138:52]
  wire  _w_ok_T_33 = $signed(_w_ok_T_32) == 33'sh0; // @[Parameters.scala 138:67]
  wire  _w_ok_T_36 = ((_w_ok_T_18 | _w_ok_T_23) | _w_ok_T_28) | _w_ok_T_33; // @[Parameters.scala 669:42]
  wire  _w_ok_T_37 = _w_ok_T_11 & _w_ok_T_36; // @[Parameters.scala 668:56]
  wire  _w_ok_T_46 = w_ok_x6 <= 4'h8; // @[Parameters.scala 93:42]
  wire [31:0] _w_ok_T_49 = auto_in_aw_bits_addr ^ 32'h60000000; // @[Parameters.scala 138:31]
  wire [32:0] _w_ok_T_50 = {1'b0,$signed(_w_ok_T_49)}; // @[Parameters.scala 138:49]
  wire [32:0] _w_ok_T_52 = $signed(_w_ok_T_50) & -33'sh20000000; // @[Parameters.scala 138:52]
  wire  _w_ok_T_53 = $signed(_w_ok_T_52) == 33'sh0; // @[Parameters.scala 138:67]
  wire  _w_ok_T_54 = _w_ok_T_46 & _w_ok_T_53; // @[Parameters.scala 668:56]
  wire  w_ok = (_w_ok_T_9 | _w_ok_T_37) | _w_ok_T_54; // @[Parameters.scala 670:30]
  wire [13:0] _GEN_21 = {{11'd0}, auto_in_aw_bits_addr[2:0]}; // @[ToTL.scala 122:59]
  wire [13:0] _w_addr_T_1 = 14'h3000 | _GEN_21; // @[ToTL.scala 122:59]
  wire [31:0] w_addr = w_ok ? auto_in_aw_bits_addr : {{18'd0}, _w_addr_T_1}; // @[ToTL.scala 122:23]
  reg [2:0] w_count_0; // @[ToTL.scala 123:28]
  reg [2:0] w_count_1; // @[ToTL.scala 123:28]
  wire [2:0] _GEN_5 = auto_in_aw_bits_id ? w_count_1 : w_count_0; // @[ToTL.scala 127:50 ToTL.scala 127:50]
  wire [1:0] w_id_right_left = _GEN_5[1:0]; // @[ToTL.scala 127:50]
  wire  _T_16 = ~auto_in_aw_valid; // @[ToTL.scala 130:15]
  wire [29:0] _T_18 = 30'h7fff << w_ok_x6; // @[package.scala 212:77]
  wire [14:0] _T_20 = ~(_T_18[14:0]); // @[package.scala 212:46]
  wire  readys_1 = readys_readys[1]; // @[Arbiter.scala 96:86]
  reg  state_1; // @[Arbiter.scala 117:26]
  wire  allowed_1 = idle ? readys_1 : state_1; // @[Arbiter.scala 122:24]
  wire  sourcesIn_1_ready = auto_out_a_ready & allowed_1; // @[Arbiter.scala 124:31]
  wire  auto_data_aw_ready = (sourcesIn_1_ready & auto_in_w_valid) & auto_in_w_bits_last; // @[ToTL.scala 132:48]
  wire  w_out_bits_user_amba_prot_privileged = auto_in_aw_bits_prot[0]; // @[ToTL.scala 140:45]
  wire  w_out_bits_user_amba_prot_secure = ~(auto_in_aw_bits_prot[1]); // @[ToTL.scala 141:29]
  wire  w_out_bits_user_amba_prot_fetch = auto_in_aw_bits_prot[2]; // @[ToTL.scala 142:45]
  wire  w_out_bits_user_amba_prot_bufferable = auto_in_aw_bits_cache[0]; // @[ToTL.scala 143:46]
  wire  w_out_bits_user_amba_prot_modifiable = auto_in_aw_bits_cache[1]; // @[ToTL.scala 144:46]
  wire  w_out_bits_user_amba_prot_readalloc = auto_in_aw_bits_cache[2]; // @[ToTL.scala 145:46]
  wire  w_out_bits_user_amba_prot_writealloc = auto_in_aw_bits_cache[3]; // @[ToTL.scala 146:46]
  wire [1:0] w_sel = 2'h1 << auto_in_aw_bits_id; // @[OneHot.scala 65:12]
  wire  _T_36 = auto_data_aw_ready & auto_in_aw_valid; // @[Decoupled.scala 40:37]
  wire  _T_37 = _T_36 & (w_sel[0]); // @[ToTL.scala 151:28]
  wire [2:0] _w_count_0_T_1 = w_count_0 + 3'h1; // @[ToTL.scala 151:43]
  wire  _T_39 = _T_36 & (w_sel[1]); // @[ToTL.scala 151:28]
  wire [2:0] _w_count_1_T_1 = w_count_1 + 3'h1; // @[ToTL.scala 151:43]
  wire  latch = idle & auto_out_a_ready; // @[Arbiter.scala 90:24]
  wire  _readys_T_6 = latch & (|readys_filter_left); // @[Arbiter.scala 28:18]
  wire [1:0] _readys_readys_mask_T = readys_readys & readys_filter_left; // @[Arbiter.scala 29:29]
  wire [2:0] _readys_readys_mask_T_1 = {_readys_readys_mask_T, 1'h0}; // @[package.scala 222:48]
  wire [1:0] _readys_readys_mask_T_3 = _readys_readys_mask_T | (_readys_readys_mask_T_1[1:0]); // @[package.scala 222:43]
  wire  earlyWinner_0 = readys_0 & auto_in_ar_valid; // @[Arbiter.scala 98:79]
  wire  earlyWinner_1 = readys_1 & w_out_valid; // @[Arbiter.scala 98:79]
  wire  _prefixOR_T = earlyWinner_0 | earlyWinner_1; // @[Arbiter.scala 105:53]
  wire  _T_50 = auto_in_ar_valid | w_out_valid; // @[Arbiter.scala 108:36]
  wire  _T_51 = ~(auto_in_ar_valid | w_out_valid); // @[Arbiter.scala 108:15]
  wire  muxStateEarly_0 = idle ? earlyWinner_0 : state_0; // @[Arbiter.scala 118:30]
  wire  muxStateEarly_1 = idle ? earlyWinner_1 : state_1; // @[Arbiter.scala 118:30]
  wire  _sink_ACancel_earlyValid_T_3 = (state_0 & auto_in_ar_valid) | (state_1 & w_out_valid); // @[Mux.scala 27:72]
  wire  sink_ACancel_earlyValid = idle ? _T_50 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 126:29]
  wire  _beatsLeft_T_2 = auto_out_a_ready & sink_ACancel_earlyValid; // @[ReadyValidCancel.scala 52:33]
  wire [7:0] _GEN_22 = {{7'd0}, _beatsLeft_T_2}; // @[Arbiter.scala 114:52]
  wire [7:0] _beatsLeft_T_4 = beatsLeft - _GEN_22; // @[Arbiter.scala 114:52]
  wire [72:0] left_left = {a_mask_right_right_right,a_mask_right_right_left,a_mask_right_left_right,
    a_mask_right_left_left,a_mask_left_right_right,a_mask_left_right_left,a_mask_left_left_right,a_mask_left_left_left,64'h0
    ,1'h0}; // @[Mux.scala 27:72]
  wire [76:0] left = {r_out_bits_user_amba_prot_writealloc,r_out_bits_user_amba_prot_privileged,
    r_out_bits_user_amba_prot_secure,r_out_bits_user_amba_prot_fetch,left_left}; // @[Mux.scala 27:72]
  wire [34:0] right_left = {r_addr,r_out_bits_user_amba_prot_bufferable,r_out_bits_user_amba_prot_modifiable,
    r_out_bits_user_amba_prot_readalloc}; // @[Mux.scala 27:72]
  wire [125:0] _T_64 = {6'h20,r_size_right,r_size_right_1,r_size_right_2,r_size_left_1,auto_in_ar_bits_id,
    r_id_right_left,1'h0,right_left,left}; // @[Mux.scala 27:72]
  wire [125:0] _T_65 = muxStateEarly_0 ? _T_64 : 126'h0; // @[Mux.scala 27:72]
  wire [76:0] left_1 = {w_out_bits_user_amba_prot_writealloc,w_out_bits_user_amba_prot_privileged,
    w_out_bits_user_amba_prot_secure,w_out_bits_user_amba_prot_fetch,auto_in_w_bits_strb,auto_in_w_bits_data,1'h0}; // @[Mux.scala 27:72]
  wire [34:0] right_left_1 = {w_addr,w_out_bits_user_amba_prot_bufferable,w_out_bits_user_amba_prot_modifiable,
    w_out_bits_user_amba_prot_readalloc}; // @[Mux.scala 27:72]
  wire [125:0] _T_66 = {6'h8,w_size_right,w_size_right_1,w_size_right_2,w_size_left_1,auto_in_aw_bits_id,w_id_right_left
    ,1'h1,right_left_1,left_1}; // @[Mux.scala 27:72]
  wire [125:0] _T_67 = muxStateEarly_1 ? _T_66 : 126'h0; // @[Mux.scala 27:72]
  wire [125:0] _T_68 = _T_65 | _T_67; // @[Mux.scala 27:72]
  wire  _d_resp_T = auto_out_d_bits_denied | auto_out_d_bits_corrupt; // @[ToTL.scala 159:42]
  wire  d_hasData = auto_out_d_bits_opcode[0]; // @[Edges.scala 107:36]
  wire  x8_ready = deq_io_enq_ready; // @[ToTL.scala 157:23 Decoupled.scala 299:17]
  wire  q_b_x12_ready = q_b_deq_io_enq_ready; // @[ToTL.scala 156:23 Decoupled.scala 299:17]
  wire  auto_data_1_d_ready = d_hasData ? x8_ready : q_b_x12_ready; // @[ToTL.scala 163:25]
  wire  _d_last_T = auto_data_1_d_ready & auto_out_d_valid; // @[Decoupled.scala 40:37]
  wire [26:0] _d_last_beats1_decode_T_1 = 27'hfff << auto_out_d_bits_size; // @[package.scala 212:77]
  wire [11:0] _d_last_beats1_decode_T_3 = ~(_d_last_beats1_decode_T_1[11:0]); // @[package.scala 212:46]
  wire [8:0] d_last_beats1_decode = _d_last_beats1_decode_T_3[11:3]; // @[Edges.scala 221:59]
  wire [8:0] d_last_beats1 = d_hasData ? d_last_beats1_decode : 9'h0; // @[Edges.scala 222:14]
  reg [8:0] d_last_counter; // @[Edges.scala 230:27]
  wire [8:0] d_last_counter1 = d_last_counter - 9'h1; // @[Edges.scala 231:28]
  wire  d_last_first = d_last_counter == 9'h0; // @[Edges.scala 232:25]
  reg [2:0] b_count_0; // @[ToTL.scala 185:28]
  reg [2:0] b_count_1; // @[ToTL.scala 185:28]
  wire  q_b_bits_id = q_b_deq_io_deq_bits_id; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  wire [2:0] _GEN_11 = q_b_bits_id ? b_count_1 : b_count_0; // @[ToTL.scala 186:43 ToTL.scala 186:43]
  wire [2:0] _GEN_13 = q_b_bits_id ? w_count_1 : w_count_0; // @[ToTL.scala 186:43 ToTL.scala 186:43]
  wire  b_allow = _GEN_11 != _GEN_13; // @[ToTL.scala 186:43]
  wire [1:0] b_sel = 2'h1 << q_b_bits_id; // @[OneHot.scala 65:12]
  wire  q_b_valid = q_b_deq_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  wire  auto_data_b_valid = q_b_valid & b_allow; // @[ToTL.scala 194:31]
  wire  _T_86 = auto_in_b_ready & auto_data_b_valid; // @[Decoupled.scala 40:37]
  wire  _T_87 = _T_86 & (b_sel[0]); // @[ToTL.scala 190:27]
  wire [2:0] _b_count_0_T_1 = b_count_0 + 3'h1; // @[ToTL.scala 190:42]
  wire  _T_89 = _T_86 & (b_sel[1]); // @[ToTL.scala 190:27]
  wire [2:0] _b_count_1_T_1 = b_count_1 + 3'h1; // @[ToTL.scala 190:42]
  Queue_16 deq ( // @[Decoupled.scala 296:21]
    .clock(deq_clock),
    .reset(deq_reset),
    .io_enq_ready(deq_io_enq_ready),
    .io_enq_valid(deq_io_enq_valid),
    .io_enq_bits_id(deq_io_enq_bits_id),
    .io_enq_bits_data(deq_io_enq_bits_data),
    .io_enq_bits_resp(deq_io_enq_bits_resp),
    .io_enq_bits_last(deq_io_enq_bits_last),
    .io_deq_ready(deq_io_deq_ready),
    .io_deq_valid(deq_io_deq_valid),
    .io_deq_bits_id(deq_io_deq_bits_id),
    .io_deq_bits_data(deq_io_deq_bits_data),
    .io_deq_bits_resp(deq_io_deq_bits_resp),
    .io_deq_bits_last(deq_io_deq_bits_last)
  );
  Queue_17 q_b_deq ( // @[Decoupled.scala 296:21]
    .clock(q_b_deq_clock),
    .reset(q_b_deq_reset),
    .io_enq_ready(q_b_deq_io_enq_ready),
    .io_enq_valid(q_b_deq_io_enq_valid),
    .io_enq_bits_id(q_b_deq_io_enq_bits_id),
    .io_enq_bits_resp(q_b_deq_io_enq_bits_resp),
    .io_deq_ready(q_b_deq_io_deq_ready),
    .io_deq_valid(q_b_deq_io_deq_valid),
    .io_deq_bits_id(q_b_deq_io_deq_bits_id),
    .io_deq_bits_resp(q_b_deq_io_deq_bits_resp)
  );
  assign auto_in_aw_ready = (sourcesIn_1_ready & auto_in_w_valid) & auto_in_w_bits_last; // @[ToTL.scala 132:48]
  assign auto_in_w_ready = sourcesIn_1_ready & auto_in_aw_valid; // @[ToTL.scala 133:34]
  assign auto_in_b_valid = q_b_valid & b_allow; // @[ToTL.scala 194:31]
  assign auto_in_b_bits_id = q_b_deq_io_deq_bits_id; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_in_b_bits_resp = q_b_deq_io_deq_bits_resp; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_in_ar_ready = auto_out_a_ready & allowed_0; // @[Arbiter.scala 124:31]
  assign auto_in_r_valid = deq_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  assign auto_in_r_bits_id = deq_io_deq_bits_id; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_in_r_bits_data = deq_io_deq_bits_data; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_in_r_bits_resp = deq_io_deq_bits_resp; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_in_r_bits_last = deq_io_deq_bits_last; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_a_valid = idle ? _T_50 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 126:29]
  assign auto_out_a_bits_opcode = _T_68[125:123]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_param = _T_68[122:120]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_size = _T_68[119:116]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_source = _T_68[115:112]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_address = _T_68[111:80]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_user_amba_prot_bufferable = _T_68[79]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_user_amba_prot_modifiable = _T_68[78]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_user_amba_prot_readalloc = _T_68[77]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_user_amba_prot_writealloc = _T_68[76]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_user_amba_prot_privileged = _T_68[75]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_user_amba_prot_secure = _T_68[74]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_user_amba_prot_fetch = _T_68[73]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_mask = _T_68[72:65]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_data = _T_68[64:1]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_corrupt = _T_68[0]; // @[Mux.scala 27:72]
  assign auto_out_d_ready = d_hasData ? x8_ready : q_b_x12_ready; // @[ToTL.scala 163:25]
  assign deq_clock = clock;
  assign deq_reset = reset;
  assign deq_io_enq_valid = auto_out_d_valid & d_hasData; // @[ToTL.scala 164:33]
  assign deq_io_enq_bits_id = auto_out_d_bits_source[3]; // @[ToTL.scala 167:43]
  assign deq_io_enq_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign deq_io_enq_bits_resp = _d_resp_T ? 2'h2 : 2'h0; // @[ToTL.scala 159:23]
  assign deq_io_enq_bits_last = (d_last_counter == 9'h1) | (d_last_beats1 == 9'h0); // @[Edges.scala 233:37]
  assign deq_io_deq_ready = auto_in_r_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign q_b_deq_clock = clock;
  assign q_b_deq_reset = reset;
  assign q_b_deq_io_enq_valid = auto_out_d_valid & (~d_hasData); // @[ToTL.scala 165:33]
  assign q_b_deq_io_enq_bits_id = auto_out_d_bits_source[3]; // @[ToTL.scala 176:43]
  assign q_b_deq_io_enq_bits_resp = _d_resp_T ? 2'h2 : 2'h0; // @[ToTL.scala 159:23]
  assign q_b_deq_io_deq_ready = auto_in_b_ready & b_allow; // @[ToTL.scala 195:31]
  always @(posedge clock) begin
    if (reset) begin // @[ToTL.scala 90:28]
      r_count_0 <= 3'h0; // @[ToTL.scala 90:28]
    end else if (_T_13) begin // @[ToTL.scala 115:34]
      r_count_0 <= _r_count_0_T_1; // @[ToTL.scala 115:38]
    end
    if (reset) begin // @[ToTL.scala 90:28]
      r_count_1 <= 3'h0; // @[ToTL.scala 90:28]
    end else if (_T_15) begin // @[ToTL.scala 115:34]
      r_count_1 <= _r_count_1_T_1; // @[ToTL.scala 115:38]
    end
    if (reset) begin // @[Arbiter.scala 88:30]
      beatsLeft <= 8'h0; // @[Arbiter.scala 88:30]
    end else if (latch) begin // @[Arbiter.scala 114:23]
      if (earlyWinner_1) begin // @[Arbiter.scala 112:73]
        beatsLeft <= auto_in_aw_bits_len;
      end else begin
        beatsLeft <= 8'h0;
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
    if (reset) begin // @[ToTL.scala 123:28]
      w_count_0 <= 3'h0; // @[ToTL.scala 123:28]
    end else if (_T_37) begin // @[ToTL.scala 151:34]
      w_count_0 <= _w_count_0_T_1; // @[ToTL.scala 151:38]
    end
    if (reset) begin // @[ToTL.scala 123:28]
      w_count_1 <= 3'h0; // @[ToTL.scala 123:28]
    end else if (_T_39) begin // @[ToTL.scala 151:34]
      w_count_1 <= _w_count_1_T_1; // @[ToTL.scala 151:38]
    end
    if (reset) begin // @[Arbiter.scala 117:26]
      state_1 <= 1'h0; // @[Arbiter.scala 117:26]
    end else if (idle) begin // @[Arbiter.scala 118:30]
      state_1 <= earlyWinner_1;
    end
    if (reset) begin // @[Edges.scala 230:27]
      d_last_counter <= 9'h0; // @[Edges.scala 230:27]
    end else if (_d_last_T) begin // @[Edges.scala 236:17]
      if (d_last_first) begin // @[Edges.scala 237:21]
        if (d_hasData) begin // @[Edges.scala 222:14]
          d_last_counter <= d_last_beats1_decode;
        end else begin
          d_last_counter <= 9'h0;
        end
      end else begin
        d_last_counter <= d_last_counter1;
      end
    end
    if (reset) begin // @[ToTL.scala 185:28]
      b_count_0 <= 3'h0; // @[ToTL.scala 185:28]
    end else if (_T_87) begin // @[ToTL.scala 190:33]
      b_count_0 <= _b_count_0_T_1; // @[ToTL.scala 190:37]
    end
    if (reset) begin // @[ToTL.scala 185:28]
      b_count_1 <= 3'h0; // @[ToTL.scala 185:28]
    end else if (_T_89) begin // @[ToTL.scala 190:33]
      b_count_1 <= _b_count_1_T_1; // @[ToTL.scala 190:37]
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
  r_count_0 = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  r_count_1 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  beatsLeft = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  readys_mask = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  state_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  w_count_0 = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  w_count_1 = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  state_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  d_last_counter = _RAND_8[8:0];
  _RAND_9 = {1{`RANDOM}};
  b_count_0 = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  b_count_1 = _RAND_10[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
