module HellaCacheArbiter(
  input         clock,
  output        io_requestor_0_req_ready,
  input         io_requestor_0_req_valid,
  input  [39:0] io_requestor_0_req_bits_addr,
  input         io_requestor_0_s1_kill,
  output        io_requestor_0_s2_nack,
  output        io_requestor_0_resp_valid,
  output [63:0] io_requestor_0_resp_bits_data,
  output        io_requestor_0_s2_xcpt_ae_ld,
  output        io_requestor_1_req_ready,
  input         io_requestor_1_req_valid,
  input  [39:0] io_requestor_1_req_bits_addr,
  input  [6:0]  io_requestor_1_req_bits_tag,
  input  [4:0]  io_requestor_1_req_bits_cmd,
  input  [1:0]  io_requestor_1_req_bits_size,
  input         io_requestor_1_req_bits_signed,
  input  [1:0]  io_requestor_1_req_bits_dprv,
  input         io_requestor_1_s1_kill,
  input  [63:0] io_requestor_1_s1_data_data,
  output        io_requestor_1_s2_nack,
  output        io_requestor_1_resp_valid,
  output [6:0]  io_requestor_1_resp_bits_tag,
  output [1:0]  io_requestor_1_resp_bits_size,
  output [63:0] io_requestor_1_resp_bits_data,
  output        io_requestor_1_resp_bits_replay,
  output        io_requestor_1_resp_bits_has_data,
  output [63:0] io_requestor_1_resp_bits_data_word_bypass,
  output        io_requestor_1_replay_next,
  output        io_requestor_1_s2_xcpt_ma_ld,
  output        io_requestor_1_s2_xcpt_ma_st,
  output        io_requestor_1_s2_xcpt_pf_ld,
  output        io_requestor_1_s2_xcpt_pf_st,
  output        io_requestor_1_s2_xcpt_ae_ld,
  output        io_requestor_1_s2_xcpt_ae_st,
  output        io_requestor_1_ordered,
  output        io_requestor_1_perf_release,
  output        io_requestor_1_perf_grant,
  input         io_mem_req_ready,
  output        io_mem_req_valid,
  output [39:0] io_mem_req_bits_addr,
  output [6:0]  io_mem_req_bits_tag,
  output [4:0]  io_mem_req_bits_cmd,
  output [1:0]  io_mem_req_bits_size,
  output        io_mem_req_bits_signed,
  output [1:0]  io_mem_req_bits_dprv,
  output        io_mem_req_bits_phys,
  output        io_mem_s1_kill,
  output [63:0] io_mem_s1_data_data,
  input         io_mem_s2_nack,
  input         io_mem_resp_valid,
  input  [6:0]  io_mem_resp_bits_tag,
  input  [1:0]  io_mem_resp_bits_size,
  input  [63:0] io_mem_resp_bits_data,
  input         io_mem_resp_bits_replay,
  input         io_mem_resp_bits_has_data,
  input  [63:0] io_mem_resp_bits_data_word_bypass,
  input         io_mem_replay_next,
  input         io_mem_s2_xcpt_ma_ld,
  input         io_mem_s2_xcpt_ma_st,
  input         io_mem_s2_xcpt_pf_ld,
  input         io_mem_s2_xcpt_pf_st,
  input         io_mem_s2_xcpt_ae_ld,
  input         io_mem_s2_xcpt_ae_st,
  input         io_mem_ordered,
  input         io_mem_perf_release,
  input         io_mem_perf_grant
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg  s2_id_x1; // @[HellaCacheArbiter.scala 19:20]
  reg  s2_id; // @[HellaCacheArbiter.scala 20:20]
  wire [7:0] _io_mem_req_bits_tag_T = {io_requestor_1_req_bits_tag,1'h1}; // @[Cat.scala 29:58]
  wire [7:0] _GEN_1 = io_requestor_0_req_valid ? 8'h0 : _io_mem_req_bits_tag_T; // @[HellaCacheArbiter.scala 49:26 HellaCacheArbiter.scala 33:29 HellaCacheArbiter.scala 33:29]
  wire  _T = ~s2_id_x1; // @[HellaCacheArbiter.scala 50:21]
  wire  _T_1 = ~s2_id; // @[HellaCacheArbiter.scala 51:21]
  wire  tag_hit = ~(io_mem_resp_bits_tag[0]); // @[HellaCacheArbiter.scala 59:57]
  assign io_requestor_0_req_ready = io_mem_req_ready; // @[HellaCacheArbiter.scala 25:31]
  assign io_requestor_0_s2_nack = io_mem_s2_nack & _T_1; // @[HellaCacheArbiter.scala 64:49]
  assign io_requestor_0_resp_valid = io_mem_resp_valid & tag_hit; // @[HellaCacheArbiter.scala 60:39]
  assign io_requestor_0_resp_bits_data = io_mem_resp_bits_data; // @[HellaCacheArbiter.scala 69:17]
  assign io_requestor_0_s2_xcpt_ae_ld = io_mem_s2_xcpt_ae_ld; // @[HellaCacheArbiter.scala 61:31]
  assign io_requestor_1_req_ready = io_requestor_0_req_ready & (~io_requestor_0_req_valid); // @[HellaCacheArbiter.scala 27:64]
  assign io_requestor_1_s2_nack = io_mem_s2_nack & s2_id; // @[HellaCacheArbiter.scala 64:49]
  assign io_requestor_1_resp_valid = io_mem_resp_valid & (io_mem_resp_bits_tag[0]); // @[HellaCacheArbiter.scala 60:39]
  assign io_requestor_1_resp_bits_tag = {{1'd0}, io_mem_resp_bits_tag[6:1]}; // @[HellaCacheArbiter.scala 70:45]
  assign io_requestor_1_resp_bits_size = io_mem_resp_bits_size; // @[HellaCacheArbiter.scala 69:17]
  assign io_requestor_1_resp_bits_data = io_mem_resp_bits_data; // @[HellaCacheArbiter.scala 69:17]
  assign io_requestor_1_resp_bits_replay = io_mem_resp_bits_replay; // @[HellaCacheArbiter.scala 69:17]
  assign io_requestor_1_resp_bits_has_data = io_mem_resp_bits_has_data; // @[HellaCacheArbiter.scala 69:17]
  assign io_requestor_1_resp_bits_data_word_bypass = io_mem_resp_bits_data_word_bypass; // @[HellaCacheArbiter.scala 69:17]
  assign io_requestor_1_replay_next = io_mem_replay_next; // @[HellaCacheArbiter.scala 72:35]
  assign io_requestor_1_s2_xcpt_ma_ld = io_mem_s2_xcpt_ma_ld; // @[HellaCacheArbiter.scala 61:31]
  assign io_requestor_1_s2_xcpt_ma_st = io_mem_s2_xcpt_ma_st; // @[HellaCacheArbiter.scala 61:31]
  assign io_requestor_1_s2_xcpt_pf_ld = io_mem_s2_xcpt_pf_ld; // @[HellaCacheArbiter.scala 61:31]
  assign io_requestor_1_s2_xcpt_pf_st = io_mem_s2_xcpt_pf_st; // @[HellaCacheArbiter.scala 61:31]
  assign io_requestor_1_s2_xcpt_ae_ld = io_mem_s2_xcpt_ae_ld; // @[HellaCacheArbiter.scala 61:31]
  assign io_requestor_1_s2_xcpt_ae_st = io_mem_s2_xcpt_ae_st; // @[HellaCacheArbiter.scala 61:31]
  assign io_requestor_1_ordered = io_mem_ordered; // @[HellaCacheArbiter.scala 62:31]
  assign io_requestor_1_perf_release = io_mem_perf_release; // @[HellaCacheArbiter.scala 63:28]
  assign io_requestor_1_perf_grant = io_mem_perf_grant; // @[HellaCacheArbiter.scala 63:28]
  assign io_mem_req_valid = io_requestor_0_req_valid | io_requestor_1_req_valid; // @[HellaCacheArbiter.scala 24:63]
  assign io_mem_req_bits_addr = io_requestor_0_req_valid ? io_requestor_0_req_bits_addr : io_requestor_1_req_bits_addr; // @[HellaCacheArbiter.scala 49:26 HellaCacheArbiter.scala 32:25 HellaCacheArbiter.scala 32:25]
  assign io_mem_req_bits_tag = _GEN_1[6:0];
  assign io_mem_req_bits_cmd = io_requestor_0_req_valid ? 5'h0 : io_requestor_1_req_bits_cmd; // @[HellaCacheArbiter.scala 49:26 HellaCacheArbiter.scala 32:25 HellaCacheArbiter.scala 32:25]
  assign io_mem_req_bits_size = io_requestor_0_req_valid ? 2'h3 : io_requestor_1_req_bits_size; // @[HellaCacheArbiter.scala 49:26 HellaCacheArbiter.scala 32:25 HellaCacheArbiter.scala 32:25]
  assign io_mem_req_bits_signed = io_requestor_0_req_valid ? 1'h0 : io_requestor_1_req_bits_signed; // @[HellaCacheArbiter.scala 49:26 HellaCacheArbiter.scala 32:25 HellaCacheArbiter.scala 32:25]
  assign io_mem_req_bits_dprv = io_requestor_0_req_valid ? 2'h1 : io_requestor_1_req_bits_dprv; // @[HellaCacheArbiter.scala 49:26 HellaCacheArbiter.scala 32:25 HellaCacheArbiter.scala 32:25]
  assign io_mem_req_bits_phys = io_requestor_0_req_valid; // @[HellaCacheArbiter.scala 49:26 HellaCacheArbiter.scala 32:25 HellaCacheArbiter.scala 32:25]
  assign io_mem_s1_kill = _T ? io_requestor_0_s1_kill : io_requestor_1_s1_kill; // @[HellaCacheArbiter.scala 50:34 HellaCacheArbiter.scala 37:24 HellaCacheArbiter.scala 37:24]
  assign io_mem_s1_data_data = _T ? 64'h0 : io_requestor_1_s1_data_data; // @[HellaCacheArbiter.scala 50:34 HellaCacheArbiter.scala 38:24 HellaCacheArbiter.scala 38:24]
  always @(posedge clock) begin
    if (io_requestor_0_req_valid) begin // @[HellaCacheArbiter.scala 49:26]
      s2_id_x1 <= 1'h0; // @[HellaCacheArbiter.scala 34:15]
    end else begin
      s2_id_x1 <= 1'h1; // @[HellaCacheArbiter.scala 34:15]
    end
    s2_id <= s2_id_x1; // @[HellaCacheArbiter.scala 20:20]
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
  s2_id_x1 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  s2_id = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
