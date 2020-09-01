module MulAddRecFNToRaw_postMul(
  input         io_fromPreMul_isSigNaNAny,
  input         io_fromPreMul_isNaNAOrB,
  input         io_fromPreMul_isInfA,
  input         io_fromPreMul_isZeroA,
  input         io_fromPreMul_isInfB,
  input         io_fromPreMul_isZeroB,
  input         io_fromPreMul_signProd,
  input         io_fromPreMul_isNaNC,
  input         io_fromPreMul_isInfC,
  input         io_fromPreMul_isZeroC,
  input  [9:0]  io_fromPreMul_sExpSum,
  input         io_fromPreMul_doSubMags,
  input         io_fromPreMul_CIsDominant,
  input  [4:0]  io_fromPreMul_CDom_CAlignDist,
  input  [25:0] io_fromPreMul_highAlignedSigC,
  input         io_fromPreMul_bit0AlignedSigC,
  input  [48:0] io_mulAddResult,
  input  [2:0]  io_roundingMode,
  output        io_invalidExc,
  output        io_rawOut_isNaN,
  output        io_rawOut_isInf,
  output        io_rawOut_isZero,
  output        io_rawOut_sign,
  output [9:0]  io_rawOut_sExp,
  output [26:0] io_rawOut_sig
);
  wire  roundingMode_min = io_roundingMode == 3'h2; // @[MulAddRecFN.scala 188:45]
  wire  CDom_sign = io_fromPreMul_signProd ^ io_fromPreMul_doSubMags; // @[MulAddRecFN.scala 192:42]
  wire [25:0] _sigSum_T_2 = io_fromPreMul_highAlignedSigC + 26'h1; // @[MulAddRecFN.scala 195:47]
  wire [25:0] sigSum_right_right = io_mulAddResult[48] ? _sigSum_T_2 : io_fromPreMul_highAlignedSigC; // @[MulAddRecFN.scala 194:16]
  wire [47:0] sigSum_right_left = io_mulAddResult[47:0]; // @[MulAddRecFN.scala 198:28]
  wire [74:0] sigSum = {sigSum_right_right,sigSum_right_left,io_fromPreMul_bit0AlignedSigC}; // @[Cat.scala 29:58]
  wire [1:0] _CDom_sExp_T = {1'b0,$signed(io_fromPreMul_doSubMags)}; // @[MulAddRecFN.scala 205:69]
  wire [9:0] _GEN_0 = {{8{_CDom_sExp_T[1]}},_CDom_sExp_T}; // @[MulAddRecFN.scala 205:43]
  wire [9:0] CDom_sExp = $signed(io_fromPreMul_sExpSum) - $signed(_GEN_0); // @[MulAddRecFN.scala 205:43]
  wire [49:0] _CDom_absSigSum_T_1 = ~(sigSum[74:25]); // @[MulAddRecFN.scala 208:13]
  wire [1:0] CDom_absSigSum_right_left = io_fromPreMul_highAlignedSigC[25:24]; // @[MulAddRecFN.scala 211:46]
  wire [46:0] CDom_absSigSum_left = sigSum[72:26]; // @[MulAddRecFN.scala 212:23]
  wire [49:0] _CDom_absSigSum_T_2 = {1'h0,CDom_absSigSum_right_left,CDom_absSigSum_left}; // @[Cat.scala 29:58]
  wire [49:0] CDom_absSigSum = io_fromPreMul_doSubMags ? _CDom_absSigSum_T_1 : _CDom_absSigSum_T_2; // @[MulAddRecFN.scala 207:12]
  wire [23:0] _CDom_absSigSumExtra_T_1 = ~(sigSum[24:1]); // @[MulAddRecFN.scala 217:14]
  wire  _CDom_absSigSumExtra_T_2 = |_CDom_absSigSumExtra_T_1; // @[MulAddRecFN.scala 217:36]
  wire  _CDom_absSigSumExtra_T_4 = |(sigSum[25:1]); // @[MulAddRecFN.scala 218:37]
  wire  CDom_absSigSumExtra = io_fromPreMul_doSubMags ? _CDom_absSigSumExtra_T_2 : _CDom_absSigSumExtra_T_4; // @[MulAddRecFN.scala 216:12]
  wire [80:0] _GEN_1 = {{31'd0}, CDom_absSigSum}; // @[MulAddRecFN.scala 221:24]
  wire [80:0] _CDom_mainSig_T = _GEN_1 << io_fromPreMul_CDom_CAlignDist; // @[MulAddRecFN.scala 221:24]
  wire [28:0] CDom_mainSig = _CDom_mainSig_T[49:21]; // @[MulAddRecFN.scala 221:56]
  wire [26:0] _CDom_reduced4SigExtra_T_1 = {CDom_absSigSum[23:0], 3'h0}; // @[MulAddRecFN.scala 224:53]
  wire  CDom_reduced4SigExtra_reducedVec_0 = |(_CDom_reduced4SigExtra_T_1[3:0]); // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_1 = |(_CDom_reduced4SigExtra_T_1[7:4]); // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_2 = |(_CDom_reduced4SigExtra_T_1[11:8]); // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_3 = |(_CDom_reduced4SigExtra_T_1[15:12]); // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_4 = |(_CDom_reduced4SigExtra_T_1[19:16]); // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_5 = |(_CDom_reduced4SigExtra_T_1[23:20]); // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_6 = |(_CDom_reduced4SigExtra_T_1[26:24]); // @[primitives.scala 124:57]
  wire [6:0] _CDom_reduced4SigExtra_T_2 = {CDom_reduced4SigExtra_reducedVec_6,CDom_reduced4SigExtra_reducedVec_5,
    CDom_reduced4SigExtra_reducedVec_4,CDom_reduced4SigExtra_reducedVec_3,CDom_reduced4SigExtra_reducedVec_2,
    CDom_reduced4SigExtra_reducedVec_1,CDom_reduced4SigExtra_reducedVec_0}; // @[primitives.scala 125:20]
  wire [2:0] _CDom_reduced4SigExtra_T_4 = ~(io_fromPreMul_CDom_CAlignDist[4:2]); // @[primitives.scala 51:21]
  wire [8:0] CDom_reduced4SigExtra_shift = 9'sh100 >>> _CDom_reduced4SigExtra_T_4; // @[primitives.scala 77:58]
  wire  CDom_reduced4SigExtra_right_1 = CDom_reduced4SigExtra_shift[1]; // @[Bitwise.scala 109:18]
  wire  CDom_reduced4SigExtra_left_1 = CDom_reduced4SigExtra_shift[2]; // @[Bitwise.scala 109:44]
  wire  CDom_reduced4SigExtra_right_3 = CDom_reduced4SigExtra_shift[3]; // @[Bitwise.scala 109:18]
  wire  CDom_reduced4SigExtra_left_2 = CDom_reduced4SigExtra_shift[4]; // @[Bitwise.scala 109:44]
  wire  CDom_reduced4SigExtra_right_5 = CDom_reduced4SigExtra_shift[5]; // @[Bitwise.scala 109:18]
  wire  CDom_reduced4SigExtra_left_4 = CDom_reduced4SigExtra_shift[6]; // @[Bitwise.scala 109:44]
  wire [5:0] _CDom_reduced4SigExtra_T_10 = {CDom_reduced4SigExtra_right_1,CDom_reduced4SigExtra_left_1,
    CDom_reduced4SigExtra_right_3,CDom_reduced4SigExtra_left_2,CDom_reduced4SigExtra_right_5,
    CDom_reduced4SigExtra_left_4}; // @[Cat.scala 29:58]
  wire [6:0] _GEN_2 = {{1'd0}, _CDom_reduced4SigExtra_T_10}; // @[MulAddRecFN.scala 224:72]
  wire [6:0] _CDom_reduced4SigExtra_T_11 = _CDom_reduced4SigExtra_T_2 & _GEN_2; // @[MulAddRecFN.scala 224:72]
  wire  CDom_reduced4SigExtra = |_CDom_reduced4SigExtra_T_11; // @[MulAddRecFN.scala 225:73]
  wire [25:0] CDom_sig_right = CDom_mainSig[28:3]; // @[MulAddRecFN.scala 227:25]
  wire  CDom_sig_left = ((|(CDom_mainSig[2:0])) | CDom_reduced4SigExtra) | CDom_absSigSumExtra; // @[MulAddRecFN.scala 228:61]
  wire [26:0] CDom_sig = {CDom_sig_right,CDom_sig_left}; // @[Cat.scala 29:58]
  wire  notCDom_signSigSum = sigSum[51]; // @[MulAddRecFN.scala 234:36]
  wire [50:0] _notCDom_absSigSum_T_1 = ~(sigSum[50:0]); // @[MulAddRecFN.scala 237:13]
  wire [50:0] _GEN_3 = {{50'd0}, io_fromPreMul_doSubMags}; // @[MulAddRecFN.scala 238:41]
  wire [50:0] _notCDom_absSigSum_T_4 = (sigSum[50:0]) + _GEN_3; // @[MulAddRecFN.scala 238:41]
  wire [50:0] notCDom_absSigSum = notCDom_signSigSum ? _notCDom_absSigSum_T_1 : _notCDom_absSigSum_T_4; // @[MulAddRecFN.scala 236:12]
  wire  notCDom_reduced2AbsSigSum_reducedVec_0 = |(notCDom_absSigSum[1:0]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_1 = |(notCDom_absSigSum[3:2]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_2 = |(notCDom_absSigSum[5:4]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_3 = |(notCDom_absSigSum[7:6]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_4 = |(notCDom_absSigSum[9:8]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_5 = |(notCDom_absSigSum[11:10]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_6 = |(notCDom_absSigSum[13:12]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_7 = |(notCDom_absSigSum[15:14]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_8 = |(notCDom_absSigSum[17:16]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_9 = |(notCDom_absSigSum[19:18]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_10 = |(notCDom_absSigSum[21:20]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_11 = |(notCDom_absSigSum[23:22]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_12 = |(notCDom_absSigSum[25:24]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_13 = |(notCDom_absSigSum[27:26]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_14 = |(notCDom_absSigSum[29:28]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_15 = |(notCDom_absSigSum[31:30]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_16 = |(notCDom_absSigSum[33:32]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_17 = |(notCDom_absSigSum[35:34]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_18 = |(notCDom_absSigSum[37:36]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_19 = |(notCDom_absSigSum[39:38]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_20 = |(notCDom_absSigSum[41:40]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_21 = |(notCDom_absSigSum[43:42]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_22 = |(notCDom_absSigSum[45:44]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_23 = |(notCDom_absSigSum[47:46]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_24 = |(notCDom_absSigSum[49:48]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_25 = |(notCDom_absSigSum[50]); // @[primitives.scala 107:57]
  wire [5:0] notCDom_reduced2AbsSigSum_left_left = {notCDom_reduced2AbsSigSum_reducedVec_5,
    notCDom_reduced2AbsSigSum_reducedVec_4,notCDom_reduced2AbsSigSum_reducedVec_3,notCDom_reduced2AbsSigSum_reducedVec_2
    ,notCDom_reduced2AbsSigSum_reducedVec_1,notCDom_reduced2AbsSigSum_reducedVec_0}; // @[primitives.scala 108:20]
  wire [12:0] notCDom_reduced2AbsSigSum_left = {notCDom_reduced2AbsSigSum_reducedVec_12,
    notCDom_reduced2AbsSigSum_reducedVec_11,notCDom_reduced2AbsSigSum_reducedVec_10,
    notCDom_reduced2AbsSigSum_reducedVec_9,notCDom_reduced2AbsSigSum_reducedVec_8,notCDom_reduced2AbsSigSum_reducedVec_7
    ,notCDom_reduced2AbsSigSum_reducedVec_6,notCDom_reduced2AbsSigSum_left_left}; // @[primitives.scala 108:20]
  wire [5:0] notCDom_reduced2AbsSigSum_right_left = {notCDom_reduced2AbsSigSum_reducedVec_18,
    notCDom_reduced2AbsSigSum_reducedVec_17,notCDom_reduced2AbsSigSum_reducedVec_16,
    notCDom_reduced2AbsSigSum_reducedVec_15,notCDom_reduced2AbsSigSum_reducedVec_14,
    notCDom_reduced2AbsSigSum_reducedVec_13}; // @[primitives.scala 108:20]
  wire [25:0] notCDom_reduced2AbsSigSum = {notCDom_reduced2AbsSigSum_reducedVec_25,
    notCDom_reduced2AbsSigSum_reducedVec_24,notCDom_reduced2AbsSigSum_reducedVec_23,
    notCDom_reduced2AbsSigSum_reducedVec_22,notCDom_reduced2AbsSigSum_reducedVec_21,
    notCDom_reduced2AbsSigSum_reducedVec_20,notCDom_reduced2AbsSigSum_reducedVec_19,notCDom_reduced2AbsSigSum_right_left
    ,notCDom_reduced2AbsSigSum_left}; // @[primitives.scala 108:20]
  wire [4:0] _notCDom_normDistReduced2_T_26 = notCDom_reduced2AbsSigSum[1] ? 5'h18 : 5'h19; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_27 = notCDom_reduced2AbsSigSum[2] ? 5'h17 : _notCDom_normDistReduced2_T_26; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_28 = notCDom_reduced2AbsSigSum[3] ? 5'h16 : _notCDom_normDistReduced2_T_27; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_29 = notCDom_reduced2AbsSigSum[4] ? 5'h15 : _notCDom_normDistReduced2_T_28; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_30 = notCDom_reduced2AbsSigSum[5] ? 5'h14 : _notCDom_normDistReduced2_T_29; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_31 = notCDom_reduced2AbsSigSum[6] ? 5'h13 : _notCDom_normDistReduced2_T_30; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_32 = notCDom_reduced2AbsSigSum[7] ? 5'h12 : _notCDom_normDistReduced2_T_31; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_33 = notCDom_reduced2AbsSigSum[8] ? 5'h11 : _notCDom_normDistReduced2_T_32; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_34 = notCDom_reduced2AbsSigSum[9] ? 5'h10 : _notCDom_normDistReduced2_T_33; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_35 = notCDom_reduced2AbsSigSum[10] ? 5'hf : _notCDom_normDistReduced2_T_34; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_36 = notCDom_reduced2AbsSigSum[11] ? 5'he : _notCDom_normDistReduced2_T_35; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_37 = notCDom_reduced2AbsSigSum[12] ? 5'hd : _notCDom_normDistReduced2_T_36; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_38 = notCDom_reduced2AbsSigSum[13] ? 5'hc : _notCDom_normDistReduced2_T_37; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_39 = notCDom_reduced2AbsSigSum[14] ? 5'hb : _notCDom_normDistReduced2_T_38; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_40 = notCDom_reduced2AbsSigSum[15] ? 5'ha : _notCDom_normDistReduced2_T_39; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_41 = notCDom_reduced2AbsSigSum[16] ? 5'h9 : _notCDom_normDistReduced2_T_40; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_42 = notCDom_reduced2AbsSigSum[17] ? 5'h8 : _notCDom_normDistReduced2_T_41; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_43 = notCDom_reduced2AbsSigSum[18] ? 5'h7 : _notCDom_normDistReduced2_T_42; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_44 = notCDom_reduced2AbsSigSum[19] ? 5'h6 : _notCDom_normDistReduced2_T_43; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_45 = notCDom_reduced2AbsSigSum[20] ? 5'h5 : _notCDom_normDistReduced2_T_44; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_46 = notCDom_reduced2AbsSigSum[21] ? 5'h4 : _notCDom_normDistReduced2_T_45; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_47 = notCDom_reduced2AbsSigSum[22] ? 5'h3 : _notCDom_normDistReduced2_T_46; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_48 = notCDom_reduced2AbsSigSum[23] ? 5'h2 : _notCDom_normDistReduced2_T_47; // @[Mux.scala 47:69]
  wire [4:0] _notCDom_normDistReduced2_T_49 = notCDom_reduced2AbsSigSum[24] ? 5'h1 : _notCDom_normDistReduced2_T_48; // @[Mux.scala 47:69]
  wire [4:0] notCDom_normDistReduced2 = notCDom_reduced2AbsSigSum[25] ? 5'h0 : _notCDom_normDistReduced2_T_49; // @[Mux.scala 47:69]
  wire [5:0] notCDom_nearNormDist = {notCDom_normDistReduced2, 1'h0}; // @[MulAddRecFN.scala 242:56]
  wire [6:0] _notCDom_sExp_T = {1'b0,$signed(notCDom_nearNormDist)}; // @[MulAddRecFN.scala 243:69]
  wire [9:0] _GEN_4 = {{3{_notCDom_sExp_T[6]}},_notCDom_sExp_T}; // @[MulAddRecFN.scala 243:46]
  wire [9:0] notCDom_sExp = $signed(io_fromPreMul_sExpSum) - $signed(_GEN_4); // @[MulAddRecFN.scala 243:46]
  wire [113:0] _GEN_5 = {{63'd0}, notCDom_absSigSum}; // @[MulAddRecFN.scala 245:27]
  wire [113:0] _notCDom_mainSig_T = _GEN_5 << notCDom_nearNormDist; // @[MulAddRecFN.scala 245:27]
  wire [28:0] notCDom_mainSig = _notCDom_mainSig_T[51:23]; // @[MulAddRecFN.scala 245:50]
  wire  notCDom_reduced4SigExtra_reducedVec_0 = |(notCDom_reduced2AbsSigSum[1:0]); // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_1 = |(notCDom_reduced2AbsSigSum[3:2]); // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_2 = |(notCDom_reduced2AbsSigSum[5:4]); // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_3 = |(notCDom_reduced2AbsSigSum[7:6]); // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_4 = |(notCDom_reduced2AbsSigSum[9:8]); // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_5 = |(notCDom_reduced2AbsSigSum[11:10]); // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_6 = |(notCDom_reduced2AbsSigSum[12]); // @[primitives.scala 107:57]
  wire [6:0] _notCDom_reduced4SigExtra_T_2 = {notCDom_reduced4SigExtra_reducedVec_6,
    notCDom_reduced4SigExtra_reducedVec_5,notCDom_reduced4SigExtra_reducedVec_4,notCDom_reduced4SigExtra_reducedVec_3,
    notCDom_reduced4SigExtra_reducedVec_2,notCDom_reduced4SigExtra_reducedVec_1,notCDom_reduced4SigExtra_reducedVec_0}; // @[primitives.scala 108:20]
  wire [3:0] _notCDom_reduced4SigExtra_T_4 = ~(notCDom_normDistReduced2[4:1]); // @[primitives.scala 51:21]
  wire [16:0] notCDom_reduced4SigExtra_shift = 17'sh10000 >>> _notCDom_reduced4SigExtra_T_4; // @[primitives.scala 77:58]
  wire  notCDom_reduced4SigExtra_right_1 = notCDom_reduced4SigExtra_shift[1]; // @[Bitwise.scala 109:18]
  wire  notCDom_reduced4SigExtra_left_1 = notCDom_reduced4SigExtra_shift[2]; // @[Bitwise.scala 109:44]
  wire  notCDom_reduced4SigExtra_right_3 = notCDom_reduced4SigExtra_shift[3]; // @[Bitwise.scala 109:18]
  wire  notCDom_reduced4SigExtra_left_2 = notCDom_reduced4SigExtra_shift[4]; // @[Bitwise.scala 109:44]
  wire  notCDom_reduced4SigExtra_right_5 = notCDom_reduced4SigExtra_shift[5]; // @[Bitwise.scala 109:18]
  wire  notCDom_reduced4SigExtra_left_4 = notCDom_reduced4SigExtra_shift[6]; // @[Bitwise.scala 109:44]
  wire [5:0] _notCDom_reduced4SigExtra_T_10 = {notCDom_reduced4SigExtra_right_1,notCDom_reduced4SigExtra_left_1,
    notCDom_reduced4SigExtra_right_3,notCDom_reduced4SigExtra_left_2,notCDom_reduced4SigExtra_right_5,
    notCDom_reduced4SigExtra_left_4}; // @[Cat.scala 29:58]
  wire [6:0] _GEN_6 = {{1'd0}, _notCDom_reduced4SigExtra_T_10}; // @[MulAddRecFN.scala 249:78]
  wire [6:0] _notCDom_reduced4SigExtra_T_11 = _notCDom_reduced4SigExtra_T_2 & _GEN_6; // @[MulAddRecFN.scala 249:78]
  wire  notCDom_reduced4SigExtra = |_notCDom_reduced4SigExtra_T_11; // @[MulAddRecFN.scala 251:11]
  wire [25:0] notCDom_sig_right = notCDom_mainSig[28:3]; // @[MulAddRecFN.scala 253:28]
  wire  notCDom_sig_left = (|(notCDom_mainSig[2:0])) | notCDom_reduced4SigExtra; // @[MulAddRecFN.scala 254:39]
  wire [26:0] notCDom_sig = {notCDom_sig_right,notCDom_sig_left}; // @[Cat.scala 29:58]
  wire  notCDom_completeCancellation = (notCDom_sig[26:25]) == 2'h0; // @[MulAddRecFN.scala 257:50]
  wire  _notCDom_sign_T = io_fromPreMul_signProd ^ notCDom_signSigSum; // @[MulAddRecFN.scala 261:36]
  wire  notCDom_sign = notCDom_completeCancellation ? roundingMode_min : _notCDom_sign_T; // @[MulAddRecFN.scala 259:12]
  wire  notNaN_isInfProd = io_fromPreMul_isInfA | io_fromPreMul_isInfB; // @[MulAddRecFN.scala 266:49]
  wire  notNaN_isInfOut = notNaN_isInfProd | io_fromPreMul_isInfC; // @[MulAddRecFN.scala 267:44]
  wire  notNaN_addZeros = (io_fromPreMul_isZeroA | io_fromPreMul_isZeroB) & io_fromPreMul_isZeroC; // @[MulAddRecFN.scala 269:58]
  wire  _io_invalidExc_T = io_fromPreMul_isInfA & io_fromPreMul_isZeroB; // @[MulAddRecFN.scala 274:31]
  wire  _io_invalidExc_T_1 = io_fromPreMul_isSigNaNAny | _io_invalidExc_T; // @[MulAddRecFN.scala 273:35]
  wire  _io_invalidExc_T_2 = io_fromPreMul_isZeroA & io_fromPreMul_isInfB; // @[MulAddRecFN.scala 275:32]
  wire  _io_invalidExc_T_3 = _io_invalidExc_T_1 | _io_invalidExc_T_2; // @[MulAddRecFN.scala 274:57]
  wire  _io_invalidExc_T_6 = (~io_fromPreMul_isNaNAOrB) & notNaN_isInfProd; // @[MulAddRecFN.scala 276:36]
  wire  _io_invalidExc_T_7 = _io_invalidExc_T_6 & io_fromPreMul_isInfC; // @[MulAddRecFN.scala 277:61]
  wire  _io_invalidExc_T_8 = _io_invalidExc_T_7 & io_fromPreMul_doSubMags; // @[MulAddRecFN.scala 278:35]
  wire  _io_rawOut_isZero_T_1 = (~io_fromPreMul_CIsDominant) & notCDom_completeCancellation; // @[MulAddRecFN.scala 285:42]
  wire  _io_rawOut_sign_T_1 = io_fromPreMul_isInfC & CDom_sign; // @[MulAddRecFN.scala 288:31]
  wire  _io_rawOut_sign_T_2 = (notNaN_isInfProd & io_fromPreMul_signProd) | _io_rawOut_sign_T_1; // @[MulAddRecFN.scala 287:54]
  wire  _io_rawOut_sign_T_5 = (notNaN_addZeros & (~roundingMode_min)) & io_fromPreMul_signProd; // @[MulAddRecFN.scala 289:48]
  wire  _io_rawOut_sign_T_6 = _io_rawOut_sign_T_5 & CDom_sign; // @[MulAddRecFN.scala 290:36]
  wire  _io_rawOut_sign_T_7 = _io_rawOut_sign_T_2 | _io_rawOut_sign_T_6; // @[MulAddRecFN.scala 288:43]
  wire  _io_rawOut_sign_T_9 = io_fromPreMul_signProd | CDom_sign; // @[MulAddRecFN.scala 292:37]
  wire  _io_rawOut_sign_T_10 = (notNaN_addZeros & roundingMode_min) & _io_rawOut_sign_T_9; // @[MulAddRecFN.scala 291:46]
  wire  _io_rawOut_sign_T_11 = _io_rawOut_sign_T_7 | _io_rawOut_sign_T_10; // @[MulAddRecFN.scala 290:48]
  wire  _io_rawOut_sign_T_15 = io_fromPreMul_CIsDominant ? CDom_sign : notCDom_sign; // @[MulAddRecFN.scala 294:17]
  wire  _io_rawOut_sign_T_16 = ((~notNaN_isInfOut) & (~notNaN_addZeros)) & _io_rawOut_sign_T_15; // @[MulAddRecFN.scala 293:49]
  assign io_invalidExc = _io_invalidExc_T_3 | _io_invalidExc_T_8; // @[MulAddRecFN.scala 275:57]
  assign io_rawOut_isNaN = io_fromPreMul_isNaNAOrB | io_fromPreMul_isNaNC; // @[MulAddRecFN.scala 280:48]
  assign io_rawOut_isInf = notNaN_isInfProd | io_fromPreMul_isInfC; // @[MulAddRecFN.scala 267:44]
  assign io_rawOut_isZero = notNaN_addZeros | _io_rawOut_isZero_T_1; // @[MulAddRecFN.scala 284:25]
  assign io_rawOut_sign = _io_rawOut_sign_T_11 | _io_rawOut_sign_T_16; // @[MulAddRecFN.scala 292:50]
  assign io_rawOut_sExp = io_fromPreMul_CIsDominant ? $signed(CDom_sExp) : $signed(notCDom_sExp); // @[MulAddRecFN.scala 295:26]
  assign io_rawOut_sig = io_fromPreMul_CIsDominant ? CDom_sig : notCDom_sig; // @[MulAddRecFN.scala 296:25]
endmodule
