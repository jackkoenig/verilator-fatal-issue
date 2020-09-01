module TLPLIC(
  input         clock,
  input         reset,
  input         auto_int_in_0,
  input         auto_int_in_1,
  output        auto_int_out_1_0,
  output        auto_int_out_0_0,
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [1:0]  auto_in_a_bits_size,
  input  [8:0]  auto_in_a_bits_source,
  input  [27:0] auto_in_a_bits_address,
  input  [7:0]  auto_in_a_bits_mask,
  input  [63:0] auto_in_a_bits_data,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output [2:0]  auto_in_d_bits_opcode,
  output [1:0]  auto_in_d_bits_size,
  output [8:0]  auto_in_d_bits_source,
  output [63:0] auto_in_d_bits_data
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
`endif // RANDOMIZE_REG_INIT
  wire  gateways_gateway_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_io_plic_complete; // @[Plic.scala 155:27]
  wire  gateways_gateway_1_clock; // @[Plic.scala 155:27]
  wire  gateways_gateway_1_reset; // @[Plic.scala 155:27]
  wire  gateways_gateway_1_io_interrupt; // @[Plic.scala 155:27]
  wire  gateways_gateway_1_io_plic_valid; // @[Plic.scala 155:27]
  wire  gateways_gateway_1_io_plic_ready; // @[Plic.scala 155:27]
  wire  gateways_gateway_1_io_plic_complete; // @[Plic.scala 155:27]
  wire [1:0] fanin_io_prio_0; // @[Plic.scala 183:25]
  wire [1:0] fanin_io_prio_1; // @[Plic.scala 183:25]
  wire [1:0] fanin_io_ip; // @[Plic.scala 183:25]
  wire [1:0] fanin_io_dev; // @[Plic.scala 183:25]
  wire [1:0] fanin_io_max; // @[Plic.scala 183:25]
  wire [1:0] fanin_1_io_prio_0; // @[Plic.scala 183:25]
  wire [1:0] fanin_1_io_prio_1; // @[Plic.scala 183:25]
  wire [1:0] fanin_1_io_ip; // @[Plic.scala 183:25]
  wire [1:0] fanin_1_io_dev; // @[Plic.scala 183:25]
  wire [1:0] fanin_1_io_max; // @[Plic.scala 183:25]
  wire  out_back_clock; // @[Decoupled.scala 296:21]
  wire  out_back_reset; // @[Decoupled.scala 296:21]
  wire  out_back_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  out_back_io_enq_valid; // @[Decoupled.scala 296:21]
  wire  out_back_io_enq_bits_read; // @[Decoupled.scala 296:21]
  wire [22:0] out_back_io_enq_bits_index; // @[Decoupled.scala 296:21]
  wire [63:0] out_back_io_enq_bits_data; // @[Decoupled.scala 296:21]
  wire [7:0] out_back_io_enq_bits_mask; // @[Decoupled.scala 296:21]
  wire [8:0] out_back_io_enq_bits_extra_tlrr_extra_source; // @[Decoupled.scala 296:21]
  wire [1:0] out_back_io_enq_bits_extra_tlrr_extra_size; // @[Decoupled.scala 296:21]
  wire  out_back_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  out_back_io_deq_valid; // @[Decoupled.scala 296:21]
  wire  out_back_io_deq_bits_read; // @[Decoupled.scala 296:21]
  wire [22:0] out_back_io_deq_bits_index; // @[Decoupled.scala 296:21]
  wire [63:0] out_back_io_deq_bits_data; // @[Decoupled.scala 296:21]
  wire [7:0] out_back_io_deq_bits_mask; // @[Decoupled.scala 296:21]
  wire [8:0] out_back_io_deq_bits_extra_tlrr_extra_source; // @[Decoupled.scala 296:21]
  wire [1:0] out_back_io_deq_bits_extra_tlrr_extra_size; // @[Decoupled.scala 296:21]
  reg [1:0] priority_0; // @[Plic.scala 162:31]
  reg [1:0] priority_1; // @[Plic.scala 162:31]
  reg [1:0] threshold_0; // @[Plic.scala 165:31]
  reg [1:0] threshold_1; // @[Plic.scala 165:31]
  reg  pending_0; // @[Plic.scala 167:22]
  reg  pending_1; // @[Plic.scala 167:22]
  reg [1:0] enables_0_0; // @[Plic.scala 173:26]
  reg [1:0] enables_1_0; // @[Plic.scala 173:26]
  wire [2:0] enableVec0_0 = {enables_0_0,1'h0}; // @[Cat.scala 29:58]
  wire [2:0] enableVec0_1 = {enables_1_0,1'h0}; // @[Cat.scala 29:58]
  reg [1:0] maxDevs_0; // @[Plic.scala 180:22]
  reg [1:0] maxDevs_1; // @[Plic.scala 180:22]
  wire [1:0] pendingUInt = {pending_1,pending_0}; // @[Cat.scala 29:58]
  reg [1:0] io_harts_0_0_REG; // @[Plic.scala 187:41]
  reg [1:0] io_harts_1_0_REG; // @[Plic.scala 187:41]
  wire  out_oindex_right_right_right = out_back_io_deq_bits_index[18]; // @[RegisterRouter.scala 80:24]
  wire  out_oindex_right_right_left = out_back_io_deq_bits_index[10]; // @[RegisterRouter.scala 80:24]
  wire  out_oindex_right_left = out_back_io_deq_bits_index[9]; // @[RegisterRouter.scala 80:24]
  wire  out_oindex_left_right = out_back_io_deq_bits_index[4]; // @[RegisterRouter.scala 80:24]
  wire  out_oindex_left_left = out_back_io_deq_bits_index[0]; // @[RegisterRouter.scala 80:24]
  wire [4:0] out_oindex = {out_oindex_right_right_right,out_oindex_right_right_left,out_oindex_right_left,
    out_oindex_left_right,out_oindex_left_left}; // @[Cat.scala 29:58]
  wire [31:0] _out_backSel_T = 32'h1 << out_oindex; // @[OneHot.scala 58:35]
  wire  out_backSel_20 = _out_backSel_T[20]; // @[RegisterRouter.scala 80:24]
  wire [22:0] out_bindex = out_back_io_deq_bits_index & 23'h7bf9ee; // @[RegisterRouter.scala 80:24]
  wire  _out_T_11 = out_bindex == 23'h0; // @[RegisterRouter.scala 80:24]
  wire  out_rofireMux_all_20 = (((out_back_io_deq_valid & auto_in_d_ready) & out_back_io_deq_bits_read) & out_backSel_20
    ) & (out_bindex == 23'h0); // @[RegisterRouter.scala 80:24]
  wire [7:0] out_backMask_right_right_right = out_back_io_deq_bits_mask[7] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_right_right_left = out_back_io_deq_bits_mask[6] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_right_left_right = out_back_io_deq_bits_mask[5] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_right_left_left = out_back_io_deq_bits_mask[4] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_left_right_right = out_back_io_deq_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_left_right_left = out_back_io_deq_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_left_left_right = out_back_io_deq_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [7:0] out_backMask_left_left_left = out_back_io_deq_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 72:12]
  wire [63:0] out_backMask = {out_backMask_right_right_right,out_backMask_right_right_left,out_backMask_right_left_right
    ,out_backMask_right_left_left,out_backMask_left_right_right,out_backMask_left_right_left,
    out_backMask_left_left_right,out_backMask_left_left_left}; // @[Cat.scala 29:58]
  wire  out_romask_11 = |(out_backMask[63:32]); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_11 = out_rofireMux_all_20 & out_romask_11; // @[RegisterRouter.scala 80:24]
  wire  out_backSel_16 = _out_backSel_T[16]; // @[RegisterRouter.scala 80:24]
  wire  out_rofireMux_all_16 = (((out_back_io_deq_valid & auto_in_d_ready) & out_back_io_deq_bits_read) & out_backSel_16
    ) & (out_bindex == 23'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_roready_14 = out_rofireMux_all_16 & out_romask_11; // @[RegisterRouter.scala 80:24]
  wire [1:0] _T = {out_f_roready_11,out_f_roready_14}; // @[Plic.scala 238:21]
  wire [1:0] _T_3 = _T - 2'h1; // @[Plic.scala 238:46]
  wire [1:0] _T_4 = _T & _T_3; // @[Plic.scala 238:28]
  wire [1:0] _claiming_T = out_f_roready_14 ? maxDevs_0 : 2'h0; // @[Plic.scala 239:49]
  wire [1:0] _claiming_T_1 = out_f_roready_11 ? maxDevs_1 : 2'h0; // @[Plic.scala 239:49]
  wire [1:0] claiming = _claiming_T | _claiming_T_1; // @[Plic.scala 239:96]
  wire [3:0] _claimedDevs_T = 4'h1 << claiming; // @[OneHot.scala 65:12]
  wire  claimedDevs_1 = _claimedDevs_T[1]; // @[Plic.scala 240:58]
  wire  claimedDevs_2 = _claimedDevs_T[2]; // @[Plic.scala 240:58]
  wire  _T_9 = claimedDevs_1 | gateways_gateway_io_plic_valid; // @[Plic.scala 244:15]
  wire  _pending_0_T = ~claimedDevs_1; // @[Plic.scala 244:34]
  wire  _T_10 = claimedDevs_2 | gateways_gateway_1_io_plic_valid; // @[Plic.scala 244:15]
  wire  _pending_1_T = ~claimedDevs_2; // @[Plic.scala 244:34]
  wire  out_wofireMux_all_20 = (((out_back_io_deq_valid & auto_in_d_ready) & (~out_back_io_deq_bits_read)) &
    out_backSel_20) & (out_bindex == 23'h0); // @[RegisterRouter.scala 80:24]
  wire  out_womask_11 = &(out_backMask[63:32]); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_11 = out_wofireMux_all_20 & out_womask_11; // @[RegisterRouter.scala 80:24]
  wire [1:0] completerDev = out_back_io_deq_bits_data[33:32]; // @[package.scala 143:13]
  wire [2:0] _out_completer_1_T = enableVec0_1 >> completerDev; // @[Plic.scala 288:51]
  wire  completer_1 = out_f_woready_11 & (_out_completer_1_T[0]); // @[Plic.scala 288:35]
  wire  out_wofireMux_all_16 = (((out_back_io_deq_valid & auto_in_d_ready) & (~out_back_io_deq_bits_read)) &
    out_backSel_16) & (out_bindex == 23'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_14 = out_wofireMux_all_16 & out_womask_11; // @[RegisterRouter.scala 80:24]
  wire [2:0] _out_completer_0_T = enableVec0_0 >> completerDev; // @[Plic.scala 288:51]
  wire  completer_0 = out_f_woready_14 & (_out_completer_0_T[0]); // @[Plic.scala 288:35]
  wire [1:0] _T_11 = {completer_1,completer_0}; // @[Plic.scala 255:23]
  wire [1:0] _T_14 = _T_11 - 2'h1; // @[Plic.scala 255:50]
  wire [1:0] _T_15 = _T_11 & _T_14; // @[Plic.scala 255:30]
  wire  _completedDevs_T = completer_0 | completer_1; // @[Plic.scala 257:48]
  wire [3:0] _completedDevs_T_1 = 4'h1 << completerDev; // @[OneHot.scala 65:12]
  wire [2:0] completedDevs = _completedDevs_T ? _completedDevs_T_1[2:0] : 3'h0; // @[Plic.scala 257:28]
  wire  out_backSel_8 = _out_backSel_T[8]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_8 = (((out_back_io_deq_valid & auto_in_d_ready) & (~out_back_io_deq_bits_read)) &
    out_backSel_8) & (out_bindex == 23'h0); // @[RegisterRouter.scala 80:24]
  wire  out_womask_1 = &(out_backMask[2:1]); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_1 = out_wofireMux_all_8 & out_womask_1; // @[RegisterRouter.scala 80:24]
  wire  out_womask_2 = &(out_backMask[33:32]); // @[RegisterRouter.scala 80:24]
  wire  out_backSel_0 = _out_backSel_T[0]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all = (((out_back_io_deq_valid & auto_in_d_ready) & (~out_back_io_deq_bits_read)) & out_backSel_0)
     & (out_bindex == 23'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_2 = out_wofireMux_all & out_womask_2; // @[RegisterRouter.scala 80:24]
  wire [33:0] out_prepend_1 = {priority_0,32'h0}; // @[Cat.scala 29:58]
  wire  out_backSel_10 = _out_backSel_T[10]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_10 = (((out_back_io_deq_valid & auto_in_d_ready) & (~out_back_io_deq_bits_read)) &
    out_backSel_10) & (out_bindex == 23'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_4 = out_wofireMux_all_10 & out_womask_1; // @[RegisterRouter.scala 80:24]
  wire  out_womask_5 = &(out_backMask[1:0]); // @[RegisterRouter.scala 80:24]
  wire  out_backSel_1 = _out_backSel_T[1]; // @[RegisterRouter.scala 80:24]
  wire  out_wofireMux_all_1 = (((out_back_io_deq_valid & auto_in_d_ready) & (~out_back_io_deq_bits_read)) &
    out_backSel_1) & (out_bindex == 23'h0); // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_5 = out_wofireMux_all_1 & out_womask_5; // @[RegisterRouter.scala 80:24]
  wire [2:0] out_prepend_4 = {pending_1,pending_0,1'h0}; // @[Cat.scala 29:58]
  wire  out_f_woready_9 = out_wofireMux_all_20 & out_womask_5; // @[RegisterRouter.scala 80:24]
  wire [2:0] out_prepend_5 = {1'h0,threshold_1}; // @[Cat.scala 29:58]
  wire [31:0] out_prepend_left_6 = {{29'd0}, out_prepend_5}; // @[RegisterRouter.scala 80:24]
  wire [33:0] out_prepend_6 = {maxDevs_1,out_prepend_left_6}; // @[Cat.scala 29:58]
  wire [63:0] _out_T_137 = {{30'd0}, out_prepend_6}; // @[RegisterRouter.scala 80:24]
  wire  out_f_woready_12 = out_wofireMux_all_16 & out_womask_5; // @[RegisterRouter.scala 80:24]
  wire [2:0] out_prepend_7 = {1'h0,threshold_0}; // @[Cat.scala 29:58]
  wire [31:0] out_prepend_left_8 = {{29'd0}, out_prepend_7}; // @[RegisterRouter.scala 80:24]
  wire [33:0] out_prepend_8 = {maxDevs_0,out_prepend_left_8}; // @[Cat.scala 29:58]
  wire [63:0] _out_T_173 = {{30'd0}, out_prepend_8}; // @[RegisterRouter.scala 80:24]
  wire  _out_out_bits_data_T = 5'h0 == out_oindex; // @[Conditional.scala 37:30]
  wire  _out_out_bits_data_T_1 = 5'h1 == out_oindex; // @[Conditional.scala 37:30]
  wire  _out_out_bits_data_T_2 = 5'h4 == out_oindex; // @[Conditional.scala 37:30]
  wire  _out_out_bits_data_T_3 = 5'h8 == out_oindex; // @[Conditional.scala 37:30]
  wire  _out_out_bits_data_T_4 = 5'ha == out_oindex; // @[Conditional.scala 37:30]
  wire  _out_out_bits_data_T_5 = 5'h10 == out_oindex; // @[Conditional.scala 37:30]
  wire  _out_out_bits_data_T_6 = 5'h14 == out_oindex; // @[Conditional.scala 37:30]
  wire  _GEN_136 = _out_out_bits_data_T_6 ? _out_T_11 : 1'h1; // @[Conditional.scala 39:67 MuxLiteral.scala 53:32]
  wire  _GEN_137 = _out_out_bits_data_T_5 ? _out_T_11 : _GEN_136; // @[Conditional.scala 39:67 MuxLiteral.scala 53:32]
  wire  _GEN_138 = _out_out_bits_data_T_4 ? _out_T_11 : _GEN_137; // @[Conditional.scala 39:67 MuxLiteral.scala 53:32]
  wire  _GEN_139 = _out_out_bits_data_T_3 ? _out_T_11 : _GEN_138; // @[Conditional.scala 39:67 MuxLiteral.scala 53:32]
  wire  _GEN_140 = _out_out_bits_data_T_2 ? _out_T_11 : _GEN_139; // @[Conditional.scala 39:67 MuxLiteral.scala 53:32]
  wire  _GEN_141 = _out_out_bits_data_T_1 ? _out_T_11 : _GEN_140; // @[Conditional.scala 39:67 MuxLiteral.scala 53:32]
  wire  out_out_bits_data_out = _out_out_bits_data_T ? _out_T_11 : _GEN_141; // @[Conditional.scala 40:58 MuxLiteral.scala 53:32]
  wire [63:0] _GEN_143 = _out_out_bits_data_T_6 ? _out_T_137 : 64'h0; // @[Conditional.scala 39:67 MuxLiteral.scala 53:32]
  wire [63:0] _GEN_144 = _out_out_bits_data_T_5 ? _out_T_173 : _GEN_143; // @[Conditional.scala 39:67 MuxLiteral.scala 53:32]
  wire [63:0] _GEN_145 = _out_out_bits_data_T_4 ? {{61'd0}, enableVec0_1} : _GEN_144; // @[Conditional.scala 39:67 MuxLiteral.scala 53:32]
  wire [63:0] _GEN_146 = _out_out_bits_data_T_3 ? {{61'd0}, enableVec0_0} : _GEN_145; // @[Conditional.scala 39:67 MuxLiteral.scala 53:32]
  wire [63:0] _GEN_147 = _out_out_bits_data_T_2 ? {{61'd0}, out_prepend_4} : _GEN_146; // @[Conditional.scala 39:67 MuxLiteral.scala 53:32]
  wire [63:0] _GEN_148 = _out_out_bits_data_T_1 ? {{62'd0}, priority_1} : _GEN_147; // @[Conditional.scala 39:67 MuxLiteral.scala 53:32]
  wire [63:0] out_out_bits_data_out_1 = _out_out_bits_data_T ? {{30'd0}, out_prepend_1} : _GEN_148; // @[Conditional.scala 40:58 MuxLiteral.scala 53:32]
  wire  out_bits_read = out_back_io_deq_bits_read; // @[RegisterRouter.scala 80:24 RegisterRouter.scala 80:24]
  LevelGateway gateways_gateway ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_clock),
    .reset(gateways_gateway_reset),
    .io_interrupt(gateways_gateway_io_interrupt),
    .io_plic_valid(gateways_gateway_io_plic_valid),
    .io_plic_ready(gateways_gateway_io_plic_ready),
    .io_plic_complete(gateways_gateway_io_plic_complete)
  );
  LevelGateway gateways_gateway_1 ( // @[Plic.scala 155:27]
    .clock(gateways_gateway_1_clock),
    .reset(gateways_gateway_1_reset),
    .io_interrupt(gateways_gateway_1_io_interrupt),
    .io_plic_valid(gateways_gateway_1_io_plic_valid),
    .io_plic_ready(gateways_gateway_1_io_plic_ready),
    .io_plic_complete(gateways_gateway_1_io_plic_complete)
  );
  PLICFanIn fanin ( // @[Plic.scala 183:25]
    .io_prio_0(fanin_io_prio_0),
    .io_prio_1(fanin_io_prio_1),
    .io_ip(fanin_io_ip),
    .io_dev(fanin_io_dev),
    .io_max(fanin_io_max)
  );
  PLICFanIn fanin_1 ( // @[Plic.scala 183:25]
    .io_prio_0(fanin_1_io_prio_0),
    .io_prio_1(fanin_1_io_prio_1),
    .io_ip(fanin_1_io_ip),
    .io_dev(fanin_1_io_dev),
    .io_max(fanin_1_io_max)
  );
  Queue_37 out_back ( // @[Decoupled.scala 296:21]
    .clock(out_back_clock),
    .reset(out_back_reset),
    .io_enq_ready(out_back_io_enq_ready),
    .io_enq_valid(out_back_io_enq_valid),
    .io_enq_bits_read(out_back_io_enq_bits_read),
    .io_enq_bits_index(out_back_io_enq_bits_index),
    .io_enq_bits_data(out_back_io_enq_bits_data),
    .io_enq_bits_mask(out_back_io_enq_bits_mask),
    .io_enq_bits_extra_tlrr_extra_source(out_back_io_enq_bits_extra_tlrr_extra_source),
    .io_enq_bits_extra_tlrr_extra_size(out_back_io_enq_bits_extra_tlrr_extra_size),
    .io_deq_ready(out_back_io_deq_ready),
    .io_deq_valid(out_back_io_deq_valid),
    .io_deq_bits_read(out_back_io_deq_bits_read),
    .io_deq_bits_index(out_back_io_deq_bits_index),
    .io_deq_bits_data(out_back_io_deq_bits_data),
    .io_deq_bits_mask(out_back_io_deq_bits_mask),
    .io_deq_bits_extra_tlrr_extra_source(out_back_io_deq_bits_extra_tlrr_extra_source),
    .io_deq_bits_extra_tlrr_extra_size(out_back_io_deq_bits_extra_tlrr_extra_size)
  );
  assign auto_int_out_1_0 = io_harts_1_0_REG > threshold_1; // @[Plic.scala 187:63]
  assign auto_int_out_0_0 = io_harts_0_0_REG > threshold_0; // @[Plic.scala 187:63]
  assign auto_in_a_ready = out_back_io_enq_ready; // @[RegisterRouter.scala 80:24 Decoupled.scala 299:17]
  assign auto_in_d_valid = out_back_io_deq_valid; // @[RegisterRouter.scala 80:24]
  assign auto_in_d_bits_opcode = {{2'd0}, out_bits_read}; // @[Nodes.scala 1216:84 RegisterRouter.scala 95:19]
  assign auto_in_d_bits_size = out_back_io_deq_bits_extra_tlrr_extra_size; // @[RegisterRouter.scala 80:24 RegisterRouter.scala 80:24]
  assign auto_in_d_bits_source = out_back_io_deq_bits_extra_tlrr_extra_source; // @[RegisterRouter.scala 80:24 RegisterRouter.scala 80:24]
  assign auto_in_d_bits_data = out_out_bits_data_out ? out_out_bits_data_out_1 : 64'h0; // @[RegisterRouter.scala 80:24]
  assign gateways_gateway_clock = clock;
  assign gateways_gateway_reset = reset;
  assign gateways_gateway_io_interrupt = auto_int_in_0; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign gateways_gateway_io_plic_ready = ~pending_0; // @[Plic.scala 243:18]
  assign gateways_gateway_io_plic_complete = completedDevs[1]; // @[Plic.scala 258:33]
  assign gateways_gateway_1_clock = clock;
  assign gateways_gateway_1_reset = reset;
  assign gateways_gateway_1_io_interrupt = auto_int_in_1; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign gateways_gateway_1_io_plic_ready = ~pending_1; // @[Plic.scala 243:18]
  assign gateways_gateway_1_io_plic_complete = completedDevs[2]; // @[Plic.scala 258:33]
  assign fanin_io_prio_0 = priority_0; // @[Plic.scala 184:21]
  assign fanin_io_prio_1 = priority_1; // @[Plic.scala 184:21]
  assign fanin_io_ip = enables_0_0 & pendingUInt; // @[Plic.scala 185:40]
  assign fanin_1_io_prio_0 = priority_0; // @[Plic.scala 184:21]
  assign fanin_1_io_prio_1 = priority_1; // @[Plic.scala 184:21]
  assign fanin_1_io_ip = enables_1_0 & pendingUInt; // @[Plic.scala 185:40]
  assign out_back_clock = clock;
  assign out_back_reset = reset;
  assign out_back_io_enq_valid = auto_in_a_valid; // @[RegisterRouter.scala 80:24]
  assign out_back_io_enq_bits_read = auto_in_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 69:36]
  assign out_back_io_enq_bits_index = auto_in_a_bits_address[25:3]; // @[RegisterRouter.scala 68:18 RegisterRouter.scala 70:19]
  assign out_back_io_enq_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign out_back_io_enq_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign out_back_io_enq_bits_extra_tlrr_extra_source = auto_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign out_back_io_enq_bits_extra_tlrr_extra_size = auto_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign out_back_io_deq_ready = auto_in_d_ready; // @[RegisterRouter.scala 80:24]
  always @(posedge clock) begin
    if (out_f_woready_2) begin // @[RegField.scala 75:88]
      priority_0 <= out_back_io_deq_bits_data[33:32]; // @[RegField.scala 75:92]
    end
    if (out_f_woready_5) begin // @[RegField.scala 75:88]
      priority_1 <= out_back_io_deq_bits_data[1:0]; // @[RegField.scala 75:92]
    end
    if (out_f_woready_12) begin // @[RegField.scala 75:88]
      threshold_0 <= out_back_io_deq_bits_data[1:0]; // @[RegField.scala 75:92]
    end
    if (out_f_woready_9) begin // @[RegField.scala 75:88]
      threshold_1 <= out_back_io_deq_bits_data[1:0]; // @[RegField.scala 75:92]
    end
    if (reset) begin // @[Plic.scala 167:22]
      pending_0 <= 1'h0; // @[Plic.scala 167:22]
    end else if (_T_9) begin // @[Plic.scala 244:27]
      pending_0 <= _pending_0_T; // @[Plic.scala 244:31]
    end
    if (reset) begin // @[Plic.scala 167:22]
      pending_1 <= 1'h0; // @[Plic.scala 167:22]
    end else if (_T_10) begin // @[Plic.scala 244:27]
      pending_1 <= _pending_1_T; // @[Plic.scala 244:31]
    end
    if (out_f_woready_1) begin // @[RegField.scala 75:88]
      enables_0_0 <= out_back_io_deq_bits_data[2:1]; // @[RegField.scala 75:92]
    end
    if (out_f_woready_4) begin // @[RegField.scala 75:88]
      enables_1_0 <= out_back_io_deq_bits_data[2:1]; // @[RegField.scala 75:92]
    end
    maxDevs_0 <= fanin_io_dev; // @[Plic.scala 186:21]
    maxDevs_1 <= fanin_1_io_dev; // @[Plic.scala 186:21]
    io_harts_0_0_REG <= fanin_io_max; // @[Plic.scala 187:41]
    io_harts_1_0_REG <= fanin_1_io_max; // @[Plic.scala 187:41]
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
  priority_0 = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  priority_1 = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  threshold_0 = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  threshold_1 = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  pending_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  pending_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  enables_0_0 = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  enables_1_0 = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  maxDevs_0 = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  maxDevs_1 = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  io_harts_0_0_REG = _RAND_10[1:0];
  _RAND_11 = {1{`RANDOM}};
  io_harts_1_0_REG = _RAND_11[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
