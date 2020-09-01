module TLBuffer_3(
  input         clock,
  input         reset,
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [2:0]  auto_in_a_bits_param,
  input  [3:0]  auto_in_a_bits_size,
  input  [3:0]  auto_in_a_bits_source,
  input  [31:0] auto_in_a_bits_address,
  input         auto_in_a_bits_user_amba_prot_bufferable,
  input         auto_in_a_bits_user_amba_prot_modifiable,
  input         auto_in_a_bits_user_amba_prot_readalloc,
  input         auto_in_a_bits_user_amba_prot_writealloc,
  input         auto_in_a_bits_user_amba_prot_privileged,
  input         auto_in_a_bits_user_amba_prot_secure,
  input         auto_in_a_bits_user_amba_prot_fetch,
  input  [7:0]  auto_in_a_bits_mask,
  input  [63:0] auto_in_a_bits_data,
  input         auto_in_a_bits_corrupt,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output [2:0]  auto_in_d_bits_opcode,
  output [3:0]  auto_in_d_bits_size,
  output [3:0]  auto_in_d_bits_source,
  output        auto_in_d_bits_denied,
  output [63:0] auto_in_d_bits_data,
  output        auto_in_d_bits_corrupt,
  input         auto_out_a_ready,
  output        auto_out_a_valid,
  output [2:0]  auto_out_a_bits_opcode,
  output [2:0]  auto_out_a_bits_param,
  output [3:0]  auto_out_a_bits_size,
  output [3:0]  auto_out_a_bits_source,
  output [31:0] auto_out_a_bits_address,
  output        auto_out_a_bits_user_amba_prot_bufferable,
  output        auto_out_a_bits_user_amba_prot_modifiable,
  output        auto_out_a_bits_user_amba_prot_readalloc,
  output        auto_out_a_bits_user_amba_prot_writealloc,
  output        auto_out_a_bits_user_amba_prot_privileged,
  output        auto_out_a_bits_user_amba_prot_secure,
  output        auto_out_a_bits_user_amba_prot_fetch,
  output [7:0]  auto_out_a_bits_mask,
  output [63:0] auto_out_a_bits_data,
  output        auto_out_a_bits_corrupt,
  output        auto_out_d_ready,
  input         auto_out_d_valid,
  input  [2:0]  auto_out_d_bits_opcode,
  input  [3:0]  auto_out_d_bits_size,
  input  [3:0]  auto_out_d_bits_source,
  input         auto_out_d_bits_denied,
  input  [63:0] auto_out_d_bits_data,
  input         auto_out_d_bits_corrupt
);
  wire  auto_data_1_a_q_clock; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_reset; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_1_a_q_io_enq_bits_opcode; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_1_a_q_io_enq_bits_param; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_1_a_q_io_enq_bits_size; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_1_a_q_io_enq_bits_source; // @[Decoupled.scala 296:21]
  wire [31:0] auto_data_1_a_q_io_enq_bits_address; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_enq_bits_user_amba_prot_bufferable; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_enq_bits_user_amba_prot_modifiable; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_enq_bits_user_amba_prot_readalloc; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_enq_bits_user_amba_prot_writealloc; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_enq_bits_user_amba_prot_privileged; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_enq_bits_user_amba_prot_secure; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_enq_bits_user_amba_prot_fetch; // @[Decoupled.scala 296:21]
  wire [7:0] auto_data_1_a_q_io_enq_bits_mask; // @[Decoupled.scala 296:21]
  wire [63:0] auto_data_1_a_q_io_enq_bits_data; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_enq_bits_corrupt; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_1_a_q_io_deq_bits_opcode; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_1_a_q_io_deq_bits_param; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_1_a_q_io_deq_bits_size; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_1_a_q_io_deq_bits_source; // @[Decoupled.scala 296:21]
  wire [31:0] auto_data_1_a_q_io_deq_bits_address; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_deq_bits_user_amba_prot_bufferable; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_deq_bits_user_amba_prot_modifiable; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_deq_bits_user_amba_prot_readalloc; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_deq_bits_user_amba_prot_writealloc; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_deq_bits_user_amba_prot_privileged; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_deq_bits_user_amba_prot_secure; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_deq_bits_user_amba_prot_fetch; // @[Decoupled.scala 296:21]
  wire [7:0] auto_data_1_a_q_io_deq_bits_mask; // @[Decoupled.scala 296:21]
  wire [63:0] auto_data_1_a_q_io_deq_bits_data; // @[Decoupled.scala 296:21]
  wire  auto_data_1_a_q_io_deq_bits_corrupt; // @[Decoupled.scala 296:21]
  wire  auto_data_d_q_clock; // @[Decoupled.scala 296:21]
  wire  auto_data_d_q_reset; // @[Decoupled.scala 296:21]
  wire  auto_data_d_q_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_d_q_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_d_q_io_enq_bits_opcode; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_d_q_io_enq_bits_size; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_d_q_io_enq_bits_source; // @[Decoupled.scala 296:21]
  wire  auto_data_d_q_io_enq_bits_denied; // @[Decoupled.scala 296:21]
  wire [63:0] auto_data_d_q_io_enq_bits_data; // @[Decoupled.scala 296:21]
  wire  auto_data_d_q_io_enq_bits_corrupt; // @[Decoupled.scala 296:21]
  wire  auto_data_d_q_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_d_q_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_d_q_io_deq_bits_opcode; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_d_q_io_deq_bits_size; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_d_q_io_deq_bits_source; // @[Decoupled.scala 296:21]
  wire  auto_data_d_q_io_deq_bits_denied; // @[Decoupled.scala 296:21]
  wire [63:0] auto_data_d_q_io_deq_bits_data; // @[Decoupled.scala 296:21]
  wire  auto_data_d_q_io_deq_bits_corrupt; // @[Decoupled.scala 296:21]
  Queue_12 auto_data_1_a_q ( // @[Decoupled.scala 296:21]
    .clock(auto_data_1_a_q_clock),
    .reset(auto_data_1_a_q_reset),
    .io_enq_ready(auto_data_1_a_q_io_enq_ready),
    .io_enq_valid(auto_data_1_a_q_io_enq_valid),
    .io_enq_bits_opcode(auto_data_1_a_q_io_enq_bits_opcode),
    .io_enq_bits_param(auto_data_1_a_q_io_enq_bits_param),
    .io_enq_bits_size(auto_data_1_a_q_io_enq_bits_size),
    .io_enq_bits_source(auto_data_1_a_q_io_enq_bits_source),
    .io_enq_bits_address(auto_data_1_a_q_io_enq_bits_address),
    .io_enq_bits_user_amba_prot_bufferable(auto_data_1_a_q_io_enq_bits_user_amba_prot_bufferable),
    .io_enq_bits_user_amba_prot_modifiable(auto_data_1_a_q_io_enq_bits_user_amba_prot_modifiable),
    .io_enq_bits_user_amba_prot_readalloc(auto_data_1_a_q_io_enq_bits_user_amba_prot_readalloc),
    .io_enq_bits_user_amba_prot_writealloc(auto_data_1_a_q_io_enq_bits_user_amba_prot_writealloc),
    .io_enq_bits_user_amba_prot_privileged(auto_data_1_a_q_io_enq_bits_user_amba_prot_privileged),
    .io_enq_bits_user_amba_prot_secure(auto_data_1_a_q_io_enq_bits_user_amba_prot_secure),
    .io_enq_bits_user_amba_prot_fetch(auto_data_1_a_q_io_enq_bits_user_amba_prot_fetch),
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
    .io_deq_bits_user_amba_prot_bufferable(auto_data_1_a_q_io_deq_bits_user_amba_prot_bufferable),
    .io_deq_bits_user_amba_prot_modifiable(auto_data_1_a_q_io_deq_bits_user_amba_prot_modifiable),
    .io_deq_bits_user_amba_prot_readalloc(auto_data_1_a_q_io_deq_bits_user_amba_prot_readalloc),
    .io_deq_bits_user_amba_prot_writealloc(auto_data_1_a_q_io_deq_bits_user_amba_prot_writealloc),
    .io_deq_bits_user_amba_prot_privileged(auto_data_1_a_q_io_deq_bits_user_amba_prot_privileged),
    .io_deq_bits_user_amba_prot_secure(auto_data_1_a_q_io_deq_bits_user_amba_prot_secure),
    .io_deq_bits_user_amba_prot_fetch(auto_data_1_a_q_io_deq_bits_user_amba_prot_fetch),
    .io_deq_bits_mask(auto_data_1_a_q_io_deq_bits_mask),
    .io_deq_bits_data(auto_data_1_a_q_io_deq_bits_data),
    .io_deq_bits_corrupt(auto_data_1_a_q_io_deq_bits_corrupt)
  );
  Queue_13 auto_data_d_q ( // @[Decoupled.scala 296:21]
    .clock(auto_data_d_q_clock),
    .reset(auto_data_d_q_reset),
    .io_enq_ready(auto_data_d_q_io_enq_ready),
    .io_enq_valid(auto_data_d_q_io_enq_valid),
    .io_enq_bits_opcode(auto_data_d_q_io_enq_bits_opcode),
    .io_enq_bits_size(auto_data_d_q_io_enq_bits_size),
    .io_enq_bits_source(auto_data_d_q_io_enq_bits_source),
    .io_enq_bits_denied(auto_data_d_q_io_enq_bits_denied),
    .io_enq_bits_data(auto_data_d_q_io_enq_bits_data),
    .io_enq_bits_corrupt(auto_data_d_q_io_enq_bits_corrupt),
    .io_deq_ready(auto_data_d_q_io_deq_ready),
    .io_deq_valid(auto_data_d_q_io_deq_valid),
    .io_deq_bits_opcode(auto_data_d_q_io_deq_bits_opcode),
    .io_deq_bits_size(auto_data_d_q_io_deq_bits_size),
    .io_deq_bits_source(auto_data_d_q_io_deq_bits_source),
    .io_deq_bits_denied(auto_data_d_q_io_deq_bits_denied),
    .io_deq_bits_data(auto_data_d_q_io_deq_bits_data),
    .io_deq_bits_corrupt(auto_data_d_q_io_deq_bits_corrupt)
  );
  assign auto_in_a_ready = auto_data_1_a_q_io_enq_ready; // @[Nodes.scala 1216:84 Decoupled.scala 299:17]
  assign auto_in_d_valid = auto_data_d_q_io_deq_valid; // @[Nodes.scala 1216:84 Buffer.scala 39:13]
  assign auto_in_d_bits_opcode = auto_data_d_q_io_deq_bits_opcode; // @[Nodes.scala 1216:84 Buffer.scala 39:13]
  assign auto_in_d_bits_size = auto_data_d_q_io_deq_bits_size; // @[Nodes.scala 1216:84 Buffer.scala 39:13]
  assign auto_in_d_bits_source = auto_data_d_q_io_deq_bits_source; // @[Nodes.scala 1216:84 Buffer.scala 39:13]
  assign auto_in_d_bits_denied = auto_data_d_q_io_deq_bits_denied; // @[Nodes.scala 1216:84 Buffer.scala 39:13]
  assign auto_in_d_bits_data = auto_data_d_q_io_deq_bits_data; // @[Nodes.scala 1216:84 Buffer.scala 39:13]
  assign auto_in_d_bits_corrupt = auto_data_d_q_io_deq_bits_corrupt; // @[Nodes.scala 1216:84 Buffer.scala 39:13]
  assign auto_out_a_valid = auto_data_1_a_q_io_deq_valid; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_opcode = auto_data_1_a_q_io_deq_bits_opcode; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_param = auto_data_1_a_q_io_deq_bits_param; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_size = auto_data_1_a_q_io_deq_bits_size; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_source = auto_data_1_a_q_io_deq_bits_source; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_address = auto_data_1_a_q_io_deq_bits_address; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_user_amba_prot_bufferable = auto_data_1_a_q_io_deq_bits_user_amba_prot_bufferable; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_user_amba_prot_modifiable = auto_data_1_a_q_io_deq_bits_user_amba_prot_modifiable; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_user_amba_prot_readalloc = auto_data_1_a_q_io_deq_bits_user_amba_prot_readalloc; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_user_amba_prot_writealloc = auto_data_1_a_q_io_deq_bits_user_amba_prot_writealloc; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_user_amba_prot_privileged = auto_data_1_a_q_io_deq_bits_user_amba_prot_privileged; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_user_amba_prot_secure = auto_data_1_a_q_io_deq_bits_user_amba_prot_secure; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_user_amba_prot_fetch = auto_data_1_a_q_io_deq_bits_user_amba_prot_fetch; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_mask = auto_data_1_a_q_io_deq_bits_mask; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_data = auto_data_1_a_q_io_deq_bits_data; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_a_bits_corrupt = auto_data_1_a_q_io_deq_bits_corrupt; // @[Nodes.scala 1213:84 Buffer.scala 38:13]
  assign auto_out_d_ready = auto_data_d_q_io_enq_ready; // @[Nodes.scala 1213:84 Decoupled.scala 299:17]
  assign auto_data_1_a_q_clock = clock;
  assign auto_data_1_a_q_reset = reset;
  assign auto_data_1_a_q_io_enq_valid = auto_in_a_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_param = auto_in_a_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_source = auto_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_user_amba_prot_bufferable = auto_in_a_bits_user_amba_prot_bufferable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_user_amba_prot_modifiable = auto_in_a_bits_user_amba_prot_modifiable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_user_amba_prot_readalloc = auto_in_a_bits_user_amba_prot_readalloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_user_amba_prot_writealloc = auto_in_a_bits_user_amba_prot_writealloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_user_amba_prot_privileged = auto_in_a_bits_user_amba_prot_privileged; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_user_amba_prot_secure = auto_in_a_bits_user_amba_prot_secure; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_user_amba_prot_fetch = auto_in_a_bits_user_amba_prot_fetch; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_enq_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_q_io_deq_ready = auto_out_a_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_q_clock = clock;
  assign auto_data_d_q_reset = reset;
  assign auto_data_d_q_io_enq_valid = auto_out_d_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_q_io_enq_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_q_io_enq_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_q_io_enq_bits_source = auto_out_d_bits_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_q_io_enq_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_q_io_enq_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_q_io_enq_bits_corrupt = auto_out_d_bits_corrupt; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_q_io_deq_ready = auto_in_d_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
endmodule
