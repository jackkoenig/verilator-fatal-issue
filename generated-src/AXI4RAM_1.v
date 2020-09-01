module AXI4RAM_1(
  input         clock,
  input         reset,
  output        auto_in_aw_ready,
  input         auto_in_aw_valid,
  input  [3:0]  auto_in_aw_bits_id,
  input  [11:0] auto_in_aw_bits_addr,
  input         auto_in_aw_bits_echo_real_last,
  output        auto_in_w_ready,
  input         auto_in_w_valid,
  input  [63:0] auto_in_w_bits_data,
  input  [7:0]  auto_in_w_bits_strb,
  input         auto_in_b_ready,
  output        auto_in_b_valid,
  output [3:0]  auto_in_b_bits_id,
  output [1:0]  auto_in_b_bits_resp,
  output        auto_in_b_bits_echo_real_last,
  output        auto_in_ar_ready,
  input         auto_in_ar_valid,
  input  [3:0]  auto_in_ar_bits_id,
  input  [11:0] auto_in_ar_bits_addr,
  input         auto_in_ar_bits_echo_real_last,
  input         auto_in_r_ready,
  output        auto_in_r_valid,
  output [3:0]  auto_in_r_bits_id,
  output [63:0] auto_in_r_bits_data,
  output [1:0]  auto_in_r_bits_resp,
  output        auto_in_r_bits_echo_real_last
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
  reg [31:0] _RAND_16;
`endif // RANDOMIZE_REG_INIT
  wire [8:0] mem_R0_addr; // @[DescribedSRAM.scala 23:26]
  wire  mem_R0_en; // @[DescribedSRAM.scala 23:26]
  wire  mem_R0_clk; // @[DescribedSRAM.scala 23:26]
  wire [7:0] mem_R0_data_0; // @[DescribedSRAM.scala 23:26]
  wire [7:0] mem_R0_data_1; // @[DescribedSRAM.scala 23:26]
  wire [7:0] mem_R0_data_2; // @[DescribedSRAM.scala 23:26]
  wire [7:0] mem_R0_data_3; // @[DescribedSRAM.scala 23:26]
  wire [7:0] mem_R0_data_4; // @[DescribedSRAM.scala 23:26]
  wire [7:0] mem_R0_data_5; // @[DescribedSRAM.scala 23:26]
  wire [7:0] mem_R0_data_6; // @[DescribedSRAM.scala 23:26]
  wire [7:0] mem_R0_data_7; // @[DescribedSRAM.scala 23:26]
  wire [8:0] mem_W0_addr; // @[DescribedSRAM.scala 23:26]
  wire  mem_W0_en; // @[DescribedSRAM.scala 23:26]
  wire  mem_W0_clk; // @[DescribedSRAM.scala 23:26]
  wire [7:0] mem_W0_data_0; // @[DescribedSRAM.scala 23:26]
  wire [7:0] mem_W0_data_1; // @[DescribedSRAM.scala 23:26]
  wire [7:0] mem_W0_data_2; // @[DescribedSRAM.scala 23:26]
  wire [7:0] mem_W0_data_3; // @[DescribedSRAM.scala 23:26]
  wire [7:0] mem_W0_data_4; // @[DescribedSRAM.scala 23:26]
  wire [7:0] mem_W0_data_5; // @[DescribedSRAM.scala 23:26]
  wire [7:0] mem_W0_data_6; // @[DescribedSRAM.scala 23:26]
  wire [7:0] mem_W0_data_7; // @[DescribedSRAM.scala 23:26]
  wire  mem_W0_mask_0; // @[DescribedSRAM.scala 23:26]
  wire  mem_W0_mask_1; // @[DescribedSRAM.scala 23:26]
  wire  mem_W0_mask_2; // @[DescribedSRAM.scala 23:26]
  wire  mem_W0_mask_3; // @[DescribedSRAM.scala 23:26]
  wire  mem_W0_mask_4; // @[DescribedSRAM.scala 23:26]
  wire  mem_W0_mask_5; // @[DescribedSRAM.scala 23:26]
  wire  mem_W0_mask_6; // @[DescribedSRAM.scala 23:26]
  wire  mem_W0_mask_7; // @[DescribedSRAM.scala 23:26]
  wire  r_addr_left_left_left = auto_in_ar_bits_addr[3]; // @[SRAM.scala 57:73]
  wire  r_addr_left_left_right = auto_in_ar_bits_addr[4]; // @[SRAM.scala 57:73]
  wire  r_addr_left_right_left = auto_in_ar_bits_addr[5]; // @[SRAM.scala 57:73]
  wire  r_addr_left_right_right = auto_in_ar_bits_addr[6]; // @[SRAM.scala 57:73]
  wire  r_addr_right_left_left = auto_in_ar_bits_addr[7]; // @[SRAM.scala 57:73]
  wire  r_addr_right_left_right = auto_in_ar_bits_addr[8]; // @[SRAM.scala 57:73]
  wire  r_addr_right_right_left = auto_in_ar_bits_addr[9]; // @[SRAM.scala 57:73]
  wire  r_addr_right_right_right_left = auto_in_ar_bits_addr[10]; // @[SRAM.scala 57:73]
  wire  r_addr_right_right_right_right = auto_in_ar_bits_addr[11]; // @[SRAM.scala 57:73]
  wire [3:0] r_addr_left = {r_addr_left_right_right,r_addr_left_right_left,r_addr_left_left_right,r_addr_left_left_left}
    ; // @[Cat.scala 29:58]
  wire [4:0] r_addr_right = {r_addr_right_right_right_right,r_addr_right_right_right_left,r_addr_right_right_left,
    r_addr_right_left_right,r_addr_right_left_left}; // @[Cat.scala 29:58]
  wire  w_addr_left_left_left = auto_in_aw_bits_addr[3]; // @[SRAM.scala 58:73]
  wire  w_addr_left_left_right = auto_in_aw_bits_addr[4]; // @[SRAM.scala 58:73]
  wire  w_addr_left_right_left = auto_in_aw_bits_addr[5]; // @[SRAM.scala 58:73]
  wire  w_addr_left_right_right = auto_in_aw_bits_addr[6]; // @[SRAM.scala 58:73]
  wire  w_addr_right_left_left = auto_in_aw_bits_addr[7]; // @[SRAM.scala 58:73]
  wire  w_addr_right_left_right = auto_in_aw_bits_addr[8]; // @[SRAM.scala 58:73]
  wire  w_addr_right_right_left = auto_in_aw_bits_addr[9]; // @[SRAM.scala 58:73]
  wire  w_addr_right_right_right_left = auto_in_aw_bits_addr[10]; // @[SRAM.scala 58:73]
  wire  w_addr_right_right_right_right = auto_in_aw_bits_addr[11]; // @[SRAM.scala 58:73]
  wire [3:0] w_addr_left = {w_addr_left_right_right,w_addr_left_right_left,w_addr_left_left_right,w_addr_left_left_left}
    ; // @[Cat.scala 29:58]
  wire [4:0] w_addr_right = {w_addr_right_right_right_right,w_addr_right_right_right_left,w_addr_right_right_left,
    w_addr_right_left_right,w_addr_right_left_left}; // @[Cat.scala 29:58]
  wire [12:0] _r_sel0_T_1 = {1'b0,$signed(auto_in_ar_bits_addr)}; // @[Parameters.scala 138:49]
  wire [12:0] _r_sel0_T_3 = $signed(_r_sel0_T_1) & 13'sh1000; // @[Parameters.scala 138:52]
  wire  r_sel0 = $signed(_r_sel0_T_3) == 13'sh0; // @[Parameters.scala 138:67]
  wire [12:0] _w_sel0_T_1 = {1'b0,$signed(auto_in_aw_bits_addr)}; // @[Parameters.scala 138:49]
  wire [12:0] _w_sel0_T_3 = $signed(_w_sel0_T_1) & 13'sh1000; // @[Parameters.scala 138:52]
  wire  w_sel0 = $signed(_w_sel0_T_3) == 13'sh0; // @[Parameters.scala 138:67]
  reg  w_full; // @[SRAM.scala 62:25]
  reg [3:0] w_id; // @[SRAM.scala 63:21]
  reg  w_echo_real_last; // @[SRAM.scala 64:21]
  reg  r_sel1; // @[SRAM.scala 65:21]
  reg  w_sel1; // @[SRAM.scala 66:21]
  wire  _T = auto_in_b_ready & w_full; // @[Decoupled.scala 40:37]
  wire  _GEN_0 = _T ? 1'h0 : w_full; // @[SRAM.scala 68:25 SRAM.scala 68:34 SRAM.scala 62:25]
  wire  _in_aw_ready_T_1 = auto_in_b_ready | (~w_full); // @[SRAM.scala 84:47]
  wire  in_aw_ready = auto_in_w_valid & (auto_in_b_ready | (~w_full)); // @[SRAM.scala 84:32]
  wire  _T_1 = in_aw_ready & auto_in_aw_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_1 = _T_1 | _GEN_0; // @[SRAM.scala 69:25 SRAM.scala 69:34]
  reg  r_full; // @[SRAM.scala 91:25]
  reg [3:0] r_id; // @[SRAM.scala 92:21]
  reg  r_echo_real_last; // @[SRAM.scala 93:21]
  wire  _T_13 = auto_in_r_ready & r_full; // @[Decoupled.scala 40:37]
  wire  _GEN_40 = _T_13 ? 1'h0 : r_full; // @[SRAM.scala 95:25 SRAM.scala 95:34 SRAM.scala 91:25]
  wire  in_ar_ready = auto_in_r_ready | (~r_full); // @[SRAM.scala 109:31]
  wire  _T_14 = in_ar_ready & auto_in_ar_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_41 = _T_14 | _GEN_40; // @[SRAM.scala 96:25 SRAM.scala 96:34]
  reg  rdata_REG; // @[package.scala 80:91]
  reg [7:0] rdata_r_0; // @[Reg.scala 15:16]
  reg [7:0] rdata_r_1; // @[Reg.scala 15:16]
  reg [7:0] rdata_r_2; // @[Reg.scala 15:16]
  reg [7:0] rdata_r_3; // @[Reg.scala 15:16]
  reg [7:0] rdata_r_4; // @[Reg.scala 15:16]
  reg [7:0] rdata_r_5; // @[Reg.scala 15:16]
  reg [7:0] rdata_r_6; // @[Reg.scala 15:16]
  reg [7:0] rdata_r_7; // @[Reg.scala 15:16]
  wire [7:0] _GEN_49 = rdata_REG ? mem_R0_data_0 : rdata_r_0; // @[Reg.scala 16:19 Reg.scala 16:23 Reg.scala 15:16]
  wire [7:0] _GEN_50 = rdata_REG ? mem_R0_data_1 : rdata_r_1; // @[Reg.scala 16:19 Reg.scala 16:23 Reg.scala 15:16]
  wire [7:0] _GEN_51 = rdata_REG ? mem_R0_data_2 : rdata_r_2; // @[Reg.scala 16:19 Reg.scala 16:23 Reg.scala 15:16]
  wire [7:0] _GEN_52 = rdata_REG ? mem_R0_data_3 : rdata_r_3; // @[Reg.scala 16:19 Reg.scala 16:23 Reg.scala 15:16]
  wire [7:0] _GEN_53 = rdata_REG ? mem_R0_data_4 : rdata_r_4; // @[Reg.scala 16:19 Reg.scala 16:23 Reg.scala 15:16]
  wire [7:0] _GEN_54 = rdata_REG ? mem_R0_data_5 : rdata_r_5; // @[Reg.scala 16:19 Reg.scala 16:23 Reg.scala 15:16]
  wire [7:0] _GEN_55 = rdata_REG ? mem_R0_data_6 : rdata_r_6; // @[Reg.scala 16:19 Reg.scala 16:23 Reg.scala 15:16]
  wire [7:0] _GEN_56 = rdata_REG ? mem_R0_data_7 : rdata_r_7; // @[Reg.scala 16:19 Reg.scala 16:23 Reg.scala 15:16]
  wire [31:0] in_r_bits_data_left = {_GEN_52,_GEN_51,_GEN_50,_GEN_49}; // @[Cat.scala 29:58]
  wire [31:0] in_r_bits_data_right = {_GEN_56,_GEN_55,_GEN_54,_GEN_53}; // @[Cat.scala 29:58]
  mem_0 mem ( // @[DescribedSRAM.scala 23:26]
    .R0_addr(mem_R0_addr),
    .R0_en(mem_R0_en),
    .R0_clk(mem_R0_clk),
    .R0_data_0(mem_R0_data_0),
    .R0_data_1(mem_R0_data_1),
    .R0_data_2(mem_R0_data_2),
    .R0_data_3(mem_R0_data_3),
    .R0_data_4(mem_R0_data_4),
    .R0_data_5(mem_R0_data_5),
    .R0_data_6(mem_R0_data_6),
    .R0_data_7(mem_R0_data_7),
    .W0_addr(mem_W0_addr),
    .W0_en(mem_W0_en),
    .W0_clk(mem_W0_clk),
    .W0_data_0(mem_W0_data_0),
    .W0_data_1(mem_W0_data_1),
    .W0_data_2(mem_W0_data_2),
    .W0_data_3(mem_W0_data_3),
    .W0_data_4(mem_W0_data_4),
    .W0_data_5(mem_W0_data_5),
    .W0_data_6(mem_W0_data_6),
    .W0_data_7(mem_W0_data_7),
    .W0_mask_0(mem_W0_mask_0),
    .W0_mask_1(mem_W0_mask_1),
    .W0_mask_2(mem_W0_mask_2),
    .W0_mask_3(mem_W0_mask_3),
    .W0_mask_4(mem_W0_mask_4),
    .W0_mask_5(mem_W0_mask_5),
    .W0_mask_6(mem_W0_mask_6),
    .W0_mask_7(mem_W0_mask_7)
  );
  assign auto_in_aw_ready = auto_in_w_valid & (auto_in_b_ready | (~w_full)); // @[SRAM.scala 84:32]
  assign auto_in_w_ready = auto_in_aw_valid & _in_aw_ready_T_1; // @[SRAM.scala 85:32]
  assign auto_in_b_valid = w_full; // @[Nodes.scala 1216:84 SRAM.scala 83:17]
  assign auto_in_b_bits_id = w_id; // @[Nodes.scala 1216:84 SRAM.scala 87:20]
  assign auto_in_b_bits_resp = w_sel1 ? 2'h0 : 2'h3; // @[SRAM.scala 88:26]
  assign auto_in_b_bits_echo_real_last = w_echo_real_last; // @[Nodes.scala 1216:84 BundleMap.scala 248:19]
  assign auto_in_ar_ready = auto_in_r_ready | (~r_full); // @[SRAM.scala 109:31]
  assign auto_in_r_valid = r_full; // @[Nodes.scala 1216:84 SRAM.scala 108:17]
  assign auto_in_r_bits_id = r_id; // @[Nodes.scala 1216:84 SRAM.scala 111:20]
  assign auto_in_r_bits_data = {in_r_bits_data_right,in_r_bits_data_left}; // @[Cat.scala 29:58]
  assign auto_in_r_bits_resp = r_sel1 ? 2'h0 : 2'h3; // @[SRAM.scala 112:26]
  assign auto_in_r_bits_echo_real_last = r_echo_real_last; // @[Nodes.scala 1216:84 BundleMap.scala 248:19]
  assign mem_R0_addr = {r_addr_right,r_addr_left}; // @[Cat.scala 29:58]
  assign mem_R0_en = in_ar_ready & auto_in_ar_valid; // @[Decoupled.scala 40:37]
  assign mem_R0_clk = clock; // @[package.scala 80:58 package.scala 80:58]
  assign mem_W0_addr = {w_addr_right,w_addr_left}; // @[Cat.scala 29:58]
  assign mem_W0_en = _T_1 & w_sel0; // @[SRAM.scala 78:24]
  assign mem_W0_clk = clock; // @[SRAM.scala 78:35]
  assign mem_W0_data_0 = auto_in_w_bits_data[7:0]; // @[SRAM.scala 77:62]
  assign mem_W0_data_1 = auto_in_w_bits_data[15:8]; // @[SRAM.scala 77:62]
  assign mem_W0_data_2 = auto_in_w_bits_data[23:16]; // @[SRAM.scala 77:62]
  assign mem_W0_data_3 = auto_in_w_bits_data[31:24]; // @[SRAM.scala 77:62]
  assign mem_W0_data_4 = auto_in_w_bits_data[39:32]; // @[SRAM.scala 77:62]
  assign mem_W0_data_5 = auto_in_w_bits_data[47:40]; // @[SRAM.scala 77:62]
  assign mem_W0_data_6 = auto_in_w_bits_data[55:48]; // @[SRAM.scala 77:62]
  assign mem_W0_data_7 = auto_in_w_bits_data[63:56]; // @[SRAM.scala 77:62]
  assign mem_W0_mask_0 = auto_in_w_bits_strb[0]; // @[SRAM.scala 79:47]
  assign mem_W0_mask_1 = auto_in_w_bits_strb[1]; // @[SRAM.scala 79:47]
  assign mem_W0_mask_2 = auto_in_w_bits_strb[2]; // @[SRAM.scala 79:47]
  assign mem_W0_mask_3 = auto_in_w_bits_strb[3]; // @[SRAM.scala 79:47]
  assign mem_W0_mask_4 = auto_in_w_bits_strb[4]; // @[SRAM.scala 79:47]
  assign mem_W0_mask_5 = auto_in_w_bits_strb[5]; // @[SRAM.scala 79:47]
  assign mem_W0_mask_6 = auto_in_w_bits_strb[6]; // @[SRAM.scala 79:47]
  assign mem_W0_mask_7 = auto_in_w_bits_strb[7]; // @[SRAM.scala 79:47]
  always @(posedge clock) begin
    if (reset) begin // @[SRAM.scala 62:25]
      w_full <= 1'h0; // @[SRAM.scala 62:25]
    end else begin
      w_full <= _GEN_1;
    end
    if (_T_1) begin // @[SRAM.scala 71:25]
      w_id <= auto_in_aw_bits_id; // @[SRAM.scala 72:12]
    end
    if (_T_1) begin // @[SRAM.scala 71:25]
      w_echo_real_last <= auto_in_aw_bits_echo_real_last; // @[BundleMap.scala 248:19]
    end
    if (_T_14) begin // @[SRAM.scala 98:25]
      r_sel1 <= r_sel0; // @[SRAM.scala 100:14]
    end
    if (_T_1) begin // @[SRAM.scala 71:25]
      w_sel1 <= w_sel0; // @[SRAM.scala 73:14]
    end
    if (reset) begin // @[SRAM.scala 91:25]
      r_full <= 1'h0; // @[SRAM.scala 91:25]
    end else begin
      r_full <= _GEN_41;
    end
    if (_T_14) begin // @[SRAM.scala 98:25]
      r_id <= auto_in_ar_bits_id; // @[SRAM.scala 99:12]
    end
    if (_T_14) begin // @[SRAM.scala 98:25]
      r_echo_real_last <= auto_in_ar_bits_echo_real_last; // @[BundleMap.scala 248:19]
    end
    rdata_REG <= in_ar_ready & auto_in_ar_valid; // @[Decoupled.scala 40:37]
    if (rdata_REG) begin // @[Reg.scala 16:19]
      rdata_r_0 <= mem_R0_data_0; // @[Reg.scala 16:23]
    end
    if (rdata_REG) begin // @[Reg.scala 16:19]
      rdata_r_1 <= mem_R0_data_1; // @[Reg.scala 16:23]
    end
    if (rdata_REG) begin // @[Reg.scala 16:19]
      rdata_r_2 <= mem_R0_data_2; // @[Reg.scala 16:23]
    end
    if (rdata_REG) begin // @[Reg.scala 16:19]
      rdata_r_3 <= mem_R0_data_3; // @[Reg.scala 16:23]
    end
    if (rdata_REG) begin // @[Reg.scala 16:19]
      rdata_r_4 <= mem_R0_data_4; // @[Reg.scala 16:23]
    end
    if (rdata_REG) begin // @[Reg.scala 16:19]
      rdata_r_5 <= mem_R0_data_5; // @[Reg.scala 16:23]
    end
    if (rdata_REG) begin // @[Reg.scala 16:19]
      rdata_r_6 <= mem_R0_data_6; // @[Reg.scala 16:23]
    end
    if (rdata_REG) begin // @[Reg.scala 16:19]
      rdata_r_7 <= mem_R0_data_7; // @[Reg.scala 16:23]
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
  w_full = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  w_id = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  w_echo_real_last = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  r_sel1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  w_sel1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  r_full = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  r_id = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  r_echo_real_last = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  rdata_REG = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  rdata_r_0 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  rdata_r_1 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  rdata_r_2 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  rdata_r_3 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  rdata_r_4 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  rdata_r_5 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  rdata_r_6 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  rdata_r_7 = _RAND_16[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
