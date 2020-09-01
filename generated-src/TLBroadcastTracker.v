module TLBroadcastTracker(
  input         clock,
  input         reset,
  input         io_in_a_first,
  output        io_in_a_ready,
  input         io_in_a_valid,
  input  [2:0]  io_in_a_bits_opcode,
  input  [2:0]  io_in_a_bits_param,
  input  [2:0]  io_in_a_bits_size,
  input  [4:0]  io_in_a_bits_source,
  input  [31:0] io_in_a_bits_address,
  input         io_in_a_bits_user_amba_prot_bufferable,
  input         io_in_a_bits_user_amba_prot_modifiable,
  input         io_in_a_bits_user_amba_prot_readalloc,
  input         io_in_a_bits_user_amba_prot_writealloc,
  input         io_in_a_bits_user_amba_prot_privileged,
  input         io_in_a_bits_user_amba_prot_secure,
  input         io_in_a_bits_user_amba_prot_fetch,
  input  [7:0]  io_in_a_bits_mask,
  input  [63:0] io_in_a_bits_data,
  input         io_out_a_ready,
  output        io_out_a_valid,
  output [2:0]  io_out_a_bits_opcode,
  output [2:0]  io_out_a_bits_param,
  output [2:0]  io_out_a_bits_size,
  output [6:0]  io_out_a_bits_source,
  output [31:0] io_out_a_bits_address,
  output        io_out_a_bits_user_amba_prot_bufferable,
  output        io_out_a_bits_user_amba_prot_modifiable,
  output        io_out_a_bits_user_amba_prot_readalloc,
  output        io_out_a_bits_user_amba_prot_writealloc,
  output        io_out_a_bits_user_amba_prot_privileged,
  output        io_out_a_bits_user_amba_prot_secure,
  output        io_out_a_bits_user_amba_prot_fetch,
  output [7:0]  io_out_a_bits_mask,
  output [63:0] io_out_a_bits_data,
  input         io_probe_valid,
  input         io_probe_bits_count,
  input         io_probenack,
  input         io_probedack,
  input         io_probesack,
  input         io_d_last,
  input         io_e_last,
  output [4:0]  io_source,
  output [25:0] io_line,
  output        io_idle,
  output        io_need_d
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
`endif // RANDOMIZE_REG_INIT
  wire  o_data_clock; // @[Decoupled.scala 296:21]
  wire  o_data_reset; // @[Decoupled.scala 296:21]
  wire  o_data_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  o_data_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [7:0] o_data_io_enq_bits_mask; // @[Decoupled.scala 296:21]
  wire [63:0] o_data_io_enq_bits_data; // @[Decoupled.scala 296:21]
  wire  o_data_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  o_data_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [7:0] o_data_io_deq_bits_mask; // @[Decoupled.scala 296:21]
  wire [63:0] o_data_io_deq_bits_data; // @[Decoupled.scala 296:21]
  reg  got_e; // @[Broadcast.scala 423:24]
  reg  sent_d; // @[Broadcast.scala 424:24]
  reg  shared; // @[Broadcast.scala 425:20]
  reg [2:0] opcode; // @[Broadcast.scala 426:20]
  reg [2:0] param; // @[Broadcast.scala 427:20]
  reg [2:0] size; // @[Broadcast.scala 428:20]
  reg [4:0] source; // @[Broadcast.scala 429:20]
  reg  user_amba_prot_bufferable; // @[Broadcast.scala 430:20]
  reg  user_amba_prot_modifiable; // @[Broadcast.scala 430:20]
  reg  user_amba_prot_readalloc; // @[Broadcast.scala 430:20]
  reg  user_amba_prot_writealloc; // @[Broadcast.scala 430:20]
  reg  user_amba_prot_privileged; // @[Broadcast.scala 430:20]
  reg  user_amba_prot_secure; // @[Broadcast.scala 430:20]
  reg  user_amba_prot_fetch; // @[Broadcast.scala 430:20]
  reg [31:0] address; // @[Broadcast.scala 432:24]
  reg  count; // @[Broadcast.scala 433:20]
  wire  idle = got_e & sent_d; // @[Broadcast.scala 435:23]
  wire  _T = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37]
  wire  _T_1 = _T & io_in_a_first; // @[Broadcast.scala 437:24]
  wire  _got_e_T_2 = (io_in_a_bits_opcode != 3'h6) & (io_in_a_bits_opcode != 3'h7); // @[Broadcast.scala 441:64]
  wire  _GEN_0 = _T_1 ? 1'h0 : sent_d; // @[Broadcast.scala 437:42 Broadcast.scala 439:13 Broadcast.scala 424:24]
  wire  _GEN_1 = _T_1 ? 1'h0 : shared; // @[Broadcast.scala 437:42 Broadcast.scala 440:13 Broadcast.scala 425:20]
  wire  _GEN_2 = _T_1 ? _got_e_T_2 : got_e; // @[Broadcast.scala 437:42 Broadcast.scala 441:13 Broadcast.scala 423:24]
  wire  _GEN_15 = _T_1 | count; // @[Broadcast.scala 437:42 Broadcast.scala 449:13 Broadcast.scala 433:20]
  wire  _GEN_16 = io_probe_valid ? io_probe_bits_count : _GEN_15; // @[Broadcast.scala 453:25 Broadcast.scala 454:13]
  wire  _GEN_18 = io_d_last | _GEN_0; // @[Broadcast.scala 458:20 Broadcast.scala 460:12]
  wire  _GEN_19 = io_e_last | _GEN_2; // @[Broadcast.scala 462:20 Broadcast.scala 464:11]
  wire  _T_13 = io_probenack | io_probedack; // @[Broadcast.scala 467:22]
  wire  _count_T = io_probenack & io_probedack; // @[Broadcast.scala 469:39]
  wire [1:0] _count_T_1 = _count_T ? 2'h2 : 2'h1; // @[Broadcast.scala 469:25]
  wire [1:0] _GEN_22 = {{1'd0}, count}; // @[Broadcast.scala 469:20]
  wire [1:0] _count_T_3 = _GEN_22 - _count_T_1; // @[Broadcast.scala 469:20]
  wire [1:0] _GEN_20 = _T_13 ? _count_T_3 : {{1'd0}, _GEN_16}; // @[Broadcast.scala 467:39 Broadcast.scala 469:11]
  wire  _io_in_a_ready_T_1 = idle | (~io_in_a_first); // @[Broadcast.scala 485:26]
  wire  i_data_ready = o_data_io_enq_ready; // @[Broadcast.scala 482:20 Decoupled.scala 299:17]
  wire  probe_done = ~count; // @[Broadcast.scala 490:26]
  wire  acquire = (opcode == 3'h6) | (opcode == 3'h7); // @[Broadcast.scala 491:52]
  wire [1:0] transform = shared ? 2'h2 : 2'h3; // @[Broadcast.scala 493:22]
  wire [1:0] io_out_a_bits_source_right = acquire ? transform : 2'h0; // @[Broadcast.scala 500:35]
  Queue_28 o_data ( // @[Decoupled.scala 296:21]
    .clock(o_data_clock),
    .reset(o_data_reset),
    .io_enq_ready(o_data_io_enq_ready),
    .io_enq_valid(o_data_io_enq_valid),
    .io_enq_bits_mask(o_data_io_enq_bits_mask),
    .io_enq_bits_data(o_data_io_enq_bits_data),
    .io_deq_ready(o_data_io_deq_ready),
    .io_deq_valid(o_data_io_deq_valid),
    .io_deq_bits_mask(o_data_io_deq_bits_mask),
    .io_deq_bits_data(o_data_io_deq_bits_data)
  );
  assign io_in_a_ready = (idle | (~io_in_a_first)) & i_data_ready; // @[Broadcast.scala 485:45]
  assign io_out_a_valid = o_data_io_deq_valid & probe_done; // @[Broadcast.scala 496:34]
  assign io_out_a_bits_opcode = acquire ? 3'h4 : opcode; // @[Broadcast.scala 497:31]
  assign io_out_a_bits_param = acquire ? 3'h0 : param; // @[Broadcast.scala 498:31]
  assign io_out_a_bits_size = size; // @[Broadcast.scala 499:25]
  assign io_out_a_bits_source = {io_out_a_bits_source_right,source}; // @[Cat.scala 29:58]
  assign io_out_a_bits_address = address; // @[Broadcast.scala 501:25]
  assign io_out_a_bits_user_amba_prot_bufferable = user_amba_prot_bufferable; // @[BundleMap.scala 248:19]
  assign io_out_a_bits_user_amba_prot_modifiable = user_amba_prot_modifiable; // @[BundleMap.scala 248:19]
  assign io_out_a_bits_user_amba_prot_readalloc = user_amba_prot_readalloc; // @[BundleMap.scala 248:19]
  assign io_out_a_bits_user_amba_prot_writealloc = user_amba_prot_writealloc; // @[BundleMap.scala 248:19]
  assign io_out_a_bits_user_amba_prot_privileged = user_amba_prot_privileged; // @[BundleMap.scala 248:19]
  assign io_out_a_bits_user_amba_prot_secure = user_amba_prot_secure; // @[BundleMap.scala 248:19]
  assign io_out_a_bits_user_amba_prot_fetch = user_amba_prot_fetch; // @[BundleMap.scala 248:19]
  assign io_out_a_bits_mask = o_data_io_deq_bits_mask; // @[Broadcast.scala 502:25]
  assign io_out_a_bits_data = o_data_io_deq_bits_data; // @[Broadcast.scala 503:25]
  assign io_source = source; // @[Broadcast.scala 478:13]
  assign io_line = address[31:6]; // @[Broadcast.scala 479:22]
  assign io_idle = got_e & sent_d; // @[Broadcast.scala 435:23]
  assign io_need_d = ~sent_d; // @[Broadcast.scala 477:16]
  assign o_data_clock = clock;
  assign o_data_reset = reset;
  assign o_data_io_enq_valid = _io_in_a_ready_T_1 & io_in_a_valid; // @[Broadcast.scala 486:44]
  assign o_data_io_enq_bits_mask = io_in_a_bits_mask; // @[Broadcast.scala 482:20 Broadcast.scala 487:20]
  assign o_data_io_enq_bits_data = io_in_a_bits_data; // @[Broadcast.scala 482:20 Broadcast.scala 488:20]
  assign o_data_io_deq_ready = io_out_a_ready & probe_done; // @[Broadcast.scala 495:34]
  always @(posedge clock) begin
    got_e <= reset | _GEN_19; // @[Broadcast.scala 423:24 Broadcast.scala 423:24]
    sent_d <= reset | _GEN_18; // @[Broadcast.scala 424:24 Broadcast.scala 424:24]
    shared <= io_probesack | _GEN_1; // @[Broadcast.scala 472:23 Broadcast.scala 473:12]
    if (_T_1) begin // @[Broadcast.scala 437:42]
      opcode <= io_in_a_bits_opcode; // @[Broadcast.scala 442:13]
    end
    if (_T_1) begin // @[Broadcast.scala 437:42]
      param <= io_in_a_bits_param; // @[Broadcast.scala 443:13]
    end
    if (_T_1) begin // @[Broadcast.scala 437:42]
      size <= io_in_a_bits_size; // @[Broadcast.scala 444:13]
    end
    if (_T_1) begin // @[Broadcast.scala 437:42]
      source <= io_in_a_bits_source; // @[Broadcast.scala 445:13]
    end
    if (_T_1) begin // @[Broadcast.scala 437:42]
      user_amba_prot_bufferable <= io_in_a_bits_user_amba_prot_bufferable; // @[BundleMap.scala 248:19]
    end
    if (_T_1) begin // @[Broadcast.scala 437:42]
      user_amba_prot_modifiable <= io_in_a_bits_user_amba_prot_modifiable; // @[BundleMap.scala 248:19]
    end
    if (_T_1) begin // @[Broadcast.scala 437:42]
      user_amba_prot_readalloc <= io_in_a_bits_user_amba_prot_readalloc; // @[BundleMap.scala 248:19]
    end
    if (_T_1) begin // @[Broadcast.scala 437:42]
      user_amba_prot_writealloc <= io_in_a_bits_user_amba_prot_writealloc; // @[BundleMap.scala 248:19]
    end
    if (_T_1) begin // @[Broadcast.scala 437:42]
      user_amba_prot_privileged <= io_in_a_bits_user_amba_prot_privileged; // @[BundleMap.scala 248:19]
    end
    if (_T_1) begin // @[Broadcast.scala 437:42]
      user_amba_prot_secure <= io_in_a_bits_user_amba_prot_secure; // @[BundleMap.scala 248:19]
    end
    if (_T_1) begin // @[Broadcast.scala 437:42]
      user_amba_prot_fetch <= io_in_a_bits_user_amba_prot_fetch; // @[BundleMap.scala 248:19]
    end
    if (reset) begin // @[Broadcast.scala 432:24]
      address <= 32'h0; // @[Broadcast.scala 432:24]
    end else if (_T_1) begin // @[Broadcast.scala 437:42]
      address <= io_in_a_bits_address; // @[Broadcast.scala 448:13]
    end
    count <= _GEN_20[0];
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
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  got_e = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  sent_d = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  shared = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  opcode = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  param = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  size = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  source = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  user_amba_prot_bufferable = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  user_amba_prot_modifiable = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  user_amba_prot_readalloc = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  user_amba_prot_writealloc = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  user_amba_prot_privileged = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  user_amba_prot_secure = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  user_amba_prot_fetch = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  address = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  count = _RAND_15[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
