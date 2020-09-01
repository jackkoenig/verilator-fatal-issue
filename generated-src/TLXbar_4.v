module TLXbar_4(
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [2:0]  auto_in_a_bits_param,
  input  [3:0]  auto_in_a_bits_size,
  input  [4:0]  auto_in_a_bits_source,
  input  [27:0] auto_in_a_bits_address,
  input  [7:0]  auto_in_a_bits_mask,
  input  [63:0] auto_in_a_bits_data,
  input         auto_in_a_bits_corrupt,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output [2:0]  auto_in_d_bits_opcode,
  output [1:0]  auto_in_d_bits_param,
  output [3:0]  auto_in_d_bits_size,
  output [4:0]  auto_in_d_bits_source,
  output        auto_in_d_bits_sink,
  output        auto_in_d_bits_denied,
  output [63:0] auto_in_d_bits_data,
  output        auto_in_d_bits_corrupt,
  input         auto_out_a_ready,
  output        auto_out_a_valid,
  output [2:0]  auto_out_a_bits_opcode,
  output [2:0]  auto_out_a_bits_param,
  output [3:0]  auto_out_a_bits_size,
  output [4:0]  auto_out_a_bits_source,
  output [27:0] auto_out_a_bits_address,
  output [7:0]  auto_out_a_bits_mask,
  output [63:0] auto_out_a_bits_data,
  output        auto_out_a_bits_corrupt,
  output        auto_out_d_ready,
  input         auto_out_d_valid,
  input  [2:0]  auto_out_d_bits_opcode,
  input  [1:0]  auto_out_d_bits_param,
  input  [3:0]  auto_out_d_bits_size,
  input  [4:0]  auto_out_d_bits_source,
  input         auto_out_d_bits_sink,
  input         auto_out_d_bits_denied,
  input  [63:0] auto_out_d_bits_data,
  input         auto_out_d_bits_corrupt
);
  assign auto_in_a_ready = auto_out_a_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_d_valid = auto_out_d_valid; // @[ReadyValidCancel.scala 23:38]
  assign auto_in_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_d_bits_param = auto_out_d_bits_param; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_d_bits_source = auto_out_d_bits_source; // @[Xbar.scala 228:69]
  assign auto_in_d_bits_sink = auto_out_d_bits_sink; // @[Xbar.scala 323:53]
  assign auto_in_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_d_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_d_bits_corrupt = auto_out_d_bits_corrupt; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_out_a_valid = auto_in_a_valid; // @[ReadyValidCancel.scala 23:38]
  assign auto_out_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_a_bits_source = auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign auto_out_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_d_ready = auto_in_d_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
endmodule
