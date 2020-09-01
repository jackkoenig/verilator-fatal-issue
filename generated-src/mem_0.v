module mem_0(
  input  [8:0] R0_addr,
  input        R0_en,
  input        R0_clk,
  output [7:0] R0_data_0,
  output [7:0] R0_data_1,
  output [7:0] R0_data_2,
  output [7:0] R0_data_3,
  output [7:0] R0_data_4,
  output [7:0] R0_data_5,
  output [7:0] R0_data_6,
  output [7:0] R0_data_7,
  input  [8:0] W0_addr,
  input        W0_en,
  input        W0_clk,
  input  [7:0] W0_data_0,
  input  [7:0] W0_data_1,
  input  [7:0] W0_data_2,
  input  [7:0] W0_data_3,
  input  [7:0] W0_data_4,
  input  [7:0] W0_data_5,
  input  [7:0] W0_data_6,
  input  [7:0] W0_data_7,
  input        W0_mask_0,
  input        W0_mask_1,
  input        W0_mask_2,
  input        W0_mask_3,
  input        W0_mask_4,
  input        W0_mask_5,
  input        W0_mask_6,
  input        W0_mask_7
);
  wire [8:0] mem_0_ext_R0_addr;
  wire  mem_0_ext_R0_en;
  wire  mem_0_ext_R0_clk;
  wire [63:0] mem_0_ext_R0_data;
  wire [8:0] mem_0_ext_W0_addr;
  wire  mem_0_ext_W0_en;
  wire  mem_0_ext_W0_clk;
  wire [63:0] mem_0_ext_W0_data;
  wire [7:0] mem_0_ext_W0_mask;
  wire [31:0] _GEN_4 = {W0_data_7,W0_data_6,W0_data_5,W0_data_4};
  wire [31:0] _GEN_5 = {W0_data_3,W0_data_2,W0_data_1,W0_data_0};
  wire [3:0] _GEN_10 = {W0_mask_7,W0_mask_6,W0_mask_5,W0_mask_4};
  wire [3:0] _GEN_11 = {W0_mask_3,W0_mask_2,W0_mask_1,W0_mask_0};
  mem_0_ext mem_0_ext (
    .R0_addr(mem_0_ext_R0_addr),
    .R0_en(mem_0_ext_R0_en),
    .R0_clk(mem_0_ext_R0_clk),
    .R0_data(mem_0_ext_R0_data),
    .W0_addr(mem_0_ext_W0_addr),
    .W0_en(mem_0_ext_W0_en),
    .W0_clk(mem_0_ext_W0_clk),
    .W0_data(mem_0_ext_W0_data),
    .W0_mask(mem_0_ext_W0_mask)
  );
  assign mem_0_ext_R0_clk = R0_clk;
  assign mem_0_ext_R0_en = R0_en;
  assign mem_0_ext_R0_addr = R0_addr;
  assign R0_data_0 = mem_0_ext_R0_data[7:0];
  assign R0_data_1 = mem_0_ext_R0_data[15:8];
  assign R0_data_2 = mem_0_ext_R0_data[23:16];
  assign R0_data_3 = mem_0_ext_R0_data[31:24];
  assign R0_data_4 = mem_0_ext_R0_data[39:32];
  assign R0_data_5 = mem_0_ext_R0_data[47:40];
  assign R0_data_6 = mem_0_ext_R0_data[55:48];
  assign R0_data_7 = mem_0_ext_R0_data[63:56];
  assign mem_0_ext_W0_clk = W0_clk;
  assign mem_0_ext_W0_en = W0_en;
  assign mem_0_ext_W0_addr = W0_addr;
  assign mem_0_ext_W0_data = {_GEN_4,_GEN_5};
  assign mem_0_ext_W0_mask = {_GEN_10,_GEN_11};
endmodule
