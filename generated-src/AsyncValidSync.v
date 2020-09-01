module AsyncValidSync(
  input   io_in,
  output  io_out,
  input   clock,
  input   reset
);
  wire  io_out_source_valid_0_clock; // @[ShiftReg.scala 45:23]
  wire  io_out_source_valid_0_reset; // @[ShiftReg.scala 45:23]
  wire  io_out_source_valid_0_io_d; // @[ShiftReg.scala 45:23]
  wire  io_out_source_valid_0_io_q; // @[ShiftReg.scala 45:23]
  AsyncResetSynchronizerShiftReg_w1_d3_i0_1 io_out_source_valid_0 ( // @[ShiftReg.scala 45:23]
    .clock(io_out_source_valid_0_clock),
    .reset(io_out_source_valid_0_reset),
    .io_d(io_out_source_valid_0_io_d),
    .io_q(io_out_source_valid_0_io_q)
  );
  assign io_out = io_out_source_valid_0_io_q; // @[ShiftReg.scala 48:24 ShiftReg.scala 48:24]
  assign io_out_source_valid_0_clock = clock;
  assign io_out_source_valid_0_reset = reset;
  assign io_out_source_valid_0_io_d = io_in; // @[ShiftReg.scala 47:16]
endmodule
