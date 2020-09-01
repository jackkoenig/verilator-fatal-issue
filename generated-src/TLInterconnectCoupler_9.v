module TLInterconnectCoupler_9(
  input         clock,
  input         reset,
  input         auto_fragmenter_out_a_ready,
  output        auto_fragmenter_out_a_valid,
  output [2:0]  auto_fragmenter_out_a_bits_opcode,
  output [1:0]  auto_fragmenter_out_a_bits_size,
  output [8:0]  auto_fragmenter_out_a_bits_source,
  output [11:0] auto_fragmenter_out_a_bits_address,
  output [7:0]  auto_fragmenter_out_a_bits_mask,
  output [63:0] auto_fragmenter_out_a_bits_data,
  output        auto_fragmenter_out_d_ready,
  input         auto_fragmenter_out_d_valid,
  input  [2:0]  auto_fragmenter_out_d_bits_opcode,
  input  [1:0]  auto_fragmenter_out_d_bits_size,
  input  [8:0]  auto_fragmenter_out_d_bits_source,
  input  [63:0] auto_fragmenter_out_d_bits_data,
  output        auto_tl_in_a_ready,
  input         auto_tl_in_a_valid,
  input  [2:0]  auto_tl_in_a_bits_opcode,
  input  [2:0]  auto_tl_in_a_bits_size,
  input  [4:0]  auto_tl_in_a_bits_source,
  input  [11:0] auto_tl_in_a_bits_address,
  input  [7:0]  auto_tl_in_a_bits_mask,
  input  [63:0] auto_tl_in_a_bits_data,
  input         auto_tl_in_d_ready,
  output        auto_tl_in_d_valid,
  output [2:0]  auto_tl_in_d_bits_opcode,
  output [2:0]  auto_tl_in_d_bits_size,
  output [4:0]  auto_tl_in_d_bits_source,
  output [63:0] auto_tl_in_d_bits_data
);
  wire  fragmenter_clock; // @[Fragmenter.scala 333:34]
  wire  fragmenter_reset; // @[Fragmenter.scala 333:34]
  wire  fragmenter_auto_in_a_ready; // @[Fragmenter.scala 333:34]
  wire  fragmenter_auto_in_a_valid; // @[Fragmenter.scala 333:34]
  wire [2:0] fragmenter_auto_in_a_bits_opcode; // @[Fragmenter.scala 333:34]
  wire [2:0] fragmenter_auto_in_a_bits_size; // @[Fragmenter.scala 333:34]
  wire [4:0] fragmenter_auto_in_a_bits_source; // @[Fragmenter.scala 333:34]
  wire [11:0] fragmenter_auto_in_a_bits_address; // @[Fragmenter.scala 333:34]
  wire [7:0] fragmenter_auto_in_a_bits_mask; // @[Fragmenter.scala 333:34]
  wire [63:0] fragmenter_auto_in_a_bits_data; // @[Fragmenter.scala 333:34]
  wire  fragmenter_auto_in_d_ready; // @[Fragmenter.scala 333:34]
  wire  fragmenter_auto_in_d_valid; // @[Fragmenter.scala 333:34]
  wire [2:0] fragmenter_auto_in_d_bits_opcode; // @[Fragmenter.scala 333:34]
  wire [2:0] fragmenter_auto_in_d_bits_size; // @[Fragmenter.scala 333:34]
  wire [4:0] fragmenter_auto_in_d_bits_source; // @[Fragmenter.scala 333:34]
  wire [63:0] fragmenter_auto_in_d_bits_data; // @[Fragmenter.scala 333:34]
  wire  fragmenter_auto_out_a_ready; // @[Fragmenter.scala 333:34]
  wire  fragmenter_auto_out_a_valid; // @[Fragmenter.scala 333:34]
  wire [2:0] fragmenter_auto_out_a_bits_opcode; // @[Fragmenter.scala 333:34]
  wire [1:0] fragmenter_auto_out_a_bits_size; // @[Fragmenter.scala 333:34]
  wire [8:0] fragmenter_auto_out_a_bits_source; // @[Fragmenter.scala 333:34]
  wire [11:0] fragmenter_auto_out_a_bits_address; // @[Fragmenter.scala 333:34]
  wire [7:0] fragmenter_auto_out_a_bits_mask; // @[Fragmenter.scala 333:34]
  wire [63:0] fragmenter_auto_out_a_bits_data; // @[Fragmenter.scala 333:34]
  wire  fragmenter_auto_out_d_ready; // @[Fragmenter.scala 333:34]
  wire  fragmenter_auto_out_d_valid; // @[Fragmenter.scala 333:34]
  wire [2:0] fragmenter_auto_out_d_bits_opcode; // @[Fragmenter.scala 333:34]
  wire [1:0] fragmenter_auto_out_d_bits_size; // @[Fragmenter.scala 333:34]
  wire [8:0] fragmenter_auto_out_d_bits_source; // @[Fragmenter.scala 333:34]
  wire [63:0] fragmenter_auto_out_d_bits_data; // @[Fragmenter.scala 333:34]
  TLFragmenter_2 fragmenter ( // @[Fragmenter.scala 333:34]
    .clock(fragmenter_clock),
    .reset(fragmenter_reset),
    .auto_in_a_ready(fragmenter_auto_in_a_ready),
    .auto_in_a_valid(fragmenter_auto_in_a_valid),
    .auto_in_a_bits_opcode(fragmenter_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(fragmenter_auto_in_a_bits_size),
    .auto_in_a_bits_source(fragmenter_auto_in_a_bits_source),
    .auto_in_a_bits_address(fragmenter_auto_in_a_bits_address),
    .auto_in_a_bits_mask(fragmenter_auto_in_a_bits_mask),
    .auto_in_a_bits_data(fragmenter_auto_in_a_bits_data),
    .auto_in_d_ready(fragmenter_auto_in_d_ready),
    .auto_in_d_valid(fragmenter_auto_in_d_valid),
    .auto_in_d_bits_opcode(fragmenter_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(fragmenter_auto_in_d_bits_size),
    .auto_in_d_bits_source(fragmenter_auto_in_d_bits_source),
    .auto_in_d_bits_data(fragmenter_auto_in_d_bits_data),
    .auto_out_a_ready(fragmenter_auto_out_a_ready),
    .auto_out_a_valid(fragmenter_auto_out_a_valid),
    .auto_out_a_bits_opcode(fragmenter_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(fragmenter_auto_out_a_bits_size),
    .auto_out_a_bits_source(fragmenter_auto_out_a_bits_source),
    .auto_out_a_bits_address(fragmenter_auto_out_a_bits_address),
    .auto_out_a_bits_mask(fragmenter_auto_out_a_bits_mask),
    .auto_out_a_bits_data(fragmenter_auto_out_a_bits_data),
    .auto_out_d_ready(fragmenter_auto_out_d_ready),
    .auto_out_d_valid(fragmenter_auto_out_d_valid),
    .auto_out_d_bits_opcode(fragmenter_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(fragmenter_auto_out_d_bits_size),
    .auto_out_d_bits_source(fragmenter_auto_out_d_bits_source),
    .auto_out_d_bits_data(fragmenter_auto_out_d_bits_data)
  );
  assign auto_fragmenter_out_a_valid = fragmenter_auto_out_a_valid; // @[LazyModule.scala 314:12]
  assign auto_fragmenter_out_a_bits_opcode = fragmenter_auto_out_a_bits_opcode; // @[LazyModule.scala 314:12]
  assign auto_fragmenter_out_a_bits_size = fragmenter_auto_out_a_bits_size; // @[LazyModule.scala 314:12]
  assign auto_fragmenter_out_a_bits_source = fragmenter_auto_out_a_bits_source; // @[LazyModule.scala 314:12]
  assign auto_fragmenter_out_a_bits_address = fragmenter_auto_out_a_bits_address; // @[LazyModule.scala 314:12]
  assign auto_fragmenter_out_a_bits_mask = fragmenter_auto_out_a_bits_mask; // @[LazyModule.scala 314:12]
  assign auto_fragmenter_out_a_bits_data = fragmenter_auto_out_a_bits_data; // @[LazyModule.scala 314:12]
  assign auto_fragmenter_out_d_ready = fragmenter_auto_out_d_ready; // @[LazyModule.scala 314:12]
  assign auto_tl_in_a_ready = fragmenter_auto_in_a_ready; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign auto_tl_in_d_valid = fragmenter_auto_in_d_valid; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign auto_tl_in_d_bits_opcode = fragmenter_auto_in_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign auto_tl_in_d_bits_size = fragmenter_auto_in_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign auto_tl_in_d_bits_source = fragmenter_auto_in_d_bits_source; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign auto_tl_in_d_bits_data = fragmenter_auto_in_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign fragmenter_clock = clock;
  assign fragmenter_reset = reset;
  assign fragmenter_auto_in_a_valid = auto_tl_in_a_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign fragmenter_auto_in_a_bits_opcode = auto_tl_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign fragmenter_auto_in_a_bits_size = auto_tl_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign fragmenter_auto_in_a_bits_source = auto_tl_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign fragmenter_auto_in_a_bits_address = auto_tl_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign fragmenter_auto_in_a_bits_mask = auto_tl_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign fragmenter_auto_in_a_bits_data = auto_tl_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign fragmenter_auto_in_d_ready = auto_tl_in_d_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign fragmenter_auto_out_a_ready = auto_fragmenter_out_a_ready; // @[LazyModule.scala 314:12]
  assign fragmenter_auto_out_d_valid = auto_fragmenter_out_d_valid; // @[LazyModule.scala 314:12]
  assign fragmenter_auto_out_d_bits_opcode = auto_fragmenter_out_d_bits_opcode; // @[LazyModule.scala 314:12]
  assign fragmenter_auto_out_d_bits_size = auto_fragmenter_out_d_bits_size; // @[LazyModule.scala 314:12]
  assign fragmenter_auto_out_d_bits_source = auto_fragmenter_out_d_bits_source; // @[LazyModule.scala 314:12]
  assign fragmenter_auto_out_d_bits_data = auto_fragmenter_out_d_bits_data; // @[LazyModule.scala 314:12]
endmodule
