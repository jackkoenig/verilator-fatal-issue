module IntSyncCrossingSource_2(
  input   clock,
  input   reset,
  input   auto_in_0,
  input   auto_in_1,
  output  auto_out_sync_0,
  output  auto_out_sync_1
);
  wire  reg__clock; // @[AsyncResetReg.scala 89:21]
  wire  reg__reset; // @[AsyncResetReg.scala 89:21]
  wire [1:0] reg__io_d; // @[AsyncResetReg.scala 89:21]
  wire [1:0] reg__io_q; // @[AsyncResetReg.scala 89:21]
  AsyncResetRegVec_w2_i0 reg_ ( // @[AsyncResetReg.scala 89:21]
    .clock(reg__clock),
    .reset(reg__reset),
    .io_d(reg__io_d),
    .io_q(reg__io_q)
  );
  assign auto_out_sync_0 = reg__io_q[0]; // @[Crossing.scala 41:52]
  assign auto_out_sync_1 = reg__io_q[1]; // @[Crossing.scala 41:52]
  assign reg__clock = clock;
  assign reg__reset = reset;
  assign reg__io_d = {auto_in_1,auto_in_0}; // @[Cat.scala 29:58]
endmodule
