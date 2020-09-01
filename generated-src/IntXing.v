module IntXing(
  input   clock,
  input   auto_int_in_0,
  input   auto_int_in_1,
  output  auto_int_out_0,
  output  auto_int_out_1
);
  wire  chain_clock; // @[ShiftReg.scala 45:23]
  wire [1:0] chain_io_d; // @[ShiftReg.scala 45:23]
  wire [1:0] chain_io_q; // @[ShiftReg.scala 45:23]
  wire [1:0] _WIRE_1 = chain_io_q;
  SynchronizerShiftReg_w2_d3 chain ( // @[ShiftReg.scala 45:23]
    .clock(chain_clock),
    .io_d(chain_io_d),
    .io_q(chain_io_q)
  );
  assign auto_int_out_0 = _WIRE_1[0]; // @[ShiftReg.scala 48:24]
  assign auto_int_out_1 = _WIRE_1[1]; // @[ShiftReg.scala 48:24]
  assign chain_clock = clock;
  assign chain_io_d = {auto_int_in_1,auto_int_in_0}; // @[ShiftReg.scala 47:22]
endmodule
