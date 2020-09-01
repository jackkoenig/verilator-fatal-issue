module AsyncQueueSink_1(
  input         clock,
  input         reset,
  input         io_deq_ready,
  output        io_deq_valid,
  output [2:0]  io_deq_bits_opcode,
  output [1:0]  io_deq_bits_size,
  output        io_deq_bits_source,
  output [8:0]  io_deq_bits_address,
  output [3:0]  io_deq_bits_mask,
  output [31:0] io_deq_bits_data,
  input  [2:0]  io_async_mem_0_opcode,
  input  [8:0]  io_async_mem_0_address,
  input  [31:0] io_async_mem_0_data,
  output        io_async_ridx,
  input         io_async_widx,
  output        io_async_safe_ridx_valid,
  input         io_async_safe_widx_valid,
  input         io_async_safe_source_reset_n,
  output        io_async_safe_sink_reset_n
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  widx_widx_gray_clock; // @[ShiftReg.scala 45:23]
  wire  widx_widx_gray_reset; // @[ShiftReg.scala 45:23]
  wire  widx_widx_gray_io_d; // @[ShiftReg.scala 45:23]
  wire  widx_widx_gray_io_q; // @[ShiftReg.scala 45:23]
  wire  io_deq_bits_deq_bits_reg_clock; // @[SynchronizerReg.scala 197:25]
  wire [54:0] io_deq_bits_deq_bits_reg_io_d; // @[SynchronizerReg.scala 197:25]
  wire [54:0] io_deq_bits_deq_bits_reg_io_q; // @[SynchronizerReg.scala 197:25]
  wire  io_deq_bits_deq_bits_reg_io_en; // @[SynchronizerReg.scala 197:25]
  wire  sink_valid_0_io_in; // @[AsyncQueue.scala 168:33]
  wire  sink_valid_0_io_out; // @[AsyncQueue.scala 168:33]
  wire  sink_valid_0_clock; // @[AsyncQueue.scala 168:33]
  wire  sink_valid_0_reset; // @[AsyncQueue.scala 168:33]
  wire  sink_valid_1_io_in; // @[AsyncQueue.scala 169:33]
  wire  sink_valid_1_io_out; // @[AsyncQueue.scala 169:33]
  wire  sink_valid_1_clock; // @[AsyncQueue.scala 169:33]
  wire  sink_valid_1_reset; // @[AsyncQueue.scala 169:33]
  wire  source_extend_io_in; // @[AsyncQueue.scala 171:31]
  wire  source_extend_io_out; // @[AsyncQueue.scala 171:31]
  wire  source_extend_clock; // @[AsyncQueue.scala 171:31]
  wire  source_extend_reset; // @[AsyncQueue.scala 171:31]
  wire  source_valid_io_in; // @[AsyncQueue.scala 172:31]
  wire  source_valid_io_out; // @[AsyncQueue.scala 172:31]
  wire  source_valid_clock; // @[AsyncQueue.scala 172:31]
  wire  source_valid_reset; // @[AsyncQueue.scala 172:31]
  wire  _ridx_T_1 = io_deq_ready & io_deq_valid; // @[Decoupled.scala 40:37]
  wire  source_ready = source_valid_io_out;
  wire  _ridx_T_2 = ~source_ready; // @[AsyncQueue.scala 144:79]
  reg  ridx_ridx_bin; // @[AsyncQueue.scala 52:25]
  wire  ridx_incremented = _ridx_T_2 ? 1'h0 : ridx_ridx_bin + _ridx_T_1; // @[AsyncQueue.scala 53:23]
  wire  widx = widx_widx_gray_io_q; // @[ShiftReg.scala 48:24 ShiftReg.scala 48:24]
  wire [45:0] io_deq_bits_io_deq_bits_deq_bits_reg_io_d_left = {io_async_mem_0_address,4'hf,io_async_mem_0_data,1'h0}; // @[SynchronizerReg.scala 199:24]
  wire [8:0] io_deq_bits_io_deq_bits_deq_bits_reg_io_d_right = {io_async_mem_0_opcode,3'h0,3'h4}; // @[SynchronizerReg.scala 199:24]
  wire [54:0] _io_deq_bits_WIRE_1 = io_deq_bits_deq_bits_reg_io_q;
  reg  valid_reg; // @[AsyncQueue.scala 161:56]
  reg  ridx_gray; // @[AsyncQueue.scala 164:55]
  AsyncResetSynchronizerShiftReg_w1_d3_i0 widx_widx_gray ( // @[ShiftReg.scala 45:23]
    .clock(widx_widx_gray_clock),
    .reset(widx_widx_gray_reset),
    .io_d(widx_widx_gray_io_d),
    .io_q(widx_widx_gray_io_q)
  );
  ClockCrossingReg_w55 io_deq_bits_deq_bits_reg ( // @[SynchronizerReg.scala 197:25]
    .clock(io_deq_bits_deq_bits_reg_clock),
    .io_d(io_deq_bits_deq_bits_reg_io_d),
    .io_q(io_deq_bits_deq_bits_reg_io_q),
    .io_en(io_deq_bits_deq_bits_reg_io_en)
  );
  AsyncValidSync sink_valid_0 ( // @[AsyncQueue.scala 168:33]
    .io_in(sink_valid_0_io_in),
    .io_out(sink_valid_0_io_out),
    .clock(sink_valid_0_clock),
    .reset(sink_valid_0_reset)
  );
  AsyncValidSync sink_valid_1 ( // @[AsyncQueue.scala 169:33]
    .io_in(sink_valid_1_io_in),
    .io_out(sink_valid_1_io_out),
    .clock(sink_valid_1_clock),
    .reset(sink_valid_1_reset)
  );
  AsyncValidSync source_extend ( // @[AsyncQueue.scala 171:31]
    .io_in(source_extend_io_in),
    .io_out(source_extend_io_out),
    .clock(source_extend_clock),
    .reset(source_extend_reset)
  );
  AsyncValidSync source_valid ( // @[AsyncQueue.scala 172:31]
    .io_in(source_valid_io_in),
    .io_out(source_valid_io_out),
    .clock(source_valid_clock),
    .reset(source_valid_reset)
  );
  assign io_deq_valid = valid_reg & source_ready; // @[AsyncQueue.scala 162:29]
  assign io_deq_bits_opcode = _io_deq_bits_WIRE_1[54:52]; // @[SynchronizerReg.scala 201:26]
  assign io_deq_bits_size = _io_deq_bits_WIRE_1[48:47]; // @[SynchronizerReg.scala 201:26]
  assign io_deq_bits_source = _io_deq_bits_WIRE_1[46]; // @[SynchronizerReg.scala 201:26]
  assign io_deq_bits_address = _io_deq_bits_WIRE_1[45:37]; // @[SynchronizerReg.scala 201:26]
  assign io_deq_bits_mask = _io_deq_bits_WIRE_1[36:33]; // @[SynchronizerReg.scala 201:26]
  assign io_deq_bits_data = _io_deq_bits_WIRE_1[32:1]; // @[SynchronizerReg.scala 201:26]
  assign io_async_ridx = ridx_gray; // @[AsyncQueue.scala 165:17]
  assign io_async_safe_ridx_valid = sink_valid_1_io_out; // @[AsyncQueue.scala 185:20]
  assign io_async_safe_sink_reset_n = ~reset; // @[AsyncQueue.scala 189:25]
  assign widx_widx_gray_clock = clock;
  assign widx_widx_gray_reset = reset;
  assign widx_widx_gray_io_d = io_async_widx; // @[ShiftReg.scala 47:16]
  assign io_deq_bits_deq_bits_reg_clock = clock;
  assign io_deq_bits_deq_bits_reg_io_d = {io_deq_bits_io_deq_bits_deq_bits_reg_io_d_right,
    io_deq_bits_io_deq_bits_deq_bits_reg_io_d_left}; // @[SynchronizerReg.scala 199:24]
  assign io_deq_bits_deq_bits_reg_io_en = source_ready & (ridx_incremented != widx); // @[AsyncQueue.scala 146:28]
  assign sink_valid_0_io_in = 1'h1; // @[AsyncQueue.scala 183:24]
  assign sink_valid_0_clock = clock; // @[AsyncQueue.scala 178:25]
  assign sink_valid_0_reset = reset | (~io_async_safe_source_reset_n); // @[AsyncQueue.scala 173:66]
  assign sink_valid_1_io_in = sink_valid_0_io_out; // @[AsyncQueue.scala 184:24]
  assign sink_valid_1_clock = clock; // @[AsyncQueue.scala 179:25]
  assign sink_valid_1_reset = reset | (~io_async_safe_source_reset_n); // @[AsyncQueue.scala 174:66]
  assign source_extend_io_in = io_async_safe_widx_valid; // @[AsyncQueue.scala 186:25]
  assign source_extend_clock = clock; // @[AsyncQueue.scala 180:25]
  assign source_extend_reset = reset | (~io_async_safe_source_reset_n); // @[AsyncQueue.scala 175:66]
  assign source_valid_io_in = source_extend_io_out; // @[AsyncQueue.scala 187:24]
  assign source_valid_clock = clock; // @[AsyncQueue.scala 181:25]
  assign source_valid_reset = reset; // @[AsyncQueue.scala 176:34]
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      ridx_ridx_bin <= 1'h0;
    end else if (_ridx_T_2) begin
      ridx_ridx_bin <= 1'h0;
    end else begin
      ridx_ridx_bin <= ridx_ridx_bin + _ridx_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      valid_reg <= 1'h0;
    end else begin
      valid_reg <= source_ready & (ridx_incremented != widx);
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin
      ridx_gray <= 1'h0;
    end else if (_ridx_T_2) begin
      ridx_gray <= 1'h0;
    end else begin
      ridx_gray <= ridx_ridx_bin + _ridx_T_1;
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
  ridx_ridx_bin = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  valid_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  ridx_gray = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    ridx_ridx_bin = 1'h0;
  end
  if (reset) begin
    valid_reg = 1'h0;
  end
  if (reset) begin
    ridx_gray = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
