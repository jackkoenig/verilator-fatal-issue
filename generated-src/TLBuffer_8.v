module TLBuffer_8(
  input         clock,
  input         reset,
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [2:0]  auto_in_a_bits_param,
  input  [3:0]  auto_in_a_bits_size,
  input  [1:0]  auto_in_a_bits_source,
  input  [31:0] auto_in_a_bits_address,
  input  [7:0]  auto_in_a_bits_mask,
  input  [63:0] auto_in_a_bits_data,
  input         auto_in_a_bits_corrupt,
  input         auto_in_b_ready,
  output        auto_in_b_valid,
  output [1:0]  auto_in_b_bits_param,
  output [3:0]  auto_in_b_bits_size,
  output [1:0]  auto_in_b_bits_source,
  output [31:0] auto_in_b_bits_address,
  output        auto_in_c_ready,
  input         auto_in_c_valid,
  input  [2:0]  auto_in_c_bits_opcode,
  input  [2:0]  auto_in_c_bits_param,
  input  [3:0]  auto_in_c_bits_size,
  input  [1:0]  auto_in_c_bits_source,
  input  [31:0] auto_in_c_bits_address,
  input  [63:0] auto_in_c_bits_data,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output [2:0]  auto_in_d_bits_opcode,
  output [1:0]  auto_in_d_bits_param,
  output [3:0]  auto_in_d_bits_size,
  output [1:0]  auto_in_d_bits_source,
  output [1:0]  auto_in_d_bits_sink,
  output        auto_in_d_bits_denied,
  output [63:0] auto_in_d_bits_data,
  output        auto_in_d_bits_corrupt,
  output        auto_in_e_ready,
  input         auto_in_e_valid,
  input  [1:0]  auto_in_e_bits_sink,
  input         auto_out_a_ready,
  output        auto_out_a_valid,
  output [2:0]  auto_out_a_bits_opcode,
  output [2:0]  auto_out_a_bits_param,
  output [3:0]  auto_out_a_bits_size,
  output [1:0]  auto_out_a_bits_source,
  output [31:0] auto_out_a_bits_address,
  output [7:0]  auto_out_a_bits_mask,
  output [63:0] auto_out_a_bits_data,
  output        auto_out_a_bits_corrupt,
  output        auto_out_b_ready,
  input         auto_out_b_valid,
  input  [1:0]  auto_out_b_bits_param,
  input  [31:0] auto_out_b_bits_address,
  input         auto_out_c_ready,
  output        auto_out_c_valid,
  output [2:0]  auto_out_c_bits_opcode,
  output [2:0]  auto_out_c_bits_param,
  output [3:0]  auto_out_c_bits_size,
  output [1:0]  auto_out_c_bits_source,
  output [31:0] auto_out_c_bits_address,
  output [63:0] auto_out_c_bits_data,
  output        auto_out_d_ready,
  input         auto_out_d_valid,
  input  [2:0]  auto_out_d_bits_opcode,
  input  [1:0]  auto_out_d_bits_param,
  input  [3:0]  auto_out_d_bits_size,
  input  [1:0]  auto_out_d_bits_source,
  input  [1:0]  auto_out_d_bits_sink,
  input         auto_out_d_bits_denied,
  input  [63:0] auto_out_d_bits_data,
  input         auto_out_d_bits_corrupt,
  output        auto_out_e_valid,
  output [1:0]  auto_out_e_bits_sink
);
  wire  auto_data_1_a_q_clock; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_reset; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_1_a_q_io_enq_bits_opcode; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_1_a_q_io_enq_bits_param; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_1_a_q_io_enq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_1_a_q_io_enq_bits_source; // @[Decoupled.scala 296:21]
  wire [31:0] auto_data_1_a_q_io_enq_bits_address; // @[Decoupled.scala 296:21]
  wire [7:0] auto_data_1_a_q_io_enq_bits_mask; // @[Decoupled.scala 296:21]
  wire [63:0] auto_data_1_a_q_io_enq_bits_data; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_enq_bits_corrupt; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_1_a_q_io_deq_bits_opcode; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_1_a_q_io_deq_bits_param; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_1_a_q_io_deq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_1_a_q_io_deq_bits_source; // @[Decoupled.scala 296:21]
  wire [31:0] auto_data_1_a_q_io_deq_bits_address; // @[Decoupled.scala 296:21]
  wire [7:0] auto_data_1_a_q_io_deq_bits_mask; // @[Decoupled.scala 296:21]
  wire [63:0] auto_data_1_a_q_io_deq_bits_data; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_deq_bits_corrupt; // @[Decoupled.scala 296:21]
  wire  auto_data_d_q_clock; // @[Decoupled.scala 296:21]
  wire  auto_data_d_q_reset; // @[Decoupled.scala 296:21]
  wire  auto_data_d_q_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_d_q_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_d_q_io_enq_bits_opcode; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_d_q_io_enq_bits_param; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_d_q_io_enq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_d_q_io_enq_bits_source; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_d_q_io_enq_bits_sink; // @[Decoupled.scala 296:21]
  wire  auto_data_d_q_io_enq_bits_denied; // @[Decoupled.scala 296:21]
  wire [63:0] auto_data_d_q_io_enq_bits_data; // @[Decoupled.scala 296:21]
  wire  auto_data_d_q_io_enq_bits_corrupt; // @[Decoupled.scala 296:21]
  wire  auto_data_d_q_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_d_q_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_d_q_io_deq_bits_opcode; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_d_q_io_deq_bits_param; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_d_q_io_deq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_d_q_io_deq_bits_source; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_d_q_io_deq_bits_sink; // @[Decoupled.scala 296:21]
  wire  auto_data_d_q_io_deq_bits_denied; // @[Decoupled.scala 296:21]
  wire [63:0] auto_data_d_q_io_deq_bits_data; // @[Decoupled.scala 296:21]
  wire  auto_data_d_q_io_deq_bits_corrupt; // @[Decoupled.scala 296:21]
  wire  auto_data_b_q_clock; // @[Decoupled.scala 296:21]
  wire  auto_data_b_q_reset; // @[Decoupled.scala 296:21]
  wire  auto_data_b_q_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_b_q_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_b_q_io_enq_bits_param; // @[Decoupled.scala 296:21]
  wire [31:0] auto_data_b_q_io_enq_bits_address; // @[Decoupled.scala 296:21]
  wire  auto_data_b_q_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_b_q_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_b_q_io_deq_bits_param; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_b_q_io_deq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_b_q_io_deq_bits_source; // @[Decoupled.scala 296:21]
  wire [31:0] auto_data_b_q_io_deq_bits_address; // @[Decoupled.scala 296:21]
  wire  auto_data_1_c_q_clock; // @[Decoupled.scala 296:21]
  wire  auto_data_1_c_q_reset; // @[Decoupled.scala 296:21]
  wire  auto_data_1_c_q_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_1_c_q_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_1_c_q_io_enq_bits_opcode; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_1_c_q_io_enq_bits_param; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_1_c_q_io_enq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_1_c_q_io_enq_bits_source; // @[Decoupled.scala 296:21]
  wire [31:0] auto_data_1_c_q_io_enq_bits_address; // @[Decoupled.scala 296:21]
  wire [63:0] auto_data_1_c_q_io_enq_bits_data; // @[Decoupled.scala 296:21]
  wire  auto_data_1_c_q_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_1_c_q_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_1_c_q_io_deq_bits_opcode; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_1_c_q_io_deq_bits_param; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_1_c_q_io_deq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_1_c_q_io_deq_bits_source; // @[Decoupled.scala 296:21]
  wire [31:0] auto_data_1_c_q_io_deq_bits_address; // @[Decoupled.scala 296:21]
  wire [63:0] auto_data_1_c_q_io_deq_bits_data; // @[Decoupled.scala 296:21]
  wire  auto_data_1_e_q_clock; // @[Decoupled.scala 296:21]
  wire  auto_data_1_e_q_reset; // @[Decoupled.scala 296:21]
  wire  auto_data_1_e_q_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_1_e_q_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_1_e_q_io_enq_bits_sink; // @[Decoupled.scala 296:21]
  wire  auto_data_1_e_q_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_1_e_q_io_deq_bits_sink; // @[Decoupled.scala 296:21]
  Queue_32 auto_data_1_a_q ( // @[Decoupled.scala 296:21]
    .clock(auto_data_1_a_q_clock),
    .reset(auto_data_1_a_q_reset),
    .io_enq_ready(auto_data_1_a_q_io_enq_ready),
    .io_enq_valid(auto_data_1_a_q_io_enq_valid),
    .io_enq_bits_opcode(auto_data_1_a_q_io_enq_bits_opcode),
    .io_enq_bits_param(auto_data_1_a_q_io_enq_bits_param),
    .io_enq_bits_size(auto_data_1_a_q_io_enq_bits_size),
    .io_enq_bits_source(auto_data_1_a_q_io_enq_bits_source),
    .io_enq_bits_address(auto_data_1_a_q_io_enq_bits_address),
    .io_enq_bits_mask(auto_data_1_a_q_io_enq_bits_mask),
    .io_enq_bits_data(auto_data_1_a_q_io_enq_bits_data),
    .io_enq_bits_corrupt(auto_data_1_a_q_io_enq_bits_corrupt),
    .io_deq_ready(auto_data_1_a_q_io_deq_ready),
    .io_deq_valid(auto_data_1_a_q_io_deq_valid),
    .io_deq_bits_opcode(auto_data_1_a_q_io_deq_bits_opcode),
    .io_deq_bits_param(auto_data_1_a_q_io_deq_bits_param),
    .io_deq_bits_size(auto_data_1_a_q_io_deq_bits_size),
    .io_deq_bits_source(auto_data_1_a_q_io_deq_bits_source),
    .io_deq_bits_address(auto_data_1_a_q_io_deq_bits_address),
    .io_deq_bits_mask(auto_data_1_a_q_io_deq_bits_mask),
    .io_deq_bits_data(auto_data_1_a_q_io_deq_bits_data),
    .io_deq_bits_corrupt(auto_data_1_a_q_io_deq_bits_corrupt)
  );
  Queue_33 auto_data_d_q ( // @[Decoupled.scala 296:21]
    .clock(auto_data_d_q_clock),
    .reset(auto_data_d_q_reset),
    .io_enq_ready(auto_data_d_q_io_enq_ready),
    .io_enq_valid(auto_data_d_q_io_enq_valid),
    .io_enq_bits_opcode(auto_data_d_q_io_enq_bits_opcode),
    .io_enq_bits_param(auto_data_d_q_io_enq_bits_param),
    .io_enq_bits_size(auto_data_d_q_io_enq_bits_size),
    .io_enq_bits_source(auto_data_d_q_io_enq_bits_source),
    .io_enq_bits_sink(auto_data_d_q_io_enq_bits_sink),
    .io_enq_bits_denied(auto_data_d_q_io_enq_bits_denied),
    .io_enq_bits_data(auto_data_d_q_io_enq_bits_data),
    .io_enq_bits_corrupt(auto_data_d_q_io_enq_bits_corrupt),
    .io_deq_ready(auto_data_d_q_io_deq_ready),
    .io_deq_valid(auto_data_d_q_io_deq_valid),
    .io_deq_bits_opcode(auto_data_d_q_io_deq_bits_opcode),
    .io_deq_bits_param(auto_data_d_q_io_deq_bits_param),
    .io_deq_bits_size(auto_data_d_q_io_deq_bits_size),
    .io_deq_bits_source(auto_data_d_q_io_deq_bits_source),
    .io_deq_bits_sink(auto_data_d_q_io_deq_bits_sink),
    .io_deq_bits_denied(auto_data_d_q_io_deq_bits_denied),
    .io_deq_bits_data(auto_data_d_q_io_deq_bits_data),
    .io_deq_bits_corrupt(auto_data_d_q_io_deq_bits_corrupt)
  );
  Queue_34 auto_data_b_q ( // @[Decoupled.scala 296:21]
    .clock(auto_data_b_q_clock),
    .reset(auto_data_b_q_reset),
    .io_enq_ready(auto_data_b_q_io_enq_ready),
    .io_enq_valid(auto_data_b_q_io_enq_valid),
    .io_enq_bits_param(auto_data_b_q_io_enq_bits_param),
    .io_enq_bits_address(auto_data_b_q_io_enq_bits_address),
    .io_deq_ready(auto_data_b_q_io_deq_ready),
    .io_deq_valid(auto_data_b_q_io_deq_valid),
    .io_deq_bits_param(auto_data_b_q_io_deq_bits_param),
    .io_deq_bits_size(auto_data_b_q_io_deq_bits_size),
    .io_deq_bits_source(auto_data_b_q_io_deq_bits_source),
    .io_deq_bits_address(auto_data_b_q_io_deq_bits_address)
  );
  Queue_35 auto_data_1_c_q ( // @[Decoupled.scala 296:21]
    .clock(auto_data_1_c_q_clock),
    .reset(auto_data_1_c_q_reset),
    .io_enq_ready(auto_data_1_c_q_io_enq_ready),
    .io_enq_valid(auto_data_1_c_q_io_enq_valid),
    .io_enq_bits_opcode(auto_data_1_c_q_io_enq_bits_opcode),
    .io_enq_bits_param(auto_data_1_c_q_io_enq_bits_param),
    .io_enq_bits_size(auto_data_1_c_q_io_enq_bits_size),
    .io_enq_bits_source(auto_data_1_c_q_io_enq_bits_source),
    .io_enq_bits_address(auto_data_1_c_q_io_enq_bits_address),
    .io_enq_bits_data(auto_data_1_c_q_io_enq_bits_data),
    .io_deq_ready(auto_data_1_c_q_io_deq_ready),
    .io_deq_valid(auto_data_1_c_q_io_deq_valid),
    .io_deq_bits_opcode(auto_data_1_c_q_io_deq_bits_opcode),
    .io_deq_bits_param(auto_data_1_c_q_io_deq_bits_param),
    .io_deq_bits_size(auto_data_1_c_q_io_deq_bits_size),
    .io_deq_bits_source(auto_data_1_c_q_io_deq_bits_source),
    .io_deq_bits_address(auto_data_1_c_q_io_deq_bits_address),
    .io_deq_bits_data(auto_data_1_c_q_io_deq_bits_data)
  );
  Queue_36 auto_data_1_e_q ( // @[Decoupled.scala 296:21]
    .clock(auto_data_1_e_q_clock),
    .reset(auto_data_1_e_q_reset),
    .io_enq_ready(auto_data_1_e_q_io_enq_ready),
    .io_enq_valid(auto_data_1_e_q_io_enq_valid),
    .io_enq_bits_sink(auto_data_1_e_q_io_enq_bits_sink),
    .io_deq_valid(auto_data_1_e_q_io_deq_valid),
    .io_deq_bits_sink(auto_data_1_e_q_io_deq_bits_sink)
  );
  assign auto_in_a_ready = auto_data_1_a_q_io_enq_ready; // @[Nodes.scala 1216:84 Decoupled.scala 299:17]
  assign auto_in_b_valid = auto_data_b_q_io_deq_valid; // @[Nodes.scala 1216:84 Buffer.scala 42:15]
  assign auto_in_b_bits_param = auto_data_b_q_io_deq_bits_param; // @[Nodes.scala 1216:84 Buffer.scala 42:15]
  assign auto_in_b_bits_size = auto_data_b_q_io_deq_bits_size; // @[Nodes.scala 1216:84 Buffer.scala 42:15]
  assign auto_in_b_bits_source = auto_data_b_q_io_deq_bits_source; // @[Nodes.scala 1216:84 Buffer.scala 42:15]
  assign auto_in_b_bits_address = auto_data_b_q_io_deq_bits_address; // @[Nodes.scala 1216:84 Buffer.scala 42:15]
  assign auto_in_c_ready = auto_data_1_c_q_io_enq_ready; // @[Nodes.scala 1216:84 Decoupled.scala 299:17]
  assign auto_in_d_valid = auto_data_d_q_io_deq_valid; // @[Nodes.scala 1216:84 Buffer.scala 39:13]
  assign auto_in_d_bits_opcode = auto_data_d_q_io_deq_bits_opcode; // @[Nodes.scala 1216:84 Buffer.scala 39:13]
  assign auto_in_d_bits_param = auto_data_d_q_io_deq_bits_param; // @[Nodes.scala 1216:84 Buffer.scala 39:13]
  assign auto_in_d_bits_size = auto_data_d_q_io_deq_bits_size; // @[Nodes.scala 1216:84 Buffer.scala 39:13]
  assign auto_in_d_bits_source = auto_data_d_q_io_deq_bits_source; // @[Nodes.scala 1216:84 Buffer.scala 39:13]
  assign auto_in_d_bits_sink = auto_data_d_q_io_deq_bits_sink; // @[Nodes.scala 1216:84 Buffer.scala 39:13]
  assign auto_in_d_bits_denied = auto_data_d_q_io_deq_bits_denied; // @[Nodes.scala 1216:84 Buffer.scala 39:13]
  assign auto_in_d_bits_data = auto_data_d_q_io_deq_bits_data; // @[Nodes.scala 1216:84 Buffer.scala 39:13]
  assign auto_in_d_bits_corrupt = auto_data_d_q_io_deq_bits_corrupt; // @[Nodes.scala 1216:84 Buffer.scala 39:13]
  assign auto_in_e_ready = auto_data_1_e_q_io_enq_ready; // @[Nodes.scala 1216:84 Decoupled.scala 299:17]
  assign auto_out_a_valid = auto_data_1_a_q_io_deq_valid; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_opcode = auto_data_1_a_q_io_deq_bits_opcode; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_param = auto_data_1_a_q_io_deq_bits_param; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_size = auto_data_1_a_q_io_deq_bits_size; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_source = auto_data_1_a_q_io_deq_bits_source; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_address = auto_data_1_a_q_io_deq_bits_address; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_mask = auto_data_1_a_q_io_deq_bits_mask; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_data = auto_data_1_a_q_io_deq_bits_data; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_corrupt = auto_data_1_a_q_io_deq_bits_corrupt; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_b_ready = auto_data_b_q_io_enq_ready; // @[Nodes.scala 1213:84 Decoupled.scala 299:17]
  assign auto_out_c_valid = auto_data_1_c_q_io_deq_valid; // @[Nodes.scala 1213:84 Buffer.scala 43:15]
  assign auto_out_c_bits_opcode = auto_data_1_c_q_io_deq_bits_opcode; // @[Nodes.scala 1213:84 Buffer.scala 43:15]
  assign auto_out_c_bits_param = auto_data_1_c_q_io_deq_bits_param; // @[Nodes.scala 1213:84 Buffer.scala 43:15]
  assign auto_out_c_bits_size = auto_data_1_c_q_io_deq_bits_size; // @[Nodes.scala 1213:84 Buffer.scala 43:15]
  assign auto_out_c_bits_source = auto_data_1_c_q_io_deq_bits_source; // @[Nodes.scala 1213:84 Buffer.scala 43:15]
  assign auto_out_c_bits_address = auto_data_1_c_q_io_deq_bits_address; // @[Nodes.scala 1213:84 Buffer.scala 43:15]
  assign auto_out_c_bits_data = auto_data_1_c_q_io_deq_bits_data; // @[Nodes.scala 1213:84 Buffer.scala 43:15]
  assign auto_out_d_ready = auto_data_d_q_io_enq_ready; // @[Nodes.scala 1213:84 Decoupled.scala 299:17]
  assign auto_out_e_valid = auto_data_1_e_q_io_deq_valid; // @[Nodes.scala 1213:84 Buffer.scala 44:15]
  assign auto_out_e_bits_sink = auto_data_1_e_q_io_deq_bits_sink; // @[Nodes.scala 1213:84 Buffer.scala 44:15]
  assign auto_data_1_a_q_clock = clock;
  assign auto_data_1_a_q_reset = reset;
  assign auto_data_1_a_q_io_enq_valid = auto_in_a_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_param = auto_in_a_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_source = auto_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_deq_ready = auto_out_a_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_q_clock = clock;
  assign auto_data_d_q_reset = reset;
  assign auto_data_d_q_io_enq_valid = auto_out_d_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_q_io_enq_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_q_io_enq_bits_param = auto_out_d_bits_param; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_q_io_enq_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_q_io_enq_bits_source = auto_out_d_bits_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_q_io_enq_bits_sink = auto_out_d_bits_sink; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_q_io_enq_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_q_io_enq_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_q_io_enq_bits_corrupt = auto_out_d_bits_corrupt; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_q_io_deq_ready = auto_in_d_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_b_q_clock = clock;
  assign auto_data_b_q_reset = reset;
  assign auto_data_b_q_io_enq_valid = auto_out_b_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_b_q_io_enq_bits_param = auto_out_b_bits_param; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_b_q_io_enq_bits_address = auto_out_b_bits_address; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_b_q_io_deq_ready = auto_in_b_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_c_q_clock = clock;
  assign auto_data_1_c_q_reset = reset;
  assign auto_data_1_c_q_io_enq_valid = auto_in_c_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_c_q_io_enq_bits_opcode = auto_in_c_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_c_q_io_enq_bits_param = auto_in_c_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_c_q_io_enq_bits_size = auto_in_c_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_c_q_io_enq_bits_source = auto_in_c_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_c_q_io_enq_bits_address = auto_in_c_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_c_q_io_enq_bits_data = auto_in_c_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_c_q_io_deq_ready = auto_out_c_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_1_e_q_clock = clock;
  assign auto_data_1_e_q_reset = reset;
  assign auto_data_1_e_q_io_enq_valid = auto_in_e_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_e_q_io_enq_bits_sink = auto_in_e_bits_sink; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
endmodule
