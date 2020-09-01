module Queue_37(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input         io_enq_bits_read,
  input  [22:0] io_enq_bits_index,
  input  [63:0] io_enq_bits_data,
  input  [7:0]  io_enq_bits_mask,
  input  [8:0]  io_enq_bits_extra_tlrr_extra_source,
  input  [1:0]  io_enq_bits_extra_tlrr_extra_size,
  input         io_deq_ready,
  output        io_deq_valid,
  output        io_deq_bits_read,
  output [22:0] io_deq_bits_index,
  output [63:0] io_deq_bits_data,
  output [7:0]  io_deq_bits_mask,
  output [8:0]  io_deq_bits_extra_tlrr_extra_source,
  output [1:0]  io_deq_bits_extra_tlrr_extra_size
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg  ram_read [0:0]; // @[Decoupled.scala 218:16]
  wire  ram_read_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_read_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_read_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_read_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_read_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_read_MPORT_en; // @[Decoupled.scala 218:16]
  reg [22:0] ram_index [0:0]; // @[Decoupled.scala 218:16]
  wire [22:0] ram_index_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_index_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [22:0] ram_index_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_index_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_index_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_index_MPORT_en; // @[Decoupled.scala 218:16]
  reg [63:0] ram_data [0:0]; // @[Decoupled.scala 218:16]
  wire [63:0] ram_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_data_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [63:0] ram_data_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_data_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_data_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_data_MPORT_en; // @[Decoupled.scala 218:16]
  reg [7:0] ram_mask [0:0]; // @[Decoupled.scala 218:16]
  wire [7:0] ram_mask_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_mask_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [7:0] ram_mask_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_mask_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_mask_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_mask_MPORT_en; // @[Decoupled.scala 218:16]
  reg [8:0] ram_extra_tlrr_extra_source [0:0]; // @[Decoupled.scala 218:16]
  wire [8:0] ram_extra_tlrr_extra_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_extra_tlrr_extra_source_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [8:0] ram_extra_tlrr_extra_source_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_extra_tlrr_extra_source_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_extra_tlrr_extra_source_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_extra_tlrr_extra_source_MPORT_en; // @[Decoupled.scala 218:16]
  reg [1:0] ram_extra_tlrr_extra_size [0:0]; // @[Decoupled.scala 218:16]
  wire [1:0] ram_extra_tlrr_extra_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_extra_tlrr_extra_size_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [1:0] ram_extra_tlrr_extra_size_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_extra_tlrr_extra_size_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_extra_tlrr_extra_size_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_extra_tlrr_extra_size_MPORT_en; // @[Decoupled.scala 218:16]
  reg  maybe_full; // @[Decoupled.scala 221:27]
  wire  empty = ~maybe_full; // @[Decoupled.scala 224:28]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37]
  wire  _T = do_enq != do_deq; // @[Decoupled.scala 236:16]
  assign ram_read_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_read_io_deq_bits_MPORT_data = ram_read[ram_read_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_read_MPORT_data = io_enq_bits_read;
  assign ram_read_MPORT_addr = 1'h0;
  assign ram_read_MPORT_mask = 1'h1;
  assign ram_read_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_index_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_index_io_deq_bits_MPORT_data = ram_index[ram_index_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_index_MPORT_data = io_enq_bits_index;
  assign ram_index_MPORT_addr = 1'h0;
  assign ram_index_MPORT_mask = 1'h1;
  assign ram_index_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_data_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_data_io_deq_bits_MPORT_data = ram_data[ram_data_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_data_MPORT_data = io_enq_bits_data;
  assign ram_data_MPORT_addr = 1'h0;
  assign ram_data_MPORT_mask = 1'h1;
  assign ram_data_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_mask_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_mask_io_deq_bits_MPORT_data = ram_mask[ram_mask_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_mask_MPORT_data = io_enq_bits_mask;
  assign ram_mask_MPORT_addr = 1'h0;
  assign ram_mask_MPORT_mask = 1'h1;
  assign ram_mask_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_extra_tlrr_extra_source_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_extra_tlrr_extra_source_io_deq_bits_MPORT_data =
    ram_extra_tlrr_extra_source[ram_extra_tlrr_extra_source_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_extra_tlrr_extra_source_MPORT_data = io_enq_bits_extra_tlrr_extra_source;
  assign ram_extra_tlrr_extra_source_MPORT_addr = 1'h0;
  assign ram_extra_tlrr_extra_source_MPORT_mask = 1'h1;
  assign ram_extra_tlrr_extra_source_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_extra_tlrr_extra_size_io_deq_bits_MPORT_addr = 1'h0;
  assign ram_extra_tlrr_extra_size_io_deq_bits_MPORT_data =
    ram_extra_tlrr_extra_size[ram_extra_tlrr_extra_size_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_extra_tlrr_extra_size_MPORT_data = io_enq_bits_extra_tlrr_extra_size;
  assign ram_extra_tlrr_extra_size_MPORT_addr = 1'h0;
  assign ram_extra_tlrr_extra_size_MPORT_mask = 1'h1;
  assign ram_extra_tlrr_extra_size_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~maybe_full; // @[Decoupled.scala 241:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 240:19]
  assign io_deq_bits_read = ram_read_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  assign io_deq_bits_index = ram_index_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  assign io_deq_bits_data = ram_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  assign io_deq_bits_mask = ram_mask_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  assign io_deq_bits_extra_tlrr_extra_source = ram_extra_tlrr_extra_source_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  assign io_deq_bits_extra_tlrr_extra_size = ram_extra_tlrr_extra_size_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  always @(posedge clock) begin
    if(ram_read_MPORT_en & ram_read_MPORT_mask) begin
      ram_read[ram_read_MPORT_addr] <= ram_read_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if(ram_index_MPORT_en & ram_index_MPORT_mask) begin
      ram_index[ram_index_MPORT_addr] <= ram_index_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if(ram_data_MPORT_en & ram_data_MPORT_mask) begin
      ram_data[ram_data_MPORT_addr] <= ram_data_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if(ram_mask_MPORT_en & ram_mask_MPORT_mask) begin
      ram_mask[ram_mask_MPORT_addr] <= ram_mask_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if(ram_extra_tlrr_extra_source_MPORT_en & ram_extra_tlrr_extra_source_MPORT_mask) begin
      ram_extra_tlrr_extra_source[ram_extra_tlrr_extra_source_MPORT_addr] <= ram_extra_tlrr_extra_source_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if(ram_extra_tlrr_extra_size_MPORT_en & ram_extra_tlrr_extra_size_MPORT_mask) begin
      ram_extra_tlrr_extra_size[ram_extra_tlrr_extra_size_MPORT_addr] <= ram_extra_tlrr_extra_size_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if (reset) begin // @[Decoupled.scala 221:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 221:27]
    end else if (_T) begin // @[Decoupled.scala 236:28]
      maybe_full <= do_enq; // @[Decoupled.scala 237:16]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_read[initvar] = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_index[initvar] = _RAND_1[22:0];
  _RAND_2 = {2{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data[initvar] = _RAND_2[63:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_mask[initvar] = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_extra_tlrr_extra_source[initvar] = _RAND_4[8:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_extra_tlrr_extra_size[initvar] = _RAND_5[1:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  maybe_full = _RAND_6[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
