module Queue_46(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [3:0]  io_enq_bits_id,
  input  [11:0] io_enq_bits_addr,
  input         io_enq_bits_echo_real_last,
  input         io_deq_ready,
  output        io_deq_valid,
  output [3:0]  io_deq_bits_id,
  output [11:0] io_deq_bits_addr,
  output        io_deq_bits_echo_real_last
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] ram_id [0:1]; // @[Decoupled.scala 218:16]
  wire [3:0] ram_id_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_id_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [3:0] ram_id_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_id_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_id_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_id_MPORT_en; // @[Decoupled.scala 218:16]
  reg [11:0] ram_addr [0:1]; // @[Decoupled.scala 218:16]
  wire [11:0] ram_addr_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_addr_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire [11:0] ram_addr_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_addr_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_addr_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_addr_MPORT_en; // @[Decoupled.scala 218:16]
  reg  ram_echo_real_last [0:1]; // @[Decoupled.scala 218:16]
  wire  ram_echo_real_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_echo_real_last_io_deq_bits_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_echo_real_last_MPORT_data; // @[Decoupled.scala 218:16]
  wire  ram_echo_real_last_MPORT_addr; // @[Decoupled.scala 218:16]
  wire  ram_echo_real_last_MPORT_mask; // @[Decoupled.scala 218:16]
  wire  ram_echo_real_last_MPORT_en; // @[Decoupled.scala 218:16]
  reg  value; // @[Counter.scala 60:40]
  reg  value_1; // @[Counter.scala 60:40]
  reg  maybe_full; // @[Decoupled.scala 221:27]
  wire  ptr_match = value == value_1; // @[Decoupled.scala 223:33]
  wire  empty = ptr_match & (~maybe_full); // @[Decoupled.scala 224:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 225:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37]
  wire  _value_T_1 = value + 1'h1; // @[Counter.scala 76:24]
  wire  _value_1_T_1 = value_1 + 1'h1; // @[Counter.scala 76:24]
  wire  _T = do_enq != do_deq; // @[Decoupled.scala 236:16]
  assign ram_id_io_deq_bits_MPORT_addr = value_1;
  assign ram_id_io_deq_bits_MPORT_data = ram_id[ram_id_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_id_MPORT_data = io_enq_bits_id;
  assign ram_id_MPORT_addr = value;
  assign ram_id_MPORT_mask = 1'h1;
  assign ram_id_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_addr_io_deq_bits_MPORT_addr = value_1;
  assign ram_addr_io_deq_bits_MPORT_data = ram_addr[ram_addr_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_addr_MPORT_data = io_enq_bits_addr;
  assign ram_addr_MPORT_addr = value;
  assign ram_addr_MPORT_mask = 1'h1;
  assign ram_addr_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_echo_real_last_io_deq_bits_MPORT_addr = value_1;
  assign ram_echo_real_last_io_deq_bits_MPORT_data = ram_echo_real_last[ram_echo_real_last_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 218:16]
  assign ram_echo_real_last_MPORT_data = io_enq_bits_echo_real_last;
  assign ram_echo_real_last_MPORT_addr = value;
  assign ram_echo_real_last_MPORT_mask = 1'h1;
  assign ram_echo_real_last_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 241:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 240:19]
  assign io_deq_bits_id = ram_id_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  assign io_deq_bits_addr = ram_addr_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  assign io_deq_bits_echo_real_last = ram_echo_real_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 242:15]
  always @(posedge clock) begin
    if(ram_id_MPORT_en & ram_id_MPORT_mask) begin
      ram_id[ram_id_MPORT_addr] <= ram_id_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if(ram_addr_MPORT_en & ram_addr_MPORT_mask) begin
      ram_addr[ram_addr_MPORT_addr] <= ram_addr_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if(ram_echo_real_last_MPORT_en & ram_echo_real_last_MPORT_mask) begin
      ram_echo_real_last[ram_echo_real_last_MPORT_addr] <= ram_echo_real_last_MPORT_data; // @[Decoupled.scala 218:16]
    end
    if (reset) begin // @[Counter.scala 60:40]
      value <= 1'h0; // @[Counter.scala 60:40]
    end else if (do_enq) begin // @[Decoupled.scala 229:17]
      value <= _value_T_1; // @[Counter.scala 76:15]
    end
    if (reset) begin // @[Counter.scala 60:40]
      value_1 <= 1'h0; // @[Counter.scala 60:40]
    end else if (do_deq) begin // @[Decoupled.scala 233:17]
      value_1 <= _value_1_T_1; // @[Counter.scala 76:15]
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
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_id[initvar] = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_addr[initvar] = _RAND_1[11:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    ram_echo_real_last[initvar] = _RAND_2[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  value = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  value_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  maybe_full = _RAND_5[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
