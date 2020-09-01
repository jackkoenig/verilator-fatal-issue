module MulAddRecFNToRaw_preMul(
  input  [1:0]  io_op,
  input  [32:0] io_a,
  input  [32:0] io_b,
  input  [32:0] io_c,
  output [23:0] io_mulAddA,
  output [23:0] io_mulAddB,
  output [47:0] io_mulAddC,
  output        io_toPostMul_isSigNaNAny,
  output        io_toPostMul_isNaNAOrB,
  output        io_toPostMul_isInfA,
  output        io_toPostMul_isZeroA,
  output        io_toPostMul_isInfB,
  output        io_toPostMul_isZeroB,
  output        io_toPostMul_signProd,
  output        io_toPostMul_isNaNC,
  output        io_toPostMul_isInfC,
  output        io_toPostMul_isZeroC,
  output [9:0]  io_toPostMul_sExpSum,
  output        io_toPostMul_doSubMags,
  output        io_toPostMul_CIsDominant,
  output [4:0]  io_toPostMul_CDom_CAlignDist,
  output [25:0] io_toPostMul_highAlignedSigC,
  output        io_toPostMul_bit0AlignedSigC
);
  wire [8:0] rawA_exp = io_a[31:23]; // @[rawFloatFromRecFN.scala 50:21]
  wire  rawA_isZero = (rawA_exp[8:6]) == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  rawA_isSpecial = (rawA_exp[8:7]) == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  rawA__isNaN = rawA_isSpecial & (rawA_exp[6]); // @[rawFloatFromRecFN.scala 55:33]
  wire  rawA__sign = io_a[32]; // @[rawFloatFromRecFN.scala 58:25]
  wire [9:0] rawA__sExp = {1'b0,$signed(rawA_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  wire  rawA_rawA_sig_right_left = ~rawA_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [22:0] rawA_rawA_sig_left = io_a[22:0]; // @[rawFloatFromRecFN.scala 60:51]
  wire [24:0] rawA__sig = {1'h0,rawA_rawA_sig_right_left,rawA_rawA_sig_left}; // @[Cat.scala 29:58]
  wire [8:0] rawB_exp = io_b[31:23]; // @[rawFloatFromRecFN.scala 50:21]
  wire  rawB_isZero = (rawB_exp[8:6]) == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  rawB_isSpecial = (rawB_exp[8:7]) == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  rawB__isNaN = rawB_isSpecial & (rawB_exp[6]); // @[rawFloatFromRecFN.scala 55:33]
  wire  rawB__sign = io_b[32]; // @[rawFloatFromRecFN.scala 58:25]
  wire [9:0] rawB__sExp = {1'b0,$signed(rawB_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  wire  rawB_rawB_sig_right_left = ~rawB_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [22:0] rawB_rawB_sig_left = io_b[22:0]; // @[rawFloatFromRecFN.scala 60:51]
  wire [24:0] rawB__sig = {1'h0,rawB_rawB_sig_right_left,rawB_rawB_sig_left}; // @[Cat.scala 29:58]
  wire [8:0] rawC_exp = io_c[31:23]; // @[rawFloatFromRecFN.scala 50:21]
  wire  rawC_isZero = (rawC_exp[8:6]) == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  rawC_isSpecial = (rawC_exp[8:7]) == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  rawC__isNaN = rawC_isSpecial & (rawC_exp[6]); // @[rawFloatFromRecFN.scala 55:33]
  wire  rawC__sign = io_c[32]; // @[rawFloatFromRecFN.scala 58:25]
  wire [9:0] rawC__sExp = {1'b0,$signed(rawC_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  wire  rawC_rawC_sig_right_left = ~rawC_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [22:0] rawC_rawC_sig_left = io_c[22:0]; // @[rawFloatFromRecFN.scala 60:51]
  wire [24:0] rawC__sig = {1'h0,rawC_rawC_sig_right_left,rawC_rawC_sig_left}; // @[Cat.scala 29:58]
  wire  signProd = (rawA__sign ^ rawB__sign) ^ (io_op[1]); // @[MulAddRecFN.scala 98:42]
  wire [10:0] _sExpAlignedProd_T = $signed(rawA__sExp) + $signed(rawB__sExp); // @[MulAddRecFN.scala 101:19]
  wire [10:0] sExpAlignedProd = $signed(_sExpAlignedProd_T) - 11'she5; // @[MulAddRecFN.scala 101:32]
  wire  doSubMags = (signProd ^ rawC__sign) ^ (io_op[0]); // @[MulAddRecFN.scala 103:42]
  wire [10:0] _GEN_0 = {{1{rawC__sExp[9]}},rawC__sExp}; // @[MulAddRecFN.scala 107:42]
  wire [10:0] sNatCAlignDist = $signed(sExpAlignedProd) - $signed(_GEN_0); // @[MulAddRecFN.scala 107:42]
  wire [9:0] posNatCAlignDist = sNatCAlignDist[9:0]; // @[MulAddRecFN.scala 108:42]
  wire  isMinCAlign = (rawA_isZero | rawB_isZero) | ($signed(sNatCAlignDist) < 11'sh0); // @[MulAddRecFN.scala 109:50]
  wire  CIsDominant = rawC_rawC_sig_right_left & (isMinCAlign | (posNatCAlignDist <= 10'h18)); // @[MulAddRecFN.scala 111:23]
  wire [6:0] _CAlignDist_T_2 = posNatCAlignDist < 10'h4a ? posNatCAlignDist[6:0] : 7'h4a; // @[MulAddRecFN.scala 115:16]
  wire [6:0] CAlignDist = isMinCAlign ? 7'h0 : _CAlignDist_T_2; // @[MulAddRecFN.scala 113:12]
  wire [24:0] _mainAlignedSigC_T = ~rawC__sig; // @[MulAddRecFN.scala 121:28]
  wire [24:0] mainAlignedSigC_right = doSubMags ? _mainAlignedSigC_T : rawC__sig; // @[MulAddRecFN.scala 121:16]
  wire [52:0] mainAlignedSigC_left = doSubMags ? 53'h1fffffffffffff : 53'h0; // @[Bitwise.scala 72:12]
  wire [77:0] _mainAlignedSigC_T_3 = {mainAlignedSigC_right,mainAlignedSigC_left}; // @[MulAddRecFN.scala 123:11]
  wire [77:0] mainAlignedSigC = $signed(_mainAlignedSigC_T_3) >>> CAlignDist; // @[MulAddRecFN.scala 123:17]
  wire [26:0] _reduced4CExtra_T = {rawC__sig, 2'h0}; // @[MulAddRecFN.scala 125:30]
  wire  reduced4CExtra_reducedVec_0 = |(_reduced4CExtra_T[3:0]); // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_1 = |(_reduced4CExtra_T[7:4]); // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_2 = |(_reduced4CExtra_T[11:8]); // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_3 = |(_reduced4CExtra_T[15:12]); // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_4 = |(_reduced4CExtra_T[19:16]); // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_5 = |(_reduced4CExtra_T[23:20]); // @[primitives.scala 121:54]
  wire  reduced4CExtra_reducedVec_6 = |(_reduced4CExtra_T[26:24]); // @[primitives.scala 124:57]
  wire [6:0] _reduced4CExtra_T_1 = {reduced4CExtra_reducedVec_6,reduced4CExtra_reducedVec_5,reduced4CExtra_reducedVec_4,
    reduced4CExtra_reducedVec_3,reduced4CExtra_reducedVec_2,reduced4CExtra_reducedVec_1,reduced4CExtra_reducedVec_0}; // @[primitives.scala 125:20]
  wire [32:0] reduced4CExtra_shift = -33'sh100000000 >>> (CAlignDist[6:2]); // @[primitives.scala 77:58]
  wire  reduced4CExtra_right_1 = reduced4CExtra_shift[14]; // @[Bitwise.scala 109:18]
  wire  reduced4CExtra_left_1 = reduced4CExtra_shift[15]; // @[Bitwise.scala 109:44]
  wire  reduced4CExtra_right_3 = reduced4CExtra_shift[16]; // @[Bitwise.scala 109:18]
  wire  reduced4CExtra_left_2 = reduced4CExtra_shift[17]; // @[Bitwise.scala 109:44]
  wire  reduced4CExtra_right_5 = reduced4CExtra_shift[18]; // @[Bitwise.scala 109:18]
  wire  reduced4CExtra_left_4 = reduced4CExtra_shift[19]; // @[Bitwise.scala 109:44]
  wire [5:0] _reduced4CExtra_T_8 = {reduced4CExtra_right_1,reduced4CExtra_left_1,reduced4CExtra_right_3,
    reduced4CExtra_left_2,reduced4CExtra_right_5,reduced4CExtra_left_4}; // @[Cat.scala 29:58]
  wire [6:0] _GEN_1 = {{1'd0}, _reduced4CExtra_T_8}; // @[MulAddRecFN.scala 125:68]
  wire [6:0] _reduced4CExtra_T_9 = _reduced4CExtra_T_1 & _GEN_1; // @[MulAddRecFN.scala 125:68]
  wire  reduced4CExtra = |_reduced4CExtra_T_9; // @[MulAddRecFN.scala 133:11]
  wire  _alignedSigC_T_4 = (&(mainAlignedSigC[2:0])) & (~reduced4CExtra); // @[MulAddRecFN.scala 137:44]
  wire  _alignedSigC_T_7 = (|(mainAlignedSigC[2:0])) | reduced4CExtra; // @[MulAddRecFN.scala 138:44]
  wire  alignedSigC_left = doSubMags ? _alignedSigC_T_4 : _alignedSigC_T_7; // @[MulAddRecFN.scala 136:16]
  wire [74:0] alignedSigC_right = mainAlignedSigC[77:3]; // @[Cat.scala 29:58]
  wire [75:0] alignedSigC = {alignedSigC_right,alignedSigC_left}; // @[Cat.scala 29:58]
  wire  _io_toPostMul_isSigNaNAny_T_2 = rawA__isNaN & (~(rawA__sig[22])); // @[common.scala 81:46]
  wire  _io_toPostMul_isSigNaNAny_T_5 = rawB__isNaN & (~(rawB__sig[22])); // @[common.scala 81:46]
  wire  _io_toPostMul_isSigNaNAny_T_9 = rawC__isNaN & (~(rawC__sig[22])); // @[common.scala 81:46]
  wire [10:0] _io_toPostMul_sExpSum_T_2 = $signed(sExpAlignedProd) - 11'sh18; // @[MulAddRecFN.scala 161:53]
  wire [10:0] _io_toPostMul_sExpSum_T_3 = CIsDominant ? $signed({{1{rawC__sExp[9]}},rawC__sExp}) : $signed(
    _io_toPostMul_sExpSum_T_2); // @[MulAddRecFN.scala 161:12]
  assign io_mulAddA = rawA__sig[23:0]; // @[MulAddRecFN.scala 144:16]
  assign io_mulAddB = rawB__sig[23:0]; // @[MulAddRecFN.scala 145:16]
  assign io_mulAddC = alignedSigC[48:1]; // @[MulAddRecFN.scala 146:30]
  assign io_toPostMul_isSigNaNAny = (_io_toPostMul_isSigNaNAny_T_2 | _io_toPostMul_isSigNaNAny_T_5) |
    _io_toPostMul_isSigNaNAny_T_9; // @[MulAddRecFN.scala 149:58]
  assign io_toPostMul_isNaNAOrB = rawA__isNaN | rawB__isNaN; // @[MulAddRecFN.scala 151:42]
  assign io_toPostMul_isInfA = rawA_isSpecial & (~(rawA_exp[6])); // @[rawFloatFromRecFN.scala 56:33]
  assign io_toPostMul_isZeroA = (rawA_exp[8:6]) == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  assign io_toPostMul_isInfB = rawB_isSpecial & (~(rawB_exp[6])); // @[rawFloatFromRecFN.scala 56:33]
  assign io_toPostMul_isZeroB = (rawB_exp[8:6]) == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  assign io_toPostMul_signProd = (rawA__sign ^ rawB__sign) ^ (io_op[1]); // @[MulAddRecFN.scala 98:42]
  assign io_toPostMul_isNaNC = rawC_isSpecial & (rawC_exp[6]); // @[rawFloatFromRecFN.scala 55:33]
  assign io_toPostMul_isInfC = rawC_isSpecial & (~(rawC_exp[6])); // @[rawFloatFromRecFN.scala 56:33]
  assign io_toPostMul_isZeroC = (rawC_exp[8:6]) == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  assign io_toPostMul_sExpSum = _io_toPostMul_sExpSum_T_3[9:0]; // @[MulAddRecFN.scala 160:28]
  assign io_toPostMul_doSubMags = (signProd ^ rawC__sign) ^ (io_op[0]); // @[MulAddRecFN.scala 103:42]
  assign io_toPostMul_CIsDominant = rawC_rawC_sig_right_left & (isMinCAlign | (posNatCAlignDist <= 10'h18)); // @[MulAddRecFN.scala 111:23]
  assign io_toPostMul_CDom_CAlignDist = CAlignDist[4:0]; // @[MulAddRecFN.scala 164:47]
  assign io_toPostMul_highAlignedSigC = alignedSigC[74:49]; // @[MulAddRecFN.scala 166:20]
  assign io_toPostMul_bit0AlignedSigC = alignedSigC[0]; // @[MulAddRecFN.scala 167:48]
endmodule
