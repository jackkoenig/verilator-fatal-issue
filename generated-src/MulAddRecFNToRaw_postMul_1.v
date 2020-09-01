module MulAddRecFNToRaw_postMul_1(
  input          io_fromPreMul_isSigNaNAny,
  input          io_fromPreMul_isNaNAOrB,
  input          io_fromPreMul_isInfA,
  input          io_fromPreMul_isZeroA,
  input          io_fromPreMul_isInfB,
  input          io_fromPreMul_isZeroB,
  input          io_fromPreMul_signProd,
  input          io_fromPreMul_isNaNC,
  input          io_fromPreMul_isInfC,
  input          io_fromPreMul_isZeroC,
  input  [12:0]  io_fromPreMul_sExpSum,
  input          io_fromPreMul_doSubMags,
  input          io_fromPreMul_CIsDominant,
  input  [5:0]   io_fromPreMul_CDom_CAlignDist,
  input  [54:0]  io_fromPreMul_highAlignedSigC,
  input          io_fromPreMul_bit0AlignedSigC,
  input  [106:0] io_mulAddResult,
  input  [2:0]   io_roundingMode,
  output         io_invalidExc,
  output         io_rawOut_isNaN,
  output         io_rawOut_isInf,
  output         io_rawOut_isZero,
  output         io_rawOut_sign,
  output [12:0]  io_rawOut_sExp,
  output [55:0]  io_rawOut_sig
);
  wire  roundingMode_min = io_roundingMode == 3'h2; // @[MulAddRecFN.scala 188:45]
  wire  CDom_sign = io_fromPreMul_signProd ^ io_fromPreMul_doSubMags; // @[MulAddRecFN.scala 192:42]
  wire [54:0] _sigSum_T_2 = io_fromPreMul_highAlignedSigC + 55'h1; // @[MulAddRecFN.scala 195:47]
  wire [54:0] sigSum_right_right = io_mulAddResult[106] ? _sigSum_T_2 : io_fromPreMul_highAlignedSigC; // @[MulAddRecFN.scala 194:16]
  wire [105:0] sigSum_right_left = io_mulAddResult[105:0]; // @[MulAddRecFN.scala 198:28]
  wire [161:0] sigSum = {sigSum_right_right,sigSum_right_left,io_fromPreMul_bit0AlignedSigC}; // @[Cat.scala 29:58]
  wire [1:0] _CDom_sExp_T = {1'b0,$signed(io_fromPreMul_doSubMags)}; // @[MulAddRecFN.scala 205:69]
  wire [12:0] _GEN_0 = {{11{_CDom_sExp_T[1]}},_CDom_sExp_T}; // @[MulAddRecFN.scala 205:43]
  wire [12:0] CDom_sExp = $signed(io_fromPreMul_sExpSum) - $signed(_GEN_0); // @[MulAddRecFN.scala 205:43]
  wire [107:0] _CDom_absSigSum_T_1 = ~(sigSum[161:54]); // @[MulAddRecFN.scala 208:13]
  wire [1:0] CDom_absSigSum_right_left = io_fromPreMul_highAlignedSigC[54:53]; // @[MulAddRecFN.scala 211:46]
  wire [104:0] CDom_absSigSum_left = sigSum[159:55]; // @[MulAddRecFN.scala 212:23]
  wire [107:0] _CDom_absSigSum_T_2 = {1'h0,CDom_absSigSum_right_left,CDom_absSigSum_left}; // @[Cat.scala 29:58]
  wire [107:0] CDom_absSigSum = io_fromPreMul_doSubMags ? _CDom_absSigSum_T_1 : _CDom_absSigSum_T_2; // @[MulAddRecFN.scala 207:12]
  wire [52:0] _CDom_absSigSumExtra_T_1 = ~(sigSum[53:1]); // @[MulAddRecFN.scala 217:14]
  wire  _CDom_absSigSumExtra_T_2 = |_CDom_absSigSumExtra_T_1; // @[MulAddRecFN.scala 217:36]
  wire  _CDom_absSigSumExtra_T_4 = |(sigSum[54:1]); // @[MulAddRecFN.scala 218:37]
  wire  CDom_absSigSumExtra = io_fromPreMul_doSubMags ? _CDom_absSigSumExtra_T_2 : _CDom_absSigSumExtra_T_4; // @[MulAddRecFN.scala 216:12]
  wire [170:0] _GEN_1 = {{63'd0}, CDom_absSigSum}; // @[MulAddRecFN.scala 221:24]
  wire [170:0] _CDom_mainSig_T = _GEN_1 << io_fromPreMul_CDom_CAlignDist; // @[MulAddRecFN.scala 221:24]
  wire [57:0] CDom_mainSig = _CDom_mainSig_T[107:50]; // @[MulAddRecFN.scala 221:56]
  wire [54:0] _CDom_reduced4SigExtra_T_1 = {CDom_absSigSum[52:0], 2'h0}; // @[MulAddRecFN.scala 224:53]
  wire  CDom_reduced4SigExtra_reducedVec_0 = |(_CDom_reduced4SigExtra_T_1[3:0]); // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_1 = |(_CDom_reduced4SigExtra_T_1[7:4]); // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_2 = |(_CDom_reduced4SigExtra_T_1[11:8]); // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_3 = |(_CDom_reduced4SigExtra_T_1[15:12]); // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_4 = |(_CDom_reduced4SigExtra_T_1[19:16]); // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_5 = |(_CDom_reduced4SigExtra_T_1[23:20]); // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_6 = |(_CDom_reduced4SigExtra_T_1[27:24]); // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_7 = |(_CDom_reduced4SigExtra_T_1[31:28]); // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_8 = |(_CDom_reduced4SigExtra_T_1[35:32]); // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_9 = |(_CDom_reduced4SigExtra_T_1[39:36]); // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_10 = |(_CDom_reduced4SigExtra_T_1[43:40]); // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_11 = |(_CDom_reduced4SigExtra_T_1[47:44]); // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_12 = |(_CDom_reduced4SigExtra_T_1[51:48]); // @[primitives.scala 121:54]
  wire  CDom_reduced4SigExtra_reducedVec_13 = |(_CDom_reduced4SigExtra_T_1[54:52]); // @[primitives.scala 124:57]
  wire [6:0] CDom_reduced4SigExtra_left = {CDom_reduced4SigExtra_reducedVec_6,CDom_reduced4SigExtra_reducedVec_5,
    CDom_reduced4SigExtra_reducedVec_4,CDom_reduced4SigExtra_reducedVec_3,CDom_reduced4SigExtra_reducedVec_2,
    CDom_reduced4SigExtra_reducedVec_1,CDom_reduced4SigExtra_reducedVec_0}; // @[primitives.scala 125:20]
  wire [13:0] _CDom_reduced4SigExtra_T_2 = {CDom_reduced4SigExtra_reducedVec_13,CDom_reduced4SigExtra_reducedVec_12,
    CDom_reduced4SigExtra_reducedVec_11,CDom_reduced4SigExtra_reducedVec_10,CDom_reduced4SigExtra_reducedVec_9,
    CDom_reduced4SigExtra_reducedVec_8,CDom_reduced4SigExtra_reducedVec_7,CDom_reduced4SigExtra_left}; // @[primitives.scala 125:20]
  wire [3:0] _CDom_reduced4SigExtra_T_4 = ~(io_fromPreMul_CDom_CAlignDist[5:2]); // @[primitives.scala 51:21]
  wire [16:0] CDom_reduced4SigExtra_shift = 17'sh10000 >>> _CDom_reduced4SigExtra_T_4; // @[primitives.scala 77:58]
  wire [7:0] CDom_reduced4SigExtra_res = CDom_reduced4SigExtra_shift[8:1]; // @[Bitwise.scala 109:18]
  wire [7:0] _CDom_reduced4SigExtra_T_9 = {{4'd0}, CDom_reduced4SigExtra_res[7:4]}; // @[Bitwise.scala 103:31]
  wire [7:0] _CDom_reduced4SigExtra_T_11 = {CDom_reduced4SigExtra_res[3:0], 4'h0}; // @[Bitwise.scala 103:65]
  wire [7:0] _CDom_reduced4SigExtra_T_13 = _CDom_reduced4SigExtra_T_11 & 8'hf0; // @[Bitwise.scala 103:75]
  wire [7:0] _CDom_reduced4SigExtra_T_14 = _CDom_reduced4SigExtra_T_9 | _CDom_reduced4SigExtra_T_13; // @[Bitwise.scala 103:39]
  wire [7:0] _GEN_2 = {{2'd0}, _CDom_reduced4SigExtra_T_14[7:2]}; // @[Bitwise.scala 103:31]
  wire [7:0] _CDom_reduced4SigExtra_T_19 = _GEN_2 & 8'h33; // @[Bitwise.scala 103:31]
  wire [7:0] _CDom_reduced4SigExtra_T_21 = {_CDom_reduced4SigExtra_T_14[5:0], 2'h0}; // @[Bitwise.scala 103:65]
  wire [7:0] _CDom_reduced4SigExtra_T_23 = _CDom_reduced4SigExtra_T_21 & 8'hcc; // @[Bitwise.scala 103:75]
  wire [7:0] _CDom_reduced4SigExtra_T_24 = _CDom_reduced4SigExtra_T_19 | _CDom_reduced4SigExtra_T_23; // @[Bitwise.scala 103:39]
  wire [7:0] _GEN_3 = {{1'd0}, _CDom_reduced4SigExtra_T_24[7:1]}; // @[Bitwise.scala 103:31]
  wire [7:0] _CDom_reduced4SigExtra_T_29 = _GEN_3 & 8'h55; // @[Bitwise.scala 103:31]
  wire [7:0] _CDom_reduced4SigExtra_T_31 = {_CDom_reduced4SigExtra_T_24[6:0], 1'h0}; // @[Bitwise.scala 103:65]
  wire [7:0] _CDom_reduced4SigExtra_T_33 = _CDom_reduced4SigExtra_T_31 & 8'haa; // @[Bitwise.scala 103:75]
  wire [7:0] CDom_reduced4SigExtra_right_1 = _CDom_reduced4SigExtra_T_29 | _CDom_reduced4SigExtra_T_33; // @[Bitwise.scala 103:39]
  wire  CDom_reduced4SigExtra_right_2 = CDom_reduced4SigExtra_shift[9]; // @[Bitwise.scala 109:18]
  wire  CDom_reduced4SigExtra_left_1 = CDom_reduced4SigExtra_shift[10]; // @[Bitwise.scala 109:44]
  wire  CDom_reduced4SigExtra_right_4 = CDom_reduced4SigExtra_shift[11]; // @[Bitwise.scala 109:18]
  wire  CDom_reduced4SigExtra_left_2 = CDom_reduced4SigExtra_shift[12]; // @[Bitwise.scala 109:44]
  wire  CDom_reduced4SigExtra_left_4 = CDom_reduced4SigExtra_shift[13]; // @[Bitwise.scala 109:44]
  wire [12:0] _CDom_reduced4SigExtra_T_38 = {CDom_reduced4SigExtra_right_1,CDom_reduced4SigExtra_right_2,
    CDom_reduced4SigExtra_left_1,CDom_reduced4SigExtra_right_4,CDom_reduced4SigExtra_left_2,CDom_reduced4SigExtra_left_4
    }; // @[Cat.scala 29:58]
  wire [13:0] _GEN_4 = {{1'd0}, _CDom_reduced4SigExtra_T_38}; // @[MulAddRecFN.scala 224:72]
  wire [13:0] _CDom_reduced4SigExtra_T_39 = _CDom_reduced4SigExtra_T_2 & _GEN_4; // @[MulAddRecFN.scala 224:72]
  wire  CDom_reduced4SigExtra = |_CDom_reduced4SigExtra_T_39; // @[MulAddRecFN.scala 225:73]
  wire [54:0] CDom_sig_right = CDom_mainSig[57:3]; // @[MulAddRecFN.scala 227:25]
  wire  CDom_sig_left = ((|(CDom_mainSig[2:0])) | CDom_reduced4SigExtra) | CDom_absSigSumExtra; // @[MulAddRecFN.scala 228:61]
  wire [55:0] CDom_sig = {CDom_sig_right,CDom_sig_left}; // @[Cat.scala 29:58]
  wire  notCDom_signSigSum = sigSum[109]; // @[MulAddRecFN.scala 234:36]
  wire [108:0] _notCDom_absSigSum_T_1 = ~(sigSum[108:0]); // @[MulAddRecFN.scala 237:13]
  wire [108:0] _GEN_5 = {{108'd0}, io_fromPreMul_doSubMags}; // @[MulAddRecFN.scala 238:41]
  wire [108:0] _notCDom_absSigSum_T_4 = (sigSum[108:0]) + _GEN_5; // @[MulAddRecFN.scala 238:41]
  wire [108:0] notCDom_absSigSum = notCDom_signSigSum ? _notCDom_absSigSum_T_1 : _notCDom_absSigSum_T_4; // @[MulAddRecFN.scala 236:12]
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
  wire  notCDom_reduced2AbsSigSum_reducedVec_25 = |(notCDom_absSigSum[51:50]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_26 = |(notCDom_absSigSum[53:52]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_27 = |(notCDom_absSigSum[55:54]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_28 = |(notCDom_absSigSum[57:56]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_29 = |(notCDom_absSigSum[59:58]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_30 = |(notCDom_absSigSum[61:60]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_31 = |(notCDom_absSigSum[63:62]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_32 = |(notCDom_absSigSum[65:64]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_33 = |(notCDom_absSigSum[67:66]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_34 = |(notCDom_absSigSum[69:68]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_35 = |(notCDom_absSigSum[71:70]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_36 = |(notCDom_absSigSum[73:72]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_37 = |(notCDom_absSigSum[75:74]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_38 = |(notCDom_absSigSum[77:76]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_39 = |(notCDom_absSigSum[79:78]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_40 = |(notCDom_absSigSum[81:80]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_41 = |(notCDom_absSigSum[83:82]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_42 = |(notCDom_absSigSum[85:84]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_43 = |(notCDom_absSigSum[87:86]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_44 = |(notCDom_absSigSum[89:88]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_45 = |(notCDom_absSigSum[91:90]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_46 = |(notCDom_absSigSum[93:92]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_47 = |(notCDom_absSigSum[95:94]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_48 = |(notCDom_absSigSum[97:96]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_49 = |(notCDom_absSigSum[99:98]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_50 = |(notCDom_absSigSum[101:100]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_51 = |(notCDom_absSigSum[103:102]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_52 = |(notCDom_absSigSum[105:104]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_53 = |(notCDom_absSigSum[107:106]); // @[primitives.scala 104:54]
  wire  notCDom_reduced2AbsSigSum_reducedVec_54 = |(notCDom_absSigSum[108]); // @[primitives.scala 107:57]
  wire [5:0] notCDom_reduced2AbsSigSum_left_left_left = {notCDom_reduced2AbsSigSum_reducedVec_5,
    notCDom_reduced2AbsSigSum_reducedVec_4,notCDom_reduced2AbsSigSum_reducedVec_3,notCDom_reduced2AbsSigSum_reducedVec_2
    ,notCDom_reduced2AbsSigSum_reducedVec_1,notCDom_reduced2AbsSigSum_reducedVec_0}; // @[primitives.scala 108:20]
  wire [12:0] notCDom_reduced2AbsSigSum_left_left = {notCDom_reduced2AbsSigSum_reducedVec_12,
    notCDom_reduced2AbsSigSum_reducedVec_11,notCDom_reduced2AbsSigSum_reducedVec_10,
    notCDom_reduced2AbsSigSum_reducedVec_9,notCDom_reduced2AbsSigSum_reducedVec_8,notCDom_reduced2AbsSigSum_reducedVec_7
    ,notCDom_reduced2AbsSigSum_reducedVec_6,notCDom_reduced2AbsSigSum_left_left_left}; // @[primitives.scala 108:20]
  wire [6:0] notCDom_reduced2AbsSigSum_left_right_left = {notCDom_reduced2AbsSigSum_reducedVec_19,
    notCDom_reduced2AbsSigSum_reducedVec_18,notCDom_reduced2AbsSigSum_reducedVec_17,
    notCDom_reduced2AbsSigSum_reducedVec_16,notCDom_reduced2AbsSigSum_reducedVec_15,
    notCDom_reduced2AbsSigSum_reducedVec_14,notCDom_reduced2AbsSigSum_reducedVec_13}; // @[primitives.scala 108:20]
  wire [26:0] notCDom_reduced2AbsSigSum_left = {notCDom_reduced2AbsSigSum_reducedVec_26,
    notCDom_reduced2AbsSigSum_reducedVec_25,notCDom_reduced2AbsSigSum_reducedVec_24,
    notCDom_reduced2AbsSigSum_reducedVec_23,notCDom_reduced2AbsSigSum_reducedVec_22,
    notCDom_reduced2AbsSigSum_reducedVec_21,notCDom_reduced2AbsSigSum_reducedVec_20,
    notCDom_reduced2AbsSigSum_left_right_left,notCDom_reduced2AbsSigSum_left_left}; // @[primitives.scala 108:20]
  wire [6:0] notCDom_reduced2AbsSigSum_right_left_left = {notCDom_reduced2AbsSigSum_reducedVec_33,
    notCDom_reduced2AbsSigSum_reducedVec_32,notCDom_reduced2AbsSigSum_reducedVec_31,
    notCDom_reduced2AbsSigSum_reducedVec_30,notCDom_reduced2AbsSigSum_reducedVec_29,
    notCDom_reduced2AbsSigSum_reducedVec_28,notCDom_reduced2AbsSigSum_reducedVec_27}; // @[primitives.scala 108:20]
  wire [13:0] notCDom_reduced2AbsSigSum_right_left = {notCDom_reduced2AbsSigSum_reducedVec_40,
    notCDom_reduced2AbsSigSum_reducedVec_39,notCDom_reduced2AbsSigSum_reducedVec_38,
    notCDom_reduced2AbsSigSum_reducedVec_37,notCDom_reduced2AbsSigSum_reducedVec_36,
    notCDom_reduced2AbsSigSum_reducedVec_35,notCDom_reduced2AbsSigSum_reducedVec_34,
    notCDom_reduced2AbsSigSum_right_left_left}; // @[primitives.scala 108:20]
  wire [6:0] notCDom_reduced2AbsSigSum_right_right_left = {notCDom_reduced2AbsSigSum_reducedVec_47,
    notCDom_reduced2AbsSigSum_reducedVec_46,notCDom_reduced2AbsSigSum_reducedVec_45,
    notCDom_reduced2AbsSigSum_reducedVec_44,notCDom_reduced2AbsSigSum_reducedVec_43,
    notCDom_reduced2AbsSigSum_reducedVec_42,notCDom_reduced2AbsSigSum_reducedVec_41}; // @[primitives.scala 108:20]
  wire [54:0] notCDom_reduced2AbsSigSum = {notCDom_reduced2AbsSigSum_reducedVec_54,
    notCDom_reduced2AbsSigSum_reducedVec_53,notCDom_reduced2AbsSigSum_reducedVec_52,
    notCDom_reduced2AbsSigSum_reducedVec_51,notCDom_reduced2AbsSigSum_reducedVec_50,
    notCDom_reduced2AbsSigSum_reducedVec_49,notCDom_reduced2AbsSigSum_reducedVec_48,
    notCDom_reduced2AbsSigSum_right_right_left,notCDom_reduced2AbsSigSum_right_left,notCDom_reduced2AbsSigSum_left}; // @[primitives.scala 108:20]
  wire [5:0] _notCDom_normDistReduced2_T_55 = notCDom_reduced2AbsSigSum[1] ? 6'h35 : 6'h36; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_56 = notCDom_reduced2AbsSigSum[2] ? 6'h34 : _notCDom_normDistReduced2_T_55; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_57 = notCDom_reduced2AbsSigSum[3] ? 6'h33 : _notCDom_normDistReduced2_T_56; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_58 = notCDom_reduced2AbsSigSum[4] ? 6'h32 : _notCDom_normDistReduced2_T_57; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_59 = notCDom_reduced2AbsSigSum[5] ? 6'h31 : _notCDom_normDistReduced2_T_58; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_60 = notCDom_reduced2AbsSigSum[6] ? 6'h30 : _notCDom_normDistReduced2_T_59; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_61 = notCDom_reduced2AbsSigSum[7] ? 6'h2f : _notCDom_normDistReduced2_T_60; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_62 = notCDom_reduced2AbsSigSum[8] ? 6'h2e : _notCDom_normDistReduced2_T_61; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_63 = notCDom_reduced2AbsSigSum[9] ? 6'h2d : _notCDom_normDistReduced2_T_62; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_64 = notCDom_reduced2AbsSigSum[10] ? 6'h2c : _notCDom_normDistReduced2_T_63; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_65 = notCDom_reduced2AbsSigSum[11] ? 6'h2b : _notCDom_normDistReduced2_T_64; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_66 = notCDom_reduced2AbsSigSum[12] ? 6'h2a : _notCDom_normDistReduced2_T_65; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_67 = notCDom_reduced2AbsSigSum[13] ? 6'h29 : _notCDom_normDistReduced2_T_66; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_68 = notCDom_reduced2AbsSigSum[14] ? 6'h28 : _notCDom_normDistReduced2_T_67; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_69 = notCDom_reduced2AbsSigSum[15] ? 6'h27 : _notCDom_normDistReduced2_T_68; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_70 = notCDom_reduced2AbsSigSum[16] ? 6'h26 : _notCDom_normDistReduced2_T_69; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_71 = notCDom_reduced2AbsSigSum[17] ? 6'h25 : _notCDom_normDistReduced2_T_70; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_72 = notCDom_reduced2AbsSigSum[18] ? 6'h24 : _notCDom_normDistReduced2_T_71; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_73 = notCDom_reduced2AbsSigSum[19] ? 6'h23 : _notCDom_normDistReduced2_T_72; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_74 = notCDom_reduced2AbsSigSum[20] ? 6'h22 : _notCDom_normDistReduced2_T_73; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_75 = notCDom_reduced2AbsSigSum[21] ? 6'h21 : _notCDom_normDistReduced2_T_74; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_76 = notCDom_reduced2AbsSigSum[22] ? 6'h20 : _notCDom_normDistReduced2_T_75; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_77 = notCDom_reduced2AbsSigSum[23] ? 6'h1f : _notCDom_normDistReduced2_T_76; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_78 = notCDom_reduced2AbsSigSum[24] ? 6'h1e : _notCDom_normDistReduced2_T_77; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_79 = notCDom_reduced2AbsSigSum[25] ? 6'h1d : _notCDom_normDistReduced2_T_78; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_80 = notCDom_reduced2AbsSigSum[26] ? 6'h1c : _notCDom_normDistReduced2_T_79; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_81 = notCDom_reduced2AbsSigSum[27] ? 6'h1b : _notCDom_normDistReduced2_T_80; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_82 = notCDom_reduced2AbsSigSum[28] ? 6'h1a : _notCDom_normDistReduced2_T_81; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_83 = notCDom_reduced2AbsSigSum[29] ? 6'h19 : _notCDom_normDistReduced2_T_82; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_84 = notCDom_reduced2AbsSigSum[30] ? 6'h18 : _notCDom_normDistReduced2_T_83; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_85 = notCDom_reduced2AbsSigSum[31] ? 6'h17 : _notCDom_normDistReduced2_T_84; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_86 = notCDom_reduced2AbsSigSum[32] ? 6'h16 : _notCDom_normDistReduced2_T_85; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_87 = notCDom_reduced2AbsSigSum[33] ? 6'h15 : _notCDom_normDistReduced2_T_86; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_88 = notCDom_reduced2AbsSigSum[34] ? 6'h14 : _notCDom_normDistReduced2_T_87; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_89 = notCDom_reduced2AbsSigSum[35] ? 6'h13 : _notCDom_normDistReduced2_T_88; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_90 = notCDom_reduced2AbsSigSum[36] ? 6'h12 : _notCDom_normDistReduced2_T_89; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_91 = notCDom_reduced2AbsSigSum[37] ? 6'h11 : _notCDom_normDistReduced2_T_90; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_92 = notCDom_reduced2AbsSigSum[38] ? 6'h10 : _notCDom_normDistReduced2_T_91; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_93 = notCDom_reduced2AbsSigSum[39] ? 6'hf : _notCDom_normDistReduced2_T_92; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_94 = notCDom_reduced2AbsSigSum[40] ? 6'he : _notCDom_normDistReduced2_T_93; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_95 = notCDom_reduced2AbsSigSum[41] ? 6'hd : _notCDom_normDistReduced2_T_94; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_96 = notCDom_reduced2AbsSigSum[42] ? 6'hc : _notCDom_normDistReduced2_T_95; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_97 = notCDom_reduced2AbsSigSum[43] ? 6'hb : _notCDom_normDistReduced2_T_96; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_98 = notCDom_reduced2AbsSigSum[44] ? 6'ha : _notCDom_normDistReduced2_T_97; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_99 = notCDom_reduced2AbsSigSum[45] ? 6'h9 : _notCDom_normDistReduced2_T_98; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_100 = notCDom_reduced2AbsSigSum[46] ? 6'h8 : _notCDom_normDistReduced2_T_99; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_101 = notCDom_reduced2AbsSigSum[47] ? 6'h7 : _notCDom_normDistReduced2_T_100; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_102 = notCDom_reduced2AbsSigSum[48] ? 6'h6 : _notCDom_normDistReduced2_T_101; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_103 = notCDom_reduced2AbsSigSum[49] ? 6'h5 : _notCDom_normDistReduced2_T_102; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_104 = notCDom_reduced2AbsSigSum[50] ? 6'h4 : _notCDom_normDistReduced2_T_103; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_105 = notCDom_reduced2AbsSigSum[51] ? 6'h3 : _notCDom_normDistReduced2_T_104; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_106 = notCDom_reduced2AbsSigSum[52] ? 6'h2 : _notCDom_normDistReduced2_T_105; // @[Mux.scala 47:69]
  wire [5:0] _notCDom_normDistReduced2_T_107 = notCDom_reduced2AbsSigSum[53] ? 6'h1 : _notCDom_normDistReduced2_T_106; // @[Mux.scala 47:69]
  wire [5:0] notCDom_normDistReduced2 = notCDom_reduced2AbsSigSum[54] ? 6'h0 : _notCDom_normDistReduced2_T_107; // @[Mux.scala 47:69]
  wire [6:0] notCDom_nearNormDist = {notCDom_normDistReduced2, 1'h0}; // @[MulAddRecFN.scala 242:56]
  wire [7:0] _notCDom_sExp_T = {1'b0,$signed(notCDom_nearNormDist)}; // @[MulAddRecFN.scala 243:69]
  wire [12:0] _GEN_6 = {{5{_notCDom_sExp_T[7]}},_notCDom_sExp_T}; // @[MulAddRecFN.scala 243:46]
  wire [12:0] notCDom_sExp = $signed(io_fromPreMul_sExpSum) - $signed(_GEN_6); // @[MulAddRecFN.scala 243:46]
  wire [235:0] _GEN_7 = {{127'd0}, notCDom_absSigSum}; // @[MulAddRecFN.scala 245:27]
  wire [235:0] _notCDom_mainSig_T = _GEN_7 << notCDom_nearNormDist; // @[MulAddRecFN.scala 245:27]
  wire [57:0] notCDom_mainSig = _notCDom_mainSig_T[109:52]; // @[MulAddRecFN.scala 245:50]
  wire  notCDom_reduced4SigExtra_reducedVec_0 = |(notCDom_reduced2AbsSigSum[1:0]); // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_1 = |(notCDom_reduced2AbsSigSum[3:2]); // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_2 = |(notCDom_reduced2AbsSigSum[5:4]); // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_3 = |(notCDom_reduced2AbsSigSum[7:6]); // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_4 = |(notCDom_reduced2AbsSigSum[9:8]); // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_5 = |(notCDom_reduced2AbsSigSum[11:10]); // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_6 = |(notCDom_reduced2AbsSigSum[13:12]); // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_7 = |(notCDom_reduced2AbsSigSum[15:14]); // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_8 = |(notCDom_reduced2AbsSigSum[17:16]); // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_9 = |(notCDom_reduced2AbsSigSum[19:18]); // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_10 = |(notCDom_reduced2AbsSigSum[21:20]); // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_11 = |(notCDom_reduced2AbsSigSum[23:22]); // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_12 = |(notCDom_reduced2AbsSigSum[25:24]); // @[primitives.scala 104:54]
  wire  notCDom_reduced4SigExtra_reducedVec_13 = |(notCDom_reduced2AbsSigSum[26]); // @[primitives.scala 107:57]
  wire [6:0] notCDom_reduced4SigExtra_left = {notCDom_reduced4SigExtra_reducedVec_6,
    notCDom_reduced4SigExtra_reducedVec_5,notCDom_reduced4SigExtra_reducedVec_4,notCDom_reduced4SigExtra_reducedVec_3,
    notCDom_reduced4SigExtra_reducedVec_2,notCDom_reduced4SigExtra_reducedVec_1,notCDom_reduced4SigExtra_reducedVec_0}; // @[primitives.scala 108:20]
  wire [13:0] _notCDom_reduced4SigExtra_T_2 = {notCDom_reduced4SigExtra_reducedVec_13,
    notCDom_reduced4SigExtra_reducedVec_12,notCDom_reduced4SigExtra_reducedVec_11,notCDom_reduced4SigExtra_reducedVec_10
    ,notCDom_reduced4SigExtra_reducedVec_9,notCDom_reduced4SigExtra_reducedVec_8,notCDom_reduced4SigExtra_reducedVec_7,
    notCDom_reduced4SigExtra_left}; // @[primitives.scala 108:20]
  wire [4:0] _notCDom_reduced4SigExtra_T_4 = ~(notCDom_normDistReduced2[5:1]); // @[primitives.scala 51:21]
  wire [32:0] notCDom_reduced4SigExtra_shift = -33'sh100000000 >>> _notCDom_reduced4SigExtra_T_4; // @[primitives.scala 77:58]
  wire [7:0] notCDom_reduced4SigExtra_res = notCDom_reduced4SigExtra_shift[8:1]; // @[Bitwise.scala 109:18]
  wire [7:0] _notCDom_reduced4SigExtra_T_9 = {{4'd0}, notCDom_reduced4SigExtra_res[7:4]}; // @[Bitwise.scala 103:31]
  wire [7:0] _notCDom_reduced4SigExtra_T_11 = {notCDom_reduced4SigExtra_res[3:0], 4'h0}; // @[Bitwise.scala 103:65]
  wire [7:0] _notCDom_reduced4SigExtra_T_13 = _notCDom_reduced4SigExtra_T_11 & 8'hf0; // @[Bitwise.scala 103:75]
  wire [7:0] _notCDom_reduced4SigExtra_T_14 = _notCDom_reduced4SigExtra_T_9 | _notCDom_reduced4SigExtra_T_13; // @[Bitwise.scala 103:39]
  wire [7:0] _GEN_8 = {{2'd0}, _notCDom_reduced4SigExtra_T_14[7:2]}; // @[Bitwise.scala 103:31]
  wire [7:0] _notCDom_reduced4SigExtra_T_19 = _GEN_8 & 8'h33; // @[Bitwise.scala 103:31]
  wire [7:0] _notCDom_reduced4SigExtra_T_21 = {_notCDom_reduced4SigExtra_T_14[5:0], 2'h0}; // @[Bitwise.scala 103:65]
  wire [7:0] _notCDom_reduced4SigExtra_T_23 = _notCDom_reduced4SigExtra_T_21 & 8'hcc; // @[Bitwise.scala 103:75]
  wire [7:0] _notCDom_reduced4SigExtra_T_24 = _notCDom_reduced4SigExtra_T_19 | _notCDom_reduced4SigExtra_T_23; // @[Bitwise.scala 103:39]
  wire [7:0] _GEN_9 = {{1'd0}, _notCDom_reduced4SigExtra_T_24[7:1]}; // @[Bitwise.scala 103:31]
  wire [7:0] _notCDom_reduced4SigExtra_T_29 = _GEN_9 & 8'h55; // @[Bitwise.scala 103:31]
  wire [7:0] _notCDom_reduced4SigExtra_T_31 = {_notCDom_reduced4SigExtra_T_24[6:0], 1'h0}; // @[Bitwise.scala 103:65]
  wire [7:0] _notCDom_reduced4SigExtra_T_33 = _notCDom_reduced4SigExtra_T_31 & 8'haa; // @[Bitwise.scala 103:75]
  wire [7:0] notCDom_reduced4SigExtra_right_1 = _notCDom_reduced4SigExtra_T_29 | _notCDom_reduced4SigExtra_T_33; // @[Bitwise.scala 103:39]
  wire  notCDom_reduced4SigExtra_right_2 = notCDom_reduced4SigExtra_shift[9]; // @[Bitwise.scala 109:18]
  wire  notCDom_reduced4SigExtra_left_1 = notCDom_reduced4SigExtra_shift[10]; // @[Bitwise.scala 109:44]
  wire  notCDom_reduced4SigExtra_right_4 = notCDom_reduced4SigExtra_shift[11]; // @[Bitwise.scala 109:18]
  wire  notCDom_reduced4SigExtra_left_2 = notCDom_reduced4SigExtra_shift[12]; // @[Bitwise.scala 109:44]
  wire  notCDom_reduced4SigExtra_left_4 = notCDom_reduced4SigExtra_shift[13]; // @[Bitwise.scala 109:44]
  wire [12:0] _notCDom_reduced4SigExtra_T_38 = {notCDom_reduced4SigExtra_right_1,notCDom_reduced4SigExtra_right_2,
    notCDom_reduced4SigExtra_left_1,notCDom_reduced4SigExtra_right_4,notCDom_reduced4SigExtra_left_2,
    notCDom_reduced4SigExtra_left_4}; // @[Cat.scala 29:58]
  wire [13:0] _GEN_10 = {{1'd0}, _notCDom_reduced4SigExtra_T_38}; // @[MulAddRecFN.scala 249:78]
  wire [13:0] _notCDom_reduced4SigExtra_T_39 = _notCDom_reduced4SigExtra_T_2 & _GEN_10; // @[MulAddRecFN.scala 249:78]
  wire  notCDom_reduced4SigExtra = |_notCDom_reduced4SigExtra_T_39; // @[MulAddRecFN.scala 251:11]
  wire [54:0] notCDom_sig_right = notCDom_mainSig[57:3]; // @[MulAddRecFN.scala 253:28]
  wire  notCDom_sig_left = (|(notCDom_mainSig[2:0])) | notCDom_reduced4SigExtra; // @[MulAddRecFN.scala 254:39]
  wire [55:0] notCDom_sig = {notCDom_sig_right,notCDom_sig_left}; // @[Cat.scala 29:58]
  wire  notCDom_completeCancellation = (notCDom_sig[55:54]) == 2'h0; // @[MulAddRecFN.scala 257:50]
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
