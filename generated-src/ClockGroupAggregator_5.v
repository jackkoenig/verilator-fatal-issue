module ClockGroupAggregator_5(
  input   auto_in_member_subsystem_l2_1_clock,
  input   auto_in_member_subsystem_l2_1_reset,
  input   auto_in_member_subsystem_l2_0_clock,
  input   auto_in_member_subsystem_l2_0_reset,
  output  auto_out_1_member_subsystem_mbus_0_clock,
  output  auto_out_1_member_subsystem_mbus_0_reset,
  output  auto_out_0_member_subsystem_l2_0_clock,
  output  auto_out_0_member_subsystem_l2_0_reset
);
  assign auto_out_1_member_subsystem_mbus_0_clock = auto_in_member_subsystem_l2_1_clock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_1_member_subsystem_mbus_0_reset = auto_in_member_subsystem_l2_1_reset; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_0_member_subsystem_l2_0_clock = auto_in_member_subsystem_l2_0_clock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_0_member_subsystem_l2_0_reset = auto_in_member_subsystem_l2_0_reset; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
endmodule
