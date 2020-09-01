module INToRecFN_1(
  input         io_signedIn,
  input  [63:0] io_in,
  input  [2:0]  io_roundingMode,
  output [64:0] io_out,
  output [4:0]  io_exceptionFlags
);
  wire  roundAnyRawFNToRecFN_io_in_isZero; // @[INToRecFN.scala 59:15]
  wire  roundAnyRawFNToRecFN_io_in_sign; // @[INToRecFN.scala 59:15]
  wire [8:0] roundAnyRawFNToRecFN_io_in_sExp; // @[INToRecFN.scala 59:15]
  wire [64:0] roundAnyRawFNToRecFN_io_in_sig; // @[INToRecFN.scala 59:15]
  wire [2:0] roundAnyRawFNToRecFN_io_roundingMode; // @[INToRecFN.scala 59:15]
  wire [64:0] roundAnyRawFNToRecFN_io_out; // @[INToRecFN.scala 59:15]
  wire [4:0] roundAnyRawFNToRecFN_io_exceptionFlags; // @[INToRecFN.scala 59:15]
  wire  intAsRawFloat_sign = io_signedIn & (io_in[63]); // @[rawFloatFromIN.scala 50:29]
  wire [63:0] _intAsRawFloat_absIn_T_1 = 64'h0 - io_in; // @[rawFloatFromIN.scala 51:31]
  wire [63:0] intAsRawFloat_extAbsIn_left = intAsRawFloat_sign ? _intAsRawFloat_absIn_T_1 : io_in; // @[rawFloatFromIN.scala 51:24]
  wire [127:0] _intAsRawFloat_extAbsIn_T = {64'h0,intAsRawFloat_extAbsIn_left}; // @[Cat.scala 29:58]
  wire [63:0] intAsRawFloat_extAbsIn = _intAsRawFloat_extAbsIn_T[63:0]; // @[rawFloatFromIN.scala 52:56]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_64 = intAsRawFloat_extAbsIn[1] ? 6'h3e : 6'h3f; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_65 = intAsRawFloat_extAbsIn[2] ? 6'h3d :
    _intAsRawFloat_adjustedNormDist_T_64; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_66 = intAsRawFloat_extAbsIn[3] ? 6'h3c :
    _intAsRawFloat_adjustedNormDist_T_65; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_67 = intAsRawFloat_extAbsIn[4] ? 6'h3b :
    _intAsRawFloat_adjustedNormDist_T_66; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_68 = intAsRawFloat_extAbsIn[5] ? 6'h3a :
    _intAsRawFloat_adjustedNormDist_T_67; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_69 = intAsRawFloat_extAbsIn[6] ? 6'h39 :
    _intAsRawFloat_adjustedNormDist_T_68; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_70 = intAsRawFloat_extAbsIn[7] ? 6'h38 :
    _intAsRawFloat_adjustedNormDist_T_69; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_71 = intAsRawFloat_extAbsIn[8] ? 6'h37 :
    _intAsRawFloat_adjustedNormDist_T_70; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_72 = intAsRawFloat_extAbsIn[9] ? 6'h36 :
    _intAsRawFloat_adjustedNormDist_T_71; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_73 = intAsRawFloat_extAbsIn[10] ? 6'h35 :
    _intAsRawFloat_adjustedNormDist_T_72; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_74 = intAsRawFloat_extAbsIn[11] ? 6'h34 :
    _intAsRawFloat_adjustedNormDist_T_73; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_75 = intAsRawFloat_extAbsIn[12] ? 6'h33 :
    _intAsRawFloat_adjustedNormDist_T_74; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_76 = intAsRawFloat_extAbsIn[13] ? 6'h32 :
    _intAsRawFloat_adjustedNormDist_T_75; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_77 = intAsRawFloat_extAbsIn[14] ? 6'h31 :
    _intAsRawFloat_adjustedNormDist_T_76; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_78 = intAsRawFloat_extAbsIn[15] ? 6'h30 :
    _intAsRawFloat_adjustedNormDist_T_77; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_79 = intAsRawFloat_extAbsIn[16] ? 6'h2f :
    _intAsRawFloat_adjustedNormDist_T_78; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_80 = intAsRawFloat_extAbsIn[17] ? 6'h2e :
    _intAsRawFloat_adjustedNormDist_T_79; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_81 = intAsRawFloat_extAbsIn[18] ? 6'h2d :
    _intAsRawFloat_adjustedNormDist_T_80; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_82 = intAsRawFloat_extAbsIn[19] ? 6'h2c :
    _intAsRawFloat_adjustedNormDist_T_81; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_83 = intAsRawFloat_extAbsIn[20] ? 6'h2b :
    _intAsRawFloat_adjustedNormDist_T_82; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_84 = intAsRawFloat_extAbsIn[21] ? 6'h2a :
    _intAsRawFloat_adjustedNormDist_T_83; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_85 = intAsRawFloat_extAbsIn[22] ? 6'h29 :
    _intAsRawFloat_adjustedNormDist_T_84; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_86 = intAsRawFloat_extAbsIn[23] ? 6'h28 :
    _intAsRawFloat_adjustedNormDist_T_85; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_87 = intAsRawFloat_extAbsIn[24] ? 6'h27 :
    _intAsRawFloat_adjustedNormDist_T_86; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_88 = intAsRawFloat_extAbsIn[25] ? 6'h26 :
    _intAsRawFloat_adjustedNormDist_T_87; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_89 = intAsRawFloat_extAbsIn[26] ? 6'h25 :
    _intAsRawFloat_adjustedNormDist_T_88; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_90 = intAsRawFloat_extAbsIn[27] ? 6'h24 :
    _intAsRawFloat_adjustedNormDist_T_89; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_91 = intAsRawFloat_extAbsIn[28] ? 6'h23 :
    _intAsRawFloat_adjustedNormDist_T_90; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_92 = intAsRawFloat_extAbsIn[29] ? 6'h22 :
    _intAsRawFloat_adjustedNormDist_T_91; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_93 = intAsRawFloat_extAbsIn[30] ? 6'h21 :
    _intAsRawFloat_adjustedNormDist_T_92; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_94 = intAsRawFloat_extAbsIn[31] ? 6'h20 :
    _intAsRawFloat_adjustedNormDist_T_93; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_95 = intAsRawFloat_extAbsIn[32] ? 6'h1f :
    _intAsRawFloat_adjustedNormDist_T_94; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_96 = intAsRawFloat_extAbsIn[33] ? 6'h1e :
    _intAsRawFloat_adjustedNormDist_T_95; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_97 = intAsRawFloat_extAbsIn[34] ? 6'h1d :
    _intAsRawFloat_adjustedNormDist_T_96; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_98 = intAsRawFloat_extAbsIn[35] ? 6'h1c :
    _intAsRawFloat_adjustedNormDist_T_97; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_99 = intAsRawFloat_extAbsIn[36] ? 6'h1b :
    _intAsRawFloat_adjustedNormDist_T_98; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_100 = intAsRawFloat_extAbsIn[37] ? 6'h1a :
    _intAsRawFloat_adjustedNormDist_T_99; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_101 = intAsRawFloat_extAbsIn[38] ? 6'h19 :
    _intAsRawFloat_adjustedNormDist_T_100; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_102 = intAsRawFloat_extAbsIn[39] ? 6'h18 :
    _intAsRawFloat_adjustedNormDist_T_101; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_103 = intAsRawFloat_extAbsIn[40] ? 6'h17 :
    _intAsRawFloat_adjustedNormDist_T_102; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_104 = intAsRawFloat_extAbsIn[41] ? 6'h16 :
    _intAsRawFloat_adjustedNormDist_T_103; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_105 = intAsRawFloat_extAbsIn[42] ? 6'h15 :
    _intAsRawFloat_adjustedNormDist_T_104; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_106 = intAsRawFloat_extAbsIn[43] ? 6'h14 :
    _intAsRawFloat_adjustedNormDist_T_105; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_107 = intAsRawFloat_extAbsIn[44] ? 6'h13 :
    _intAsRawFloat_adjustedNormDist_T_106; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_108 = intAsRawFloat_extAbsIn[45] ? 6'h12 :
    _intAsRawFloat_adjustedNormDist_T_107; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_109 = intAsRawFloat_extAbsIn[46] ? 6'h11 :
    _intAsRawFloat_adjustedNormDist_T_108; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_110 = intAsRawFloat_extAbsIn[47] ? 6'h10 :
    _intAsRawFloat_adjustedNormDist_T_109; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_111 = intAsRawFloat_extAbsIn[48] ? 6'hf :
    _intAsRawFloat_adjustedNormDist_T_110; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_112 = intAsRawFloat_extAbsIn[49] ? 6'he :
    _intAsRawFloat_adjustedNormDist_T_111; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_113 = intAsRawFloat_extAbsIn[50] ? 6'hd :
    _intAsRawFloat_adjustedNormDist_T_112; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_114 = intAsRawFloat_extAbsIn[51] ? 6'hc :
    _intAsRawFloat_adjustedNormDist_T_113; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_115 = intAsRawFloat_extAbsIn[52] ? 6'hb :
    _intAsRawFloat_adjustedNormDist_T_114; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_116 = intAsRawFloat_extAbsIn[53] ? 6'ha :
    _intAsRawFloat_adjustedNormDist_T_115; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_117 = intAsRawFloat_extAbsIn[54] ? 6'h9 :
    _intAsRawFloat_adjustedNormDist_T_116; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_118 = intAsRawFloat_extAbsIn[55] ? 6'h8 :
    _intAsRawFloat_adjustedNormDist_T_117; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_119 = intAsRawFloat_extAbsIn[56] ? 6'h7 :
    _intAsRawFloat_adjustedNormDist_T_118; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_120 = intAsRawFloat_extAbsIn[57] ? 6'h6 :
    _intAsRawFloat_adjustedNormDist_T_119; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_121 = intAsRawFloat_extAbsIn[58] ? 6'h5 :
    _intAsRawFloat_adjustedNormDist_T_120; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_122 = intAsRawFloat_extAbsIn[59] ? 6'h4 :
    _intAsRawFloat_adjustedNormDist_T_121; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_123 = intAsRawFloat_extAbsIn[60] ? 6'h3 :
    _intAsRawFloat_adjustedNormDist_T_122; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_124 = intAsRawFloat_extAbsIn[61] ? 6'h2 :
    _intAsRawFloat_adjustedNormDist_T_123; // @[Mux.scala 47:69]
  wire [5:0] _intAsRawFloat_adjustedNormDist_T_125 = intAsRawFloat_extAbsIn[62] ? 6'h1 :
    _intAsRawFloat_adjustedNormDist_T_124; // @[Mux.scala 47:69]
  wire [5:0] intAsRawFloat_adjustedNormDist = intAsRawFloat_extAbsIn[63] ? 6'h0 : _intAsRawFloat_adjustedNormDist_T_125; // @[Mux.scala 47:69]
  wire [126:0] _GEN_0 = {{63'd0}, intAsRawFloat_extAbsIn}; // @[rawFloatFromIN.scala 55:22]
  wire [126:0] _intAsRawFloat_sig_T = _GEN_0 << intAsRawFloat_adjustedNormDist; // @[rawFloatFromIN.scala 55:22]
  wire [63:0] intAsRawFloat_sig = _intAsRawFloat_sig_T[63:0]; // @[rawFloatFromIN.scala 55:41]
  wire [5:0] intAsRawFloat_intAsRawFloat_sExp_left = ~intAsRawFloat_adjustedNormDist; // @[rawFloatFromIN.scala 63:39]
  wire [7:0] _intAsRawFloat_intAsRawFloat_sExp_T_1 = {2'h2,intAsRawFloat_intAsRawFloat_sExp_left}; // @[Cat.scala 29:58]
  RoundAnyRawFNToRecFN_2 roundAnyRawFNToRecFN ( // @[INToRecFN.scala 59:15]
    .io_in_isZero(roundAnyRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundAnyRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundAnyRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundAnyRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundAnyRawFNToRecFN_io_roundingMode),
    .io_out(roundAnyRawFNToRecFN_io_out),
    .io_exceptionFlags(roundAnyRawFNToRecFN_io_exceptionFlags)
  );
  assign io_out = roundAnyRawFNToRecFN_io_out; // @[INToRecFN.scala 72:23]
  assign io_exceptionFlags = roundAnyRawFNToRecFN_io_exceptionFlags; // @[INToRecFN.scala 73:23]
  assign roundAnyRawFNToRecFN_io_in_isZero = ~(intAsRawFloat_sig[63]); // @[rawFloatFromIN.scala 61:23]
  assign roundAnyRawFNToRecFN_io_in_sign = io_signedIn & (io_in[63]); // @[rawFloatFromIN.scala 50:29]
  assign roundAnyRawFNToRecFN_io_in_sExp = {1'b0,$signed(_intAsRawFloat_intAsRawFloat_sExp_T_1)}; // @[rawFloatFromIN.scala 63:75]
  assign roundAnyRawFNToRecFN_io_in_sig = {{1'd0}, intAsRawFloat_sig}; // @[rawFloatFromIN.scala 58:23 rawFloatFromIN.scala 64:20]
  assign roundAnyRawFNToRecFN_io_roundingMode = io_roundingMode; // @[INToRecFN.scala 70:44]
endmodule
