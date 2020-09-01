module ExampleRocketSystem(
  input         clock,
  input         reset,
  input         mem_axi4_0_aw_ready,
  output        mem_axi4_0_aw_valid,
  output [3:0]  mem_axi4_0_aw_bits_id,
  output [31:0] mem_axi4_0_aw_bits_addr,
  output [7:0]  mem_axi4_0_aw_bits_len,
  output [2:0]  mem_axi4_0_aw_bits_size,
  output [1:0]  mem_axi4_0_aw_bits_burst,
  output        mem_axi4_0_aw_bits_lock,
  output [3:0]  mem_axi4_0_aw_bits_cache,
  output [2:0]  mem_axi4_0_aw_bits_prot,
  output [3:0]  mem_axi4_0_aw_bits_qos,
  input         mem_axi4_0_w_ready,
  output        mem_axi4_0_w_valid,
  output [63:0] mem_axi4_0_w_bits_data,
  output [7:0]  mem_axi4_0_w_bits_strb,
  output        mem_axi4_0_w_bits_last,
  output        mem_axi4_0_b_ready,
  input         mem_axi4_0_b_valid,
  input  [3:0]  mem_axi4_0_b_bits_id,
  input  [1:0]  mem_axi4_0_b_bits_resp,
  input         mem_axi4_0_ar_ready,
  output        mem_axi4_0_ar_valid,
  output [3:0]  mem_axi4_0_ar_bits_id,
  output [31:0] mem_axi4_0_ar_bits_addr,
  output [7:0]  mem_axi4_0_ar_bits_len,
  output [2:0]  mem_axi4_0_ar_bits_size,
  output [1:0]  mem_axi4_0_ar_bits_burst,
  output        mem_axi4_0_ar_bits_lock,
  output [3:0]  mem_axi4_0_ar_bits_cache,
  output [2:0]  mem_axi4_0_ar_bits_prot,
  output [3:0]  mem_axi4_0_ar_bits_qos,
  output        mem_axi4_0_r_ready,
  input         mem_axi4_0_r_valid,
  input  [3:0]  mem_axi4_0_r_bits_id,
  input  [63:0] mem_axi4_0_r_bits_data,
  input  [1:0]  mem_axi4_0_r_bits_resp,
  input         mem_axi4_0_r_bits_last,
  input         mmio_axi4_0_aw_ready,
  output        mmio_axi4_0_aw_valid,
  output [3:0]  mmio_axi4_0_aw_bits_id,
  output [30:0] mmio_axi4_0_aw_bits_addr,
  output [7:0]  mmio_axi4_0_aw_bits_len,
  output [2:0]  mmio_axi4_0_aw_bits_size,
  output [1:0]  mmio_axi4_0_aw_bits_burst,
  output        mmio_axi4_0_aw_bits_lock,
  output [3:0]  mmio_axi4_0_aw_bits_cache,
  output [2:0]  mmio_axi4_0_aw_bits_prot,
  output [3:0]  mmio_axi4_0_aw_bits_qos,
  input         mmio_axi4_0_w_ready,
  output        mmio_axi4_0_w_valid,
  output [63:0] mmio_axi4_0_w_bits_data,
  output [7:0]  mmio_axi4_0_w_bits_strb,
  output        mmio_axi4_0_w_bits_last,
  output        mmio_axi4_0_b_ready,
  input         mmio_axi4_0_b_valid,
  input  [3:0]  mmio_axi4_0_b_bits_id,
  input  [1:0]  mmio_axi4_0_b_bits_resp,
  input         mmio_axi4_0_ar_ready,
  output        mmio_axi4_0_ar_valid,
  output [3:0]  mmio_axi4_0_ar_bits_id,
  output [30:0] mmio_axi4_0_ar_bits_addr,
  output [7:0]  mmio_axi4_0_ar_bits_len,
  output [2:0]  mmio_axi4_0_ar_bits_size,
  output [1:0]  mmio_axi4_0_ar_bits_burst,
  output        mmio_axi4_0_ar_bits_lock,
  output [3:0]  mmio_axi4_0_ar_bits_cache,
  output [2:0]  mmio_axi4_0_ar_bits_prot,
  output [3:0]  mmio_axi4_0_ar_bits_qos,
  output        mmio_axi4_0_r_ready,
  input         mmio_axi4_0_r_valid,
  input  [3:0]  mmio_axi4_0_r_bits_id,
  input  [63:0] mmio_axi4_0_r_bits_data,
  input  [1:0]  mmio_axi4_0_r_bits_resp,
  input         mmio_axi4_0_r_bits_last,
  output        l2_frontend_bus_axi4_0_aw_ready,
  input         l2_frontend_bus_axi4_0_aw_valid,
  input  [7:0]  l2_frontend_bus_axi4_0_aw_bits_id,
  input  [31:0] l2_frontend_bus_axi4_0_aw_bits_addr,
  input  [7:0]  l2_frontend_bus_axi4_0_aw_bits_len,
  input  [2:0]  l2_frontend_bus_axi4_0_aw_bits_size,
  input  [1:0]  l2_frontend_bus_axi4_0_aw_bits_burst,
  input         l2_frontend_bus_axi4_0_aw_bits_lock,
  input  [3:0]  l2_frontend_bus_axi4_0_aw_bits_cache,
  input  [2:0]  l2_frontend_bus_axi4_0_aw_bits_prot,
  input  [3:0]  l2_frontend_bus_axi4_0_aw_bits_qos,
  output        l2_frontend_bus_axi4_0_w_ready,
  input         l2_frontend_bus_axi4_0_w_valid,
  input  [63:0] l2_frontend_bus_axi4_0_w_bits_data,
  input  [7:0]  l2_frontend_bus_axi4_0_w_bits_strb,
  input         l2_frontend_bus_axi4_0_w_bits_last,
  input         l2_frontend_bus_axi4_0_b_ready,
  output        l2_frontend_bus_axi4_0_b_valid,
  output [7:0]  l2_frontend_bus_axi4_0_b_bits_id,
  output [1:0]  l2_frontend_bus_axi4_0_b_bits_resp,
  output        l2_frontend_bus_axi4_0_ar_ready,
  input         l2_frontend_bus_axi4_0_ar_valid,
  input  [7:0]  l2_frontend_bus_axi4_0_ar_bits_id,
  input  [31:0] l2_frontend_bus_axi4_0_ar_bits_addr,
  input  [7:0]  l2_frontend_bus_axi4_0_ar_bits_len,
  input  [2:0]  l2_frontend_bus_axi4_0_ar_bits_size,
  input  [1:0]  l2_frontend_bus_axi4_0_ar_bits_burst,
  input         l2_frontend_bus_axi4_0_ar_bits_lock,
  input  [3:0]  l2_frontend_bus_axi4_0_ar_bits_cache,
  input  [2:0]  l2_frontend_bus_axi4_0_ar_bits_prot,
  input  [3:0]  l2_frontend_bus_axi4_0_ar_bits_qos,
  input         l2_frontend_bus_axi4_0_r_ready,
  output        l2_frontend_bus_axi4_0_r_valid,
  output [7:0]  l2_frontend_bus_axi4_0_r_bits_id,
  output [63:0] l2_frontend_bus_axi4_0_r_bits_data,
  output [1:0]  l2_frontend_bus_axi4_0_r_bits_resp,
  output        l2_frontend_bus_axi4_0_r_bits_last,
  input         resetctrl_resetctrl_hartIsInReset_0,
  input         debug_debug_clock,
  input         debug_debug_reset,
  output        debug_debug_clockeddmi_dmi_req_ready,
  input         debug_debug_clockeddmi_dmi_req_valid,
  input  [6:0]  debug_debug_clockeddmi_dmi_req_bits_addr,
  input  [31:0] debug_debug_clockeddmi_dmi_req_bits_data,
  input  [1:0]  debug_debug_clockeddmi_dmi_req_bits_op,
  input         debug_debug_clockeddmi_dmi_resp_ready,
  output        debug_debug_clockeddmi_dmi_resp_valid,
  output [31:0] debug_debug_clockeddmi_dmi_resp_bits_data,
  output [1:0]  debug_debug_clockeddmi_dmi_resp_bits_resp,
  input         debug_debug_clockeddmi_dmiClock,
  input         debug_debug_clockeddmi_dmiReset,
  output        debug_debug_ndreset,
  output        debug_debug_dmactive,
  input         debug_debug_dmactiveAck,
  input  [1:0]  interrupts
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  int_bus_auto_int_in_0; // @[InterruptBus.scala 13:27]
  wire  int_bus_auto_int_in_1; // @[InterruptBus.scala 13:27]
  wire  int_bus_auto_int_out_0; // @[InterruptBus.scala 13:27]
  wire  int_bus_auto_int_out_1; // @[InterruptBus.scala 13:27]
  wire  dummyClockGroupSourceNode_clock; // @[ClockGroup.scala 81:81]
  wire  dummyClockGroupSourceNode_reset; // @[ClockGroup.scala 81:81]
  wire  dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_5_clock; // @[ClockGroup.scala 81:81]
  wire  dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_5_reset; // @[ClockGroup.scala 81:81]
  wire  dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_4_clock; // @[ClockGroup.scala 81:81]
  wire  dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_4_reset; // @[ClockGroup.scala 81:81]
  wire  dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_3_clock; // @[ClockGroup.scala 81:81]
  wire  dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_3_reset; // @[ClockGroup.scala 81:81]
  wire  dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_1_clock; // @[ClockGroup.scala 81:81]
  wire  dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_1_reset; // @[ClockGroup.scala 81:81]
  wire  dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_0_clock; // @[ClockGroup.scala 81:81]
  wire  dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_0_reset; // @[ClockGroup.scala 81:81]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_ready; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_valid; // @[SystemBus.scala 25:26]
  wire [3:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_id; // @[SystemBus.scala 25:26]
  wire [30:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_addr; // @[SystemBus.scala 25:26]
  wire [7:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_len; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_size; // @[SystemBus.scala 25:26]
  wire [1:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_burst; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_lock; // @[SystemBus.scala 25:26]
  wire [3:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_cache; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_prot; // @[SystemBus.scala 25:26]
  wire [3:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_qos; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_ready; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_valid; // @[SystemBus.scala 25:26]
  wire [63:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_data; // @[SystemBus.scala 25:26]
  wire [7:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_strb; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_last; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_ready; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_valid; // @[SystemBus.scala 25:26]
  wire [3:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_id; // @[SystemBus.scala 25:26]
  wire [1:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_resp; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_ready; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_valid; // @[SystemBus.scala 25:26]
  wire [3:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_id; // @[SystemBus.scala 25:26]
  wire [30:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_addr; // @[SystemBus.scala 25:26]
  wire [7:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_len; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_size; // @[SystemBus.scala 25:26]
  wire [1:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_burst; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_lock; // @[SystemBus.scala 25:26]
  wire [3:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_cache; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_prot; // @[SystemBus.scala 25:26]
  wire [3:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_qos; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_ready; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_valid; // @[SystemBus.scala 25:26]
  wire [3:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_id; // @[SystemBus.scala 25:26]
  wire [63:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_data; // @[SystemBus.scala 25:26]
  wire [1:0] subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_resp; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_last; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_ready; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_valid; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_opcode; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_param; // @[SystemBus.scala 25:26]
  wire [3:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_size; // @[SystemBus.scala 25:26]
  wire [1:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_source; // @[SystemBus.scala 25:26]
  wire [31:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_address; // @[SystemBus.scala 25:26]
  wire [7:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_mask; // @[SystemBus.scala 25:26]
  wire [63:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_data; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_corrupt; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_ready; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_valid; // @[SystemBus.scala 25:26]
  wire [1:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_bits_param; // @[SystemBus.scala 25:26]
  wire [31:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_bits_address; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_ready; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_valid; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_opcode; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_param; // @[SystemBus.scala 25:26]
  wire [3:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_size; // @[SystemBus.scala 25:26]
  wire [1:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_source; // @[SystemBus.scala 25:26]
  wire [31:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_address; // @[SystemBus.scala 25:26]
  wire [63:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_data; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_ready; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_valid; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_opcode; // @[SystemBus.scala 25:26]
  wire [1:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_param; // @[SystemBus.scala 25:26]
  wire [3:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_size; // @[SystemBus.scala 25:26]
  wire [1:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_source; // @[SystemBus.scala 25:26]
  wire [1:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_sink; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_denied; // @[SystemBus.scala 25:26]
  wire [63:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_data; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_corrupt; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_e_valid; // @[SystemBus.scala 25:26]
  wire [1:0] subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_e_bits_sink; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_ready; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_valid; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_opcode; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_param; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_size; // @[SystemBus.scala 25:26]
  wire [4:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_source; // @[SystemBus.scala 25:26]
  wire [31:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_address; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_bufferable; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_modifiable; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_readalloc; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_writealloc; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_privileged; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_secure; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_fetch; // @[SystemBus.scala 25:26]
  wire [7:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_mask; // @[SystemBus.scala 25:26]
  wire [63:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_data; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_ready; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_valid; // @[SystemBus.scala 25:26]
  wire [1:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_param; // @[SystemBus.scala 25:26]
  wire [31:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_address; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_ready; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_valid; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_opcode; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_param; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_size; // @[SystemBus.scala 25:26]
  wire [4:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_source; // @[SystemBus.scala 25:26]
  wire [31:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_address; // @[SystemBus.scala 25:26]
  wire [63:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_data; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_ready; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_valid; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_opcode; // @[SystemBus.scala 25:26]
  wire [1:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_param; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_size; // @[SystemBus.scala 25:26]
  wire [4:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_source; // @[SystemBus.scala 25:26]
  wire [1:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_sink; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_denied; // @[SystemBus.scala 25:26]
  wire [63:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_data; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_corrupt; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_e_valid; // @[SystemBus.scala 25:26]
  wire [1:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_e_bits_sink; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_ready; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_valid; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_opcode; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_param; // @[SystemBus.scala 25:26]
  wire [3:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_size; // @[SystemBus.scala 25:26]
  wire [3:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_source; // @[SystemBus.scala 25:26]
  wire [31:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_address; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_bufferable; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_modifiable; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_readalloc; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_writealloc; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_privileged; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_secure; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_fetch; // @[SystemBus.scala 25:26]
  wire [7:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_mask; // @[SystemBus.scala 25:26]
  wire [63:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_data; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_corrupt; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_ready; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_valid; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_opcode; // @[SystemBus.scala 25:26]
  wire [3:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_size; // @[SystemBus.scala 25:26]
  wire [3:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_source; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_denied; // @[SystemBus.scala 25:26]
  wire [63:0] subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_data; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_corrupt; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_ready; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_valid; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_opcode; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_param; // @[SystemBus.scala 25:26]
  wire [3:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_size; // @[SystemBus.scala 25:26]
  wire [4:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_source; // @[SystemBus.scala 25:26]
  wire [27:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_address; // @[SystemBus.scala 25:26]
  wire [7:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_mask; // @[SystemBus.scala 25:26]
  wire [63:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_data; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_corrupt; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_ready; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_valid; // @[SystemBus.scala 25:26]
  wire [2:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_opcode; // @[SystemBus.scala 25:26]
  wire [1:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_param; // @[SystemBus.scala 25:26]
  wire [3:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_size; // @[SystemBus.scala 25:26]
  wire [4:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_source; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_sink; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_denied; // @[SystemBus.scala 25:26]
  wire [63:0] subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_data; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_corrupt; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_fixedClockNode_out_0_clock; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_fixedClockNode_out_0_reset; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_5_clock; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_5_reset; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_4_clock; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_4_reset; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_3_clock; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_3_reset; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_1_clock; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_1_reset; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_0_clock; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_0_reset; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_1_clock; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_1_reset; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_0_clock; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_0_reset; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_1_member_subsystem_fbus_0_clock; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_1_member_subsystem_fbus_0_reset; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_subsystem_cbus_0_clock; // @[SystemBus.scala 25:26]
  wire  subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_subsystem_cbus_0_reset; // @[SystemBus.scala 25:26]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_ready; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_valid; // @[FrontBus.scala 22:26]
  wire [7:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_id; // @[FrontBus.scala 22:26]
  wire [31:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_addr; // @[FrontBus.scala 22:26]
  wire [7:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_len; // @[FrontBus.scala 22:26]
  wire [2:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_size; // @[FrontBus.scala 22:26]
  wire [1:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_burst; // @[FrontBus.scala 22:26]
  wire [3:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_cache; // @[FrontBus.scala 22:26]
  wire [2:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_prot; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_ready; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_valid; // @[FrontBus.scala 22:26]
  wire [63:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_data; // @[FrontBus.scala 22:26]
  wire [7:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_strb; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_last; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_ready; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_valid; // @[FrontBus.scala 22:26]
  wire [7:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_id; // @[FrontBus.scala 22:26]
  wire [1:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_resp; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_ready; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_valid; // @[FrontBus.scala 22:26]
  wire [7:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_id; // @[FrontBus.scala 22:26]
  wire [31:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_addr; // @[FrontBus.scala 22:26]
  wire [7:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_len; // @[FrontBus.scala 22:26]
  wire [2:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_size; // @[FrontBus.scala 22:26]
  wire [1:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_burst; // @[FrontBus.scala 22:26]
  wire [3:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_cache; // @[FrontBus.scala 22:26]
  wire [2:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_prot; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_ready; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_valid; // @[FrontBus.scala 22:26]
  wire [7:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_id; // @[FrontBus.scala 22:26]
  wire [63:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_data; // @[FrontBus.scala 22:26]
  wire [1:0] subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_resp; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_last; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_subsystem_fbus_clock_groups_in_member_subsystem_fbus_0_clock; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_subsystem_fbus_clock_groups_in_member_subsystem_fbus_0_reset; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_bus_xing_out_a_ready; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_bus_xing_out_a_valid; // @[FrontBus.scala 22:26]
  wire [2:0] subsystem_fbus_auto_bus_xing_out_a_bits_opcode; // @[FrontBus.scala 22:26]
  wire [2:0] subsystem_fbus_auto_bus_xing_out_a_bits_param; // @[FrontBus.scala 22:26]
  wire [3:0] subsystem_fbus_auto_bus_xing_out_a_bits_size; // @[FrontBus.scala 22:26]
  wire [3:0] subsystem_fbus_auto_bus_xing_out_a_bits_source; // @[FrontBus.scala 22:26]
  wire [31:0] subsystem_fbus_auto_bus_xing_out_a_bits_address; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_bufferable; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_modifiable; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_readalloc; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_writealloc; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_privileged; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_secure; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_fetch; // @[FrontBus.scala 22:26]
  wire [7:0] subsystem_fbus_auto_bus_xing_out_a_bits_mask; // @[FrontBus.scala 22:26]
  wire [63:0] subsystem_fbus_auto_bus_xing_out_a_bits_data; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_bus_xing_out_a_bits_corrupt; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_bus_xing_out_d_ready; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_bus_xing_out_d_valid; // @[FrontBus.scala 22:26]
  wire [2:0] subsystem_fbus_auto_bus_xing_out_d_bits_opcode; // @[FrontBus.scala 22:26]
  wire [3:0] subsystem_fbus_auto_bus_xing_out_d_bits_size; // @[FrontBus.scala 22:26]
  wire [3:0] subsystem_fbus_auto_bus_xing_out_d_bits_source; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_bus_xing_out_d_bits_denied; // @[FrontBus.scala 22:26]
  wire [63:0] subsystem_fbus_auto_bus_xing_out_d_bits_data; // @[FrontBus.scala 22:26]
  wire  subsystem_fbus_auto_bus_xing_out_d_bits_corrupt; // @[FrontBus.scala 22:26]
  wire  subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_ready; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_valid; // @[PeripheryBus.scala 32:26]
  wire [1:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_size; // @[PeripheryBus.scala 32:26]
  wire [8:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_source; // @[PeripheryBus.scala 32:26]
  wire [16:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_address; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_ready; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_valid; // @[PeripheryBus.scala 32:26]
  wire [1:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_size; // @[PeripheryBus.scala 32:26]
  wire [8:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_source; // @[PeripheryBus.scala 32:26]
  wire [63:0] subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_data; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_ready; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_valid; // @[PeripheryBus.scala 32:26]
  wire [2:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_opcode; // @[PeripheryBus.scala 32:26]
  wire [1:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_size; // @[PeripheryBus.scala 32:26]
  wire [8:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_source; // @[PeripheryBus.scala 32:26]
  wire [11:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_address; // @[PeripheryBus.scala 32:26]
  wire [7:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_mask; // @[PeripheryBus.scala 32:26]
  wire [63:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_data; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_ready; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_valid; // @[PeripheryBus.scala 32:26]
  wire [2:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_opcode; // @[PeripheryBus.scala 32:26]
  wire [1:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_size; // @[PeripheryBus.scala 32:26]
  wire [8:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_source; // @[PeripheryBus.scala 32:26]
  wire [63:0] subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_data; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_ready; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_valid; // @[PeripheryBus.scala 32:26]
  wire [2:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_opcode; // @[PeripheryBus.scala 32:26]
  wire [1:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_size; // @[PeripheryBus.scala 32:26]
  wire [8:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_source; // @[PeripheryBus.scala 32:26]
  wire [25:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_address; // @[PeripheryBus.scala 32:26]
  wire [7:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_mask; // @[PeripheryBus.scala 32:26]
  wire [63:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_data; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_ready; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_valid; // @[PeripheryBus.scala 32:26]
  wire [2:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_opcode; // @[PeripheryBus.scala 32:26]
  wire [1:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_size; // @[PeripheryBus.scala 32:26]
  wire [8:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_source; // @[PeripheryBus.scala 32:26]
  wire [63:0] subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_data; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_ready; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_valid; // @[PeripheryBus.scala 32:26]
  wire [2:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_opcode; // @[PeripheryBus.scala 32:26]
  wire [1:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_size; // @[PeripheryBus.scala 32:26]
  wire [8:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_source; // @[PeripheryBus.scala 32:26]
  wire [27:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_address; // @[PeripheryBus.scala 32:26]
  wire [7:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_mask; // @[PeripheryBus.scala 32:26]
  wire [63:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_data; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_ready; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_valid; // @[PeripheryBus.scala 32:26]
  wire [2:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_opcode; // @[PeripheryBus.scala 32:26]
  wire [1:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_size; // @[PeripheryBus.scala 32:26]
  wire [8:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_source; // @[PeripheryBus.scala 32:26]
  wire [63:0] subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_data; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_subsystem_cbus_0_clock; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_subsystem_cbus_0_reset; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_bus_xing_in_a_ready; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_bus_xing_in_a_valid; // @[PeripheryBus.scala 32:26]
  wire [2:0] subsystem_cbus_auto_bus_xing_in_a_bits_opcode; // @[PeripheryBus.scala 32:26]
  wire [2:0] subsystem_cbus_auto_bus_xing_in_a_bits_param; // @[PeripheryBus.scala 32:26]
  wire [3:0] subsystem_cbus_auto_bus_xing_in_a_bits_size; // @[PeripheryBus.scala 32:26]
  wire [4:0] subsystem_cbus_auto_bus_xing_in_a_bits_source; // @[PeripheryBus.scala 32:26]
  wire [27:0] subsystem_cbus_auto_bus_xing_in_a_bits_address; // @[PeripheryBus.scala 32:26]
  wire [7:0] subsystem_cbus_auto_bus_xing_in_a_bits_mask; // @[PeripheryBus.scala 32:26]
  wire [63:0] subsystem_cbus_auto_bus_xing_in_a_bits_data; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_bus_xing_in_a_bits_corrupt; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_bus_xing_in_d_ready; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_bus_xing_in_d_valid; // @[PeripheryBus.scala 32:26]
  wire [2:0] subsystem_cbus_auto_bus_xing_in_d_bits_opcode; // @[PeripheryBus.scala 32:26]
  wire [1:0] subsystem_cbus_auto_bus_xing_in_d_bits_param; // @[PeripheryBus.scala 32:26]
  wire [3:0] subsystem_cbus_auto_bus_xing_in_d_bits_size; // @[PeripheryBus.scala 32:26]
  wire [4:0] subsystem_cbus_auto_bus_xing_in_d_bits_source; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_bus_xing_in_d_bits_sink; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_bus_xing_in_d_bits_denied; // @[PeripheryBus.scala 32:26]
  wire [63:0] subsystem_cbus_auto_bus_xing_in_d_bits_data; // @[PeripheryBus.scala 32:26]
  wire  subsystem_cbus_auto_bus_xing_in_d_bits_corrupt; // @[PeripheryBus.scala 32:26]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_ready; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_valid; // @[MemoryBus.scala 27:26]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_id; // @[MemoryBus.scala 27:26]
  wire [31:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_addr; // @[MemoryBus.scala 27:26]
  wire [7:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_len; // @[MemoryBus.scala 27:26]
  wire [2:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_size; // @[MemoryBus.scala 27:26]
  wire [1:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_burst; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_lock; // @[MemoryBus.scala 27:26]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_cache; // @[MemoryBus.scala 27:26]
  wire [2:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_prot; // @[MemoryBus.scala 27:26]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_qos; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_ready; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_valid; // @[MemoryBus.scala 27:26]
  wire [63:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_data; // @[MemoryBus.scala 27:26]
  wire [7:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_strb; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_last; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_ready; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_valid; // @[MemoryBus.scala 27:26]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_id; // @[MemoryBus.scala 27:26]
  wire [1:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_resp; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_ready; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_valid; // @[MemoryBus.scala 27:26]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_id; // @[MemoryBus.scala 27:26]
  wire [31:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_addr; // @[MemoryBus.scala 27:26]
  wire [7:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_len; // @[MemoryBus.scala 27:26]
  wire [2:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_size; // @[MemoryBus.scala 27:26]
  wire [1:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_burst; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_lock; // @[MemoryBus.scala 27:26]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_cache; // @[MemoryBus.scala 27:26]
  wire [2:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_prot; // @[MemoryBus.scala 27:26]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_qos; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_ready; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_valid; // @[MemoryBus.scala 27:26]
  wire [3:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_id; // @[MemoryBus.scala 27:26]
  wire [63:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_data; // @[MemoryBus.scala 27:26]
  wire [1:0] subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_resp; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_last; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_fixer_in_a_ready; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_fixer_in_a_valid; // @[MemoryBus.scala 27:26]
  wire [2:0] subsystem_mbus_auto_fixer_in_a_bits_opcode; // @[MemoryBus.scala 27:26]
  wire [2:0] subsystem_mbus_auto_fixer_in_a_bits_size; // @[MemoryBus.scala 27:26]
  wire [6:0] subsystem_mbus_auto_fixer_in_a_bits_source; // @[MemoryBus.scala 27:26]
  wire [31:0] subsystem_mbus_auto_fixer_in_a_bits_address; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_bufferable; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_modifiable; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_readalloc; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_writealloc; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_privileged; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_secure; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_fetch; // @[MemoryBus.scala 27:26]
  wire [7:0] subsystem_mbus_auto_fixer_in_a_bits_mask; // @[MemoryBus.scala 27:26]
  wire [63:0] subsystem_mbus_auto_fixer_in_a_bits_data; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_fixer_in_d_ready; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_fixer_in_d_valid; // @[MemoryBus.scala 27:26]
  wire [2:0] subsystem_mbus_auto_fixer_in_d_bits_opcode; // @[MemoryBus.scala 27:26]
  wire [2:0] subsystem_mbus_auto_fixer_in_d_bits_size; // @[MemoryBus.scala 27:26]
  wire [6:0] subsystem_mbus_auto_fixer_in_d_bits_source; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_fixer_in_d_bits_denied; // @[MemoryBus.scala 27:26]
  wire [63:0] subsystem_mbus_auto_fixer_in_d_bits_data; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_fixer_in_d_bits_corrupt; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_subsystem_mbus_clock_groups_in_member_subsystem_mbus_0_clock; // @[MemoryBus.scala 27:26]
  wire  subsystem_mbus_auto_subsystem_mbus_clock_groups_in_member_subsystem_mbus_0_reset; // @[MemoryBus.scala 27:26]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_ready; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_valid; // @[BankedL2Params.scala 47:31]
  wire [2:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_opcode; // @[BankedL2Params.scala 47:31]
  wire [2:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_size; // @[BankedL2Params.scala 47:31]
  wire [6:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_source; // @[BankedL2Params.scala 47:31]
  wire [31:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_address; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_bufferable; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_modifiable; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_readalloc; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_writealloc; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_privileged; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_secure; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_fetch; // @[BankedL2Params.scala 47:31]
  wire [7:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_mask; // @[BankedL2Params.scala 47:31]
  wire [63:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_data; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_ready; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_valid; // @[BankedL2Params.scala 47:31]
  wire [2:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_opcode; // @[BankedL2Params.scala 47:31]
  wire [2:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_size; // @[BankedL2Params.scala 47:31]
  wire [6:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_source; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_denied; // @[BankedL2Params.scala 47:31]
  wire [63:0] subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_data; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_corrupt; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_ready; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_valid; // @[BankedL2Params.scala 47:31]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_opcode; // @[BankedL2Params.scala 47:31]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_param; // @[BankedL2Params.scala 47:31]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_size; // @[BankedL2Params.scala 47:31]
  wire [4:0] subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_source; // @[BankedL2Params.scala 47:31]
  wire [31:0] subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_address; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_bufferable; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_modifiable; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_readalloc; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_writealloc; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_privileged; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_secure; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_fetch; // @[BankedL2Params.scala 47:31]
  wire [7:0] subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_mask; // @[BankedL2Params.scala 47:31]
  wire [63:0] subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_data; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_b_ready; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_b_valid; // @[BankedL2Params.scala 47:31]
  wire [1:0] subsystem_l2_wrapper_auto_coherent_jbar_in_b_bits_param; // @[BankedL2Params.scala 47:31]
  wire [31:0] subsystem_l2_wrapper_auto_coherent_jbar_in_b_bits_address; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_c_ready; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_c_valid; // @[BankedL2Params.scala 47:31]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_opcode; // @[BankedL2Params.scala 47:31]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_param; // @[BankedL2Params.scala 47:31]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_size; // @[BankedL2Params.scala 47:31]
  wire [4:0] subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_source; // @[BankedL2Params.scala 47:31]
  wire [31:0] subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_address; // @[BankedL2Params.scala 47:31]
  wire [63:0] subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_data; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_d_ready; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_d_valid; // @[BankedL2Params.scala 47:31]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_opcode; // @[BankedL2Params.scala 47:31]
  wire [1:0] subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_param; // @[BankedL2Params.scala 47:31]
  wire [2:0] subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_size; // @[BankedL2Params.scala 47:31]
  wire [4:0] subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_source; // @[BankedL2Params.scala 47:31]
  wire [1:0] subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_sink; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_denied; // @[BankedL2Params.scala 47:31]
  wire [63:0] subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_data; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_corrupt; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_coherent_jbar_in_e_valid; // @[BankedL2Params.scala 47:31]
  wire [1:0] subsystem_l2_wrapper_auto_coherent_jbar_in_e_bits_sink; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_subsystem_l2_1_clock; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_subsystem_l2_1_reset; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_subsystem_l2_0_clock; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_subsystem_l2_0_reset; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_out_member_subsystem_mbus_0_clock; // @[BankedL2Params.scala 47:31]
  wire  subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_out_member_subsystem_mbus_0_reset; // @[BankedL2Params.scala 47:31]
  wire  tile_prci_domain_auto_intsink_in_sync_0; // @[HasTiles.scala 233:38]
  wire  tile_prci_domain_auto_tile_hartid_in; // @[HasTiles.scala 233:38]
  wire  tile_prci_domain_auto_int_in_xing_in_2_sync_0; // @[HasTiles.scala 233:38]
  wire  tile_prci_domain_auto_int_in_xing_in_1_sync_0; // @[HasTiles.scala 233:38]
  wire  tile_prci_domain_auto_int_in_xing_in_0_sync_0; // @[HasTiles.scala 233:38]
  wire  tile_prci_domain_auto_int_in_xing_in_0_sync_1; // @[HasTiles.scala 233:38]
  wire  tile_prci_domain_auto_tl_master_xing_out_a_ready; // @[HasTiles.scala 233:38]
  wire  tile_prci_domain_auto_tl_master_xing_out_a_valid; // @[HasTiles.scala 233:38]
  wire [2:0] tile_prci_domain_auto_tl_master_xing_out_a_bits_opcode; // @[HasTiles.scala 233:38]
  wire [2:0] tile_prci_domain_auto_tl_master_xing_out_a_bits_param; // @[HasTiles.scala 233:38]
  wire [3:0] tile_prci_domain_auto_tl_master_xing_out_a_bits_size; // @[HasTiles.scala 233:38]
  wire [1:0] tile_prci_domain_auto_tl_master_xing_out_a_bits_source; // @[HasTiles.scala 233:38]
  wire [31:0] tile_prci_domain_auto_tl_master_xing_out_a_bits_address; // @[HasTiles.scala 233:38]
  wire [7:0] tile_prci_domain_auto_tl_master_xing_out_a_bits_mask; // @[HasTiles.scala 233:38]
  wire [63:0] tile_prci_domain_auto_tl_master_xing_out_a_bits_data; // @[HasTiles.scala 233:38]
  wire  tile_prci_domain_auto_tl_master_xing_out_a_bits_corrupt; // @[HasTiles.scala 233:38]
  wire  tile_prci_domain_auto_tl_master_xing_out_b_ready; // @[HasTiles.scala 233:38]
  wire  tile_prci_domain_auto_tl_master_xing_out_b_valid; // @[HasTiles.scala 233:38]
  wire [1:0] tile_prci_domain_auto_tl_master_xing_out_b_bits_param; // @[HasTiles.scala 233:38]
  wire [31:0] tile_prci_domain_auto_tl_master_xing_out_b_bits_address; // @[HasTiles.scala 233:38]
  wire  tile_prci_domain_auto_tl_master_xing_out_c_ready; // @[HasTiles.scala 233:38]
  wire  tile_prci_domain_auto_tl_master_xing_out_c_valid; // @[HasTiles.scala 233:38]
  wire [2:0] tile_prci_domain_auto_tl_master_xing_out_c_bits_opcode; // @[HasTiles.scala 233:38]
  wire [2:0] tile_prci_domain_auto_tl_master_xing_out_c_bits_param; // @[HasTiles.scala 233:38]
  wire [3:0] tile_prci_domain_auto_tl_master_xing_out_c_bits_size; // @[HasTiles.scala 233:38]
  wire [1:0] tile_prci_domain_auto_tl_master_xing_out_c_bits_source; // @[HasTiles.scala 233:38]
  wire [31:0] tile_prci_domain_auto_tl_master_xing_out_c_bits_address; // @[HasTiles.scala 233:38]
  wire [63:0] tile_prci_domain_auto_tl_master_xing_out_c_bits_data; // @[HasTiles.scala 233:38]
  wire  tile_prci_domain_auto_tl_master_xing_out_d_ready; // @[HasTiles.scala 233:38]
  wire  tile_prci_domain_auto_tl_master_xing_out_d_valid; // @[HasTiles.scala 233:38]
  wire [2:0] tile_prci_domain_auto_tl_master_xing_out_d_bits_opcode; // @[HasTiles.scala 233:38]
  wire [1:0] tile_prci_domain_auto_tl_master_xing_out_d_bits_param; // @[HasTiles.scala 233:38]
  wire [3:0] tile_prci_domain_auto_tl_master_xing_out_d_bits_size; // @[HasTiles.scala 233:38]
  wire [1:0] tile_prci_domain_auto_tl_master_xing_out_d_bits_source; // @[HasTiles.scala 233:38]
  wire [1:0] tile_prci_domain_auto_tl_master_xing_out_d_bits_sink; // @[HasTiles.scala 233:38]
  wire  tile_prci_domain_auto_tl_master_xing_out_d_bits_denied; // @[HasTiles.scala 233:38]
  wire [63:0] tile_prci_domain_auto_tl_master_xing_out_d_bits_data; // @[HasTiles.scala 233:38]
  wire  tile_prci_domain_auto_tl_master_xing_out_d_bits_corrupt; // @[HasTiles.scala 233:38]
  wire  tile_prci_domain_auto_tl_master_xing_out_e_valid; // @[HasTiles.scala 233:38]
  wire [1:0] tile_prci_domain_auto_tl_master_xing_out_e_bits_sink; // @[HasTiles.scala 233:38]
  wire  tile_prci_domain_auto_clock_in_clock; // @[HasTiles.scala 233:38]
  wire  tile_prci_domain_auto_clock_in_reset; // @[HasTiles.scala 233:38]
  wire  plic_clock; // @[Plic.scala 352:26]
  wire  plic_reset; // @[Plic.scala 352:26]
  wire  plic_auto_int_in_0; // @[Plic.scala 352:26]
  wire  plic_auto_int_in_1; // @[Plic.scala 352:26]
  wire  plic_auto_int_out_1_0; // @[Plic.scala 352:26]
  wire  plic_auto_int_out_0_0; // @[Plic.scala 352:26]
  wire  plic_auto_in_a_ready; // @[Plic.scala 352:26]
  wire  plic_auto_in_a_valid; // @[Plic.scala 352:26]
  wire [2:0] plic_auto_in_a_bits_opcode; // @[Plic.scala 352:26]
  wire [1:0] plic_auto_in_a_bits_size; // @[Plic.scala 352:26]
  wire [8:0] plic_auto_in_a_bits_source; // @[Plic.scala 352:26]
  wire [27:0] plic_auto_in_a_bits_address; // @[Plic.scala 352:26]
  wire [7:0] plic_auto_in_a_bits_mask; // @[Plic.scala 352:26]
  wire [63:0] plic_auto_in_a_bits_data; // @[Plic.scala 352:26]
  wire  plic_auto_in_d_ready; // @[Plic.scala 352:26]
  wire  plic_auto_in_d_valid; // @[Plic.scala 352:26]
  wire [2:0] plic_auto_in_d_bits_opcode; // @[Plic.scala 352:26]
  wire [1:0] plic_auto_in_d_bits_size; // @[Plic.scala 352:26]
  wire [8:0] plic_auto_in_d_bits_source; // @[Plic.scala 352:26]
  wire [63:0] plic_auto_in_d_bits_data; // @[Plic.scala 352:26]
  wire  clint_clock; // @[CLINT.scala 109:27]
  wire  clint_reset; // @[CLINT.scala 109:27]
  wire  clint_auto_int_out_0; // @[CLINT.scala 109:27]
  wire  clint_auto_int_out_1; // @[CLINT.scala 109:27]
  wire  clint_auto_in_a_ready; // @[CLINT.scala 109:27]
  wire  clint_auto_in_a_valid; // @[CLINT.scala 109:27]
  wire [2:0] clint_auto_in_a_bits_opcode; // @[CLINT.scala 109:27]
  wire [1:0] clint_auto_in_a_bits_size; // @[CLINT.scala 109:27]
  wire [8:0] clint_auto_in_a_bits_source; // @[CLINT.scala 109:27]
  wire [25:0] clint_auto_in_a_bits_address; // @[CLINT.scala 109:27]
  wire [7:0] clint_auto_in_a_bits_mask; // @[CLINT.scala 109:27]
  wire [63:0] clint_auto_in_a_bits_data; // @[CLINT.scala 109:27]
  wire  clint_auto_in_d_ready; // @[CLINT.scala 109:27]
  wire  clint_auto_in_d_valid; // @[CLINT.scala 109:27]
  wire [2:0] clint_auto_in_d_bits_opcode; // @[CLINT.scala 109:27]
  wire [1:0] clint_auto_in_d_bits_size; // @[CLINT.scala 109:27]
  wire [8:0] clint_auto_in_d_bits_source; // @[CLINT.scala 109:27]
  wire [63:0] clint_auto_in_d_bits_data; // @[CLINT.scala 109:27]
  wire  clint_io_rtcTick; // @[CLINT.scala 109:27]
  wire  debug_auto_dmInner_dmInner_tl_in_a_ready; // @[Periphery.scala 80:27]
  wire  debug_auto_dmInner_dmInner_tl_in_a_valid; // @[Periphery.scala 80:27]
  wire [2:0] debug_auto_dmInner_dmInner_tl_in_a_bits_opcode; // @[Periphery.scala 80:27]
  wire [1:0] debug_auto_dmInner_dmInner_tl_in_a_bits_size; // @[Periphery.scala 80:27]
  wire [8:0] debug_auto_dmInner_dmInner_tl_in_a_bits_source; // @[Periphery.scala 80:27]
  wire [11:0] debug_auto_dmInner_dmInner_tl_in_a_bits_address; // @[Periphery.scala 80:27]
  wire [7:0] debug_auto_dmInner_dmInner_tl_in_a_bits_mask; // @[Periphery.scala 80:27]
  wire [63:0] debug_auto_dmInner_dmInner_tl_in_a_bits_data; // @[Periphery.scala 80:27]
  wire  debug_auto_dmInner_dmInner_tl_in_d_ready; // @[Periphery.scala 80:27]
  wire  debug_auto_dmInner_dmInner_tl_in_d_valid; // @[Periphery.scala 80:27]
  wire [2:0] debug_auto_dmInner_dmInner_tl_in_d_bits_opcode; // @[Periphery.scala 80:27]
  wire [1:0] debug_auto_dmInner_dmInner_tl_in_d_bits_size; // @[Periphery.scala 80:27]
  wire [8:0] debug_auto_dmInner_dmInner_tl_in_d_bits_source; // @[Periphery.scala 80:27]
  wire [63:0] debug_auto_dmInner_dmInner_tl_in_d_bits_data; // @[Periphery.scala 80:27]
  wire  debug_auto_dmOuter_intsource_out_sync_0; // @[Periphery.scala 80:27]
  wire  debug_io_debug_clock; // @[Periphery.scala 80:27]
  wire  debug_io_debug_reset; // @[Periphery.scala 80:27]
  wire  debug_io_ctrl_ndreset; // @[Periphery.scala 80:27]
  wire  debug_io_ctrl_dmactive; // @[Periphery.scala 80:27]
  wire  debug_io_ctrl_dmactiveAck; // @[Periphery.scala 80:27]
  wire  debug_io_dmi_dmi_req_ready; // @[Periphery.scala 80:27]
  wire  debug_io_dmi_dmi_req_valid; // @[Periphery.scala 80:27]
  wire [6:0] debug_io_dmi_dmi_req_bits_addr; // @[Periphery.scala 80:27]
  wire [31:0] debug_io_dmi_dmi_req_bits_data; // @[Periphery.scala 80:27]
  wire [1:0] debug_io_dmi_dmi_req_bits_op; // @[Periphery.scala 80:27]
  wire  debug_io_dmi_dmi_resp_ready; // @[Periphery.scala 80:27]
  wire  debug_io_dmi_dmi_resp_valid; // @[Periphery.scala 80:27]
  wire [31:0] debug_io_dmi_dmi_resp_bits_data; // @[Periphery.scala 80:27]
  wire [1:0] debug_io_dmi_dmi_resp_bits_resp; // @[Periphery.scala 80:27]
  wire  debug_io_dmi_dmiClock; // @[Periphery.scala 80:27]
  wire  debug_io_dmi_dmiReset; // @[Periphery.scala 80:27]
  wire  debug_io_hartIsInReset_0; // @[Periphery.scala 80:27]
  wire  tileHartIdNexusNode_auto_out; // @[HasTiles.scala 141:39]
  wire  intsource_clock; // @[Crossing.scala 26:31]
  wire  intsource_reset; // @[Crossing.scala 26:31]
  wire  intsource_auto_in_0; // @[Crossing.scala 26:31]
  wire  intsource_auto_in_1; // @[Crossing.scala 26:31]
  wire  intsource_auto_out_sync_0; // @[Crossing.scala 26:31]
  wire  intsource_auto_out_sync_1; // @[Crossing.scala 26:31]
  wire  intsource_1_clock; // @[Crossing.scala 26:31]
  wire  intsource_1_reset; // @[Crossing.scala 26:31]
  wire  intsource_1_auto_in_0; // @[Crossing.scala 26:31]
  wire  intsource_1_auto_out_sync_0; // @[Crossing.scala 26:31]
  wire  intsource_2_clock; // @[Crossing.scala 26:31]
  wire  intsource_2_reset; // @[Crossing.scala 26:31]
  wire  intsource_2_auto_in_0; // @[Crossing.scala 26:31]
  wire  intsource_2_auto_out_sync_0; // @[Crossing.scala 26:31]
  wire  asyncXing_clock; // @[InterruptBus.scala 16:31]
  wire  asyncXing_auto_int_in_0; // @[InterruptBus.scala 16:31]
  wire  asyncXing_auto_int_in_1; // @[InterruptBus.scala 16:31]
  wire  asyncXing_auto_int_out_0; // @[InterruptBus.scala 16:31]
  wire  asyncXing_auto_int_out_1; // @[InterruptBus.scala 16:31]
  wire  bootrom_auto_in_a_ready; // @[BootROM.scala 78:17]
  wire  bootrom_auto_in_a_valid; // @[BootROM.scala 78:17]
  wire [1:0] bootrom_auto_in_a_bits_size; // @[BootROM.scala 78:17]
  wire [8:0] bootrom_auto_in_a_bits_source; // @[BootROM.scala 78:17]
  wire [16:0] bootrom_auto_in_a_bits_address; // @[BootROM.scala 78:17]
  wire  bootrom_auto_in_d_ready; // @[BootROM.scala 78:17]
  wire  bootrom_auto_in_d_valid; // @[BootROM.scala 78:17]
  wire [1:0] bootrom_auto_in_d_bits_size; // @[BootROM.scala 78:17]
  wire [8:0] bootrom_auto_in_d_bits_source; // @[BootROM.scala 78:17]
  wire [63:0] bootrom_auto_in_d_bits_data; // @[BootROM.scala 78:17]
  reg [6:0] int_rtc_tick_value; // @[Counter.scala 60:40]
  wire  int_rtc_tick_int_rtc_tick_wrap = int_rtc_tick_value == 7'h63; // @[Counter.scala 72:24]
  wire [6:0] _int_rtc_tick_int_rtc_tick_int_rtc_tick_value_T_1 = int_rtc_tick_value + 7'h1; // @[Counter.scala 76:24]
  IntXbar int_bus ( // @[InterruptBus.scala 13:27]
    .auto_int_in_0(int_bus_auto_int_in_0),
    .auto_int_in_1(int_bus_auto_int_in_1),
    .auto_int_out_0(int_bus_auto_int_out_0),
    .auto_int_out_1(int_bus_auto_int_out_1)
  );
  SimpleClockGroupSource dummyClockGroupSourceNode ( // @[ClockGroup.scala 81:81]
    .clock(dummyClockGroupSourceNode_clock),
    .reset(dummyClockGroupSourceNode_reset),
    .auto_out_member_subsystem_sbus_5_clock(dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_5_clock),
    .auto_out_member_subsystem_sbus_5_reset(dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_5_reset),
    .auto_out_member_subsystem_sbus_4_clock(dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_4_clock),
    .auto_out_member_subsystem_sbus_4_reset(dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_4_reset),
    .auto_out_member_subsystem_sbus_3_clock(dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_3_clock),
    .auto_out_member_subsystem_sbus_3_reset(dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_3_reset),
    .auto_out_member_subsystem_sbus_1_clock(dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_1_clock),
    .auto_out_member_subsystem_sbus_1_reset(dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_1_reset),
    .auto_out_member_subsystem_sbus_0_clock(dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_0_clock),
    .auto_out_member_subsystem_sbus_0_reset(dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_0_reset)
  );
  SystemBus subsystem_sbus ( // @[SystemBus.scala 25:26]
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_ready(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_ready),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_valid(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_valid),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_id(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_id),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_addr(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_addr),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_len(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_len),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_size(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_size),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_burst(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_burst),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_lock(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_lock),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_cache(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_cache),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_prot(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_prot),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_qos(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_qos),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_ready(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_ready),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_valid(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_valid),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_data(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_data),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_strb(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_strb),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_last(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_last),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_ready(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_ready),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_valid(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_valid),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_id(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_id),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_resp(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_resp),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_ready(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_ready),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_valid(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_valid),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_id(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_id),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_addr(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_addr),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_len(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_len),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_size(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_size),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_burst(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_burst),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_lock(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_lock),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_cache(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_cache),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_prot(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_prot),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_qos(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_qos),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_ready(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_ready),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_valid(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_valid),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_id(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_id),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_data(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_data),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_resp(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_resp),
    .auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_last(
      subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_last),
    .auto_coupler_from_tile_tl_master_xing_in_a_ready(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_ready),
    .auto_coupler_from_tile_tl_master_xing_in_a_valid(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_valid),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_opcode(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_opcode),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_param(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_param),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_size(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_size),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_source(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_source),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_address(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_address),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_mask(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_mask),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_data(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_data),
    .auto_coupler_from_tile_tl_master_xing_in_a_bits_corrupt(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_corrupt),
    .auto_coupler_from_tile_tl_master_xing_in_b_ready(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_ready),
    .auto_coupler_from_tile_tl_master_xing_in_b_valid(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_valid),
    .auto_coupler_from_tile_tl_master_xing_in_b_bits_param(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_bits_param),
    .auto_coupler_from_tile_tl_master_xing_in_b_bits_address(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_bits_address),
    .auto_coupler_from_tile_tl_master_xing_in_c_ready(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_ready),
    .auto_coupler_from_tile_tl_master_xing_in_c_valid(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_valid),
    .auto_coupler_from_tile_tl_master_xing_in_c_bits_opcode(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_opcode),
    .auto_coupler_from_tile_tl_master_xing_in_c_bits_param(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_param),
    .auto_coupler_from_tile_tl_master_xing_in_c_bits_size(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_size),
    .auto_coupler_from_tile_tl_master_xing_in_c_bits_source(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_source),
    .auto_coupler_from_tile_tl_master_xing_in_c_bits_address(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_address),
    .auto_coupler_from_tile_tl_master_xing_in_c_bits_data(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_data),
    .auto_coupler_from_tile_tl_master_xing_in_d_ready(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_ready),
    .auto_coupler_from_tile_tl_master_xing_in_d_valid(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_valid),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_opcode(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_opcode),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_param(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_param),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_size(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_size),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_source(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_source),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_sink(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_sink),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_denied(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_denied),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_data(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_data),
    .auto_coupler_from_tile_tl_master_xing_in_d_bits_corrupt(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_corrupt),
    .auto_coupler_from_tile_tl_master_xing_in_e_valid(subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_e_valid),
    .auto_coupler_from_tile_tl_master_xing_in_e_bits_sink(
      subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_e_bits_sink),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_ready(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_ready),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_valid(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_valid),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_opcode(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_param(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_param),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_size(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_size),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_source(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_source),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_address(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_address),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_bufferable(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_bufferable),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_modifiable(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_modifiable),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_readalloc(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_readalloc),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_writealloc(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_writealloc),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_privileged(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_privileged),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_secure(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_secure),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_fetch(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_fetch),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_mask(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_mask),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_data(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_data),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_b_ready(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_ready),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_b_valid(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_valid),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_param(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_param),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_address(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_address),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_ready(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_ready),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_valid(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_valid),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_opcode(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_param(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_param),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_size(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_size),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_source(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_source),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_address(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_address),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_data(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_data),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_ready(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_ready),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_valid(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_valid),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_opcode(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_param(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_param),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_size(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_size),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_source(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_source),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_sink(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_sink),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_denied(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_denied),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_data(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_data),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_corrupt(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_corrupt),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_e_valid(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_e_valid),
    .auto_coupler_to_bus_named_subsystem_l2_widget_out_e_bits_sink(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_e_bits_sink),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_ready(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_ready),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_valid(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_valid),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_opcode(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_opcode),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_param(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_param),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_size(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_size),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_source(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_source),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_address(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_address),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_bufferable(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_bufferable),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_modifiable(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_modifiable),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_readalloc(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_readalloc),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_writealloc(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_writealloc),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_privileged(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_privileged),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_secure(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_secure),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_fetch(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_fetch),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_mask(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_mask),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_data(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_data),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_corrupt(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_corrupt),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_ready(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_ready),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_valid(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_valid),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_opcode(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_opcode),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_size(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_size),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_source(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_source),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_denied(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_denied),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_data(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_data),
    .auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_corrupt(
      subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_corrupt),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_ready(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_ready),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_valid(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_valid),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_opcode(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_param(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_param),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_size(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_size),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_source(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_source),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_address(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_address),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_mask(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_mask),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_data(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_data),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_corrupt(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_corrupt),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_ready(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_ready),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_valid(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_valid),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_opcode(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_param(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_param),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_size(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_size),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_source(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_source),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_sink(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_sink),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_denied(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_denied),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_data(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_data),
    .auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_corrupt(
      subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_corrupt),
    .auto_fixedClockNode_out_0_clock(subsystem_sbus_auto_fixedClockNode_out_0_clock),
    .auto_fixedClockNode_out_0_reset(subsystem_sbus_auto_fixedClockNode_out_0_reset),
    .auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_5_clock(
      subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_5_clock),
    .auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_5_reset(
      subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_5_reset),
    .auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_4_clock(
      subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_4_clock),
    .auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_4_reset(
      subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_4_reset),
    .auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_3_clock(
      subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_3_clock),
    .auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_3_reset(
      subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_3_reset),
    .auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_1_clock(
      subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_1_clock),
    .auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_1_reset(
      subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_1_reset),
    .auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_0_clock(
      subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_0_clock),
    .auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_0_reset(
      subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_0_reset),
    .auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_1_clock(
      subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_1_clock),
    .auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_1_reset(
      subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_1_reset),
    .auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_0_clock(
      subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_0_clock),
    .auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_0_reset(
      subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_0_reset),
    .auto_subsystem_sbus_clock_groups_out_1_member_subsystem_fbus_0_clock(
      subsystem_sbus_auto_subsystem_sbus_clock_groups_out_1_member_subsystem_fbus_0_clock),
    .auto_subsystem_sbus_clock_groups_out_1_member_subsystem_fbus_0_reset(
      subsystem_sbus_auto_subsystem_sbus_clock_groups_out_1_member_subsystem_fbus_0_reset),
    .auto_subsystem_sbus_clock_groups_out_0_member_subsystem_cbus_0_clock(
      subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_subsystem_cbus_0_clock),
    .auto_subsystem_sbus_clock_groups_out_0_member_subsystem_cbus_0_reset(
      subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_subsystem_cbus_0_reset)
  );
  FrontBus subsystem_fbus ( // @[FrontBus.scala 22:26]
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_ready(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_ready),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_valid(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_valid),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_id(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_id),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_addr(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_addr),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_len(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_len),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_size(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_size),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_burst(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_burst),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_cache(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_cache),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_prot(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_prot),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_ready(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_ready),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_valid(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_valid),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_data(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_data),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_strb(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_strb),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_last(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_last),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_ready(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_ready),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_valid(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_valid),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_id(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_id),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_resp(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_resp),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_ready(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_ready),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_valid(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_valid),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_id(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_id),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_addr(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_addr),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_len(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_len),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_size(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_size),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_burst(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_burst),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_cache(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_cache),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_prot(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_prot),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_ready(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_ready),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_valid(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_valid),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_id(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_id),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_data(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_data),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_resp(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_resp),
    .auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_last(
      subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_last),
    .auto_subsystem_fbus_clock_groups_in_member_subsystem_fbus_0_clock(
      subsystem_fbus_auto_subsystem_fbus_clock_groups_in_member_subsystem_fbus_0_clock),
    .auto_subsystem_fbus_clock_groups_in_member_subsystem_fbus_0_reset(
      subsystem_fbus_auto_subsystem_fbus_clock_groups_in_member_subsystem_fbus_0_reset),
    .auto_bus_xing_out_a_ready(subsystem_fbus_auto_bus_xing_out_a_ready),
    .auto_bus_xing_out_a_valid(subsystem_fbus_auto_bus_xing_out_a_valid),
    .auto_bus_xing_out_a_bits_opcode(subsystem_fbus_auto_bus_xing_out_a_bits_opcode),
    .auto_bus_xing_out_a_bits_param(subsystem_fbus_auto_bus_xing_out_a_bits_param),
    .auto_bus_xing_out_a_bits_size(subsystem_fbus_auto_bus_xing_out_a_bits_size),
    .auto_bus_xing_out_a_bits_source(subsystem_fbus_auto_bus_xing_out_a_bits_source),
    .auto_bus_xing_out_a_bits_address(subsystem_fbus_auto_bus_xing_out_a_bits_address),
    .auto_bus_xing_out_a_bits_user_amba_prot_bufferable(
      subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_bufferable),
    .auto_bus_xing_out_a_bits_user_amba_prot_modifiable(
      subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_modifiable),
    .auto_bus_xing_out_a_bits_user_amba_prot_readalloc(subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_readalloc)
      ,
    .auto_bus_xing_out_a_bits_user_amba_prot_writealloc(
      subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_writealloc),
    .auto_bus_xing_out_a_bits_user_amba_prot_privileged(
      subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_privileged),
    .auto_bus_xing_out_a_bits_user_amba_prot_secure(subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_secure),
    .auto_bus_xing_out_a_bits_user_amba_prot_fetch(subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_fetch),
    .auto_bus_xing_out_a_bits_mask(subsystem_fbus_auto_bus_xing_out_a_bits_mask),
    .auto_bus_xing_out_a_bits_data(subsystem_fbus_auto_bus_xing_out_a_bits_data),
    .auto_bus_xing_out_a_bits_corrupt(subsystem_fbus_auto_bus_xing_out_a_bits_corrupt),
    .auto_bus_xing_out_d_ready(subsystem_fbus_auto_bus_xing_out_d_ready),
    .auto_bus_xing_out_d_valid(subsystem_fbus_auto_bus_xing_out_d_valid),
    .auto_bus_xing_out_d_bits_opcode(subsystem_fbus_auto_bus_xing_out_d_bits_opcode),
    .auto_bus_xing_out_d_bits_size(subsystem_fbus_auto_bus_xing_out_d_bits_size),
    .auto_bus_xing_out_d_bits_source(subsystem_fbus_auto_bus_xing_out_d_bits_source),
    .auto_bus_xing_out_d_bits_denied(subsystem_fbus_auto_bus_xing_out_d_bits_denied),
    .auto_bus_xing_out_d_bits_data(subsystem_fbus_auto_bus_xing_out_d_bits_data),
    .auto_bus_xing_out_d_bits_corrupt(subsystem_fbus_auto_bus_xing_out_d_bits_corrupt)
  );
  PeripheryBus_1 subsystem_cbus ( // @[PeripheryBus.scala 32:26]
    .auto_coupler_to_bootrom_fragmenter_out_a_ready(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_ready),
    .auto_coupler_to_bootrom_fragmenter_out_a_valid(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_valid),
    .auto_coupler_to_bootrom_fragmenter_out_a_bits_size(
      subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_size),
    .auto_coupler_to_bootrom_fragmenter_out_a_bits_source(
      subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_source),
    .auto_coupler_to_bootrom_fragmenter_out_a_bits_address(
      subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_address),
    .auto_coupler_to_bootrom_fragmenter_out_d_ready(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_ready),
    .auto_coupler_to_bootrom_fragmenter_out_d_valid(subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_valid),
    .auto_coupler_to_bootrom_fragmenter_out_d_bits_size(
      subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_size),
    .auto_coupler_to_bootrom_fragmenter_out_d_bits_source(
      subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_source),
    .auto_coupler_to_bootrom_fragmenter_out_d_bits_data(
      subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_data),
    .auto_coupler_to_debug_fragmenter_out_a_ready(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_ready),
    .auto_coupler_to_debug_fragmenter_out_a_valid(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_valid),
    .auto_coupler_to_debug_fragmenter_out_a_bits_opcode(
      subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_opcode),
    .auto_coupler_to_debug_fragmenter_out_a_bits_size(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_size),
    .auto_coupler_to_debug_fragmenter_out_a_bits_source(
      subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_source),
    .auto_coupler_to_debug_fragmenter_out_a_bits_address(
      subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_address),
    .auto_coupler_to_debug_fragmenter_out_a_bits_mask(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_mask),
    .auto_coupler_to_debug_fragmenter_out_a_bits_data(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_data),
    .auto_coupler_to_debug_fragmenter_out_d_ready(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_ready),
    .auto_coupler_to_debug_fragmenter_out_d_valid(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_valid),
    .auto_coupler_to_debug_fragmenter_out_d_bits_opcode(
      subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_opcode),
    .auto_coupler_to_debug_fragmenter_out_d_bits_size(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_size),
    .auto_coupler_to_debug_fragmenter_out_d_bits_source(
      subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_source),
    .auto_coupler_to_debug_fragmenter_out_d_bits_data(subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_data),
    .auto_coupler_to_clint_fragmenter_out_a_ready(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_ready),
    .auto_coupler_to_clint_fragmenter_out_a_valid(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_valid),
    .auto_coupler_to_clint_fragmenter_out_a_bits_opcode(
      subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_opcode),
    .auto_coupler_to_clint_fragmenter_out_a_bits_size(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_size),
    .auto_coupler_to_clint_fragmenter_out_a_bits_source(
      subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_source),
    .auto_coupler_to_clint_fragmenter_out_a_bits_address(
      subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_address),
    .auto_coupler_to_clint_fragmenter_out_a_bits_mask(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_mask),
    .auto_coupler_to_clint_fragmenter_out_a_bits_data(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_data),
    .auto_coupler_to_clint_fragmenter_out_d_ready(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_ready),
    .auto_coupler_to_clint_fragmenter_out_d_valid(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_valid),
    .auto_coupler_to_clint_fragmenter_out_d_bits_opcode(
      subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_opcode),
    .auto_coupler_to_clint_fragmenter_out_d_bits_size(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_size),
    .auto_coupler_to_clint_fragmenter_out_d_bits_source(
      subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_source),
    .auto_coupler_to_clint_fragmenter_out_d_bits_data(subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_data),
    .auto_coupler_to_plic_fragmenter_out_a_ready(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_ready),
    .auto_coupler_to_plic_fragmenter_out_a_valid(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_valid),
    .auto_coupler_to_plic_fragmenter_out_a_bits_opcode(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_opcode)
      ,
    .auto_coupler_to_plic_fragmenter_out_a_bits_size(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_size),
    .auto_coupler_to_plic_fragmenter_out_a_bits_source(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_source)
      ,
    .auto_coupler_to_plic_fragmenter_out_a_bits_address(
      subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_address),
    .auto_coupler_to_plic_fragmenter_out_a_bits_mask(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_mask),
    .auto_coupler_to_plic_fragmenter_out_a_bits_data(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_data),
    .auto_coupler_to_plic_fragmenter_out_d_ready(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_ready),
    .auto_coupler_to_plic_fragmenter_out_d_valid(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_valid),
    .auto_coupler_to_plic_fragmenter_out_d_bits_opcode(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_opcode)
      ,
    .auto_coupler_to_plic_fragmenter_out_d_bits_size(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_size),
    .auto_coupler_to_plic_fragmenter_out_d_bits_source(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_source)
      ,
    .auto_coupler_to_plic_fragmenter_out_d_bits_data(subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_data),
    .auto_subsystem_cbus_clock_groups_in_member_subsystem_cbus_0_clock(
      subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_subsystem_cbus_0_clock),
    .auto_subsystem_cbus_clock_groups_in_member_subsystem_cbus_0_reset(
      subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_subsystem_cbus_0_reset),
    .auto_bus_xing_in_a_ready(subsystem_cbus_auto_bus_xing_in_a_ready),
    .auto_bus_xing_in_a_valid(subsystem_cbus_auto_bus_xing_in_a_valid),
    .auto_bus_xing_in_a_bits_opcode(subsystem_cbus_auto_bus_xing_in_a_bits_opcode),
    .auto_bus_xing_in_a_bits_param(subsystem_cbus_auto_bus_xing_in_a_bits_param),
    .auto_bus_xing_in_a_bits_size(subsystem_cbus_auto_bus_xing_in_a_bits_size),
    .auto_bus_xing_in_a_bits_source(subsystem_cbus_auto_bus_xing_in_a_bits_source),
    .auto_bus_xing_in_a_bits_address(subsystem_cbus_auto_bus_xing_in_a_bits_address),
    .auto_bus_xing_in_a_bits_mask(subsystem_cbus_auto_bus_xing_in_a_bits_mask),
    .auto_bus_xing_in_a_bits_data(subsystem_cbus_auto_bus_xing_in_a_bits_data),
    .auto_bus_xing_in_a_bits_corrupt(subsystem_cbus_auto_bus_xing_in_a_bits_corrupt),
    .auto_bus_xing_in_d_ready(subsystem_cbus_auto_bus_xing_in_d_ready),
    .auto_bus_xing_in_d_valid(subsystem_cbus_auto_bus_xing_in_d_valid),
    .auto_bus_xing_in_d_bits_opcode(subsystem_cbus_auto_bus_xing_in_d_bits_opcode),
    .auto_bus_xing_in_d_bits_param(subsystem_cbus_auto_bus_xing_in_d_bits_param),
    .auto_bus_xing_in_d_bits_size(subsystem_cbus_auto_bus_xing_in_d_bits_size),
    .auto_bus_xing_in_d_bits_source(subsystem_cbus_auto_bus_xing_in_d_bits_source),
    .auto_bus_xing_in_d_bits_sink(subsystem_cbus_auto_bus_xing_in_d_bits_sink),
    .auto_bus_xing_in_d_bits_denied(subsystem_cbus_auto_bus_xing_in_d_bits_denied),
    .auto_bus_xing_in_d_bits_data(subsystem_cbus_auto_bus_xing_in_d_bits_data),
    .auto_bus_xing_in_d_bits_corrupt(subsystem_cbus_auto_bus_xing_in_d_bits_corrupt)
  );
  MemoryBus subsystem_mbus ( // @[MemoryBus.scala 27:26]
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_ready(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_ready),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_valid(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_valid),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_id(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_id),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_addr(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_addr),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_len(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_len),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_size(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_size),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_burst(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_burst),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_lock(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_lock),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_cache(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_cache),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_prot(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_prot),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_qos(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_qos),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_ready(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_ready),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_valid(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_valid),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_data(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_data),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_strb(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_strb),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_last(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_last),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_ready(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_ready),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_valid(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_valid),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_id(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_id),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_resp(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_resp),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_ready(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_ready),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_valid(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_valid),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_id(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_id),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_addr(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_addr),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_len(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_len),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_size(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_size),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_burst(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_burst),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_lock(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_lock),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_cache(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_cache),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_prot(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_prot),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_qos(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_qos),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_ready(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_ready),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_valid(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_valid),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_id(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_id),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_data(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_data),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_resp(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_resp),
    .auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_last(
      subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_last),
    .auto_fixer_in_a_ready(subsystem_mbus_auto_fixer_in_a_ready),
    .auto_fixer_in_a_valid(subsystem_mbus_auto_fixer_in_a_valid),
    .auto_fixer_in_a_bits_opcode(subsystem_mbus_auto_fixer_in_a_bits_opcode),
    .auto_fixer_in_a_bits_size(subsystem_mbus_auto_fixer_in_a_bits_size),
    .auto_fixer_in_a_bits_source(subsystem_mbus_auto_fixer_in_a_bits_source),
    .auto_fixer_in_a_bits_address(subsystem_mbus_auto_fixer_in_a_bits_address),
    .auto_fixer_in_a_bits_user_amba_prot_bufferable(subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_bufferable),
    .auto_fixer_in_a_bits_user_amba_prot_modifiable(subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_modifiable),
    .auto_fixer_in_a_bits_user_amba_prot_readalloc(subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_readalloc),
    .auto_fixer_in_a_bits_user_amba_prot_writealloc(subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_writealloc),
    .auto_fixer_in_a_bits_user_amba_prot_privileged(subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_privileged),
    .auto_fixer_in_a_bits_user_amba_prot_secure(subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_secure),
    .auto_fixer_in_a_bits_user_amba_prot_fetch(subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_fetch),
    .auto_fixer_in_a_bits_mask(subsystem_mbus_auto_fixer_in_a_bits_mask),
    .auto_fixer_in_a_bits_data(subsystem_mbus_auto_fixer_in_a_bits_data),
    .auto_fixer_in_d_ready(subsystem_mbus_auto_fixer_in_d_ready),
    .auto_fixer_in_d_valid(subsystem_mbus_auto_fixer_in_d_valid),
    .auto_fixer_in_d_bits_opcode(subsystem_mbus_auto_fixer_in_d_bits_opcode),
    .auto_fixer_in_d_bits_size(subsystem_mbus_auto_fixer_in_d_bits_size),
    .auto_fixer_in_d_bits_source(subsystem_mbus_auto_fixer_in_d_bits_source),
    .auto_fixer_in_d_bits_denied(subsystem_mbus_auto_fixer_in_d_bits_denied),
    .auto_fixer_in_d_bits_data(subsystem_mbus_auto_fixer_in_d_bits_data),
    .auto_fixer_in_d_bits_corrupt(subsystem_mbus_auto_fixer_in_d_bits_corrupt),
    .auto_subsystem_mbus_clock_groups_in_member_subsystem_mbus_0_clock(
      subsystem_mbus_auto_subsystem_mbus_clock_groups_in_member_subsystem_mbus_0_clock),
    .auto_subsystem_mbus_clock_groups_in_member_subsystem_mbus_0_reset(
      subsystem_mbus_auto_subsystem_mbus_clock_groups_in_member_subsystem_mbus_0_reset)
  );
  CoherenceManagerWrapper subsystem_l2_wrapper ( // @[BankedL2Params.scala 47:31]
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_ready(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_ready),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_valid(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_valid),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_opcode(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_size(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_size),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_source(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_source),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_address(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_address),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_bufferable(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_bufferable),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_modifiable(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_modifiable),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_readalloc(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_readalloc),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_writealloc(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_writealloc),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_privileged(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_privileged),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_secure(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_secure),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_fetch(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_fetch),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_mask(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_mask),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_data(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_data),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_ready(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_ready),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_valid(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_valid),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_opcode(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_opcode),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_size(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_size),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_source(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_source),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_denied(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_denied),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_data(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_data),
    .auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_corrupt(
      subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_corrupt),
    .auto_coherent_jbar_in_a_ready(subsystem_l2_wrapper_auto_coherent_jbar_in_a_ready),
    .auto_coherent_jbar_in_a_valid(subsystem_l2_wrapper_auto_coherent_jbar_in_a_valid),
    .auto_coherent_jbar_in_a_bits_opcode(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_opcode),
    .auto_coherent_jbar_in_a_bits_param(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_param),
    .auto_coherent_jbar_in_a_bits_size(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_size),
    .auto_coherent_jbar_in_a_bits_source(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_source),
    .auto_coherent_jbar_in_a_bits_address(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_address),
    .auto_coherent_jbar_in_a_bits_user_amba_prot_bufferable(
      subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_bufferable),
    .auto_coherent_jbar_in_a_bits_user_amba_prot_modifiable(
      subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_modifiable),
    .auto_coherent_jbar_in_a_bits_user_amba_prot_readalloc(
      subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_readalloc),
    .auto_coherent_jbar_in_a_bits_user_amba_prot_writealloc(
      subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_writealloc),
    .auto_coherent_jbar_in_a_bits_user_amba_prot_privileged(
      subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_privileged),
    .auto_coherent_jbar_in_a_bits_user_amba_prot_secure(
      subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_secure),
    .auto_coherent_jbar_in_a_bits_user_amba_prot_fetch(
      subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_fetch),
    .auto_coherent_jbar_in_a_bits_mask(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_mask),
    .auto_coherent_jbar_in_a_bits_data(subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_data),
    .auto_coherent_jbar_in_b_ready(subsystem_l2_wrapper_auto_coherent_jbar_in_b_ready),
    .auto_coherent_jbar_in_b_valid(subsystem_l2_wrapper_auto_coherent_jbar_in_b_valid),
    .auto_coherent_jbar_in_b_bits_param(subsystem_l2_wrapper_auto_coherent_jbar_in_b_bits_param),
    .auto_coherent_jbar_in_b_bits_address(subsystem_l2_wrapper_auto_coherent_jbar_in_b_bits_address),
    .auto_coherent_jbar_in_c_ready(subsystem_l2_wrapper_auto_coherent_jbar_in_c_ready),
    .auto_coherent_jbar_in_c_valid(subsystem_l2_wrapper_auto_coherent_jbar_in_c_valid),
    .auto_coherent_jbar_in_c_bits_opcode(subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_opcode),
    .auto_coherent_jbar_in_c_bits_param(subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_param),
    .auto_coherent_jbar_in_c_bits_size(subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_size),
    .auto_coherent_jbar_in_c_bits_source(subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_source),
    .auto_coherent_jbar_in_c_bits_address(subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_address),
    .auto_coherent_jbar_in_c_bits_data(subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_data),
    .auto_coherent_jbar_in_d_ready(subsystem_l2_wrapper_auto_coherent_jbar_in_d_ready),
    .auto_coherent_jbar_in_d_valid(subsystem_l2_wrapper_auto_coherent_jbar_in_d_valid),
    .auto_coherent_jbar_in_d_bits_opcode(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_opcode),
    .auto_coherent_jbar_in_d_bits_param(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_param),
    .auto_coherent_jbar_in_d_bits_size(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_size),
    .auto_coherent_jbar_in_d_bits_source(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_source),
    .auto_coherent_jbar_in_d_bits_sink(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_sink),
    .auto_coherent_jbar_in_d_bits_denied(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_denied),
    .auto_coherent_jbar_in_d_bits_data(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_data),
    .auto_coherent_jbar_in_d_bits_corrupt(subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_corrupt),
    .auto_coherent_jbar_in_e_valid(subsystem_l2_wrapper_auto_coherent_jbar_in_e_valid),
    .auto_coherent_jbar_in_e_bits_sink(subsystem_l2_wrapper_auto_coherent_jbar_in_e_bits_sink),
    .auto_subsystem_l2_clock_groups_in_member_subsystem_l2_1_clock(
      subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_subsystem_l2_1_clock),
    .auto_subsystem_l2_clock_groups_in_member_subsystem_l2_1_reset(
      subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_subsystem_l2_1_reset),
    .auto_subsystem_l2_clock_groups_in_member_subsystem_l2_0_clock(
      subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_subsystem_l2_0_clock),
    .auto_subsystem_l2_clock_groups_in_member_subsystem_l2_0_reset(
      subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_subsystem_l2_0_reset),
    .auto_subsystem_l2_clock_groups_out_member_subsystem_mbus_0_clock(
      subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_out_member_subsystem_mbus_0_clock),
    .auto_subsystem_l2_clock_groups_out_member_subsystem_mbus_0_reset(
      subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_out_member_subsystem_mbus_0_reset)
  );
  TilePRCIDomain tile_prci_domain ( // @[HasTiles.scala 233:38]
    .auto_intsink_in_sync_0(tile_prci_domain_auto_intsink_in_sync_0),
    .auto_tile_hartid_in(tile_prci_domain_auto_tile_hartid_in),
    .auto_int_in_xing_in_2_sync_0(tile_prci_domain_auto_int_in_xing_in_2_sync_0),
    .auto_int_in_xing_in_1_sync_0(tile_prci_domain_auto_int_in_xing_in_1_sync_0),
    .auto_int_in_xing_in_0_sync_0(tile_prci_domain_auto_int_in_xing_in_0_sync_0),
    .auto_int_in_xing_in_0_sync_1(tile_prci_domain_auto_int_in_xing_in_0_sync_1),
    .auto_tl_master_xing_out_a_ready(tile_prci_domain_auto_tl_master_xing_out_a_ready),
    .auto_tl_master_xing_out_a_valid(tile_prci_domain_auto_tl_master_xing_out_a_valid),
    .auto_tl_master_xing_out_a_bits_opcode(tile_prci_domain_auto_tl_master_xing_out_a_bits_opcode),
    .auto_tl_master_xing_out_a_bits_param(tile_prci_domain_auto_tl_master_xing_out_a_bits_param),
    .auto_tl_master_xing_out_a_bits_size(tile_prci_domain_auto_tl_master_xing_out_a_bits_size),
    .auto_tl_master_xing_out_a_bits_source(tile_prci_domain_auto_tl_master_xing_out_a_bits_source),
    .auto_tl_master_xing_out_a_bits_address(tile_prci_domain_auto_tl_master_xing_out_a_bits_address),
    .auto_tl_master_xing_out_a_bits_mask(tile_prci_domain_auto_tl_master_xing_out_a_bits_mask),
    .auto_tl_master_xing_out_a_bits_data(tile_prci_domain_auto_tl_master_xing_out_a_bits_data),
    .auto_tl_master_xing_out_a_bits_corrupt(tile_prci_domain_auto_tl_master_xing_out_a_bits_corrupt),
    .auto_tl_master_xing_out_b_ready(tile_prci_domain_auto_tl_master_xing_out_b_ready),
    .auto_tl_master_xing_out_b_valid(tile_prci_domain_auto_tl_master_xing_out_b_valid),
    .auto_tl_master_xing_out_b_bits_param(tile_prci_domain_auto_tl_master_xing_out_b_bits_param),
    .auto_tl_master_xing_out_b_bits_address(tile_prci_domain_auto_tl_master_xing_out_b_bits_address),
    .auto_tl_master_xing_out_c_ready(tile_prci_domain_auto_tl_master_xing_out_c_ready),
    .auto_tl_master_xing_out_c_valid(tile_prci_domain_auto_tl_master_xing_out_c_valid),
    .auto_tl_master_xing_out_c_bits_opcode(tile_prci_domain_auto_tl_master_xing_out_c_bits_opcode),
    .auto_tl_master_xing_out_c_bits_param(tile_prci_domain_auto_tl_master_xing_out_c_bits_param),
    .auto_tl_master_xing_out_c_bits_size(tile_prci_domain_auto_tl_master_xing_out_c_bits_size),
    .auto_tl_master_xing_out_c_bits_source(tile_prci_domain_auto_tl_master_xing_out_c_bits_source),
    .auto_tl_master_xing_out_c_bits_address(tile_prci_domain_auto_tl_master_xing_out_c_bits_address),
    .auto_tl_master_xing_out_c_bits_data(tile_prci_domain_auto_tl_master_xing_out_c_bits_data),
    .auto_tl_master_xing_out_d_ready(tile_prci_domain_auto_tl_master_xing_out_d_ready),
    .auto_tl_master_xing_out_d_valid(tile_prci_domain_auto_tl_master_xing_out_d_valid),
    .auto_tl_master_xing_out_d_bits_opcode(tile_prci_domain_auto_tl_master_xing_out_d_bits_opcode),
    .auto_tl_master_xing_out_d_bits_param(tile_prci_domain_auto_tl_master_xing_out_d_bits_param),
    .auto_tl_master_xing_out_d_bits_size(tile_prci_domain_auto_tl_master_xing_out_d_bits_size),
    .auto_tl_master_xing_out_d_bits_source(tile_prci_domain_auto_tl_master_xing_out_d_bits_source),
    .auto_tl_master_xing_out_d_bits_sink(tile_prci_domain_auto_tl_master_xing_out_d_bits_sink),
    .auto_tl_master_xing_out_d_bits_denied(tile_prci_domain_auto_tl_master_xing_out_d_bits_denied),
    .auto_tl_master_xing_out_d_bits_data(tile_prci_domain_auto_tl_master_xing_out_d_bits_data),
    .auto_tl_master_xing_out_d_bits_corrupt(tile_prci_domain_auto_tl_master_xing_out_d_bits_corrupt),
    .auto_tl_master_xing_out_e_valid(tile_prci_domain_auto_tl_master_xing_out_e_valid),
    .auto_tl_master_xing_out_e_bits_sink(tile_prci_domain_auto_tl_master_xing_out_e_bits_sink),
    .auto_clock_in_clock(tile_prci_domain_auto_clock_in_clock),
    .auto_clock_in_reset(tile_prci_domain_auto_clock_in_reset)
  );
  TLPLIC plic ( // @[Plic.scala 352:26]
    .clock(plic_clock),
    .reset(plic_reset),
    .auto_int_in_0(plic_auto_int_in_0),
    .auto_int_in_1(plic_auto_int_in_1),
    .auto_int_out_1_0(plic_auto_int_out_1_0),
    .auto_int_out_0_0(plic_auto_int_out_0_0),
    .auto_in_a_ready(plic_auto_in_a_ready),
    .auto_in_a_valid(plic_auto_in_a_valid),
    .auto_in_a_bits_opcode(plic_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(plic_auto_in_a_bits_size),
    .auto_in_a_bits_source(plic_auto_in_a_bits_source),
    .auto_in_a_bits_address(plic_auto_in_a_bits_address),
    .auto_in_a_bits_mask(plic_auto_in_a_bits_mask),
    .auto_in_a_bits_data(plic_auto_in_a_bits_data),
    .auto_in_d_ready(plic_auto_in_d_ready),
    .auto_in_d_valid(plic_auto_in_d_valid),
    .auto_in_d_bits_opcode(plic_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(plic_auto_in_d_bits_size),
    .auto_in_d_bits_source(plic_auto_in_d_bits_source),
    .auto_in_d_bits_data(plic_auto_in_d_bits_data)
  );
  CLINT clint ( // @[CLINT.scala 109:27]
    .clock(clint_clock),
    .reset(clint_reset),
    .auto_int_out_0(clint_auto_int_out_0),
    .auto_int_out_1(clint_auto_int_out_1),
    .auto_in_a_ready(clint_auto_in_a_ready),
    .auto_in_a_valid(clint_auto_in_a_valid),
    .auto_in_a_bits_opcode(clint_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(clint_auto_in_a_bits_size),
    .auto_in_a_bits_source(clint_auto_in_a_bits_source),
    .auto_in_a_bits_address(clint_auto_in_a_bits_address),
    .auto_in_a_bits_mask(clint_auto_in_a_bits_mask),
    .auto_in_a_bits_data(clint_auto_in_a_bits_data),
    .auto_in_d_ready(clint_auto_in_d_ready),
    .auto_in_d_valid(clint_auto_in_d_valid),
    .auto_in_d_bits_opcode(clint_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(clint_auto_in_d_bits_size),
    .auto_in_d_bits_source(clint_auto_in_d_bits_source),
    .auto_in_d_bits_data(clint_auto_in_d_bits_data),
    .io_rtcTick(clint_io_rtcTick)
  );
  TLDebugModule debug ( // @[Periphery.scala 80:27]
    .auto_dmInner_dmInner_tl_in_a_ready(debug_auto_dmInner_dmInner_tl_in_a_ready),
    .auto_dmInner_dmInner_tl_in_a_valid(debug_auto_dmInner_dmInner_tl_in_a_valid),
    .auto_dmInner_dmInner_tl_in_a_bits_opcode(debug_auto_dmInner_dmInner_tl_in_a_bits_opcode),
    .auto_dmInner_dmInner_tl_in_a_bits_size(debug_auto_dmInner_dmInner_tl_in_a_bits_size),
    .auto_dmInner_dmInner_tl_in_a_bits_source(debug_auto_dmInner_dmInner_tl_in_a_bits_source),
    .auto_dmInner_dmInner_tl_in_a_bits_address(debug_auto_dmInner_dmInner_tl_in_a_bits_address),
    .auto_dmInner_dmInner_tl_in_a_bits_mask(debug_auto_dmInner_dmInner_tl_in_a_bits_mask),
    .auto_dmInner_dmInner_tl_in_a_bits_data(debug_auto_dmInner_dmInner_tl_in_a_bits_data),
    .auto_dmInner_dmInner_tl_in_d_ready(debug_auto_dmInner_dmInner_tl_in_d_ready),
    .auto_dmInner_dmInner_tl_in_d_valid(debug_auto_dmInner_dmInner_tl_in_d_valid),
    .auto_dmInner_dmInner_tl_in_d_bits_opcode(debug_auto_dmInner_dmInner_tl_in_d_bits_opcode),
    .auto_dmInner_dmInner_tl_in_d_bits_size(debug_auto_dmInner_dmInner_tl_in_d_bits_size),
    .auto_dmInner_dmInner_tl_in_d_bits_source(debug_auto_dmInner_dmInner_tl_in_d_bits_source),
    .auto_dmInner_dmInner_tl_in_d_bits_data(debug_auto_dmInner_dmInner_tl_in_d_bits_data),
    .auto_dmOuter_intsource_out_sync_0(debug_auto_dmOuter_intsource_out_sync_0),
    .io_debug_clock(debug_io_debug_clock),
    .io_debug_reset(debug_io_debug_reset),
    .io_ctrl_ndreset(debug_io_ctrl_ndreset),
    .io_ctrl_dmactive(debug_io_ctrl_dmactive),
    .io_ctrl_dmactiveAck(debug_io_ctrl_dmactiveAck),
    .io_dmi_dmi_req_ready(debug_io_dmi_dmi_req_ready),
    .io_dmi_dmi_req_valid(debug_io_dmi_dmi_req_valid),
    .io_dmi_dmi_req_bits_addr(debug_io_dmi_dmi_req_bits_addr),
    .io_dmi_dmi_req_bits_data(debug_io_dmi_dmi_req_bits_data),
    .io_dmi_dmi_req_bits_op(debug_io_dmi_dmi_req_bits_op),
    .io_dmi_dmi_resp_ready(debug_io_dmi_dmi_resp_ready),
    .io_dmi_dmi_resp_valid(debug_io_dmi_dmi_resp_valid),
    .io_dmi_dmi_resp_bits_data(debug_io_dmi_dmi_resp_bits_data),
    .io_dmi_dmi_resp_bits_resp(debug_io_dmi_dmi_resp_bits_resp),
    .io_dmi_dmiClock(debug_io_dmi_dmiClock),
    .io_dmi_dmiReset(debug_io_dmi_dmiReset),
    .io_hartIsInReset_0(debug_io_hartIsInReset_0)
  );
  BundleBridgeNexus_13 tileHartIdNexusNode ( // @[HasTiles.scala 141:39]
    .auto_out(tileHartIdNexusNode_auto_out)
  );
  IntSyncCrossingSource_2 intsource ( // @[Crossing.scala 26:31]
    .clock(intsource_clock),
    .reset(intsource_reset),
    .auto_in_0(intsource_auto_in_0),
    .auto_in_1(intsource_auto_in_1),
    .auto_out_sync_0(intsource_auto_out_sync_0),
    .auto_out_sync_1(intsource_auto_out_sync_1)
  );
  IntSyncCrossingSource_3 intsource_1 ( // @[Crossing.scala 26:31]
    .clock(intsource_1_clock),
    .reset(intsource_1_reset),
    .auto_in_0(intsource_1_auto_in_0),
    .auto_out_sync_0(intsource_1_auto_out_sync_0)
  );
  IntSyncCrossingSource_3 intsource_2 ( // @[Crossing.scala 26:31]
    .clock(intsource_2_clock),
    .reset(intsource_2_reset),
    .auto_in_0(intsource_2_auto_in_0),
    .auto_out_sync_0(intsource_2_auto_out_sync_0)
  );
  IntXing asyncXing ( // @[InterruptBus.scala 16:31]
    .clock(asyncXing_clock),
    .auto_int_in_0(asyncXing_auto_int_in_0),
    .auto_int_in_1(asyncXing_auto_int_in_1),
    .auto_int_out_0(asyncXing_auto_int_out_0),
    .auto_int_out_1(asyncXing_auto_int_out_1)
  );
  TLROM bootrom ( // @[BootROM.scala 78:17]
    .auto_in_a_ready(bootrom_auto_in_a_ready),
    .auto_in_a_valid(bootrom_auto_in_a_valid),
    .auto_in_a_bits_size(bootrom_auto_in_a_bits_size),
    .auto_in_a_bits_source(bootrom_auto_in_a_bits_source),
    .auto_in_a_bits_address(bootrom_auto_in_a_bits_address),
    .auto_in_d_ready(bootrom_auto_in_d_ready),
    .auto_in_d_valid(bootrom_auto_in_d_valid),
    .auto_in_d_bits_size(bootrom_auto_in_d_bits_size),
    .auto_in_d_bits_source(bootrom_auto_in_d_bits_source),
    .auto_in_d_bits_data(bootrom_auto_in_d_bits_data)
  );
  assign mem_axi4_0_aw_valid = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_valid; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_aw_bits_id =
    subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_id; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_aw_bits_addr =
    subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_addr; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_aw_bits_len =
    subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_len; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_aw_bits_size =
    subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_aw_bits_burst =
    subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_burst; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_aw_bits_lock =
    subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_lock; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_aw_bits_cache =
    subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_cache; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_aw_bits_prot =
    subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_prot; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_aw_bits_qos =
    subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_qos; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_w_valid = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_valid; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_w_bits_data =
    subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_w_bits_strb =
    subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_strb; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_w_bits_last =
    subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_last; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_b_ready = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_ready; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_ar_valid = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_valid; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_ar_bits_id =
    subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_id; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_ar_bits_addr =
    subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_addr; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_ar_bits_len =
    subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_len; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_ar_bits_size =
    subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_ar_bits_burst =
    subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_burst; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_ar_bits_lock =
    subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_lock; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_ar_bits_cache =
    subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_cache; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_ar_bits_prot =
    subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_prot; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_ar_bits_qos =
    subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_qos; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mem_axi4_0_r_ready = subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_ready; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_aw_valid = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_valid; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_aw_bits_id = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_id; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_aw_bits_addr = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_addr; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_aw_bits_len = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_len; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_aw_bits_size = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_aw_bits_burst = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_burst; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_aw_bits_lock = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_lock; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_aw_bits_cache = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_cache; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_aw_bits_prot = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_prot; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_aw_bits_qos = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_qos; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_w_valid = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_valid; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_w_bits_data = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_w_bits_strb = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_strb; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_w_bits_last = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_last; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_b_ready = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_ready; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_ar_valid = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_valid; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_ar_bits_id = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_id; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_ar_bits_addr = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_addr; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_ar_bits_len = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_len; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_ar_bits_size = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_ar_bits_burst = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_burst; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_ar_bits_lock = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_lock; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_ar_bits_cache = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_cache; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_ar_bits_prot = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_prot; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_ar_bits_qos = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_qos; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign mmio_axi4_0_r_ready = subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_ready; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign l2_frontend_bus_axi4_0_aw_ready =
    subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_ready; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign l2_frontend_bus_axi4_0_w_ready =
    subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_ready; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign l2_frontend_bus_axi4_0_b_valid =
    subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_valid; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign l2_frontend_bus_axi4_0_b_bits_id =
    subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_id; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign l2_frontend_bus_axi4_0_b_bits_resp =
    subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_resp; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign l2_frontend_bus_axi4_0_ar_ready =
    subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_ready; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign l2_frontend_bus_axi4_0_r_valid =
    subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_valid; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign l2_frontend_bus_axi4_0_r_bits_id =
    subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_id; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign l2_frontend_bus_axi4_0_r_bits_data =
    subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign l2_frontend_bus_axi4_0_r_bits_resp =
    subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_resp; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign l2_frontend_bus_axi4_0_r_bits_last =
    subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_last; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign debug_debug_clockeddmi_dmi_req_ready = debug_io_dmi_dmi_req_ready; // @[Periphery.scala 126:68]
  assign debug_debug_clockeddmi_dmi_resp_valid = debug_io_dmi_dmi_resp_valid; // @[Periphery.scala 126:68]
  assign debug_debug_clockeddmi_dmi_resp_bits_data = debug_io_dmi_dmi_resp_bits_data; // @[Periphery.scala 126:68]
  assign debug_debug_clockeddmi_dmi_resp_bits_resp = debug_io_dmi_dmi_resp_bits_resp; // @[Periphery.scala 126:68]
  assign debug_debug_ndreset = debug_io_ctrl_ndreset; // @[Periphery.scala 141:19]
  assign debug_debug_dmactive = debug_io_ctrl_dmactive; // @[Periphery.scala 142:20]
  assign int_bus_auto_int_in_0 = asyncXing_auto_int_out_0; // @[LazyModule.scala 299:16]
  assign int_bus_auto_int_in_1 = asyncXing_auto_int_out_1; // @[LazyModule.scala 299:16]
  assign dummyClockGroupSourceNode_clock = clock;
  assign dummyClockGroupSourceNode_reset = reset;
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_ready = mmio_axi4_0_aw_ready; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_ready = mmio_axi4_0_w_ready; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_valid = mmio_axi4_0_b_valid; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_id = mmio_axi4_0_b_bits_id; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_resp = mmio_axi4_0_b_bits_resp; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_ready = mmio_axi4_0_ar_ready; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_valid = mmio_axi4_0_r_valid; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_id = mmio_axi4_0_r_bits_id; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_data = mmio_axi4_0_r_bits_data; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_resp = mmio_axi4_0_r_bits_resp; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_sbus_auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_last = mmio_axi4_0_r_bits_last; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_valid =
    tile_prci_domain_auto_tl_master_xing_out_a_valid; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_opcode =
    tile_prci_domain_auto_tl_master_xing_out_a_bits_opcode; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_param =
    tile_prci_domain_auto_tl_master_xing_out_a_bits_param; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_size =
    tile_prci_domain_auto_tl_master_xing_out_a_bits_size; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_source =
    tile_prci_domain_auto_tl_master_xing_out_a_bits_source; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_address =
    tile_prci_domain_auto_tl_master_xing_out_a_bits_address; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_mask =
    tile_prci_domain_auto_tl_master_xing_out_a_bits_mask; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_data =
    tile_prci_domain_auto_tl_master_xing_out_a_bits_data; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_bits_corrupt =
    tile_prci_domain_auto_tl_master_xing_out_a_bits_corrupt; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_ready =
    tile_prci_domain_auto_tl_master_xing_out_b_ready; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_valid =
    tile_prci_domain_auto_tl_master_xing_out_c_valid; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_opcode =
    tile_prci_domain_auto_tl_master_xing_out_c_bits_opcode; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_param =
    tile_prci_domain_auto_tl_master_xing_out_c_bits_param; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_size =
    tile_prci_domain_auto_tl_master_xing_out_c_bits_size; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_source =
    tile_prci_domain_auto_tl_master_xing_out_c_bits_source; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_address =
    tile_prci_domain_auto_tl_master_xing_out_c_bits_address; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_bits_data =
    tile_prci_domain_auto_tl_master_xing_out_c_bits_data; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_ready =
    tile_prci_domain_auto_tl_master_xing_out_d_ready; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_e_valid =
    tile_prci_domain_auto_tl_master_xing_out_e_valid; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_e_bits_sink =
    tile_prci_domain_auto_tl_master_xing_out_e_bits_sink; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_ready =
    subsystem_l2_wrapper_auto_coherent_jbar_in_a_ready; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_valid =
    subsystem_l2_wrapper_auto_coherent_jbar_in_b_valid; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_param =
    subsystem_l2_wrapper_auto_coherent_jbar_in_b_bits_param; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_address =
    subsystem_l2_wrapper_auto_coherent_jbar_in_b_bits_address; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_ready =
    subsystem_l2_wrapper_auto_coherent_jbar_in_c_ready; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_valid =
    subsystem_l2_wrapper_auto_coherent_jbar_in_d_valid; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_opcode =
    subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_opcode; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_param =
    subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_param; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_size =
    subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_size; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_source =
    subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_source; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_sink =
    subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_sink; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_denied =
    subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_denied; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_data =
    subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_data; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_corrupt =
    subsystem_l2_wrapper_auto_coherent_jbar_in_d_bits_corrupt; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_valid =
    subsystem_fbus_auto_bus_xing_out_a_valid; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_opcode =
    subsystem_fbus_auto_bus_xing_out_a_bits_opcode; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_param =
    subsystem_fbus_auto_bus_xing_out_a_bits_param; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_size =
    subsystem_fbus_auto_bus_xing_out_a_bits_size; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_source =
    subsystem_fbus_auto_bus_xing_out_a_bits_source; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_address =
    subsystem_fbus_auto_bus_xing_out_a_bits_address; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_bufferable =
    subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_modifiable =
    subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_readalloc =
    subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_writealloc =
    subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_privileged =
    subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_secure =
    subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_fetch =
    subsystem_fbus_auto_bus_xing_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_mask =
    subsystem_fbus_auto_bus_xing_out_a_bits_mask; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_data =
    subsystem_fbus_auto_bus_xing_out_a_bits_data; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_corrupt =
    subsystem_fbus_auto_bus_xing_out_a_bits_corrupt; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_ready =
    subsystem_fbus_auto_bus_xing_out_d_ready; // @[LazyModule.scala 299:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_ready =
    subsystem_cbus_auto_bus_xing_in_a_ready; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_valid =
    subsystem_cbus_auto_bus_xing_in_d_valid; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_opcode =
    subsystem_cbus_auto_bus_xing_in_d_bits_opcode; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_param =
    subsystem_cbus_auto_bus_xing_in_d_bits_param; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_size =
    subsystem_cbus_auto_bus_xing_in_d_bits_size; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_source =
    subsystem_cbus_auto_bus_xing_in_d_bits_source; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_sink =
    subsystem_cbus_auto_bus_xing_in_d_bits_sink; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_denied =
    subsystem_cbus_auto_bus_xing_in_d_bits_denied; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_data =
    subsystem_cbus_auto_bus_xing_in_d_bits_data; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_corrupt =
    subsystem_cbus_auto_bus_xing_in_d_bits_corrupt; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_5_clock =
    dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_5_clock; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_5_reset =
    dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_5_reset; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_4_clock =
    dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_4_clock; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_4_reset =
    dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_4_reset; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_3_clock =
    dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_3_clock; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_3_reset =
    dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_3_reset; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_1_clock =
    dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_1_clock; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_1_reset =
    dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_1_reset; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_0_clock =
    dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_0_clock; // @[LazyModule.scala 301:16]
  assign subsystem_sbus_auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_0_reset =
    dummyClockGroupSourceNode_auto_out_member_subsystem_sbus_0_reset; // @[LazyModule.scala 301:16]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_valid =
    l2_frontend_bus_axi4_0_aw_valid; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_id =
    l2_frontend_bus_axi4_0_aw_bits_id; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_addr =
    l2_frontend_bus_axi4_0_aw_bits_addr; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_len =
    l2_frontend_bus_axi4_0_aw_bits_len; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_size =
    l2_frontend_bus_axi4_0_aw_bits_size; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_burst =
    l2_frontend_bus_axi4_0_aw_bits_burst; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_cache =
    l2_frontend_bus_axi4_0_aw_bits_cache; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_prot =
    l2_frontend_bus_axi4_0_aw_bits_prot; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_valid =
    l2_frontend_bus_axi4_0_w_valid; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_data =
    l2_frontend_bus_axi4_0_w_bits_data; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_strb =
    l2_frontend_bus_axi4_0_w_bits_strb; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_last =
    l2_frontend_bus_axi4_0_w_bits_last; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_ready =
    l2_frontend_bus_axi4_0_b_ready; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_valid =
    l2_frontend_bus_axi4_0_ar_valid; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_id =
    l2_frontend_bus_axi4_0_ar_bits_id; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_addr =
    l2_frontend_bus_axi4_0_ar_bits_addr; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_len =
    l2_frontend_bus_axi4_0_ar_bits_len; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_size =
    l2_frontend_bus_axi4_0_ar_bits_size; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_burst =
    l2_frontend_bus_axi4_0_ar_bits_burst; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_cache =
    l2_frontend_bus_axi4_0_ar_bits_cache; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_prot =
    l2_frontend_bus_axi4_0_ar_bits_prot; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_ready =
    l2_frontend_bus_axi4_0_r_ready; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign subsystem_fbus_auto_subsystem_fbus_clock_groups_in_member_subsystem_fbus_0_clock =
    subsystem_sbus_auto_subsystem_sbus_clock_groups_out_1_member_subsystem_fbus_0_clock; // @[LazyModule.scala 301:16]
  assign subsystem_fbus_auto_subsystem_fbus_clock_groups_in_member_subsystem_fbus_0_reset =
    subsystem_sbus_auto_subsystem_sbus_clock_groups_out_1_member_subsystem_fbus_0_reset; // @[LazyModule.scala 301:16]
  assign subsystem_fbus_auto_bus_xing_out_a_ready =
    subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_ready; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_auto_bus_xing_out_d_valid =
    subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_valid; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_auto_bus_xing_out_d_bits_opcode =
    subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_opcode; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_auto_bus_xing_out_d_bits_size =
    subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_size; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_auto_bus_xing_out_d_bits_source =
    subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_source; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_auto_bus_xing_out_d_bits_denied =
    subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_denied; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_auto_bus_xing_out_d_bits_data =
    subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_data; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_auto_bus_xing_out_d_bits_corrupt =
    subsystem_sbus_auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_corrupt; // @[LazyModule.scala 299:16]
  assign subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_ready = bootrom_auto_in_a_ready; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_valid = bootrom_auto_in_d_valid; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_size = bootrom_auto_in_d_bits_size; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_source = bootrom_auto_in_d_bits_source; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_bits_data = bootrom_auto_in_d_bits_data; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_ready = debug_auto_dmInner_dmInner_tl_in_a_ready; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_valid = debug_auto_dmInner_dmInner_tl_in_d_valid; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_opcode =
    debug_auto_dmInner_dmInner_tl_in_d_bits_opcode; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_size = debug_auto_dmInner_dmInner_tl_in_d_bits_size; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_source =
    debug_auto_dmInner_dmInner_tl_in_d_bits_source; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_bits_data = debug_auto_dmInner_dmInner_tl_in_d_bits_data; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_ready = clint_auto_in_a_ready; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_valid = clint_auto_in_d_valid; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_opcode = clint_auto_in_d_bits_opcode; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_size = clint_auto_in_d_bits_size; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_source = clint_auto_in_d_bits_source; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_bits_data = clint_auto_in_d_bits_data; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_ready = plic_auto_in_a_ready; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_valid = plic_auto_in_d_valid; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_opcode = plic_auto_in_d_bits_opcode; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_size = plic_auto_in_d_bits_size; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_source = plic_auto_in_d_bits_source; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_bits_data = plic_auto_in_d_bits_data; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_subsystem_cbus_0_clock =
    subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_subsystem_cbus_0_clock; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_subsystem_cbus_clock_groups_in_member_subsystem_cbus_0_reset =
    subsystem_sbus_auto_subsystem_sbus_clock_groups_out_0_member_subsystem_cbus_0_reset; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_bus_xing_in_a_valid =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_valid; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_opcode =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_opcode; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_param =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_param; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_size =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_size; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_source =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_source; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_address =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_address; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_mask =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_mask; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_data =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_data; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_bus_xing_in_a_bits_corrupt =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_corrupt; // @[LazyModule.scala 301:16]
  assign subsystem_cbus_auto_bus_xing_in_d_ready =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_ready; // @[LazyModule.scala 301:16]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_ready = mem_axi4_0_aw_ready; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_ready = mem_axi4_0_w_ready; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_valid = mem_axi4_0_b_valid; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_id = mem_axi4_0_b_bits_id; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_resp =
    mem_axi4_0_b_bits_resp; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_ready = mem_axi4_0_ar_ready; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_valid = mem_axi4_0_r_valid; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_id = mem_axi4_0_r_bits_id; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_data =
    mem_axi4_0_r_bits_data; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_resp =
    mem_axi4_0_r_bits_resp; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_mbus_auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_last =
    mem_axi4_0_r_bits_last; // @[Nodes.scala 1216:84 Nodes.scala 1700:56]
  assign subsystem_mbus_auto_fixer_in_a_valid =
    subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_valid; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_auto_fixer_in_a_bits_opcode =
    subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_opcode; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_auto_fixer_in_a_bits_size =
    subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_size; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_auto_fixer_in_a_bits_source =
    subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_source; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_auto_fixer_in_a_bits_address =
    subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_address; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_bufferable =
    subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_modifiable =
    subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_readalloc =
    subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_writealloc =
    subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_privileged =
    subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_secure =
    subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_auto_fixer_in_a_bits_user_amba_prot_fetch =
    subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_auto_fixer_in_a_bits_mask =
    subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_mask; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_auto_fixer_in_a_bits_data =
    subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_data; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_auto_fixer_in_d_ready =
    subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_ready; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_auto_subsystem_mbus_clock_groups_in_member_subsystem_mbus_0_clock =
    subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_out_member_subsystem_mbus_0_clock; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_auto_subsystem_mbus_clock_groups_in_member_subsystem_mbus_0_reset =
    subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_out_member_subsystem_mbus_0_reset; // @[LazyModule.scala 299:16]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_ready =
    subsystem_mbus_auto_fixer_in_a_ready; // @[LazyModule.scala 299:16]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_valid =
    subsystem_mbus_auto_fixer_in_d_valid; // @[LazyModule.scala 299:16]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_opcode =
    subsystem_mbus_auto_fixer_in_d_bits_opcode; // @[LazyModule.scala 299:16]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_size =
    subsystem_mbus_auto_fixer_in_d_bits_size; // @[LazyModule.scala 299:16]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_source =
    subsystem_mbus_auto_fixer_in_d_bits_source; // @[LazyModule.scala 299:16]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_denied =
    subsystem_mbus_auto_fixer_in_d_bits_denied; // @[LazyModule.scala 299:16]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_data =
    subsystem_mbus_auto_fixer_in_d_bits_data; // @[LazyModule.scala 299:16]
  assign subsystem_l2_wrapper_auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_corrupt =
    subsystem_mbus_auto_fixer_in_d_bits_corrupt; // @[LazyModule.scala 299:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_valid =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_valid; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_opcode =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_opcode; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_param =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_param; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_size =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_size; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_source =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_source; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_address =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_address; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_bufferable =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_modifiable =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_readalloc =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_writealloc =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_privileged =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_secure =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_user_amba_prot_fetch =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_mask =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_mask; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_a_bits_data =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_data; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_b_ready =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_b_ready; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_valid =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_valid; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_opcode =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_opcode; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_param =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_param; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_size =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_size; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_source =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_source; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_address =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_address; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_c_bits_data =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_data; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_d_ready =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_d_ready; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_e_valid =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_e_valid; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_coherent_jbar_in_e_bits_sink =
    subsystem_sbus_auto_coupler_to_bus_named_subsystem_l2_widget_out_e_bits_sink; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_subsystem_l2_1_clock =
    subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_1_clock; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_subsystem_l2_1_reset =
    subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_1_reset; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_subsystem_l2_0_clock =
    subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_0_clock; // @[LazyModule.scala 301:16]
  assign subsystem_l2_wrapper_auto_subsystem_l2_clock_groups_in_member_subsystem_l2_0_reset =
    subsystem_sbus_auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_0_reset; // @[LazyModule.scala 301:16]
  assign tile_prci_domain_auto_intsink_in_sync_0 = debug_auto_dmOuter_intsource_out_sync_0; // @[LazyModule.scala 299:16]
  assign tile_prci_domain_auto_tile_hartid_in = tileHartIdNexusNode_auto_out; // @[LazyModule.scala 299:16]
  assign tile_prci_domain_auto_int_in_xing_in_2_sync_0 = intsource_2_auto_out_sync_0; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign tile_prci_domain_auto_int_in_xing_in_1_sync_0 = intsource_1_auto_out_sync_0; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign tile_prci_domain_auto_int_in_xing_in_0_sync_0 = intsource_auto_out_sync_0; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign tile_prci_domain_auto_int_in_xing_in_0_sync_1 = intsource_auto_out_sync_1; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign tile_prci_domain_auto_tl_master_xing_out_a_ready =
    subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_a_ready; // @[LazyModule.scala 299:16]
  assign tile_prci_domain_auto_tl_master_xing_out_b_valid =
    subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_valid; // @[LazyModule.scala 299:16]
  assign tile_prci_domain_auto_tl_master_xing_out_b_bits_param =
    subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_bits_param; // @[LazyModule.scala 299:16]
  assign tile_prci_domain_auto_tl_master_xing_out_b_bits_address =
    subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_b_bits_address; // @[LazyModule.scala 299:16]
  assign tile_prci_domain_auto_tl_master_xing_out_c_ready =
    subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_c_ready; // @[LazyModule.scala 299:16]
  assign tile_prci_domain_auto_tl_master_xing_out_d_valid =
    subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_valid; // @[LazyModule.scala 299:16]
  assign tile_prci_domain_auto_tl_master_xing_out_d_bits_opcode =
    subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_opcode; // @[LazyModule.scala 299:16]
  assign tile_prci_domain_auto_tl_master_xing_out_d_bits_param =
    subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_param; // @[LazyModule.scala 299:16]
  assign tile_prci_domain_auto_tl_master_xing_out_d_bits_size =
    subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_size; // @[LazyModule.scala 299:16]
  assign tile_prci_domain_auto_tl_master_xing_out_d_bits_source =
    subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_source; // @[LazyModule.scala 299:16]
  assign tile_prci_domain_auto_tl_master_xing_out_d_bits_sink =
    subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_sink; // @[LazyModule.scala 299:16]
  assign tile_prci_domain_auto_tl_master_xing_out_d_bits_denied =
    subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_denied; // @[LazyModule.scala 299:16]
  assign tile_prci_domain_auto_tl_master_xing_out_d_bits_data =
    subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_data; // @[LazyModule.scala 299:16]
  assign tile_prci_domain_auto_tl_master_xing_out_d_bits_corrupt =
    subsystem_sbus_auto_coupler_from_tile_tl_master_xing_in_d_bits_corrupt; // @[LazyModule.scala 299:16]
  assign tile_prci_domain_auto_clock_in_clock = subsystem_sbus_auto_fixedClockNode_out_0_clock; // @[LazyModule.scala 301:16]
  assign tile_prci_domain_auto_clock_in_reset = subsystem_sbus_auto_fixedClockNode_out_0_reset; // @[LazyModule.scala 301:16]
  assign plic_clock = clock;
  assign plic_reset = reset;
  assign plic_auto_int_in_0 = int_bus_auto_int_out_0; // @[LazyModule.scala 301:16]
  assign plic_auto_int_in_1 = int_bus_auto_int_out_1; // @[LazyModule.scala 301:16]
  assign plic_auto_in_a_valid = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_valid; // @[LazyModule.scala 301:16]
  assign plic_auto_in_a_bits_opcode = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 301:16]
  assign plic_auto_in_a_bits_size = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_size; // @[LazyModule.scala 301:16]
  assign plic_auto_in_a_bits_source = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_source; // @[LazyModule.scala 301:16]
  assign plic_auto_in_a_bits_address = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_address; // @[LazyModule.scala 301:16]
  assign plic_auto_in_a_bits_mask = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_mask; // @[LazyModule.scala 301:16]
  assign plic_auto_in_a_bits_data = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_a_bits_data; // @[LazyModule.scala 301:16]
  assign plic_auto_in_d_ready = subsystem_cbus_auto_coupler_to_plic_fragmenter_out_d_ready; // @[LazyModule.scala 301:16]
  assign clint_clock = clock;
  assign clint_reset = reset;
  assign clint_auto_in_a_valid = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_valid; // @[LazyModule.scala 301:16]
  assign clint_auto_in_a_bits_opcode = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 301:16]
  assign clint_auto_in_a_bits_size = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_size; // @[LazyModule.scala 301:16]
  assign clint_auto_in_a_bits_source = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_source; // @[LazyModule.scala 301:16]
  assign clint_auto_in_a_bits_address = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_address; // @[LazyModule.scala 301:16]
  assign clint_auto_in_a_bits_mask = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_mask; // @[LazyModule.scala 301:16]
  assign clint_auto_in_a_bits_data = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_a_bits_data; // @[LazyModule.scala 301:16]
  assign clint_auto_in_d_ready = subsystem_cbus_auto_coupler_to_clint_fragmenter_out_d_ready; // @[LazyModule.scala 301:16]
  assign clint_io_rtcTick = int_rtc_tick_value == 7'h63; // @[Counter.scala 72:24]
  assign debug_auto_dmInner_dmInner_tl_in_a_valid = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_valid; // @[LazyModule.scala 301:16]
  assign debug_auto_dmInner_dmInner_tl_in_a_bits_opcode =
    subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 301:16]
  assign debug_auto_dmInner_dmInner_tl_in_a_bits_size = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_size; // @[LazyModule.scala 301:16]
  assign debug_auto_dmInner_dmInner_tl_in_a_bits_source =
    subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_source; // @[LazyModule.scala 301:16]
  assign debug_auto_dmInner_dmInner_tl_in_a_bits_address =
    subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_address; // @[LazyModule.scala 301:16]
  assign debug_auto_dmInner_dmInner_tl_in_a_bits_mask = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_mask; // @[LazyModule.scala 301:16]
  assign debug_auto_dmInner_dmInner_tl_in_a_bits_data = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_a_bits_data; // @[LazyModule.scala 301:16]
  assign debug_auto_dmInner_dmInner_tl_in_d_ready = subsystem_cbus_auto_coupler_to_debug_fragmenter_out_d_ready; // @[LazyModule.scala 301:16]
  assign debug_io_debug_clock = debug_debug_clock; // @[Periphery.scala 139:38]
  assign debug_io_debug_reset = debug_debug_reset; // @[Periphery.scala 138:38]
  assign debug_io_ctrl_dmactiveAck = debug_debug_dmactiveAck; // @[Periphery.scala 143:43]
  assign debug_io_dmi_dmi_req_valid = debug_debug_clockeddmi_dmi_req_valid; // @[Periphery.scala 126:68]
  assign debug_io_dmi_dmi_req_bits_addr = debug_debug_clockeddmi_dmi_req_bits_addr; // @[Periphery.scala 126:68]
  assign debug_io_dmi_dmi_req_bits_data = debug_debug_clockeddmi_dmi_req_bits_data; // @[Periphery.scala 126:68]
  assign debug_io_dmi_dmi_req_bits_op = debug_debug_clockeddmi_dmi_req_bits_op; // @[Periphery.scala 126:68]
  assign debug_io_dmi_dmi_resp_ready = debug_debug_clockeddmi_dmi_resp_ready; // @[Periphery.scala 126:68]
  assign debug_io_dmi_dmiClock = debug_debug_clockeddmi_dmiClock; // @[Periphery.scala 126:68]
  assign debug_io_dmi_dmiReset = debug_debug_clockeddmi_dmiReset; // @[Periphery.scala 126:68]
  assign debug_io_hartIsInReset_0 = resetctrl_resetctrl_hartIsInReset_0; // @[Periphery.scala 109:40]
  assign intsource_clock = clock;
  assign intsource_reset = reset;
  assign intsource_auto_in_0 = clint_auto_int_out_0; // @[LazyModule.scala 301:16]
  assign intsource_auto_in_1 = clint_auto_int_out_1; // @[LazyModule.scala 301:16]
  assign intsource_1_clock = clock;
  assign intsource_1_reset = reset;
  assign intsource_1_auto_in_0 = plic_auto_int_out_0_0; // @[LazyModule.scala 301:16]
  assign intsource_2_clock = clock;
  assign intsource_2_reset = reset;
  assign intsource_2_auto_in_0 = plic_auto_int_out_1_0; // @[LazyModule.scala 301:16]
  assign asyncXing_clock = clock;
  assign asyncXing_auto_int_in_0 = interrupts[0]; // @[InterruptBus.scala 79:97]
  assign asyncXing_auto_int_in_1 = interrupts[1]; // @[InterruptBus.scala 79:97]
  assign bootrom_auto_in_a_valid = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_valid; // @[LazyModule.scala 301:16]
  assign bootrom_auto_in_a_bits_size = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_size; // @[LazyModule.scala 301:16]
  assign bootrom_auto_in_a_bits_source = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_source; // @[LazyModule.scala 301:16]
  assign bootrom_auto_in_a_bits_address = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_a_bits_address; // @[LazyModule.scala 301:16]
  assign bootrom_auto_in_d_ready = subsystem_cbus_auto_coupler_to_bootrom_fragmenter_out_d_ready; // @[LazyModule.scala 301:16]
  always @(posedge clock) begin
    if (reset) begin // @[Counter.scala 60:40]
      int_rtc_tick_value <= 7'h0; // @[Counter.scala 60:40]
    end else if (int_rtc_tick_int_rtc_tick_wrap) begin // @[Counter.scala 86:20]
      int_rtc_tick_value <= 7'h0; // @[Counter.scala 86:28]
    end else begin
      int_rtc_tick_value <= _int_rtc_tick_int_rtc_tick_int_rtc_tick_value_T_1; // @[Counter.scala 76:15]
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
  int_rtc_tick_value = _RAND_0[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
