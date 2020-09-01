module IntSyncCrossingSource_3(
  input   clock,
  input   reset,
  input   auto_in_0,
  output  auto_out_sync_0
);
  wire  reg__clock; // @[AsyncResetReg.scala 89:21]
  wire  reg__reset; // @[AsyncResetReg.scala 89:21]
  wire  reg__io_d; // @[AsyncResetReg.scala 89:21]
  wire  reg__io_q; // @[AsyncResetReg.scala 89:21]
  AsyncResetRegVec_w1_i0 reg_ ( // @[AsyncResetReg.scala 89:21]
    .clock(reg__clock),
    .reset(reg__reset),
    .io_d(reg__io_d),
    .io_q(reg__io_q)
  );
  assign auto_out_sync_0 = reg__io_q; // @[Crossing.scala 41:52]
  assign reg__clock = clock;
  assign reg__reset = reset;
  assign reg__io_d = auto_in_0; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
endmodule
