module PMPChecker_2(
  input  [1:0]  io_prv,
  input         io_pmp_0_cfg_l,
  input  [1:0]  io_pmp_0_cfg_a,
  input         io_pmp_0_cfg_x,
  input         io_pmp_0_cfg_w,
  input         io_pmp_0_cfg_r,
  input  [29:0] io_pmp_0_addr,
  input  [31:0] io_pmp_0_mask,
  input         io_pmp_1_cfg_l,
  input  [1:0]  io_pmp_1_cfg_a,
  input         io_pmp_1_cfg_x,
  input         io_pmp_1_cfg_w,
  input         io_pmp_1_cfg_r,
  input  [29:0] io_pmp_1_addr,
  input  [31:0] io_pmp_1_mask,
  input         io_pmp_2_cfg_l,
  input  [1:0]  io_pmp_2_cfg_a,
  input         io_pmp_2_cfg_x,
  input         io_pmp_2_cfg_w,
  input         io_pmp_2_cfg_r,
  input  [29:0] io_pmp_2_addr,
  input  [31:0] io_pmp_2_mask,
  input         io_pmp_3_cfg_l,
  input  [1:0]  io_pmp_3_cfg_a,
  input         io_pmp_3_cfg_x,
  input         io_pmp_3_cfg_w,
  input         io_pmp_3_cfg_r,
  input  [29:0] io_pmp_3_addr,
  input  [31:0] io_pmp_3_mask,
  input         io_pmp_4_cfg_l,
  input  [1:0]  io_pmp_4_cfg_a,
  input         io_pmp_4_cfg_x,
  input         io_pmp_4_cfg_w,
  input         io_pmp_4_cfg_r,
  input  [29:0] io_pmp_4_addr,
  input  [31:0] io_pmp_4_mask,
  input         io_pmp_5_cfg_l,
  input  [1:0]  io_pmp_5_cfg_a,
  input         io_pmp_5_cfg_x,
  input         io_pmp_5_cfg_w,
  input         io_pmp_5_cfg_r,
  input  [29:0] io_pmp_5_addr,
  input  [31:0] io_pmp_5_mask,
  input         io_pmp_6_cfg_l,
  input  [1:0]  io_pmp_6_cfg_a,
  input         io_pmp_6_cfg_x,
  input         io_pmp_6_cfg_w,
  input         io_pmp_6_cfg_r,
  input  [29:0] io_pmp_6_addr,
  input  [31:0] io_pmp_6_mask,
  input         io_pmp_7_cfg_l,
  input  [1:0]  io_pmp_7_cfg_a,
  input         io_pmp_7_cfg_x,
  input         io_pmp_7_cfg_w,
  input         io_pmp_7_cfg_r,
  input  [29:0] io_pmp_7_addr,
  input  [31:0] io_pmp_7_mask,
  input  [31:0] io_addr,
  output        io_r,
  output        io_w,
  output        io_x
);
  wire  default_ = io_prv > 2'h1; // @[PMP.scala 157:56]
  wire [31:0] _res_hit_T_1 = {io_pmp_7_addr, 2'h0}; // @[PMP.scala 62:36]
  wire [31:0] _res_hit_T_2 = ~_res_hit_T_1; // @[PMP.scala 62:29]
  wire [31:0] _res_hit_T_3 = _res_hit_T_2 | 32'h3; // @[PMP.scala 62:48]
  wire [31:0] _res_hit_T_4 = ~_res_hit_T_3; // @[PMP.scala 62:27]
  wire [31:0] _res_hit_T_5 = io_addr ^ _res_hit_T_4; // @[PMP.scala 65:47]
  wire [31:0] _res_hit_T_6 = ~io_pmp_7_mask; // @[PMP.scala 65:54]
  wire [31:0] _res_hit_T_7 = _res_hit_T_5 & _res_hit_T_6; // @[PMP.scala 65:52]
  wire  _res_hit_T_8 = _res_hit_T_7 == 32'h0; // @[PMP.scala 65:58]
  wire [31:0] _res_hit_T_14 = {io_pmp_6_addr, 2'h0}; // @[PMP.scala 62:36]
  wire [31:0] _res_hit_T_15 = ~_res_hit_T_14; // @[PMP.scala 62:29]
  wire [31:0] _res_hit_T_16 = _res_hit_T_15 | 32'h3; // @[PMP.scala 62:48]
  wire [31:0] _res_hit_T_17 = ~_res_hit_T_16; // @[PMP.scala 62:27]
  wire  _res_hit_T_18 = io_addr < _res_hit_T_17; // @[PMP.scala 79:9]
  wire  _res_hit_T_19 = ~_res_hit_T_18; // @[PMP.scala 90:5]
  wire  _res_hit_T_24 = io_addr < _res_hit_T_4; // @[PMP.scala 79:9]
  wire  _res_hit_T_25 = _res_hit_T_19 & _res_hit_T_24; // @[PMP.scala 96:48]
  wire  res_hit = io_pmp_7_cfg_a[1] ? _res_hit_T_8 : (io_pmp_7_cfg_a[0]) & _res_hit_T_25; // @[PMP.scala 134:8]
  wire  res_ignore = default_ & (~io_pmp_7_cfg_l); // @[PMP.scala 165:26]
  wire  res_cur_cfg_r = io_pmp_7_cfg_r | res_ignore; // @[PMP.scala 183:40]
  wire  res_cur_cfg_w = io_pmp_7_cfg_w | res_ignore; // @[PMP.scala 184:40]
  wire  res_cur_cfg_x = io_pmp_7_cfg_x | res_ignore; // @[PMP.scala 185:40]
  wire  _res_T_44_cfg_x = res_hit ? res_cur_cfg_x : default_; // @[PMP.scala 186:8]
  wire  _res_T_44_cfg_w = res_hit ? res_cur_cfg_w : default_; // @[PMP.scala 186:8]
  wire  _res_T_44_cfg_r = res_hit ? res_cur_cfg_r : default_; // @[PMP.scala 186:8]
  wire [31:0] _res_hit_T_32 = io_addr ^ _res_hit_T_17; // @[PMP.scala 65:47]
  wire [31:0] _res_hit_T_33 = ~io_pmp_6_mask; // @[PMP.scala 65:54]
  wire [31:0] _res_hit_T_34 = _res_hit_T_32 & _res_hit_T_33; // @[PMP.scala 65:52]
  wire  _res_hit_T_35 = _res_hit_T_34 == 32'h0; // @[PMP.scala 65:58]
  wire [31:0] _res_hit_T_41 = {io_pmp_5_addr, 2'h0}; // @[PMP.scala 62:36]
  wire [31:0] _res_hit_T_42 = ~_res_hit_T_41; // @[PMP.scala 62:29]
  wire [31:0] _res_hit_T_43 = _res_hit_T_42 | 32'h3; // @[PMP.scala 62:48]
  wire [31:0] _res_hit_T_44 = ~_res_hit_T_43; // @[PMP.scala 62:27]
  wire  _res_hit_T_45 = io_addr < _res_hit_T_44; // @[PMP.scala 79:9]
  wire  _res_hit_T_46 = ~_res_hit_T_45; // @[PMP.scala 90:5]
  wire  _res_hit_T_52 = _res_hit_T_46 & _res_hit_T_18; // @[PMP.scala 96:48]
  wire  res_hit_1 = io_pmp_6_cfg_a[1] ? _res_hit_T_35 : (io_pmp_6_cfg_a[0]) & _res_hit_T_52; // @[PMP.scala 134:8]
  wire  res_ignore_1 = default_ & (~io_pmp_6_cfg_l); // @[PMP.scala 165:26]
  wire  res_cur_1_cfg_r = io_pmp_6_cfg_r | res_ignore_1; // @[PMP.scala 183:40]
  wire  res_cur_1_cfg_w = io_pmp_6_cfg_w | res_ignore_1; // @[PMP.scala 184:40]
  wire  res_cur_1_cfg_x = io_pmp_6_cfg_x | res_ignore_1; // @[PMP.scala 185:40]
  wire  _res_T_89_cfg_x = res_hit_1 ? res_cur_1_cfg_x : _res_T_44_cfg_x; // @[PMP.scala 186:8]
  wire  _res_T_89_cfg_w = res_hit_1 ? res_cur_1_cfg_w : _res_T_44_cfg_w; // @[PMP.scala 186:8]
  wire  _res_T_89_cfg_r = res_hit_1 ? res_cur_1_cfg_r : _res_T_44_cfg_r; // @[PMP.scala 186:8]
  wire [31:0] _res_hit_T_59 = io_addr ^ _res_hit_T_44; // @[PMP.scala 65:47]
  wire [31:0] _res_hit_T_60 = ~io_pmp_5_mask; // @[PMP.scala 65:54]
  wire [31:0] _res_hit_T_61 = _res_hit_T_59 & _res_hit_T_60; // @[PMP.scala 65:52]
  wire  _res_hit_T_62 = _res_hit_T_61 == 32'h0; // @[PMP.scala 65:58]
  wire [31:0] _res_hit_T_68 = {io_pmp_4_addr, 2'h0}; // @[PMP.scala 62:36]
  wire [31:0] _res_hit_T_69 = ~_res_hit_T_68; // @[PMP.scala 62:29]
  wire [31:0] _res_hit_T_70 = _res_hit_T_69 | 32'h3; // @[PMP.scala 62:48]
  wire [31:0] _res_hit_T_71 = ~_res_hit_T_70; // @[PMP.scala 62:27]
  wire  _res_hit_T_72 = io_addr < _res_hit_T_71; // @[PMP.scala 79:9]
  wire  _res_hit_T_73 = ~_res_hit_T_72; // @[PMP.scala 90:5]
  wire  _res_hit_T_79 = _res_hit_T_73 & _res_hit_T_45; // @[PMP.scala 96:48]
  wire  res_hit_2 = io_pmp_5_cfg_a[1] ? _res_hit_T_62 : (io_pmp_5_cfg_a[0]) & _res_hit_T_79; // @[PMP.scala 134:8]
  wire  res_ignore_2 = default_ & (~io_pmp_5_cfg_l); // @[PMP.scala 165:26]
  wire  res_cur_2_cfg_r = io_pmp_5_cfg_r | res_ignore_2; // @[PMP.scala 183:40]
  wire  res_cur_2_cfg_w = io_pmp_5_cfg_w | res_ignore_2; // @[PMP.scala 184:40]
  wire  res_cur_2_cfg_x = io_pmp_5_cfg_x | res_ignore_2; // @[PMP.scala 185:40]
  wire  _res_T_134_cfg_x = res_hit_2 ? res_cur_2_cfg_x : _res_T_89_cfg_x; // @[PMP.scala 186:8]
  wire  _res_T_134_cfg_w = res_hit_2 ? res_cur_2_cfg_w : _res_T_89_cfg_w; // @[PMP.scala 186:8]
  wire  _res_T_134_cfg_r = res_hit_2 ? res_cur_2_cfg_r : _res_T_89_cfg_r; // @[PMP.scala 186:8]
  wire [31:0] _res_hit_T_86 = io_addr ^ _res_hit_T_71; // @[PMP.scala 65:47]
  wire [31:0] _res_hit_T_87 = ~io_pmp_4_mask; // @[PMP.scala 65:54]
  wire [31:0] _res_hit_T_88 = _res_hit_T_86 & _res_hit_T_87; // @[PMP.scala 65:52]
  wire  _res_hit_T_89 = _res_hit_T_88 == 32'h0; // @[PMP.scala 65:58]
  wire [31:0] _res_hit_T_95 = {io_pmp_3_addr, 2'h0}; // @[PMP.scala 62:36]
  wire [31:0] _res_hit_T_96 = ~_res_hit_T_95; // @[PMP.scala 62:29]
  wire [31:0] _res_hit_T_97 = _res_hit_T_96 | 32'h3; // @[PMP.scala 62:48]
  wire [31:0] _res_hit_T_98 = ~_res_hit_T_97; // @[PMP.scala 62:27]
  wire  _res_hit_T_99 = io_addr < _res_hit_T_98; // @[PMP.scala 79:9]
  wire  _res_hit_T_100 = ~_res_hit_T_99; // @[PMP.scala 90:5]
  wire  _res_hit_T_106 = _res_hit_T_100 & _res_hit_T_72; // @[PMP.scala 96:48]
  wire  res_hit_3 = io_pmp_4_cfg_a[1] ? _res_hit_T_89 : (io_pmp_4_cfg_a[0]) & _res_hit_T_106; // @[PMP.scala 134:8]
  wire  res_ignore_3 = default_ & (~io_pmp_4_cfg_l); // @[PMP.scala 165:26]
  wire  res_cur_3_cfg_r = io_pmp_4_cfg_r | res_ignore_3; // @[PMP.scala 183:40]
  wire  res_cur_3_cfg_w = io_pmp_4_cfg_w | res_ignore_3; // @[PMP.scala 184:40]
  wire  res_cur_3_cfg_x = io_pmp_4_cfg_x | res_ignore_3; // @[PMP.scala 185:40]
  wire  _res_T_179_cfg_x = res_hit_3 ? res_cur_3_cfg_x : _res_T_134_cfg_x; // @[PMP.scala 186:8]
  wire  _res_T_179_cfg_w = res_hit_3 ? res_cur_3_cfg_w : _res_T_134_cfg_w; // @[PMP.scala 186:8]
  wire  _res_T_179_cfg_r = res_hit_3 ? res_cur_3_cfg_r : _res_T_134_cfg_r; // @[PMP.scala 186:8]
  wire [31:0] _res_hit_T_113 = io_addr ^ _res_hit_T_98; // @[PMP.scala 65:47]
  wire [31:0] _res_hit_T_114 = ~io_pmp_3_mask; // @[PMP.scala 65:54]
  wire [31:0] _res_hit_T_115 = _res_hit_T_113 & _res_hit_T_114; // @[PMP.scala 65:52]
  wire  _res_hit_T_116 = _res_hit_T_115 == 32'h0; // @[PMP.scala 65:58]
  wire [31:0] _res_hit_T_122 = {io_pmp_2_addr, 2'h0}; // @[PMP.scala 62:36]
  wire [31:0] _res_hit_T_123 = ~_res_hit_T_122; // @[PMP.scala 62:29]
  wire [31:0] _res_hit_T_124 = _res_hit_T_123 | 32'h3; // @[PMP.scala 62:48]
  wire [31:0] _res_hit_T_125 = ~_res_hit_T_124; // @[PMP.scala 62:27]
  wire  _res_hit_T_126 = io_addr < _res_hit_T_125; // @[PMP.scala 79:9]
  wire  _res_hit_T_127 = ~_res_hit_T_126; // @[PMP.scala 90:5]
  wire  _res_hit_T_133 = _res_hit_T_127 & _res_hit_T_99; // @[PMP.scala 96:48]
  wire  res_hit_4 = io_pmp_3_cfg_a[1] ? _res_hit_T_116 : (io_pmp_3_cfg_a[0]) & _res_hit_T_133; // @[PMP.scala 134:8]
  wire  res_ignore_4 = default_ & (~io_pmp_3_cfg_l); // @[PMP.scala 165:26]
  wire  res_cur_4_cfg_r = io_pmp_3_cfg_r | res_ignore_4; // @[PMP.scala 183:40]
  wire  res_cur_4_cfg_w = io_pmp_3_cfg_w | res_ignore_4; // @[PMP.scala 184:40]
  wire  res_cur_4_cfg_x = io_pmp_3_cfg_x | res_ignore_4; // @[PMP.scala 185:40]
  wire  _res_T_224_cfg_x = res_hit_4 ? res_cur_4_cfg_x : _res_T_179_cfg_x; // @[PMP.scala 186:8]
  wire  _res_T_224_cfg_w = res_hit_4 ? res_cur_4_cfg_w : _res_T_179_cfg_w; // @[PMP.scala 186:8]
  wire  _res_T_224_cfg_r = res_hit_4 ? res_cur_4_cfg_r : _res_T_179_cfg_r; // @[PMP.scala 186:8]
  wire [31:0] _res_hit_T_140 = io_addr ^ _res_hit_T_125; // @[PMP.scala 65:47]
  wire [31:0] _res_hit_T_141 = ~io_pmp_2_mask; // @[PMP.scala 65:54]
  wire [31:0] _res_hit_T_142 = _res_hit_T_140 & _res_hit_T_141; // @[PMP.scala 65:52]
  wire  _res_hit_T_143 = _res_hit_T_142 == 32'h0; // @[PMP.scala 65:58]
  wire [31:0] _res_hit_T_149 = {io_pmp_1_addr, 2'h0}; // @[PMP.scala 62:36]
  wire [31:0] _res_hit_T_150 = ~_res_hit_T_149; // @[PMP.scala 62:29]
  wire [31:0] _res_hit_T_151 = _res_hit_T_150 | 32'h3; // @[PMP.scala 62:48]
  wire [31:0] _res_hit_T_152 = ~_res_hit_T_151; // @[PMP.scala 62:27]
  wire  _res_hit_T_153 = io_addr < _res_hit_T_152; // @[PMP.scala 79:9]
  wire  _res_hit_T_154 = ~_res_hit_T_153; // @[PMP.scala 90:5]
  wire  _res_hit_T_160 = _res_hit_T_154 & _res_hit_T_126; // @[PMP.scala 96:48]
  wire  res_hit_5 = io_pmp_2_cfg_a[1] ? _res_hit_T_143 : (io_pmp_2_cfg_a[0]) & _res_hit_T_160; // @[PMP.scala 134:8]
  wire  res_ignore_5 = default_ & (~io_pmp_2_cfg_l); // @[PMP.scala 165:26]
  wire  res_cur_5_cfg_r = io_pmp_2_cfg_r | res_ignore_5; // @[PMP.scala 183:40]
  wire  res_cur_5_cfg_w = io_pmp_2_cfg_w | res_ignore_5; // @[PMP.scala 184:40]
  wire  res_cur_5_cfg_x = io_pmp_2_cfg_x | res_ignore_5; // @[PMP.scala 185:40]
  wire  _res_T_269_cfg_x = res_hit_5 ? res_cur_5_cfg_x : _res_T_224_cfg_x; // @[PMP.scala 186:8]
  wire  _res_T_269_cfg_w = res_hit_5 ? res_cur_5_cfg_w : _res_T_224_cfg_w; // @[PMP.scala 186:8]
  wire  _res_T_269_cfg_r = res_hit_5 ? res_cur_5_cfg_r : _res_T_224_cfg_r; // @[PMP.scala 186:8]
  wire [31:0] _res_hit_T_167 = io_addr ^ _res_hit_T_152; // @[PMP.scala 65:47]
  wire [31:0] _res_hit_T_168 = ~io_pmp_1_mask; // @[PMP.scala 65:54]
  wire [31:0] _res_hit_T_169 = _res_hit_T_167 & _res_hit_T_168; // @[PMP.scala 65:52]
  wire  _res_hit_T_170 = _res_hit_T_169 == 32'h0; // @[PMP.scala 65:58]
  wire [31:0] _res_hit_T_176 = {io_pmp_0_addr, 2'h0}; // @[PMP.scala 62:36]
  wire [31:0] _res_hit_T_177 = ~_res_hit_T_176; // @[PMP.scala 62:29]
  wire [31:0] _res_hit_T_178 = _res_hit_T_177 | 32'h3; // @[PMP.scala 62:48]
  wire [31:0] _res_hit_T_179 = ~_res_hit_T_178; // @[PMP.scala 62:27]
  wire  _res_hit_T_180 = io_addr < _res_hit_T_179; // @[PMP.scala 79:9]
  wire  _res_hit_T_181 = ~_res_hit_T_180; // @[PMP.scala 90:5]
  wire  _res_hit_T_187 = _res_hit_T_181 & _res_hit_T_153; // @[PMP.scala 96:48]
  wire  res_hit_6 = io_pmp_1_cfg_a[1] ? _res_hit_T_170 : (io_pmp_1_cfg_a[0]) & _res_hit_T_187; // @[PMP.scala 134:8]
  wire  res_ignore_6 = default_ & (~io_pmp_1_cfg_l); // @[PMP.scala 165:26]
  wire  res_cur_6_cfg_r = io_pmp_1_cfg_r | res_ignore_6; // @[PMP.scala 183:40]
  wire  res_cur_6_cfg_w = io_pmp_1_cfg_w | res_ignore_6; // @[PMP.scala 184:40]
  wire  res_cur_6_cfg_x = io_pmp_1_cfg_x | res_ignore_6; // @[PMP.scala 185:40]
  wire  _res_T_314_cfg_x = res_hit_6 ? res_cur_6_cfg_x : _res_T_269_cfg_x; // @[PMP.scala 186:8]
  wire  _res_T_314_cfg_w = res_hit_6 ? res_cur_6_cfg_w : _res_T_269_cfg_w; // @[PMP.scala 186:8]
  wire  _res_T_314_cfg_r = res_hit_6 ? res_cur_6_cfg_r : _res_T_269_cfg_r; // @[PMP.scala 186:8]
  wire [31:0] _res_hit_T_194 = io_addr ^ _res_hit_T_179; // @[PMP.scala 65:47]
  wire [31:0] _res_hit_T_195 = ~io_pmp_0_mask; // @[PMP.scala 65:54]
  wire [31:0] _res_hit_T_196 = _res_hit_T_194 & _res_hit_T_195; // @[PMP.scala 65:52]
  wire  _res_hit_T_197 = _res_hit_T_196 == 32'h0; // @[PMP.scala 65:58]
  wire  res_hit_7 = io_pmp_0_cfg_a[1] ? _res_hit_T_197 : (io_pmp_0_cfg_a[0]) & _res_hit_T_180; // @[PMP.scala 134:8]
  wire  res_ignore_7 = default_ & (~io_pmp_0_cfg_l); // @[PMP.scala 165:26]
  wire  res_cur_7_cfg_r = io_pmp_0_cfg_r | res_ignore_7; // @[PMP.scala 183:40]
  wire  res_cur_7_cfg_w = io_pmp_0_cfg_w | res_ignore_7; // @[PMP.scala 184:40]
  wire  res_cur_7_cfg_x = io_pmp_0_cfg_x | res_ignore_7; // @[PMP.scala 185:40]
  assign io_r = res_hit_7 ? res_cur_7_cfg_r : _res_T_314_cfg_r; // @[PMP.scala 186:8]
  assign io_w = res_hit_7 ? res_cur_7_cfg_w : _res_T_314_cfg_w; // @[PMP.scala 186:8]
  assign io_x = res_hit_7 ? res_cur_7_cfg_x : _res_T_314_cfg_x; // @[PMP.scala 186:8]
endmodule
