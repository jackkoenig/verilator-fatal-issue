module FPToInt(
  input         clock,
  input         io_in_valid,
  input         io_in_bits_ren2,
  input         io_in_bits_singleIn,
  input         io_in_bits_singleOut,
  input         io_in_bits_wflags,
  input  [2:0]  io_in_bits_rm,
  input  [1:0]  io_in_bits_typ,
  input  [64:0] io_in_bits_in1,
  input  [64:0] io_in_bits_in2,
  output [2:0]  io_out_bits_in_rm,
  output [64:0] io_out_bits_in_in1,
  output [64:0] io_out_bits_in_in2,
  output        io_out_bits_lt,
  output [63:0] io_out_bits_store,
  output [63:0] io_out_bits_toint,
  output [4:0]  io_out_bits_exc
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [95:0] _RAND_5;
  reg [95:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire [64:0] dcmp_io_a; // @[FPU.scala 418:20]
  wire [64:0] dcmp_io_b; // @[FPU.scala 418:20]
  wire  dcmp_io_signaling; // @[FPU.scala 418:20]
  wire  dcmp_io_lt; // @[FPU.scala 418:20]
  wire  dcmp_io_eq; // @[FPU.scala 418:20]
  wire [4:0] dcmp_io_exceptionFlags; // @[FPU.scala 418:20]
  wire [64:0] conv_io_in; // @[FPU.scala 445:24]
  wire [2:0] conv_io_roundingMode; // @[FPU.scala 445:24]
  wire  conv_io_signedOut; // @[FPU.scala 445:24]
  wire [63:0] conv_io_out; // @[FPU.scala 445:24]
  wire [2:0] conv_io_intExceptionFlags; // @[FPU.scala 445:24]
  wire [64:0] narrow_io_in; // @[FPU.scala 455:30]
  wire [2:0] narrow_io_roundingMode; // @[FPU.scala 455:30]
  wire  narrow_io_signedOut; // @[FPU.scala 455:30]
  wire [2:0] narrow_io_intExceptionFlags; // @[FPU.scala 455:30]
  reg  in_ren2; // @[Reg.scala 15:16]
  reg  in_singleOut; // @[Reg.scala 15:16]
  reg  in_wflags; // @[Reg.scala 15:16]
  reg [2:0] in_rm; // @[Reg.scala 15:16]
  reg [1:0] in_typ; // @[Reg.scala 15:16]
  reg [64:0] in_in1; // @[Reg.scala 15:16]
  reg [64:0] in_in2; // @[Reg.scala 15:16]
  wire  tag = ~in_singleOut; // @[FPU.scala 423:13]
  wire [11:0] store_unrecoded_rawIn_exp = in_in1[63:52]; // @[rawFloatFromRecFN.scala 50:21]
  wire  store_unrecoded_rawIn_isZero = (store_unrecoded_rawIn_exp[11:9]) == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  store_unrecoded_rawIn_isSpecial = (store_unrecoded_rawIn_exp[11:10]) == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  store_unrecoded_rawIn__isNaN = store_unrecoded_rawIn_isSpecial & (store_unrecoded_rawIn_exp[9]); // @[rawFloatFromRecFN.scala 55:33]
  wire  store_unrecoded_rawIn__isInf = store_unrecoded_rawIn_isSpecial & (~(store_unrecoded_rawIn_exp[9])); // @[rawFloatFromRecFN.scala 56:33]
  wire  store_unrecoded_rawIn__sign = in_in1[64]; // @[rawFloatFromRecFN.scala 58:25]
  wire [12:0] store_unrecoded_rawIn__sExp = {1'b0,$signed(store_unrecoded_rawIn_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  wire  store_unrecoded_rawIn_store_unrecoded_rawIn_sig_right_left = ~store_unrecoded_rawIn_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [51:0] store_unrecoded_rawIn_store_unrecoded_rawIn_sig_left = in_in1[51:0]; // @[rawFloatFromRecFN.scala 60:51]
  wire [53:0] store_unrecoded_rawIn__sig = {1'h0,store_unrecoded_rawIn_store_unrecoded_rawIn_sig_right_left,
    store_unrecoded_rawIn_store_unrecoded_rawIn_sig_left}; // @[Cat.scala 29:58]
  wire  store_unrecoded_isSubnormal = $signed(store_unrecoded_rawIn__sExp) < 13'sh402; // @[fNFromRecFN.scala 50:39]
  wire [5:0] store_unrecoded_denormShiftDist = 6'h1 - (store_unrecoded_rawIn__sExp[5:0]); // @[fNFromRecFN.scala 51:39]
  wire [52:0] _store_unrecoded_denormFract_T_1 = (store_unrecoded_rawIn__sig[53:1]) >> store_unrecoded_denormShiftDist; // @[fNFromRecFN.scala 52:42]
  wire [51:0] store_unrecoded_denormFract = _store_unrecoded_denormFract_T_1[51:0]; // @[fNFromRecFN.scala 52:60]
  wire [10:0] _store_unrecoded_expOut_T_2 = (store_unrecoded_rawIn__sExp[10:0]) - 11'h401; // @[fNFromRecFN.scala 57:45]
  wire [10:0] _store_unrecoded_expOut_T_3 = store_unrecoded_isSubnormal ? 11'h0 : _store_unrecoded_expOut_T_2; // @[fNFromRecFN.scala 55:16]
  wire  _store_unrecoded_expOut_T_4 = store_unrecoded_rawIn__isNaN | store_unrecoded_rawIn__isInf; // @[fNFromRecFN.scala 59:44]
  wire [10:0] _store_unrecoded_expOut_T_6 = _store_unrecoded_expOut_T_4 ? 11'h7ff : 11'h0; // @[Bitwise.scala 72:12]
  wire [10:0] store_unrecoded_right_left = _store_unrecoded_expOut_T_3 | _store_unrecoded_expOut_T_6; // @[fNFromRecFN.scala 59:15]
  wire [51:0] _store_unrecoded_fractOut_T_1 = store_unrecoded_rawIn__isInf ? 52'h0 : store_unrecoded_rawIn__sig[51:0]; // @[fNFromRecFN.scala 63:20]
  wire [51:0] store_unrecoded_left = store_unrecoded_isSubnormal ? store_unrecoded_denormFract :
    _store_unrecoded_fractOut_T_1; // @[fNFromRecFN.scala 61:16]
  wire [63:0] store_unrecoded = {store_unrecoded_rawIn__sign,store_unrecoded_right_left,store_unrecoded_left}; // @[Cat.scala 29:58]
  wire  store_prevRecoded_right_right = in_in1[31]; // @[FPU.scala 390:10]
  wire  store_prevRecoded_right_left = in_in1[52]; // @[FPU.scala 391:10]
  wire [30:0] store_prevRecoded_left = in_in1[30:0]; // @[FPU.scala 392:10]
  wire [32:0] store_prevRecoded = {store_prevRecoded_right_right,store_prevRecoded_right_left,store_prevRecoded_left}; // @[Cat.scala 29:58]
  wire [8:0] store_prevUnrecoded_rawIn_exp = store_prevRecoded[31:23]; // @[rawFloatFromRecFN.scala 50:21]
  wire  store_prevUnrecoded_rawIn_isZero = (store_prevUnrecoded_rawIn_exp[8:6]) == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  store_prevUnrecoded_rawIn_isSpecial = (store_prevUnrecoded_rawIn_exp[8:7]) == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  store_prevUnrecoded_rawIn__isNaN = store_prevUnrecoded_rawIn_isSpecial & (store_prevUnrecoded_rawIn_exp[6]); // @[rawFloatFromRecFN.scala 55:33]
  wire  store_prevUnrecoded_rawIn__isInf = store_prevUnrecoded_rawIn_isSpecial & (~(store_prevUnrecoded_rawIn_exp[6])); // @[rawFloatFromRecFN.scala 56:33]
  wire  store_prevUnrecoded_rawIn__sign = store_prevRecoded[32]; // @[rawFloatFromRecFN.scala 58:25]
  wire [9:0] store_prevUnrecoded_rawIn__sExp = {1'b0,$signed(store_prevUnrecoded_rawIn_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  wire  store_prevUnrecoded_rawIn_store_prevUnrecoded_rawIn_sig_right_left = ~store_prevUnrecoded_rawIn_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [22:0] store_prevUnrecoded_rawIn_store_prevUnrecoded_rawIn_sig_left = store_prevRecoded[22:0]; // @[rawFloatFromRecFN.scala 60:51]
  wire [24:0] store_prevUnrecoded_rawIn__sig = {1'h0,store_prevUnrecoded_rawIn_store_prevUnrecoded_rawIn_sig_right_left,
    store_prevUnrecoded_rawIn_store_prevUnrecoded_rawIn_sig_left}; // @[Cat.scala 29:58]
  wire  store_prevUnrecoded_isSubnormal = $signed(store_prevUnrecoded_rawIn__sExp) < 10'sh82; // @[fNFromRecFN.scala 50:39]
  wire [4:0] store_prevUnrecoded_denormShiftDist = 5'h1 - (store_prevUnrecoded_rawIn__sExp[4:0]); // @[fNFromRecFN.scala 51:39]
  wire [23:0] _store_prevUnrecoded_denormFract_T_1 = (store_prevUnrecoded_rawIn__sig[24:1]) >>
    store_prevUnrecoded_denormShiftDist; // @[fNFromRecFN.scala 52:42]
  wire [22:0] store_prevUnrecoded_denormFract = _store_prevUnrecoded_denormFract_T_1[22:0]; // @[fNFromRecFN.scala 52:60]
  wire [7:0] _store_prevUnrecoded_expOut_T_2 = (store_prevUnrecoded_rawIn__sExp[7:0]) - 8'h81; // @[fNFromRecFN.scala 57:45]
  wire [7:0] _store_prevUnrecoded_expOut_T_3 = store_prevUnrecoded_isSubnormal ? 8'h0 : _store_prevUnrecoded_expOut_T_2; // @[fNFromRecFN.scala 55:16]
  wire  _store_prevUnrecoded_expOut_T_4 = store_prevUnrecoded_rawIn__isNaN | store_prevUnrecoded_rawIn__isInf; // @[fNFromRecFN.scala 59:44]
  wire [7:0] _store_prevUnrecoded_expOut_T_6 = _store_prevUnrecoded_expOut_T_4 ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] store_prevUnrecoded_right_left = _store_prevUnrecoded_expOut_T_3 | _store_prevUnrecoded_expOut_T_6; // @[fNFromRecFN.scala 59:15]
  wire [22:0] _store_prevUnrecoded_fractOut_T_1 = store_prevUnrecoded_rawIn__isInf ? 23'h0 :
    store_prevUnrecoded_rawIn__sig[22:0]; // @[fNFromRecFN.scala 63:20]
  wire [22:0] store_prevUnrecoded_left = store_prevUnrecoded_isSubnormal ? store_prevUnrecoded_denormFract :
    _store_prevUnrecoded_fractOut_T_1; // @[fNFromRecFN.scala 61:16]
  wire [31:0] store_prevUnrecoded = {store_prevUnrecoded_rawIn__sign,store_prevUnrecoded_right_left,
    store_prevUnrecoded_left}; // @[Cat.scala 29:58]
  wire [31:0] store_right = store_unrecoded[63:32]; // @[FPU.scala 394:21]
  wire  _store_T_1 = &(in_in1[63:61]); // @[FPU.scala 203:56]
  wire [31:0] store_left = _store_T_1 ? store_prevUnrecoded : store_unrecoded[31:0]; // @[FPU.scala 394:44]
  wire [63:0] store = {store_right,store_left}; // @[Cat.scala 29:58]
  wire [31:0] io_out_bits_store_right = store[31:0]; // @[FPU.scala 427:88]
  wire [63:0] _io_out_bits_store_T = {io_out_bits_store_right,io_out_bits_store_right}; // @[Cat.scala 29:58]
  wire  _T_1 = ~in_ren2; // @[FPU.scala 442:11]
  wire  cvtType = in_typ[1]; // @[package.scala 143:13]
  wire  _T_2 = ~cvtType; // @[FPU.scala 454:23]
  wire  io_out_bits_exc_right_right_1 = (conv_io_intExceptionFlags[2]) | (narrow_io_intExceptionFlags[1]); // @[FPU.scala 462:54]
  wire [31:0] toint_right = conv_io_out[63:32]; // @[FPU.scala 463:53]
  wire  excSign = store_unrecoded_rawIn__sign & (~_store_T_1); // @[FPU.scala 460:59]
  wire  excOut_right = conv_io_signedOut == excSign; // @[FPU.scala 461:46]
  wire  _excOut_T = ~excSign; // @[FPU.scala 461:69]
  wire [30:0] excOut_left = _excOut_T ? 31'h7fffffff : 31'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _toint_T_10 = {toint_right,excOut_right,excOut_left}; // @[Cat.scala 29:58]
  wire [63:0] _GEN_24 = io_out_bits_exc_right_right_1 ? _toint_T_10 : conv_io_out; // @[FPU.scala 463:26 FPU.scala 463:34 FPU.scala 449:13]
  wire [63:0] _GEN_25 = _T_2 ? _GEN_24 : conv_io_out; // @[FPU.scala 454:30 FPU.scala 449:13]
  wire [2:0] _toint_T_3 = ~in_rm; // @[FPU.scala 438:15]
  wire [1:0] _toint_T_4 = {dcmp_io_lt,dcmp_io_eq}; // @[Cat.scala 29:58]
  wire [2:0] _GEN_33 = {{1'd0}, _toint_T_4}; // @[FPU.scala 438:22]
  wire [2:0] _toint_T_5 = _toint_T_3 & _GEN_33; // @[FPU.scala 438:22]
  wire [63:0] _toint_T_8 = {store[63:32], 32'h0}; // @[FPU.scala 438:77]
  wire [63:0] _GEN_34 = {{63'd0}, |_toint_T_5}; // @[FPU.scala 438:57]
  wire [63:0] _toint_T_9 = _GEN_34 | _toint_T_8; // @[FPU.scala 438:57]
  wire [63:0] _GEN_28 = _T_1 ? _GEN_25 : _toint_T_9; // @[FPU.scala 442:21 FPU.scala 438:11]
  wire  classify_out_right_right_right_right_1 = _store_T_1 & (in_in1[51]); // @[FPU.scala 219:24]
  wire  classify_out_right_right_right_left_1 = _store_T_1 & (~(in_in1[51])); // @[FPU.scala 218:24]
  wire [1:0] classify_out_codeHi_1 = in_in1[63:62]; // @[FPU.scala 209:22]
  wire  classify_out_isSpecial_1 = classify_out_codeHi_1 == 2'h3; // @[FPU.scala 210:28]
  wire  classify_out_isInf_1 = classify_out_isSpecial_1 & (~(in_in1[61])); // @[FPU.scala 216:27]
  wire  _classify_out_T_6 = ~store_unrecoded_rawIn__sign; // @[FPU.scala 221:34]
  wire  classify_out_right_right_left_1 = classify_out_isInf_1 & (~store_unrecoded_rawIn__sign); // @[FPU.scala 221:31]
  wire  _classify_out_isNormal_T_4 = classify_out_codeHi_1 == 2'h1; // @[FPU.scala 214:27]
  wire  classify_out_isHighSubnormalIn_1 = (in_in1[61:52]) < 10'h2; // @[FPU.scala 212:55]
  wire  classify_out_isNormal_1 = ((classify_out_codeHi_1 == 2'h1) & (~classify_out_isHighSubnormalIn_1)) | (
    classify_out_codeHi_1 == 2'h2); // @[FPU.scala 214:61]
  wire  classify_out_right_left_right_1 = classify_out_isNormal_1 & (~store_unrecoded_rawIn__sign); // @[FPU.scala 221:50]
  wire  classify_out_isSubnormal_1 = ((in_in1[63:61]) == 3'h1) | (_classify_out_isNormal_T_4 &
    classify_out_isHighSubnormalIn_1); // @[FPU.scala 213:40]
  wire  classify_out_right_left_left_1 = classify_out_isSubnormal_1 & _classify_out_T_6; // @[FPU.scala 222:21]
  wire  classify_out_isZero_1 = (in_in1[63:61]) == 3'h0; // @[FPU.scala 215:23]
  wire  classify_out_left_right_right_right_1 = classify_out_isZero_1 & _classify_out_T_6; // @[FPU.scala 222:38]
  wire  classify_out_left_right_right_left_1 = classify_out_isZero_1 & store_unrecoded_rawIn__sign; // @[FPU.scala 222:55]
  wire  classify_out_left_right_left_1 = classify_out_isSubnormal_1 & store_unrecoded_rawIn__sign; // @[FPU.scala 223:21]
  wire  classify_out_left_left_right_1 = classify_out_isNormal_1 & store_unrecoded_rawIn__sign; // @[FPU.scala 223:39]
  wire  classify_out_left_left_left_1 = classify_out_isInf_1 & store_unrecoded_rawIn__sign; // @[FPU.scala 223:54]
  wire [9:0] _classify_out_T_10 = {classify_out_right_right_right_right_1,classify_out_right_right_right_left_1,
    classify_out_right_right_left_1,classify_out_right_left_right_1,classify_out_right_left_left_1,
    classify_out_left_right_right_right_1,classify_out_left_right_right_left_1,classify_out_left_right_left_1,
    classify_out_left_left_right_1,classify_out_left_left_left_1}; // @[Cat.scala 29:58]
  wire  _classify_out_expOut_T_2 = store_unrecoded_rawIn_isZero | ((store_unrecoded_rawIn_exp[11:9]) >= 3'h6); // @[FPU.scala 235:25]
  wire [11:0] _classify_out_expOut_commonCase_T_1 = store_unrecoded_rawIn_exp + 12'h100; // @[FPU.scala 234:31]
  wire [11:0] classify_out_expOut_commonCase = _classify_out_expOut_commonCase_T_1 - 12'h800; // @[FPU.scala 234:48]
  wire [5:0] classify_out_expOut_left = classify_out_expOut_commonCase[5:0]; // @[FPU.scala 235:65]
  wire [8:0] _classify_out_expOut_T_3 = {store_unrecoded_rawIn_exp[11:9],classify_out_expOut_left}; // @[Cat.scala 29:58]
  wire [8:0] classify_out_right_left = _classify_out_expOut_T_2 ? _classify_out_expOut_T_3 :
    classify_out_expOut_commonCase[8:0]; // @[FPU.scala 235:10]
  wire [75:0] _classify_out_fractOut_T = {store_unrecoded_rawIn_store_unrecoded_rawIn_sig_left, 24'h0}; // @[FPU.scala 231:28]
  wire [22:0] classify_out_left = _classify_out_fractOut_T[75:53]; // @[FPU.scala 231:38]
  wire [32:0] _classify_out_T = {store_unrecoded_rawIn__sign,classify_out_right_left,classify_out_left}; // @[Cat.scala 29:58]
  wire [2:0] classify_out_code = _classify_out_T[31:29]; // @[FPU.scala 208:17]
  wire  classify_out_isNaN = &classify_out_code; // @[FPU.scala 217:22]
  wire  classify_out_right_right_right_right = classify_out_isNaN & (_classify_out_T[22]); // @[FPU.scala 219:24]
  wire  classify_out_right_right_right_left = classify_out_isNaN & (~(_classify_out_T[22])); // @[FPU.scala 218:24]
  wire [1:0] classify_out_codeHi = classify_out_code[2:1]; // @[FPU.scala 209:22]
  wire  classify_out_isSpecial = classify_out_codeHi == 2'h3; // @[FPU.scala 210:28]
  wire  classify_out_isInf = classify_out_isSpecial & (~(classify_out_code[0])); // @[FPU.scala 216:27]
  wire  classify_out_sign = _classify_out_T[32]; // @[FPU.scala 207:17]
  wire  _classify_out_T_1 = ~classify_out_sign; // @[FPU.scala 221:34]
  wire  classify_out_right_right_left = classify_out_isInf & (~classify_out_sign); // @[FPU.scala 221:31]
  wire  _classify_out_isNormal_T = classify_out_codeHi == 2'h1; // @[FPU.scala 214:27]
  wire  classify_out_isHighSubnormalIn = (_classify_out_T[29:23]) < 7'h2; // @[FPU.scala 212:55]
  wire  classify_out_isNormal = ((classify_out_codeHi == 2'h1) & (~classify_out_isHighSubnormalIn)) | (
    classify_out_codeHi == 2'h2); // @[FPU.scala 214:61]
  wire  classify_out_right_left_right = classify_out_isNormal & (~classify_out_sign); // @[FPU.scala 221:50]
  wire  classify_out_isSubnormal = (classify_out_code == 3'h1) | (_classify_out_isNormal_T &
    classify_out_isHighSubnormalIn); // @[FPU.scala 213:40]
  wire  classify_out_right_left_left = classify_out_isSubnormal & _classify_out_T_1; // @[FPU.scala 222:21]
  wire  classify_out_isZero = classify_out_code == 3'h0; // @[FPU.scala 215:23]
  wire  classify_out_left_right_right_right = classify_out_isZero & _classify_out_T_1; // @[FPU.scala 222:38]
  wire  classify_out_left_right_right_left = classify_out_isZero & classify_out_sign; // @[FPU.scala 222:55]
  wire  classify_out_left_right_left = classify_out_isSubnormal & classify_out_sign; // @[FPU.scala 223:21]
  wire  classify_out_left_left_right = classify_out_isNormal & classify_out_sign; // @[FPU.scala 223:39]
  wire  classify_out_left_left_left = classify_out_isInf & classify_out_sign; // @[FPU.scala 223:54]
  wire [9:0] _classify_out_T_5 = {classify_out_right_right_right_right,classify_out_right_right_right_left,
    classify_out_right_right_left,classify_out_right_left_right,classify_out_right_left_left,
    classify_out_left_right_right_right,classify_out_left_right_right_left,classify_out_left_right_left,
    classify_out_left_left_right,classify_out_left_left_left}; // @[Cat.scala 29:58]
  wire [9:0] classify_out = tag ? _classify_out_T_10 : _classify_out_T_5; // @[package.scala 32:76]
  wire [63:0] _GEN_35 = {{54'd0}, classify_out}; // @[FPU.scala 433:27]
  wire [63:0] _toint_T_2 = _GEN_35 | _toint_T_8; // @[FPU.scala 433:27]
  wire [63:0] _GEN_22 = in_rm[0] ? _toint_T_2 : store; // @[FPU.scala 431:19 FPU.scala 433:11]
  wire [63:0] toint = in_wflags ? _GEN_28 : _GEN_22; // @[FPU.scala 437:20]
  wire [31:0] io_out_bits_toint_left = toint[31:0]; // @[FPU.scala 428:59]
  wire [31:0] io_out_bits_toint_right = io_out_bits_toint_left[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [63:0] _io_out_bits_toint_T_2 = {io_out_bits_toint_right,io_out_bits_toint_left}; // @[Cat.scala 29:58]
  wire  _GEN_27 = _T_1 & cvtType; // @[FPU.scala 442:21 FPU.scala 444:15 FPU.scala 440:13]
  wire  _GEN_23 = in_rm[0] ? 1'h0 : tag; // @[FPU.scala 431:19 FPU.scala 434:13]
  wire  intType = in_wflags ? _GEN_27 : _GEN_23; // @[FPU.scala 437:20]
  wire  io_out_bits_exc_right_right = |(conv_io_intExceptionFlags[2:1]); // @[FPU.scala 450:62]
  wire  io_out_bits_exc_left = conv_io_intExceptionFlags[0]; // @[FPU.scala 450:104]
  wire [4:0] _io_out_bits_exc_T_1 = {io_out_bits_exc_right_right,3'h0,io_out_bits_exc_left}; // @[Cat.scala 29:58]
  wire  io_out_bits_exc_left_1 = (~io_out_bits_exc_right_right_1) & io_out_bits_exc_left; // @[FPU.scala 464:64]
  wire [4:0] _io_out_bits_exc_T_4 = {io_out_bits_exc_right_right_1,3'h0,io_out_bits_exc_left_1}; // @[Cat.scala 29:58]
  wire [4:0] _GEN_26 = _T_2 ? _io_out_bits_exc_T_4 : _io_out_bits_exc_T_1; // @[FPU.scala 454:30 FPU.scala 464:27 FPU.scala 450:23]
  wire [4:0] _GEN_29 = _T_1 ? _GEN_26 : dcmp_io_exceptionFlags; // @[FPU.scala 442:21 FPU.scala 439:21]
  CompareRecFN dcmp ( // @[FPU.scala 418:20]
    .io_a(dcmp_io_a),
    .io_b(dcmp_io_b),
    .io_signaling(dcmp_io_signaling),
    .io_lt(dcmp_io_lt),
    .io_eq(dcmp_io_eq),
    .io_exceptionFlags(dcmp_io_exceptionFlags)
  );
  RecFNToIN conv ( // @[FPU.scala 445:24]
    .io_in(conv_io_in),
    .io_roundingMode(conv_io_roundingMode),
    .io_signedOut(conv_io_signedOut),
    .io_out(conv_io_out),
    .io_intExceptionFlags(conv_io_intExceptionFlags)
  );
  RecFNToIN_1 narrow ( // @[FPU.scala 455:30]
    .io_in(narrow_io_in),
    .io_roundingMode(narrow_io_roundingMode),
    .io_signedOut(narrow_io_signedOut),
    .io_intExceptionFlags(narrow_io_intExceptionFlags)
  );
  assign io_out_bits_in_rm = in_rm; // @[FPU.scala 472:18]
  assign io_out_bits_in_in1 = in_in1; // @[FPU.scala 472:18]
  assign io_out_bits_in_in2 = in_in2; // @[FPU.scala 472:18]
  assign io_out_bits_lt = dcmp_io_lt | (($signed(dcmp_io_a) < 65'sh0) & ($signed(dcmp_io_b) >= 65'sh0)); // @[FPU.scala 471:32]
  assign io_out_bits_store = tag ? store : _io_out_bits_store_T; // @[package.scala 32:76]
  assign io_out_bits_toint = intType ? toint : _io_out_bits_toint_T_2; // @[package.scala 32:76]
  assign io_out_bits_exc = in_wflags ? _GEN_29 : 5'h0; // @[FPU.scala 437:20 FPU.scala 429:19]
  assign dcmp_io_a = in_in1; // @[FPU.scala 419:13]
  assign dcmp_io_b = in_in2; // @[FPU.scala 420:13]
  assign dcmp_io_signaling = ~(in_rm[1]); // @[FPU.scala 421:24]
  assign conv_io_in = in_in1; // @[FPU.scala 446:18]
  assign conv_io_roundingMode = in_rm; // @[FPU.scala 447:28]
  assign conv_io_signedOut = ~(in_typ[0]); // @[FPU.scala 448:28]
  assign narrow_io_in = in_in1; // @[FPU.scala 456:24]
  assign narrow_io_roundingMode = in_rm; // @[FPU.scala 457:34]
  assign narrow_io_signedOut = ~(in_typ[0]); // @[FPU.scala 458:34]
  always @(posedge clock) begin
    if (io_in_valid) begin // @[Reg.scala 16:19]
      in_ren2 <= io_in_bits_ren2; // @[Reg.scala 16:23]
    end
    if (io_in_valid) begin // @[Reg.scala 16:19]
      in_singleOut <= io_in_bits_singleOut; // @[Reg.scala 16:23]
    end
    if (io_in_valid) begin // @[Reg.scala 16:19]
      in_wflags <= io_in_bits_wflags; // @[Reg.scala 16:23]
    end
    if (io_in_valid) begin // @[Reg.scala 16:19]
      in_rm <= io_in_bits_rm; // @[Reg.scala 16:23]
    end
    if (io_in_valid) begin // @[Reg.scala 16:19]
      in_typ <= io_in_bits_typ; // @[Reg.scala 16:23]
    end
    if (io_in_valid) begin // @[Reg.scala 16:19]
      in_in1 <= io_in_bits_in1; // @[Reg.scala 16:23]
    end
    if (io_in_valid) begin // @[Reg.scala 16:19]
      in_in2 <= io_in_bits_in2; // @[Reg.scala 16:23]
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
  in_ren2 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  in_singleOut = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  in_wflags = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  in_rm = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  in_typ = _RAND_4[1:0];
  _RAND_5 = {3{`RANDOM}};
  in_in1 = _RAND_5[64:0];
  _RAND_6 = {3{`RANDOM}};
  in_in2 = _RAND_6[64:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
