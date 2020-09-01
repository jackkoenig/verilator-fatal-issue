module RecFNToRecFN(
  input  [64:0] io_in,
  input  [2:0]  io_roundingMode,
  output [32:0] io_out,
  output [4:0]  io_exceptionFlags
);
  wire  roundAnyRawFNToRecFN_io_invalidExc; // @[RecFNToRecFN.scala 72:19]
  wire  roundAnyRawFNToRecFN_io_in_isNaN; // @[RecFNToRecFN.scala 72:19]
  wire  roundAnyRawFNToRecFN_io_in_isInf; // @[RecFNToRecFN.scala 72:19]
  wire  roundAnyRawFNToRecFN_io_in_isZero; // @[RecFNToRecFN.scala 72:19]
  wire  roundAnyRawFNToRecFN_io_in_sign; // @[RecFNToRecFN.scala 72:19]
  wire [12:0] roundAnyRawFNToRecFN_io_in_sExp; // @[RecFNToRecFN.scala 72:19]
  wire [53:0] roundAnyRawFNToRecFN_io_in_sig; // @[RecFNToRecFN.scala 72:19]
  wire [2:0] roundAnyRawFNToRecFN_io_roundingMode; // @[RecFNToRecFN.scala 72:19]
  wire [32:0] roundAnyRawFNToRecFN_io_out; // @[RecFNToRecFN.scala 72:19]
  wire [4:0] roundAnyRawFNToRecFN_io_exceptionFlags; // @[RecFNToRecFN.scala 72:19]
  wire [11:0] rawIn_exp = io_in[63:52]; // @[rawFloatFromRecFN.scala 50:21]
  wire  rawIn_isZero = (rawIn_exp[11:9]) == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  wire  rawIn_isSpecial = (rawIn_exp[11:10]) == 2'h3; // @[rawFloatFromRecFN.scala 52:54]
  wire  rawIn__isNaN = rawIn_isSpecial & (rawIn_exp[9]); // @[rawFloatFromRecFN.scala 55:33]
  wire  rawIn_rawIn_sig_right_left = ~rawIn_isZero; // @[rawFloatFromRecFN.scala 60:39]
  wire [51:0] rawIn_rawIn_sig_left = io_in[51:0]; // @[rawFloatFromRecFN.scala 60:51]
  wire [1:0] rawIn_rawIn_sig_right = {1'h0,rawIn_rawIn_sig_right_left}; // @[Cat.scala 29:58]
  wire [53:0] rawIn__sig = {1'h0,rawIn_rawIn_sig_right_left,rawIn_rawIn_sig_left}; // @[Cat.scala 29:58]
  RoundAnyRawFNToRecFN_3 roundAnyRawFNToRecFN ( // @[RecFNToRecFN.scala 72:19]
    .io_invalidExc(roundAnyRawFNToRecFN_io_invalidExc),
    .io_in_isNaN(roundAnyRawFNToRecFN_io_in_isNaN),
    .io_in_isInf(roundAnyRawFNToRecFN_io_in_isInf),
    .io_in_isZero(roundAnyRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundAnyRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundAnyRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundAnyRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundAnyRawFNToRecFN_io_roundingMode),
    .io_out(roundAnyRawFNToRecFN_io_out),
    .io_exceptionFlags(roundAnyRawFNToRecFN_io_exceptionFlags)
  );
  assign io_out = roundAnyRawFNToRecFN_io_out; // @[RecFNToRecFN.scala 85:27]
  assign io_exceptionFlags = roundAnyRawFNToRecFN_io_exceptionFlags; // @[RecFNToRecFN.scala 86:27]
  assign roundAnyRawFNToRecFN_io_invalidExc = rawIn__isNaN & (~(rawIn__sig[51])); // @[common.scala 81:46]
  assign roundAnyRawFNToRecFN_io_in_isNaN = rawIn_isSpecial & (rawIn_exp[9]); // @[rawFloatFromRecFN.scala 55:33]
  assign roundAnyRawFNToRecFN_io_in_isInf = rawIn_isSpecial & (~(rawIn_exp[9])); // @[rawFloatFromRecFN.scala 56:33]
  assign roundAnyRawFNToRecFN_io_in_isZero = (rawIn_exp[11:9]) == 3'h0; // @[rawFloatFromRecFN.scala 51:54]
  assign roundAnyRawFNToRecFN_io_in_sign = io_in[64]; // @[rawFloatFromRecFN.scala 58:25]
  assign roundAnyRawFNToRecFN_io_in_sExp = {1'b0,$signed(rawIn_exp)}; // @[rawFloatFromRecFN.scala 59:27]
  assign roundAnyRawFNToRecFN_io_in_sig = {rawIn_rawIn_sig_right,rawIn_rawIn_sig_left}; // @[Cat.scala 29:58]
  assign roundAnyRawFNToRecFN_io_roundingMode = io_roundingMode; // @[RecFNToRecFN.scala 83:48]
endmodule
