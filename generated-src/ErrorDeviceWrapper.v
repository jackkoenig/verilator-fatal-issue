module ErrorDeviceWrapper(
  input         clock,
  input         reset,
  output        auto_buffer_in_a_ready,
  input         auto_buffer_in_a_valid,
  input  [2:0]  auto_buffer_in_a_bits_opcode,
  input  [3:0]  auto_buffer_in_a_bits_size,
  input  [4:0]  auto_buffer_in_a_bits_source,
  input         auto_buffer_in_d_ready,
  output        auto_buffer_in_d_valid,
  output [2:0]  auto_buffer_in_d_bits_opcode,
  output [1:0]  auto_buffer_in_d_bits_param,
  output [3:0]  auto_buffer_in_d_bits_size,
  output [4:0]  auto_buffer_in_d_bits_source,
  output        auto_buffer_in_d_bits_sink,
  output        auto_buffer_in_d_bits_denied,
  output [63:0] auto_buffer_in_d_bits_data,
  output        auto_buffer_in_d_bits_corrupt
);
  wire  error_clock; // @[CanHaveBuiltInDevices.scala 29:29]
  wire  error_reset; // @[CanHaveBuiltInDevices.scala 29:29]
  wire  error_auto_in_a_ready; // @[CanHaveBuiltInDevices.scala 29:29]
  wire  error_auto_in_a_valid; // @[CanHaveBuiltInDevices.scala 29:29]
  wire [2:0] error_auto_in_a_bits_opcode; // @[CanHaveBuiltInDevices.scala 29:29]
  wire [3:0] error_auto_in_a_bits_size; // @[CanHaveBuiltInDevices.scala 29:29]
  wire [4:0] error_auto_in_a_bits_source; // @[CanHaveBuiltInDevices.scala 29:29]
  wire  error_auto_in_d_ready; // @[CanHaveBuiltInDevices.scala 29:29]
  wire  error_auto_in_d_valid; // @[CanHaveBuiltInDevices.scala 29:29]
  wire [2:0] error_auto_in_d_bits_opcode; // @[CanHaveBuiltInDevices.scala 29:29]
  wire [3:0] error_auto_in_d_bits_size; // @[CanHaveBuiltInDevices.scala 29:29]
  wire [4:0] error_auto_in_d_bits_source; // @[CanHaveBuiltInDevices.scala 29:29]
  wire  error_auto_in_d_bits_corrupt; // @[CanHaveBuiltInDevices.scala 29:29]
  wire  buffer_clock; // @[Buffer.scala 69:28]
  wire  buffer_reset; // @[Buffer.scala 69:28]
  wire  buffer_auto_in_a_ready; // @[Buffer.scala 69:28]
  wire  buffer_auto_in_a_valid; // @[Buffer.scala 69:28]
  wire [2:0] buffer_auto_in_a_bits_opcode; // @[Buffer.scala 69:28]
  wire [3:0] buffer_auto_in_a_bits_size; // @[Buffer.scala 69:28]
  wire [4:0] buffer_auto_in_a_bits_source; // @[Buffer.scala 69:28]
  wire  buffer_auto_in_d_ready; // @[Buffer.scala 69:28]
  wire  buffer_auto_in_d_valid; // @[Buffer.scala 69:28]
  wire [2:0] buffer_auto_in_d_bits_opcode; // @[Buffer.scala 69:28]
  wire [1:0] buffer_auto_in_d_bits_param; // @[Buffer.scala 69:28]
  wire [3:0] buffer_auto_in_d_bits_size; // @[Buffer.scala 69:28]
  wire [4:0] buffer_auto_in_d_bits_source; // @[Buffer.scala 69:28]
  wire  buffer_auto_in_d_bits_sink; // @[Buffer.scala 69:28]
  wire  buffer_auto_in_d_bits_denied; // @[Buffer.scala 69:28]
  wire [63:0] buffer_auto_in_d_bits_data; // @[Buffer.scala 69:28]
  wire  buffer_auto_in_d_bits_corrupt; // @[Buffer.scala 69:28]
  wire  buffer_auto_out_a_ready; // @[Buffer.scala 69:28]
  wire  buffer_auto_out_a_valid; // @[Buffer.scala 69:28]
  wire [2:0] buffer_auto_out_a_bits_opcode; // @[Buffer.scala 69:28]
  wire [3:0] buffer_auto_out_a_bits_size; // @[Buffer.scala 69:28]
  wire [4:0] buffer_auto_out_a_bits_source; // @[Buffer.scala 69:28]
  wire  buffer_auto_out_d_ready; // @[Buffer.scala 69:28]
  wire  buffer_auto_out_d_valid; // @[Buffer.scala 69:28]
  wire [2:0] buffer_auto_out_d_bits_opcode; // @[Buffer.scala 69:28]
  wire [3:0] buffer_auto_out_d_bits_size; // @[Buffer.scala 69:28]
  wire [4:0] buffer_auto_out_d_bits_source; // @[Buffer.scala 69:28]
  wire  buffer_auto_out_d_bits_corrupt; // @[Buffer.scala 69:28]
  TLError error ( // @[CanHaveBuiltInDevices.scala 29:29]
    .clock(error_clock),
    .reset(error_reset),
    .auto_in_a_ready(error_auto_in_a_ready),
    .auto_in_a_valid(error_auto_in_a_valid),
    .auto_in_a_bits_opcode(error_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(error_auto_in_a_bits_size),
    .auto_in_a_bits_source(error_auto_in_a_bits_source),
    .auto_in_d_ready(error_auto_in_d_ready),
    .auto_in_d_valid(error_auto_in_d_valid),
    .auto_in_d_bits_opcode(error_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(error_auto_in_d_bits_size),
    .auto_in_d_bits_source(error_auto_in_d_bits_source),
    .auto_in_d_bits_corrupt(error_auto_in_d_bits_corrupt)
  );
  TLBuffer_5 buffer ( // @[Buffer.scala 69:28]
    .clock(buffer_clock),
    .reset(buffer_reset),
    .auto_in_a_ready(buffer_auto_in_a_ready),
    .auto_in_a_valid(buffer_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffer_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(buffer_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffer_auto_in_a_bits_source),
    .auto_in_d_ready(buffer_auto_in_d_ready),
    .auto_in_d_valid(buffer_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffer_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(buffer_auto_in_d_bits_param),
    .auto_in_d_bits_size(buffer_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffer_auto_in_d_bits_source),
    .auto_in_d_bits_sink(buffer_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(buffer_auto_in_d_bits_denied),
    .auto_in_d_bits_data(buffer_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(buffer_auto_in_d_bits_corrupt),
    .auto_out_a_ready(buffer_auto_out_a_ready),
    .auto_out_a_valid(buffer_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffer_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(buffer_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffer_auto_out_a_bits_source),
    .auto_out_d_ready(buffer_auto_out_d_ready),
    .auto_out_d_valid(buffer_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffer_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffer_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffer_auto_out_d_bits_source),
    .auto_out_d_bits_corrupt(buffer_auto_out_d_bits_corrupt)
  );
  assign auto_buffer_in_a_ready = buffer_auto_in_a_ready; // @[LazyModule.scala 312:16]
  assign auto_buffer_in_d_valid = buffer_auto_in_d_valid; // @[LazyModule.scala 312:16]
  assign auto_buffer_in_d_bits_opcode = buffer_auto_in_d_bits_opcode; // @[LazyModule.scala 312:16]
  assign auto_buffer_in_d_bits_param = buffer_auto_in_d_bits_param; // @[LazyModule.scala 312:16]
  assign auto_buffer_in_d_bits_size = buffer_auto_in_d_bits_size; // @[LazyModule.scala 312:16]
  assign auto_buffer_in_d_bits_source = buffer_auto_in_d_bits_source; // @[LazyModule.scala 312:16]
  assign auto_buffer_in_d_bits_sink = buffer_auto_in_d_bits_sink; // @[LazyModule.scala 312:16]
  assign auto_buffer_in_d_bits_denied = buffer_auto_in_d_bits_denied; // @[LazyModule.scala 312:16]
  assign auto_buffer_in_d_bits_data = buffer_auto_in_d_bits_data; // @[LazyModule.scala 312:16]
  assign auto_buffer_in_d_bits_corrupt = buffer_auto_in_d_bits_corrupt; // @[LazyModule.scala 312:16]
  assign error_clock = clock;
  assign error_reset = reset;
  assign error_auto_in_a_valid = buffer_auto_out_a_valid; // @[LazyModule.scala 299:16]
  assign error_auto_in_a_bits_opcode = buffer_auto_out_a_bits_opcode; // @[LazyModule.scala 299:16]
  assign error_auto_in_a_bits_size = buffer_auto_out_a_bits_size; // @[LazyModule.scala 299:16]
  assign error_auto_in_a_bits_source = buffer_auto_out_a_bits_source; // @[LazyModule.scala 299:16]
  assign error_auto_in_d_ready = buffer_auto_out_d_ready; // @[LazyModule.scala 299:16]
  assign buffer_clock = clock;
  assign buffer_reset = reset;
  assign buffer_auto_in_a_valid = auto_buffer_in_a_valid; // @[LazyModule.scala 312:16]
  assign buffer_auto_in_a_bits_opcode = auto_buffer_in_a_bits_opcode; // @[LazyModule.scala 312:16]
  assign buffer_auto_in_a_bits_size = auto_buffer_in_a_bits_size; // @[LazyModule.scala 312:16]
  assign buffer_auto_in_a_bits_source = auto_buffer_in_a_bits_source; // @[LazyModule.scala 312:16]
  assign buffer_auto_in_d_ready = auto_buffer_in_d_ready; // @[LazyModule.scala 312:16]
  assign buffer_auto_out_a_ready = error_auto_in_a_ready; // @[LazyModule.scala 299:16]
  assign buffer_auto_out_d_valid = error_auto_in_d_valid; // @[LazyModule.scala 299:16]
  assign buffer_auto_out_d_bits_opcode = error_auto_in_d_bits_opcode; // @[LazyModule.scala 299:16]
  assign buffer_auto_out_d_bits_size = error_auto_in_d_bits_size; // @[LazyModule.scala 299:16]
  assign buffer_auto_out_d_bits_source = error_auto_in_d_bits_source; // @[LazyModule.scala 299:16]
  assign buffer_auto_out_d_bits_corrupt = error_auto_in_d_bits_corrupt; // @[LazyModule.scala 299:16]
endmodule
