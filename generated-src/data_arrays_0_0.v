module data_arrays_0_0(
  input  [8:0]  RW0_addr,
  input         RW0_en,
  input         RW0_clk,
  input         RW0_wmode,
  input  [31:0] RW0_wdata_0,
  input  [31:0] RW0_wdata_1,
  input  [31:0] RW0_wdata_2,
  input  [31:0] RW0_wdata_3,
  output [31:0] RW0_rdata_0,
  output [31:0] RW0_rdata_1,
  output [31:0] RW0_rdata_2,
  output [31:0] RW0_rdata_3,
  input         RW0_wmask_0,
  input         RW0_wmask_1,
  input         RW0_wmask_2,
  input         RW0_wmask_3
);
  wire [8:0] data_arrays_0_0_ext_RW0_addr;
  wire  data_arrays_0_0_ext_RW0_en;
  wire  data_arrays_0_0_ext_RW0_clk;
  wire  data_arrays_0_0_ext_RW0_wmode;
  wire [127:0] data_arrays_0_0_ext_RW0_wdata;
  wire [127:0] data_arrays_0_0_ext_RW0_rdata;
  wire [3:0] data_arrays_0_0_ext_RW0_wmask;
  wire [63:0] _GEN_0 = {RW0_wdata_3,RW0_wdata_2};
  wire [63:0] _GEN_1 = {RW0_wdata_1,RW0_wdata_0};
  wire [1:0] _GEN_2 = {RW0_wmask_3,RW0_wmask_2};
  wire [1:0] _GEN_3 = {RW0_wmask_1,RW0_wmask_0};
  data_arrays_0_0_ext data_arrays_0_0_ext (
    .RW0_addr(data_arrays_0_0_ext_RW0_addr),
    .RW0_en(data_arrays_0_0_ext_RW0_en),
    .RW0_clk(data_arrays_0_0_ext_RW0_clk),
    .RW0_wmode(data_arrays_0_0_ext_RW0_wmode),
    .RW0_wdata(data_arrays_0_0_ext_RW0_wdata),
    .RW0_rdata(data_arrays_0_0_ext_RW0_rdata),
    .RW0_wmask(data_arrays_0_0_ext_RW0_wmask)
  );
  assign data_arrays_0_0_ext_RW0_clk = RW0_clk;
  assign data_arrays_0_0_ext_RW0_en = RW0_en;
  assign data_arrays_0_0_ext_RW0_addr = RW0_addr;
  assign RW0_rdata_0 = data_arrays_0_0_ext_RW0_rdata[31:0];
  assign RW0_rdata_1 = data_arrays_0_0_ext_RW0_rdata[63:32];
  assign RW0_rdata_2 = data_arrays_0_0_ext_RW0_rdata[95:64];
  assign RW0_rdata_3 = data_arrays_0_0_ext_RW0_rdata[127:96];
  assign data_arrays_0_0_ext_RW0_wmode = RW0_wmode;
  assign data_arrays_0_0_ext_RW0_wdata = {_GEN_0,_GEN_1};
  assign data_arrays_0_0_ext_RW0_wmask = {_GEN_2,_GEN_3};
endmodule
