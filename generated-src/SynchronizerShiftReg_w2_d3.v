module SynchronizerShiftReg_w2_d3(
  input        clock,
  input  [1:0] io_d,
  output [1:0] io_q
);
  wire  output_chain_clock; // @[ShiftReg.scala 45:23]
  wire  output_chain_io_d; // @[ShiftReg.scala 45:23]
  wire  output_chain_io_q; // @[ShiftReg.scala 45:23]
  wire  output_chain_1_clock; // @[ShiftReg.scala 45:23]
  wire  output_chain_1_io_d; // @[ShiftReg.scala 45:23]
  wire  output_chain_1_io_q; // @[ShiftReg.scala 45:23]
  wire  output_1 = output_chain_1_io_q; // @[ShiftReg.scala 48:24 ShiftReg.scala 48:24]
  wire  output_0 = output_chain_io_q; // @[ShiftReg.scala 48:24 ShiftReg.scala 48:24]
  NonSyncResetSynchronizerPrimitiveShiftReg_d3 output_chain ( // @[ShiftReg.scala 45:23]
    .clock(output_chain_clock),
    .io_d(output_chain_io_d),
    .io_q(output_chain_io_q)
  );
  NonSyncResetSynchronizerPrimitiveShiftReg_d3 output_chain_1 ( // @[ShiftReg.scala 45:23]
    .clock(output_chain_1_clock),
    .io_d(output_chain_1_io_d),
    .io_q(output_chain_1_io_q)
  );
  assign io_q = {output_1,output_0}; // @[Cat.scala 29:58]
  assign output_chain_clock = clock;
  assign output_chain_io_d = io_d[0]; // @[SynchronizerReg.scala 163:39]
  assign output_chain_1_clock = clock;
  assign output_chain_1_io_d = io_d[1]; // @[SynchronizerReg.scala 163:39]
endmodule
