module TLAsyncCrossingSink(
  input         clock,
  input         reset,
  input  [2:0]  auto_in_a_mem_0_opcode,
  input  [8:0]  auto_in_a_mem_0_address,
  input  [31:0] auto_in_a_mem_0_data,
  output        auto_in_a_ridx,
  input         auto_in_a_widx,
  output        auto_in_a_safe_ridx_valid,
  input         auto_in_a_safe_widx_valid,
  input         auto_in_a_safe_source_reset_n,
  output        auto_in_a_safe_sink_reset_n,
  output [2:0]  auto_in_d_mem_0_opcode,
  output [1:0]  auto_in_d_mem_0_size,
  output        auto_in_d_mem_0_source,
  output [31:0] auto_in_d_mem_0_data,
  input         auto_in_d_ridx,
  output        auto_in_d_widx,
  input         auto_in_d_safe_ridx_valid,
  output        auto_in_d_safe_widx_valid,
  output        auto_in_d_safe_source_reset_n,
  input         auto_in_d_safe_sink_reset_n,
  input         auto_out_a_ready,
  output        auto_out_a_valid,
  output [2:0]  auto_out_a_bits_opcode,
  output [1:0]  auto_out_a_bits_size,
  output        auto_out_a_bits_source,
  output [8:0]  auto_out_a_bits_address,
  output [3:0]  auto_out_a_bits_mask,
  output [31:0] auto_out_a_bits_data,
  output        auto_out_d_ready,
  input         auto_out_d_valid,
  input  [2:0]  auto_out_d_bits_opcode,
  input  [1:0]  auto_out_d_bits_size,
  input         auto_out_d_bits_source,
  input  [31:0] auto_out_d_bits_data
);
  wire  auto_data_1_a_sink_clock; // @[AsyncQueue.scala 207:22]
  wire  auto_data_1_a_sink_reset; // @[AsyncQueue.scala 207:22]
  wire  auto_data_1_a_sink_io_deq_ready; // @[AsyncQueue.scala 207:22]
  wire  auto_data_1_a_sink_io_deq_valid; // @[AsyncQueue.scala 207:22]
  wire [2:0] auto_data_1_a_sink_io_deq_bits_opcode; // @[AsyncQueue.scala 207:22]
  wire [1:0] auto_data_1_a_sink_io_deq_bits_size; // @[AsyncQueue.scala 207:22]
  wire  auto_data_1_a_sink_io_deq_bits_source; // @[AsyncQueue.scala 207:22]
  wire [8:0] auto_data_1_a_sink_io_deq_bits_address; // @[AsyncQueue.scala 207:22]
  wire [3:0] auto_data_1_a_sink_io_deq_bits_mask; // @[AsyncQueue.scala 207:22]
  wire [31:0] auto_data_1_a_sink_io_deq_bits_data; // @[AsyncQueue.scala 207:22]
  wire [2:0] auto_data_1_a_sink_io_async_mem_0_opcode; // @[AsyncQueue.scala 207:22]
  wire [8:0] auto_data_1_a_sink_io_async_mem_0_address; // @[AsyncQueue.scala 207:22]
  wire [31:0] auto_data_1_a_sink_io_async_mem_0_data; // @[AsyncQueue.scala 207:22]
  wire  auto_data_1_a_sink_io_async_ridx; // @[AsyncQueue.scala 207:22]
  wire  auto_data_1_a_sink_io_async_widx; // @[AsyncQueue.scala 207:22]
  wire  auto_data_1_a_sink_io_async_safe_ridx_valid; // @[AsyncQueue.scala 207:22]
  wire  auto_data_1_a_sink_io_async_safe_widx_valid; // @[AsyncQueue.scala 207:22]
  wire  auto_data_1_a_sink_io_async_safe_source_reset_n; // @[AsyncQueue.scala 207:22]
  wire  auto_data_1_a_sink_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 207:22]
  wire  auto_data_d_source_clock; // @[AsyncQueue.scala 216:24]
  wire  auto_data_d_source_reset; // @[AsyncQueue.scala 216:24]
  wire  auto_data_d_source_io_enq_ready; // @[AsyncQueue.scala 216:24]
  wire  auto_data_d_source_io_enq_valid; // @[AsyncQueue.scala 216:24]
  wire [2:0] auto_data_d_source_io_enq_bits_opcode; // @[AsyncQueue.scala 216:24]
  wire [1:0] auto_data_d_source_io_enq_bits_size; // @[AsyncQueue.scala 216:24]
  wire  auto_data_d_source_io_enq_bits_source; // @[AsyncQueue.scala 216:24]
  wire [31:0] auto_data_d_source_io_enq_bits_data; // @[AsyncQueue.scala 216:24]
  wire [2:0] auto_data_d_source_io_async_mem_0_opcode; // @[AsyncQueue.scala 216:24]
  wire [1:0] auto_data_d_source_io_async_mem_0_size; // @[AsyncQueue.scala 216:24]
  wire  auto_data_d_source_io_async_mem_0_source; // @[AsyncQueue.scala 216:24]
  wire [31:0] auto_data_d_source_io_async_mem_0_data; // @[AsyncQueue.scala 216:24]
  wire  auto_data_d_source_io_async_ridx; // @[AsyncQueue.scala 216:24]
  wire  auto_data_d_source_io_async_widx; // @[AsyncQueue.scala 216:24]
  wire  auto_data_d_source_io_async_safe_ridx_valid; // @[AsyncQueue.scala 216:24]
  wire  auto_data_d_source_io_async_safe_widx_valid; // @[AsyncQueue.scala 216:24]
  wire  auto_data_d_source_io_async_safe_source_reset_n; // @[AsyncQueue.scala 216:24]
  wire  auto_data_d_source_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 216:24]
  AsyncQueueSink_1 auto_data_1_a_sink ( // @[AsyncQueue.scala 207:22]
    .clock(auto_data_1_a_sink_clock),
    .reset(auto_data_1_a_sink_reset),
    .io_deq_ready(auto_data_1_a_sink_io_deq_ready),
    .io_deq_valid(auto_data_1_a_sink_io_deq_valid),
    .io_deq_bits_opcode(auto_data_1_a_sink_io_deq_bits_opcode),
    .io_deq_bits_size(auto_data_1_a_sink_io_deq_bits_size),
    .io_deq_bits_source(auto_data_1_a_sink_io_deq_bits_source),
    .io_deq_bits_address(auto_data_1_a_sink_io_deq_bits_address),
    .io_deq_bits_mask(auto_data_1_a_sink_io_deq_bits_mask),
    .io_deq_bits_data(auto_data_1_a_sink_io_deq_bits_data),
    .io_async_mem_0_opcode(auto_data_1_a_sink_io_async_mem_0_opcode),
    .io_async_mem_0_address(auto_data_1_a_sink_io_async_mem_0_address),
    .io_async_mem_0_data(auto_data_1_a_sink_io_async_mem_0_data),
    .io_async_ridx(auto_data_1_a_sink_io_async_ridx),
    .io_async_widx(auto_data_1_a_sink_io_async_widx),
    .io_async_safe_ridx_valid(auto_data_1_a_sink_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(auto_data_1_a_sink_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(auto_data_1_a_sink_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(auto_data_1_a_sink_io_async_safe_sink_reset_n)
  );
  AsyncQueueSource_2 auto_data_d_source ( // @[AsyncQueue.scala 216:24]
    .clock(auto_data_d_source_clock),
    .reset(auto_data_d_source_reset),
    .io_enq_ready(auto_data_d_source_io_enq_ready),
    .io_enq_valid(auto_data_d_source_io_enq_valid),
    .io_enq_bits_opcode(auto_data_d_source_io_enq_bits_opcode),
    .io_enq_bits_size(auto_data_d_source_io_enq_bits_size),
    .io_enq_bits_source(auto_data_d_source_io_enq_bits_source),
    .io_enq_bits_data(auto_data_d_source_io_enq_bits_data),
    .io_async_mem_0_opcode(auto_data_d_source_io_async_mem_0_opcode),
    .io_async_mem_0_size(auto_data_d_source_io_async_mem_0_size),
    .io_async_mem_0_source(auto_data_d_source_io_async_mem_0_source),
    .io_async_mem_0_data(auto_data_d_source_io_async_mem_0_data),
    .io_async_ridx(auto_data_d_source_io_async_ridx),
    .io_async_widx(auto_data_d_source_io_async_widx),
    .io_async_safe_ridx_valid(auto_data_d_source_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(auto_data_d_source_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(auto_data_d_source_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(auto_data_d_source_io_async_safe_sink_reset_n)
  );
  assign auto_in_a_ridx = auto_data_1_a_sink_io_async_ridx; // @[Nodes.scala 1216:84 AsyncQueue.scala 208:19]
  assign auto_in_a_safe_ridx_valid = auto_data_1_a_sink_io_async_safe_ridx_valid; // @[Nodes.scala 1216:84 AsyncQueue.scala 208:19]
  assign auto_in_a_safe_sink_reset_n = auto_data_1_a_sink_io_async_safe_sink_reset_n; // @[Nodes.scala 1216:84 AsyncQueue.scala 208:19]
  assign auto_in_d_mem_0_opcode = auto_data_d_source_io_async_mem_0_opcode; // @[Nodes.scala 1216:84 AsyncCrossing.scala 58:12]
  assign auto_in_d_mem_0_size = auto_data_d_source_io_async_mem_0_size; // @[Nodes.scala 1216:84 AsyncCrossing.scala 58:12]
  assign auto_in_d_mem_0_source = auto_data_d_source_io_async_mem_0_source; // @[Nodes.scala 1216:84 AsyncCrossing.scala 58:12]
  assign auto_in_d_mem_0_data = auto_data_d_source_io_async_mem_0_data; // @[Nodes.scala 1216:84 AsyncCrossing.scala 58:12]
  assign auto_in_d_widx = auto_data_d_source_io_async_widx; // @[Nodes.scala 1216:84 AsyncCrossing.scala 58:12]
  assign auto_in_d_safe_widx_valid = auto_data_d_source_io_async_safe_widx_valid; // @[Nodes.scala 1216:84 AsyncCrossing.scala 58:12]
  assign auto_in_d_safe_source_reset_n = auto_data_d_source_io_async_safe_source_reset_n; // @[Nodes.scala 1216:84 AsyncCrossing.scala 58:12]
  assign auto_out_a_valid = auto_data_1_a_sink_io_deq_valid; // @[Nodes.scala 1213:84 AsyncCrossing.scala 57:13]
  assign auto_out_a_bits_opcode = auto_data_1_a_sink_io_deq_bits_opcode; // @[Nodes.scala 1213:84 AsyncCrossing.scala 57:13]
  assign auto_out_a_bits_size = auto_data_1_a_sink_io_deq_bits_size; // @[Nodes.scala 1213:84 AsyncCrossing.scala 57:13]
  assign auto_out_a_bits_source = auto_data_1_a_sink_io_deq_bits_source; // @[Nodes.scala 1213:84 AsyncCrossing.scala 57:13]
  assign auto_out_a_bits_address = auto_data_1_a_sink_io_deq_bits_address; // @[Nodes.scala 1213:84 AsyncCrossing.scala 57:13]
  assign auto_out_a_bits_mask = auto_data_1_a_sink_io_deq_bits_mask; // @[Nodes.scala 1213:84 AsyncCrossing.scala 57:13]
  assign auto_out_a_bits_data = auto_data_1_a_sink_io_deq_bits_data; // @[Nodes.scala 1213:84 AsyncCrossing.scala 57:13]
  assign auto_out_d_ready = auto_data_d_source_io_enq_ready; // @[Nodes.scala 1213:84 AsyncQueue.scala 217:19]
  assign auto_data_1_a_sink_clock = clock;
  assign auto_data_1_a_sink_reset = reset;
  assign auto_data_1_a_sink_io_deq_ready = auto_out_a_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_1_a_sink_io_async_mem_0_opcode = auto_in_a_mem_0_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_sink_io_async_mem_0_address = auto_in_a_mem_0_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_sink_io_async_mem_0_data = auto_in_a_mem_0_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_sink_io_async_widx = auto_in_a_widx; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_sink_io_async_safe_widx_valid = auto_in_a_safe_widx_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_a_sink_io_async_safe_source_reset_n = auto_in_a_safe_source_reset_n; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_d_source_clock = clock;
  assign auto_data_d_source_reset = reset;
  assign auto_data_d_source_io_enq_valid = auto_out_d_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_source_io_enq_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_source_io_enq_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_source_io_enq_bits_source = auto_out_d_bits_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_source_io_enq_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_d_source_io_async_ridx = auto_in_d_ridx; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_d_source_io_async_safe_ridx_valid = auto_in_d_safe_ridx_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_d_source_io_async_safe_sink_reset_n = auto_in_d_safe_sink_reset_n; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
endmodule
