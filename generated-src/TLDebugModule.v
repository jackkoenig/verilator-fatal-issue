module TLDebugModule(
  output        auto_dmInner_dmInner_tl_in_a_ready,
  input         auto_dmInner_dmInner_tl_in_a_valid,
  input  [2:0]  auto_dmInner_dmInner_tl_in_a_bits_opcode,
  input  [1:0]  auto_dmInner_dmInner_tl_in_a_bits_size,
  input  [8:0]  auto_dmInner_dmInner_tl_in_a_bits_source,
  input  [11:0] auto_dmInner_dmInner_tl_in_a_bits_address,
  input  [7:0]  auto_dmInner_dmInner_tl_in_a_bits_mask,
  input  [63:0] auto_dmInner_dmInner_tl_in_a_bits_data,
  input         auto_dmInner_dmInner_tl_in_d_ready,
  output        auto_dmInner_dmInner_tl_in_d_valid,
  output [2:0]  auto_dmInner_dmInner_tl_in_d_bits_opcode,
  output [1:0]  auto_dmInner_dmInner_tl_in_d_bits_size,
  output [8:0]  auto_dmInner_dmInner_tl_in_d_bits_source,
  output [63:0] auto_dmInner_dmInner_tl_in_d_bits_data,
  output        auto_dmOuter_intsource_out_sync_0,
  input         io_debug_clock,
  input         io_debug_reset,
  output        io_ctrl_ndreset,
  output        io_ctrl_dmactive,
  input         io_ctrl_dmactiveAck,
  output        io_dmi_dmi_req_ready,
  input         io_dmi_dmi_req_valid,
  input  [6:0]  io_dmi_dmi_req_bits_addr,
  input  [31:0] io_dmi_dmi_req_bits_data,
  input  [1:0]  io_dmi_dmi_req_bits_op,
  input         io_dmi_dmi_resp_ready,
  output        io_dmi_dmi_resp_valid,
  output [31:0] io_dmi_dmi_resp_bits_data,
  output [1:0]  io_dmi_dmi_resp_bits_resp,
  input         io_dmi_dmiClock,
  input         io_dmi_dmiReset,
  input         io_hartIsInReset_0
);
  wire [2:0] dmOuter_auto_asource_out_a_mem_0_opcode; // @[Debug.scala 1763:53]
  wire [8:0] dmOuter_auto_asource_out_a_mem_0_address; // @[Debug.scala 1763:53]
  wire [31:0] dmOuter_auto_asource_out_a_mem_0_data; // @[Debug.scala 1763:53]
  wire  dmOuter_auto_asource_out_a_ridx; // @[Debug.scala 1763:53]
  wire  dmOuter_auto_asource_out_a_widx; // @[Debug.scala 1763:53]
  wire  dmOuter_auto_asource_out_a_safe_ridx_valid; // @[Debug.scala 1763:53]
  wire  dmOuter_auto_asource_out_a_safe_widx_valid; // @[Debug.scala 1763:53]
  wire  dmOuter_auto_asource_out_a_safe_source_reset_n; // @[Debug.scala 1763:53]
  wire  dmOuter_auto_asource_out_a_safe_sink_reset_n; // @[Debug.scala 1763:53]
  wire [2:0] dmOuter_auto_asource_out_d_mem_0_opcode; // @[Debug.scala 1763:53]
  wire [1:0] dmOuter_auto_asource_out_d_mem_0_size; // @[Debug.scala 1763:53]
  wire  dmOuter_auto_asource_out_d_mem_0_source; // @[Debug.scala 1763:53]
  wire [31:0] dmOuter_auto_asource_out_d_mem_0_data; // @[Debug.scala 1763:53]
  wire  dmOuter_auto_asource_out_d_ridx; // @[Debug.scala 1763:53]
  wire  dmOuter_auto_asource_out_d_widx; // @[Debug.scala 1763:53]
  wire  dmOuter_auto_asource_out_d_safe_ridx_valid; // @[Debug.scala 1763:53]
  wire  dmOuter_auto_asource_out_d_safe_widx_valid; // @[Debug.scala 1763:53]
  wire  dmOuter_auto_asource_out_d_safe_source_reset_n; // @[Debug.scala 1763:53]
  wire  dmOuter_auto_asource_out_d_safe_sink_reset_n; // @[Debug.scala 1763:53]
  wire  dmOuter_auto_intsource_out_sync_0; // @[Debug.scala 1763:53]
  wire  dmOuter_io_dmi_clock; // @[Debug.scala 1763:53]
  wire  dmOuter_io_dmi_reset; // @[Debug.scala 1763:53]
  wire  dmOuter_io_dmi_req_ready; // @[Debug.scala 1763:53]
  wire  dmOuter_io_dmi_req_valid; // @[Debug.scala 1763:53]
  wire [6:0] dmOuter_io_dmi_req_bits_addr; // @[Debug.scala 1763:53]
  wire [31:0] dmOuter_io_dmi_req_bits_data; // @[Debug.scala 1763:53]
  wire [1:0] dmOuter_io_dmi_req_bits_op; // @[Debug.scala 1763:53]
  wire  dmOuter_io_dmi_resp_ready; // @[Debug.scala 1763:53]
  wire  dmOuter_io_dmi_resp_valid; // @[Debug.scala 1763:53]
  wire [31:0] dmOuter_io_dmi_resp_bits_data; // @[Debug.scala 1763:53]
  wire [1:0] dmOuter_io_dmi_resp_bits_resp; // @[Debug.scala 1763:53]
  wire  dmOuter_io_ctrl_ndreset; // @[Debug.scala 1763:53]
  wire  dmOuter_io_ctrl_dmactive; // @[Debug.scala 1763:53]
  wire  dmOuter_io_ctrl_dmactiveAck; // @[Debug.scala 1763:53]
  wire  dmOuter_io_innerCtrl_mem_0_resumereq; // @[Debug.scala 1763:53]
  wire  dmOuter_io_innerCtrl_mem_0_ackhavereset; // @[Debug.scala 1763:53]
  wire  dmOuter_io_innerCtrl_mem_0_hrmask_0; // @[Debug.scala 1763:53]
  wire  dmOuter_io_innerCtrl_ridx; // @[Debug.scala 1763:53]
  wire  dmOuter_io_innerCtrl_widx; // @[Debug.scala 1763:53]
  wire  dmOuter_io_innerCtrl_safe_ridx_valid; // @[Debug.scala 1763:53]
  wire  dmOuter_io_innerCtrl_safe_widx_valid; // @[Debug.scala 1763:53]
  wire  dmOuter_io_innerCtrl_safe_source_reset_n; // @[Debug.scala 1763:53]
  wire  dmOuter_io_innerCtrl_safe_sink_reset_n; // @[Debug.scala 1763:53]
  wire  dmOuter_io_hgDebugInt_0; // @[Debug.scala 1763:53]
  wire [2:0] dmInner_auto_dmiXing_in_a_mem_0_opcode; // @[Debug.scala 1764:53]
  wire [8:0] dmInner_auto_dmiXing_in_a_mem_0_address; // @[Debug.scala 1764:53]
  wire [31:0] dmInner_auto_dmiXing_in_a_mem_0_data; // @[Debug.scala 1764:53]
  wire  dmInner_auto_dmiXing_in_a_ridx; // @[Debug.scala 1764:53]
  wire  dmInner_auto_dmiXing_in_a_widx; // @[Debug.scala 1764:53]
  wire  dmInner_auto_dmiXing_in_a_safe_ridx_valid; // @[Debug.scala 1764:53]
  wire  dmInner_auto_dmiXing_in_a_safe_widx_valid; // @[Debug.scala 1764:53]
  wire  dmInner_auto_dmiXing_in_a_safe_source_reset_n; // @[Debug.scala 1764:53]
  wire  dmInner_auto_dmiXing_in_a_safe_sink_reset_n; // @[Debug.scala 1764:53]
  wire [2:0] dmInner_auto_dmiXing_in_d_mem_0_opcode; // @[Debug.scala 1764:53]
  wire [1:0] dmInner_auto_dmiXing_in_d_mem_0_size; // @[Debug.scala 1764:53]
  wire  dmInner_auto_dmiXing_in_d_mem_0_source; // @[Debug.scala 1764:53]
  wire [31:0] dmInner_auto_dmiXing_in_d_mem_0_data; // @[Debug.scala 1764:53]
  wire  dmInner_auto_dmiXing_in_d_ridx; // @[Debug.scala 1764:53]
  wire  dmInner_auto_dmiXing_in_d_widx; // @[Debug.scala 1764:53]
  wire  dmInner_auto_dmiXing_in_d_safe_ridx_valid; // @[Debug.scala 1764:53]
  wire  dmInner_auto_dmiXing_in_d_safe_widx_valid; // @[Debug.scala 1764:53]
  wire  dmInner_auto_dmiXing_in_d_safe_source_reset_n; // @[Debug.scala 1764:53]
  wire  dmInner_auto_dmiXing_in_d_safe_sink_reset_n; // @[Debug.scala 1764:53]
  wire  dmInner_auto_dmInner_tl_in_a_ready; // @[Debug.scala 1764:53]
  wire  dmInner_auto_dmInner_tl_in_a_valid; // @[Debug.scala 1764:53]
  wire [2:0] dmInner_auto_dmInner_tl_in_a_bits_opcode; // @[Debug.scala 1764:53]
  wire [1:0] dmInner_auto_dmInner_tl_in_a_bits_size; // @[Debug.scala 1764:53]
  wire [8:0] dmInner_auto_dmInner_tl_in_a_bits_source; // @[Debug.scala 1764:53]
  wire [11:0] dmInner_auto_dmInner_tl_in_a_bits_address; // @[Debug.scala 1764:53]
  wire [7:0] dmInner_auto_dmInner_tl_in_a_bits_mask; // @[Debug.scala 1764:53]
  wire [63:0] dmInner_auto_dmInner_tl_in_a_bits_data; // @[Debug.scala 1764:53]
  wire  dmInner_auto_dmInner_tl_in_d_ready; // @[Debug.scala 1764:53]
  wire  dmInner_auto_dmInner_tl_in_d_valid; // @[Debug.scala 1764:53]
  wire [2:0] dmInner_auto_dmInner_tl_in_d_bits_opcode; // @[Debug.scala 1764:53]
  wire [1:0] dmInner_auto_dmInner_tl_in_d_bits_size; // @[Debug.scala 1764:53]
  wire [8:0] dmInner_auto_dmInner_tl_in_d_bits_source; // @[Debug.scala 1764:53]
  wire [63:0] dmInner_auto_dmInner_tl_in_d_bits_data; // @[Debug.scala 1764:53]
  wire  dmInner_io_debug_clock; // @[Debug.scala 1764:53]
  wire  dmInner_io_debug_reset; // @[Debug.scala 1764:53]
  wire  dmInner_io_dmactive; // @[Debug.scala 1764:53]
  wire  dmInner_io_innerCtrl_mem_0_resumereq; // @[Debug.scala 1764:53]
  wire  dmInner_io_innerCtrl_mem_0_ackhavereset; // @[Debug.scala 1764:53]
  wire  dmInner_io_innerCtrl_mem_0_hrmask_0; // @[Debug.scala 1764:53]
  wire  dmInner_io_innerCtrl_ridx; // @[Debug.scala 1764:53]
  wire  dmInner_io_innerCtrl_widx; // @[Debug.scala 1764:53]
  wire  dmInner_io_innerCtrl_safe_ridx_valid; // @[Debug.scala 1764:53]
  wire  dmInner_io_innerCtrl_safe_widx_valid; // @[Debug.scala 1764:53]
  wire  dmInner_io_innerCtrl_safe_source_reset_n; // @[Debug.scala 1764:53]
  wire  dmInner_io_innerCtrl_safe_sink_reset_n; // @[Debug.scala 1764:53]
  wire  dmInner_io_hgDebugInt_0; // @[Debug.scala 1764:53]
  wire  dmInner_io_hartIsInReset_0; // @[Debug.scala 1764:53]
  TLDebugModuleOuterAsync dmOuter ( // @[Debug.scala 1763:53]
    .auto_asource_out_a_mem_0_opcode(dmOuter_auto_asource_out_a_mem_0_opcode),
    .auto_asource_out_a_mem_0_address(dmOuter_auto_asource_out_a_mem_0_address),
    .auto_asource_out_a_mem_0_data(dmOuter_auto_asource_out_a_mem_0_data),
    .auto_asource_out_a_ridx(dmOuter_auto_asource_out_a_ridx),
    .auto_asource_out_a_widx(dmOuter_auto_asource_out_a_widx),
    .auto_asource_out_a_safe_ridx_valid(dmOuter_auto_asource_out_a_safe_ridx_valid),
    .auto_asource_out_a_safe_widx_valid(dmOuter_auto_asource_out_a_safe_widx_valid),
    .auto_asource_out_a_safe_source_reset_n(dmOuter_auto_asource_out_a_safe_source_reset_n),
    .auto_asource_out_a_safe_sink_reset_n(dmOuter_auto_asource_out_a_safe_sink_reset_n),
    .auto_asource_out_d_mem_0_opcode(dmOuter_auto_asource_out_d_mem_0_opcode),
    .auto_asource_out_d_mem_0_size(dmOuter_auto_asource_out_d_mem_0_size),
    .auto_asource_out_d_mem_0_source(dmOuter_auto_asource_out_d_mem_0_source),
    .auto_asource_out_d_mem_0_data(dmOuter_auto_asource_out_d_mem_0_data),
    .auto_asource_out_d_ridx(dmOuter_auto_asource_out_d_ridx),
    .auto_asource_out_d_widx(dmOuter_auto_asource_out_d_widx),
    .auto_asource_out_d_safe_ridx_valid(dmOuter_auto_asource_out_d_safe_ridx_valid),
    .auto_asource_out_d_safe_widx_valid(dmOuter_auto_asource_out_d_safe_widx_valid),
    .auto_asource_out_d_safe_source_reset_n(dmOuter_auto_asource_out_d_safe_source_reset_n),
    .auto_asource_out_d_safe_sink_reset_n(dmOuter_auto_asource_out_d_safe_sink_reset_n),
    .auto_intsource_out_sync_0(dmOuter_auto_intsource_out_sync_0),
    .io_dmi_clock(dmOuter_io_dmi_clock),
    .io_dmi_reset(dmOuter_io_dmi_reset),
    .io_dmi_req_ready(dmOuter_io_dmi_req_ready),
    .io_dmi_req_valid(dmOuter_io_dmi_req_valid),
    .io_dmi_req_bits_addr(dmOuter_io_dmi_req_bits_addr),
    .io_dmi_req_bits_data(dmOuter_io_dmi_req_bits_data),
    .io_dmi_req_bits_op(dmOuter_io_dmi_req_bits_op),
    .io_dmi_resp_ready(dmOuter_io_dmi_resp_ready),
    .io_dmi_resp_valid(dmOuter_io_dmi_resp_valid),
    .io_dmi_resp_bits_data(dmOuter_io_dmi_resp_bits_data),
    .io_dmi_resp_bits_resp(dmOuter_io_dmi_resp_bits_resp),
    .io_ctrl_ndreset(dmOuter_io_ctrl_ndreset),
    .io_ctrl_dmactive(dmOuter_io_ctrl_dmactive),
    .io_ctrl_dmactiveAck(dmOuter_io_ctrl_dmactiveAck),
    .io_innerCtrl_mem_0_resumereq(dmOuter_io_innerCtrl_mem_0_resumereq),
    .io_innerCtrl_mem_0_ackhavereset(dmOuter_io_innerCtrl_mem_0_ackhavereset),
    .io_innerCtrl_mem_0_hrmask_0(dmOuter_io_innerCtrl_mem_0_hrmask_0),
    .io_innerCtrl_ridx(dmOuter_io_innerCtrl_ridx),
    .io_innerCtrl_widx(dmOuter_io_innerCtrl_widx),
    .io_innerCtrl_safe_ridx_valid(dmOuter_io_innerCtrl_safe_ridx_valid),
    .io_innerCtrl_safe_widx_valid(dmOuter_io_innerCtrl_safe_widx_valid),
    .io_innerCtrl_safe_source_reset_n(dmOuter_io_innerCtrl_safe_source_reset_n),
    .io_innerCtrl_safe_sink_reset_n(dmOuter_io_innerCtrl_safe_sink_reset_n),
    .io_hgDebugInt_0(dmOuter_io_hgDebugInt_0)
  );
  TLDebugModuleInnerAsync dmInner ( // @[Debug.scala 1764:53]
    .auto_dmiXing_in_a_mem_0_opcode(dmInner_auto_dmiXing_in_a_mem_0_opcode),
    .auto_dmiXing_in_a_mem_0_address(dmInner_auto_dmiXing_in_a_mem_0_address),
    .auto_dmiXing_in_a_mem_0_data(dmInner_auto_dmiXing_in_a_mem_0_data),
    .auto_dmiXing_in_a_ridx(dmInner_auto_dmiXing_in_a_ridx),
    .auto_dmiXing_in_a_widx(dmInner_auto_dmiXing_in_a_widx),
    .auto_dmiXing_in_a_safe_ridx_valid(dmInner_auto_dmiXing_in_a_safe_ridx_valid),
    .auto_dmiXing_in_a_safe_widx_valid(dmInner_auto_dmiXing_in_a_safe_widx_valid),
    .auto_dmiXing_in_a_safe_source_reset_n(dmInner_auto_dmiXing_in_a_safe_source_reset_n),
    .auto_dmiXing_in_a_safe_sink_reset_n(dmInner_auto_dmiXing_in_a_safe_sink_reset_n),
    .auto_dmiXing_in_d_mem_0_opcode(dmInner_auto_dmiXing_in_d_mem_0_opcode),
    .auto_dmiXing_in_d_mem_0_size(dmInner_auto_dmiXing_in_d_mem_0_size),
    .auto_dmiXing_in_d_mem_0_source(dmInner_auto_dmiXing_in_d_mem_0_source),
    .auto_dmiXing_in_d_mem_0_data(dmInner_auto_dmiXing_in_d_mem_0_data),
    .auto_dmiXing_in_d_ridx(dmInner_auto_dmiXing_in_d_ridx),
    .auto_dmiXing_in_d_widx(dmInner_auto_dmiXing_in_d_widx),
    .auto_dmiXing_in_d_safe_ridx_valid(dmInner_auto_dmiXing_in_d_safe_ridx_valid),
    .auto_dmiXing_in_d_safe_widx_valid(dmInner_auto_dmiXing_in_d_safe_widx_valid),
    .auto_dmiXing_in_d_safe_source_reset_n(dmInner_auto_dmiXing_in_d_safe_source_reset_n),
    .auto_dmiXing_in_d_safe_sink_reset_n(dmInner_auto_dmiXing_in_d_safe_sink_reset_n),
    .auto_dmInner_tl_in_a_ready(dmInner_auto_dmInner_tl_in_a_ready),
    .auto_dmInner_tl_in_a_valid(dmInner_auto_dmInner_tl_in_a_valid),
    .auto_dmInner_tl_in_a_bits_opcode(dmInner_auto_dmInner_tl_in_a_bits_opcode),
    .auto_dmInner_tl_in_a_bits_size(dmInner_auto_dmInner_tl_in_a_bits_size),
    .auto_dmInner_tl_in_a_bits_source(dmInner_auto_dmInner_tl_in_a_bits_source),
    .auto_dmInner_tl_in_a_bits_address(dmInner_auto_dmInner_tl_in_a_bits_address),
    .auto_dmInner_tl_in_a_bits_mask(dmInner_auto_dmInner_tl_in_a_bits_mask),
    .auto_dmInner_tl_in_a_bits_data(dmInner_auto_dmInner_tl_in_a_bits_data),
    .auto_dmInner_tl_in_d_ready(dmInner_auto_dmInner_tl_in_d_ready),
    .auto_dmInner_tl_in_d_valid(dmInner_auto_dmInner_tl_in_d_valid),
    .auto_dmInner_tl_in_d_bits_opcode(dmInner_auto_dmInner_tl_in_d_bits_opcode),
    .auto_dmInner_tl_in_d_bits_size(dmInner_auto_dmInner_tl_in_d_bits_size),
    .auto_dmInner_tl_in_d_bits_source(dmInner_auto_dmInner_tl_in_d_bits_source),
    .auto_dmInner_tl_in_d_bits_data(dmInner_auto_dmInner_tl_in_d_bits_data),
    .io_debug_clock(dmInner_io_debug_clock),
    .io_debug_reset(dmInner_io_debug_reset),
    .io_dmactive(dmInner_io_dmactive),
    .io_innerCtrl_mem_0_resumereq(dmInner_io_innerCtrl_mem_0_resumereq),
    .io_innerCtrl_mem_0_ackhavereset(dmInner_io_innerCtrl_mem_0_ackhavereset),
    .io_innerCtrl_mem_0_hrmask_0(dmInner_io_innerCtrl_mem_0_hrmask_0),
    .io_innerCtrl_ridx(dmInner_io_innerCtrl_ridx),
    .io_innerCtrl_widx(dmInner_io_innerCtrl_widx),
    .io_innerCtrl_safe_ridx_valid(dmInner_io_innerCtrl_safe_ridx_valid),
    .io_innerCtrl_safe_widx_valid(dmInner_io_innerCtrl_safe_widx_valid),
    .io_innerCtrl_safe_source_reset_n(dmInner_io_innerCtrl_safe_source_reset_n),
    .io_innerCtrl_safe_sink_reset_n(dmInner_io_innerCtrl_safe_sink_reset_n),
    .io_hgDebugInt_0(dmInner_io_hgDebugInt_0),
    .io_hartIsInReset_0(dmInner_io_hartIsInReset_0)
  );
  assign auto_dmInner_dmInner_tl_in_a_ready = dmInner_auto_dmInner_tl_in_a_ready; // @[LazyModule.scala 312:16]
  assign auto_dmInner_dmInner_tl_in_d_valid = dmInner_auto_dmInner_tl_in_d_valid; // @[LazyModule.scala 312:16]
  assign auto_dmInner_dmInner_tl_in_d_bits_opcode = dmInner_auto_dmInner_tl_in_d_bits_opcode; // @[LazyModule.scala 312:16]
  assign auto_dmInner_dmInner_tl_in_d_bits_size = dmInner_auto_dmInner_tl_in_d_bits_size; // @[LazyModule.scala 312:16]
  assign auto_dmInner_dmInner_tl_in_d_bits_source = dmInner_auto_dmInner_tl_in_d_bits_source; // @[LazyModule.scala 312:16]
  assign auto_dmInner_dmInner_tl_in_d_bits_data = dmInner_auto_dmInner_tl_in_d_bits_data; // @[LazyModule.scala 312:16]
  assign auto_dmOuter_intsource_out_sync_0 = dmOuter_auto_intsource_out_sync_0; // @[LazyModule.scala 314:12]
  assign io_ctrl_ndreset = dmOuter_io_ctrl_ndreset; // @[Debug.scala 1823:13]
  assign io_ctrl_dmactive = dmOuter_io_ctrl_dmactive; // @[Debug.scala 1823:13]
  assign io_dmi_dmi_req_ready = dmOuter_io_dmi_req_ready; // @[Debug.scala 1801:18]
  assign io_dmi_dmi_resp_valid = dmOuter_io_dmi_resp_valid; // @[Debug.scala 1801:18]
  assign io_dmi_dmi_resp_bits_data = dmOuter_io_dmi_resp_bits_data; // @[Debug.scala 1801:18]
  assign io_dmi_dmi_resp_bits_resp = dmOuter_io_dmi_resp_bits_resp; // @[Debug.scala 1801:18]
  assign dmOuter_auto_asource_out_a_ridx = dmInner_auto_dmiXing_in_a_ridx; // @[LazyModule.scala 301:16]
  assign dmOuter_auto_asource_out_a_safe_ridx_valid = dmInner_auto_dmiXing_in_a_safe_ridx_valid; // @[LazyModule.scala 301:16]
  assign dmOuter_auto_asource_out_a_safe_sink_reset_n = dmInner_auto_dmiXing_in_a_safe_sink_reset_n; // @[LazyModule.scala 301:16]
  assign dmOuter_auto_asource_out_d_mem_0_opcode = dmInner_auto_dmiXing_in_d_mem_0_opcode; // @[LazyModule.scala 301:16]
  assign dmOuter_auto_asource_out_d_mem_0_size = dmInner_auto_dmiXing_in_d_mem_0_size; // @[LazyModule.scala 301:16]
  assign dmOuter_auto_asource_out_d_mem_0_source = dmInner_auto_dmiXing_in_d_mem_0_source; // @[LazyModule.scala 301:16]
  assign dmOuter_auto_asource_out_d_mem_0_data = dmInner_auto_dmiXing_in_d_mem_0_data; // @[LazyModule.scala 301:16]
  assign dmOuter_auto_asource_out_d_widx = dmInner_auto_dmiXing_in_d_widx; // @[LazyModule.scala 301:16]
  assign dmOuter_auto_asource_out_d_safe_widx_valid = dmInner_auto_dmiXing_in_d_safe_widx_valid; // @[LazyModule.scala 301:16]
  assign dmOuter_auto_asource_out_d_safe_source_reset_n = dmInner_auto_dmiXing_in_d_safe_source_reset_n; // @[LazyModule.scala 301:16]
  assign dmOuter_io_dmi_clock = io_dmi_dmiClock; // @[Debug.scala 1803:35]
  assign dmOuter_io_dmi_reset = io_dmi_dmiReset; // @[Debug.scala 1802:35]
  assign dmOuter_io_dmi_req_valid = io_dmi_dmi_req_valid; // @[Debug.scala 1801:18]
  assign dmOuter_io_dmi_req_bits_addr = io_dmi_dmi_req_bits_addr; // @[Debug.scala 1801:18]
  assign dmOuter_io_dmi_req_bits_data = io_dmi_dmi_req_bits_data; // @[Debug.scala 1801:18]
  assign dmOuter_io_dmi_req_bits_op = io_dmi_dmi_req_bits_op; // @[Debug.scala 1801:18]
  assign dmOuter_io_dmi_resp_ready = io_dmi_dmi_resp_ready; // @[Debug.scala 1801:18]
  assign dmOuter_io_ctrl_dmactiveAck = io_ctrl_dmactiveAck; // @[Debug.scala 1823:13]
  assign dmOuter_io_innerCtrl_ridx = dmInner_io_innerCtrl_ridx; // @[Debug.scala 1818:36]
  assign dmOuter_io_innerCtrl_safe_ridx_valid = dmInner_io_innerCtrl_safe_ridx_valid; // @[Debug.scala 1818:36]
  assign dmOuter_io_innerCtrl_safe_sink_reset_n = dmInner_io_innerCtrl_safe_sink_reset_n; // @[Debug.scala 1818:36]
  assign dmOuter_io_hgDebugInt_0 = dmInner_io_hgDebugInt_0; // @[Debug.scala 1821:36]
  assign dmInner_auto_dmiXing_in_a_mem_0_opcode = dmOuter_auto_asource_out_a_mem_0_opcode; // @[LazyModule.scala 301:16]
  assign dmInner_auto_dmiXing_in_a_mem_0_address = dmOuter_auto_asource_out_a_mem_0_address; // @[LazyModule.scala 301:16]
  assign dmInner_auto_dmiXing_in_a_mem_0_data = dmOuter_auto_asource_out_a_mem_0_data; // @[LazyModule.scala 301:16]
  assign dmInner_auto_dmiXing_in_a_widx = dmOuter_auto_asource_out_a_widx; // @[LazyModule.scala 301:16]
  assign dmInner_auto_dmiXing_in_a_safe_widx_valid = dmOuter_auto_asource_out_a_safe_widx_valid; // @[LazyModule.scala 301:16]
  assign dmInner_auto_dmiXing_in_a_safe_source_reset_n = dmOuter_auto_asource_out_a_safe_source_reset_n; // @[LazyModule.scala 301:16]
  assign dmInner_auto_dmiXing_in_d_ridx = dmOuter_auto_asource_out_d_ridx; // @[LazyModule.scala 301:16]
  assign dmInner_auto_dmiXing_in_d_safe_ridx_valid = dmOuter_auto_asource_out_d_safe_ridx_valid; // @[LazyModule.scala 301:16]
  assign dmInner_auto_dmiXing_in_d_safe_sink_reset_n = dmOuter_auto_asource_out_d_safe_sink_reset_n; // @[LazyModule.scala 301:16]
  assign dmInner_auto_dmInner_tl_in_a_valid = auto_dmInner_dmInner_tl_in_a_valid; // @[LazyModule.scala 312:16]
  assign dmInner_auto_dmInner_tl_in_a_bits_opcode = auto_dmInner_dmInner_tl_in_a_bits_opcode; // @[LazyModule.scala 312:16]
  assign dmInner_auto_dmInner_tl_in_a_bits_size = auto_dmInner_dmInner_tl_in_a_bits_size; // @[LazyModule.scala 312:16]
  assign dmInner_auto_dmInner_tl_in_a_bits_source = auto_dmInner_dmInner_tl_in_a_bits_source; // @[LazyModule.scala 312:16]
  assign dmInner_auto_dmInner_tl_in_a_bits_address = auto_dmInner_dmInner_tl_in_a_bits_address; // @[LazyModule.scala 312:16]
  assign dmInner_auto_dmInner_tl_in_a_bits_mask = auto_dmInner_dmInner_tl_in_a_bits_mask; // @[LazyModule.scala 312:16]
  assign dmInner_auto_dmInner_tl_in_a_bits_data = auto_dmInner_dmInner_tl_in_a_bits_data; // @[LazyModule.scala 312:16]
  assign dmInner_auto_dmInner_tl_in_d_ready = auto_dmInner_dmInner_tl_in_d_ready; // @[LazyModule.scala 312:16]
  assign dmInner_io_debug_clock = io_debug_clock; // @[Debug.scala 1814:35]
  assign dmInner_io_debug_reset = io_debug_reset; // @[Debug.scala 1815:35]
  assign dmInner_io_dmactive = dmOuter_io_ctrl_dmactive; // @[Debug.scala 1819:36]
  assign dmInner_io_innerCtrl_mem_0_resumereq = dmOuter_io_innerCtrl_mem_0_resumereq; // @[Debug.scala 1818:36]
  assign dmInner_io_innerCtrl_mem_0_ackhavereset = dmOuter_io_innerCtrl_mem_0_ackhavereset; // @[Debug.scala 1818:36]
  assign dmInner_io_innerCtrl_mem_0_hrmask_0 = dmOuter_io_innerCtrl_mem_0_hrmask_0; // @[Debug.scala 1818:36]
  assign dmInner_io_innerCtrl_widx = dmOuter_io_innerCtrl_widx; // @[Debug.scala 1818:36]
  assign dmInner_io_innerCtrl_safe_widx_valid = dmOuter_io_innerCtrl_safe_widx_valid; // @[Debug.scala 1818:36]
  assign dmInner_io_innerCtrl_safe_source_reset_n = dmOuter_io_innerCtrl_safe_source_reset_n; // @[Debug.scala 1818:36]
  assign dmInner_io_hartIsInReset_0 = io_hartIsInReset_0; // @[Debug.scala 1825:37]
endmodule
