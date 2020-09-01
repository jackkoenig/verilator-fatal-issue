module IBuf(
  input         clock,
  input         reset,
  output        io_imem_ready,
  input         io_imem_valid,
  input         io_imem_bits_btb_taken,
  input         io_imem_bits_btb_bridx,
  input  [4:0]  io_imem_bits_btb_entry,
  input  [7:0]  io_imem_bits_btb_bht_history,
  input  [39:0] io_imem_bits_pc,
  input  [31:0] io_imem_bits_data,
  input         io_imem_bits_xcpt_pf_inst,
  input         io_imem_bits_xcpt_ae_inst,
  input         io_imem_bits_replay,
  input         io_kill,
  output [39:0] io_pc,
  output [4:0]  io_btb_resp_entry,
  output [7:0]  io_btb_resp_bht_history,
  input         io_inst_0_ready,
  output        io_inst_0_valid,
  output        io_inst_0_bits_xcpt0_pf_inst,
  output        io_inst_0_bits_xcpt0_ae_inst,
  output        io_inst_0_bits_xcpt1_pf_inst,
  output        io_inst_0_bits_xcpt1_ae_inst,
  output        io_inst_0_bits_replay,
  output        io_inst_0_bits_rvc,
  output [31:0] io_inst_0_bits_inst_bits,
  output [4:0]  io_inst_0_bits_inst_rd,
  output [4:0]  io_inst_0_bits_inst_rs1,
  output [4:0]  io_inst_0_bits_inst_rs2,
  output [4:0]  io_inst_0_bits_inst_rs3,
  output [31:0] io_inst_0_bits_raw
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] exp_io_in; // @[IBuf.scala 86:21]
  wire [31:0] exp_io_out_bits; // @[IBuf.scala 86:21]
  wire [4:0] exp_io_out_rd; // @[IBuf.scala 86:21]
  wire [4:0] exp_io_out_rs1; // @[IBuf.scala 86:21]
  wire [4:0] exp_io_out_rs2; // @[IBuf.scala 86:21]
  wire [4:0] exp_io_out_rs3; // @[IBuf.scala 86:21]
  wire  exp_io_rvc; // @[IBuf.scala 86:21]
  reg  nBufValid; // @[IBuf.scala 34:47]
  reg [39:0] buf__pc; // @[IBuf.scala 35:16]
  reg [31:0] buf__data; // @[IBuf.scala 35:16]
  reg  buf__xcpt_pf_inst; // @[IBuf.scala 35:16]
  reg  buf__xcpt_ae_inst; // @[IBuf.scala 35:16]
  reg  buf__replay; // @[IBuf.scala 35:16]
  reg [4:0] ibufBTBResp_entry; // @[IBuf.scala 36:24]
  reg [7:0] ibufBTBResp_bht_history; // @[IBuf.scala 36:24]
  wire  pcWordBits = io_imem_bits_pc[1]; // @[package.scala 143:13]
  wire [1:0] _nIC_T = io_imem_bits_btb_bridx + 1'h1; // @[IBuf.scala 41:64]
  wire [1:0] _nIC_T_1 = io_imem_bits_btb_taken ? _nIC_T : 2'h2; // @[IBuf.scala 41:16]
  wire [1:0] _GEN_56 = {{1'd0}, pcWordBits}; // @[IBuf.scala 41:88]
  wire [1:0] nIC = _nIC_T_1 - _GEN_56; // @[IBuf.scala 41:88]
  wire [1:0] _nValid_T = io_imem_valid ? nIC : 2'h0; // @[IBuf.scala 43:19]
  wire [1:0] _GEN_57 = {{1'd0}, nBufValid}; // @[IBuf.scala 43:49]
  wire [1:0] nValid = _nValid_T + _GEN_57; // @[IBuf.scala 43:49]
  wire [3:0] _valid_T = 4'h1 << nValid; // @[OneHot.scala 58:35]
  wire [3:0] _valid_T_2 = _valid_T - 4'h1; // @[IBuf.scala 74:33]
  wire [1:0] valid = _valid_T_2[1:0]; // @[IBuf.scala 74:37]
  wire [1:0] _full_insn_T_2 = {{1'd0}, valid[1]}; // @[IBuf.scala 93:42]
  wire [1:0] _bufMask_T = 2'h1 << nBufValid; // @[OneHot.scala 58:35]
  wire [1:0] bufMask = _bufMask_T - 2'h1; // @[IBuf.scala 75:37]
  wire [1:0] buf_replay = buf__replay ? bufMask : 2'h0; // @[IBuf.scala 77:23]
  wire  full_insn = (exp_io_rvc | (_full_insn_T_2[0])) | (buf_replay[0]); // @[IBuf.scala 93:48]
  wire [1:0] _nReady_T_4 = exp_io_rvc ? 2'h1 : 2'h2; // @[IBuf.scala 102:71]
  wire [1:0] nReady = full_insn ? _nReady_T_4 : 2'h0; // @[IBuf.scala 102:56 IBuf.scala 102:65]
  wire [1:0] nICReady = nReady - _GEN_57; // @[IBuf.scala 42:25]
  wire  _io_imem_ready_T = nReady >= _GEN_57; // @[IBuf.scala 44:47]
  wire [1:0] _io_imem_ready_T_4 = nIC - nICReady; // @[IBuf.scala 44:92]
  wire  _io_imem_ready_T_5 = 2'h1 >= _io_imem_ready_T_4; // @[IBuf.scala 44:85]
  wire [1:0] _nBufValid_T_2 = _GEN_57 - nReady; // @[IBuf.scala 48:64]
  wire [1:0] _nBufValid_T_3 = _io_imem_ready_T ? 2'h0 : _nBufValid_T_2; // @[IBuf.scala 48:23]
  wire  _T_7 = ((io_imem_valid & _io_imem_ready_T) & (nICReady < nIC)) & _io_imem_ready_T_5; // @[IBuf.scala 54:68]
  wire [1:0] shamt = _GEN_56 + nICReady; // @[IBuf.scala 55:32]
  wire [15:0] buf_data_data_right = io_imem_bits_data[31:16]; // @[IBuf.scala 127:58]
  wire [63:0] buf_data_data = {buf_data_data_right,buf_data_data_right,io_imem_bits_data}; // @[Cat.scala 29:58]
  wire [5:0] _buf_data_T = {shamt, 4'h0}; // @[IBuf.scala 128:19]
  wire [63:0] _buf_data_T_1 = buf_data_data >> _buf_data_T; // @[IBuf.scala 128:10]
  wire [39:0] _buf_pc_T_1 = io_imem_bits_pc & 40'hfffffffffc; // @[IBuf.scala 59:35]
  wire [2:0] _buf_pc_T_2 = {nICReady, 1'h0}; // @[IBuf.scala 59:80]
  wire [39:0] _GEN_65 = {{37'd0}, _buf_pc_T_2}; // @[IBuf.scala 59:68]
  wire [39:0] _buf_pc_T_4 = io_imem_bits_pc + _GEN_65; // @[IBuf.scala 59:68]
  wire [39:0] _buf_pc_T_5 = _buf_pc_T_4 & 40'h3; // @[IBuf.scala 59:109]
  wire [39:0] _buf_pc_T_6 = _buf_pc_T_1 | _buf_pc_T_5; // @[IBuf.scala 59:49]
  wire [1:0] _GEN_0 = _T_7 ? _io_imem_ready_T_4 : _nBufValid_T_3; // @[IBuf.scala 54:92 IBuf.scala 56:19 IBuf.scala 48:17]
  wire [1:0] _GEN_23 = io_inst_0_ready ? _GEN_0 : {{1'd0}, nBufValid}; // @[IBuf.scala 47:29 IBuf.scala 34:47]
  wire [1:0] _GEN_46 = io_kill ? 2'h0 : _GEN_23; // @[IBuf.scala 63:20 IBuf.scala 64:17]
  wire [1:0] _icShiftAmt_T_1 = 2'h2 + _GEN_57; // @[IBuf.scala 68:32]
  wire [1:0] icShiftAmt = _icShiftAmt_T_1 - _GEN_56; // @[IBuf.scala 68:44]
  wire [15:0] icData_right = io_imem_bits_data[15:0]; // @[IBuf.scala 69:87]
  wire [63:0] icData_data_left = {io_imem_bits_data,icData_right,icData_right}; // @[Cat.scala 29:58]
  wire [15:0] icData_data_right = icData_data_left[63:48]; // @[IBuf.scala 120:58]
  wire [127:0] icData_data = {icData_data_right,icData_data_right,icData_data_right,icData_data_right,io_imem_bits_data,
    icData_right,icData_right}; // @[Cat.scala 29:58]
  wire [5:0] _icData_T = {icShiftAmt, 4'h0}; // @[IBuf.scala 121:19]
  wire [190:0] _GEN_68 = {{63'd0}, icData_data}; // @[IBuf.scala 121:10]
  wire [190:0] _icData_T_1 = _GEN_68 << _icData_T; // @[IBuf.scala 121:10]
  wire [31:0] icData = _icData_T_1[95:64]; // @[package.scala 143:13]
  wire [4:0] _icMask_T_1 = {nBufValid, 4'h0}; // @[IBuf.scala 71:65]
  wire [62:0] _icMask_T_2 = 63'hffffffff << _icMask_T_1; // @[IBuf.scala 71:51]
  wire [31:0] icMask = _icMask_T_2[31:0]; // @[IBuf.scala 71:92]
  wire [31:0] _inst_T = icData & icMask; // @[IBuf.scala 72:21]
  wire [31:0] _inst_T_1 = ~icMask; // @[IBuf.scala 72:43]
  wire [31:0] _inst_T_2 = buf__data & _inst_T_1; // @[IBuf.scala 72:41]
  wire  xcpt_1_pf_inst = bufMask[1] ? buf__xcpt_pf_inst : io_imem_bits_xcpt_pf_inst; // @[IBuf.scala 76:53]
  wire  xcpt_1_ae_inst = bufMask[1] ? buf__xcpt_ae_inst : io_imem_bits_xcpt_ae_inst; // @[IBuf.scala 76:53]
  wire [1:0] _ic_replay_T = ~bufMask; // @[IBuf.scala 78:65]
  wire [1:0] _ic_replay_T_1 = valid & _ic_replay_T; // @[IBuf.scala 78:63]
  wire [1:0] _ic_replay_T_2 = io_imem_bits_replay ? _ic_replay_T_1 : 2'h0; // @[IBuf.scala 78:35]
  wire [1:0] ic_replay = buf_replay | _ic_replay_T_2; // @[IBuf.scala 78:30]
  wire [1:0] _replay_T_5 = {{1'd0}, ic_replay[1]}; // @[IBuf.scala 92:61]
  wire [1:0] _io_inst_0_bits_xcpt1_T_3 = {xcpt_1_pf_inst,xcpt_1_ae_inst}; // @[IBuf.scala 96:63]
  wire [1:0] _io_inst_0_bits_xcpt1_T_4 = exp_io_rvc ? 2'h0 : _io_inst_0_bits_xcpt1_T_3; // @[IBuf.scala 96:35]
  wire [1:0] _T_21 = {{1'd0}, bufMask[1]}; // @[IBuf.scala 100:50]
  wire  _T_23 = ((bufMask[0]) & exp_io_rvc) | (_T_21[0]); // @[IBuf.scala 100:40]
  RVCExpander exp ( // @[IBuf.scala 86:21]
    .io_in(exp_io_in),
    .io_out_bits(exp_io_out_bits),
    .io_out_rd(exp_io_out_rd),
    .io_out_rs1(exp_io_out_rs1),
    .io_out_rs2(exp_io_out_rs2),
    .io_out_rs3(exp_io_out_rs3),
    .io_rvc(exp_io_rvc)
  );
  assign io_imem_ready = (io_inst_0_ready & (nReady >= _GEN_57)) & ((nICReady >= nIC) | (2'h1 >= _io_imem_ready_T_4)); // @[IBuf.scala 44:60]
  assign io_pc = nBufValid > 1'h0 ? buf__pc : io_imem_bits_pc; // @[IBuf.scala 82:15]
  assign io_btb_resp_entry = _T_23 ? ibufBTBResp_entry : io_imem_bits_btb_entry; // @[IBuf.scala 100:57 IBuf.scala 100:71 IBuf.scala 81:15]
  assign io_btb_resp_bht_history = _T_23 ? ibufBTBResp_bht_history : io_imem_bits_btb_bht_history; // @[IBuf.scala 100:57 IBuf.scala 100:71 IBuf.scala 81:15]
  assign io_inst_0_valid = (valid[0]) & full_insn; // @[IBuf.scala 94:36]
  assign io_inst_0_bits_xcpt0_pf_inst = bufMask[0] ? buf__xcpt_pf_inst : io_imem_bits_xcpt_pf_inst; // @[IBuf.scala 76:53]
  assign io_inst_0_bits_xcpt0_ae_inst = bufMask[0] ? buf__xcpt_ae_inst : io_imem_bits_xcpt_ae_inst; // @[IBuf.scala 76:53]
  assign io_inst_0_bits_xcpt1_pf_inst = _io_inst_0_bits_xcpt1_T_4[1]; // @[IBuf.scala 96:79]
  assign io_inst_0_bits_xcpt1_ae_inst = _io_inst_0_bits_xcpt1_T_4[0]; // @[IBuf.scala 96:79]
  assign io_inst_0_bits_replay = (ic_replay[0]) | ((~exp_io_rvc) & (_replay_T_5[0])); // @[IBuf.scala 92:33]
  assign io_inst_0_bits_rvc = exp_io_rvc; // @[IBuf.scala 98:27]
  assign io_inst_0_bits_inst_bits = exp_io_out_bits; // @[IBuf.scala 88:26]
  assign io_inst_0_bits_inst_rd = exp_io_out_rd; // @[IBuf.scala 88:26]
  assign io_inst_0_bits_inst_rs1 = exp_io_out_rs1; // @[IBuf.scala 88:26]
  assign io_inst_0_bits_inst_rs2 = exp_io_out_rs2; // @[IBuf.scala 88:26]
  assign io_inst_0_bits_inst_rs3 = exp_io_out_rs3; // @[IBuf.scala 88:26]
  assign io_inst_0_bits_raw = _inst_T | _inst_T_2; // @[IBuf.scala 72:30]
  assign exp_io_in = _inst_T | _inst_T_2; // @[IBuf.scala 72:30]
  always @(posedge clock) begin
    if (reset) begin // @[IBuf.scala 34:47]
      nBufValid <= 1'h0; // @[IBuf.scala 34:47]
    end else begin
      nBufValid <= _GEN_46[0];
    end
    if (io_inst_0_ready) begin // @[IBuf.scala 47:29]
      if (_T_7) begin // @[IBuf.scala 54:92]
        buf__pc <= _buf_pc_T_6; // @[IBuf.scala 59:16]
      end
    end
    if (io_inst_0_ready) begin // @[IBuf.scala 47:29]
      if (_T_7) begin // @[IBuf.scala 54:92]
        buf__data <= {{16'd0}, _buf_data_T_1[15:0]}; // @[IBuf.scala 58:18]
      end
    end
    if (io_inst_0_ready) begin // @[IBuf.scala 47:29]
      if (_T_7) begin // @[IBuf.scala 54:92]
        buf__xcpt_pf_inst <= io_imem_bits_xcpt_pf_inst; // @[IBuf.scala 57:13]
      end
    end
    if (io_inst_0_ready) begin // @[IBuf.scala 47:29]
      if (_T_7) begin // @[IBuf.scala 54:92]
        buf__xcpt_ae_inst <= io_imem_bits_xcpt_ae_inst; // @[IBuf.scala 57:13]
      end
    end
    if (io_inst_0_ready) begin // @[IBuf.scala 47:29]
      if (_T_7) begin // @[IBuf.scala 54:92]
        buf__replay <= io_imem_bits_replay; // @[IBuf.scala 57:13]
      end
    end
    if (io_inst_0_ready) begin // @[IBuf.scala 47:29]
      if (_T_7) begin // @[IBuf.scala 54:92]
        ibufBTBResp_entry <= io_imem_bits_btb_entry; // @[IBuf.scala 60:21]
      end
    end
    if (io_inst_0_ready) begin // @[IBuf.scala 47:29]
      if (_T_7) begin // @[IBuf.scala 54:92]
        ibufBTBResp_bht_history <= io_imem_bits_btb_bht_history; // @[IBuf.scala 60:21]
      end
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
  nBufValid = _RAND_0[0:0];
  _RAND_1 = {2{`RANDOM}};
  buf__pc = _RAND_1[39:0];
  _RAND_2 = {1{`RANDOM}};
  buf__data = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  buf__xcpt_pf_inst = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  buf__xcpt_ae_inst = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  buf__replay = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  ibufBTBResp_entry = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  ibufBTBResp_bht_history = _RAND_7[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
