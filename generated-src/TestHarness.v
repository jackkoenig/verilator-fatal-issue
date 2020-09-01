module TestHarness(
  input   clock,
  input   reset,
  output  io_success
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  ldut_clock; // @[TestHarness.scala 17:19]
  wire  ldut_reset; // @[TestHarness.scala 17:19]
  wire  ldut_mem_axi4_0_aw_ready; // @[TestHarness.scala 17:19]
  wire  ldut_mem_axi4_0_aw_valid; // @[TestHarness.scala 17:19]
  wire [3:0] ldut_mem_axi4_0_aw_bits_id; // @[TestHarness.scala 17:19]
  wire [31:0] ldut_mem_axi4_0_aw_bits_addr; // @[TestHarness.scala 17:19]
  wire [7:0] ldut_mem_axi4_0_aw_bits_len; // @[TestHarness.scala 17:19]
  wire [2:0] ldut_mem_axi4_0_aw_bits_size; // @[TestHarness.scala 17:19]
  wire [1:0] ldut_mem_axi4_0_aw_bits_burst; // @[TestHarness.scala 17:19]
  wire  ldut_mem_axi4_0_aw_bits_lock; // @[TestHarness.scala 17:19]
  wire [3:0] ldut_mem_axi4_0_aw_bits_cache; // @[TestHarness.scala 17:19]
  wire [2:0] ldut_mem_axi4_0_aw_bits_prot; // @[TestHarness.scala 17:19]
  wire [3:0] ldut_mem_axi4_0_aw_bits_qos; // @[TestHarness.scala 17:19]
  wire  ldut_mem_axi4_0_w_ready; // @[TestHarness.scala 17:19]
  wire  ldut_mem_axi4_0_w_valid; // @[TestHarness.scala 17:19]
  wire [63:0] ldut_mem_axi4_0_w_bits_data; // @[TestHarness.scala 17:19]
  wire [7:0] ldut_mem_axi4_0_w_bits_strb; // @[TestHarness.scala 17:19]
  wire  ldut_mem_axi4_0_w_bits_last; // @[TestHarness.scala 17:19]
  wire  ldut_mem_axi4_0_b_ready; // @[TestHarness.scala 17:19]
  wire  ldut_mem_axi4_0_b_valid; // @[TestHarness.scala 17:19]
  wire [3:0] ldut_mem_axi4_0_b_bits_id; // @[TestHarness.scala 17:19]
  wire [1:0] ldut_mem_axi4_0_b_bits_resp; // @[TestHarness.scala 17:19]
  wire  ldut_mem_axi4_0_ar_ready; // @[TestHarness.scala 17:19]
  wire  ldut_mem_axi4_0_ar_valid; // @[TestHarness.scala 17:19]
  wire [3:0] ldut_mem_axi4_0_ar_bits_id; // @[TestHarness.scala 17:19]
  wire [31:0] ldut_mem_axi4_0_ar_bits_addr; // @[TestHarness.scala 17:19]
  wire [7:0] ldut_mem_axi4_0_ar_bits_len; // @[TestHarness.scala 17:19]
  wire [2:0] ldut_mem_axi4_0_ar_bits_size; // @[TestHarness.scala 17:19]
  wire [1:0] ldut_mem_axi4_0_ar_bits_burst; // @[TestHarness.scala 17:19]
  wire  ldut_mem_axi4_0_ar_bits_lock; // @[TestHarness.scala 17:19]
  wire [3:0] ldut_mem_axi4_0_ar_bits_cache; // @[TestHarness.scala 17:19]
  wire [2:0] ldut_mem_axi4_0_ar_bits_prot; // @[TestHarness.scala 17:19]
  wire [3:0] ldut_mem_axi4_0_ar_bits_qos; // @[TestHarness.scala 17:19]
  wire  ldut_mem_axi4_0_r_ready; // @[TestHarness.scala 17:19]
  wire  ldut_mem_axi4_0_r_valid; // @[TestHarness.scala 17:19]
  wire [3:0] ldut_mem_axi4_0_r_bits_id; // @[TestHarness.scala 17:19]
  wire [63:0] ldut_mem_axi4_0_r_bits_data; // @[TestHarness.scala 17:19]
  wire [1:0] ldut_mem_axi4_0_r_bits_resp; // @[TestHarness.scala 17:19]
  wire  ldut_mem_axi4_0_r_bits_last; // @[TestHarness.scala 17:19]
  wire  ldut_mmio_axi4_0_aw_ready; // @[TestHarness.scala 17:19]
  wire  ldut_mmio_axi4_0_aw_valid; // @[TestHarness.scala 17:19]
  wire [3:0] ldut_mmio_axi4_0_aw_bits_id; // @[TestHarness.scala 17:19]
  wire [30:0] ldut_mmio_axi4_0_aw_bits_addr; // @[TestHarness.scala 17:19]
  wire [7:0] ldut_mmio_axi4_0_aw_bits_len; // @[TestHarness.scala 17:19]
  wire [2:0] ldut_mmio_axi4_0_aw_bits_size; // @[TestHarness.scala 17:19]
  wire [1:0] ldut_mmio_axi4_0_aw_bits_burst; // @[TestHarness.scala 17:19]
  wire  ldut_mmio_axi4_0_aw_bits_lock; // @[TestHarness.scala 17:19]
  wire [3:0] ldut_mmio_axi4_0_aw_bits_cache; // @[TestHarness.scala 17:19]
  wire [2:0] ldut_mmio_axi4_0_aw_bits_prot; // @[TestHarness.scala 17:19]
  wire [3:0] ldut_mmio_axi4_0_aw_bits_qos; // @[TestHarness.scala 17:19]
  wire  ldut_mmio_axi4_0_w_ready; // @[TestHarness.scala 17:19]
  wire  ldut_mmio_axi4_0_w_valid; // @[TestHarness.scala 17:19]
  wire [63:0] ldut_mmio_axi4_0_w_bits_data; // @[TestHarness.scala 17:19]
  wire [7:0] ldut_mmio_axi4_0_w_bits_strb; // @[TestHarness.scala 17:19]
  wire  ldut_mmio_axi4_0_w_bits_last; // @[TestHarness.scala 17:19]
  wire  ldut_mmio_axi4_0_b_ready; // @[TestHarness.scala 17:19]
  wire  ldut_mmio_axi4_0_b_valid; // @[TestHarness.scala 17:19]
  wire [3:0] ldut_mmio_axi4_0_b_bits_id; // @[TestHarness.scala 17:19]
  wire [1:0] ldut_mmio_axi4_0_b_bits_resp; // @[TestHarness.scala 17:19]
  wire  ldut_mmio_axi4_0_ar_ready; // @[TestHarness.scala 17:19]
  wire  ldut_mmio_axi4_0_ar_valid; // @[TestHarness.scala 17:19]
  wire [3:0] ldut_mmio_axi4_0_ar_bits_id; // @[TestHarness.scala 17:19]
  wire [30:0] ldut_mmio_axi4_0_ar_bits_addr; // @[TestHarness.scala 17:19]
  wire [7:0] ldut_mmio_axi4_0_ar_bits_len; // @[TestHarness.scala 17:19]
  wire [2:0] ldut_mmio_axi4_0_ar_bits_size; // @[TestHarness.scala 17:19]
  wire [1:0] ldut_mmio_axi4_0_ar_bits_burst; // @[TestHarness.scala 17:19]
  wire  ldut_mmio_axi4_0_ar_bits_lock; // @[TestHarness.scala 17:19]
  wire [3:0] ldut_mmio_axi4_0_ar_bits_cache; // @[TestHarness.scala 17:19]
  wire [2:0] ldut_mmio_axi4_0_ar_bits_prot; // @[TestHarness.scala 17:19]
  wire [3:0] ldut_mmio_axi4_0_ar_bits_qos; // @[TestHarness.scala 17:19]
  wire  ldut_mmio_axi4_0_r_ready; // @[TestHarness.scala 17:19]
  wire  ldut_mmio_axi4_0_r_valid; // @[TestHarness.scala 17:19]
  wire [3:0] ldut_mmio_axi4_0_r_bits_id; // @[TestHarness.scala 17:19]
  wire [63:0] ldut_mmio_axi4_0_r_bits_data; // @[TestHarness.scala 17:19]
  wire [1:0] ldut_mmio_axi4_0_r_bits_resp; // @[TestHarness.scala 17:19]
  wire  ldut_mmio_axi4_0_r_bits_last; // @[TestHarness.scala 17:19]
  wire  ldut_l2_frontend_bus_axi4_0_aw_ready; // @[TestHarness.scala 17:19]
  wire  ldut_l2_frontend_bus_axi4_0_aw_valid; // @[TestHarness.scala 17:19]
  wire [7:0] ldut_l2_frontend_bus_axi4_0_aw_bits_id; // @[TestHarness.scala 17:19]
  wire [31:0] ldut_l2_frontend_bus_axi4_0_aw_bits_addr; // @[TestHarness.scala 17:19]
  wire [7:0] ldut_l2_frontend_bus_axi4_0_aw_bits_len; // @[TestHarness.scala 17:19]
  wire [2:0] ldut_l2_frontend_bus_axi4_0_aw_bits_size; // @[TestHarness.scala 17:19]
  wire [1:0] ldut_l2_frontend_bus_axi4_0_aw_bits_burst; // @[TestHarness.scala 17:19]
  wire  ldut_l2_frontend_bus_axi4_0_aw_bits_lock; // @[TestHarness.scala 17:19]
  wire [3:0] ldut_l2_frontend_bus_axi4_0_aw_bits_cache; // @[TestHarness.scala 17:19]
  wire [2:0] ldut_l2_frontend_bus_axi4_0_aw_bits_prot; // @[TestHarness.scala 17:19]
  wire [3:0] ldut_l2_frontend_bus_axi4_0_aw_bits_qos; // @[TestHarness.scala 17:19]
  wire  ldut_l2_frontend_bus_axi4_0_w_ready; // @[TestHarness.scala 17:19]
  wire  ldut_l2_frontend_bus_axi4_0_w_valid; // @[TestHarness.scala 17:19]
  wire [63:0] ldut_l2_frontend_bus_axi4_0_w_bits_data; // @[TestHarness.scala 17:19]
  wire [7:0] ldut_l2_frontend_bus_axi4_0_w_bits_strb; // @[TestHarness.scala 17:19]
  wire  ldut_l2_frontend_bus_axi4_0_w_bits_last; // @[TestHarness.scala 17:19]
  wire  ldut_l2_frontend_bus_axi4_0_b_ready; // @[TestHarness.scala 17:19]
  wire  ldut_l2_frontend_bus_axi4_0_b_valid; // @[TestHarness.scala 17:19]
  wire [7:0] ldut_l2_frontend_bus_axi4_0_b_bits_id; // @[TestHarness.scala 17:19]
  wire [1:0] ldut_l2_frontend_bus_axi4_0_b_bits_resp; // @[TestHarness.scala 17:19]
  wire  ldut_l2_frontend_bus_axi4_0_ar_ready; // @[TestHarness.scala 17:19]
  wire  ldut_l2_frontend_bus_axi4_0_ar_valid; // @[TestHarness.scala 17:19]
  wire [7:0] ldut_l2_frontend_bus_axi4_0_ar_bits_id; // @[TestHarness.scala 17:19]
  wire [31:0] ldut_l2_frontend_bus_axi4_0_ar_bits_addr; // @[TestHarness.scala 17:19]
  wire [7:0] ldut_l2_frontend_bus_axi4_0_ar_bits_len; // @[TestHarness.scala 17:19]
  wire [2:0] ldut_l2_frontend_bus_axi4_0_ar_bits_size; // @[TestHarness.scala 17:19]
  wire [1:0] ldut_l2_frontend_bus_axi4_0_ar_bits_burst; // @[TestHarness.scala 17:19]
  wire  ldut_l2_frontend_bus_axi4_0_ar_bits_lock; // @[TestHarness.scala 17:19]
  wire [3:0] ldut_l2_frontend_bus_axi4_0_ar_bits_cache; // @[TestHarness.scala 17:19]
  wire [2:0] ldut_l2_frontend_bus_axi4_0_ar_bits_prot; // @[TestHarness.scala 17:19]
  wire [3:0] ldut_l2_frontend_bus_axi4_0_ar_bits_qos; // @[TestHarness.scala 17:19]
  wire  ldut_l2_frontend_bus_axi4_0_r_ready; // @[TestHarness.scala 17:19]
  wire  ldut_l2_frontend_bus_axi4_0_r_valid; // @[TestHarness.scala 17:19]
  wire [7:0] ldut_l2_frontend_bus_axi4_0_r_bits_id; // @[TestHarness.scala 17:19]
  wire [63:0] ldut_l2_frontend_bus_axi4_0_r_bits_data; // @[TestHarness.scala 17:19]
  wire [1:0] ldut_l2_frontend_bus_axi4_0_r_bits_resp; // @[TestHarness.scala 17:19]
  wire  ldut_l2_frontend_bus_axi4_0_r_bits_last; // @[TestHarness.scala 17:19]
  wire  ldut_resetctrl_resetctrl_hartIsInReset_0; // @[TestHarness.scala 17:19]
  wire  ldut_debug_debug_clock; // @[TestHarness.scala 17:19]
  wire  ldut_debug_debug_reset; // @[TestHarness.scala 17:19]
  wire  ldut_debug_debug_clockeddmi_dmi_req_ready; // @[TestHarness.scala 17:19]
  wire  ldut_debug_debug_clockeddmi_dmi_req_valid; // @[TestHarness.scala 17:19]
  wire [6:0] ldut_debug_debug_clockeddmi_dmi_req_bits_addr; // @[TestHarness.scala 17:19]
  wire [31:0] ldut_debug_debug_clockeddmi_dmi_req_bits_data; // @[TestHarness.scala 17:19]
  wire [1:0] ldut_debug_debug_clockeddmi_dmi_req_bits_op; // @[TestHarness.scala 17:19]
  wire  ldut_debug_debug_clockeddmi_dmi_resp_ready; // @[TestHarness.scala 17:19]
  wire  ldut_debug_debug_clockeddmi_dmi_resp_valid; // @[TestHarness.scala 17:19]
  wire [31:0] ldut_debug_debug_clockeddmi_dmi_resp_bits_data; // @[TestHarness.scala 17:19]
  wire [1:0] ldut_debug_debug_clockeddmi_dmi_resp_bits_resp; // @[TestHarness.scala 17:19]
  wire  ldut_debug_debug_clockeddmi_dmiClock; // @[TestHarness.scala 17:19]
  wire  ldut_debug_debug_clockeddmi_dmiReset; // @[TestHarness.scala 17:19]
  wire  ldut_debug_debug_ndreset; // @[TestHarness.scala 17:19]
  wire  ldut_debug_debug_dmactive; // @[TestHarness.scala 17:19]
  wire  ldut_debug_debug_dmactiveAck; // @[TestHarness.scala 17:19]
  wire [1:0] ldut_interrupts; // @[TestHarness.scala 17:19]
  wire  ldut_reset_reg_clock; // @[AsyncResetReg.scala 89:21]
  wire  ldut_reset_reg_reset; // @[AsyncResetReg.scala 89:21]
  wire  ldut_reset_reg_io_d; // @[AsyncResetReg.scala 89:21]
  wire  ldut_reset_reg_io_q; // @[AsyncResetReg.scala 89:21]
  wire  mem_clock; // @[SimAXIMem.scala 41:13]
  wire  mem_reset; // @[SimAXIMem.scala 41:13]
  wire  mem_io_axi4_0_aw_ready; // @[SimAXIMem.scala 41:13]
  wire  mem_io_axi4_0_aw_valid; // @[SimAXIMem.scala 41:13]
  wire [3:0] mem_io_axi4_0_aw_bits_id; // @[SimAXIMem.scala 41:13]
  wire [27:0] mem_io_axi4_0_aw_bits_addr; // @[SimAXIMem.scala 41:13]
  wire [7:0] mem_io_axi4_0_aw_bits_len; // @[SimAXIMem.scala 41:13]
  wire [2:0] mem_io_axi4_0_aw_bits_size; // @[SimAXIMem.scala 41:13]
  wire [1:0] mem_io_axi4_0_aw_bits_burst; // @[SimAXIMem.scala 41:13]
  wire  mem_io_axi4_0_w_ready; // @[SimAXIMem.scala 41:13]
  wire  mem_io_axi4_0_w_valid; // @[SimAXIMem.scala 41:13]
  wire [63:0] mem_io_axi4_0_w_bits_data; // @[SimAXIMem.scala 41:13]
  wire [7:0] mem_io_axi4_0_w_bits_strb; // @[SimAXIMem.scala 41:13]
  wire  mem_io_axi4_0_w_bits_last; // @[SimAXIMem.scala 41:13]
  wire  mem_io_axi4_0_b_ready; // @[SimAXIMem.scala 41:13]
  wire  mem_io_axi4_0_b_valid; // @[SimAXIMem.scala 41:13]
  wire [3:0] mem_io_axi4_0_b_bits_id; // @[SimAXIMem.scala 41:13]
  wire [1:0] mem_io_axi4_0_b_bits_resp; // @[SimAXIMem.scala 41:13]
  wire  mem_io_axi4_0_ar_ready; // @[SimAXIMem.scala 41:13]
  wire  mem_io_axi4_0_ar_valid; // @[SimAXIMem.scala 41:13]
  wire [3:0] mem_io_axi4_0_ar_bits_id; // @[SimAXIMem.scala 41:13]
  wire [27:0] mem_io_axi4_0_ar_bits_addr; // @[SimAXIMem.scala 41:13]
  wire [7:0] mem_io_axi4_0_ar_bits_len; // @[SimAXIMem.scala 41:13]
  wire [2:0] mem_io_axi4_0_ar_bits_size; // @[SimAXIMem.scala 41:13]
  wire [1:0] mem_io_axi4_0_ar_bits_burst; // @[SimAXIMem.scala 41:13]
  wire  mem_io_axi4_0_r_ready; // @[SimAXIMem.scala 41:13]
  wire  mem_io_axi4_0_r_valid; // @[SimAXIMem.scala 41:13]
  wire [3:0] mem_io_axi4_0_r_bits_id; // @[SimAXIMem.scala 41:13]
  wire [63:0] mem_io_axi4_0_r_bits_data; // @[SimAXIMem.scala 41:13]
  wire [1:0] mem_io_axi4_0_r_bits_resp; // @[SimAXIMem.scala 41:13]
  wire  mem_io_axi4_0_r_bits_last; // @[SimAXIMem.scala 41:13]
  wire  mmio_mem_clock; // @[SimAXIMem.scala 32:13]
  wire  mmio_mem_reset; // @[SimAXIMem.scala 32:13]
  wire  mmio_mem_io_axi4_0_aw_ready; // @[SimAXIMem.scala 32:13]
  wire  mmio_mem_io_axi4_0_aw_valid; // @[SimAXIMem.scala 32:13]
  wire [3:0] mmio_mem_io_axi4_0_aw_bits_id; // @[SimAXIMem.scala 32:13]
  wire [11:0] mmio_mem_io_axi4_0_aw_bits_addr; // @[SimAXIMem.scala 32:13]
  wire [7:0] mmio_mem_io_axi4_0_aw_bits_len; // @[SimAXIMem.scala 32:13]
  wire [2:0] mmio_mem_io_axi4_0_aw_bits_size; // @[SimAXIMem.scala 32:13]
  wire [1:0] mmio_mem_io_axi4_0_aw_bits_burst; // @[SimAXIMem.scala 32:13]
  wire  mmio_mem_io_axi4_0_w_ready; // @[SimAXIMem.scala 32:13]
  wire  mmio_mem_io_axi4_0_w_valid; // @[SimAXIMem.scala 32:13]
  wire [63:0] mmio_mem_io_axi4_0_w_bits_data; // @[SimAXIMem.scala 32:13]
  wire [7:0] mmio_mem_io_axi4_0_w_bits_strb; // @[SimAXIMem.scala 32:13]
  wire  mmio_mem_io_axi4_0_w_bits_last; // @[SimAXIMem.scala 32:13]
  wire  mmio_mem_io_axi4_0_b_ready; // @[SimAXIMem.scala 32:13]
  wire  mmio_mem_io_axi4_0_b_valid; // @[SimAXIMem.scala 32:13]
  wire [3:0] mmio_mem_io_axi4_0_b_bits_id; // @[SimAXIMem.scala 32:13]
  wire [1:0] mmio_mem_io_axi4_0_b_bits_resp; // @[SimAXIMem.scala 32:13]
  wire  mmio_mem_io_axi4_0_ar_ready; // @[SimAXIMem.scala 32:13]
  wire  mmio_mem_io_axi4_0_ar_valid; // @[SimAXIMem.scala 32:13]
  wire [3:0] mmio_mem_io_axi4_0_ar_bits_id; // @[SimAXIMem.scala 32:13]
  wire [11:0] mmio_mem_io_axi4_0_ar_bits_addr; // @[SimAXIMem.scala 32:13]
  wire [7:0] mmio_mem_io_axi4_0_ar_bits_len; // @[SimAXIMem.scala 32:13]
  wire [2:0] mmio_mem_io_axi4_0_ar_bits_size; // @[SimAXIMem.scala 32:13]
  wire [1:0] mmio_mem_io_axi4_0_ar_bits_burst; // @[SimAXIMem.scala 32:13]
  wire  mmio_mem_io_axi4_0_r_ready; // @[SimAXIMem.scala 32:13]
  wire  mmio_mem_io_axi4_0_r_valid; // @[SimAXIMem.scala 32:13]
  wire [3:0] mmio_mem_io_axi4_0_r_bits_id; // @[SimAXIMem.scala 32:13]
  wire [63:0] mmio_mem_io_axi4_0_r_bits_data; // @[SimAXIMem.scala 32:13]
  wire [1:0] mmio_mem_io_axi4_0_r_bits_resp; // @[SimAXIMem.scala 32:13]
  wire  mmio_mem_io_axi4_0_r_bits_last; // @[SimAXIMem.scala 32:13]
  wire  debug_reset_debug_reset_sync_clock; // @[ShiftReg.scala 45:23]
  wire  debug_reset_debug_reset_sync_reset; // @[ShiftReg.scala 45:23]
  wire  debug_reset_debug_reset_sync_io_d; // @[ShiftReg.scala 45:23]
  wire  debug_reset_debug_reset_sync_io_q; // @[ShiftReg.scala 45:23]
  wire  dmactiveAck_dmactiveAck_clock; // @[ShiftReg.scala 45:23]
  wire  dmactiveAck_dmactiveAck_reset; // @[ShiftReg.scala 45:23]
  wire  dmactiveAck_dmactiveAck_io_d; // @[ShiftReg.scala 45:23]
  wire  dmactiveAck_dmactiveAck_io_q; // @[ShiftReg.scala 45:23]
  wire  gated_clock_debug_clock_gate_in; // @[ClockGate.scala 24:20]
  wire  gated_clock_debug_clock_gate_test_en; // @[ClockGate.scala 24:20]
  wire  gated_clock_debug_clock_gate_en; // @[ClockGate.scala 24:20]
  wire  gated_clock_debug_clock_gate_out; // @[ClockGate.scala 24:20]
  wire  SimDTM_clk; // @[Periphery.scala 257:25]
  wire  SimDTM_reset; // @[Periphery.scala 257:25]
  wire  SimDTM_debug_req_ready; // @[Periphery.scala 257:25]
  wire  SimDTM_debug_req_valid; // @[Periphery.scala 257:25]
  wire [6:0] SimDTM_debug_req_bits_addr; // @[Periphery.scala 257:25]
  wire [31:0] SimDTM_debug_req_bits_data; // @[Periphery.scala 257:25]
  wire [1:0] SimDTM_debug_req_bits_op; // @[Periphery.scala 257:25]
  wire  SimDTM_debug_resp_ready; // @[Periphery.scala 257:25]
  wire  SimDTM_debug_resp_valid; // @[Periphery.scala 257:25]
  wire [31:0] SimDTM_debug_resp_bits_data; // @[Periphery.scala 257:25]
  wire [1:0] SimDTM_debug_resp_bits_resp; // @[Periphery.scala 257:25]
  wire [31:0] SimDTM_exit; // @[Periphery.scala 257:25]
  wire  _debug_reset_WIRE = debug_reset_debug_reset_sync_io_q; // @[ShiftReg.scala 48:24 ShiftReg.scala 48:24]
  wire  _T_1 = ~_debug_reset_WIRE; // @[Periphery.scala 291:38]
  reg  clock_en; // @[Periphery.scala 293:29]
  wire  _T_2 = SimDTM_exit >= 32'h2; // @[Periphery.scala 193:19]
  wire  _T_5 = ~reset; // @[Periphery.scala 194:13]
  ExampleRocketSystem ldut ( // @[TestHarness.scala 17:19]
    .clock(ldut_clock),
    .reset(ldut_reset),
    .mem_axi4_0_aw_ready(ldut_mem_axi4_0_aw_ready),
    .mem_axi4_0_aw_valid(ldut_mem_axi4_0_aw_valid),
    .mem_axi4_0_aw_bits_id(ldut_mem_axi4_0_aw_bits_id),
    .mem_axi4_0_aw_bits_addr(ldut_mem_axi4_0_aw_bits_addr),
    .mem_axi4_0_aw_bits_len(ldut_mem_axi4_0_aw_bits_len),
    .mem_axi4_0_aw_bits_size(ldut_mem_axi4_0_aw_bits_size),
    .mem_axi4_0_aw_bits_burst(ldut_mem_axi4_0_aw_bits_burst),
    .mem_axi4_0_aw_bits_lock(ldut_mem_axi4_0_aw_bits_lock),
    .mem_axi4_0_aw_bits_cache(ldut_mem_axi4_0_aw_bits_cache),
    .mem_axi4_0_aw_bits_prot(ldut_mem_axi4_0_aw_bits_prot),
    .mem_axi4_0_aw_bits_qos(ldut_mem_axi4_0_aw_bits_qos),
    .mem_axi4_0_w_ready(ldut_mem_axi4_0_w_ready),
    .mem_axi4_0_w_valid(ldut_mem_axi4_0_w_valid),
    .mem_axi4_0_w_bits_data(ldut_mem_axi4_0_w_bits_data),
    .mem_axi4_0_w_bits_strb(ldut_mem_axi4_0_w_bits_strb),
    .mem_axi4_0_w_bits_last(ldut_mem_axi4_0_w_bits_last),
    .mem_axi4_0_b_ready(ldut_mem_axi4_0_b_ready),
    .mem_axi4_0_b_valid(ldut_mem_axi4_0_b_valid),
    .mem_axi4_0_b_bits_id(ldut_mem_axi4_0_b_bits_id),
    .mem_axi4_0_b_bits_resp(ldut_mem_axi4_0_b_bits_resp),
    .mem_axi4_0_ar_ready(ldut_mem_axi4_0_ar_ready),
    .mem_axi4_0_ar_valid(ldut_mem_axi4_0_ar_valid),
    .mem_axi4_0_ar_bits_id(ldut_mem_axi4_0_ar_bits_id),
    .mem_axi4_0_ar_bits_addr(ldut_mem_axi4_0_ar_bits_addr),
    .mem_axi4_0_ar_bits_len(ldut_mem_axi4_0_ar_bits_len),
    .mem_axi4_0_ar_bits_size(ldut_mem_axi4_0_ar_bits_size),
    .mem_axi4_0_ar_bits_burst(ldut_mem_axi4_0_ar_bits_burst),
    .mem_axi4_0_ar_bits_lock(ldut_mem_axi4_0_ar_bits_lock),
    .mem_axi4_0_ar_bits_cache(ldut_mem_axi4_0_ar_bits_cache),
    .mem_axi4_0_ar_bits_prot(ldut_mem_axi4_0_ar_bits_prot),
    .mem_axi4_0_ar_bits_qos(ldut_mem_axi4_0_ar_bits_qos),
    .mem_axi4_0_r_ready(ldut_mem_axi4_0_r_ready),
    .mem_axi4_0_r_valid(ldut_mem_axi4_0_r_valid),
    .mem_axi4_0_r_bits_id(ldut_mem_axi4_0_r_bits_id),
    .mem_axi4_0_r_bits_data(ldut_mem_axi4_0_r_bits_data),
    .mem_axi4_0_r_bits_resp(ldut_mem_axi4_0_r_bits_resp),
    .mem_axi4_0_r_bits_last(ldut_mem_axi4_0_r_bits_last),
    .mmio_axi4_0_aw_ready(ldut_mmio_axi4_0_aw_ready),
    .mmio_axi4_0_aw_valid(ldut_mmio_axi4_0_aw_valid),
    .mmio_axi4_0_aw_bits_id(ldut_mmio_axi4_0_aw_bits_id),
    .mmio_axi4_0_aw_bits_addr(ldut_mmio_axi4_0_aw_bits_addr),
    .mmio_axi4_0_aw_bits_len(ldut_mmio_axi4_0_aw_bits_len),
    .mmio_axi4_0_aw_bits_size(ldut_mmio_axi4_0_aw_bits_size),
    .mmio_axi4_0_aw_bits_burst(ldut_mmio_axi4_0_aw_bits_burst),
    .mmio_axi4_0_aw_bits_lock(ldut_mmio_axi4_0_aw_bits_lock),
    .mmio_axi4_0_aw_bits_cache(ldut_mmio_axi4_0_aw_bits_cache),
    .mmio_axi4_0_aw_bits_prot(ldut_mmio_axi4_0_aw_bits_prot),
    .mmio_axi4_0_aw_bits_qos(ldut_mmio_axi4_0_aw_bits_qos),
    .mmio_axi4_0_w_ready(ldut_mmio_axi4_0_w_ready),
    .mmio_axi4_0_w_valid(ldut_mmio_axi4_0_w_valid),
    .mmio_axi4_0_w_bits_data(ldut_mmio_axi4_0_w_bits_data),
    .mmio_axi4_0_w_bits_strb(ldut_mmio_axi4_0_w_bits_strb),
    .mmio_axi4_0_w_bits_last(ldut_mmio_axi4_0_w_bits_last),
    .mmio_axi4_0_b_ready(ldut_mmio_axi4_0_b_ready),
    .mmio_axi4_0_b_valid(ldut_mmio_axi4_0_b_valid),
    .mmio_axi4_0_b_bits_id(ldut_mmio_axi4_0_b_bits_id),
    .mmio_axi4_0_b_bits_resp(ldut_mmio_axi4_0_b_bits_resp),
    .mmio_axi4_0_ar_ready(ldut_mmio_axi4_0_ar_ready),
    .mmio_axi4_0_ar_valid(ldut_mmio_axi4_0_ar_valid),
    .mmio_axi4_0_ar_bits_id(ldut_mmio_axi4_0_ar_bits_id),
    .mmio_axi4_0_ar_bits_addr(ldut_mmio_axi4_0_ar_bits_addr),
    .mmio_axi4_0_ar_bits_len(ldut_mmio_axi4_0_ar_bits_len),
    .mmio_axi4_0_ar_bits_size(ldut_mmio_axi4_0_ar_bits_size),
    .mmio_axi4_0_ar_bits_burst(ldut_mmio_axi4_0_ar_bits_burst),
    .mmio_axi4_0_ar_bits_lock(ldut_mmio_axi4_0_ar_bits_lock),
    .mmio_axi4_0_ar_bits_cache(ldut_mmio_axi4_0_ar_bits_cache),
    .mmio_axi4_0_ar_bits_prot(ldut_mmio_axi4_0_ar_bits_prot),
    .mmio_axi4_0_ar_bits_qos(ldut_mmio_axi4_0_ar_bits_qos),
    .mmio_axi4_0_r_ready(ldut_mmio_axi4_0_r_ready),
    .mmio_axi4_0_r_valid(ldut_mmio_axi4_0_r_valid),
    .mmio_axi4_0_r_bits_id(ldut_mmio_axi4_0_r_bits_id),
    .mmio_axi4_0_r_bits_data(ldut_mmio_axi4_0_r_bits_data),
    .mmio_axi4_0_r_bits_resp(ldut_mmio_axi4_0_r_bits_resp),
    .mmio_axi4_0_r_bits_last(ldut_mmio_axi4_0_r_bits_last),
    .l2_frontend_bus_axi4_0_aw_ready(ldut_l2_frontend_bus_axi4_0_aw_ready),
    .l2_frontend_bus_axi4_0_aw_valid(ldut_l2_frontend_bus_axi4_0_aw_valid),
    .l2_frontend_bus_axi4_0_aw_bits_id(ldut_l2_frontend_bus_axi4_0_aw_bits_id),
    .l2_frontend_bus_axi4_0_aw_bits_addr(ldut_l2_frontend_bus_axi4_0_aw_bits_addr),
    .l2_frontend_bus_axi4_0_aw_bits_len(ldut_l2_frontend_bus_axi4_0_aw_bits_len),
    .l2_frontend_bus_axi4_0_aw_bits_size(ldut_l2_frontend_bus_axi4_0_aw_bits_size),
    .l2_frontend_bus_axi4_0_aw_bits_burst(ldut_l2_frontend_bus_axi4_0_aw_bits_burst),
    .l2_frontend_bus_axi4_0_aw_bits_lock(ldut_l2_frontend_bus_axi4_0_aw_bits_lock),
    .l2_frontend_bus_axi4_0_aw_bits_cache(ldut_l2_frontend_bus_axi4_0_aw_bits_cache),
    .l2_frontend_bus_axi4_0_aw_bits_prot(ldut_l2_frontend_bus_axi4_0_aw_bits_prot),
    .l2_frontend_bus_axi4_0_aw_bits_qos(ldut_l2_frontend_bus_axi4_0_aw_bits_qos),
    .l2_frontend_bus_axi4_0_w_ready(ldut_l2_frontend_bus_axi4_0_w_ready),
    .l2_frontend_bus_axi4_0_w_valid(ldut_l2_frontend_bus_axi4_0_w_valid),
    .l2_frontend_bus_axi4_0_w_bits_data(ldut_l2_frontend_bus_axi4_0_w_bits_data),
    .l2_frontend_bus_axi4_0_w_bits_strb(ldut_l2_frontend_bus_axi4_0_w_bits_strb),
    .l2_frontend_bus_axi4_0_w_bits_last(ldut_l2_frontend_bus_axi4_0_w_bits_last),
    .l2_frontend_bus_axi4_0_b_ready(ldut_l2_frontend_bus_axi4_0_b_ready),
    .l2_frontend_bus_axi4_0_b_valid(ldut_l2_frontend_bus_axi4_0_b_valid),
    .l2_frontend_bus_axi4_0_b_bits_id(ldut_l2_frontend_bus_axi4_0_b_bits_id),
    .l2_frontend_bus_axi4_0_b_bits_resp(ldut_l2_frontend_bus_axi4_0_b_bits_resp),
    .l2_frontend_bus_axi4_0_ar_ready(ldut_l2_frontend_bus_axi4_0_ar_ready),
    .l2_frontend_bus_axi4_0_ar_valid(ldut_l2_frontend_bus_axi4_0_ar_valid),
    .l2_frontend_bus_axi4_0_ar_bits_id(ldut_l2_frontend_bus_axi4_0_ar_bits_id),
    .l2_frontend_bus_axi4_0_ar_bits_addr(ldut_l2_frontend_bus_axi4_0_ar_bits_addr),
    .l2_frontend_bus_axi4_0_ar_bits_len(ldut_l2_frontend_bus_axi4_0_ar_bits_len),
    .l2_frontend_bus_axi4_0_ar_bits_size(ldut_l2_frontend_bus_axi4_0_ar_bits_size),
    .l2_frontend_bus_axi4_0_ar_bits_burst(ldut_l2_frontend_bus_axi4_0_ar_bits_burst),
    .l2_frontend_bus_axi4_0_ar_bits_lock(ldut_l2_frontend_bus_axi4_0_ar_bits_lock),
    .l2_frontend_bus_axi4_0_ar_bits_cache(ldut_l2_frontend_bus_axi4_0_ar_bits_cache),
    .l2_frontend_bus_axi4_0_ar_bits_prot(ldut_l2_frontend_bus_axi4_0_ar_bits_prot),
    .l2_frontend_bus_axi4_0_ar_bits_qos(ldut_l2_frontend_bus_axi4_0_ar_bits_qos),
    .l2_frontend_bus_axi4_0_r_ready(ldut_l2_frontend_bus_axi4_0_r_ready),
    .l2_frontend_bus_axi4_0_r_valid(ldut_l2_frontend_bus_axi4_0_r_valid),
    .l2_frontend_bus_axi4_0_r_bits_id(ldut_l2_frontend_bus_axi4_0_r_bits_id),
    .l2_frontend_bus_axi4_0_r_bits_data(ldut_l2_frontend_bus_axi4_0_r_bits_data),
    .l2_frontend_bus_axi4_0_r_bits_resp(ldut_l2_frontend_bus_axi4_0_r_bits_resp),
    .l2_frontend_bus_axi4_0_r_bits_last(ldut_l2_frontend_bus_axi4_0_r_bits_last),
    .resetctrl_resetctrl_hartIsInReset_0(ldut_resetctrl_resetctrl_hartIsInReset_0),
    .debug_debug_clock(ldut_debug_debug_clock),
    .debug_debug_reset(ldut_debug_debug_reset),
    .debug_debug_clockeddmi_dmi_req_ready(ldut_debug_debug_clockeddmi_dmi_req_ready),
    .debug_debug_clockeddmi_dmi_req_valid(ldut_debug_debug_clockeddmi_dmi_req_valid),
    .debug_debug_clockeddmi_dmi_req_bits_addr(ldut_debug_debug_clockeddmi_dmi_req_bits_addr),
    .debug_debug_clockeddmi_dmi_req_bits_data(ldut_debug_debug_clockeddmi_dmi_req_bits_data),
    .debug_debug_clockeddmi_dmi_req_bits_op(ldut_debug_debug_clockeddmi_dmi_req_bits_op),
    .debug_debug_clockeddmi_dmi_resp_ready(ldut_debug_debug_clockeddmi_dmi_resp_ready),
    .debug_debug_clockeddmi_dmi_resp_valid(ldut_debug_debug_clockeddmi_dmi_resp_valid),
    .debug_debug_clockeddmi_dmi_resp_bits_data(ldut_debug_debug_clockeddmi_dmi_resp_bits_data),
    .debug_debug_clockeddmi_dmi_resp_bits_resp(ldut_debug_debug_clockeddmi_dmi_resp_bits_resp),
    .debug_debug_clockeddmi_dmiClock(ldut_debug_debug_clockeddmi_dmiClock),
    .debug_debug_clockeddmi_dmiReset(ldut_debug_debug_clockeddmi_dmiReset),
    .debug_debug_ndreset(ldut_debug_debug_ndreset),
    .debug_debug_dmactive(ldut_debug_debug_dmactive),
    .debug_debug_dmactiveAck(ldut_debug_debug_dmactiveAck),
    .interrupts(ldut_interrupts)
  );
  AsyncResetRegVec_w1_i0 ldut_reset_reg ( // @[AsyncResetReg.scala 89:21]
    .clock(ldut_reset_reg_clock),
    .reset(ldut_reset_reg_reset),
    .io_d(ldut_reset_reg_io_d),
    .io_q(ldut_reset_reg_io_q)
  );
  SimAXIMem mem ( // @[SimAXIMem.scala 41:13]
    .clock(mem_clock),
    .reset(mem_reset),
    .io_axi4_0_aw_ready(mem_io_axi4_0_aw_ready),
    .io_axi4_0_aw_valid(mem_io_axi4_0_aw_valid),
    .io_axi4_0_aw_bits_id(mem_io_axi4_0_aw_bits_id),
    .io_axi4_0_aw_bits_addr(mem_io_axi4_0_aw_bits_addr),
    .io_axi4_0_aw_bits_len(mem_io_axi4_0_aw_bits_len),
    .io_axi4_0_aw_bits_size(mem_io_axi4_0_aw_bits_size),
    .io_axi4_0_aw_bits_burst(mem_io_axi4_0_aw_bits_burst),
    .io_axi4_0_w_ready(mem_io_axi4_0_w_ready),
    .io_axi4_0_w_valid(mem_io_axi4_0_w_valid),
    .io_axi4_0_w_bits_data(mem_io_axi4_0_w_bits_data),
    .io_axi4_0_w_bits_strb(mem_io_axi4_0_w_bits_strb),
    .io_axi4_0_w_bits_last(mem_io_axi4_0_w_bits_last),
    .io_axi4_0_b_ready(mem_io_axi4_0_b_ready),
    .io_axi4_0_b_valid(mem_io_axi4_0_b_valid),
    .io_axi4_0_b_bits_id(mem_io_axi4_0_b_bits_id),
    .io_axi4_0_b_bits_resp(mem_io_axi4_0_b_bits_resp),
    .io_axi4_0_ar_ready(mem_io_axi4_0_ar_ready),
    .io_axi4_0_ar_valid(mem_io_axi4_0_ar_valid),
    .io_axi4_0_ar_bits_id(mem_io_axi4_0_ar_bits_id),
    .io_axi4_0_ar_bits_addr(mem_io_axi4_0_ar_bits_addr),
    .io_axi4_0_ar_bits_len(mem_io_axi4_0_ar_bits_len),
    .io_axi4_0_ar_bits_size(mem_io_axi4_0_ar_bits_size),
    .io_axi4_0_ar_bits_burst(mem_io_axi4_0_ar_bits_burst),
    .io_axi4_0_r_ready(mem_io_axi4_0_r_ready),
    .io_axi4_0_r_valid(mem_io_axi4_0_r_valid),
    .io_axi4_0_r_bits_id(mem_io_axi4_0_r_bits_id),
    .io_axi4_0_r_bits_data(mem_io_axi4_0_r_bits_data),
    .io_axi4_0_r_bits_resp(mem_io_axi4_0_r_bits_resp),
    .io_axi4_0_r_bits_last(mem_io_axi4_0_r_bits_last)
  );
  SimAXIMem_1 mmio_mem ( // @[SimAXIMem.scala 32:13]
    .clock(mmio_mem_clock),
    .reset(mmio_mem_reset),
    .io_axi4_0_aw_ready(mmio_mem_io_axi4_0_aw_ready),
    .io_axi4_0_aw_valid(mmio_mem_io_axi4_0_aw_valid),
    .io_axi4_0_aw_bits_id(mmio_mem_io_axi4_0_aw_bits_id),
    .io_axi4_0_aw_bits_addr(mmio_mem_io_axi4_0_aw_bits_addr),
    .io_axi4_0_aw_bits_len(mmio_mem_io_axi4_0_aw_bits_len),
    .io_axi4_0_aw_bits_size(mmio_mem_io_axi4_0_aw_bits_size),
    .io_axi4_0_aw_bits_burst(mmio_mem_io_axi4_0_aw_bits_burst),
    .io_axi4_0_w_ready(mmio_mem_io_axi4_0_w_ready),
    .io_axi4_0_w_valid(mmio_mem_io_axi4_0_w_valid),
    .io_axi4_0_w_bits_data(mmio_mem_io_axi4_0_w_bits_data),
    .io_axi4_0_w_bits_strb(mmio_mem_io_axi4_0_w_bits_strb),
    .io_axi4_0_w_bits_last(mmio_mem_io_axi4_0_w_bits_last),
    .io_axi4_0_b_ready(mmio_mem_io_axi4_0_b_ready),
    .io_axi4_0_b_valid(mmio_mem_io_axi4_0_b_valid),
    .io_axi4_0_b_bits_id(mmio_mem_io_axi4_0_b_bits_id),
    .io_axi4_0_b_bits_resp(mmio_mem_io_axi4_0_b_bits_resp),
    .io_axi4_0_ar_ready(mmio_mem_io_axi4_0_ar_ready),
    .io_axi4_0_ar_valid(mmio_mem_io_axi4_0_ar_valid),
    .io_axi4_0_ar_bits_id(mmio_mem_io_axi4_0_ar_bits_id),
    .io_axi4_0_ar_bits_addr(mmio_mem_io_axi4_0_ar_bits_addr),
    .io_axi4_0_ar_bits_len(mmio_mem_io_axi4_0_ar_bits_len),
    .io_axi4_0_ar_bits_size(mmio_mem_io_axi4_0_ar_bits_size),
    .io_axi4_0_ar_bits_burst(mmio_mem_io_axi4_0_ar_bits_burst),
    .io_axi4_0_r_ready(mmio_mem_io_axi4_0_r_ready),
    .io_axi4_0_r_valid(mmio_mem_io_axi4_0_r_valid),
    .io_axi4_0_r_bits_id(mmio_mem_io_axi4_0_r_bits_id),
    .io_axi4_0_r_bits_data(mmio_mem_io_axi4_0_r_bits_data),
    .io_axi4_0_r_bits_resp(mmio_mem_io_axi4_0_r_bits_resp),
    .io_axi4_0_r_bits_last(mmio_mem_io_axi4_0_r_bits_last)
  );
  AsyncResetSynchronizerShiftReg_w1_d3_i0 debug_reset_debug_reset_sync ( // @[ShiftReg.scala 45:23]
    .clock(debug_reset_debug_reset_sync_clock),
    .reset(debug_reset_debug_reset_sync_reset),
    .io_d(debug_reset_debug_reset_sync_io_d),
    .io_q(debug_reset_debug_reset_sync_io_q)
  );
  ResetSynchronizerShiftReg_w1_d3_i0 dmactiveAck_dmactiveAck ( // @[ShiftReg.scala 45:23]
    .clock(dmactiveAck_dmactiveAck_clock),
    .reset(dmactiveAck_dmactiveAck_reset),
    .io_d(dmactiveAck_dmactiveAck_io_d),
    .io_q(dmactiveAck_dmactiveAck_io_q)
  );
  EICG_wrapper gated_clock_debug_clock_gate ( // @[ClockGate.scala 24:20]
    .in(gated_clock_debug_clock_gate_in),
    .test_en(gated_clock_debug_clock_gate_test_en),
    .en(gated_clock_debug_clock_gate_en),
    .out(gated_clock_debug_clock_gate_out)
  );
  SimDTM SimDTM ( // @[Periphery.scala 257:25]
    .clk(SimDTM_clk),
    .reset(SimDTM_reset),
    .debug_req_ready(SimDTM_debug_req_ready),
    .debug_req_valid(SimDTM_debug_req_valid),
    .debug_req_bits_addr(SimDTM_debug_req_bits_addr),
    .debug_req_bits_data(SimDTM_debug_req_bits_data),
    .debug_req_bits_op(SimDTM_debug_req_bits_op),
    .debug_resp_ready(SimDTM_debug_resp_ready),
    .debug_resp_valid(SimDTM_debug_resp_valid),
    .debug_resp_bits_data(SimDTM_debug_resp_bits_data),
    .debug_resp_bits_resp(SimDTM_debug_resp_bits_resp),
    .exit(SimDTM_exit)
  );
  assign io_success = SimDTM_exit == 32'h1; // @[Periphery.scala 192:26]
  assign ldut_clock = clock;
  assign ldut_reset = reset | ldut_reset_reg_io_q; // @[TestHarness.scala 20:30]
  assign ldut_mem_axi4_0_aw_ready = mem_io_axi4_0_aw_ready; // @[SimAXIMem.scala 42:24]
  assign ldut_mem_axi4_0_w_ready = mem_io_axi4_0_w_ready; // @[SimAXIMem.scala 42:24]
  assign ldut_mem_axi4_0_b_valid = mem_io_axi4_0_b_valid; // @[SimAXIMem.scala 42:24]
  assign ldut_mem_axi4_0_b_bits_id = mem_io_axi4_0_b_bits_id; // @[SimAXIMem.scala 42:24]
  assign ldut_mem_axi4_0_b_bits_resp = mem_io_axi4_0_b_bits_resp; // @[SimAXIMem.scala 42:24]
  assign ldut_mem_axi4_0_ar_ready = mem_io_axi4_0_ar_ready; // @[SimAXIMem.scala 42:24]
  assign ldut_mem_axi4_0_r_valid = mem_io_axi4_0_r_valid; // @[SimAXIMem.scala 42:24]
  assign ldut_mem_axi4_0_r_bits_id = mem_io_axi4_0_r_bits_id; // @[SimAXIMem.scala 42:24]
  assign ldut_mem_axi4_0_r_bits_data = mem_io_axi4_0_r_bits_data; // @[SimAXIMem.scala 42:24]
  assign ldut_mem_axi4_0_r_bits_resp = mem_io_axi4_0_r_bits_resp; // @[SimAXIMem.scala 42:24]
  assign ldut_mem_axi4_0_r_bits_last = mem_io_axi4_0_r_bits_last; // @[SimAXIMem.scala 42:24]
  assign ldut_mmio_axi4_0_aw_ready = mmio_mem_io_axi4_0_aw_ready; // @[SimAXIMem.scala 33:29]
  assign ldut_mmio_axi4_0_w_ready = mmio_mem_io_axi4_0_w_ready; // @[SimAXIMem.scala 33:29]
  assign ldut_mmio_axi4_0_b_valid = mmio_mem_io_axi4_0_b_valid; // @[SimAXIMem.scala 33:29]
  assign ldut_mmio_axi4_0_b_bits_id = mmio_mem_io_axi4_0_b_bits_id; // @[SimAXIMem.scala 33:29]
  assign ldut_mmio_axi4_0_b_bits_resp = mmio_mem_io_axi4_0_b_bits_resp; // @[SimAXIMem.scala 33:29]
  assign ldut_mmio_axi4_0_ar_ready = mmio_mem_io_axi4_0_ar_ready; // @[SimAXIMem.scala 33:29]
  assign ldut_mmio_axi4_0_r_valid = mmio_mem_io_axi4_0_r_valid; // @[SimAXIMem.scala 33:29]
  assign ldut_mmio_axi4_0_r_bits_id = mmio_mem_io_axi4_0_r_bits_id; // @[SimAXIMem.scala 33:29]
  assign ldut_mmio_axi4_0_r_bits_data = mmio_mem_io_axi4_0_r_bits_data; // @[SimAXIMem.scala 33:29]
  assign ldut_mmio_axi4_0_r_bits_resp = mmio_mem_io_axi4_0_r_bits_resp; // @[SimAXIMem.scala 33:29]
  assign ldut_mmio_axi4_0_r_bits_last = mmio_mem_io_axi4_0_r_bits_last; // @[SimAXIMem.scala 33:29]
  assign ldut_l2_frontend_bus_axi4_0_aw_valid = 1'h0; // @[Bundles.scala 88:18]
  assign ldut_l2_frontend_bus_axi4_0_aw_bits_id = 8'h0;
  assign ldut_l2_frontend_bus_axi4_0_aw_bits_addr = 32'h0;
  assign ldut_l2_frontend_bus_axi4_0_aw_bits_len = 8'h0;
  assign ldut_l2_frontend_bus_axi4_0_aw_bits_size = 3'h0;
  assign ldut_l2_frontend_bus_axi4_0_aw_bits_burst = 2'h0;
  assign ldut_l2_frontend_bus_axi4_0_aw_bits_lock = 1'h0;
  assign ldut_l2_frontend_bus_axi4_0_aw_bits_cache = 4'h0;
  assign ldut_l2_frontend_bus_axi4_0_aw_bits_prot = 3'h0;
  assign ldut_l2_frontend_bus_axi4_0_aw_bits_qos = 4'h0;
  assign ldut_l2_frontend_bus_axi4_0_w_valid = 1'h0; // @[Bundles.scala 89:18]
  assign ldut_l2_frontend_bus_axi4_0_w_bits_data = 64'h0;
  assign ldut_l2_frontend_bus_axi4_0_w_bits_strb = 8'h0;
  assign ldut_l2_frontend_bus_axi4_0_w_bits_last = 1'h0;
  assign ldut_l2_frontend_bus_axi4_0_b_ready = 1'h0; // @[Bundles.scala 91:18]
  assign ldut_l2_frontend_bus_axi4_0_ar_valid = 1'h0; // @[Bundles.scala 87:18]
  assign ldut_l2_frontend_bus_axi4_0_ar_bits_id = 8'h0;
  assign ldut_l2_frontend_bus_axi4_0_ar_bits_addr = 32'h0;
  assign ldut_l2_frontend_bus_axi4_0_ar_bits_len = 8'h0;
  assign ldut_l2_frontend_bus_axi4_0_ar_bits_size = 3'h0;
  assign ldut_l2_frontend_bus_axi4_0_ar_bits_burst = 2'h0;
  assign ldut_l2_frontend_bus_axi4_0_ar_bits_lock = 1'h0;
  assign ldut_l2_frontend_bus_axi4_0_ar_bits_cache = 4'h0;
  assign ldut_l2_frontend_bus_axi4_0_ar_bits_prot = 3'h0;
  assign ldut_l2_frontend_bus_axi4_0_ar_bits_qos = 4'h0;
  assign ldut_l2_frontend_bus_axi4_0_r_ready = 1'h0; // @[Bundles.scala 90:18]
  assign ldut_resetctrl_resetctrl_hartIsInReset_0 = reset; // @[TestHarness.scala 27:70]
  assign ldut_debug_debug_clock = gated_clock_debug_clock_gate_out; // @[Periphery.scala 297:19]
  assign ldut_debug_debug_reset = ~_debug_reset_WIRE; // @[Periphery.scala 286:22]
  assign ldut_debug_debug_clockeddmi_dmi_req_valid = SimDTM_debug_req_valid; // @[Periphery.scala 188:15]
  assign ldut_debug_debug_clockeddmi_dmi_req_bits_addr = SimDTM_debug_req_bits_addr; // @[Periphery.scala 188:15]
  assign ldut_debug_debug_clockeddmi_dmi_req_bits_data = SimDTM_debug_req_bits_data; // @[Periphery.scala 188:15]
  assign ldut_debug_debug_clockeddmi_dmi_req_bits_op = SimDTM_debug_req_bits_op; // @[Periphery.scala 188:15]
  assign ldut_debug_debug_clockeddmi_dmi_resp_ready = SimDTM_debug_resp_ready; // @[Periphery.scala 188:15]
  assign ldut_debug_debug_clockeddmi_dmiClock = clock; // @[Periphery.scala 189:20]
  assign ldut_debug_debug_clockeddmi_dmiReset = reset; // @[TestHarness.scala 27:70]
  assign ldut_debug_debug_dmactiveAck = dmactiveAck_dmactiveAck_io_q; // @[ShiftReg.scala 48:24 ShiftReg.scala 48:24]
  assign ldut_interrupts = 2'h0; // @[InterruptBus.scala 68:16]
  assign ldut_reset_reg_clock = clock;
  assign ldut_reset_reg_reset = reset;
  assign ldut_reset_reg_io_d = ldut_debug_debug_ndreset; // @[AsyncResetReg.scala 91:14]
  assign mem_clock = clock;
  assign mem_reset = reset;
  assign mem_io_axi4_0_aw_valid = ldut_mem_axi4_0_aw_valid; // @[SimAXIMem.scala 42:24]
  assign mem_io_axi4_0_aw_bits_id = ldut_mem_axi4_0_aw_bits_id; // @[SimAXIMem.scala 42:24]
  assign mem_io_axi4_0_aw_bits_addr = ldut_mem_axi4_0_aw_bits_addr[27:0]; // @[SimAXIMem.scala 42:24]
  assign mem_io_axi4_0_aw_bits_len = ldut_mem_axi4_0_aw_bits_len; // @[SimAXIMem.scala 42:24]
  assign mem_io_axi4_0_aw_bits_size = ldut_mem_axi4_0_aw_bits_size; // @[SimAXIMem.scala 42:24]
  assign mem_io_axi4_0_aw_bits_burst = ldut_mem_axi4_0_aw_bits_burst; // @[SimAXIMem.scala 42:24]
  assign mem_io_axi4_0_w_valid = ldut_mem_axi4_0_w_valid; // @[SimAXIMem.scala 42:24]
  assign mem_io_axi4_0_w_bits_data = ldut_mem_axi4_0_w_bits_data; // @[SimAXIMem.scala 42:24]
  assign mem_io_axi4_0_w_bits_strb = ldut_mem_axi4_0_w_bits_strb; // @[SimAXIMem.scala 42:24]
  assign mem_io_axi4_0_w_bits_last = ldut_mem_axi4_0_w_bits_last; // @[SimAXIMem.scala 42:24]
  assign mem_io_axi4_0_b_ready = ldut_mem_axi4_0_b_ready; // @[SimAXIMem.scala 42:24]
  assign mem_io_axi4_0_ar_valid = ldut_mem_axi4_0_ar_valid; // @[SimAXIMem.scala 42:24]
  assign mem_io_axi4_0_ar_bits_id = ldut_mem_axi4_0_ar_bits_id; // @[SimAXIMem.scala 42:24]
  assign mem_io_axi4_0_ar_bits_addr = ldut_mem_axi4_0_ar_bits_addr[27:0]; // @[SimAXIMem.scala 42:24]
  assign mem_io_axi4_0_ar_bits_len = ldut_mem_axi4_0_ar_bits_len; // @[SimAXIMem.scala 42:24]
  assign mem_io_axi4_0_ar_bits_size = ldut_mem_axi4_0_ar_bits_size; // @[SimAXIMem.scala 42:24]
  assign mem_io_axi4_0_ar_bits_burst = ldut_mem_axi4_0_ar_bits_burst; // @[SimAXIMem.scala 42:24]
  assign mem_io_axi4_0_r_ready = ldut_mem_axi4_0_r_ready; // @[SimAXIMem.scala 42:24]
  assign mmio_mem_clock = clock;
  assign mmio_mem_reset = reset;
  assign mmio_mem_io_axi4_0_aw_valid = ldut_mmio_axi4_0_aw_valid; // @[SimAXIMem.scala 33:29]
  assign mmio_mem_io_axi4_0_aw_bits_id = ldut_mmio_axi4_0_aw_bits_id; // @[SimAXIMem.scala 33:29]
  assign mmio_mem_io_axi4_0_aw_bits_addr = ldut_mmio_axi4_0_aw_bits_addr[11:0]; // @[SimAXIMem.scala 33:29]
  assign mmio_mem_io_axi4_0_aw_bits_len = ldut_mmio_axi4_0_aw_bits_len; // @[SimAXIMem.scala 33:29]
  assign mmio_mem_io_axi4_0_aw_bits_size = ldut_mmio_axi4_0_aw_bits_size; // @[SimAXIMem.scala 33:29]
  assign mmio_mem_io_axi4_0_aw_bits_burst = ldut_mmio_axi4_0_aw_bits_burst; // @[SimAXIMem.scala 33:29]
  assign mmio_mem_io_axi4_0_w_valid = ldut_mmio_axi4_0_w_valid; // @[SimAXIMem.scala 33:29]
  assign mmio_mem_io_axi4_0_w_bits_data = ldut_mmio_axi4_0_w_bits_data; // @[SimAXIMem.scala 33:29]
  assign mmio_mem_io_axi4_0_w_bits_strb = ldut_mmio_axi4_0_w_bits_strb; // @[SimAXIMem.scala 33:29]
  assign mmio_mem_io_axi4_0_w_bits_last = ldut_mmio_axi4_0_w_bits_last; // @[SimAXIMem.scala 33:29]
  assign mmio_mem_io_axi4_0_b_ready = ldut_mmio_axi4_0_b_ready; // @[SimAXIMem.scala 33:29]
  assign mmio_mem_io_axi4_0_ar_valid = ldut_mmio_axi4_0_ar_valid; // @[SimAXIMem.scala 33:29]
  assign mmio_mem_io_axi4_0_ar_bits_id = ldut_mmio_axi4_0_ar_bits_id; // @[SimAXIMem.scala 33:29]
  assign mmio_mem_io_axi4_0_ar_bits_addr = ldut_mmio_axi4_0_ar_bits_addr[11:0]; // @[SimAXIMem.scala 33:29]
  assign mmio_mem_io_axi4_0_ar_bits_len = ldut_mmio_axi4_0_ar_bits_len; // @[SimAXIMem.scala 33:29]
  assign mmio_mem_io_axi4_0_ar_bits_size = ldut_mmio_axi4_0_ar_bits_size; // @[SimAXIMem.scala 33:29]
  assign mmio_mem_io_axi4_0_ar_bits_burst = ldut_mmio_axi4_0_ar_bits_burst; // @[SimAXIMem.scala 33:29]
  assign mmio_mem_io_axi4_0_r_ready = ldut_mmio_axi4_0_r_ready; // @[SimAXIMem.scala 33:29]
  assign debug_reset_debug_reset_sync_clock = clock;
  assign debug_reset_debug_reset_sync_reset = ldut_debug_debug_clockeddmi_dmiReset; // @[Periphery.scala 276:55]
  assign debug_reset_debug_reset_sync_io_d = 1'h1; // @[ShiftReg.scala 47:16]
  assign dmactiveAck_dmactiveAck_clock = clock;
  assign dmactiveAck_dmactiveAck_reset = ~_debug_reset_WIRE; // @[Periphery.scala 291:38]
  assign dmactiveAck_dmactiveAck_io_d = ldut_debug_debug_dmactive; // @[ShiftReg.scala 47:16]
  assign gated_clock_debug_clock_gate_in = clock; // @[ClockGate.scala 26:14]
  assign gated_clock_debug_clock_gate_test_en = 1'h0; // @[ClockGate.scala 27:19]
  assign gated_clock_debug_clock_gate_en = clock_en; // @[ClockGate.scala 28:14]
  assign SimDTM_clk = clock; // @[Periphery.scala 186:12]
  assign SimDTM_reset = reset; // @[TestHarness.scala 27:70]
  assign SimDTM_debug_req_ready = ldut_debug_debug_clockeddmi_dmi_req_ready; // @[Periphery.scala 188:15]
  assign SimDTM_debug_resp_valid = ldut_debug_debug_clockeddmi_dmi_resp_valid; // @[Periphery.scala 188:15]
  assign SimDTM_debug_resp_bits_data = ldut_debug_debug_clockeddmi_dmi_resp_bits_data; // @[Periphery.scala 188:15]
  assign SimDTM_debug_resp_bits_resp = ldut_debug_debug_clockeddmi_dmi_resp_bits_resp; // @[Periphery.scala 188:15]
  always @(posedge clock or posedge _T_1) begin
    if (_T_1) begin
      clock_en <= 1'h1;
    end else begin
      clock_en <= dmactiveAck_dmactiveAck_io_q;
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
  clock_en = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  if (_T_1) begin
    clock_en = 1'h1;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
