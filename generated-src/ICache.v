module ICache(
  input         clock,
  input         reset,
  input         auto_master_out_a_ready,
  output        auto_master_out_a_valid,
  output [31:0] auto_master_out_a_bits_address,
  input         auto_master_out_d_valid,
  input  [2:0]  auto_master_out_d_bits_opcode,
  input  [3:0]  auto_master_out_d_bits_size,
  input  [63:0] auto_master_out_d_bits_data,
  input         auto_master_out_d_bits_corrupt,
  output        io_req_ready,
  input         io_req_valid,
  input  [38:0] io_req_bits_addr,
  input  [31:0] io_s1_paddr,
  input         io_s1_kill,
  input         io_s2_kill,
  output        io_resp_valid,
  output [31:0] io_resp_bits_data,
  output        io_resp_bits_ae,
  input         io_invalidate
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [255:0] _RAND_1;
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
`endif // RANDOMIZE_REG_INIT
  wire  repl_way_v0_prng_clock; // @[PRNG.scala 82:22]
  wire  repl_way_v0_prng_reset; // @[PRNG.scala 82:22]
  wire  repl_way_v0_prng_io_increment; // @[PRNG.scala 82:22]
  wire  repl_way_v0_prng_io_out_0; // @[PRNG.scala 82:22]
  wire  repl_way_v0_prng_io_out_1; // @[PRNG.scala 82:22]
  wire  repl_way_v0_prng_io_out_2; // @[PRNG.scala 82:22]
  wire  repl_way_v0_prng_io_out_3; // @[PRNG.scala 82:22]
  wire  repl_way_v0_prng_io_out_4; // @[PRNG.scala 82:22]
  wire  repl_way_v0_prng_io_out_5; // @[PRNG.scala 82:22]
  wire  repl_way_v0_prng_io_out_6; // @[PRNG.scala 82:22]
  wire  repl_way_v0_prng_io_out_7; // @[PRNG.scala 82:22]
  wire  repl_way_v0_prng_io_out_8; // @[PRNG.scala 82:22]
  wire  repl_way_v0_prng_io_out_9; // @[PRNG.scala 82:22]
  wire  repl_way_v0_prng_io_out_10; // @[PRNG.scala 82:22]
  wire  repl_way_v0_prng_io_out_11; // @[PRNG.scala 82:22]
  wire  repl_way_v0_prng_io_out_12; // @[PRNG.scala 82:22]
  wire  repl_way_v0_prng_io_out_13; // @[PRNG.scala 82:22]
  wire  repl_way_v0_prng_io_out_14; // @[PRNG.scala 82:22]
  wire  repl_way_v0_prng_io_out_15; // @[PRNG.scala 82:22]
  wire [5:0] tag_array_RW0_addr; // @[DescribedSRAM.scala 23:26]
  wire  tag_array_RW0_en; // @[DescribedSRAM.scala 23:26]
  wire  tag_array_RW0_clk; // @[DescribedSRAM.scala 23:26]
  wire  tag_array_RW0_wmode; // @[DescribedSRAM.scala 23:26]
  wire [20:0] tag_array_RW0_wdata_0; // @[DescribedSRAM.scala 23:26]
  wire [20:0] tag_array_RW0_wdata_1; // @[DescribedSRAM.scala 23:26]
  wire [20:0] tag_array_RW0_wdata_2; // @[DescribedSRAM.scala 23:26]
  wire [20:0] tag_array_RW0_wdata_3; // @[DescribedSRAM.scala 23:26]
  wire [20:0] tag_array_RW0_rdata_0; // @[DescribedSRAM.scala 23:26]
  wire [20:0] tag_array_RW0_rdata_1; // @[DescribedSRAM.scala 23:26]
  wire [20:0] tag_array_RW0_rdata_2; // @[DescribedSRAM.scala 23:26]
  wire [20:0] tag_array_RW0_rdata_3; // @[DescribedSRAM.scala 23:26]
  wire  tag_array_RW0_wmask_0; // @[DescribedSRAM.scala 23:26]
  wire  tag_array_RW0_wmask_1; // @[DescribedSRAM.scala 23:26]
  wire  tag_array_RW0_wmask_2; // @[DescribedSRAM.scala 23:26]
  wire  tag_array_RW0_wmask_3; // @[DescribedSRAM.scala 23:26]
  wire [8:0] data_arrays_0_RW0_addr; // @[DescribedSRAM.scala 23:26]
  wire  data_arrays_0_RW0_en; // @[DescribedSRAM.scala 23:26]
  wire  data_arrays_0_RW0_clk; // @[DescribedSRAM.scala 23:26]
  wire  data_arrays_0_RW0_wmode; // @[DescribedSRAM.scala 23:26]
  wire [31:0] data_arrays_0_RW0_wdata_0; // @[DescribedSRAM.scala 23:26]
  wire [31:0] data_arrays_0_RW0_wdata_1; // @[DescribedSRAM.scala 23:26]
  wire [31:0] data_arrays_0_RW0_wdata_2; // @[DescribedSRAM.scala 23:26]
  wire [31:0] data_arrays_0_RW0_wdata_3; // @[DescribedSRAM.scala 23:26]
  wire [31:0] data_arrays_0_RW0_rdata_0; // @[DescribedSRAM.scala 23:26]
  wire [31:0] data_arrays_0_RW0_rdata_1; // @[DescribedSRAM.scala 23:26]
  wire [31:0] data_arrays_0_RW0_rdata_2; // @[DescribedSRAM.scala 23:26]
  wire [31:0] data_arrays_0_RW0_rdata_3; // @[DescribedSRAM.scala 23:26]
  wire  data_arrays_0_RW0_wmask_0; // @[DescribedSRAM.scala 23:26]
  wire  data_arrays_0_RW0_wmask_1; // @[DescribedSRAM.scala 23:26]
  wire  data_arrays_0_RW0_wmask_2; // @[DescribedSRAM.scala 23:26]
  wire  data_arrays_0_RW0_wmask_3; // @[DescribedSRAM.scala 23:26]
  wire [8:0] data_arrays_1_RW0_addr; // @[DescribedSRAM.scala 23:26]
  wire  data_arrays_1_RW0_en; // @[DescribedSRAM.scala 23:26]
  wire  data_arrays_1_RW0_clk; // @[DescribedSRAM.scala 23:26]
  wire  data_arrays_1_RW0_wmode; // @[DescribedSRAM.scala 23:26]
  wire [31:0] data_arrays_1_RW0_wdata_0; // @[DescribedSRAM.scala 23:26]
  wire [31:0] data_arrays_1_RW0_wdata_1; // @[DescribedSRAM.scala 23:26]
  wire [31:0] data_arrays_1_RW0_wdata_2; // @[DescribedSRAM.scala 23:26]
  wire [31:0] data_arrays_1_RW0_wdata_3; // @[DescribedSRAM.scala 23:26]
  wire [31:0] data_arrays_1_RW0_rdata_0; // @[DescribedSRAM.scala 23:26]
  wire [31:0] data_arrays_1_RW0_rdata_1; // @[DescribedSRAM.scala 23:26]
  wire [31:0] data_arrays_1_RW0_rdata_2; // @[DescribedSRAM.scala 23:26]
  wire [31:0] data_arrays_1_RW0_rdata_3; // @[DescribedSRAM.scala 23:26]
  wire  data_arrays_1_RW0_wmask_0; // @[DescribedSRAM.scala 23:26]
  wire  data_arrays_1_RW0_wmask_1; // @[DescribedSRAM.scala 23:26]
  wire  data_arrays_1_RW0_wmask_2; // @[DescribedSRAM.scala 23:26]
  wire  data_arrays_1_RW0_wmask_3; // @[DescribedSRAM.scala 23:26]
  wire  s0_valid = io_req_ready & io_req_valid; // @[Decoupled.scala 40:37]
  reg  s1_valid; // @[ICache.scala 170:21]
  reg [255:0] vb_array; // @[ICache.scala 232:21]
  wire [5:0] s1_vb_left = io_s1_paddr[11:6]; // @[ICache.scala 484:21]
  wire [6:0] _s1_vb_T = {1'h0,s1_vb_left}; // @[Cat.scala 29:58]
  wire [255:0] _s1_vb_T_1 = vb_array >> _s1_vb_T; // @[ICache.scala 260:25]
  wire  s1_vb = _s1_vb_T_1[0]; // @[ICache.scala 260:25]
  wire [19:0] tag = tag_array_RW0_rdata_0[19:0]; // @[package.scala 143:13]
  wire [19:0] s1_tag = io_s1_paddr[31:12]; // @[ICache.scala 255:30]
  wire  tagMatch = s1_vb & (tag == s1_tag); // @[ICache.scala 263:26]
  wire [6:0] _s1_vb_T_4 = {1'h1,s1_vb_left}; // @[Cat.scala 29:58]
  wire [255:0] _s1_vb_T_5 = vb_array >> _s1_vb_T_4; // @[ICache.scala 260:25]
  wire  s1_vb_1 = _s1_vb_T_5[0]; // @[ICache.scala 260:25]
  wire [19:0] tag_1 = tag_array_RW0_rdata_1[19:0]; // @[package.scala 143:13]
  wire  tagMatch_1 = s1_vb_1 & (tag_1 == s1_tag); // @[ICache.scala 263:26]
  wire [7:0] _s1_vb_T_8 = {2'h2,s1_vb_left}; // @[Cat.scala 29:58]
  wire [255:0] _s1_vb_T_9 = vb_array >> _s1_vb_T_8; // @[ICache.scala 260:25]
  wire  s1_vb_2 = _s1_vb_T_9[0]; // @[ICache.scala 260:25]
  wire [19:0] tag_2 = tag_array_RW0_rdata_2[19:0]; // @[package.scala 143:13]
  wire  tagMatch_2 = s1_vb_2 & (tag_2 == s1_tag); // @[ICache.scala 263:26]
  wire [7:0] _s1_vb_T_12 = {2'h3,s1_vb_left}; // @[Cat.scala 29:58]
  wire [255:0] _s1_vb_T_13 = vb_array >> _s1_vb_T_12; // @[ICache.scala 260:25]
  wire  s1_vb_3 = _s1_vb_T_13[0]; // @[ICache.scala 260:25]
  wire [19:0] tag_3 = tag_array_RW0_rdata_3[19:0]; // @[package.scala 143:13]
  wire  tagMatch_3 = s1_vb_3 & (tag_3 == s1_tag); // @[ICache.scala 263:26]
  wire  s1_hit = ((tagMatch | tagMatch_1) | tagMatch_2) | tagMatch_3; // @[ICache.scala 173:35]
  wire  _s2_valid_T_1 = s1_valid & (~io_s1_kill); // @[ICache.scala 175:35]
  reg  s2_valid; // @[ICache.scala 175:25]
  reg  s2_hit; // @[ICache.scala 176:23]
  reg  invalidated; // @[ICache.scala 178:24]
  reg  refill_valid; // @[ICache.scala 179:29]
  wire  s2_miss = (s2_valid & (~s2_hit)) & (~io_s2_kill); // @[ICache.scala 183:37]
  reg  s2_request_refill_REG; // @[ICache.scala 185:45]
  wire  s2_request_refill = s2_miss & s2_request_refill_REG; // @[ICache.scala 185:35]
  wire  refill_fire = auto_master_out_a_ready & s2_request_refill; // @[Decoupled.scala 40:37]
  wire  s1_can_request_refill = ~(s2_miss | refill_valid); // @[ICache.scala 184:31]
  wire  _refill_paddr_T = s1_valid & s1_can_request_refill; // @[ICache.scala 186:54]
  reg [31:0] refill_paddr; // @[Reg.scala 15:16]
  wire [19:0] refill_tag = refill_paddr[31:12]; // @[ICache.scala 188:33]
  wire [5:0] refill_idx = refill_paddr[11:6]; // @[ICache.scala 484:21]
  wire  refill_one_beat_opdata = auto_master_out_d_bits_opcode[0]; // @[Edges.scala 107:36]
  wire  refill_one_beat = auto_master_out_d_valid & refill_one_beat_opdata; // @[ICache.scala 190:41]
  wire [26:0] _beats1_decode_T_1 = 27'hfff << auto_master_out_d_bits_size; // @[package.scala 212:77]
  wire [11:0] _beats1_decode_T_3 = ~(_beats1_decode_T_1[11:0]); // @[package.scala 212:46]
  wire [8:0] beats1_decode = _beats1_decode_T_3[11:3]; // @[Edges.scala 221:59]
  wire [8:0] beats1 = refill_one_beat_opdata ? beats1_decode : 9'h0; // @[Edges.scala 222:14]
  reg [8:0] counter; // @[Edges.scala 230:27]
  wire [8:0] counter1 = counter - 9'h1; // @[Edges.scala 231:28]
  wire  first = counter == 9'h0; // @[Edges.scala 232:25]
  wire  last = (counter == 9'h1) | (beats1 == 9'h0); // @[Edges.scala 233:37]
  wire  d_done = last & auto_master_out_d_valid; // @[Edges.scala 234:22]
  wire [8:0] _count_T = ~counter1; // @[Edges.scala 235:27]
  wire [8:0] refill_cnt = beats1 & _count_T; // @[Edges.scala 235:25]
  wire  refill_done = refill_one_beat & d_done; // @[ICache.scala 196:37]
  wire [7:0] repl_way_v0_left = {repl_way_v0_prng_io_out_7,repl_way_v0_prng_io_out_6,repl_way_v0_prng_io_out_5,
    repl_way_v0_prng_io_out_4,repl_way_v0_prng_io_out_3,repl_way_v0_prng_io_out_2,repl_way_v0_prng_io_out_1,
    repl_way_v0_prng_io_out_0}; // @[PRNG.scala 86:17]
  wire [15:0] _repl_way_v0_T = {repl_way_v0_prng_io_out_15,repl_way_v0_prng_io_out_14,repl_way_v0_prng_io_out_13,
    repl_way_v0_prng_io_out_12,repl_way_v0_prng_io_out_11,repl_way_v0_prng_io_out_10,repl_way_v0_prng_io_out_9,
    repl_way_v0_prng_io_out_8,repl_way_v0_left}; // @[PRNG.scala 86:17]
  wire [1:0] repl_way_v = _repl_way_v0_T[1:0]; // @[ICache.scala 202:35]
  wire [7:0] _repl_way_T = {repl_way_v,refill_idx}; // @[Cat.scala 29:58]
  wire  _tag_rdata_T_2 = (~refill_done) & s0_valid; // @[ICache.scala 219:83]
  reg  accruedRefillError; // @[ICache.scala 220:31]
  wire  refillError = auto_master_out_d_bits_corrupt | ((refill_cnt > 9'h0) & accruedRefillError); // @[ICache.scala 221:43]
  wire  _vb_array_T_1 = ~invalidated; // @[ICache.scala 236:75]
  wire  _vb_array_T_2 = refill_done & (~invalidated); // @[ICache.scala 236:72]
  wire [255:0] _vb_array_T_3 = 256'h1 << _repl_way_T; // @[ICache.scala 236:32]
  wire [255:0] _vb_array_T_4 = vb_array | _vb_array_T_3; // @[ICache.scala 236:32]
  wire [255:0] _vb_array_T_5 = ~vb_array; // @[ICache.scala 236:32]
  wire [255:0] _vb_array_T_6 = _vb_array_T_5 | _vb_array_T_3; // @[ICache.scala 236:32]
  wire [255:0] _vb_array_T_7 = ~_vb_array_T_6; // @[ICache.scala 236:32]
  wire  _GEN_30 = io_invalidate | invalidated; // @[ICache.scala 239:21 ICache.scala 241:17 ICache.scala 178:24]
  wire  tl_error = tag_array_RW0_rdata_0[20]; // @[package.scala 143:13]
  wire  s1_tl_error_0 = tagMatch & tl_error; // @[ICache.scala 265:32]
  wire  tl_error_1 = tag_array_RW0_rdata_1[20]; // @[package.scala 143:13]
  wire  s1_tl_error_1 = tagMatch_1 & tl_error_1; // @[ICache.scala 265:32]
  wire  tl_error_2 = tag_array_RW0_rdata_2[20]; // @[package.scala 143:13]
  wire  s1_tl_error_2 = tagMatch_2 & tl_error_2; // @[ICache.scala 265:32]
  wire  tl_error_3 = tag_array_RW0_rdata_3[20]; // @[package.scala 143:13]
  wire  s1_tl_error_3 = tagMatch_3 & tl_error_3; // @[ICache.scala 265:32]
  wire [1:0] _T_15 = tagMatch + tagMatch_1; // @[Bitwise.scala 47:55]
  wire [1:0] _T_17 = tagMatch_2 + tagMatch_3; // @[Bitwise.scala 47:55]
  wire [2:0] _T_19 = _T_15 + _T_17; // @[Bitwise.scala 47:55]
  wire  _s0_ren_T_1 = ~(io_req_bits_addr[2]); // @[ICache.scala 283:111]
  wire  s0_ren = s0_valid & _s0_ren_T_1; // @[ICache.scala 285:28]
  wire  wen = refill_one_beat & _vb_array_T_1; // @[ICache.scala 286:32]
  wire [8:0] _mem_idx_T = {refill_idx, 3'h0}; // @[ICache.scala 287:52]
  wire [8:0] _mem_idx_T_1 = _mem_idx_T | refill_cnt; // @[ICache.scala 287:79]
  wire  _dout_T_1 = (~wen) & s0_ren; // @[ICache.scala 296:46]
  wire [31:0] _GEN_54 = data_arrays_0_RW0_rdata_0; // @[ICache.scala 297:71 ICache.scala 298:15]
  wire [31:0] _GEN_55 = data_arrays_0_RW0_rdata_1; // @[ICache.scala 297:71 ICache.scala 298:15]
  wire [31:0] _GEN_56 = data_arrays_0_RW0_rdata_2; // @[ICache.scala 297:71 ICache.scala 298:15]
  wire [31:0] _GEN_57 = data_arrays_0_RW0_rdata_3; // @[ICache.scala 297:71 ICache.scala 298:15]
  wire  s0_ren_1 = s0_valid & (io_req_bits_addr[2]); // @[ICache.scala 285:28]
  wire  _dout_T_5 = (~wen) & s0_ren_1; // @[ICache.scala 296:46]
  reg  s2_tag_hit_0; // @[Reg.scala 15:16]
  reg  s2_tag_hit_1; // @[Reg.scala 15:16]
  reg  s2_tag_hit_2; // @[Reg.scala 15:16]
  reg  s2_tag_hit_3; // @[Reg.scala 15:16]
  reg [31:0] s2_dout_0; // @[Reg.scala 15:16]
  reg [31:0] s2_dout_1; // @[Reg.scala 15:16]
  reg [31:0] s2_dout_2; // @[Reg.scala 15:16]
  reg [31:0] s2_dout_3; // @[Reg.scala 15:16]
  wire [31:0] _s2_way_mux_T = s2_tag_hit_0 ? s2_dout_0 : 32'h0; // @[Mux.scala 27:72]
  wire [31:0] _s2_way_mux_T_1 = s2_tag_hit_1 ? s2_dout_1 : 32'h0; // @[Mux.scala 27:72]
  wire [31:0] _s2_way_mux_T_2 = s2_tag_hit_2 ? s2_dout_2 : 32'h0; // @[Mux.scala 27:72]
  wire [31:0] _s2_way_mux_T_3 = s2_tag_hit_3 ? s2_dout_3 : 32'h0; // @[Mux.scala 27:72]
  wire [31:0] _s2_way_mux_T_4 = _s2_way_mux_T | _s2_way_mux_T_1; // @[Mux.scala 27:72]
  wire [31:0] _s2_way_mux_T_5 = _s2_way_mux_T_4 | _s2_way_mux_T_2; // @[Mux.scala 27:72]
  wire [3:0] _s2_tl_error_T = {s1_tl_error_3,s1_tl_error_2,s1_tl_error_1,s1_tl_error_0}; // @[ICache.scala 310:43]
  wire  _s2_tl_error_T_1 = |_s2_tl_error_T; // @[ICache.scala 310:50]
  reg  s2_tl_error; // @[Reg.scala 15:16]
  wire  _T_46 = ~refill_valid; // @[ICache.scala 474:9]
  wire  _GEN_101 = refill_fire | refill_valid; // @[ICache.scala 475:22 ICache.scala 475:37 ICache.scala 179:29]
  MaxPeriodFibonacciLFSR repl_way_v0_prng ( // @[PRNG.scala 82:22]
    .clock(repl_way_v0_prng_clock),
    .reset(repl_way_v0_prng_reset),
    .io_increment(repl_way_v0_prng_io_increment),
    .io_out_0(repl_way_v0_prng_io_out_0),
    .io_out_1(repl_way_v0_prng_io_out_1),
    .io_out_2(repl_way_v0_prng_io_out_2),
    .io_out_3(repl_way_v0_prng_io_out_3),
    .io_out_4(repl_way_v0_prng_io_out_4),
    .io_out_5(repl_way_v0_prng_io_out_5),
    .io_out_6(repl_way_v0_prng_io_out_6),
    .io_out_7(repl_way_v0_prng_io_out_7),
    .io_out_8(repl_way_v0_prng_io_out_8),
    .io_out_9(repl_way_v0_prng_io_out_9),
    .io_out_10(repl_way_v0_prng_io_out_10),
    .io_out_11(repl_way_v0_prng_io_out_11),
    .io_out_12(repl_way_v0_prng_io_out_12),
    .io_out_13(repl_way_v0_prng_io_out_13),
    .io_out_14(repl_way_v0_prng_io_out_14),
    .io_out_15(repl_way_v0_prng_io_out_15)
  );
  tag_array_0 tag_array ( // @[DescribedSRAM.scala 23:26]
    .RW0_addr(tag_array_RW0_addr),
    .RW0_en(tag_array_RW0_en),
    .RW0_clk(tag_array_RW0_clk),
    .RW0_wmode(tag_array_RW0_wmode),
    .RW0_wdata_0(tag_array_RW0_wdata_0),
    .RW0_wdata_1(tag_array_RW0_wdata_1),
    .RW0_wdata_2(tag_array_RW0_wdata_2),
    .RW0_wdata_3(tag_array_RW0_wdata_3),
    .RW0_rdata_0(tag_array_RW0_rdata_0),
    .RW0_rdata_1(tag_array_RW0_rdata_1),
    .RW0_rdata_2(tag_array_RW0_rdata_2),
    .RW0_rdata_3(tag_array_RW0_rdata_3),
    .RW0_wmask_0(tag_array_RW0_wmask_0),
    .RW0_wmask_1(tag_array_RW0_wmask_1),
    .RW0_wmask_2(tag_array_RW0_wmask_2),
    .RW0_wmask_3(tag_array_RW0_wmask_3)
  );
  data_arrays_0_0 data_arrays_0 ( // @[DescribedSRAM.scala 23:26]
    .RW0_addr(data_arrays_0_RW0_addr),
    .RW0_en(data_arrays_0_RW0_en),
    .RW0_clk(data_arrays_0_RW0_clk),
    .RW0_wmode(data_arrays_0_RW0_wmode),
    .RW0_wdata_0(data_arrays_0_RW0_wdata_0),
    .RW0_wdata_1(data_arrays_0_RW0_wdata_1),
    .RW0_wdata_2(data_arrays_0_RW0_wdata_2),
    .RW0_wdata_3(data_arrays_0_RW0_wdata_3),
    .RW0_rdata_0(data_arrays_0_RW0_rdata_0),
    .RW0_rdata_1(data_arrays_0_RW0_rdata_1),
    .RW0_rdata_2(data_arrays_0_RW0_rdata_2),
    .RW0_rdata_3(data_arrays_0_RW0_rdata_3),
    .RW0_wmask_0(data_arrays_0_RW0_wmask_0),
    .RW0_wmask_1(data_arrays_0_RW0_wmask_1),
    .RW0_wmask_2(data_arrays_0_RW0_wmask_2),
    .RW0_wmask_3(data_arrays_0_RW0_wmask_3)
  );
  data_arrays_0_0 data_arrays_1 ( // @[DescribedSRAM.scala 23:26]
    .RW0_addr(data_arrays_1_RW0_addr),
    .RW0_en(data_arrays_1_RW0_en),
    .RW0_clk(data_arrays_1_RW0_clk),
    .RW0_wmode(data_arrays_1_RW0_wmode),
    .RW0_wdata_0(data_arrays_1_RW0_wdata_0),
    .RW0_wdata_1(data_arrays_1_RW0_wdata_1),
    .RW0_wdata_2(data_arrays_1_RW0_wdata_2),
    .RW0_wdata_3(data_arrays_1_RW0_wdata_3),
    .RW0_rdata_0(data_arrays_1_RW0_rdata_0),
    .RW0_rdata_1(data_arrays_1_RW0_rdata_1),
    .RW0_rdata_2(data_arrays_1_RW0_rdata_2),
    .RW0_rdata_3(data_arrays_1_RW0_rdata_3),
    .RW0_wmask_0(data_arrays_1_RW0_wmask_0),
    .RW0_wmask_1(data_arrays_1_RW0_wmask_1),
    .RW0_wmask_2(data_arrays_1_RW0_wmask_2),
    .RW0_wmask_3(data_arrays_1_RW0_wmask_3)
  );
  assign auto_master_out_a_valid = s2_miss & s2_request_refill_REG; // @[ICache.scala 185:35]
  assign auto_master_out_a_bits_address = {refill_paddr[31:6], 6'h0}; // @[ICache.scala 419:64]
  assign io_req_ready = ~refill_one_beat; // @[ICache.scala 192:19]
  assign io_resp_valid = s2_valid & s2_hit; // @[ICache.scala 337:33]
  assign io_resp_bits_data = _s2_way_mux_T_5 | _s2_way_mux_T_3; // @[Mux.scala 27:72]
  assign io_resp_bits_ae = s2_tl_error; // @[ICache.scala 335:23]
  assign repl_way_v0_prng_clock = clock;
  assign repl_way_v0_prng_reset = reset;
  assign repl_way_v0_prng_io_increment = auto_master_out_a_ready & s2_request_refill; // @[Decoupled.scala 40:37]
  assign tag_array_RW0_wdata_0 = {refillError,refill_tag}; // @[Cat.scala 29:58]
  assign tag_array_RW0_wdata_1 = {refillError,refill_tag}; // @[Cat.scala 29:58]
  assign tag_array_RW0_wdata_2 = {refillError,refill_tag}; // @[Cat.scala 29:58]
  assign tag_array_RW0_wdata_3 = {refillError,refill_tag}; // @[Cat.scala 29:58]
  assign tag_array_RW0_wmask_0 = repl_way_v == 2'h0; // @[ICache.scala 225:88]
  assign tag_array_RW0_wmask_1 = repl_way_v == 2'h1; // @[ICache.scala 225:88]
  assign tag_array_RW0_wmask_2 = repl_way_v == 2'h2; // @[ICache.scala 225:88]
  assign tag_array_RW0_wmask_3 = repl_way_v == 2'h3; // @[ICache.scala 225:88]
  assign data_arrays_0_RW0_wdata_0 = auto_master_out_d_bits_data[31:0]; // @[ICache.scala 292:71]
  assign data_arrays_0_RW0_wdata_1 = auto_master_out_d_bits_data[31:0]; // @[ICache.scala 292:71]
  assign data_arrays_0_RW0_wdata_2 = auto_master_out_d_bits_data[31:0]; // @[ICache.scala 292:71]
  assign data_arrays_0_RW0_wdata_3 = auto_master_out_d_bits_data[31:0]; // @[ICache.scala 292:71]
  assign data_arrays_0_RW0_wmask_0 = repl_way_v == 2'h0; // @[ICache.scala 294:93]
  assign data_arrays_0_RW0_wmask_1 = repl_way_v == 2'h1; // @[ICache.scala 294:93]
  assign data_arrays_0_RW0_wmask_2 = repl_way_v == 2'h2; // @[ICache.scala 294:93]
  assign data_arrays_0_RW0_wmask_3 = repl_way_v == 2'h3; // @[ICache.scala 294:93]
  assign data_arrays_1_RW0_wdata_0 = auto_master_out_d_bits_data[63:32]; // @[ICache.scala 292:71]
  assign data_arrays_1_RW0_wdata_1 = auto_master_out_d_bits_data[63:32]; // @[ICache.scala 292:71]
  assign data_arrays_1_RW0_wdata_2 = auto_master_out_d_bits_data[63:32]; // @[ICache.scala 292:71]
  assign data_arrays_1_RW0_wdata_3 = auto_master_out_d_bits_data[63:32]; // @[ICache.scala 292:71]
  assign data_arrays_1_RW0_wmask_0 = repl_way_v == 2'h0; // @[ICache.scala 294:93]
  assign data_arrays_1_RW0_wmask_1 = repl_way_v == 2'h1; // @[ICache.scala 294:93]
  assign data_arrays_1_RW0_wmask_2 = repl_way_v == 2'h2; // @[ICache.scala 294:93]
  assign data_arrays_1_RW0_wmask_3 = repl_way_v == 2'h3; // @[ICache.scala 294:93]
  assign tag_array_RW0_wmode = refill_one_beat & d_done; // @[ICache.scala 196:37]
  assign tag_array_RW0_clk = clock;
  assign tag_array_RW0_en = _tag_rdata_T_2 | refill_done;
  assign tag_array_RW0_addr = refill_done ? refill_idx : io_req_bits_addr[11:6];
  assign data_arrays_0_RW0_wmode = refill_one_beat & _vb_array_T_1; // @[ICache.scala 286:32]
  assign data_arrays_0_RW0_clk = clock;
  assign data_arrays_0_RW0_en = _dout_T_1 | wen;
  assign data_arrays_0_RW0_addr = refill_one_beat ? _mem_idx_T_1 : io_req_bits_addr[11:3]; // @[ICache.scala 287:22]
  assign data_arrays_1_RW0_wmode = refill_one_beat & _vb_array_T_1; // @[ICache.scala 286:32]
  assign data_arrays_1_RW0_clk = clock;
  assign data_arrays_1_RW0_en = _dout_T_5 | wen;
  assign data_arrays_1_RW0_addr = refill_one_beat ? _mem_idx_T_1 : io_req_bits_addr[11:3]; // @[ICache.scala 287:22]
  always @(posedge clock) begin
    if (reset) begin // @[ICache.scala 170:21]
      s1_valid <= 1'h0; // @[ICache.scala 170:21]
    end else begin
      s1_valid <= s0_valid; // @[ICache.scala 193:12]
    end
    if (reset) begin // @[ICache.scala 232:21]
      vb_array <= 256'h0; // @[ICache.scala 232:21]
    end else if (io_invalidate) begin // @[ICache.scala 239:21]
      vb_array <= 256'h0; // @[ICache.scala 240:14]
    end else if (refill_one_beat) begin // @[ICache.scala 233:26]
      if (_vb_array_T_2) begin // @[ICache.scala 236:32]
        vb_array <= _vb_array_T_4;
      end else begin
        vb_array <= _vb_array_T_7;
      end
    end
    if (reset) begin // @[ICache.scala 175:25]
      s2_valid <= 1'h0; // @[ICache.scala 175:25]
    end else begin
      s2_valid <= _s2_valid_T_1; // @[ICache.scala 175:25]
    end
    s2_hit <= s1_hit; // @[ICache.scala 176:23]
    if (_T_46) begin // @[ICache.scala 474:24]
      invalidated <= 1'h0; // @[ICache.scala 474:38]
    end else begin
      invalidated <= _GEN_30;
    end
    if (reset) begin // @[ICache.scala 179:29]
      refill_valid <= 1'h0; // @[ICache.scala 179:29]
    end else if (refill_done) begin // @[ICache.scala 476:22]
      refill_valid <= 1'h0; // @[ICache.scala 476:37]
    end else begin
      refill_valid <= _GEN_101;
    end
    s2_request_refill_REG <= ~(s2_miss | refill_valid); // @[ICache.scala 184:31]
    if (_refill_paddr_T) begin // @[Reg.scala 16:19]
      refill_paddr <= io_s1_paddr; // @[Reg.scala 16:23]
    end
    if (reset) begin // @[Edges.scala 230:27]
      counter <= 9'h0; // @[Edges.scala 230:27]
    end else if (auto_master_out_d_valid) begin // @[Edges.scala 236:17]
      if (first) begin // @[Edges.scala 237:21]
        if (refill_one_beat_opdata) begin // @[Edges.scala 222:14]
          counter <= beats1_decode;
        end else begin
          counter <= 9'h0;
        end
      end else begin
        counter <= counter1;
      end
    end
    if (refill_one_beat) begin // @[ICache.scala 233:26]
      accruedRefillError <= refillError; // @[ICache.scala 234:24]
    end
    if (s1_valid) begin // @[Reg.scala 16:19]
      s2_tag_hit_0 <= tagMatch; // @[Reg.scala 16:23]
    end
    if (s1_valid) begin // @[Reg.scala 16:19]
      s2_tag_hit_1 <= tagMatch_1; // @[Reg.scala 16:23]
    end
    if (s1_valid) begin // @[Reg.scala 16:19]
      s2_tag_hit_2 <= tagMatch_2; // @[Reg.scala 16:23]
    end
    if (s1_valid) begin // @[Reg.scala 16:19]
      s2_tag_hit_3 <= tagMatch_3; // @[Reg.scala 16:23]
    end
    if (s1_valid) begin // @[Reg.scala 16:19]
      if (io_s1_paddr[2]) begin // @[ICache.scala 297:71]
        s2_dout_0 <= data_arrays_1_RW0_rdata_0; // @[ICache.scala 298:15]
      end else begin
        s2_dout_0 <= _GEN_54;
      end
    end
    if (s1_valid) begin // @[Reg.scala 16:19]
      if (io_s1_paddr[2]) begin // @[ICache.scala 297:71]
        s2_dout_1 <= data_arrays_1_RW0_rdata_1; // @[ICache.scala 298:15]
      end else begin
        s2_dout_1 <= _GEN_55;
      end
    end
    if (s1_valid) begin // @[Reg.scala 16:19]
      if (io_s1_paddr[2]) begin // @[ICache.scala 297:71]
        s2_dout_2 <= data_arrays_1_RW0_rdata_2; // @[ICache.scala 298:15]
      end else begin
        s2_dout_2 <= _GEN_56;
      end
    end
    if (s1_valid) begin // @[Reg.scala 16:19]
      if (io_s1_paddr[2]) begin // @[ICache.scala 297:71]
        s2_dout_3 <= data_arrays_1_RW0_rdata_3; // @[ICache.scala 298:15]
      end else begin
        s2_dout_3 <= _GEN_57;
      end
    end
    if (s1_valid) begin // @[Reg.scala 16:19]
      s2_tl_error <= _s2_tl_error_T_1; // @[Reg.scala 16:23]
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
  s1_valid = _RAND_0[0:0];
  _RAND_1 = {8{`RANDOM}};
  vb_array = _RAND_1[255:0];
  _RAND_2 = {1{`RANDOM}};
  s2_valid = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  s2_hit = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  invalidated = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  refill_valid = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  s2_request_refill_REG = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  refill_paddr = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  counter = _RAND_8[8:0];
  _RAND_9 = {1{`RANDOM}};
  accruedRefillError = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  s2_tag_hit_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  s2_tag_hit_1 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  s2_tag_hit_2 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  s2_tag_hit_3 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  s2_dout_0 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  s2_dout_1 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  s2_dout_2 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  s2_dout_3 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  s2_tl_error = _RAND_18[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
