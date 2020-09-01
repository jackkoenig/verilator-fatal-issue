module tag_array_0(
  input  [5:0]  RW0_addr,
  input         RW0_en,
  input         RW0_clk,
  input         RW0_wmode,
  input  [20:0] RW0_wdata_0,
  input  [20:0] RW0_wdata_1,
  input  [20:0] RW0_wdata_2,
  input  [20:0] RW0_wdata_3,
  output [20:0] RW0_rdata_0,
  output [20:0] RW0_rdata_1,
  output [20:0] RW0_rdata_2,
  output [20:0] RW0_rdata_3,
  input         RW0_wmask_0,
  input         RW0_wmask_1,
  input         RW0_wmask_2,
  input         RW0_wmask_3
);
  wire [5:0] tag_array_0_ext_RW0_addr;
  wire  tag_array_0_ext_RW0_en;
  wire  tag_array_0_ext_RW0_clk;
  wire  tag_array_0_ext_RW0_wmode;
  wire [83:0] tag_array_0_ext_RW0_wdata;
  wire [83:0] tag_array_0_ext_RW0_rdata;
  wire [3:0] tag_array_0_ext_RW0_wmask;
  wire [41:0] _GEN_0 = {RW0_wdata_3,RW0_wdata_2};
  wire [41:0] _GEN_1 = {RW0_wdata_1,RW0_wdata_0};
  wire [1:0] _GEN_2 = {RW0_wmask_3,RW0_wmask_2};
  wire [1:0] _GEN_3 = {RW0_wmask_1,RW0_wmask_0};
  tag_array_0_ext tag_array_0_ext (
    .RW0_addr(tag_array_0_ext_RW0_addr),
    .RW0_en(tag_array_0_ext_RW0_en),
    .RW0_clk(tag_array_0_ext_RW0_clk),
    .RW0_wmode(tag_array_0_ext_RW0_wmode),
    .RW0_wdata(tag_array_0_ext_RW0_wdata),
    .RW0_rdata(tag_array_0_ext_RW0_rdata),
    .RW0_wmask(tag_array_0_ext_RW0_wmask)
  );
  assign tag_array_0_ext_RW0_clk = RW0_clk;
  assign tag_array_0_ext_RW0_en = RW0_en;
  assign tag_array_0_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = tag_array_0_ext_RW0_rdata[20:0];
  assign RW0_rdata_1 = tag_array_0_ext_RW0_rdata[41:21];
  assign RW0_rdata_2 = tag_array_0_ext_RW0_rdata[62:42];
  assign RW0_rdata_3 = tag_array_0_ext_RW0_rdata[83:63];
  assign tag_array_0_ext_RW0_wmode = RW0_wmode;
  assign tag_array_0_ext_RW0_wdata = {_GEN_0,_GEN_1};
  assign tag_array_0_ext_RW0_wmask = {_GEN_2,_GEN_3};
endmodule
