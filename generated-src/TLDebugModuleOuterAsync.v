module TLDebugModuleOuterAsync(
  output [2:0]  auto_asource_out_a_mem_0_opcode,
  output [8:0]  auto_asource_out_a_mem_0_address,
  output [31:0] auto_asource_out_a_mem_0_data,
  input         auto_asource_out_a_ridx,
  output        auto_asource_out_a_widx,
  input         auto_asource_out_a_safe_ridx_valid,
  output        auto_asource_out_a_safe_widx_valid,
  output        auto_asource_out_a_safe_source_reset_n,
  input         auto_asource_out_a_safe_sink_reset_n,
  input  [2:0]  auto_asource_out_d_mem_0_opcode,
  input  [1:0]  auto_asource_out_d_mem_0_size,
  input         auto_asource_out_d_mem_0_source,
  input  [31:0] auto_asource_out_d_mem_0_data,
  output        auto_asource_out_d_ridx,
  input         auto_asource_out_d_widx,
  output        auto_asource_out_d_safe_ridx_valid,
  input         auto_asource_out_d_safe_widx_valid,
  input         auto_asource_out_d_safe_source_reset_n,
  output        auto_asource_out_d_safe_sink_reset_n,
  output        auto_intsource_out_sync_0,
  input         io_dmi_clock,
  input         io_dmi_reset,
  output        io_dmi_req_ready,
  input         io_dmi_req_valid,
  input  [6:0]  io_dmi_req_bits_addr,
  input  [31:0] io_dmi_req_bits_data,
  input  [1:0]  io_dmi_req_bits_op,
  input         io_dmi_resp_ready,
  output        io_dmi_resp_valid,
  output [31:0] io_dmi_resp_bits_data,
  output [1:0]  io_dmi_resp_bits_resp,
  output        io_ctrl_ndreset,
  output        io_ctrl_dmactive,
  input         io_ctrl_dmactiveAck,
  output        io_innerCtrl_mem_0_resumereq,
  output        io_innerCtrl_mem_0_ackhavereset,
  output        io_innerCtrl_mem_0_hrmask_0,
  input         io_innerCtrl_ridx,
  output        io_innerCtrl_widx,
  input         io_innerCtrl_safe_ridx_valid,
  output        io_innerCtrl_safe_widx_valid,
  output        io_innerCtrl_safe_source_reset_n,
  input         io_innerCtrl_safe_sink_reset_n,
  input         io_hgDebugInt_0
);
  wire  dmiXbar_clock; // @[Debug.scala 622:28]
  wire  dmiXbar_reset; // @[Debug.scala 622:28]
  wire  dmiXbar_auto_in_a_ready; // @[Debug.scala 622:28]
  wire  dmiXbar_auto_in_a_valid; // @[Debug.scala 622:28]
  wire [2:0] dmiXbar_auto_in_a_bits_opcode; // @[Debug.scala 622:28]
  wire [8:0] dmiXbar_auto_in_a_bits_address; // @[Debug.scala 622:28]
  wire [31:0] dmiXbar_auto_in_a_bits_data; // @[Debug.scala 622:28]
  wire  dmiXbar_auto_in_d_ready; // @[Debug.scala 622:28]
  wire  dmiXbar_auto_in_d_valid; // @[Debug.scala 622:28]
  wire  dmiXbar_auto_in_d_bits_denied; // @[Debug.scala 622:28]
  wire [31:0] dmiXbar_auto_in_d_bits_data; // @[Debug.scala 622:28]
  wire  dmiXbar_auto_in_d_bits_corrupt; // @[Debug.scala 622:28]
  wire  dmiXbar_auto_out_1_a_ready; // @[Debug.scala 622:28]
  wire  dmiXbar_auto_out_1_a_valid; // @[Debug.scala 622:28]
  wire [2:0] dmiXbar_auto_out_1_a_bits_opcode; // @[Debug.scala 622:28]
  wire [6:0] dmiXbar_auto_out_1_a_bits_address; // @[Debug.scala 622:28]
  wire [31:0] dmiXbar_auto_out_1_a_bits_data; // @[Debug.scala 622:28]
  wire  dmiXbar_auto_out_1_d_ready; // @[Debug.scala 622:28]
  wire  dmiXbar_auto_out_1_d_valid; // @[Debug.scala 622:28]
  wire [2:0] dmiXbar_auto_out_1_d_bits_opcode; // @[Debug.scala 622:28]
  wire [31:0] dmiXbar_auto_out_1_d_bits_data; // @[Debug.scala 622:28]
  wire  dmiXbar_auto_out_0_a_ready; // @[Debug.scala 622:28]
  wire  dmiXbar_auto_out_0_a_valid; // @[Debug.scala 622:28]
  wire [2:0] dmiXbar_auto_out_0_a_bits_opcode; // @[Debug.scala 622:28]
  wire [8:0] dmiXbar_auto_out_0_a_bits_address; // @[Debug.scala 622:28]
  wire [31:0] dmiXbar_auto_out_0_a_bits_data; // @[Debug.scala 622:28]
  wire  dmiXbar_auto_out_0_d_ready; // @[Debug.scala 622:28]
  wire  dmiXbar_auto_out_0_d_valid; // @[Debug.scala 622:28]
  wire [2:0] dmiXbar_auto_out_0_d_bits_opcode; // @[Debug.scala 622:28]
  wire [1:0] dmiXbar_auto_out_0_d_bits_param; // @[Debug.scala 622:28]
  wire [1:0] dmiXbar_auto_out_0_d_bits_size; // @[Debug.scala 622:28]
  wire  dmiXbar_auto_out_0_d_bits_source; // @[Debug.scala 622:28]
  wire  dmiXbar_auto_out_0_d_bits_sink; // @[Debug.scala 622:28]
  wire  dmiXbar_auto_out_0_d_bits_denied; // @[Debug.scala 622:28]
  wire [31:0] dmiXbar_auto_out_0_d_bits_data; // @[Debug.scala 622:28]
  wire  dmiXbar_auto_out_0_d_bits_corrupt; // @[Debug.scala 622:28]
  wire  dmi2tl_auto_out_a_ready; // @[Debug.scala 625:28]
  wire  dmi2tl_auto_out_a_valid; // @[Debug.scala 625:28]
  wire [2:0] dmi2tl_auto_out_a_bits_opcode; // @[Debug.scala 625:28]
  wire [8:0] dmi2tl_auto_out_a_bits_address; // @[Debug.scala 625:28]
  wire [31:0] dmi2tl_auto_out_a_bits_data; // @[Debug.scala 625:28]
  wire  dmi2tl_auto_out_d_ready; // @[Debug.scala 625:28]
  wire  dmi2tl_auto_out_d_valid; // @[Debug.scala 625:28]
  wire  dmi2tl_auto_out_d_bits_denied; // @[Debug.scala 625:28]
  wire [31:0] dmi2tl_auto_out_d_bits_data; // @[Debug.scala 625:28]
  wire  dmi2tl_auto_out_d_bits_corrupt; // @[Debug.scala 625:28]
  wire  dmi2tl_io_dmi_req_ready; // @[Debug.scala 625:28]
  wire  dmi2tl_io_dmi_req_valid; // @[Debug.scala 625:28]
  wire [6:0] dmi2tl_io_dmi_req_bits_addr; // @[Debug.scala 625:28]
  wire [31:0] dmi2tl_io_dmi_req_bits_data; // @[Debug.scala 625:28]
  wire [1:0] dmi2tl_io_dmi_req_bits_op; // @[Debug.scala 625:28]
  wire  dmi2tl_io_dmi_resp_ready; // @[Debug.scala 625:28]
  wire  dmi2tl_io_dmi_resp_valid; // @[Debug.scala 625:28]
  wire [31:0] dmi2tl_io_dmi_resp_bits_data; // @[Debug.scala 625:28]
  wire [1:0] dmi2tl_io_dmi_resp_bits_resp; // @[Debug.scala 625:28]
  wire  dmOuter_clock; // @[Debug.scala 647:27]
  wire  dmOuter_reset; // @[Debug.scala 647:27]
  wire  dmOuter_auto_dmi_in_a_ready; // @[Debug.scala 647:27]
  wire  dmOuter_auto_dmi_in_a_valid; // @[Debug.scala 647:27]
  wire [2:0] dmOuter_auto_dmi_in_a_bits_opcode; // @[Debug.scala 647:27]
  wire [6:0] dmOuter_auto_dmi_in_a_bits_address; // @[Debug.scala 647:27]
  wire [31:0] dmOuter_auto_dmi_in_a_bits_data; // @[Debug.scala 647:27]
  wire  dmOuter_auto_dmi_in_d_ready; // @[Debug.scala 647:27]
  wire  dmOuter_auto_dmi_in_d_valid; // @[Debug.scala 647:27]
  wire [2:0] dmOuter_auto_dmi_in_d_bits_opcode; // @[Debug.scala 647:27]
  wire [31:0] dmOuter_auto_dmi_in_d_bits_data; // @[Debug.scala 647:27]
  wire  dmOuter_auto_int_out_0; // @[Debug.scala 647:27]
  wire  dmOuter_io_ctrl_ndreset; // @[Debug.scala 647:27]
  wire  dmOuter_io_ctrl_dmactive; // @[Debug.scala 647:27]
  wire  dmOuter_io_ctrl_dmactiveAck; // @[Debug.scala 647:27]
  wire  dmOuter_io_innerCtrl_ready; // @[Debug.scala 647:27]
  wire  dmOuter_io_innerCtrl_valid; // @[Debug.scala 647:27]
  wire  dmOuter_io_innerCtrl_bits_resumereq; // @[Debug.scala 647:27]
  wire [9:0] dmOuter_io_innerCtrl_bits_hartsel; // @[Debug.scala 647:27]
  wire  dmOuter_io_innerCtrl_bits_ackhavereset; // @[Debug.scala 647:27]
  wire  dmOuter_io_innerCtrl_bits_hrmask_0; // @[Debug.scala 647:27]
  wire  dmOuter_io_hgDebugInt_0; // @[Debug.scala 647:27]
  wire  intsource_auto_in_0; // @[Crossing.scala 26:31]
  wire  intsource_auto_out_sync_0; // @[Crossing.scala 26:31]
  wire  dmiBypass_clock; // @[Debug.scala 650:29]
  wire  dmiBypass_reset; // @[Debug.scala 650:29]
  wire  dmiBypass_auto_node_out_out_a_ready; // @[Debug.scala 650:29]
  wire  dmiBypass_auto_node_out_out_a_valid; // @[Debug.scala 650:29]
  wire [2:0] dmiBypass_auto_node_out_out_a_bits_opcode; // @[Debug.scala 650:29]
  wire [8:0] dmiBypass_auto_node_out_out_a_bits_address; // @[Debug.scala 650:29]
  wire [31:0] dmiBypass_auto_node_out_out_a_bits_data; // @[Debug.scala 650:29]
  wire  dmiBypass_auto_node_out_out_d_ready; // @[Debug.scala 650:29]
  wire  dmiBypass_auto_node_out_out_d_valid; // @[Debug.scala 650:29]
  wire [2:0] dmiBypass_auto_node_out_out_d_bits_opcode; // @[Debug.scala 650:29]
  wire [1:0] dmiBypass_auto_node_out_out_d_bits_param; // @[Debug.scala 650:29]
  wire [1:0] dmiBypass_auto_node_out_out_d_bits_size; // @[Debug.scala 650:29]
  wire  dmiBypass_auto_node_out_out_d_bits_source; // @[Debug.scala 650:29]
  wire  dmiBypass_auto_node_out_out_d_bits_sink; // @[Debug.scala 650:29]
  wire  dmiBypass_auto_node_out_out_d_bits_denied; // @[Debug.scala 650:29]
  wire [31:0] dmiBypass_auto_node_out_out_d_bits_data; // @[Debug.scala 650:29]
  wire  dmiBypass_auto_node_out_out_d_bits_corrupt; // @[Debug.scala 650:29]
  wire  dmiBypass_auto_node_in_in_a_ready; // @[Debug.scala 650:29]
  wire  dmiBypass_auto_node_in_in_a_valid; // @[Debug.scala 650:29]
  wire [2:0] dmiBypass_auto_node_in_in_a_bits_opcode; // @[Debug.scala 650:29]
  wire [8:0] dmiBypass_auto_node_in_in_a_bits_address; // @[Debug.scala 650:29]
  wire [31:0] dmiBypass_auto_node_in_in_a_bits_data; // @[Debug.scala 650:29]
  wire  dmiBypass_auto_node_in_in_d_ready; // @[Debug.scala 650:29]
  wire  dmiBypass_auto_node_in_in_d_valid; // @[Debug.scala 650:29]
  wire [2:0] dmiBypass_auto_node_in_in_d_bits_opcode; // @[Debug.scala 650:29]
  wire [1:0] dmiBypass_auto_node_in_in_d_bits_param; // @[Debug.scala 650:29]
  wire [1:0] dmiBypass_auto_node_in_in_d_bits_size; // @[Debug.scala 650:29]
  wire  dmiBypass_auto_node_in_in_d_bits_source; // @[Debug.scala 650:29]
  wire  dmiBypass_auto_node_in_in_d_bits_sink; // @[Debug.scala 650:29]
  wire  dmiBypass_auto_node_in_in_d_bits_denied; // @[Debug.scala 650:29]
  wire [31:0] dmiBypass_auto_node_in_in_d_bits_data; // @[Debug.scala 650:29]
  wire  dmiBypass_auto_node_in_in_d_bits_corrupt; // @[Debug.scala 650:29]
  wire  dmiBypass_io_bypass; // @[Debug.scala 650:29]
  wire  asource_clock; // @[AsyncCrossing.scala 87:29]
  wire  asource_reset; // @[AsyncCrossing.scala 87:29]
  wire  asource_auto_in_a_ready; // @[AsyncCrossing.scala 87:29]
  wire  asource_auto_in_a_valid; // @[AsyncCrossing.scala 87:29]
  wire [2:0] asource_auto_in_a_bits_opcode; // @[AsyncCrossing.scala 87:29]
  wire [8:0] asource_auto_in_a_bits_address; // @[AsyncCrossing.scala 87:29]
  wire [31:0] asource_auto_in_a_bits_data; // @[AsyncCrossing.scala 87:29]
  wire  asource_auto_in_d_ready; // @[AsyncCrossing.scala 87:29]
  wire  asource_auto_in_d_valid; // @[AsyncCrossing.scala 87:29]
  wire [2:0] asource_auto_in_d_bits_opcode; // @[AsyncCrossing.scala 87:29]
  wire [1:0] asource_auto_in_d_bits_param; // @[AsyncCrossing.scala 87:29]
  wire [1:0] asource_auto_in_d_bits_size; // @[AsyncCrossing.scala 87:29]
  wire  asource_auto_in_d_bits_source; // @[AsyncCrossing.scala 87:29]
  wire  asource_auto_in_d_bits_sink; // @[AsyncCrossing.scala 87:29]
  wire  asource_auto_in_d_bits_denied; // @[AsyncCrossing.scala 87:29]
  wire [31:0] asource_auto_in_d_bits_data; // @[AsyncCrossing.scala 87:29]
  wire  asource_auto_in_d_bits_corrupt; // @[AsyncCrossing.scala 87:29]
  wire [2:0] asource_auto_out_a_mem_0_opcode; // @[AsyncCrossing.scala 87:29]
  wire [8:0] asource_auto_out_a_mem_0_address; // @[AsyncCrossing.scala 87:29]
  wire [31:0] asource_auto_out_a_mem_0_data; // @[AsyncCrossing.scala 87:29]
  wire  asource_auto_out_a_ridx; // @[AsyncCrossing.scala 87:29]
  wire  asource_auto_out_a_widx; // @[AsyncCrossing.scala 87:29]
  wire  asource_auto_out_a_safe_ridx_valid; // @[AsyncCrossing.scala 87:29]
  wire  asource_auto_out_a_safe_widx_valid; // @[AsyncCrossing.scala 87:29]
  wire  asource_auto_out_a_safe_source_reset_n; // @[AsyncCrossing.scala 87:29]
  wire  asource_auto_out_a_safe_sink_reset_n; // @[AsyncCrossing.scala 87:29]
  wire [2:0] asource_auto_out_d_mem_0_opcode; // @[AsyncCrossing.scala 87:29]
  wire [1:0] asource_auto_out_d_mem_0_size; // @[AsyncCrossing.scala 87:29]
  wire  asource_auto_out_d_mem_0_source; // @[AsyncCrossing.scala 87:29]
  wire [31:0] asource_auto_out_d_mem_0_data; // @[AsyncCrossing.scala 87:29]
  wire  asource_auto_out_d_ridx; // @[AsyncCrossing.scala 87:29]
  wire  asource_auto_out_d_widx; // @[AsyncCrossing.scala 87:29]
  wire  asource_auto_out_d_safe_ridx_valid; // @[AsyncCrossing.scala 87:29]
  wire  asource_auto_out_d_safe_widx_valid; // @[AsyncCrossing.scala 87:29]
  wire  asource_auto_out_d_safe_source_reset_n; // @[AsyncCrossing.scala 87:29]
  wire  asource_auto_out_d_safe_sink_reset_n; // @[AsyncCrossing.scala 87:29]
  wire  dmactiveAck_dmactiveAckSync_clock; // @[ShiftReg.scala 45:23]
  wire  dmactiveAck_dmactiveAckSync_reset; // @[ShiftReg.scala 45:23]
  wire  dmactiveAck_dmactiveAckSync_io_d; // @[ShiftReg.scala 45:23]
  wire  dmactiveAck_dmactiveAckSync_io_q; // @[ShiftReg.scala 45:23]
  wire  io_innerCtrl_source_clock; // @[AsyncQueue.scala 216:24]
  wire  io_innerCtrl_source_reset; // @[AsyncQueue.scala 216:24]
  wire  io_innerCtrl_source_io_enq_ready; // @[AsyncQueue.scala 216:24]
  wire  io_innerCtrl_source_io_enq_valid; // @[AsyncQueue.scala 216:24]
  wire  io_innerCtrl_source_io_enq_bits_resumereq; // @[AsyncQueue.scala 216:24]
  wire  io_innerCtrl_source_io_enq_bits_ackhavereset; // @[AsyncQueue.scala 216:24]
  wire  io_innerCtrl_source_io_enq_bits_hrmask_0; // @[AsyncQueue.scala 216:24]
  wire  io_innerCtrl_source_io_async_mem_0_resumereq; // @[AsyncQueue.scala 216:24]
  wire  io_innerCtrl_source_io_async_mem_0_ackhavereset; // @[AsyncQueue.scala 216:24]
  wire  io_innerCtrl_source_io_async_mem_0_hrmask_0; // @[AsyncQueue.scala 216:24]
  wire  io_innerCtrl_source_io_async_ridx; // @[AsyncQueue.scala 216:24]
  wire  io_innerCtrl_source_io_async_widx; // @[AsyncQueue.scala 216:24]
  wire  io_innerCtrl_source_io_async_safe_ridx_valid; // @[AsyncQueue.scala 216:24]
  wire  io_innerCtrl_source_io_async_safe_widx_valid; // @[AsyncQueue.scala 216:24]
  wire  io_innerCtrl_source_io_async_safe_source_reset_n; // @[AsyncQueue.scala 216:24]
  wire  io_innerCtrl_source_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 216:24]
  wire  dmactiveAck = dmactiveAck_dmactiveAckSync_io_q; // @[ShiftReg.scala 48:24 ShiftReg.scala 48:24]
  TLXbar_9 dmiXbar ( // @[Debug.scala 622:28]
    .clock(dmiXbar_clock),
    .reset(dmiXbar_reset),
    .auto_in_a_ready(dmiXbar_auto_in_a_ready),
    .auto_in_a_valid(dmiXbar_auto_in_a_valid),
    .auto_in_a_bits_opcode(dmiXbar_auto_in_a_bits_opcode),
    .auto_in_a_bits_address(dmiXbar_auto_in_a_bits_address),
    .auto_in_a_bits_data(dmiXbar_auto_in_a_bits_data),
    .auto_in_d_ready(dmiXbar_auto_in_d_ready),
    .auto_in_d_valid(dmiXbar_auto_in_d_valid),
    .auto_in_d_bits_denied(dmiXbar_auto_in_d_bits_denied),
    .auto_in_d_bits_data(dmiXbar_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(dmiXbar_auto_in_d_bits_corrupt),
    .auto_out_1_a_ready(dmiXbar_auto_out_1_a_ready),
    .auto_out_1_a_valid(dmiXbar_auto_out_1_a_valid),
    .auto_out_1_a_bits_opcode(dmiXbar_auto_out_1_a_bits_opcode),
    .auto_out_1_a_bits_address(dmiXbar_auto_out_1_a_bits_address),
    .auto_out_1_a_bits_data(dmiXbar_auto_out_1_a_bits_data),
    .auto_out_1_d_ready(dmiXbar_auto_out_1_d_ready),
    .auto_out_1_d_valid(dmiXbar_auto_out_1_d_valid),
    .auto_out_1_d_bits_opcode(dmiXbar_auto_out_1_d_bits_opcode),
    .auto_out_1_d_bits_data(dmiXbar_auto_out_1_d_bits_data),
    .auto_out_0_a_ready(dmiXbar_auto_out_0_a_ready),
    .auto_out_0_a_valid(dmiXbar_auto_out_0_a_valid),
    .auto_out_0_a_bits_opcode(dmiXbar_auto_out_0_a_bits_opcode),
    .auto_out_0_a_bits_address(dmiXbar_auto_out_0_a_bits_address),
    .auto_out_0_a_bits_data(dmiXbar_auto_out_0_a_bits_data),
    .auto_out_0_d_ready(dmiXbar_auto_out_0_d_ready),
    .auto_out_0_d_valid(dmiXbar_auto_out_0_d_valid),
    .auto_out_0_d_bits_opcode(dmiXbar_auto_out_0_d_bits_opcode),
    .auto_out_0_d_bits_param(dmiXbar_auto_out_0_d_bits_param),
    .auto_out_0_d_bits_size(dmiXbar_auto_out_0_d_bits_size),
    .auto_out_0_d_bits_source(dmiXbar_auto_out_0_d_bits_source),
    .auto_out_0_d_bits_sink(dmiXbar_auto_out_0_d_bits_sink),
    .auto_out_0_d_bits_denied(dmiXbar_auto_out_0_d_bits_denied),
    .auto_out_0_d_bits_data(dmiXbar_auto_out_0_d_bits_data),
    .auto_out_0_d_bits_corrupt(dmiXbar_auto_out_0_d_bits_corrupt)
  );
  DMIToTL dmi2tl ( // @[Debug.scala 625:28]
    .auto_out_a_ready(dmi2tl_auto_out_a_ready),
    .auto_out_a_valid(dmi2tl_auto_out_a_valid),
    .auto_out_a_bits_opcode(dmi2tl_auto_out_a_bits_opcode),
    .auto_out_a_bits_address(dmi2tl_auto_out_a_bits_address),
    .auto_out_a_bits_data(dmi2tl_auto_out_a_bits_data),
    .auto_out_d_ready(dmi2tl_auto_out_d_ready),
    .auto_out_d_valid(dmi2tl_auto_out_d_valid),
    .auto_out_d_bits_denied(dmi2tl_auto_out_d_bits_denied),
    .auto_out_d_bits_data(dmi2tl_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(dmi2tl_auto_out_d_bits_corrupt),
    .io_dmi_req_ready(dmi2tl_io_dmi_req_ready),
    .io_dmi_req_valid(dmi2tl_io_dmi_req_valid),
    .io_dmi_req_bits_addr(dmi2tl_io_dmi_req_bits_addr),
    .io_dmi_req_bits_data(dmi2tl_io_dmi_req_bits_data),
    .io_dmi_req_bits_op(dmi2tl_io_dmi_req_bits_op),
    .io_dmi_resp_ready(dmi2tl_io_dmi_resp_ready),
    .io_dmi_resp_valid(dmi2tl_io_dmi_resp_valid),
    .io_dmi_resp_bits_data(dmi2tl_io_dmi_resp_bits_data),
    .io_dmi_resp_bits_resp(dmi2tl_io_dmi_resp_bits_resp)
  );
  TLDebugModuleOuter dmOuter ( // @[Debug.scala 647:27]
    .clock(dmOuter_clock),
    .reset(dmOuter_reset),
    .auto_dmi_in_a_ready(dmOuter_auto_dmi_in_a_ready),
    .auto_dmi_in_a_valid(dmOuter_auto_dmi_in_a_valid),
    .auto_dmi_in_a_bits_opcode(dmOuter_auto_dmi_in_a_bits_opcode),
    .auto_dmi_in_a_bits_address(dmOuter_auto_dmi_in_a_bits_address),
    .auto_dmi_in_a_bits_data(dmOuter_auto_dmi_in_a_bits_data),
    .auto_dmi_in_d_ready(dmOuter_auto_dmi_in_d_ready),
    .auto_dmi_in_d_valid(dmOuter_auto_dmi_in_d_valid),
    .auto_dmi_in_d_bits_opcode(dmOuter_auto_dmi_in_d_bits_opcode),
    .auto_dmi_in_d_bits_data(dmOuter_auto_dmi_in_d_bits_data),
    .auto_int_out_0(dmOuter_auto_int_out_0),
    .io_ctrl_ndreset(dmOuter_io_ctrl_ndreset),
    .io_ctrl_dmactive(dmOuter_io_ctrl_dmactive),
    .io_ctrl_dmactiveAck(dmOuter_io_ctrl_dmactiveAck),
    .io_innerCtrl_ready(dmOuter_io_innerCtrl_ready),
    .io_innerCtrl_valid(dmOuter_io_innerCtrl_valid),
    .io_innerCtrl_bits_resumereq(dmOuter_io_innerCtrl_bits_resumereq),
    .io_innerCtrl_bits_hartsel(dmOuter_io_innerCtrl_bits_hartsel),
    .io_innerCtrl_bits_ackhavereset(dmOuter_io_innerCtrl_bits_ackhavereset),
    .io_innerCtrl_bits_hrmask_0(dmOuter_io_innerCtrl_bits_hrmask_0),
    .io_hgDebugInt_0(dmOuter_io_hgDebugInt_0)
  );
  IntSyncCrossingSource_1 intsource ( // @[Crossing.scala 26:31]
    .auto_in_0(intsource_auto_in_0),
    .auto_out_sync_0(intsource_auto_out_sync_0)
  );
  TLBusBypass dmiBypass ( // @[Debug.scala 650:29]
    .clock(dmiBypass_clock),
    .reset(dmiBypass_reset),
    .auto_node_out_out_a_ready(dmiBypass_auto_node_out_out_a_ready),
    .auto_node_out_out_a_valid(dmiBypass_auto_node_out_out_a_valid),
    .auto_node_out_out_a_bits_opcode(dmiBypass_auto_node_out_out_a_bits_opcode),
    .auto_node_out_out_a_bits_address(dmiBypass_auto_node_out_out_a_bits_address),
    .auto_node_out_out_a_bits_data(dmiBypass_auto_node_out_out_a_bits_data),
    .auto_node_out_out_d_ready(dmiBypass_auto_node_out_out_d_ready),
    .auto_node_out_out_d_valid(dmiBypass_auto_node_out_out_d_valid),
    .auto_node_out_out_d_bits_opcode(dmiBypass_auto_node_out_out_d_bits_opcode),
    .auto_node_out_out_d_bits_param(dmiBypass_auto_node_out_out_d_bits_param),
    .auto_node_out_out_d_bits_size(dmiBypass_auto_node_out_out_d_bits_size),
    .auto_node_out_out_d_bits_source(dmiBypass_auto_node_out_out_d_bits_source),
    .auto_node_out_out_d_bits_sink(dmiBypass_auto_node_out_out_d_bits_sink),
    .auto_node_out_out_d_bits_denied(dmiBypass_auto_node_out_out_d_bits_denied),
    .auto_node_out_out_d_bits_data(dmiBypass_auto_node_out_out_d_bits_data),
    .auto_node_out_out_d_bits_corrupt(dmiBypass_auto_node_out_out_d_bits_corrupt),
    .auto_node_in_in_a_ready(dmiBypass_auto_node_in_in_a_ready),
    .auto_node_in_in_a_valid(dmiBypass_auto_node_in_in_a_valid),
    .auto_node_in_in_a_bits_opcode(dmiBypass_auto_node_in_in_a_bits_opcode),
    .auto_node_in_in_a_bits_address(dmiBypass_auto_node_in_in_a_bits_address),
    .auto_node_in_in_a_bits_data(dmiBypass_auto_node_in_in_a_bits_data),
    .auto_node_in_in_d_ready(dmiBypass_auto_node_in_in_d_ready),
    .auto_node_in_in_d_valid(dmiBypass_auto_node_in_in_d_valid),
    .auto_node_in_in_d_bits_opcode(dmiBypass_auto_node_in_in_d_bits_opcode),
    .auto_node_in_in_d_bits_param(dmiBypass_auto_node_in_in_d_bits_param),
    .auto_node_in_in_d_bits_size(dmiBypass_auto_node_in_in_d_bits_size),
    .auto_node_in_in_d_bits_source(dmiBypass_auto_node_in_in_d_bits_source),
    .auto_node_in_in_d_bits_sink(dmiBypass_auto_node_in_in_d_bits_sink),
    .auto_node_in_in_d_bits_denied(dmiBypass_auto_node_in_in_d_bits_denied),
    .auto_node_in_in_d_bits_data(dmiBypass_auto_node_in_in_d_bits_data),
    .auto_node_in_in_d_bits_corrupt(dmiBypass_auto_node_in_in_d_bits_corrupt),
    .io_bypass(dmiBypass_io_bypass)
  );
  TLAsyncCrossingSource asource ( // @[AsyncCrossing.scala 87:29]
    .clock(asource_clock),
    .reset(asource_reset),
    .auto_in_a_ready(asource_auto_in_a_ready),
    .auto_in_a_valid(asource_auto_in_a_valid),
    .auto_in_a_bits_opcode(asource_auto_in_a_bits_opcode),
    .auto_in_a_bits_address(asource_auto_in_a_bits_address),
    .auto_in_a_bits_data(asource_auto_in_a_bits_data),
    .auto_in_d_ready(asource_auto_in_d_ready),
    .auto_in_d_valid(asource_auto_in_d_valid),
    .auto_in_d_bits_opcode(asource_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(asource_auto_in_d_bits_param),
    .auto_in_d_bits_size(asource_auto_in_d_bits_size),
    .auto_in_d_bits_source(asource_auto_in_d_bits_source),
    .auto_in_d_bits_sink(asource_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(asource_auto_in_d_bits_denied),
    .auto_in_d_bits_data(asource_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(asource_auto_in_d_bits_corrupt),
    .auto_out_a_mem_0_opcode(asource_auto_out_a_mem_0_opcode),
    .auto_out_a_mem_0_address(asource_auto_out_a_mem_0_address),
    .auto_out_a_mem_0_data(asource_auto_out_a_mem_0_data),
    .auto_out_a_ridx(asource_auto_out_a_ridx),
    .auto_out_a_widx(asource_auto_out_a_widx),
    .auto_out_a_safe_ridx_valid(asource_auto_out_a_safe_ridx_valid),
    .auto_out_a_safe_widx_valid(asource_auto_out_a_safe_widx_valid),
    .auto_out_a_safe_source_reset_n(asource_auto_out_a_safe_source_reset_n),
    .auto_out_a_safe_sink_reset_n(asource_auto_out_a_safe_sink_reset_n),
    .auto_out_d_mem_0_opcode(asource_auto_out_d_mem_0_opcode),
    .auto_out_d_mem_0_size(asource_auto_out_d_mem_0_size),
    .auto_out_d_mem_0_source(asource_auto_out_d_mem_0_source),
    .auto_out_d_mem_0_data(asource_auto_out_d_mem_0_data),
    .auto_out_d_ridx(asource_auto_out_d_ridx),
    .auto_out_d_widx(asource_auto_out_d_widx),
    .auto_out_d_safe_ridx_valid(asource_auto_out_d_safe_ridx_valid),
    .auto_out_d_safe_widx_valid(asource_auto_out_d_safe_widx_valid),
    .auto_out_d_safe_source_reset_n(asource_auto_out_d_safe_source_reset_n),
    .auto_out_d_safe_sink_reset_n(asource_auto_out_d_safe_sink_reset_n)
  );
  AsyncResetSynchronizerShiftReg_w1_d3_i0 dmactiveAck_dmactiveAckSync ( // @[ShiftReg.scala 45:23]
    .clock(dmactiveAck_dmactiveAckSync_clock),
    .reset(dmactiveAck_dmactiveAckSync_reset),
    .io_d(dmactiveAck_dmactiveAckSync_io_d),
    .io_q(dmactiveAck_dmactiveAckSync_io_q)
  );
  AsyncQueueSource_1 io_innerCtrl_source ( // @[AsyncQueue.scala 216:24]
    .clock(io_innerCtrl_source_clock),
    .reset(io_innerCtrl_source_reset),
    .io_enq_ready(io_innerCtrl_source_io_enq_ready),
    .io_enq_valid(io_innerCtrl_source_io_enq_valid),
    .io_enq_bits_resumereq(io_innerCtrl_source_io_enq_bits_resumereq),
    .io_enq_bits_ackhavereset(io_innerCtrl_source_io_enq_bits_ackhavereset),
    .io_enq_bits_hrmask_0(io_innerCtrl_source_io_enq_bits_hrmask_0),
    .io_async_mem_0_resumereq(io_innerCtrl_source_io_async_mem_0_resumereq),
    .io_async_mem_0_ackhavereset(io_innerCtrl_source_io_async_mem_0_ackhavereset),
    .io_async_mem_0_hrmask_0(io_innerCtrl_source_io_async_mem_0_hrmask_0),
    .io_async_ridx(io_innerCtrl_source_io_async_ridx),
    .io_async_widx(io_innerCtrl_source_io_async_widx),
    .io_async_safe_ridx_valid(io_innerCtrl_source_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(io_innerCtrl_source_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(io_innerCtrl_source_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(io_innerCtrl_source_io_async_safe_sink_reset_n)
  );
  assign auto_asource_out_a_mem_0_opcode = asource_auto_out_a_mem_0_opcode; // @[LazyModule.scala 314:12]
  assign auto_asource_out_a_mem_0_address = asource_auto_out_a_mem_0_address; // @[LazyModule.scala 314:12]
  assign auto_asource_out_a_mem_0_data = asource_auto_out_a_mem_0_data; // @[LazyModule.scala 314:12]
  assign auto_asource_out_a_widx = asource_auto_out_a_widx; // @[LazyModule.scala 314:12]
  assign auto_asource_out_a_safe_widx_valid = asource_auto_out_a_safe_widx_valid; // @[LazyModule.scala 314:12]
  assign auto_asource_out_a_safe_source_reset_n = asource_auto_out_a_safe_source_reset_n; // @[LazyModule.scala 314:12]
  assign auto_asource_out_d_ridx = asource_auto_out_d_ridx; // @[LazyModule.scala 314:12]
  assign auto_asource_out_d_safe_ridx_valid = asource_auto_out_d_safe_ridx_valid; // @[LazyModule.scala 314:12]
  assign auto_asource_out_d_safe_sink_reset_n = asource_auto_out_d_safe_sink_reset_n; // @[LazyModule.scala 314:12]
  assign auto_intsource_out_sync_0 = intsource_auto_out_sync_0; // @[LazyModule.scala 314:12]
  assign io_dmi_req_ready = dmi2tl_io_dmi_req_ready; // @[Debug.scala 675:43]
  assign io_dmi_resp_valid = dmi2tl_io_dmi_resp_valid; // @[Debug.scala 675:43]
  assign io_dmi_resp_bits_data = dmi2tl_io_dmi_resp_bits_data; // @[Debug.scala 675:43]
  assign io_dmi_resp_bits_resp = dmi2tl_io_dmi_resp_bits_resp; // @[Debug.scala 675:43]
  assign io_ctrl_ndreset = dmOuter_io_ctrl_ndreset; // @[Debug.scala 680:15]
  assign io_ctrl_dmactive = dmOuter_io_ctrl_dmactive; // @[Debug.scala 680:15]
  assign io_innerCtrl_mem_0_resumereq = io_innerCtrl_source_io_async_mem_0_resumereq; // @[Debug.scala 682:20]
  assign io_innerCtrl_mem_0_ackhavereset = io_innerCtrl_source_io_async_mem_0_ackhavereset; // @[Debug.scala 682:20]
  assign io_innerCtrl_mem_0_hrmask_0 = io_innerCtrl_source_io_async_mem_0_hrmask_0; // @[Debug.scala 682:20]
  assign io_innerCtrl_widx = io_innerCtrl_source_io_async_widx; // @[Debug.scala 682:20]
  assign io_innerCtrl_safe_widx_valid = io_innerCtrl_source_io_async_safe_widx_valid; // @[Debug.scala 682:20]
  assign io_innerCtrl_safe_source_reset_n = io_innerCtrl_source_io_async_safe_source_reset_n; // @[Debug.scala 682:20]
  assign dmiXbar_clock = io_dmi_clock; // @[LazyModule.scala 363:31 Debug.scala 671:16]
  assign dmiXbar_reset = io_dmi_reset; // @[LazyModule.scala 365:31 Debug.scala 672:16]
  assign dmiXbar_auto_in_a_valid = dmi2tl_auto_out_a_valid; // @[LazyModule.scala 299:16]
  assign dmiXbar_auto_in_a_bits_opcode = dmi2tl_auto_out_a_bits_opcode; // @[LazyModule.scala 299:16]
  assign dmiXbar_auto_in_a_bits_address = dmi2tl_auto_out_a_bits_address; // @[LazyModule.scala 299:16]
  assign dmiXbar_auto_in_a_bits_data = dmi2tl_auto_out_a_bits_data; // @[LazyModule.scala 299:16]
  assign dmiXbar_auto_in_d_ready = dmi2tl_auto_out_d_ready; // @[LazyModule.scala 299:16]
  assign dmiXbar_auto_out_1_a_ready = dmOuter_auto_dmi_in_a_ready; // @[LazyModule.scala 301:16]
  assign dmiXbar_auto_out_1_d_valid = dmOuter_auto_dmi_in_d_valid; // @[LazyModule.scala 301:16]
  assign dmiXbar_auto_out_1_d_bits_opcode = dmOuter_auto_dmi_in_d_bits_opcode; // @[LazyModule.scala 301:16]
  assign dmiXbar_auto_out_1_d_bits_data = dmOuter_auto_dmi_in_d_bits_data; // @[LazyModule.scala 301:16]
  assign dmiXbar_auto_out_0_a_ready = dmiBypass_auto_node_in_in_a_ready; // @[LazyModule.scala 301:16]
  assign dmiXbar_auto_out_0_d_valid = dmiBypass_auto_node_in_in_d_valid; // @[LazyModule.scala 301:16]
  assign dmiXbar_auto_out_0_d_bits_opcode = dmiBypass_auto_node_in_in_d_bits_opcode; // @[LazyModule.scala 301:16]
  assign dmiXbar_auto_out_0_d_bits_param = dmiBypass_auto_node_in_in_d_bits_param; // @[LazyModule.scala 301:16]
  assign dmiXbar_auto_out_0_d_bits_size = dmiBypass_auto_node_in_in_d_bits_size; // @[LazyModule.scala 301:16]
  assign dmiXbar_auto_out_0_d_bits_source = dmiBypass_auto_node_in_in_d_bits_source; // @[LazyModule.scala 301:16]
  assign dmiXbar_auto_out_0_d_bits_sink = dmiBypass_auto_node_in_in_d_bits_sink; // @[LazyModule.scala 301:16]
  assign dmiXbar_auto_out_0_d_bits_denied = dmiBypass_auto_node_in_in_d_bits_denied; // @[LazyModule.scala 301:16]
  assign dmiXbar_auto_out_0_d_bits_data = dmiBypass_auto_node_in_in_d_bits_data; // @[LazyModule.scala 301:16]
  assign dmiXbar_auto_out_0_d_bits_corrupt = dmiBypass_auto_node_in_in_d_bits_corrupt; // @[LazyModule.scala 301:16]
  assign dmi2tl_auto_out_a_ready = dmiXbar_auto_in_a_ready; // @[LazyModule.scala 299:16]
  assign dmi2tl_auto_out_d_valid = dmiXbar_auto_in_d_valid; // @[LazyModule.scala 299:16]
  assign dmi2tl_auto_out_d_bits_denied = dmiXbar_auto_in_d_bits_denied; // @[LazyModule.scala 299:16]
  assign dmi2tl_auto_out_d_bits_data = dmiXbar_auto_in_d_bits_data; // @[LazyModule.scala 299:16]
  assign dmi2tl_auto_out_d_bits_corrupt = dmiXbar_auto_in_d_bits_corrupt; // @[LazyModule.scala 299:16]
  assign dmi2tl_io_dmi_req_valid = io_dmi_req_valid; // @[Debug.scala 675:43]
  assign dmi2tl_io_dmi_req_bits_addr = io_dmi_req_bits_addr; // @[Debug.scala 675:43]
  assign dmi2tl_io_dmi_req_bits_data = io_dmi_req_bits_data; // @[Debug.scala 675:43]
  assign dmi2tl_io_dmi_req_bits_op = io_dmi_req_bits_op; // @[Debug.scala 675:43]
  assign dmi2tl_io_dmi_resp_ready = io_dmi_resp_ready; // @[Debug.scala 675:43]
  assign dmOuter_clock = io_dmi_clock; // @[LazyModule.scala 363:31 Debug.scala 671:16]
  assign dmOuter_reset = io_dmi_reset; // @[LazyModule.scala 365:31 Debug.scala 672:16]
  assign dmOuter_auto_dmi_in_a_valid = dmiXbar_auto_out_1_a_valid; // @[LazyModule.scala 301:16]
  assign dmOuter_auto_dmi_in_a_bits_opcode = dmiXbar_auto_out_1_a_bits_opcode; // @[LazyModule.scala 301:16]
  assign dmOuter_auto_dmi_in_a_bits_address = dmiXbar_auto_out_1_a_bits_address; // @[LazyModule.scala 301:16]
  assign dmOuter_auto_dmi_in_a_bits_data = dmiXbar_auto_out_1_a_bits_data; // @[LazyModule.scala 301:16]
  assign dmOuter_auto_dmi_in_d_ready = dmiXbar_auto_out_1_d_ready; // @[LazyModule.scala 301:16]
  assign dmOuter_io_ctrl_dmactiveAck = dmactiveAck_dmactiveAckSync_io_q; // @[ShiftReg.scala 48:24 ShiftReg.scala 48:24]
  assign dmOuter_io_innerCtrl_ready = io_innerCtrl_source_io_enq_ready; // @[AsyncQueue.scala 217:19]
  assign dmOuter_io_hgDebugInt_0 = io_hgDebugInt_0; // @[Debug.scala 683:36]
  assign intsource_auto_in_0 = dmOuter_auto_int_out_0; // @[LazyModule.scala 301:16]
  assign dmiBypass_clock = io_dmi_clock; // @[LazyModule.scala 363:31 Debug.scala 671:16]
  assign dmiBypass_reset = io_dmi_reset; // @[LazyModule.scala 365:31 Debug.scala 672:16]
  assign dmiBypass_auto_node_out_out_a_ready = asource_auto_in_a_ready; // @[LazyModule.scala 301:16]
  assign dmiBypass_auto_node_out_out_d_valid = asource_auto_in_d_valid; // @[LazyModule.scala 301:16]
  assign dmiBypass_auto_node_out_out_d_bits_opcode = asource_auto_in_d_bits_opcode; // @[LazyModule.scala 301:16]
  assign dmiBypass_auto_node_out_out_d_bits_param = asource_auto_in_d_bits_param; // @[LazyModule.scala 301:16]
  assign dmiBypass_auto_node_out_out_d_bits_size = asource_auto_in_d_bits_size; // @[LazyModule.scala 301:16]
  assign dmiBypass_auto_node_out_out_d_bits_source = asource_auto_in_d_bits_source; // @[LazyModule.scala 301:16]
  assign dmiBypass_auto_node_out_out_d_bits_sink = asource_auto_in_d_bits_sink; // @[LazyModule.scala 301:16]
  assign dmiBypass_auto_node_out_out_d_bits_denied = asource_auto_in_d_bits_denied; // @[LazyModule.scala 301:16]
  assign dmiBypass_auto_node_out_out_d_bits_data = asource_auto_in_d_bits_data; // @[LazyModule.scala 301:16]
  assign dmiBypass_auto_node_out_out_d_bits_corrupt = asource_auto_in_d_bits_corrupt; // @[LazyModule.scala 301:16]
  assign dmiBypass_auto_node_in_in_a_valid = dmiXbar_auto_out_0_a_valid; // @[LazyModule.scala 301:16]
  assign dmiBypass_auto_node_in_in_a_bits_opcode = dmiXbar_auto_out_0_a_bits_opcode; // @[LazyModule.scala 301:16]
  assign dmiBypass_auto_node_in_in_a_bits_address = dmiXbar_auto_out_0_a_bits_address; // @[LazyModule.scala 301:16]
  assign dmiBypass_auto_node_in_in_a_bits_data = dmiXbar_auto_out_0_a_bits_data; // @[LazyModule.scala 301:16]
  assign dmiBypass_auto_node_in_in_d_ready = dmiXbar_auto_out_0_d_ready; // @[LazyModule.scala 301:16]
  assign dmiBypass_io_bypass = (~io_ctrl_dmactive) | (~dmactiveAck); // @[Debug.scala 678:55]
  assign asource_clock = io_dmi_clock; // @[LazyModule.scala 363:31 Debug.scala 671:16]
  assign asource_reset = io_dmi_reset; // @[LazyModule.scala 365:31 Debug.scala 672:16]
  assign asource_auto_in_a_valid = dmiBypass_auto_node_out_out_a_valid; // @[LazyModule.scala 301:16]
  assign asource_auto_in_a_bits_opcode = dmiBypass_auto_node_out_out_a_bits_opcode; // @[LazyModule.scala 301:16]
  assign asource_auto_in_a_bits_address = dmiBypass_auto_node_out_out_a_bits_address; // @[LazyModule.scala 301:16]
  assign asource_auto_in_a_bits_data = dmiBypass_auto_node_out_out_a_bits_data; // @[LazyModule.scala 301:16]
  assign asource_auto_in_d_ready = dmiBypass_auto_node_out_out_d_ready; // @[LazyModule.scala 301:16]
  assign asource_auto_out_a_ridx = auto_asource_out_a_ridx; // @[LazyModule.scala 314:12]
  assign asource_auto_out_a_safe_ridx_valid = auto_asource_out_a_safe_ridx_valid; // @[LazyModule.scala 314:12]
  assign asource_auto_out_a_safe_sink_reset_n = auto_asource_out_a_safe_sink_reset_n; // @[LazyModule.scala 314:12]
  assign asource_auto_out_d_mem_0_opcode = auto_asource_out_d_mem_0_opcode; // @[LazyModule.scala 314:12]
  assign asource_auto_out_d_mem_0_size = auto_asource_out_d_mem_0_size; // @[LazyModule.scala 314:12]
  assign asource_auto_out_d_mem_0_source = auto_asource_out_d_mem_0_source; // @[LazyModule.scala 314:12]
  assign asource_auto_out_d_mem_0_data = auto_asource_out_d_mem_0_data; // @[LazyModule.scala 314:12]
  assign asource_auto_out_d_widx = auto_asource_out_d_widx; // @[LazyModule.scala 314:12]
  assign asource_auto_out_d_safe_widx_valid = auto_asource_out_d_safe_widx_valid; // @[LazyModule.scala 314:12]
  assign asource_auto_out_d_safe_source_reset_n = auto_asource_out_d_safe_source_reset_n; // @[LazyModule.scala 314:12]
  assign dmactiveAck_dmactiveAckSync_clock = io_dmi_clock; // @[LazyModule.scala 363:31 Debug.scala 671:16]
  assign dmactiveAck_dmactiveAckSync_reset = io_dmi_reset; // @[LazyModule.scala 365:31 Debug.scala 672:16]
  assign dmactiveAck_dmactiveAckSync_io_d = io_ctrl_dmactiveAck; // @[ShiftReg.scala 47:16]
  assign io_innerCtrl_source_clock = io_dmi_clock; // @[LazyModule.scala 363:31 Debug.scala 671:16]
  assign io_innerCtrl_source_reset = io_dmi_reset; // @[LazyModule.scala 365:31 Debug.scala 672:16]
  assign io_innerCtrl_source_io_enq_valid = dmOuter_io_innerCtrl_valid; // @[AsyncQueue.scala 217:19]
  assign io_innerCtrl_source_io_enq_bits_resumereq = dmOuter_io_innerCtrl_bits_resumereq; // @[AsyncQueue.scala 217:19]
  assign io_innerCtrl_source_io_enq_bits_ackhavereset = dmOuter_io_innerCtrl_bits_ackhavereset; // @[AsyncQueue.scala 217:19]
  assign io_innerCtrl_source_io_enq_bits_hrmask_0 = dmOuter_io_innerCtrl_bits_hrmask_0; // @[AsyncQueue.scala 217:19]
  assign io_innerCtrl_source_io_async_ridx = io_innerCtrl_ridx; // @[Debug.scala 682:20]
  assign io_innerCtrl_source_io_async_safe_ridx_valid = io_innerCtrl_safe_ridx_valid; // @[Debug.scala 682:20]
  assign io_innerCtrl_source_io_async_safe_sink_reset_n = io_innerCtrl_safe_sink_reset_n; // @[Debug.scala 682:20]
endmodule
