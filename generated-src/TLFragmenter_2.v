module TLFragmenter_2(
  input         clock,
  input         reset,
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [2:0]  auto_in_a_bits_size,
  input  [4:0]  auto_in_a_bits_source,
  input  [11:0] auto_in_a_bits_address,
  input  [7:0]  auto_in_a_bits_mask,
  input  [63:0] auto_in_a_bits_data,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output [2:0]  auto_in_d_bits_opcode,
  output [2:0]  auto_in_d_bits_size,
  output [4:0]  auto_in_d_bits_source,
  output [63:0] auto_in_d_bits_data,
  input         auto_out_a_ready,
  output        auto_out_a_valid,
  output [2:0]  auto_out_a_bits_opcode,
  output [1:0]  auto_out_a_bits_size,
  output [8:0]  auto_out_a_bits_source,
  output [11:0] auto_out_a_bits_address,
  output [7:0]  auto_out_a_bits_mask,
  output [63:0] auto_out_a_bits_data,
  output        auto_out_d_ready,
  input         auto_out_d_valid,
  input  [2:0]  auto_out_d_bits_opcode,
  input  [1:0]  auto_out_d_bits_size,
  input  [8:0]  auto_out_d_bits_source,
  input  [63:0] auto_out_d_bits_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  wire  repeater_clock; // @[Fragmenter.scala 262:30]
  wire  repeater_reset; // @[Fragmenter.scala 262:30]
  wire  repeater_io_repeat; // @[Fragmenter.scala 262:30]
  wire  repeater_io_full; // @[Fragmenter.scala 262:30]
  wire  repeater_io_enq_ready; // @[Fragmenter.scala 262:30]
  wire  repeater_io_enq_valid; // @[Fragmenter.scala 262:30]
  wire [2:0] repeater_io_enq_bits_opcode; // @[Fragmenter.scala 262:30]
  wire [2:0] repeater_io_enq_bits_size; // @[Fragmenter.scala 262:30]
  wire [4:0] repeater_io_enq_bits_source; // @[Fragmenter.scala 262:30]
  wire [11:0] repeater_io_enq_bits_address; // @[Fragmenter.scala 262:30]
  wire [7:0] repeater_io_enq_bits_mask; // @[Fragmenter.scala 262:30]
  wire  repeater_io_deq_ready; // @[Fragmenter.scala 262:30]
  wire  repeater_io_deq_valid; // @[Fragmenter.scala 262:30]
  wire [2:0] repeater_io_deq_bits_opcode; // @[Fragmenter.scala 262:30]
  wire [2:0] repeater_io_deq_bits_size; // @[Fragmenter.scala 262:30]
  wire [4:0] repeater_io_deq_bits_source; // @[Fragmenter.scala 262:30]
  wire [11:0] repeater_io_deq_bits_address; // @[Fragmenter.scala 262:30]
  wire [7:0] repeater_io_deq_bits_mask; // @[Fragmenter.scala 262:30]
  reg [2:0] acknum; // @[Fragmenter.scala 189:29]
  reg [2:0] dOrig; // @[Fragmenter.scala 190:24]
  reg  dToggle; // @[Fragmenter.scala 191:30]
  wire [2:0] dFragnum = auto_out_d_bits_source[2:0]; // @[Fragmenter.scala 192:41]
  wire  dFirst = acknum == 3'h0; // @[Fragmenter.scala 193:29]
  wire  dLast = dFragnum == 3'h0; // @[Fragmenter.scala 194:30]
  wire [3:0] dsizeOH = 4'h1 << auto_out_d_bits_size; // @[OneHot.scala 65:12]
  wire [5:0] _dsizeOH1_T_1 = 6'h7 << auto_out_d_bits_size; // @[package.scala 212:77]
  wire [2:0] dsizeOH1 = ~(_dsizeOH1_T_1[2:0]); // @[package.scala 212:46]
  wire  dHasData = auto_out_d_bits_opcode[0]; // @[Edges.scala 107:36]
  wire  ack_decrement = dHasData | (dsizeOH[3]); // @[Fragmenter.scala 204:32]
  wire [5:0] _dFirst_size_T = {dFragnum, 3'h0}; // @[Fragmenter.scala 206:47]
  wire [5:0] _GEN_7 = {{3'd0}, dsizeOH1}; // @[Fragmenter.scala 206:69]
  wire [5:0] dFirst_size_left = _dFirst_size_T | _GEN_7; // @[Fragmenter.scala 206:69]
  wire [6:0] _dFirst_size_T_1 = {dFirst_size_left, 1'h0}; // @[package.scala 210:35]
  wire [6:0] _dFirst_size_T_2 = _dFirst_size_T_1 | 7'h1; // @[package.scala 210:40]
  wire [6:0] _dFirst_size_T_3 = {1'h0,dFirst_size_left}; // @[Cat.scala 29:58]
  wire [6:0] _dFirst_size_T_4 = ~_dFirst_size_T_3; // @[package.scala 210:53]
  wire [6:0] _dFirst_size_T_5 = _dFirst_size_T_2 & _dFirst_size_T_4; // @[package.scala 210:51]
  wire [2:0] dFirst_size_hi = _dFirst_size_T_5[6:4]; // @[OneHot.scala 30:18]
  wire [3:0] dFirst_size_lo = _dFirst_size_T_5[3:0]; // @[OneHot.scala 31:18]
  wire  dFirst_size_right = |dFirst_size_hi; // @[OneHot.scala 32:14]
  wire [3:0] _GEN_8 = {{1'd0}, dFirst_size_hi}; // @[OneHot.scala 32:28]
  wire [3:0] _dFirst_size_T_6 = _GEN_8 | dFirst_size_lo; // @[OneHot.scala 32:28]
  wire [1:0] dFirst_size_hi_1 = _dFirst_size_T_6[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] dFirst_size_lo_1 = _dFirst_size_T_6[1:0]; // @[OneHot.scala 31:18]
  wire  dFirst_size_right_1 = |dFirst_size_hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _dFirst_size_T_7 = dFirst_size_hi_1 | dFirst_size_lo_1; // @[OneHot.scala 32:28]
  wire  dFirst_size_left_1 = _dFirst_size_T_7[1]; // @[CircuitMath.scala 30:8]
  wire [2:0] dFirst_size = {dFirst_size_right,dFirst_size_right_1,dFirst_size_left_1}; // @[Cat.scala 29:58]
  wire  drop = (~dHasData) & (~dLast); // @[Fragmenter.scala 222:30]
  wire  auto_data_1_d_ready = auto_in_d_ready | drop; // @[Fragmenter.scala 223:35]
  wire  _T_7 = auto_data_1_d_ready & auto_out_d_valid; // @[Decoupled.scala 40:37]
  wire [2:0] _GEN_9 = {{2'd0}, ack_decrement}; // @[Fragmenter.scala 209:55]
  wire [2:0] _acknum_T_1 = acknum - _GEN_9; // @[Fragmenter.scala 209:55]
  wire [2:0] aFrag = repeater_io_deq_bits_size > 3'h3 ? 3'h3 : repeater_io_deq_bits_size; // @[Fragmenter.scala 285:24]
  wire [12:0] _aOrigOH1_T_1 = 13'h3f << repeater_io_deq_bits_size; // @[package.scala 212:77]
  wire [5:0] aOrigOH1 = ~(_aOrigOH1_T_1[5:0]); // @[package.scala 212:46]
  wire [9:0] _aFragOH1_T_1 = 10'h7 << aFrag; // @[package.scala 212:77]
  wire [2:0] aFragOH1 = ~(_aFragOH1_T_1[2:0]); // @[package.scala 212:46]
  wire  aHasData = ~(repeater_io_deq_bits_opcode[2]); // @[Edges.scala 93:28]
  reg [2:0] gennum; // @[Fragmenter.scala 291:29]
  wire  aFirst = gennum == 3'h0; // @[Fragmenter.scala 292:29]
  wire [2:0] _old_gennum1_T_2 = gennum - 3'h1; // @[Fragmenter.scala 293:79]
  wire [2:0] old_gennum1 = aFirst ? aOrigOH1[5:3] : _old_gennum1_T_2; // @[Fragmenter.scala 293:30]
  wire [2:0] _new_gennum_T = ~old_gennum1; // @[Fragmenter.scala 294:28]
  wire [2:0] new_gennum = ~_new_gennum_T; // @[Fragmenter.scala 294:26]
  reg  aToggle_r; // @[Reg.scala 15:16]
  wire  _GEN_5 = aFirst ? dToggle : aToggle_r; // @[Reg.scala 16:19 Reg.scala 16:23 Reg.scala 15:16]
  wire  auto_data_1_a_bits_source_right_left = ~_GEN_5; // @[Fragmenter.scala 297:23]
  wire  auto_data_1_a_valid = repeater_io_deq_valid; // @[Nodes.scala 1213:84 Fragmenter.scala 303:15]
  wire  _T_8 = auto_out_a_ready & auto_data_1_a_valid; // @[Decoupled.scala 40:37]
  wire  _repeater_io_repeat_T = ~aHasData; // @[Fragmenter.scala 302:31]
  wire [5:0] _auto_data_1_a_bits_address_T = {old_gennum1, 3'h0}; // @[Fragmenter.scala 304:65]
  wire [5:0] _auto_data_1_a_bits_address_T_1 = ~aOrigOH1; // @[Fragmenter.scala 304:90]
  wire [5:0] _auto_data_1_a_bits_address_T_2 = _auto_data_1_a_bits_address_T | _auto_data_1_a_bits_address_T_1; // @[Fragmenter.scala 304:88]
  wire [5:0] _GEN_10 = {{3'd0}, aFragOH1}; // @[Fragmenter.scala 304:100]
  wire [5:0] _auto_data_1_a_bits_address_T_3 = _auto_data_1_a_bits_address_T_2 | _GEN_10; // @[Fragmenter.scala 304:100]
  wire [5:0] _auto_data_1_a_bits_address_T_4 = _auto_data_1_a_bits_address_T_3 | 6'h7; // @[Fragmenter.scala 304:111]
  wire [5:0] _auto_data_1_a_bits_address_T_5 = ~_auto_data_1_a_bits_address_T_4; // @[Fragmenter.scala 304:51]
  wire [11:0] _GEN_11 = {{6'd0}, _auto_data_1_a_bits_address_T_5}; // @[Fragmenter.scala 304:49]
  wire [5:0] auto_data_1_a_bits_source_right = {repeater_io_deq_bits_source,auto_data_1_a_bits_source_right_left}; // @[Cat.scala 29:58]
  wire  _T_9 = ~repeater_io_full; // @[Fragmenter.scala 309:17]
  Repeater_2 repeater ( // @[Fragmenter.scala 262:30]
    .clock(repeater_clock),
    .reset(repeater_reset),
    .io_repeat(repeater_io_repeat),
    .io_full(repeater_io_full),
    .io_enq_ready(repeater_io_enq_ready),
    .io_enq_valid(repeater_io_enq_valid),
    .io_enq_bits_opcode(repeater_io_enq_bits_opcode),
    .io_enq_bits_size(repeater_io_enq_bits_size),
    .io_enq_bits_source(repeater_io_enq_bits_source),
    .io_enq_bits_address(repeater_io_enq_bits_address),
    .io_enq_bits_mask(repeater_io_enq_bits_mask),
    .io_deq_ready(repeater_io_deq_ready),
    .io_deq_valid(repeater_io_deq_valid),
    .io_deq_bits_opcode(repeater_io_deq_bits_opcode),
    .io_deq_bits_size(repeater_io_deq_bits_size),
    .io_deq_bits_source(repeater_io_deq_bits_source),
    .io_deq_bits_address(repeater_io_deq_bits_address),
    .io_deq_bits_mask(repeater_io_deq_bits_mask)
  );
  assign auto_in_a_ready = repeater_io_enq_ready; // @[Nodes.scala 1216:84 Fragmenter.scala 263:25]
  assign auto_in_d_valid = auto_out_d_valid & (~drop); // @[Fragmenter.scala 224:36]
  assign auto_in_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_d_bits_size = dFirst ? dFirst_size : dOrig; // @[Fragmenter.scala 227:32]
  assign auto_in_d_bits_source = auto_out_d_bits_source[8:4]; // @[Fragmenter.scala 226:47]
  assign auto_in_d_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_out_a_valid = repeater_io_deq_valid; // @[Nodes.scala 1213:84 Fragmenter.scala 303:15]
  assign auto_out_a_bits_opcode = repeater_io_deq_bits_opcode; // @[Nodes.scala 1213:84 Fragmenter.scala 303:15]
  assign auto_out_a_bits_size = aFrag[1:0]; // @[Nodes.scala 1213:84 Fragmenter.scala 306:25]
  assign auto_out_a_bits_source = {auto_data_1_a_bits_source_right,new_gennum}; // @[Cat.scala 29:58]
  assign auto_out_a_bits_address = repeater_io_deq_bits_address | _GEN_11; // @[Fragmenter.scala 304:49]
  assign auto_out_a_bits_mask = repeater_io_full ? 8'hff : auto_in_a_bits_mask; // @[Fragmenter.scala 313:31]
  assign auto_out_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_d_ready = auto_in_d_ready | drop; // @[Fragmenter.scala 223:35]
  assign repeater_clock = clock;
  assign repeater_reset = reset;
  assign repeater_io_repeat = (~aHasData) & (new_gennum != 3'h0); // @[Fragmenter.scala 302:41]
  assign repeater_io_enq_valid = auto_in_a_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign repeater_io_enq_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign repeater_io_enq_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign repeater_io_enq_bits_source = auto_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign repeater_io_enq_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign repeater_io_enq_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign repeater_io_deq_ready = auto_out_a_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  always @(posedge clock) begin
    if (reset) begin // @[Fragmenter.scala 189:29]
      acknum <= 3'h0; // @[Fragmenter.scala 189:29]
    end else if (_T_7) begin // @[Fragmenter.scala 208:29]
      if (dFirst) begin // @[Fragmenter.scala 209:24]
        acknum <= dFragnum;
      end else begin
        acknum <= _acknum_T_1;
      end
    end
    if (_T_7) begin // @[Fragmenter.scala 208:29]
      if (dFirst) begin // @[Fragmenter.scala 210:25]
        dOrig <= dFirst_size; // @[Fragmenter.scala 211:19]
      end
    end
    if (reset) begin // @[Fragmenter.scala 191:30]
      dToggle <= 1'h0; // @[Fragmenter.scala 191:30]
    end else if (_T_7) begin // @[Fragmenter.scala 208:29]
      if (dFirst) begin // @[Fragmenter.scala 210:25]
        dToggle <= auto_out_d_bits_source[3]; // @[Fragmenter.scala 212:21]
      end
    end
    if (reset) begin // @[Fragmenter.scala 291:29]
      gennum <= 3'h0; // @[Fragmenter.scala 291:29]
    end else if (_T_8) begin // @[Fragmenter.scala 300:29]
      gennum <= new_gennum; // @[Fragmenter.scala 300:38]
    end
    if (aFirst) begin // @[Reg.scala 16:19]
      aToggle_r <= dToggle; // @[Reg.scala 16:23]
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
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  acknum = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  dOrig = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  dToggle = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  gennum = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  aToggle_r = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
