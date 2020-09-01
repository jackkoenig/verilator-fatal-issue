module DivSqrtRawFN_small(
  input         clock,
  input         reset,
  output        io_inReady,
  input         io_inValid,
  input         io_sqrtOp,
  input         io_a_isNaN,
  input         io_a_isInf,
  input         io_a_isZero,
  input         io_a_sign,
  input  [9:0]  io_a_sExp,
  input  [24:0] io_a_sig,
  input         io_b_isNaN,
  input         io_b_isInf,
  input         io_b_isZero,
  input         io_b_sign,
  input  [9:0]  io_b_sExp,
  input  [24:0] io_b_sig,
  input  [2:0]  io_roundingMode,
  output        io_rawOutValid_div,
  output        io_rawOutValid_sqrt,
  output [2:0]  io_roundingModeOut,
  output        io_invalidExc,
  output        io_infiniteExc,
  output        io_rawOut_isNaN,
  output        io_rawOut_isInf,
  output        io_rawOut_isZero,
  output        io_rawOut_sign,
  output [9:0]  io_rawOut_sExp,
  output [26:0] io_rawOut_sig
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
`endif // RANDOMIZE_REG_INIT
  reg [26:0] cycleNum; // @[DivSqrtRecFN_small.scala 223:33]
  reg  sqrtOp_Z; // @[DivSqrtRecFN_small.scala 225:29]
  reg  majorExc_Z; // @[DivSqrtRecFN_small.scala 226:29]
  reg  isNaN_Z; // @[DivSqrtRecFN_small.scala 228:29]
  reg  isInf_Z; // @[DivSqrtRecFN_small.scala 229:29]
  reg  isZero_Z; // @[DivSqrtRecFN_small.scala 230:29]
  reg  sign_Z; // @[DivSqrtRecFN_small.scala 231:29]
  reg [9:0] sExp_Z; // @[DivSqrtRecFN_small.scala 232:29]
  reg [22:0] fractB_Z; // @[DivSqrtRecFN_small.scala 233:29]
  reg [2:0] roundingMode_Z; // @[DivSqrtRecFN_small.scala 234:29]
  reg [25:0] rem_Z; // @[DivSqrtRecFN_small.scala 240:29]
  reg  notZeroRem_Z; // @[DivSqrtRecFN_small.scala 241:29]
  reg [25:0] sigX_Z; // @[DivSqrtRecFN_small.scala 242:29]
  wire  notSigNaNIn_invalidExc_S_div = (io_a_isZero & io_b_isZero) | (io_a_isInf & io_b_isInf); // @[DivSqrtRecFN_small.scala 251:42]
  wire  _notSigNaNIn_invalidExc_S_sqrt_T = ~io_a_isNaN; // @[DivSqrtRecFN_small.scala 253:9]
  wire  notSigNaNIn_invalidExc_S_sqrt = ((~io_a_isNaN) & (~io_a_isZero)) & io_a_sign; // @[DivSqrtRecFN_small.scala 253:43]
  wire  _majorExc_S_T_2 = io_a_isNaN & (~(io_a_sig[22])); // @[common.scala 81:46]
  wire  _majorExc_S_T_3 = _majorExc_S_T_2 | notSigNaNIn_invalidExc_S_sqrt; // @[DivSqrtRecFN_small.scala 256:38]
  wire  _majorExc_S_T_9 = io_b_isNaN & (~(io_b_sig[22])); // @[common.scala 81:46]
  wire  _majorExc_S_T_11 = (_majorExc_S_T_2 | _majorExc_S_T_9) | notSigNaNIn_invalidExc_S_div; // @[DivSqrtRecFN_small.scala 257:66]
  wire  _majorExc_S_T_15 = (_notSigNaNIn_invalidExc_S_sqrt_T & (~io_a_isInf)) & io_b_isZero; // @[DivSqrtRecFN_small.scala 259:51]
  wire  _majorExc_S_T_16 = _majorExc_S_T_11 | _majorExc_S_T_15; // @[DivSqrtRecFN_small.scala 258:46]
  wire  _isNaN_S_T = io_a_isNaN | notSigNaNIn_invalidExc_S_sqrt; // @[DivSqrtRecFN_small.scala 263:26]
  wire  _isNaN_S_T_2 = (io_a_isNaN | io_b_isNaN) | notSigNaNIn_invalidExc_S_div; // @[DivSqrtRecFN_small.scala 264:42]
  wire  _sign_S_T = ~io_sqrtOp; // @[DivSqrtRecFN_small.scala 268:33]
  wire  sign_S = io_a_sign ^ ((~io_sqrtOp) & io_b_sign); // @[DivSqrtRecFN_small.scala 268:30]
  wire  specialCaseA_S = (io_a_isNaN | io_a_isInf) | io_a_isZero; // @[DivSqrtRecFN_small.scala 270:55]
  wire  specialCaseB_S = (io_b_isNaN | io_b_isInf) | io_b_isZero; // @[DivSqrtRecFN_small.scala 271:55]
  wire  _normalCase_S_div_T = ~specialCaseA_S; // @[DivSqrtRecFN_small.scala 272:28]
  wire  normalCase_S_div = (~specialCaseA_S) & (~specialCaseB_S); // @[DivSqrtRecFN_small.scala 272:45]
  wire  normalCase_S_sqrt = _normalCase_S_div_T & (~io_a_sign); // @[DivSqrtRecFN_small.scala 273:46]
  wire  normalCase_S = io_sqrtOp ? normalCase_S_sqrt : normalCase_S_div; // @[DivSqrtRecFN_small.scala 274:27]
  wire  sExpQuot_S_div_right = io_b_sExp[8]; // @[DivSqrtRecFN_small.scala 278:28]
  wire [7:0] sExpQuot_S_div_left = ~(io_b_sExp[7:0]); // @[DivSqrtRecFN_small.scala 278:40]
  wire [8:0] _sExpQuot_S_div_T_2 = {sExpQuot_S_div_right,sExpQuot_S_div_left}; // @[DivSqrtRecFN_small.scala 278:71]
  wire [9:0] _GEN_13 = {{1{_sExpQuot_S_div_T_2[8]}},_sExpQuot_S_div_T_2}; // @[DivSqrtRecFN_small.scala 277:21]
  wire [10:0] sExpQuot_S_div = $signed(io_a_sExp) + $signed(_GEN_13); // @[DivSqrtRecFN_small.scala 277:21]
  wire [3:0] sSatExpQuot_S_div_right = 11'sh1c0 <= $signed(sExpQuot_S_div) ? 4'h6 : sExpQuot_S_div[9:6]; // @[DivSqrtRecFN_small.scala 281:16]
  wire [5:0] sSatExpQuot_S_div_left = sExpQuot_S_div[5:0]; // @[DivSqrtRecFN_small.scala 285:27]
  wire [9:0] sSatExpQuot_S_div = {sSatExpQuot_S_div_right,sSatExpQuot_S_div_left}; // @[DivSqrtRecFN_small.scala 286:11]
  wire  evenSqrt_S = io_sqrtOp & (~(io_a_sExp[0])); // @[DivSqrtRecFN_small.scala 288:32]
  wire  oddSqrt_S = io_sqrtOp & (io_a_sExp[0]); // @[DivSqrtRecFN_small.scala 289:32]
  wire  idle = cycleNum[0]; // @[DivSqrtRecFN_small.scala 293:24]
  wire  inReady = idle | (cycleNum[1]); // @[DivSqrtRecFN_small.scala 294:24]
  wire  entering = inReady & io_inValid; // @[DivSqrtRecFN_small.scala 295:28]
  wire  entering_normalCase = entering & normalCase_S; // @[DivSqrtRecFN_small.scala 296:40]
  wire  skipCycle2 = (cycleNum[3]) & (sigX_Z[25]); // @[DivSqrtRecFN_small.scala 298:34]
  wire  _T_1 = (~idle) | entering; // @[DivSqrtRecFN_small.scala 300:18]
  wire  _cycleNum_T_1 = entering & (~normalCase_S); // @[DivSqrtRecFN_small.scala 302:26]
  wire [1:0] _cycleNum_T_2 = _cycleNum_T_1 ? 2'h2 : 2'h0; // @[DivSqrtRecFN_small.scala 302:16]
  wire [25:0] _cycleNum_T_4 = io_a_sExp[0] ? 26'h1000000 : 26'h2000000; // @[DivSqrtRecFN_small.scala 305:24]
  wire [26:0] _cycleNum_T_5 = io_sqrtOp ? {{1'd0}, _cycleNum_T_4} : 27'h4000000; // @[DivSqrtRecFN_small.scala 304:20]
  wire [26:0] _cycleNum_T_6 = entering_normalCase ? _cycleNum_T_5 : 27'h0; // @[DivSqrtRecFN_small.scala 303:16]
  wire [26:0] _GEN_14 = {{25'd0}, _cycleNum_T_2}; // @[DivSqrtRecFN_small.scala 302:59]
  wire [26:0] _cycleNum_T_7 = _GEN_14 | _cycleNum_T_6; // @[DivSqrtRecFN_small.scala 302:59]
  wire  _cycleNum_T_10 = (~entering) & (~skipCycle2); // @[DivSqrtRecFN_small.scala 310:28]
  wire [25:0] _cycleNum_T_12 = _cycleNum_T_10 ? cycleNum[26:1] : 26'h0; // @[DivSqrtRecFN_small.scala 310:16]
  wire [26:0] _GEN_15 = {{1'd0}, _cycleNum_T_12}; // @[DivSqrtRecFN_small.scala 309:15]
  wire [26:0] _cycleNum_T_13 = _cycleNum_T_7 | _GEN_15; // @[DivSqrtRecFN_small.scala 309:15]
  wire [1:0] _cycleNum_T_14 = skipCycle2 ? 2'h2 : 2'h0; // @[DivSqrtRecFN_small.scala 311:16]
  wire [26:0] _GEN_16 = {{25'd0}, _cycleNum_T_14}; // @[DivSqrtRecFN_small.scala 310:63]
  wire [26:0] _cycleNum_T_15 = _cycleNum_T_13 | _GEN_16; // @[DivSqrtRecFN_small.scala 310:63]
  wire [8:0] _sExp_Z_T = io_a_sExp[9:1]; // @[DivSqrtRecFN_small.scala 329:29]
  wire [9:0] _sExp_Z_T_1 = $signed(_sExp_Z_T) + 9'sh80; // @[DivSqrtRecFN_small.scala 329:34]
  wire  _T_3 = entering_normalCase & _sign_S_T; // @[DivSqrtRecFN_small.scala 334:31]
  wire  _rem_T_1 = inReady & (~oddSqrt_S); // @[DivSqrtRecFN_small.scala 341:21]
  wire [25:0] _rem_T_2 = {io_a_sig, 1'h0}; // @[DivSqrtRecFN_small.scala 341:47]
  wire [25:0] _rem_T_3 = _rem_T_1 ? _rem_T_2 : 26'h0; // @[DivSqrtRecFN_small.scala 341:12]
  wire  _rem_T_4 = inReady & oddSqrt_S; // @[DivSqrtRecFN_small.scala 342:21]
  wire [1:0] rem_right = (io_a_sig[23:22]) - 2'h1; // @[DivSqrtRecFN_small.scala 343:56]
  wire [24:0] rem_left = {io_a_sig[21:0], 3'h0}; // @[DivSqrtRecFN_small.scala 344:44]
  wire [26:0] _rem_T_8 = {rem_right,rem_left}; // @[Cat.scala 29:58]
  wire [26:0] _rem_T_9 = _rem_T_4 ? _rem_T_8 : 27'h0; // @[DivSqrtRecFN_small.scala 342:12]
  wire [26:0] _GEN_17 = {{1'd0}, _rem_T_3}; // @[DivSqrtRecFN_small.scala 341:57]
  wire [26:0] _rem_T_10 = _GEN_17 | _rem_T_9; // @[DivSqrtRecFN_small.scala 341:57]
  wire  _rem_T_11 = ~inReady; // @[DivSqrtRecFN_small.scala 348:13]
  wire [26:0] _rem_T_12 = {rem_Z, 1'h0}; // @[DivSqrtRecFN_small.scala 348:29]
  wire [26:0] _rem_T_13 = _rem_T_11 ? _rem_T_12 : 27'h0; // @[DivSqrtRecFN_small.scala 348:12]
  wire [26:0] rem = _rem_T_10 | _rem_T_13; // @[DivSqrtRecFN_small.scala 347:11]
  wire [24:0] bitMask = cycleNum[26:2]; // @[DivSqrtRecFN_small.scala 349:27]
  wire  _trialTerm_T_1 = inReady & _sign_S_T; // @[DivSqrtRecFN_small.scala 351:21]
  wire [25:0] _trialTerm_T_2 = {io_b_sig, 1'h0}; // @[DivSqrtRecFN_small.scala 351:47]
  wire [25:0] _trialTerm_T_3 = _trialTerm_T_1 ? _trialTerm_T_2 : 26'h0; // @[DivSqrtRecFN_small.scala 351:12]
  wire  _trialTerm_T_4 = inReady & evenSqrt_S; // @[DivSqrtRecFN_small.scala 352:21]
  wire [24:0] _trialTerm_T_5 = _trialTerm_T_4 ? 25'h1000000 : 25'h0; // @[DivSqrtRecFN_small.scala 352:12]
  wire [25:0] _GEN_18 = {{1'd0}, _trialTerm_T_5}; // @[DivSqrtRecFN_small.scala 351:73]
  wire [25:0] _trialTerm_T_6 = _trialTerm_T_3 | _GEN_18; // @[DivSqrtRecFN_small.scala 351:73]
  wire [25:0] _trialTerm_T_8 = _rem_T_4 ? 26'h2800000 : 26'h0; // @[DivSqrtRecFN_small.scala 353:12]
  wire [25:0] _trialTerm_T_9 = _trialTerm_T_6 | _trialTerm_T_8; // @[DivSqrtRecFN_small.scala 352:73]
  wire  _trialTerm_T_11 = ~sqrtOp_Z; // @[DivSqrtRecFN_small.scala 354:26]
  wire  _trialTerm_T_12 = _rem_T_11 & (~sqrtOp_Z); // @[DivSqrtRecFN_small.scala 354:23]
  wire [23:0] _trialTerm_T_13 = {1'h1,fractB_Z}; // @[Cat.scala 29:58]
  wire [24:0] _trialTerm_T_14 = {_trialTerm_T_13, 1'h0}; // @[DivSqrtRecFN_small.scala 354:56]
  wire [24:0] _trialTerm_T_15 = _trialTerm_T_12 ? _trialTerm_T_14 : 25'h0; // @[DivSqrtRecFN_small.scala 354:12]
  wire [25:0] _GEN_19 = {{1'd0}, _trialTerm_T_15}; // @[DivSqrtRecFN_small.scala 353:73]
  wire [25:0] _trialTerm_T_16 = _trialTerm_T_9 | _GEN_19; // @[DivSqrtRecFN_small.scala 353:73]
  wire  _trialTerm_T_18 = _rem_T_11 & sqrtOp_Z; // @[DivSqrtRecFN_small.scala 355:23]
  wire [26:0] _trialTerm_T_19 = {sigX_Z, 1'h0}; // @[DivSqrtRecFN_small.scala 355:44]
  wire [26:0] _GEN_20 = {{2'd0}, bitMask}; // @[DivSqrtRecFN_small.scala 355:48]
  wire [26:0] _trialTerm_T_20 = _trialTerm_T_19 | _GEN_20; // @[DivSqrtRecFN_small.scala 355:48]
  wire [26:0] _trialTerm_T_21 = _trialTerm_T_18 ? _trialTerm_T_20 : 27'h0; // @[DivSqrtRecFN_small.scala 355:12]
  wire [26:0] _GEN_21 = {{1'd0}, _trialTerm_T_16}; // @[DivSqrtRecFN_small.scala 354:73]
  wire [26:0] trialTerm = _GEN_21 | _trialTerm_T_21; // @[DivSqrtRecFN_small.scala 354:73]
  wire [27:0] _trialRem_T = {1'b0,$signed(rem)}; // @[DivSqrtRecFN_small.scala 356:24]
  wire [27:0] _trialRem_T_1 = {1'b0,$signed(trialTerm)}; // @[DivSqrtRecFN_small.scala 356:41]
  wire [27:0] trialRem = $signed(_trialRem_T) - $signed(_trialRem_T_1); // @[DivSqrtRecFN_small.scala 356:29]
  wire  newBit = 28'sh0 <= $signed(trialRem); // @[DivSqrtRecFN_small.scala 357:23]
  wire  _T_7 = entering_normalCase | (~(idle | (cycleNum[2]))); // @[DivSqrtRecFN_small.scala 359:31]
  wire [27:0] _rem_Z_T = $signed(_trialRem_T) - $signed(_trialRem_T_1); // @[DivSqrtRecFN_small.scala 360:39]
  wire [27:0] _rem_Z_T_1 = newBit ? _rem_Z_T : {{1'd0}, rem}; // @[DivSqrtRecFN_small.scala 360:21]
  wire [27:0] _GEN_10 = _T_7 ? _rem_Z_T_1 : {{2'd0}, rem_Z}; // @[DivSqrtRecFN_small.scala 359:58 DivSqrtRecFN_small.scala 360:15 DivSqrtRecFN_small.scala 240:29]
  wire  _T_10 = entering_normalCase | (_rem_T_11 & newBit); // @[DivSqrtRecFN_small.scala 362:31]
  wire  _notZeroRem_Z_T = $signed(trialRem) != 28'sh0; // @[DivSqrtRecFN_small.scala 363:35]
  wire [25:0] _sigX_Z_T_2 = {newBit, 25'h0}; // @[DivSqrtRecFN_small.scala 365:47]
  wire [25:0] _sigX_Z_T_3 = _trialTerm_T_1 ? _sigX_Z_T_2 : 26'h0; // @[DivSqrtRecFN_small.scala 365:16]
  wire  _sigX_Z_T_4 = inReady & io_sqrtOp; // @[DivSqrtRecFN_small.scala 366:25]
  wire [24:0] _sigX_Z_T_5 = _sigX_Z_T_4 ? 25'h1000000 : 25'h0; // @[DivSqrtRecFN_small.scala 366:16]
  wire [25:0] _GEN_22 = {{1'd0}, _sigX_Z_T_5}; // @[DivSqrtRecFN_small.scala 365:71]
  wire [25:0] _sigX_Z_T_6 = _sigX_Z_T_3 | _GEN_22; // @[DivSqrtRecFN_small.scala 365:71]
  wire [23:0] _sigX_Z_T_8 = {newBit, 23'h0}; // @[DivSqrtRecFN_small.scala 367:47]
  wire [23:0] _sigX_Z_T_9 = _rem_T_4 ? _sigX_Z_T_8 : 24'h0; // @[DivSqrtRecFN_small.scala 367:16]
  wire [25:0] _GEN_23 = {{2'd0}, _sigX_Z_T_9}; // @[DivSqrtRecFN_small.scala 366:71]
  wire [25:0] _sigX_Z_T_10 = _sigX_Z_T_6 | _GEN_23; // @[DivSqrtRecFN_small.scala 366:71]
  wire [25:0] _GEN_24 = {{1'd0}, bitMask}; // @[DivSqrtRecFN_small.scala 368:48]
  wire [25:0] _sigX_Z_T_12 = sigX_Z | _GEN_24; // @[DivSqrtRecFN_small.scala 368:48]
  wire [25:0] _sigX_Z_T_13 = _rem_T_11 ? _sigX_Z_T_12 : 26'h0; // @[DivSqrtRecFN_small.scala 368:16]
  wire [25:0] _sigX_Z_T_14 = _sigX_Z_T_10 | _sigX_Z_T_13; // @[DivSqrtRecFN_small.scala 367:71]
  wire [26:0] _GEN_25 = {{26'd0}, notZeroRem_Z}; // @[DivSqrtRecFN_small.scala 385:35]
  assign io_inReady = idle | (cycleNum[1]); // @[DivSqrtRecFN_small.scala 294:24]
  assign io_rawOutValid_div = (cycleNum[1]) & _trialTerm_T_11; // @[DivSqrtRecFN_small.scala 375:40]
  assign io_rawOutValid_sqrt = (cycleNum[1]) & sqrtOp_Z; // @[DivSqrtRecFN_small.scala 376:40]
  assign io_roundingModeOut = roundingMode_Z; // @[DivSqrtRecFN_small.scala 377:25]
  assign io_invalidExc = majorExc_Z & isNaN_Z; // @[DivSqrtRecFN_small.scala 378:36]
  assign io_infiniteExc = majorExc_Z & (~isNaN_Z); // @[DivSqrtRecFN_small.scala 379:36]
  assign io_rawOut_isNaN = isNaN_Z; // @[DivSqrtRecFN_small.scala 380:22]
  assign io_rawOut_isInf = isInf_Z; // @[DivSqrtRecFN_small.scala 381:22]
  assign io_rawOut_isZero = isZero_Z; // @[DivSqrtRecFN_small.scala 382:22]
  assign io_rawOut_sign = sign_Z; // @[DivSqrtRecFN_small.scala 383:22]
  assign io_rawOut_sExp = sExp_Z; // @[DivSqrtRecFN_small.scala 384:22]
  assign io_rawOut_sig = _trialTerm_T_19 | _GEN_25; // @[DivSqrtRecFN_small.scala 385:35]
  always @(posedge clock) begin
    if (reset) begin // @[DivSqrtRecFN_small.scala 223:33]
      cycleNum <= 27'h1; // @[DivSqrtRecFN_small.scala 223:33]
    end else if (_T_1) begin // @[DivSqrtRecFN_small.scala 300:31]
      cycleNum <= _cycleNum_T_15; // @[DivSqrtRecFN_small.scala 301:18]
    end
    if (entering) begin // @[DivSqrtRecFN_small.scala 318:21]
      sqrtOp_Z <= io_sqrtOp; // @[DivSqrtRecFN_small.scala 319:20]
    end
    if (entering) begin // @[DivSqrtRecFN_small.scala 318:21]
      if (io_sqrtOp) begin // @[DivSqrtRecFN_small.scala 255:12]
        majorExc_Z <= _majorExc_S_T_3;
      end else begin
        majorExc_Z <= _majorExc_S_T_16;
      end
    end
    if (entering) begin // @[DivSqrtRecFN_small.scala 318:21]
      if (io_sqrtOp) begin // @[DivSqrtRecFN_small.scala 262:12]
        isNaN_Z <= _isNaN_S_T;
      end else begin
        isNaN_Z <= _isNaN_S_T_2;
      end
    end
    if (entering) begin // @[DivSqrtRecFN_small.scala 318:21]
      if (io_sqrtOp) begin // @[DivSqrtRecFN_small.scala 266:23]
        isInf_Z <= io_a_isInf;
      end else begin
        isInf_Z <= io_a_isInf | io_b_isZero;
      end
    end
    if (entering) begin // @[DivSqrtRecFN_small.scala 318:21]
      if (io_sqrtOp) begin // @[DivSqrtRecFN_small.scala 267:23]
        isZero_Z <= io_a_isZero;
      end else begin
        isZero_Z <= io_a_isZero | io_b_isInf;
      end
    end
    if (entering) begin // @[DivSqrtRecFN_small.scala 318:21]
      sign_Z <= sign_S; // @[DivSqrtRecFN_small.scala 324:20]
    end
    if (entering_normalCase) begin // @[DivSqrtRecFN_small.scala 326:32]
      if (io_sqrtOp) begin // @[DivSqrtRecFN_small.scala 328:16]
        sExp_Z <= _sExp_Z_T_1;
      end else begin
        sExp_Z <= sSatExpQuot_S_div;
      end
    end
    if (_T_3) begin // @[DivSqrtRecFN_small.scala 334:47]
      fractB_Z <= io_b_sig[22:0]; // @[DivSqrtRecFN_small.scala 335:18]
    end
    if (entering_normalCase) begin // @[DivSqrtRecFN_small.scala 326:32]
      roundingMode_Z <= io_roundingMode; // @[DivSqrtRecFN_small.scala 332:24]
    end
    rem_Z <= _GEN_10[25:0];
    if (_T_10) begin // @[DivSqrtRecFN_small.scala 362:57]
      notZeroRem_Z <= _notZeroRem_Z_T; // @[DivSqrtRecFN_small.scala 363:22]
    end
    if (_T_10) begin // @[DivSqrtRecFN_small.scala 362:57]
      sigX_Z <= _sigX_Z_T_14; // @[DivSqrtRecFN_small.scala 364:16]
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
  cycleNum = _RAND_0[26:0];
  _RAND_1 = {1{`RANDOM}};
  sqrtOp_Z = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  majorExc_Z = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  isNaN_Z = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  isInf_Z = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  isZero_Z = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  sign_Z = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  sExp_Z = _RAND_7[9:0];
  _RAND_8 = {1{`RANDOM}};
  fractB_Z = _RAND_8[22:0];
  _RAND_9 = {1{`RANDOM}};
  roundingMode_Z = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  rem_Z = _RAND_10[25:0];
  _RAND_11 = {1{`RANDOM}};
  notZeroRem_Z = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  sigX_Z = _RAND_12[25:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
