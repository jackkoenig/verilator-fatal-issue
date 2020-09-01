module MulDiv(
  input         clock,
  input         reset,
  output        io_req_ready,
  input         io_req_valid,
  input  [3:0]  io_req_bits_fn,
  input         io_req_bits_dw,
  input  [63:0] io_req_bits_in1,
  input  [63:0] io_req_bits_in2,
  input  [4:0]  io_req_bits_tag,
  input         io_kill,
  input         io_resp_ready,
  output        io_resp_valid,
  output [63:0] io_resp_bits_data,
  output [4:0]  io_resp_bits_tag
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [95:0] _RAND_7;
  reg [159:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] state; // @[Multiplier.scala 52:22]
  reg  req_dw; // @[Multiplier.scala 54:16]
  reg [4:0] req_tag; // @[Multiplier.scala 54:16]
  reg [6:0] count; // @[Multiplier.scala 55:18]
  reg  neg_out; // @[Multiplier.scala 58:20]
  reg  isHi; // @[Multiplier.scala 59:17]
  reg  resHi; // @[Multiplier.scala 60:18]
  reg [64:0] divisor; // @[Multiplier.scala 61:20]
  reg [129:0] remainder; // @[Multiplier.scala 62:22]
  wire [3:0] _T = io_req_bits_fn & 4'h4; // @[Decode.scala 14:65]
  wire  cmdMul = _T == 4'h0; // @[Decode.scala 14:121]
  wire [3:0] _T_3 = io_req_bits_fn & 4'h5; // @[Decode.scala 14:65]
  wire  _T_4 = _T_3 == 4'h1; // @[Decode.scala 14:121]
  wire [3:0] _T_5 = io_req_bits_fn & 4'h2; // @[Decode.scala 14:65]
  wire  _T_6 = _T_5 == 4'h2; // @[Decode.scala 14:121]
  wire  cmdHi = _T_4 | _T_6; // @[Decode.scala 15:30]
  wire [3:0] _T_9 = io_req_bits_fn & 4'h6; // @[Decode.scala 14:65]
  wire  _T_10 = _T_9 == 4'h0; // @[Decode.scala 14:121]
  wire [3:0] _T_11 = io_req_bits_fn & 4'h1; // @[Decode.scala 14:65]
  wire  _T_12 = _T_11 == 4'h0; // @[Decode.scala 14:121]
  wire  lhsSigned = _T_10 | _T_12; // @[Decode.scala 15:30]
  wire  _T_16 = _T_3 == 4'h4; // @[Decode.scala 14:121]
  wire  rhsSigned = _T_10 | _T_16; // @[Decode.scala 15:30]
  wire  _T_19 = ~io_req_bits_dw; // @[Multiplier.scala 79:60]
  wire  _sign_T_2 = _T_19 ? io_req_bits_in1[31] : io_req_bits_in1[63]; // @[Multiplier.scala 82:29]
  wire  lhs_sign = lhsSigned & _sign_T_2; // @[Multiplier.scala 82:23]
  wire [31:0] _hi_T_1 = lhs_sign ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [31:0] right = _T_19 ? _hi_T_1 : io_req_bits_in1[63:32]; // @[Multiplier.scala 83:17]
  wire [31:0] left = io_req_bits_in1[31:0]; // @[Multiplier.scala 84:15]
  wire [63:0] lhs_in = {right,left}; // @[Cat.scala 29:58]
  wire  _sign_T_5 = _T_19 ? io_req_bits_in2[31] : io_req_bits_in2[63]; // @[Multiplier.scala 82:29]
  wire  rhs_sign = rhsSigned & _sign_T_5; // @[Multiplier.scala 82:23]
  wire [31:0] _hi_T_4 = rhs_sign ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [31:0] right_1 = _T_19 ? _hi_T_4 : io_req_bits_in2[63:32]; // @[Multiplier.scala 83:17]
  wire [31:0] left_1 = io_req_bits_in2[31:0]; // @[Multiplier.scala 84:15]
  wire [64:0] subtractor = (remainder[128:64]) - divisor; // @[Multiplier.scala 89:37]
  wire [63:0] result = resHi ? remainder[128:65] : remainder[63:0]; // @[Multiplier.scala 90:19]
  wire [63:0] negated_remainder = 64'h0 - result; // @[Multiplier.scala 91:27]
  wire  _T_23 = state == 3'h1; // @[Multiplier.scala 93:39]
  wire [129:0] _GEN_0 = remainder[63] ? {{66'd0}, negated_remainder} : remainder; // @[Multiplier.scala 94:27 Multiplier.scala 95:17 Multiplier.scala 62:22]
  wire [129:0] _GEN_2 = _T_23 ? _GEN_0 : remainder; // @[Multiplier.scala 93:57 Multiplier.scala 62:22]
  wire [2:0] _GEN_4 = _T_23 ? 3'h3 : state; // @[Multiplier.scala 93:57 Multiplier.scala 100:11 Multiplier.scala 52:22]
  wire  _T_26 = state == 3'h5; // @[Multiplier.scala 102:39]
  wire [2:0] _GEN_6 = _T_26 ? 3'h7 : _GEN_4; // @[Multiplier.scala 102:57 Multiplier.scala 104:11]
  wire  _GEN_7 = _T_26 ? 1'h0 : resHi; // @[Multiplier.scala 102:57 Multiplier.scala 105:11 Multiplier.scala 60:18]
  wire  _T_27 = state == 3'h2; // @[Multiplier.scala 107:39]
  wire [64:0] mulReg_right = remainder[129:65]; // @[Multiplier.scala 108:31]
  wire [128:0] mulReg = {mulReg_right,remainder[63:0]}; // @[Cat.scala 29:58]
  wire  prod_right = remainder[64]; // @[Multiplier.scala 109:31]
  wire [63:0] mplier = mulReg[63:0]; // @[Multiplier.scala 110:24]
  wire [64:0] accum = mulReg[128:64]; // @[Multiplier.scala 111:37]
  wire [7:0] prod_left = mplier[7:0]; // @[Multiplier.scala 113:38]
  wire [8:0] _prod_T_1 = {prod_right,prod_left}; // @[Multiplier.scala 113:60]
  wire [64:0] _GEN_37 = {{56{_prod_T_1[8]}},_prod_T_1}; // @[Multiplier.scala 113:67]
  wire [73:0] _prod_T_2 = $signed(_GEN_37) * $signed(divisor); // @[Multiplier.scala 113:67]
  wire [73:0] _GEN_38 = {{9{accum[64]}},accum}; // @[Multiplier.scala 113:76]
  wire [55:0] nextMulReg_left = mplier[63:8]; // @[Multiplier.scala 114:38]
  wire [73:0] nextMulReg_right = $signed(_prod_T_2) + $signed(_GEN_38); // @[Cat.scala 29:58]
  wire [129:0] nextMulReg = {nextMulReg_right,nextMulReg_left}; // @[Cat.scala 29:58]
  wire  remainder_right_left = (count == 7'h6) & neg_out; // @[Multiplier.scala 115:57]
  wire [10:0] _eOutMask_T = count * 7'h8; // @[Multiplier.scala 117:54]
  wire [64:0] _eOutMask_T_2 = -65'sh10000000000000000 >>> (_eOutMask_T[5:0]); // @[Multiplier.scala 117:44]
  wire [63:0] eOutMask = _eOutMask_T_2[63:0]; // @[Multiplier.scala 117:89]
  wire  _eOut_T_4 = ~isHi; // @[Multiplier.scala 119:7]
  wire  _eOut_T_5 = ((count != 7'h7) & (count != 7'h0)) & _eOut_T_4; // @[Multiplier.scala 118:85]
  wire [63:0] _eOut_T_6 = ~eOutMask; // @[Multiplier.scala 119:26]
  wire [63:0] _eOut_T_7 = mplier & _eOut_T_6; // @[Multiplier.scala 119:24]
  wire  eOut = _eOut_T_5 & (_eOut_T_7 == 64'h0); // @[Multiplier.scala 119:13]
  wire [10:0] _eOutRes_T_2 = 11'h40 - _eOutMask_T; // @[Multiplier.scala 120:36]
  wire [128:0] eOutRes = mulReg >> (_eOutRes_T_2[5:0]); // @[Multiplier.scala 120:27]
  wire [64:0] nextMulReg1_right = nextMulReg[128:64]; // @[Multiplier.scala 121:37]
  wire [129:0] _nextMulReg1_T = eOut ? {{1'd0}, eOutRes} : nextMulReg; // @[Multiplier.scala 121:55]
  wire [63:0] nextMulReg1_left = _nextMulReg1_T[63:0]; // @[Multiplier.scala 121:82]
  wire [128:0] nextMulReg1 = {nextMulReg1_right,nextMulReg1_left}; // @[Cat.scala 29:58]
  wire [64:0] remainder_right_right = nextMulReg1[128:64]; // @[Multiplier.scala 122:34]
  wire [63:0] remainder_left = nextMulReg1[63:0]; // @[Multiplier.scala 122:67]
  wire [129:0] _remainder_T = {remainder_right_right,remainder_right_left,remainder_left}; // @[Cat.scala 29:58]
  wire [6:0] _count_T_1 = count + 7'h1; // @[Multiplier.scala 124:20]
  wire  _T_29 = eOut | (count == 7'h7); // @[Multiplier.scala 125:16]
  wire [2:0] _GEN_8 = _T_29 ? 3'h6 : _GEN_6; // @[Multiplier.scala 125:51 Multiplier.scala 126:13]
  wire  _GEN_9 = _T_29 ? isHi : _GEN_7; // @[Multiplier.scala 125:51 Multiplier.scala 127:13]
  wire [2:0] _GEN_12 = _T_27 ? _GEN_8 : _GEN_6; // @[Multiplier.scala 107:50]
  wire  _GEN_13 = _T_27 ? _GEN_9 : _GEN_7; // @[Multiplier.scala 107:50]
  wire  _T_30 = state == 3'h3; // @[Multiplier.scala 130:39]
  wire  unrolls_less = subtractor[64]; // @[Multiplier.scala 134:28]
  wire [63:0] unrolls_right_right = unrolls_less ? remainder[127:64] : subtractor[63:0]; // @[Multiplier.scala 135:14]
  wire  unrolls_left = ~unrolls_less; // @[Multiplier.scala 135:67]
  wire [128:0] unrolls_0 = {unrolls_right_right,remainder[63:0],unrolls_left}; // @[Cat.scala 29:58]
  wire  _T_31 = count == 7'h40; // @[Multiplier.scala 139:17]
  wire [2:0] _state_T = neg_out ? 3'h5 : 3'h7; // @[Multiplier.scala 140:19]
  wire [2:0] _GEN_14 = _T_31 ? _state_T : _GEN_12; // @[Multiplier.scala 139:38 Multiplier.scala 140:13]
  wire  _divby0_T = count == 7'h0; // @[Multiplier.scala 147:24]
  wire  divby0 = (count == 7'h0) & unrolls_left; // @[Multiplier.scala 147:30]
  wire [31:0] divisorMSB_hi = divisor[63:32]; // @[CircuitMath.scala 35:17]
  wire [31:0] divisorMSB_lo = divisor[31:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_right = |divisorMSB_hi; // @[CircuitMath.scala 37:22]
  wire [15:0] divisorMSB_hi_1 = divisorMSB_hi[31:16]; // @[CircuitMath.scala 35:17]
  wire [15:0] divisorMSB_lo_1 = divisorMSB_hi[15:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_right_1 = |divisorMSB_hi_1; // @[CircuitMath.scala 37:22]
  wire [7:0] divisorMSB_hi_2 = divisorMSB_hi_1[15:8]; // @[CircuitMath.scala 35:17]
  wire [7:0] divisorMSB_lo_2 = divisorMSB_hi_1[7:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_right_2 = |divisorMSB_hi_2; // @[CircuitMath.scala 37:22]
  wire [3:0] divisorMSB_hi_3 = divisorMSB_hi_2[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] divisorMSB_lo_3 = divisorMSB_hi_2[3:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_right_3 = |divisorMSB_hi_3; // @[CircuitMath.scala 37:22]
  wire [1:0] _divisorMSB_T_4 = divisorMSB_hi_3[2] ? 2'h2 : {{1'd0}, divisorMSB_hi_3[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_5 = divisorMSB_hi_3[3] ? 2'h3 : _divisorMSB_T_4; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_9 = divisorMSB_lo_3[2] ? 2'h2 : {{1'd0}, divisorMSB_lo_3[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_10 = divisorMSB_lo_3[3] ? 2'h3 : _divisorMSB_T_9; // @[CircuitMath.scala 32:10]
  wire [1:0] divisorMSB_left = divisorMSB_right_3 ? _divisorMSB_T_5 : _divisorMSB_T_10; // @[CircuitMath.scala 38:21]
  wire [2:0] _divisorMSB_T_11 = {divisorMSB_right_3,divisorMSB_left}; // @[Cat.scala 29:58]
  wire [3:0] divisorMSB_hi_4 = divisorMSB_lo_2[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] divisorMSB_lo_4 = divisorMSB_lo_2[3:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_right_4 = |divisorMSB_hi_4; // @[CircuitMath.scala 37:22]
  wire [1:0] _divisorMSB_T_15 = divisorMSB_hi_4[2] ? 2'h2 : {{1'd0}, divisorMSB_hi_4[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_16 = divisorMSB_hi_4[3] ? 2'h3 : _divisorMSB_T_15; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_20 = divisorMSB_lo_4[2] ? 2'h2 : {{1'd0}, divisorMSB_lo_4[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_21 = divisorMSB_lo_4[3] ? 2'h3 : _divisorMSB_T_20; // @[CircuitMath.scala 32:10]
  wire [1:0] divisorMSB_left_1 = divisorMSB_right_4 ? _divisorMSB_T_16 : _divisorMSB_T_21; // @[CircuitMath.scala 38:21]
  wire [2:0] _divisorMSB_T_22 = {divisorMSB_right_4,divisorMSB_left_1}; // @[Cat.scala 29:58]
  wire [2:0] divisorMSB_left_2 = divisorMSB_right_2 ? _divisorMSB_T_11 : _divisorMSB_T_22; // @[CircuitMath.scala 38:21]
  wire [3:0] _divisorMSB_T_23 = {divisorMSB_right_2,divisorMSB_left_2}; // @[Cat.scala 29:58]
  wire [7:0] divisorMSB_hi_5 = divisorMSB_lo_1[15:8]; // @[CircuitMath.scala 35:17]
  wire [7:0] divisorMSB_lo_5 = divisorMSB_lo_1[7:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_right_5 = |divisorMSB_hi_5; // @[CircuitMath.scala 37:22]
  wire [3:0] divisorMSB_hi_6 = divisorMSB_hi_5[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] divisorMSB_lo_6 = divisorMSB_hi_5[3:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_right_6 = |divisorMSB_hi_6; // @[CircuitMath.scala 37:22]
  wire [1:0] _divisorMSB_T_27 = divisorMSB_hi_6[2] ? 2'h2 : {{1'd0}, divisorMSB_hi_6[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_28 = divisorMSB_hi_6[3] ? 2'h3 : _divisorMSB_T_27; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_32 = divisorMSB_lo_6[2] ? 2'h2 : {{1'd0}, divisorMSB_lo_6[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_33 = divisorMSB_lo_6[3] ? 2'h3 : _divisorMSB_T_32; // @[CircuitMath.scala 32:10]
  wire [1:0] divisorMSB_left_3 = divisorMSB_right_6 ? _divisorMSB_T_28 : _divisorMSB_T_33; // @[CircuitMath.scala 38:21]
  wire [2:0] _divisorMSB_T_34 = {divisorMSB_right_6,divisorMSB_left_3}; // @[Cat.scala 29:58]
  wire [3:0] divisorMSB_hi_7 = divisorMSB_lo_5[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] divisorMSB_lo_7 = divisorMSB_lo_5[3:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_right_7 = |divisorMSB_hi_7; // @[CircuitMath.scala 37:22]
  wire [1:0] _divisorMSB_T_38 = divisorMSB_hi_7[2] ? 2'h2 : {{1'd0}, divisorMSB_hi_7[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_39 = divisorMSB_hi_7[3] ? 2'h3 : _divisorMSB_T_38; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_43 = divisorMSB_lo_7[2] ? 2'h2 : {{1'd0}, divisorMSB_lo_7[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_44 = divisorMSB_lo_7[3] ? 2'h3 : _divisorMSB_T_43; // @[CircuitMath.scala 32:10]
  wire [1:0] divisorMSB_left_4 = divisorMSB_right_7 ? _divisorMSB_T_39 : _divisorMSB_T_44; // @[CircuitMath.scala 38:21]
  wire [2:0] _divisorMSB_T_45 = {divisorMSB_right_7,divisorMSB_left_4}; // @[Cat.scala 29:58]
  wire [2:0] divisorMSB_left_5 = divisorMSB_right_5 ? _divisorMSB_T_34 : _divisorMSB_T_45; // @[CircuitMath.scala 38:21]
  wire [3:0] _divisorMSB_T_46 = {divisorMSB_right_5,divisorMSB_left_5}; // @[Cat.scala 29:58]
  wire [3:0] divisorMSB_left_6 = divisorMSB_right_1 ? _divisorMSB_T_23 : _divisorMSB_T_46; // @[CircuitMath.scala 38:21]
  wire [4:0] _divisorMSB_T_47 = {divisorMSB_right_1,divisorMSB_left_6}; // @[Cat.scala 29:58]
  wire [15:0] divisorMSB_hi_8 = divisorMSB_lo[31:16]; // @[CircuitMath.scala 35:17]
  wire [15:0] divisorMSB_lo_8 = divisorMSB_lo[15:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_right_8 = |divisorMSB_hi_8; // @[CircuitMath.scala 37:22]
  wire [7:0] divisorMSB_hi_9 = divisorMSB_hi_8[15:8]; // @[CircuitMath.scala 35:17]
  wire [7:0] divisorMSB_lo_9 = divisorMSB_hi_8[7:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_right_9 = |divisorMSB_hi_9; // @[CircuitMath.scala 37:22]
  wire [3:0] divisorMSB_hi_10 = divisorMSB_hi_9[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] divisorMSB_lo_10 = divisorMSB_hi_9[3:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_right_10 = |divisorMSB_hi_10; // @[CircuitMath.scala 37:22]
  wire [1:0] _divisorMSB_T_51 = divisorMSB_hi_10[2] ? 2'h2 : {{1'd0}, divisorMSB_hi_10[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_52 = divisorMSB_hi_10[3] ? 2'h3 : _divisorMSB_T_51; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_56 = divisorMSB_lo_10[2] ? 2'h2 : {{1'd0}, divisorMSB_lo_10[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_57 = divisorMSB_lo_10[3] ? 2'h3 : _divisorMSB_T_56; // @[CircuitMath.scala 32:10]
  wire [1:0] divisorMSB_left_7 = divisorMSB_right_10 ? _divisorMSB_T_52 : _divisorMSB_T_57; // @[CircuitMath.scala 38:21]
  wire [2:0] _divisorMSB_T_58 = {divisorMSB_right_10,divisorMSB_left_7}; // @[Cat.scala 29:58]
  wire [3:0] divisorMSB_hi_11 = divisorMSB_lo_9[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] divisorMSB_lo_11 = divisorMSB_lo_9[3:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_right_11 = |divisorMSB_hi_11; // @[CircuitMath.scala 37:22]
  wire [1:0] _divisorMSB_T_62 = divisorMSB_hi_11[2] ? 2'h2 : {{1'd0}, divisorMSB_hi_11[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_63 = divisorMSB_hi_11[3] ? 2'h3 : _divisorMSB_T_62; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_67 = divisorMSB_lo_11[2] ? 2'h2 : {{1'd0}, divisorMSB_lo_11[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_68 = divisorMSB_lo_11[3] ? 2'h3 : _divisorMSB_T_67; // @[CircuitMath.scala 32:10]
  wire [1:0] divisorMSB_left_8 = divisorMSB_right_11 ? _divisorMSB_T_63 : _divisorMSB_T_68; // @[CircuitMath.scala 38:21]
  wire [2:0] _divisorMSB_T_69 = {divisorMSB_right_11,divisorMSB_left_8}; // @[Cat.scala 29:58]
  wire [2:0] divisorMSB_left_9 = divisorMSB_right_9 ? _divisorMSB_T_58 : _divisorMSB_T_69; // @[CircuitMath.scala 38:21]
  wire [3:0] _divisorMSB_T_70 = {divisorMSB_right_9,divisorMSB_left_9}; // @[Cat.scala 29:58]
  wire [7:0] divisorMSB_hi_12 = divisorMSB_lo_8[15:8]; // @[CircuitMath.scala 35:17]
  wire [7:0] divisorMSB_lo_12 = divisorMSB_lo_8[7:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_right_12 = |divisorMSB_hi_12; // @[CircuitMath.scala 37:22]
  wire [3:0] divisorMSB_hi_13 = divisorMSB_hi_12[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] divisorMSB_lo_13 = divisorMSB_hi_12[3:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_right_13 = |divisorMSB_hi_13; // @[CircuitMath.scala 37:22]
  wire [1:0] _divisorMSB_T_74 = divisorMSB_hi_13[2] ? 2'h2 : {{1'd0}, divisorMSB_hi_13[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_75 = divisorMSB_hi_13[3] ? 2'h3 : _divisorMSB_T_74; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_79 = divisorMSB_lo_13[2] ? 2'h2 : {{1'd0}, divisorMSB_lo_13[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_80 = divisorMSB_lo_13[3] ? 2'h3 : _divisorMSB_T_79; // @[CircuitMath.scala 32:10]
  wire [1:0] divisorMSB_left_10 = divisorMSB_right_13 ? _divisorMSB_T_75 : _divisorMSB_T_80; // @[CircuitMath.scala 38:21]
  wire [2:0] _divisorMSB_T_81 = {divisorMSB_right_13,divisorMSB_left_10}; // @[Cat.scala 29:58]
  wire [3:0] divisorMSB_hi_14 = divisorMSB_lo_12[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] divisorMSB_lo_14 = divisorMSB_lo_12[3:0]; // @[CircuitMath.scala 36:17]
  wire  divisorMSB_right_14 = |divisorMSB_hi_14; // @[CircuitMath.scala 37:22]
  wire [1:0] _divisorMSB_T_85 = divisorMSB_hi_14[2] ? 2'h2 : {{1'd0}, divisorMSB_hi_14[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_86 = divisorMSB_hi_14[3] ? 2'h3 : _divisorMSB_T_85; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_90 = divisorMSB_lo_14[2] ? 2'h2 : {{1'd0}, divisorMSB_lo_14[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _divisorMSB_T_91 = divisorMSB_lo_14[3] ? 2'h3 : _divisorMSB_T_90; // @[CircuitMath.scala 32:10]
  wire [1:0] divisorMSB_left_11 = divisorMSB_right_14 ? _divisorMSB_T_86 : _divisorMSB_T_91; // @[CircuitMath.scala 38:21]
  wire [2:0] _divisorMSB_T_92 = {divisorMSB_right_14,divisorMSB_left_11}; // @[Cat.scala 29:58]
  wire [2:0] divisorMSB_left_12 = divisorMSB_right_12 ? _divisorMSB_T_81 : _divisorMSB_T_92; // @[CircuitMath.scala 38:21]
  wire [3:0] _divisorMSB_T_93 = {divisorMSB_right_12,divisorMSB_left_12}; // @[Cat.scala 29:58]
  wire [3:0] divisorMSB_left_13 = divisorMSB_right_8 ? _divisorMSB_T_70 : _divisorMSB_T_93; // @[CircuitMath.scala 38:21]
  wire [4:0] _divisorMSB_T_94 = {divisorMSB_right_8,divisorMSB_left_13}; // @[Cat.scala 29:58]
  wire [4:0] divisorMSB_left_14 = divisorMSB_right ? _divisorMSB_T_47 : _divisorMSB_T_94; // @[CircuitMath.scala 38:21]
  wire [5:0] divisorMSB = {divisorMSB_right,divisorMSB_left_14}; // @[Cat.scala 29:58]
  wire [31:0] dividendMSB_hi = remainder[63:32]; // @[CircuitMath.scala 35:17]
  wire [31:0] dividendMSB_lo = remainder[31:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_right = |dividendMSB_hi; // @[CircuitMath.scala 37:22]
  wire [15:0] dividendMSB_hi_1 = dividendMSB_hi[31:16]; // @[CircuitMath.scala 35:17]
  wire [15:0] dividendMSB_lo_1 = dividendMSB_hi[15:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_right_1 = |dividendMSB_hi_1; // @[CircuitMath.scala 37:22]
  wire [7:0] dividendMSB_hi_2 = dividendMSB_hi_1[15:8]; // @[CircuitMath.scala 35:17]
  wire [7:0] dividendMSB_lo_2 = dividendMSB_hi_1[7:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_right_2 = |dividendMSB_hi_2; // @[CircuitMath.scala 37:22]
  wire [3:0] dividendMSB_hi_3 = dividendMSB_hi_2[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] dividendMSB_lo_3 = dividendMSB_hi_2[3:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_right_3 = |dividendMSB_hi_3; // @[CircuitMath.scala 37:22]
  wire [1:0] _dividendMSB_T_4 = dividendMSB_hi_3[2] ? 2'h2 : {{1'd0}, dividendMSB_hi_3[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_5 = dividendMSB_hi_3[3] ? 2'h3 : _dividendMSB_T_4; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_9 = dividendMSB_lo_3[2] ? 2'h2 : {{1'd0}, dividendMSB_lo_3[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_10 = dividendMSB_lo_3[3] ? 2'h3 : _dividendMSB_T_9; // @[CircuitMath.scala 32:10]
  wire [1:0] dividendMSB_left = dividendMSB_right_3 ? _dividendMSB_T_5 : _dividendMSB_T_10; // @[CircuitMath.scala 38:21]
  wire [2:0] _dividendMSB_T_11 = {dividendMSB_right_3,dividendMSB_left}; // @[Cat.scala 29:58]
  wire [3:0] dividendMSB_hi_4 = dividendMSB_lo_2[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] dividendMSB_lo_4 = dividendMSB_lo_2[3:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_right_4 = |dividendMSB_hi_4; // @[CircuitMath.scala 37:22]
  wire [1:0] _dividendMSB_T_15 = dividendMSB_hi_4[2] ? 2'h2 : {{1'd0}, dividendMSB_hi_4[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_16 = dividendMSB_hi_4[3] ? 2'h3 : _dividendMSB_T_15; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_20 = dividendMSB_lo_4[2] ? 2'h2 : {{1'd0}, dividendMSB_lo_4[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_21 = dividendMSB_lo_4[3] ? 2'h3 : _dividendMSB_T_20; // @[CircuitMath.scala 32:10]
  wire [1:0] dividendMSB_left_1 = dividendMSB_right_4 ? _dividendMSB_T_16 : _dividendMSB_T_21; // @[CircuitMath.scala 38:21]
  wire [2:0] _dividendMSB_T_22 = {dividendMSB_right_4,dividendMSB_left_1}; // @[Cat.scala 29:58]
  wire [2:0] dividendMSB_left_2 = dividendMSB_right_2 ? _dividendMSB_T_11 : _dividendMSB_T_22; // @[CircuitMath.scala 38:21]
  wire [3:0] _dividendMSB_T_23 = {dividendMSB_right_2,dividendMSB_left_2}; // @[Cat.scala 29:58]
  wire [7:0] dividendMSB_hi_5 = dividendMSB_lo_1[15:8]; // @[CircuitMath.scala 35:17]
  wire [7:0] dividendMSB_lo_5 = dividendMSB_lo_1[7:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_right_5 = |dividendMSB_hi_5; // @[CircuitMath.scala 37:22]
  wire [3:0] dividendMSB_hi_6 = dividendMSB_hi_5[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] dividendMSB_lo_6 = dividendMSB_hi_5[3:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_right_6 = |dividendMSB_hi_6; // @[CircuitMath.scala 37:22]
  wire [1:0] _dividendMSB_T_27 = dividendMSB_hi_6[2] ? 2'h2 : {{1'd0}, dividendMSB_hi_6[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_28 = dividendMSB_hi_6[3] ? 2'h3 : _dividendMSB_T_27; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_32 = dividendMSB_lo_6[2] ? 2'h2 : {{1'd0}, dividendMSB_lo_6[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_33 = dividendMSB_lo_6[3] ? 2'h3 : _dividendMSB_T_32; // @[CircuitMath.scala 32:10]
  wire [1:0] dividendMSB_left_3 = dividendMSB_right_6 ? _dividendMSB_T_28 : _dividendMSB_T_33; // @[CircuitMath.scala 38:21]
  wire [2:0] _dividendMSB_T_34 = {dividendMSB_right_6,dividendMSB_left_3}; // @[Cat.scala 29:58]
  wire [3:0] dividendMSB_hi_7 = dividendMSB_lo_5[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] dividendMSB_lo_7 = dividendMSB_lo_5[3:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_right_7 = |dividendMSB_hi_7; // @[CircuitMath.scala 37:22]
  wire [1:0] _dividendMSB_T_38 = dividendMSB_hi_7[2] ? 2'h2 : {{1'd0}, dividendMSB_hi_7[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_39 = dividendMSB_hi_7[3] ? 2'h3 : _dividendMSB_T_38; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_43 = dividendMSB_lo_7[2] ? 2'h2 : {{1'd0}, dividendMSB_lo_7[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_44 = dividendMSB_lo_7[3] ? 2'h3 : _dividendMSB_T_43; // @[CircuitMath.scala 32:10]
  wire [1:0] dividendMSB_left_4 = dividendMSB_right_7 ? _dividendMSB_T_39 : _dividendMSB_T_44; // @[CircuitMath.scala 38:21]
  wire [2:0] _dividendMSB_T_45 = {dividendMSB_right_7,dividendMSB_left_4}; // @[Cat.scala 29:58]
  wire [2:0] dividendMSB_left_5 = dividendMSB_right_5 ? _dividendMSB_T_34 : _dividendMSB_T_45; // @[CircuitMath.scala 38:21]
  wire [3:0] _dividendMSB_T_46 = {dividendMSB_right_5,dividendMSB_left_5}; // @[Cat.scala 29:58]
  wire [3:0] dividendMSB_left_6 = dividendMSB_right_1 ? _dividendMSB_T_23 : _dividendMSB_T_46; // @[CircuitMath.scala 38:21]
  wire [4:0] _dividendMSB_T_47 = {dividendMSB_right_1,dividendMSB_left_6}; // @[Cat.scala 29:58]
  wire [15:0] dividendMSB_hi_8 = dividendMSB_lo[31:16]; // @[CircuitMath.scala 35:17]
  wire [15:0] dividendMSB_lo_8 = dividendMSB_lo[15:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_right_8 = |dividendMSB_hi_8; // @[CircuitMath.scala 37:22]
  wire [7:0] dividendMSB_hi_9 = dividendMSB_hi_8[15:8]; // @[CircuitMath.scala 35:17]
  wire [7:0] dividendMSB_lo_9 = dividendMSB_hi_8[7:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_right_9 = |dividendMSB_hi_9; // @[CircuitMath.scala 37:22]
  wire [3:0] dividendMSB_hi_10 = dividendMSB_hi_9[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] dividendMSB_lo_10 = dividendMSB_hi_9[3:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_right_10 = |dividendMSB_hi_10; // @[CircuitMath.scala 37:22]
  wire [1:0] _dividendMSB_T_51 = dividendMSB_hi_10[2] ? 2'h2 : {{1'd0}, dividendMSB_hi_10[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_52 = dividendMSB_hi_10[3] ? 2'h3 : _dividendMSB_T_51; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_56 = dividendMSB_lo_10[2] ? 2'h2 : {{1'd0}, dividendMSB_lo_10[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_57 = dividendMSB_lo_10[3] ? 2'h3 : _dividendMSB_T_56; // @[CircuitMath.scala 32:10]
  wire [1:0] dividendMSB_left_7 = dividendMSB_right_10 ? _dividendMSB_T_52 : _dividendMSB_T_57; // @[CircuitMath.scala 38:21]
  wire [2:0] _dividendMSB_T_58 = {dividendMSB_right_10,dividendMSB_left_7}; // @[Cat.scala 29:58]
  wire [3:0] dividendMSB_hi_11 = dividendMSB_lo_9[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] dividendMSB_lo_11 = dividendMSB_lo_9[3:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_right_11 = |dividendMSB_hi_11; // @[CircuitMath.scala 37:22]
  wire [1:0] _dividendMSB_T_62 = dividendMSB_hi_11[2] ? 2'h2 : {{1'd0}, dividendMSB_hi_11[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_63 = dividendMSB_hi_11[3] ? 2'h3 : _dividendMSB_T_62; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_67 = dividendMSB_lo_11[2] ? 2'h2 : {{1'd0}, dividendMSB_lo_11[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_68 = dividendMSB_lo_11[3] ? 2'h3 : _dividendMSB_T_67; // @[CircuitMath.scala 32:10]
  wire [1:0] dividendMSB_left_8 = dividendMSB_right_11 ? _dividendMSB_T_63 : _dividendMSB_T_68; // @[CircuitMath.scala 38:21]
  wire [2:0] _dividendMSB_T_69 = {dividendMSB_right_11,dividendMSB_left_8}; // @[Cat.scala 29:58]
  wire [2:0] dividendMSB_left_9 = dividendMSB_right_9 ? _dividendMSB_T_58 : _dividendMSB_T_69; // @[CircuitMath.scala 38:21]
  wire [3:0] _dividendMSB_T_70 = {dividendMSB_right_9,dividendMSB_left_9}; // @[Cat.scala 29:58]
  wire [7:0] dividendMSB_hi_12 = dividendMSB_lo_8[15:8]; // @[CircuitMath.scala 35:17]
  wire [7:0] dividendMSB_lo_12 = dividendMSB_lo_8[7:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_right_12 = |dividendMSB_hi_12; // @[CircuitMath.scala 37:22]
  wire [3:0] dividendMSB_hi_13 = dividendMSB_hi_12[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] dividendMSB_lo_13 = dividendMSB_hi_12[3:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_right_13 = |dividendMSB_hi_13; // @[CircuitMath.scala 37:22]
  wire [1:0] _dividendMSB_T_74 = dividendMSB_hi_13[2] ? 2'h2 : {{1'd0}, dividendMSB_hi_13[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_75 = dividendMSB_hi_13[3] ? 2'h3 : _dividendMSB_T_74; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_79 = dividendMSB_lo_13[2] ? 2'h2 : {{1'd0}, dividendMSB_lo_13[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_80 = dividendMSB_lo_13[3] ? 2'h3 : _dividendMSB_T_79; // @[CircuitMath.scala 32:10]
  wire [1:0] dividendMSB_left_10 = dividendMSB_right_13 ? _dividendMSB_T_75 : _dividendMSB_T_80; // @[CircuitMath.scala 38:21]
  wire [2:0] _dividendMSB_T_81 = {dividendMSB_right_13,dividendMSB_left_10}; // @[Cat.scala 29:58]
  wire [3:0] dividendMSB_hi_14 = dividendMSB_lo_12[7:4]; // @[CircuitMath.scala 35:17]
  wire [3:0] dividendMSB_lo_14 = dividendMSB_lo_12[3:0]; // @[CircuitMath.scala 36:17]
  wire  dividendMSB_right_14 = |dividendMSB_hi_14; // @[CircuitMath.scala 37:22]
  wire [1:0] _dividendMSB_T_85 = dividendMSB_hi_14[2] ? 2'h2 : {{1'd0}, dividendMSB_hi_14[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_86 = dividendMSB_hi_14[3] ? 2'h3 : _dividendMSB_T_85; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_90 = dividendMSB_lo_14[2] ? 2'h2 : {{1'd0}, dividendMSB_lo_14[1]}; // @[CircuitMath.scala 32:10]
  wire [1:0] _dividendMSB_T_91 = dividendMSB_lo_14[3] ? 2'h3 : _dividendMSB_T_90; // @[CircuitMath.scala 32:10]
  wire [1:0] dividendMSB_left_11 = dividendMSB_right_14 ? _dividendMSB_T_86 : _dividendMSB_T_91; // @[CircuitMath.scala 38:21]
  wire [2:0] _dividendMSB_T_92 = {dividendMSB_right_14,dividendMSB_left_11}; // @[Cat.scala 29:58]
  wire [2:0] dividendMSB_left_12 = dividendMSB_right_12 ? _dividendMSB_T_81 : _dividendMSB_T_92; // @[CircuitMath.scala 38:21]
  wire [3:0] _dividendMSB_T_93 = {dividendMSB_right_12,dividendMSB_left_12}; // @[Cat.scala 29:58]
  wire [3:0] dividendMSB_left_13 = dividendMSB_right_8 ? _dividendMSB_T_70 : _dividendMSB_T_93; // @[CircuitMath.scala 38:21]
  wire [4:0] _dividendMSB_T_94 = {dividendMSB_right_8,dividendMSB_left_13}; // @[Cat.scala 29:58]
  wire [4:0] dividendMSB_left_14 = dividendMSB_right ? _dividendMSB_T_47 : _dividendMSB_T_94; // @[CircuitMath.scala 38:21]
  wire [5:0] dividendMSB = {dividendMSB_right,dividendMSB_left_14}; // @[Cat.scala 29:58]
  wire [5:0] _eOutPos_T_1 = dividendMSB - divisorMSB; // @[Multiplier.scala 153:35]
  wire [5:0] eOutPos = ~_eOutPos_T_1; // @[Multiplier.scala 153:21]
  wire  eOut_1 = (_divby0_T & (~divby0)) & (eOutPos >= 6'h1); // @[Multiplier.scala 154:41]
  wire [126:0] _GEN_39 = {{63'd0}, remainder[63:0]}; // @[Multiplier.scala 156:39]
  wire [126:0] _remainder_T_2 = _GEN_39 << eOutPos; // @[Multiplier.scala 156:39]
  wire [128:0] _GEN_16 = eOut_1 ? {{2'd0}, _remainder_T_2} : unrolls_0; // @[Multiplier.scala 155:19 Multiplier.scala 156:19 Multiplier.scala 138:15]
  wire  _T_33 = divby0 & _eOut_T_4; // @[Multiplier.scala 160:18]
  wire  _T_34 = io_resp_ready & io_resp_valid; // @[Decoupled.scala 40:37]
  wire  _T_35 = _T_34 | io_kill; // @[Multiplier.scala 162:24]
  wire  _T_36 = io_req_ready & io_req_valid; // @[Decoupled.scala 40:37]
  wire  _state_T_1 = lhs_sign | rhs_sign; // @[Multiplier.scala 166:46]
  wire  _count_T_7 = cmdMul & _T_19; // @[Multiplier.scala 169:46]
  wire [2:0] _count_T_8 = _count_T_7 ? 3'h4 : 3'h0; // @[Multiplier.scala 169:38]
  wire [64:0] _divisor_T = {rhs_sign,right_1,left_1}; // @[Cat.scala 29:58]
  wire [2:0] _outMul_T_1 = state & 3'h1; // @[Multiplier.scala 176:23]
  wire  outMul = _outMul_T_1 == 3'h0; // @[Multiplier.scala 176:52]
  wire  _loOut_T = ~req_dw; // @[Multiplier.scala 79:60]
  wire  _loOut_T_3 = _loOut_T & outMul; // @[Multiplier.scala 177:48]
  wire [31:0] loOut = _loOut_T_3 ? result[63:32] : result[31:0]; // @[Multiplier.scala 177:18]
  wire [31:0] _hiOut_T_4 = loOut[31] ? 32'hffffffff : 32'h0; // @[Bitwise.scala 72:12]
  wire [31:0] hiOut = _loOut_T ? _hiOut_T_4 : result[63:32]; // @[Multiplier.scala 178:18]
  assign io_req_ready = state == 3'h0; // @[Multiplier.scala 183:25]
  assign io_resp_valid = (state == 3'h6) | (state == 3'h7); // @[Multiplier.scala 182:42]
  assign io_resp_bits_data = {hiOut,loOut}; // @[Cat.scala 29:58]
  assign io_resp_bits_tag = req_tag; // @[Multiplier.scala 179:20]
  always @(posedge clock) begin
    if (reset) begin // @[Multiplier.scala 52:22]
      state <= 3'h0; // @[Multiplier.scala 52:22]
    end else if (_T_36) begin // @[Multiplier.scala 165:24]
      if (cmdMul) begin // @[Multiplier.scala 166:17]
        state <= 3'h2;
      end else if (_state_T_1) begin // @[Multiplier.scala 166:36]
        state <= 3'h1;
      end else begin
        state <= 3'h3;
      end
    end else if (_T_35) begin // @[Multiplier.scala 162:36]
      state <= 3'h0; // @[Multiplier.scala 163:11]
    end else if (_T_30) begin // @[Multiplier.scala 130:50]
      state <= _GEN_14;
    end else begin
      state <= _GEN_12;
    end
    if (_T_36) begin // @[Multiplier.scala 165:24]
      req_dw <= io_req_bits_dw; // @[Multiplier.scala 173:9]
    end
    if (_T_36) begin // @[Multiplier.scala 165:24]
      req_tag <= io_req_bits_tag; // @[Multiplier.scala 173:9]
    end
    if (_T_36) begin // @[Multiplier.scala 165:24]
      count <= {{4'd0}, _count_T_8}; // @[Multiplier.scala 169:11]
    end else if (_T_30) begin // @[Multiplier.scala 130:50]
      if (eOut_1) begin // @[Multiplier.scala 155:19]
        count <= {{1'd0}, eOutPos}; // @[Multiplier.scala 157:15]
      end else begin
        count <= _count_T_1; // @[Multiplier.scala 145:11]
      end
    end else if (_T_27) begin // @[Multiplier.scala 107:50]
      count <= _count_T_1; // @[Multiplier.scala 124:11]
    end
    if (_T_36) begin // @[Multiplier.scala 165:24]
      if (cmdHi) begin // @[Multiplier.scala 170:19]
        neg_out <= lhs_sign;
      end else begin
        neg_out <= lhs_sign != rhs_sign;
      end
    end else if (_T_30) begin // @[Multiplier.scala 130:50]
      if (_T_33) begin // @[Multiplier.scala 160:28]
        neg_out <= 1'h0; // @[Multiplier.scala 160:38]
      end
    end
    if (_T_36) begin // @[Multiplier.scala 165:24]
      isHi <= cmdHi; // @[Multiplier.scala 167:10]
    end
    if (_T_36) begin // @[Multiplier.scala 165:24]
      resHi <= 1'h0; // @[Multiplier.scala 168:11]
    end else if (_T_30) begin // @[Multiplier.scala 130:50]
      if (_T_31) begin // @[Multiplier.scala 139:38]
        resHi <= isHi; // @[Multiplier.scala 141:13]
      end else begin
        resHi <= _GEN_13;
      end
    end else begin
      resHi <= _GEN_13;
    end
    if (_T_36) begin // @[Multiplier.scala 165:24]
      divisor <= _divisor_T; // @[Multiplier.scala 171:13]
    end else if (_T_23) begin // @[Multiplier.scala 93:57]
      if (divisor[63]) begin // @[Multiplier.scala 97:25]
        divisor <= subtractor; // @[Multiplier.scala 98:15]
      end
    end
    if (_T_36) begin // @[Multiplier.scala 165:24]
      remainder <= {{66'd0}, lhs_in}; // @[Multiplier.scala 172:15]
    end else if (_T_30) begin // @[Multiplier.scala 130:50]
      remainder <= {{1'd0}, _GEN_16};
    end else if (_T_27) begin // @[Multiplier.scala 107:50]
      remainder <= _remainder_T; // @[Multiplier.scala 122:15]
    end else if (_T_26) begin // @[Multiplier.scala 102:57]
      remainder <= {{66'd0}, negated_remainder}; // @[Multiplier.scala 103:15]
    end else begin
      remainder <= _GEN_2;
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
  state = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  req_dw = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  req_tag = _RAND_2[4:0];
  _RAND_3 = {1{`RANDOM}};
  count = _RAND_3[6:0];
  _RAND_4 = {1{`RANDOM}};
  neg_out = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  isHi = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  resHi = _RAND_6[0:0];
  _RAND_7 = {3{`RANDOM}};
  divisor = _RAND_7[64:0];
  _RAND_8 = {5{`RANDOM}};
  remainder = _RAND_8[129:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
