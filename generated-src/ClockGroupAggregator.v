module ClockGroupAggregator(
  input   auto_in_member_subsystem_sbus_5_clock,
  input   auto_in_member_subsystem_sbus_5_reset,
  input   auto_in_member_subsystem_sbus_4_clock,
  input   auto_in_member_subsystem_sbus_4_reset,
  input   auto_in_member_subsystem_sbus_3_clock,
  input   auto_in_member_subsystem_sbus_3_reset,
  input   auto_in_member_subsystem_sbus_1_clock,
  input   auto_in_member_subsystem_sbus_1_reset,
  input   auto_in_member_subsystem_sbus_0_clock,
  input   auto_in_member_subsystem_sbus_0_reset,
  output  auto_out_3_member_subsystem_l2_1_clock,
  output  auto_out_3_member_subsystem_l2_1_reset,
  output  auto_out_3_member_subsystem_l2_0_clock,
  output  auto_out_3_member_subsystem_l2_0_reset,
  output  auto_out_2_member_subsystem_fbus_0_clock,
  output  auto_out_2_member_subsystem_fbus_0_reset,
  output  auto_out_1_member_subsystem_cbus_0_clock,
  output  auto_out_1_member_subsystem_cbus_0_reset,
  output  auto_out_0_member_subsystem_sbus_0_clock,
  output  auto_out_0_member_subsystem_sbus_0_reset
);
  assign auto_out_3_member_subsystem_l2_1_clock = auto_in_member_subsystem_sbus_5_clock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_3_member_subsystem_l2_1_reset = auto_in_member_subsystem_sbus_5_reset; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_3_member_subsystem_l2_0_clock = auto_in_member_subsystem_sbus_4_clock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_3_member_subsystem_l2_0_reset = auto_in_member_subsystem_sbus_4_reset; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_2_member_subsystem_fbus_0_clock = auto_in_member_subsystem_sbus_3_clock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_2_member_subsystem_fbus_0_reset = auto_in_member_subsystem_sbus_3_reset; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_1_member_subsystem_cbus_0_clock = auto_in_member_subsystem_sbus_1_clock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_1_member_subsystem_cbus_0_reset = auto_in_member_subsystem_sbus_1_reset; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_0_member_subsystem_sbus_0_clock = auto_in_member_subsystem_sbus_0_clock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_0_member_subsystem_sbus_0_reset = auto_in_member_subsystem_sbus_0_reset; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
endmodule
