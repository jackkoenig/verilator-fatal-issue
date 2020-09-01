module SystemBus(
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_ready,
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_valid,
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_id,
  output [30:0] auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_addr,
  output [7:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_len,
  output [2:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_size,
  output [1:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_burst,
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_lock,
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_cache,
  output [2:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_prot,
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_qos,
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_ready,
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_valid,
  output [63:0] auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_data,
  output [7:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_strb,
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_last,
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_ready,
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_valid,
  input  [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_id,
  input  [1:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_resp,
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_ready,
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_valid,
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_id,
  output [30:0] auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_addr,
  output [7:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_len,
  output [2:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_size,
  output [1:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_burst,
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_lock,
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_cache,
  output [2:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_prot,
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_qos,
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_ready,
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_valid,
  input  [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_id,
  input  [63:0] auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_data,
  input  [1:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_resp,
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_last,
  output        auto_coupler_from_tile_tl_master_xing_in_a_ready,
  input         auto_coupler_from_tile_tl_master_xing_in_a_valid,
  input  [2:0]  auto_coupler_from_tile_tl_master_xing_in_a_bits_opcode,
  input  [2:0]  auto_coupler_from_tile_tl_master_xing_in_a_bits_param,
  input  [3:0]  auto_coupler_from_tile_tl_master_xing_in_a_bits_size,
  input  [1:0]  auto_coupler_from_tile_tl_master_xing_in_a_bits_source,
  input  [31:0] auto_coupler_from_tile_tl_master_xing_in_a_bits_address,
  input  [7:0]  auto_coupler_from_tile_tl_master_xing_in_a_bits_mask,
  input  [63:0] auto_coupler_from_tile_tl_master_xing_in_a_bits_data,
  input         auto_coupler_from_tile_tl_master_xing_in_a_bits_corrupt,
  input         auto_coupler_from_tile_tl_master_xing_in_b_ready,
  output        auto_coupler_from_tile_tl_master_xing_in_b_valid,
  output [1:0]  auto_coupler_from_tile_tl_master_xing_in_b_bits_param,
  output [31:0] auto_coupler_from_tile_tl_master_xing_in_b_bits_address,
  output        auto_coupler_from_tile_tl_master_xing_in_c_ready,
  input         auto_coupler_from_tile_tl_master_xing_in_c_valid,
  input  [2:0]  auto_coupler_from_tile_tl_master_xing_in_c_bits_opcode,
  input  [2:0]  auto_coupler_from_tile_tl_master_xing_in_c_bits_param,
  input  [3:0]  auto_coupler_from_tile_tl_master_xing_in_c_bits_size,
  input  [1:0]  auto_coupler_from_tile_tl_master_xing_in_c_bits_source,
  input  [31:0] auto_coupler_from_tile_tl_master_xing_in_c_bits_address,
  input  [63:0] auto_coupler_from_tile_tl_master_xing_in_c_bits_data,
  input         auto_coupler_from_tile_tl_master_xing_in_d_ready,
  output        auto_coupler_from_tile_tl_master_xing_in_d_valid,
  output [2:0]  auto_coupler_from_tile_tl_master_xing_in_d_bits_opcode,
  output [1:0]  auto_coupler_from_tile_tl_master_xing_in_d_bits_param,
  output [3:0]  auto_coupler_from_tile_tl_master_xing_in_d_bits_size,
  output [1:0]  auto_coupler_from_tile_tl_master_xing_in_d_bits_source,
  output [1:0]  auto_coupler_from_tile_tl_master_xing_in_d_bits_sink,
  output        auto_coupler_from_tile_tl_master_xing_in_d_bits_denied,
  output [63:0] auto_coupler_from_tile_tl_master_xing_in_d_bits_data,
  output        auto_coupler_from_tile_tl_master_xing_in_d_bits_corrupt,
  input         auto_coupler_from_tile_tl_master_xing_in_e_valid,
  input  [1:0]  auto_coupler_from_tile_tl_master_xing_in_e_bits_sink,
  input         auto_coupler_to_bus_named_subsystem_l2_widget_out_a_ready,
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_a_valid,
  output [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_opcode,
  output [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_param,
  output [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_size,
  output [4:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_source,
  output [31:0] auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_address,
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_bufferable,
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_modifiable,
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_readalloc,
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_writealloc,
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_privileged,
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_secure,
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_fetch,
  output [7:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_mask,
  output [63:0] auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_data,
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_b_ready,
  input         auto_coupler_to_bus_named_subsystem_l2_widget_out_b_valid,
  input  [1:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_param,
  input  [31:0] auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_address,
  input         auto_coupler_to_bus_named_subsystem_l2_widget_out_c_ready,
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_c_valid,
  output [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_opcode,
  output [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_param,
  output [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_size,
  output [4:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_source,
  output [31:0] auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_address,
  output [63:0] auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_data,
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_d_ready,
  input         auto_coupler_to_bus_named_subsystem_l2_widget_out_d_valid,
  input  [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_opcode,
  input  [1:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_param,
  input  [2:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_size,
  input  [4:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_source,
  input  [1:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_sink,
  input         auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_denied,
  input  [63:0] auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_data,
  input         auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_corrupt,
  output        auto_coupler_to_bus_named_subsystem_l2_widget_out_e_valid,
  output [1:0]  auto_coupler_to_bus_named_subsystem_l2_widget_out_e_bits_sink,
  output        auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_ready,
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_valid,
  input  [2:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_opcode,
  input  [2:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_param,
  input  [3:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_size,
  input  [3:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_source,
  input  [31:0] auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_address,
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_bufferable,
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_modifiable,
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_readalloc,
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_writealloc,
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_privileged,
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_secure,
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_fetch,
  input  [7:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_mask,
  input  [63:0] auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_data,
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_corrupt,
  input         auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_ready,
  output        auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_valid,
  output [2:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_opcode,
  output [3:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_size,
  output [3:0]  auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_source,
  output        auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_denied,
  output [63:0] auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_data,
  output        auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_corrupt,
  input         auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_ready,
  output        auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_valid,
  output [2:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_opcode,
  output [2:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_param,
  output [3:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_size,
  output [4:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_source,
  output [27:0] auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_address,
  output [7:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_mask,
  output [63:0] auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_data,
  output        auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_corrupt,
  output        auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_ready,
  input         auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_valid,
  input  [2:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_opcode,
  input  [1:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_param,
  input  [3:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_size,
  input  [4:0]  auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_source,
  input         auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_sink,
  input         auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_denied,
  input  [63:0] auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_data,
  input         auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_corrupt,
  output        auto_fixedClockNode_out_0_clock,
  output        auto_fixedClockNode_out_0_reset,
  input         auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_5_clock,
  input         auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_5_reset,
  input         auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_4_clock,
  input         auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_4_reset,
  input         auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_3_clock,
  input         auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_3_reset,
  input         auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_1_clock,
  input         auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_1_reset,
  input         auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_0_clock,
  input         auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_0_reset,
  output        auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_1_clock,
  output        auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_1_reset,
  output        auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_0_clock,
  output        auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_0_reset,
  output        auto_subsystem_sbus_clock_groups_out_1_member_subsystem_fbus_0_clock,
  output        auto_subsystem_sbus_clock_groups_out_1_member_subsystem_fbus_0_reset,
  output        auto_subsystem_sbus_clock_groups_out_0_member_subsystem_cbus_0_clock,
  output        auto_subsystem_sbus_clock_groups_out_0_member_subsystem_cbus_0_reset
);
  wire  subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_5_clock; // @[BusWrapper.scala 40:48]
  wire  subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_5_reset; // @[BusWrapper.scala 40:48]
  wire  subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_4_clock; // @[BusWrapper.scala 40:48]
  wire  subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_4_reset; // @[BusWrapper.scala 40:48]
  wire  subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_3_clock; // @[BusWrapper.scala 40:48]
  wire  subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_3_reset; // @[BusWrapper.scala 40:48]
  wire  subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_1_clock; // @[BusWrapper.scala 40:48]
  wire  subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_1_reset; // @[BusWrapper.scala 40:48]
  wire  subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_0_clock; // @[BusWrapper.scala 40:48]
  wire  subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_0_reset; // @[BusWrapper.scala 40:48]
  wire  subsystem_sbus_clock_groups_auto_out_3_member_subsystem_l2_1_clock; // @[BusWrapper.scala 40:48]
  wire  subsystem_sbus_clock_groups_auto_out_3_member_subsystem_l2_1_reset; // @[BusWrapper.scala 40:48]
  wire  subsystem_sbus_clock_groups_auto_out_3_member_subsystem_l2_0_clock; // @[BusWrapper.scala 40:48]
  wire  subsystem_sbus_clock_groups_auto_out_3_member_subsystem_l2_0_reset; // @[BusWrapper.scala 40:48]
  wire  subsystem_sbus_clock_groups_auto_out_2_member_subsystem_fbus_0_clock; // @[BusWrapper.scala 40:48]
  wire  subsystem_sbus_clock_groups_auto_out_2_member_subsystem_fbus_0_reset; // @[BusWrapper.scala 40:48]
  wire  subsystem_sbus_clock_groups_auto_out_1_member_subsystem_cbus_0_clock; // @[BusWrapper.scala 40:48]
  wire  subsystem_sbus_clock_groups_auto_out_1_member_subsystem_cbus_0_reset; // @[BusWrapper.scala 40:48]
  wire  subsystem_sbus_clock_groups_auto_out_0_member_subsystem_sbus_0_clock; // @[BusWrapper.scala 40:48]
  wire  subsystem_sbus_clock_groups_auto_out_0_member_subsystem_sbus_0_reset; // @[BusWrapper.scala 40:48]
  wire  clockGroup_auto_in_member_subsystem_sbus_0_clock;
  wire  clockGroup_auto_in_member_subsystem_sbus_0_reset;
  wire  clockGroup_auto_out_clock;
  wire  clockGroup_auto_out_reset;
  wire  fixedClockNode_auto_in_clock; // @[ClockGroup.scala 108:107]
  wire  fixedClockNode_auto_in_reset; // @[ClockGroup.scala 108:107]
  wire  fixedClockNode_auto_out_1_clock; // @[ClockGroup.scala 108:107]
  wire  fixedClockNode_auto_out_1_reset; // @[ClockGroup.scala 108:107]
  wire  fixedClockNode_auto_out_0_clock; // @[ClockGroup.scala 108:107]
  wire  fixedClockNode_auto_out_0_reset; // @[ClockGroup.scala 108:107]
  wire  system_bus_xbar_clock; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_reset; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_1_a_ready; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_1_a_valid; // @[SystemBus.scala 41:43]
  wire [2:0] system_bus_xbar_auto_in_1_a_bits_opcode; // @[SystemBus.scala 41:43]
  wire [2:0] system_bus_xbar_auto_in_1_a_bits_param; // @[SystemBus.scala 41:43]
  wire [3:0] system_bus_xbar_auto_in_1_a_bits_size; // @[SystemBus.scala 41:43]
  wire [1:0] system_bus_xbar_auto_in_1_a_bits_source; // @[SystemBus.scala 41:43]
  wire [31:0] system_bus_xbar_auto_in_1_a_bits_address; // @[SystemBus.scala 41:43]
  wire [7:0] system_bus_xbar_auto_in_1_a_bits_mask; // @[SystemBus.scala 41:43]
  wire [63:0] system_bus_xbar_auto_in_1_a_bits_data; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_1_a_bits_corrupt; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_1_b_ready; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_1_b_valid; // @[SystemBus.scala 41:43]
  wire [1:0] system_bus_xbar_auto_in_1_b_bits_param; // @[SystemBus.scala 41:43]
  wire [31:0] system_bus_xbar_auto_in_1_b_bits_address; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_1_c_ready; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_1_c_valid; // @[SystemBus.scala 41:43]
  wire [2:0] system_bus_xbar_auto_in_1_c_bits_opcode; // @[SystemBus.scala 41:43]
  wire [2:0] system_bus_xbar_auto_in_1_c_bits_param; // @[SystemBus.scala 41:43]
  wire [3:0] system_bus_xbar_auto_in_1_c_bits_size; // @[SystemBus.scala 41:43]
  wire [1:0] system_bus_xbar_auto_in_1_c_bits_source; // @[SystemBus.scala 41:43]
  wire [31:0] system_bus_xbar_auto_in_1_c_bits_address; // @[SystemBus.scala 41:43]
  wire [63:0] system_bus_xbar_auto_in_1_c_bits_data; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_1_d_ready; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_1_d_valid; // @[SystemBus.scala 41:43]
  wire [2:0] system_bus_xbar_auto_in_1_d_bits_opcode; // @[SystemBus.scala 41:43]
  wire [1:0] system_bus_xbar_auto_in_1_d_bits_param; // @[SystemBus.scala 41:43]
  wire [3:0] system_bus_xbar_auto_in_1_d_bits_size; // @[SystemBus.scala 41:43]
  wire [1:0] system_bus_xbar_auto_in_1_d_bits_source; // @[SystemBus.scala 41:43]
  wire [1:0] system_bus_xbar_auto_in_1_d_bits_sink; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_1_d_bits_denied; // @[SystemBus.scala 41:43]
  wire [63:0] system_bus_xbar_auto_in_1_d_bits_data; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_1_d_bits_corrupt; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_1_e_valid; // @[SystemBus.scala 41:43]
  wire [1:0] system_bus_xbar_auto_in_1_e_bits_sink; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_0_a_ready; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_0_a_valid; // @[SystemBus.scala 41:43]
  wire [2:0] system_bus_xbar_auto_in_0_a_bits_opcode; // @[SystemBus.scala 41:43]
  wire [2:0] system_bus_xbar_auto_in_0_a_bits_param; // @[SystemBus.scala 41:43]
  wire [3:0] system_bus_xbar_auto_in_0_a_bits_size; // @[SystemBus.scala 41:43]
  wire [3:0] system_bus_xbar_auto_in_0_a_bits_source; // @[SystemBus.scala 41:43]
  wire [31:0] system_bus_xbar_auto_in_0_a_bits_address; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_0_a_bits_user_amba_prot_bufferable; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_0_a_bits_user_amba_prot_modifiable; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_0_a_bits_user_amba_prot_readalloc; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_0_a_bits_user_amba_prot_writealloc; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_0_a_bits_user_amba_prot_privileged; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_0_a_bits_user_amba_prot_secure; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_0_a_bits_user_amba_prot_fetch; // @[SystemBus.scala 41:43]
  wire [7:0] system_bus_xbar_auto_in_0_a_bits_mask; // @[SystemBus.scala 41:43]
  wire [63:0] system_bus_xbar_auto_in_0_a_bits_data; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_0_a_bits_corrupt; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_0_d_ready; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_0_d_valid; // @[SystemBus.scala 41:43]
  wire [2:0] system_bus_xbar_auto_in_0_d_bits_opcode; // @[SystemBus.scala 41:43]
  wire [3:0] system_bus_xbar_auto_in_0_d_bits_size; // @[SystemBus.scala 41:43]
  wire [3:0] system_bus_xbar_auto_in_0_d_bits_source; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_0_d_bits_denied; // @[SystemBus.scala 41:43]
  wire [63:0] system_bus_xbar_auto_in_0_d_bits_data; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_in_0_d_bits_corrupt; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_2_a_ready; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_2_a_valid; // @[SystemBus.scala 41:43]
  wire [2:0] system_bus_xbar_auto_out_2_a_bits_opcode; // @[SystemBus.scala 41:43]
  wire [3:0] system_bus_xbar_auto_out_2_a_bits_size; // @[SystemBus.scala 41:43]
  wire [4:0] system_bus_xbar_auto_out_2_a_bits_source; // @[SystemBus.scala 41:43]
  wire [30:0] system_bus_xbar_auto_out_2_a_bits_address; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_2_a_bits_user_amba_prot_bufferable; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_2_a_bits_user_amba_prot_modifiable; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_2_a_bits_user_amba_prot_readalloc; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_2_a_bits_user_amba_prot_writealloc; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_2_a_bits_user_amba_prot_privileged; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_2_a_bits_user_amba_prot_secure; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_2_a_bits_user_amba_prot_fetch; // @[SystemBus.scala 41:43]
  wire [7:0] system_bus_xbar_auto_out_2_a_bits_mask; // @[SystemBus.scala 41:43]
  wire [63:0] system_bus_xbar_auto_out_2_a_bits_data; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_2_d_ready; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_2_d_valid; // @[SystemBus.scala 41:43]
  wire [2:0] system_bus_xbar_auto_out_2_d_bits_opcode; // @[SystemBus.scala 41:43]
  wire [3:0] system_bus_xbar_auto_out_2_d_bits_size; // @[SystemBus.scala 41:43]
  wire [4:0] system_bus_xbar_auto_out_2_d_bits_source; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_2_d_bits_denied; // @[SystemBus.scala 41:43]
  wire [63:0] system_bus_xbar_auto_out_2_d_bits_data; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_2_d_bits_corrupt; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_1_a_ready; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_1_a_valid; // @[SystemBus.scala 41:43]
  wire [2:0] system_bus_xbar_auto_out_1_a_bits_opcode; // @[SystemBus.scala 41:43]
  wire [2:0] system_bus_xbar_auto_out_1_a_bits_param; // @[SystemBus.scala 41:43]
  wire [2:0] system_bus_xbar_auto_out_1_a_bits_size; // @[SystemBus.scala 41:43]
  wire [4:0] system_bus_xbar_auto_out_1_a_bits_source; // @[SystemBus.scala 41:43]
  wire [31:0] system_bus_xbar_auto_out_1_a_bits_address; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_1_a_bits_user_amba_prot_bufferable; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_1_a_bits_user_amba_prot_modifiable; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_1_a_bits_user_amba_prot_readalloc; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_1_a_bits_user_amba_prot_writealloc; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_1_a_bits_user_amba_prot_privileged; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_1_a_bits_user_amba_prot_secure; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_1_a_bits_user_amba_prot_fetch; // @[SystemBus.scala 41:43]
  wire [7:0] system_bus_xbar_auto_out_1_a_bits_mask; // @[SystemBus.scala 41:43]
  wire [63:0] system_bus_xbar_auto_out_1_a_bits_data; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_1_b_ready; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_1_b_valid; // @[SystemBus.scala 41:43]
  wire [1:0] system_bus_xbar_auto_out_1_b_bits_param; // @[SystemBus.scala 41:43]
  wire [31:0] system_bus_xbar_auto_out_1_b_bits_address; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_1_c_ready; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_1_c_valid; // @[SystemBus.scala 41:43]
  wire [2:0] system_bus_xbar_auto_out_1_c_bits_opcode; // @[SystemBus.scala 41:43]
  wire [2:0] system_bus_xbar_auto_out_1_c_bits_param; // @[SystemBus.scala 41:43]
  wire [2:0] system_bus_xbar_auto_out_1_c_bits_size; // @[SystemBus.scala 41:43]
  wire [4:0] system_bus_xbar_auto_out_1_c_bits_source; // @[SystemBus.scala 41:43]
  wire [31:0] system_bus_xbar_auto_out_1_c_bits_address; // @[SystemBus.scala 41:43]
  wire [63:0] system_bus_xbar_auto_out_1_c_bits_data; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_1_d_ready; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_1_d_valid; // @[SystemBus.scala 41:43]
  wire [2:0] system_bus_xbar_auto_out_1_d_bits_opcode; // @[SystemBus.scala 41:43]
  wire [1:0] system_bus_xbar_auto_out_1_d_bits_param; // @[SystemBus.scala 41:43]
  wire [2:0] system_bus_xbar_auto_out_1_d_bits_size; // @[SystemBus.scala 41:43]
  wire [4:0] system_bus_xbar_auto_out_1_d_bits_source; // @[SystemBus.scala 41:43]
  wire [1:0] system_bus_xbar_auto_out_1_d_bits_sink; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_1_d_bits_denied; // @[SystemBus.scala 41:43]
  wire [63:0] system_bus_xbar_auto_out_1_d_bits_data; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_1_d_bits_corrupt; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_1_e_valid; // @[SystemBus.scala 41:43]
  wire [1:0] system_bus_xbar_auto_out_1_e_bits_sink; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_0_a_ready; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_0_a_valid; // @[SystemBus.scala 41:43]
  wire [2:0] system_bus_xbar_auto_out_0_a_bits_opcode; // @[SystemBus.scala 41:43]
  wire [2:0] system_bus_xbar_auto_out_0_a_bits_param; // @[SystemBus.scala 41:43]
  wire [3:0] system_bus_xbar_auto_out_0_a_bits_size; // @[SystemBus.scala 41:43]
  wire [4:0] system_bus_xbar_auto_out_0_a_bits_source; // @[SystemBus.scala 41:43]
  wire [27:0] system_bus_xbar_auto_out_0_a_bits_address; // @[SystemBus.scala 41:43]
  wire [7:0] system_bus_xbar_auto_out_0_a_bits_mask; // @[SystemBus.scala 41:43]
  wire [63:0] system_bus_xbar_auto_out_0_a_bits_data; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_0_a_bits_corrupt; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_0_d_ready; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_0_d_valid; // @[SystemBus.scala 41:43]
  wire [2:0] system_bus_xbar_auto_out_0_d_bits_opcode; // @[SystemBus.scala 41:43]
  wire [1:0] system_bus_xbar_auto_out_0_d_bits_param; // @[SystemBus.scala 41:43]
  wire [3:0] system_bus_xbar_auto_out_0_d_bits_size; // @[SystemBus.scala 41:43]
  wire [4:0] system_bus_xbar_auto_out_0_d_bits_source; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_0_d_bits_sink; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_0_d_bits_denied; // @[SystemBus.scala 41:43]
  wire [63:0] system_bus_xbar_auto_out_0_d_bits_data; // @[SystemBus.scala 41:43]
  wire  system_bus_xbar_auto_out_0_d_bits_corrupt; // @[SystemBus.scala 41:43]
  wire  fixer_clock; // @[FIFOFixer.scala 146:27]
  wire  fixer_reset; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_1_a_ready; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_1_a_valid; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_in_1_a_bits_opcode; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_in_1_a_bits_param; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_in_1_a_bits_size; // @[FIFOFixer.scala 146:27]
  wire [1:0] fixer_auto_in_1_a_bits_source; // @[FIFOFixer.scala 146:27]
  wire [31:0] fixer_auto_in_1_a_bits_address; // @[FIFOFixer.scala 146:27]
  wire [7:0] fixer_auto_in_1_a_bits_mask; // @[FIFOFixer.scala 146:27]
  wire [63:0] fixer_auto_in_1_a_bits_data; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_1_a_bits_corrupt; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_1_b_ready; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_1_b_valid; // @[FIFOFixer.scala 146:27]
  wire [1:0] fixer_auto_in_1_b_bits_param; // @[FIFOFixer.scala 146:27]
  wire [31:0] fixer_auto_in_1_b_bits_address; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_1_c_ready; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_1_c_valid; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_in_1_c_bits_opcode; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_in_1_c_bits_param; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_in_1_c_bits_size; // @[FIFOFixer.scala 146:27]
  wire [1:0] fixer_auto_in_1_c_bits_source; // @[FIFOFixer.scala 146:27]
  wire [31:0] fixer_auto_in_1_c_bits_address; // @[FIFOFixer.scala 146:27]
  wire [63:0] fixer_auto_in_1_c_bits_data; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_1_d_ready; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_1_d_valid; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_in_1_d_bits_opcode; // @[FIFOFixer.scala 146:27]
  wire [1:0] fixer_auto_in_1_d_bits_param; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_in_1_d_bits_size; // @[FIFOFixer.scala 146:27]
  wire [1:0] fixer_auto_in_1_d_bits_source; // @[FIFOFixer.scala 146:27]
  wire [1:0] fixer_auto_in_1_d_bits_sink; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_1_d_bits_denied; // @[FIFOFixer.scala 146:27]
  wire [63:0] fixer_auto_in_1_d_bits_data; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_1_d_bits_corrupt; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_1_e_valid; // @[FIFOFixer.scala 146:27]
  wire [1:0] fixer_auto_in_1_e_bits_sink; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_0_a_ready; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_0_a_valid; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_in_0_a_bits_opcode; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_in_0_a_bits_param; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_in_0_a_bits_size; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_in_0_a_bits_source; // @[FIFOFixer.scala 146:27]
  wire [31:0] fixer_auto_in_0_a_bits_address; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_0_a_bits_user_amba_prot_bufferable; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_0_a_bits_user_amba_prot_modifiable; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_0_a_bits_user_amba_prot_readalloc; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_0_a_bits_user_amba_prot_writealloc; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_0_a_bits_user_amba_prot_privileged; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_0_a_bits_user_amba_prot_secure; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_0_a_bits_user_amba_prot_fetch; // @[FIFOFixer.scala 146:27]
  wire [7:0] fixer_auto_in_0_a_bits_mask; // @[FIFOFixer.scala 146:27]
  wire [63:0] fixer_auto_in_0_a_bits_data; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_0_a_bits_corrupt; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_0_d_ready; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_0_d_valid; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_in_0_d_bits_opcode; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_in_0_d_bits_size; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_in_0_d_bits_source; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_0_d_bits_denied; // @[FIFOFixer.scala 146:27]
  wire [63:0] fixer_auto_in_0_d_bits_data; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_0_d_bits_corrupt; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_1_a_ready; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_1_a_valid; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_out_1_a_bits_opcode; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_out_1_a_bits_param; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_out_1_a_bits_size; // @[FIFOFixer.scala 146:27]
  wire [1:0] fixer_auto_out_1_a_bits_source; // @[FIFOFixer.scala 146:27]
  wire [31:0] fixer_auto_out_1_a_bits_address; // @[FIFOFixer.scala 146:27]
  wire [7:0] fixer_auto_out_1_a_bits_mask; // @[FIFOFixer.scala 146:27]
  wire [63:0] fixer_auto_out_1_a_bits_data; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_1_a_bits_corrupt; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_1_b_ready; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_1_b_valid; // @[FIFOFixer.scala 146:27]
  wire [1:0] fixer_auto_out_1_b_bits_param; // @[FIFOFixer.scala 146:27]
  wire [31:0] fixer_auto_out_1_b_bits_address; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_1_c_ready; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_1_c_valid; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_out_1_c_bits_opcode; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_out_1_c_bits_param; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_out_1_c_bits_size; // @[FIFOFixer.scala 146:27]
  wire [1:0] fixer_auto_out_1_c_bits_source; // @[FIFOFixer.scala 146:27]
  wire [31:0] fixer_auto_out_1_c_bits_address; // @[FIFOFixer.scala 146:27]
  wire [63:0] fixer_auto_out_1_c_bits_data; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_1_d_ready; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_1_d_valid; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_out_1_d_bits_opcode; // @[FIFOFixer.scala 146:27]
  wire [1:0] fixer_auto_out_1_d_bits_param; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_out_1_d_bits_size; // @[FIFOFixer.scala 146:27]
  wire [1:0] fixer_auto_out_1_d_bits_source; // @[FIFOFixer.scala 146:27]
  wire [1:0] fixer_auto_out_1_d_bits_sink; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_1_d_bits_denied; // @[FIFOFixer.scala 146:27]
  wire [63:0] fixer_auto_out_1_d_bits_data; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_1_d_bits_corrupt; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_1_e_valid; // @[FIFOFixer.scala 146:27]
  wire [1:0] fixer_auto_out_1_e_bits_sink; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_0_a_ready; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_0_a_valid; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_out_0_a_bits_opcode; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_out_0_a_bits_param; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_out_0_a_bits_size; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_out_0_a_bits_source; // @[FIFOFixer.scala 146:27]
  wire [31:0] fixer_auto_out_0_a_bits_address; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_0_a_bits_user_amba_prot_bufferable; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_0_a_bits_user_amba_prot_modifiable; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_0_a_bits_user_amba_prot_readalloc; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_0_a_bits_user_amba_prot_writealloc; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_0_a_bits_user_amba_prot_privileged; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_0_a_bits_user_amba_prot_secure; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_0_a_bits_user_amba_prot_fetch; // @[FIFOFixer.scala 146:27]
  wire [7:0] fixer_auto_out_0_a_bits_mask; // @[FIFOFixer.scala 146:27]
  wire [63:0] fixer_auto_out_0_a_bits_data; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_0_a_bits_corrupt; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_0_d_ready; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_0_d_valid; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_out_0_d_bits_opcode; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_out_0_d_bits_size; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_out_0_d_bits_source; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_0_d_bits_denied; // @[FIFOFixer.scala 146:27]
  wire [63:0] fixer_auto_out_0_d_bits_data; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_0_d_bits_corrupt; // @[FIFOFixer.scala 146:27]
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_ready;
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_valid;
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_opcode;
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_param;
  wire [3:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_size;
  wire [4:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_source;
  wire [27:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_address;
  wire [7:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_mask;
  wire [63:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_data;
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_corrupt;
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_ready;
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_valid;
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_opcode;
  wire [1:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_param;
  wire [3:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_size;
  wire [4:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_source;
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_sink;
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_denied;
  wire [63:0] coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_data;
  wire  coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_corrupt;
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_ready;
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_valid;
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_opcode;
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_param;
  wire [3:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_size;
  wire [4:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_source;
  wire [27:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_address;
  wire [7:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_mask;
  wire [63:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_data;
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_corrupt;
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_ready;
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_valid;
  wire [2:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_opcode;
  wire [1:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_param;
  wire [3:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_size;
  wire [4:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_source;
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_sink;
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_denied;
  wire [63:0] coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_data;
  wire  coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_corrupt;
  wire  coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_ready;
  wire  coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_valid;
  wire [2:0] coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_opcode;
  wire [2:0] coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_param;
  wire [3:0] coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_size;
  wire [4:0] coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_source;
  wire [27:0] coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_address;
  wire [7:0] coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_mask;
  wire [63:0] coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_data;
  wire  coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_corrupt;
  wire  coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_ready;
  wire  coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_valid;
  wire [2:0] coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_opcode;
  wire [1:0] coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_param;
  wire [3:0] coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_size;
  wire [4:0] coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_source;
  wire  coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_sink;
  wire  coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_denied;
  wire [63:0] coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_data;
  wire  coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_corrupt;
  wire  coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_ready;
  wire  coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_valid;
  wire [2:0] coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_opcode;
  wire [2:0] coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_param;
  wire [3:0] coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_size;
  wire [4:0] coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_source;
  wire [27:0] coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_address;
  wire [7:0] coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_mask;
  wire [63:0] coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_data;
  wire  coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_corrupt;
  wire  coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_ready;
  wire  coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_valid;
  wire [2:0] coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_opcode;
  wire [1:0] coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_param;
  wire [3:0] coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_size;
  wire [4:0] coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_source;
  wire  coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_sink;
  wire  coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_denied;
  wire [63:0] coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_data;
  wire  coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_corrupt;
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_ready;
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_valid;
  wire [2:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_opcode;
  wire [2:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_param;
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_size;
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_source;
  wire [31:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_address;
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_bufferable;
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_modifiable;
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_readalloc;
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_writealloc;
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_privileged;
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_secure;
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_fetch;
  wire [7:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_mask;
  wire [63:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_data;
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_corrupt;
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_ready;
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_valid;
  wire [2:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_opcode;
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_size;
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_source;
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_denied;
  wire [63:0] coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_data;
  wire  coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_corrupt;
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_ready;
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_valid;
  wire [2:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_opcode;
  wire [2:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_param;
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_size;
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_source;
  wire [31:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_address;
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_bufferable;
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_modifiable;
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_readalloc;
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_writealloc;
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_privileged;
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_secure;
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_fetch;
  wire [7:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_mask;
  wire [63:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_data;
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_corrupt;
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_ready;
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_valid;
  wire [2:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_opcode;
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_size;
  wire [3:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_source;
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_denied;
  wire [63:0] coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_data;
  wire  coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_corrupt;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_ready;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_valid;
  wire [2:0] coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_opcode;
  wire [2:0] coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_param;
  wire [3:0] coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_size;
  wire [3:0] coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_source;
  wire [31:0] coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_address;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_user_amba_prot_bufferable;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_user_amba_prot_modifiable;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_user_amba_prot_readalloc;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_user_amba_prot_writealloc;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_user_amba_prot_privileged;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_user_amba_prot_secure;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_user_amba_prot_fetch;
  wire [7:0] coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_mask;
  wire [63:0] coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_data;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_corrupt;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_ready;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_valid;
  wire [2:0] coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_bits_opcode;
  wire [3:0] coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_bits_size;
  wire [3:0] coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_bits_source;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_bits_denied;
  wire [63:0] coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_bits_data;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_bits_corrupt;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_ready;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_valid;
  wire [2:0] coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_opcode;
  wire [2:0] coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_param;
  wire [3:0] coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_size;
  wire [3:0] coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_source;
  wire [31:0] coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_address;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_user_amba_prot_bufferable;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_user_amba_prot_modifiable;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_user_amba_prot_readalloc;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_user_amba_prot_writealloc;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_user_amba_prot_privileged;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_user_amba_prot_secure;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_user_amba_prot_fetch;
  wire [7:0] coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_mask;
  wire [63:0] coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_data;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_corrupt;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_ready;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_valid;
  wire [2:0] coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_bits_opcode;
  wire [3:0] coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_bits_size;
  wire [3:0] coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_bits_source;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_bits_denied;
  wire [63:0] coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_bits_data;
  wire  coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_bits_corrupt;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_ready;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_valid;
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_opcode;
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_param;
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_size;
  wire [4:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_source;
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_address;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_bufferable;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_modifiable;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_readalloc;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_writealloc;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_privileged;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_secure;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_fetch;
  wire [7:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_mask;
  wire [63:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_data;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_b_ready;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_b_valid;
  wire [1:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_b_bits_param;
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_b_bits_address;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_c_ready;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_c_valid;
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_opcode;
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_param;
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_size;
  wire [4:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_source;
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_address;
  wire [63:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_data;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_d_ready;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_d_valid;
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_opcode;
  wire [1:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_param;
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_size;
  wire [4:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_source;
  wire [1:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_sink;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_denied;
  wire [63:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_data;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_corrupt;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_in_e_valid;
  wire [1:0] coupler_to_bus_named_subsystem_l2_auto_widget_in_e_bits_sink;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_ready;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_valid;
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_opcode;
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_param;
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_size;
  wire [4:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_source;
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_address;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_bufferable;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_modifiable;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_readalloc;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_writealloc;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_privileged;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_secure;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_fetch;
  wire [7:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_mask;
  wire [63:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_data;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_b_ready;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_b_valid;
  wire [1:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_b_bits_param;
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_b_bits_address;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_c_ready;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_c_valid;
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_opcode;
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_param;
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_size;
  wire [4:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_source;
  wire [31:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_address;
  wire [63:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_data;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_d_ready;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_d_valid;
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_opcode;
  wire [1:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_param;
  wire [2:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_size;
  wire [4:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_source;
  wire [1:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_sink;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_denied;
  wire [63:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_data;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_corrupt;
  wire  coupler_to_bus_named_subsystem_l2_auto_widget_out_e_valid;
  wire [1:0] coupler_to_bus_named_subsystem_l2_auto_widget_out_e_bits_sink;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_in_a_ready;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_in_a_valid;
  wire [2:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_opcode;
  wire [2:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_param;
  wire [2:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_size;
  wire [4:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_source;
  wire [31:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_address;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_user_amba_prot_bufferable;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_user_amba_prot_modifiable;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_user_amba_prot_readalloc;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_user_amba_prot_writealloc;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_user_amba_prot_privileged;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_user_amba_prot_secure;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_user_amba_prot_fetch;
  wire [7:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_mask;
  wire [63:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_data;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_in_b_ready;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_in_b_valid;
  wire [1:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_b_bits_param;
  wire [31:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_b_bits_address;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_in_c_ready;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_in_c_valid;
  wire [2:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_c_bits_opcode;
  wire [2:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_c_bits_param;
  wire [2:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_c_bits_size;
  wire [4:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_c_bits_source;
  wire [31:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_c_bits_address;
  wire [63:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_c_bits_data;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_in_d_ready;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_in_d_valid;
  wire [2:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_opcode;
  wire [1:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_param;
  wire [2:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_size;
  wire [4:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_source;
  wire [1:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_sink;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_denied;
  wire [63:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_data;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_corrupt;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_in_e_valid;
  wire [1:0] coupler_to_bus_named_subsystem_l2_widget_auto_in_e_bits_sink;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_out_a_ready;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_out_a_valid;
  wire [2:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_opcode;
  wire [2:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_param;
  wire [2:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_size;
  wire [4:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_source;
  wire [31:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_address;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_user_amba_prot_bufferable;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_user_amba_prot_modifiable;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_user_amba_prot_readalloc;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_user_amba_prot_writealloc;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_user_amba_prot_privileged;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_user_amba_prot_secure;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_user_amba_prot_fetch;
  wire [7:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_mask;
  wire [63:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_data;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_out_b_ready;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_out_b_valid;
  wire [1:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_b_bits_param;
  wire [31:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_b_bits_address;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_out_c_ready;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_out_c_valid;
  wire [2:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_c_bits_opcode;
  wire [2:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_c_bits_param;
  wire [2:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_c_bits_size;
  wire [4:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_c_bits_source;
  wire [31:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_c_bits_address;
  wire [63:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_c_bits_data;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_out_d_ready;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_out_d_valid;
  wire [2:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_opcode;
  wire [1:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_param;
  wire [2:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_size;
  wire [4:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_source;
  wire [1:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_sink;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_denied;
  wire [63:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_data;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_corrupt;
  wire  coupler_to_bus_named_subsystem_l2_widget_auto_out_e_valid;
  wire [1:0] coupler_to_bus_named_subsystem_l2_widget_auto_out_e_bits_sink;
  wire  coupler_from_tile_auto_tl_master_xing_in_a_ready;
  wire  coupler_from_tile_auto_tl_master_xing_in_a_valid;
  wire [2:0] coupler_from_tile_auto_tl_master_xing_in_a_bits_opcode;
  wire [2:0] coupler_from_tile_auto_tl_master_xing_in_a_bits_param;
  wire [3:0] coupler_from_tile_auto_tl_master_xing_in_a_bits_size;
  wire [1:0] coupler_from_tile_auto_tl_master_xing_in_a_bits_source;
  wire [31:0] coupler_from_tile_auto_tl_master_xing_in_a_bits_address;
  wire [7:0] coupler_from_tile_auto_tl_master_xing_in_a_bits_mask;
  wire [63:0] coupler_from_tile_auto_tl_master_xing_in_a_bits_data;
  wire  coupler_from_tile_auto_tl_master_xing_in_a_bits_corrupt;
  wire  coupler_from_tile_auto_tl_master_xing_in_b_ready;
  wire  coupler_from_tile_auto_tl_master_xing_in_b_valid;
  wire [1:0] coupler_from_tile_auto_tl_master_xing_in_b_bits_param;
  wire [31:0] coupler_from_tile_auto_tl_master_xing_in_b_bits_address;
  wire  coupler_from_tile_auto_tl_master_xing_in_c_ready;
  wire  coupler_from_tile_auto_tl_master_xing_in_c_valid;
  wire [2:0] coupler_from_tile_auto_tl_master_xing_in_c_bits_opcode;
  wire [2:0] coupler_from_tile_auto_tl_master_xing_in_c_bits_param;
  wire [3:0] coupler_from_tile_auto_tl_master_xing_in_c_bits_size;
  wire [1:0] coupler_from_tile_auto_tl_master_xing_in_c_bits_source;
  wire [31:0] coupler_from_tile_auto_tl_master_xing_in_c_bits_address;
  wire [63:0] coupler_from_tile_auto_tl_master_xing_in_c_bits_data;
  wire  coupler_from_tile_auto_tl_master_xing_in_d_ready;
  wire  coupler_from_tile_auto_tl_master_xing_in_d_valid;
  wire [2:0] coupler_from_tile_auto_tl_master_xing_in_d_bits_opcode;
  wire [1:0] coupler_from_tile_auto_tl_master_xing_in_d_bits_param;
  wire [3:0] coupler_from_tile_auto_tl_master_xing_in_d_bits_size;
  wire [1:0] coupler_from_tile_auto_tl_master_xing_in_d_bits_source;
  wire [1:0] coupler_from_tile_auto_tl_master_xing_in_d_bits_sink;
  wire  coupler_from_tile_auto_tl_master_xing_in_d_bits_denied;
  wire [63:0] coupler_from_tile_auto_tl_master_xing_in_d_bits_data;
  wire  coupler_from_tile_auto_tl_master_xing_in_d_bits_corrupt;
  wire  coupler_from_tile_auto_tl_master_xing_in_e_valid;
  wire [1:0] coupler_from_tile_auto_tl_master_xing_in_e_bits_sink;
  wire  coupler_from_tile_auto_tl_out_a_ready;
  wire  coupler_from_tile_auto_tl_out_a_valid;
  wire [2:0] coupler_from_tile_auto_tl_out_a_bits_opcode;
  wire [2:0] coupler_from_tile_auto_tl_out_a_bits_param;
  wire [3:0] coupler_from_tile_auto_tl_out_a_bits_size;
  wire [1:0] coupler_from_tile_auto_tl_out_a_bits_source;
  wire [31:0] coupler_from_tile_auto_tl_out_a_bits_address;
  wire [7:0] coupler_from_tile_auto_tl_out_a_bits_mask;
  wire [63:0] coupler_from_tile_auto_tl_out_a_bits_data;
  wire  coupler_from_tile_auto_tl_out_a_bits_corrupt;
  wire  coupler_from_tile_auto_tl_out_b_ready;
  wire  coupler_from_tile_auto_tl_out_b_valid;
  wire [1:0] coupler_from_tile_auto_tl_out_b_bits_param;
  wire [31:0] coupler_from_tile_auto_tl_out_b_bits_address;
  wire  coupler_from_tile_auto_tl_out_c_ready;
  wire  coupler_from_tile_auto_tl_out_c_valid;
  wire [2:0] coupler_from_tile_auto_tl_out_c_bits_opcode;
  wire [2:0] coupler_from_tile_auto_tl_out_c_bits_param;
  wire [3:0] coupler_from_tile_auto_tl_out_c_bits_size;
  wire [1:0] coupler_from_tile_auto_tl_out_c_bits_source;
  wire [31:0] coupler_from_tile_auto_tl_out_c_bits_address;
  wire [63:0] coupler_from_tile_auto_tl_out_c_bits_data;
  wire  coupler_from_tile_auto_tl_out_d_ready;
  wire  coupler_from_tile_auto_tl_out_d_valid;
  wire [2:0] coupler_from_tile_auto_tl_out_d_bits_opcode;
  wire [1:0] coupler_from_tile_auto_tl_out_d_bits_param;
  wire [3:0] coupler_from_tile_auto_tl_out_d_bits_size;
  wire [1:0] coupler_from_tile_auto_tl_out_d_bits_source;
  wire [1:0] coupler_from_tile_auto_tl_out_d_bits_sink;
  wire  coupler_from_tile_auto_tl_out_d_bits_denied;
  wire [63:0] coupler_from_tile_auto_tl_out_d_bits_data;
  wire  coupler_from_tile_auto_tl_out_d_bits_corrupt;
  wire  coupler_from_tile_auto_tl_out_e_valid;
  wire [1:0] coupler_from_tile_auto_tl_out_e_bits_sink;
  wire  coupler_to_port_named_mmio_port_axi4_clock; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_reset; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_ready; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_valid; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_id; // @[LazyModule.scala 445:27]
  wire [30:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_addr; // @[LazyModule.scala 445:27]
  wire [7:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_len; // @[LazyModule.scala 445:27]
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_size; // @[LazyModule.scala 445:27]
  wire [1:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_burst; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_lock; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_cache; // @[LazyModule.scala 445:27]
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_prot; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_qos; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_ready; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_valid; // @[LazyModule.scala 445:27]
  wire [63:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_data; // @[LazyModule.scala 445:27]
  wire [7:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_strb; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_last; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_ready; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_valid; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_id; // @[LazyModule.scala 445:27]
  wire [1:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_resp; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_ready; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_valid; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_id; // @[LazyModule.scala 445:27]
  wire [30:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_addr; // @[LazyModule.scala 445:27]
  wire [7:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_len; // @[LazyModule.scala 445:27]
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_size; // @[LazyModule.scala 445:27]
  wire [1:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_burst; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_lock; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_cache; // @[LazyModule.scala 445:27]
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_prot; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_qos; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_ready; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_valid; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_id; // @[LazyModule.scala 445:27]
  wire [63:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_data; // @[LazyModule.scala 445:27]
  wire [1:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_resp; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_last; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_ready; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_valid; // @[LazyModule.scala 445:27]
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_opcode; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_size; // @[LazyModule.scala 445:27]
  wire [4:0] coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_source; // @[LazyModule.scala 445:27]
  wire [30:0] coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_address; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_user_amba_prot_secure; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 445:27]
  wire [7:0] coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_mask; // @[LazyModule.scala 445:27]
  wire [63:0] coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_data; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_ready; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_valid; // @[LazyModule.scala 445:27]
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_bits_opcode; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_bits_size; // @[LazyModule.scala 445:27]
  wire [4:0] coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_bits_source; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_bits_denied; // @[LazyModule.scala 445:27]
  wire [63:0] coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_bits_data; // @[LazyModule.scala 445:27]
  wire  coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_bits_corrupt; // @[LazyModule.scala 445:27]
  ClockGroupAggregator subsystem_sbus_clock_groups ( // @[BusWrapper.scala 40:48]
    .auto_in_member_subsystem_sbus_5_clock(subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_5_clock),
    .auto_in_member_subsystem_sbus_5_reset(subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_5_reset),
    .auto_in_member_subsystem_sbus_4_clock(subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_4_clock),
    .auto_in_member_subsystem_sbus_4_reset(subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_4_reset),
    .auto_in_member_subsystem_sbus_3_clock(subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_3_clock),
    .auto_in_member_subsystem_sbus_3_reset(subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_3_reset),
    .auto_in_member_subsystem_sbus_1_clock(subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_1_clock),
    .auto_in_member_subsystem_sbus_1_reset(subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_1_reset),
    .auto_in_member_subsystem_sbus_0_clock(subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_0_clock),
    .auto_in_member_subsystem_sbus_0_reset(subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_0_reset),
    .auto_out_3_member_subsystem_l2_1_clock(subsystem_sbus_clock_groups_auto_out_3_member_subsystem_l2_1_clock),
    .auto_out_3_member_subsystem_l2_1_reset(subsystem_sbus_clock_groups_auto_out_3_member_subsystem_l2_1_reset),
    .auto_out_3_member_subsystem_l2_0_clock(subsystem_sbus_clock_groups_auto_out_3_member_subsystem_l2_0_clock),
    .auto_out_3_member_subsystem_l2_0_reset(subsystem_sbus_clock_groups_auto_out_3_member_subsystem_l2_0_reset),
    .auto_out_2_member_subsystem_fbus_0_clock(subsystem_sbus_clock_groups_auto_out_2_member_subsystem_fbus_0_clock),
    .auto_out_2_member_subsystem_fbus_0_reset(subsystem_sbus_clock_groups_auto_out_2_member_subsystem_fbus_0_reset),
    .auto_out_1_member_subsystem_cbus_0_clock(subsystem_sbus_clock_groups_auto_out_1_member_subsystem_cbus_0_clock),
    .auto_out_1_member_subsystem_cbus_0_reset(subsystem_sbus_clock_groups_auto_out_1_member_subsystem_cbus_0_reset),
    .auto_out_0_member_subsystem_sbus_0_clock(subsystem_sbus_clock_groups_auto_out_0_member_subsystem_sbus_0_clock),
    .auto_out_0_member_subsystem_sbus_0_reset(subsystem_sbus_clock_groups_auto_out_0_member_subsystem_sbus_0_reset)
  );
  FixedClockBroadcast fixedClockNode ( // @[ClockGroup.scala 108:107]
    .auto_in_clock(fixedClockNode_auto_in_clock),
    .auto_in_reset(fixedClockNode_auto_in_reset),
    .auto_out_1_clock(fixedClockNode_auto_out_1_clock),
    .auto_out_1_reset(fixedClockNode_auto_out_1_reset),
    .auto_out_0_clock(fixedClockNode_auto_out_0_clock),
    .auto_out_0_reset(fixedClockNode_auto_out_0_reset)
  );
  TLXbar system_bus_xbar ( // @[SystemBus.scala 41:43]
    .clock(system_bus_xbar_clock),
    .reset(system_bus_xbar_reset),
    .auto_in_1_a_ready(system_bus_xbar_auto_in_1_a_ready),
    .auto_in_1_a_valid(system_bus_xbar_auto_in_1_a_valid),
    .auto_in_1_a_bits_opcode(system_bus_xbar_auto_in_1_a_bits_opcode),
    .auto_in_1_a_bits_param(system_bus_xbar_auto_in_1_a_bits_param),
    .auto_in_1_a_bits_size(system_bus_xbar_auto_in_1_a_bits_size),
    .auto_in_1_a_bits_source(system_bus_xbar_auto_in_1_a_bits_source),
    .auto_in_1_a_bits_address(system_bus_xbar_auto_in_1_a_bits_address),
    .auto_in_1_a_bits_mask(system_bus_xbar_auto_in_1_a_bits_mask),
    .auto_in_1_a_bits_data(system_bus_xbar_auto_in_1_a_bits_data),
    .auto_in_1_a_bits_corrupt(system_bus_xbar_auto_in_1_a_bits_corrupt),
    .auto_in_1_b_ready(system_bus_xbar_auto_in_1_b_ready),
    .auto_in_1_b_valid(system_bus_xbar_auto_in_1_b_valid),
    .auto_in_1_b_bits_param(system_bus_xbar_auto_in_1_b_bits_param),
    .auto_in_1_b_bits_address(system_bus_xbar_auto_in_1_b_bits_address),
    .auto_in_1_c_ready(system_bus_xbar_auto_in_1_c_ready),
    .auto_in_1_c_valid(system_bus_xbar_auto_in_1_c_valid),
    .auto_in_1_c_bits_opcode(system_bus_xbar_auto_in_1_c_bits_opcode),
    .auto_in_1_c_bits_param(system_bus_xbar_auto_in_1_c_bits_param),
    .auto_in_1_c_bits_size(system_bus_xbar_auto_in_1_c_bits_size),
    .auto_in_1_c_bits_source(system_bus_xbar_auto_in_1_c_bits_source),
    .auto_in_1_c_bits_address(system_bus_xbar_auto_in_1_c_bits_address),
    .auto_in_1_c_bits_data(system_bus_xbar_auto_in_1_c_bits_data),
    .auto_in_1_d_ready(system_bus_xbar_auto_in_1_d_ready),
    .auto_in_1_d_valid(system_bus_xbar_auto_in_1_d_valid),
    .auto_in_1_d_bits_opcode(system_bus_xbar_auto_in_1_d_bits_opcode),
    .auto_in_1_d_bits_param(system_bus_xbar_auto_in_1_d_bits_param),
    .auto_in_1_d_bits_size(system_bus_xbar_auto_in_1_d_bits_size),
    .auto_in_1_d_bits_source(system_bus_xbar_auto_in_1_d_bits_source),
    .auto_in_1_d_bits_sink(system_bus_xbar_auto_in_1_d_bits_sink),
    .auto_in_1_d_bits_denied(system_bus_xbar_auto_in_1_d_bits_denied),
    .auto_in_1_d_bits_data(system_bus_xbar_auto_in_1_d_bits_data),
    .auto_in_1_d_bits_corrupt(system_bus_xbar_auto_in_1_d_bits_corrupt),
    .auto_in_1_e_valid(system_bus_xbar_auto_in_1_e_valid),
    .auto_in_1_e_bits_sink(system_bus_xbar_auto_in_1_e_bits_sink),
    .auto_in_0_a_ready(system_bus_xbar_auto_in_0_a_ready),
    .auto_in_0_a_valid(system_bus_xbar_auto_in_0_a_valid),
    .auto_in_0_a_bits_opcode(system_bus_xbar_auto_in_0_a_bits_opcode),
    .auto_in_0_a_bits_param(system_bus_xbar_auto_in_0_a_bits_param),
    .auto_in_0_a_bits_size(system_bus_xbar_auto_in_0_a_bits_size),
    .auto_in_0_a_bits_source(system_bus_xbar_auto_in_0_a_bits_source),
    .auto_in_0_a_bits_address(system_bus_xbar_auto_in_0_a_bits_address),
    .auto_in_0_a_bits_user_amba_prot_bufferable(system_bus_xbar_auto_in_0_a_bits_user_amba_prot_bufferable),
    .auto_in_0_a_bits_user_amba_prot_modifiable(system_bus_xbar_auto_in_0_a_bits_user_amba_prot_modifiable),
    .auto_in_0_a_bits_user_amba_prot_readalloc(system_bus_xbar_auto_in_0_a_bits_user_amba_prot_readalloc),
    .auto_in_0_a_bits_user_amba_prot_writealloc(system_bus_xbar_auto_in_0_a_bits_user_amba_prot_writealloc),
    .auto_in_0_a_bits_user_amba_prot_privileged(system_bus_xbar_auto_in_0_a_bits_user_amba_prot_privileged),
    .auto_in_0_a_bits_user_amba_prot_secure(system_bus_xbar_auto_in_0_a_bits_user_amba_prot_secure),
    .auto_in_0_a_bits_user_amba_prot_fetch(system_bus_xbar_auto_in_0_a_bits_user_amba_prot_fetch),
    .auto_in_0_a_bits_mask(system_bus_xbar_auto_in_0_a_bits_mask),
    .auto_in_0_a_bits_data(system_bus_xbar_auto_in_0_a_bits_data),
    .auto_in_0_a_bits_corrupt(system_bus_xbar_auto_in_0_a_bits_corrupt),
    .auto_in_0_d_ready(system_bus_xbar_auto_in_0_d_ready),
    .auto_in_0_d_valid(system_bus_xbar_auto_in_0_d_valid),
    .auto_in_0_d_bits_opcode(system_bus_xbar_auto_in_0_d_bits_opcode),
    .auto_in_0_d_bits_size(system_bus_xbar_auto_in_0_d_bits_size),
    .auto_in_0_d_bits_source(system_bus_xbar_auto_in_0_d_bits_source),
    .auto_in_0_d_bits_denied(system_bus_xbar_auto_in_0_d_bits_denied),
    .auto_in_0_d_bits_data(system_bus_xbar_auto_in_0_d_bits_data),
    .auto_in_0_d_bits_corrupt(system_bus_xbar_auto_in_0_d_bits_corrupt),
    .auto_out_2_a_ready(system_bus_xbar_auto_out_2_a_ready),
    .auto_out_2_a_valid(system_bus_xbar_auto_out_2_a_valid),
    .auto_out_2_a_bits_opcode(system_bus_xbar_auto_out_2_a_bits_opcode),
    .auto_out_2_a_bits_size(system_bus_xbar_auto_out_2_a_bits_size),
    .auto_out_2_a_bits_source(system_bus_xbar_auto_out_2_a_bits_source),
    .auto_out_2_a_bits_address(system_bus_xbar_auto_out_2_a_bits_address),
    .auto_out_2_a_bits_user_amba_prot_bufferable(system_bus_xbar_auto_out_2_a_bits_user_amba_prot_bufferable),
    .auto_out_2_a_bits_user_amba_prot_modifiable(system_bus_xbar_auto_out_2_a_bits_user_amba_prot_modifiable),
    .auto_out_2_a_bits_user_amba_prot_readalloc(system_bus_xbar_auto_out_2_a_bits_user_amba_prot_readalloc),
    .auto_out_2_a_bits_user_amba_prot_writealloc(system_bus_xbar_auto_out_2_a_bits_user_amba_prot_writealloc),
    .auto_out_2_a_bits_user_amba_prot_privileged(system_bus_xbar_auto_out_2_a_bits_user_amba_prot_privileged),
    .auto_out_2_a_bits_user_amba_prot_secure(system_bus_xbar_auto_out_2_a_bits_user_amba_prot_secure),
    .auto_out_2_a_bits_user_amba_prot_fetch(system_bus_xbar_auto_out_2_a_bits_user_amba_prot_fetch),
    .auto_out_2_a_bits_mask(system_bus_xbar_auto_out_2_a_bits_mask),
    .auto_out_2_a_bits_data(system_bus_xbar_auto_out_2_a_bits_data),
    .auto_out_2_d_ready(system_bus_xbar_auto_out_2_d_ready),
    .auto_out_2_d_valid(system_bus_xbar_auto_out_2_d_valid),
    .auto_out_2_d_bits_opcode(system_bus_xbar_auto_out_2_d_bits_opcode),
    .auto_out_2_d_bits_size(system_bus_xbar_auto_out_2_d_bits_size),
    .auto_out_2_d_bits_source(system_bus_xbar_auto_out_2_d_bits_source),
    .auto_out_2_d_bits_denied(system_bus_xbar_auto_out_2_d_bits_denied),
    .auto_out_2_d_bits_data(system_bus_xbar_auto_out_2_d_bits_data),
    .auto_out_2_d_bits_corrupt(system_bus_xbar_auto_out_2_d_bits_corrupt),
    .auto_out_1_a_ready(system_bus_xbar_auto_out_1_a_ready),
    .auto_out_1_a_valid(system_bus_xbar_auto_out_1_a_valid),
    .auto_out_1_a_bits_opcode(system_bus_xbar_auto_out_1_a_bits_opcode),
    .auto_out_1_a_bits_param(system_bus_xbar_auto_out_1_a_bits_param),
    .auto_out_1_a_bits_size(system_bus_xbar_auto_out_1_a_bits_size),
    .auto_out_1_a_bits_source(system_bus_xbar_auto_out_1_a_bits_source),
    .auto_out_1_a_bits_address(system_bus_xbar_auto_out_1_a_bits_address),
    .auto_out_1_a_bits_user_amba_prot_bufferable(system_bus_xbar_auto_out_1_a_bits_user_amba_prot_bufferable),
    .auto_out_1_a_bits_user_amba_prot_modifiable(system_bus_xbar_auto_out_1_a_bits_user_amba_prot_modifiable),
    .auto_out_1_a_bits_user_amba_prot_readalloc(system_bus_xbar_auto_out_1_a_bits_user_amba_prot_readalloc),
    .auto_out_1_a_bits_user_amba_prot_writealloc(system_bus_xbar_auto_out_1_a_bits_user_amba_prot_writealloc),
    .auto_out_1_a_bits_user_amba_prot_privileged(system_bus_xbar_auto_out_1_a_bits_user_amba_prot_privileged),
    .auto_out_1_a_bits_user_amba_prot_secure(system_bus_xbar_auto_out_1_a_bits_user_amba_prot_secure),
    .auto_out_1_a_bits_user_amba_prot_fetch(system_bus_xbar_auto_out_1_a_bits_user_amba_prot_fetch),
    .auto_out_1_a_bits_mask(system_bus_xbar_auto_out_1_a_bits_mask),
    .auto_out_1_a_bits_data(system_bus_xbar_auto_out_1_a_bits_data),
    .auto_out_1_b_ready(system_bus_xbar_auto_out_1_b_ready),
    .auto_out_1_b_valid(system_bus_xbar_auto_out_1_b_valid),
    .auto_out_1_b_bits_param(system_bus_xbar_auto_out_1_b_bits_param),
    .auto_out_1_b_bits_address(system_bus_xbar_auto_out_1_b_bits_address),
    .auto_out_1_c_ready(system_bus_xbar_auto_out_1_c_ready),
    .auto_out_1_c_valid(system_bus_xbar_auto_out_1_c_valid),
    .auto_out_1_c_bits_opcode(system_bus_xbar_auto_out_1_c_bits_opcode),
    .auto_out_1_c_bits_param(system_bus_xbar_auto_out_1_c_bits_param),
    .auto_out_1_c_bits_size(system_bus_xbar_auto_out_1_c_bits_size),
    .auto_out_1_c_bits_source(system_bus_xbar_auto_out_1_c_bits_source),
    .auto_out_1_c_bits_address(system_bus_xbar_auto_out_1_c_bits_address),
    .auto_out_1_c_bits_data(system_bus_xbar_auto_out_1_c_bits_data),
    .auto_out_1_d_ready(system_bus_xbar_auto_out_1_d_ready),
    .auto_out_1_d_valid(system_bus_xbar_auto_out_1_d_valid),
    .auto_out_1_d_bits_opcode(system_bus_xbar_auto_out_1_d_bits_opcode),
    .auto_out_1_d_bits_param(system_bus_xbar_auto_out_1_d_bits_param),
    .auto_out_1_d_bits_size(system_bus_xbar_auto_out_1_d_bits_size),
    .auto_out_1_d_bits_source(system_bus_xbar_auto_out_1_d_bits_source),
    .auto_out_1_d_bits_sink(system_bus_xbar_auto_out_1_d_bits_sink),
    .auto_out_1_d_bits_denied(system_bus_xbar_auto_out_1_d_bits_denied),
    .auto_out_1_d_bits_data(system_bus_xbar_auto_out_1_d_bits_data),
    .auto_out_1_d_bits_corrupt(system_bus_xbar_auto_out_1_d_bits_corrupt),
    .auto_out_1_e_valid(system_bus_xbar_auto_out_1_e_valid),
    .auto_out_1_e_bits_sink(system_bus_xbar_auto_out_1_e_bits_sink),
    .auto_out_0_a_ready(system_bus_xbar_auto_out_0_a_ready),
    .auto_out_0_a_valid(system_bus_xbar_auto_out_0_a_valid),
    .auto_out_0_a_bits_opcode(system_bus_xbar_auto_out_0_a_bits_opcode),
    .auto_out_0_a_bits_param(system_bus_xbar_auto_out_0_a_bits_param),
    .auto_out_0_a_bits_size(system_bus_xbar_auto_out_0_a_bits_size),
    .auto_out_0_a_bits_source(system_bus_xbar_auto_out_0_a_bits_source),
    .auto_out_0_a_bits_address(system_bus_xbar_auto_out_0_a_bits_address),
    .auto_out_0_a_bits_mask(system_bus_xbar_auto_out_0_a_bits_mask),
    .auto_out_0_a_bits_data(system_bus_xbar_auto_out_0_a_bits_data),
    .auto_out_0_a_bits_corrupt(system_bus_xbar_auto_out_0_a_bits_corrupt),
    .auto_out_0_d_ready(system_bus_xbar_auto_out_0_d_ready),
    .auto_out_0_d_valid(system_bus_xbar_auto_out_0_d_valid),
    .auto_out_0_d_bits_opcode(system_bus_xbar_auto_out_0_d_bits_opcode),
    .auto_out_0_d_bits_param(system_bus_xbar_auto_out_0_d_bits_param),
    .auto_out_0_d_bits_size(system_bus_xbar_auto_out_0_d_bits_size),
    .auto_out_0_d_bits_source(system_bus_xbar_auto_out_0_d_bits_source),
    .auto_out_0_d_bits_sink(system_bus_xbar_auto_out_0_d_bits_sink),
    .auto_out_0_d_bits_denied(system_bus_xbar_auto_out_0_d_bits_denied),
    .auto_out_0_d_bits_data(system_bus_xbar_auto_out_0_d_bits_data),
    .auto_out_0_d_bits_corrupt(system_bus_xbar_auto_out_0_d_bits_corrupt)
  );
  TLFIFOFixer fixer ( // @[FIFOFixer.scala 146:27]
    .clock(fixer_clock),
    .reset(fixer_reset),
    .auto_in_1_a_ready(fixer_auto_in_1_a_ready),
    .auto_in_1_a_valid(fixer_auto_in_1_a_valid),
    .auto_in_1_a_bits_opcode(fixer_auto_in_1_a_bits_opcode),
    .auto_in_1_a_bits_param(fixer_auto_in_1_a_bits_param),
    .auto_in_1_a_bits_size(fixer_auto_in_1_a_bits_size),
    .auto_in_1_a_bits_source(fixer_auto_in_1_a_bits_source),
    .auto_in_1_a_bits_address(fixer_auto_in_1_a_bits_address),
    .auto_in_1_a_bits_mask(fixer_auto_in_1_a_bits_mask),
    .auto_in_1_a_bits_data(fixer_auto_in_1_a_bits_data),
    .auto_in_1_a_bits_corrupt(fixer_auto_in_1_a_bits_corrupt),
    .auto_in_1_b_ready(fixer_auto_in_1_b_ready),
    .auto_in_1_b_valid(fixer_auto_in_1_b_valid),
    .auto_in_1_b_bits_param(fixer_auto_in_1_b_bits_param),
    .auto_in_1_b_bits_address(fixer_auto_in_1_b_bits_address),
    .auto_in_1_c_ready(fixer_auto_in_1_c_ready),
    .auto_in_1_c_valid(fixer_auto_in_1_c_valid),
    .auto_in_1_c_bits_opcode(fixer_auto_in_1_c_bits_opcode),
    .auto_in_1_c_bits_param(fixer_auto_in_1_c_bits_param),
    .auto_in_1_c_bits_size(fixer_auto_in_1_c_bits_size),
    .auto_in_1_c_bits_source(fixer_auto_in_1_c_bits_source),
    .auto_in_1_c_bits_address(fixer_auto_in_1_c_bits_address),
    .auto_in_1_c_bits_data(fixer_auto_in_1_c_bits_data),
    .auto_in_1_d_ready(fixer_auto_in_1_d_ready),
    .auto_in_1_d_valid(fixer_auto_in_1_d_valid),
    .auto_in_1_d_bits_opcode(fixer_auto_in_1_d_bits_opcode),
    .auto_in_1_d_bits_param(fixer_auto_in_1_d_bits_param),
    .auto_in_1_d_bits_size(fixer_auto_in_1_d_bits_size),
    .auto_in_1_d_bits_source(fixer_auto_in_1_d_bits_source),
    .auto_in_1_d_bits_sink(fixer_auto_in_1_d_bits_sink),
    .auto_in_1_d_bits_denied(fixer_auto_in_1_d_bits_denied),
    .auto_in_1_d_bits_data(fixer_auto_in_1_d_bits_data),
    .auto_in_1_d_bits_corrupt(fixer_auto_in_1_d_bits_corrupt),
    .auto_in_1_e_valid(fixer_auto_in_1_e_valid),
    .auto_in_1_e_bits_sink(fixer_auto_in_1_e_bits_sink),
    .auto_in_0_a_ready(fixer_auto_in_0_a_ready),
    .auto_in_0_a_valid(fixer_auto_in_0_a_valid),
    .auto_in_0_a_bits_opcode(fixer_auto_in_0_a_bits_opcode),
    .auto_in_0_a_bits_param(fixer_auto_in_0_a_bits_param),
    .auto_in_0_a_bits_size(fixer_auto_in_0_a_bits_size),
    .auto_in_0_a_bits_source(fixer_auto_in_0_a_bits_source),
    .auto_in_0_a_bits_address(fixer_auto_in_0_a_bits_address),
    .auto_in_0_a_bits_user_amba_prot_bufferable(fixer_auto_in_0_a_bits_user_amba_prot_bufferable),
    .auto_in_0_a_bits_user_amba_prot_modifiable(fixer_auto_in_0_a_bits_user_amba_prot_modifiable),
    .auto_in_0_a_bits_user_amba_prot_readalloc(fixer_auto_in_0_a_bits_user_amba_prot_readalloc),
    .auto_in_0_a_bits_user_amba_prot_writealloc(fixer_auto_in_0_a_bits_user_amba_prot_writealloc),
    .auto_in_0_a_bits_user_amba_prot_privileged(fixer_auto_in_0_a_bits_user_amba_prot_privileged),
    .auto_in_0_a_bits_user_amba_prot_secure(fixer_auto_in_0_a_bits_user_amba_prot_secure),
    .auto_in_0_a_bits_user_amba_prot_fetch(fixer_auto_in_0_a_bits_user_amba_prot_fetch),
    .auto_in_0_a_bits_mask(fixer_auto_in_0_a_bits_mask),
    .auto_in_0_a_bits_data(fixer_auto_in_0_a_bits_data),
    .auto_in_0_a_bits_corrupt(fixer_auto_in_0_a_bits_corrupt),
    .auto_in_0_d_ready(fixer_auto_in_0_d_ready),
    .auto_in_0_d_valid(fixer_auto_in_0_d_valid),
    .auto_in_0_d_bits_opcode(fixer_auto_in_0_d_bits_opcode),
    .auto_in_0_d_bits_size(fixer_auto_in_0_d_bits_size),
    .auto_in_0_d_bits_source(fixer_auto_in_0_d_bits_source),
    .auto_in_0_d_bits_denied(fixer_auto_in_0_d_bits_denied),
    .auto_in_0_d_bits_data(fixer_auto_in_0_d_bits_data),
    .auto_in_0_d_bits_corrupt(fixer_auto_in_0_d_bits_corrupt),
    .auto_out_1_a_ready(fixer_auto_out_1_a_ready),
    .auto_out_1_a_valid(fixer_auto_out_1_a_valid),
    .auto_out_1_a_bits_opcode(fixer_auto_out_1_a_bits_opcode),
    .auto_out_1_a_bits_param(fixer_auto_out_1_a_bits_param),
    .auto_out_1_a_bits_size(fixer_auto_out_1_a_bits_size),
    .auto_out_1_a_bits_source(fixer_auto_out_1_a_bits_source),
    .auto_out_1_a_bits_address(fixer_auto_out_1_a_bits_address),
    .auto_out_1_a_bits_mask(fixer_auto_out_1_a_bits_mask),
    .auto_out_1_a_bits_data(fixer_auto_out_1_a_bits_data),
    .auto_out_1_a_bits_corrupt(fixer_auto_out_1_a_bits_corrupt),
    .auto_out_1_b_ready(fixer_auto_out_1_b_ready),
    .auto_out_1_b_valid(fixer_auto_out_1_b_valid),
    .auto_out_1_b_bits_param(fixer_auto_out_1_b_bits_param),
    .auto_out_1_b_bits_address(fixer_auto_out_1_b_bits_address),
    .auto_out_1_c_ready(fixer_auto_out_1_c_ready),
    .auto_out_1_c_valid(fixer_auto_out_1_c_valid),
    .auto_out_1_c_bits_opcode(fixer_auto_out_1_c_bits_opcode),
    .auto_out_1_c_bits_param(fixer_auto_out_1_c_bits_param),
    .auto_out_1_c_bits_size(fixer_auto_out_1_c_bits_size),
    .auto_out_1_c_bits_source(fixer_auto_out_1_c_bits_source),
    .auto_out_1_c_bits_address(fixer_auto_out_1_c_bits_address),
    .auto_out_1_c_bits_data(fixer_auto_out_1_c_bits_data),
    .auto_out_1_d_ready(fixer_auto_out_1_d_ready),
    .auto_out_1_d_valid(fixer_auto_out_1_d_valid),
    .auto_out_1_d_bits_opcode(fixer_auto_out_1_d_bits_opcode),
    .auto_out_1_d_bits_param(fixer_auto_out_1_d_bits_param),
    .auto_out_1_d_bits_size(fixer_auto_out_1_d_bits_size),
    .auto_out_1_d_bits_source(fixer_auto_out_1_d_bits_source),
    .auto_out_1_d_bits_sink(fixer_auto_out_1_d_bits_sink),
    .auto_out_1_d_bits_denied(fixer_auto_out_1_d_bits_denied),
    .auto_out_1_d_bits_data(fixer_auto_out_1_d_bits_data),
    .auto_out_1_d_bits_corrupt(fixer_auto_out_1_d_bits_corrupt),
    .auto_out_1_e_valid(fixer_auto_out_1_e_valid),
    .auto_out_1_e_bits_sink(fixer_auto_out_1_e_bits_sink),
    .auto_out_0_a_ready(fixer_auto_out_0_a_ready),
    .auto_out_0_a_valid(fixer_auto_out_0_a_valid),
    .auto_out_0_a_bits_opcode(fixer_auto_out_0_a_bits_opcode),
    .auto_out_0_a_bits_param(fixer_auto_out_0_a_bits_param),
    .auto_out_0_a_bits_size(fixer_auto_out_0_a_bits_size),
    .auto_out_0_a_bits_source(fixer_auto_out_0_a_bits_source),
    .auto_out_0_a_bits_address(fixer_auto_out_0_a_bits_address),
    .auto_out_0_a_bits_user_amba_prot_bufferable(fixer_auto_out_0_a_bits_user_amba_prot_bufferable),
    .auto_out_0_a_bits_user_amba_prot_modifiable(fixer_auto_out_0_a_bits_user_amba_prot_modifiable),
    .auto_out_0_a_bits_user_amba_prot_readalloc(fixer_auto_out_0_a_bits_user_amba_prot_readalloc),
    .auto_out_0_a_bits_user_amba_prot_writealloc(fixer_auto_out_0_a_bits_user_amba_prot_writealloc),
    .auto_out_0_a_bits_user_amba_prot_privileged(fixer_auto_out_0_a_bits_user_amba_prot_privileged),
    .auto_out_0_a_bits_user_amba_prot_secure(fixer_auto_out_0_a_bits_user_amba_prot_secure),
    .auto_out_0_a_bits_user_amba_prot_fetch(fixer_auto_out_0_a_bits_user_amba_prot_fetch),
    .auto_out_0_a_bits_mask(fixer_auto_out_0_a_bits_mask),
    .auto_out_0_a_bits_data(fixer_auto_out_0_a_bits_data),
    .auto_out_0_a_bits_corrupt(fixer_auto_out_0_a_bits_corrupt),
    .auto_out_0_d_ready(fixer_auto_out_0_d_ready),
    .auto_out_0_d_valid(fixer_auto_out_0_d_valid),
    .auto_out_0_d_bits_opcode(fixer_auto_out_0_d_bits_opcode),
    .auto_out_0_d_bits_size(fixer_auto_out_0_d_bits_size),
    .auto_out_0_d_bits_source(fixer_auto_out_0_d_bits_source),
    .auto_out_0_d_bits_denied(fixer_auto_out_0_d_bits_denied),
    .auto_out_0_d_bits_data(fixer_auto_out_0_d_bits_data),
    .auto_out_0_d_bits_corrupt(fixer_auto_out_0_d_bits_corrupt)
  );
  TLInterconnectCoupler_4 coupler_to_port_named_mmio_port_axi4 ( // @[LazyModule.scala 445:27]
    .clock(coupler_to_port_named_mmio_port_axi4_clock),
    .reset(coupler_to_port_named_mmio_port_axi4_reset),
    .auto_axi4buf_out_aw_ready(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_ready),
    .auto_axi4buf_out_aw_valid(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_valid),
    .auto_axi4buf_out_aw_bits_id(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_id),
    .auto_axi4buf_out_aw_bits_addr(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_addr),
    .auto_axi4buf_out_aw_bits_len(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_len),
    .auto_axi4buf_out_aw_bits_size(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_size),
    .auto_axi4buf_out_aw_bits_burst(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_burst),
    .auto_axi4buf_out_aw_bits_lock(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_lock),
    .auto_axi4buf_out_aw_bits_cache(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_cache),
    .auto_axi4buf_out_aw_bits_prot(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_prot),
    .auto_axi4buf_out_aw_bits_qos(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_qos),
    .auto_axi4buf_out_w_ready(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_ready),
    .auto_axi4buf_out_w_valid(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_valid),
    .auto_axi4buf_out_w_bits_data(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_data),
    .auto_axi4buf_out_w_bits_strb(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_strb),
    .auto_axi4buf_out_w_bits_last(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_last),
    .auto_axi4buf_out_b_ready(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_ready),
    .auto_axi4buf_out_b_valid(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_valid),
    .auto_axi4buf_out_b_bits_id(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_id),
    .auto_axi4buf_out_b_bits_resp(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_resp),
    .auto_axi4buf_out_ar_ready(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_ready),
    .auto_axi4buf_out_ar_valid(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_valid),
    .auto_axi4buf_out_ar_bits_id(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_id),
    .auto_axi4buf_out_ar_bits_addr(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_addr),
    .auto_axi4buf_out_ar_bits_len(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_len),
    .auto_axi4buf_out_ar_bits_size(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_size),
    .auto_axi4buf_out_ar_bits_burst(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_burst),
    .auto_axi4buf_out_ar_bits_lock(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_lock),
    .auto_axi4buf_out_ar_bits_cache(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_cache),
    .auto_axi4buf_out_ar_bits_prot(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_prot),
    .auto_axi4buf_out_ar_bits_qos(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_qos),
    .auto_axi4buf_out_r_ready(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_ready),
    .auto_axi4buf_out_r_valid(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_valid),
    .auto_axi4buf_out_r_bits_id(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_id),
    .auto_axi4buf_out_r_bits_data(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_data),
    .auto_axi4buf_out_r_bits_resp(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_resp),
    .auto_axi4buf_out_r_bits_last(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_last),
    .auto_tl_in_a_ready(coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_ready),
    .auto_tl_in_a_valid(coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_valid),
    .auto_tl_in_a_bits_opcode(coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_opcode),
    .auto_tl_in_a_bits_size(coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_size),
    .auto_tl_in_a_bits_source(coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_source),
    .auto_tl_in_a_bits_address(coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_address),
    .auto_tl_in_a_bits_user_amba_prot_bufferable(
      coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_user_amba_prot_bufferable),
    .auto_tl_in_a_bits_user_amba_prot_modifiable(
      coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_user_amba_prot_modifiable),
    .auto_tl_in_a_bits_user_amba_prot_readalloc(
      coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_user_amba_prot_readalloc),
    .auto_tl_in_a_bits_user_amba_prot_writealloc(
      coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_user_amba_prot_writealloc),
    .auto_tl_in_a_bits_user_amba_prot_privileged(
      coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_user_amba_prot_privileged),
    .auto_tl_in_a_bits_user_amba_prot_secure(
      coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_user_amba_prot_secure),
    .auto_tl_in_a_bits_user_amba_prot_fetch(coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_user_amba_prot_fetch)
      ,
    .auto_tl_in_a_bits_mask(coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_mask),
    .auto_tl_in_a_bits_data(coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_data),
    .auto_tl_in_d_ready(coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_ready),
    .auto_tl_in_d_valid(coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_valid),
    .auto_tl_in_d_bits_opcode(coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_bits_opcode),
    .auto_tl_in_d_bits_size(coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_bits_size),
    .auto_tl_in_d_bits_source(coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_bits_source),
    .auto_tl_in_d_bits_denied(coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_bits_denied),
    .auto_tl_in_d_bits_data(coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_bits_data),
    .auto_tl_in_d_bits_corrupt(coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_bits_corrupt)
  );
  assign clockGroup_auto_out_clock = clockGroup_auto_in_member_subsystem_sbus_0_clock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign clockGroup_auto_out_reset = clockGroup_auto_in_member_subsystem_sbus_0_reset; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_ready =
    coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_valid =
    coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_opcode =
    coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_param =
    coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_param; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_size =
    coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_source =
    coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_sink =
    coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_sink; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_denied =
    coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_denied; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_data =
    coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_corrupt =
    coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_corrupt; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_valid =
    coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_opcode =
    coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_param =
    coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_size =
    coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_source =
    coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_address =
    coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_mask =
    coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_data =
    coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_corrupt =
    coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_corrupt; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_ready =
    coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_ready =
    coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_ready; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_valid =
    coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_valid; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_opcode =
    coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_opcode; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_param =
    coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_param; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_size =
    coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_size; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_source =
    coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_source; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_sink =
    coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_sink; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_denied =
    coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_denied; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_data =
    coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_data; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_corrupt =
    coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_bits_corrupt; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_valid =
    coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_valid; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_opcode =
    coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_param =
    coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_size =
    coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_source =
    coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_address =
    coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_mask =
    coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_data =
    coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_corrupt =
    coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_bits_corrupt; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_ready =
    coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_ready; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_valid =
    coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_valid; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_opcode =
    coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_opcode; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_param =
    coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_param; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_size =
    coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_size; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_source =
    coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_source; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_address =
    coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_address; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_mask =
    coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_mask; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_data =
    coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_data; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_in_a_bits_corrupt =
    coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_corrupt; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_in_d_ready =
    coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_ready; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_out_a_ready =
    coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_valid =
    coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_opcode =
    coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_param =
    coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_param; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_size =
    coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_source =
    coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_sink =
    coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_sink; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_denied =
    coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_denied; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_data =
    coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_widget_auto_out_d_bits_corrupt =
    coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_corrupt; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_ready =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_valid =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_bits_opcode =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_bits_size =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_bits_source =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_bits_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_bits_denied =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_bits_denied; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_bits_data =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_bits_corrupt =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_bits_corrupt; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_valid =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_opcode =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_param =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_size =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_source =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_address =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_user_amba_prot_bufferable =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_user_amba_prot_bufferable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_user_amba_prot_modifiable =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_user_amba_prot_modifiable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_user_amba_prot_readalloc =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_user_amba_prot_readalloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_user_amba_prot_writealloc =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_user_amba_prot_writealloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_user_amba_prot_privileged =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_user_amba_prot_privileged; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_user_amba_prot_secure =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_user_amba_prot_secure; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_user_amba_prot_fetch =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_user_amba_prot_fetch; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_mask =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_data =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_corrupt =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_corrupt; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_ready =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_valid =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_valid; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_opcode =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_opcode; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_param =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_param; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_size =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_size; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_source =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_source; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_address =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_address; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_bufferable =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_modifiable =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_readalloc =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_writealloc =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_privileged =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_secure =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_fetch =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_mask =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_mask; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_data =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_data; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_corrupt =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_bits_corrupt; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_ready =
    coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_ready; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_ready =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_ready; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_valid =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_valid; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_opcode =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_size =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_source =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_bits_source; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_denied =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_bits_denied; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_data =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_corrupt =
    coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_bits_corrupt; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_valid =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_opcode =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_param =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_size =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_source =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_address =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_user_amba_prot_bufferable =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_bufferable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_user_amba_prot_modifiable =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_modifiable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_user_amba_prot_readalloc =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_readalloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_user_amba_prot_writealloc =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_writealloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_user_amba_prot_privileged =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_privileged; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_user_amba_prot_secure =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_secure; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_user_amba_prot_fetch =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_fetch; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_mask =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_data =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_a_bits_corrupt =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_corrupt; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_in_d_ready =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_a_ready =
    coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_ready; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_valid =
    coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_valid; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_bits_opcode =
    coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_opcode; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_bits_size =
    coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_size; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_bits_source =
    coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_source; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_bits_denied =
    coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_denied; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_bits_data =
    coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_data; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_widget_auto_out_d_bits_corrupt =
    coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_corrupt; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_a_ready =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_a_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_b_valid =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_b_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_b_bits_param =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_b_bits_param; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_b_bits_address =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_b_bits_address; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_c_ready =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_c_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_d_valid =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_d_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_opcode =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_param =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_param; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_size =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_source =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_sink =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_sink; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_denied =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_denied; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_data =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_corrupt =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_corrupt; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_a_valid =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_a_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_opcode =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_param =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_size =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_source =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_address =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_user_amba_prot_bufferable =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_user_amba_prot_bufferable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_user_amba_prot_modifiable =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_user_amba_prot_modifiable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_user_amba_prot_readalloc =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_user_amba_prot_readalloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_user_amba_prot_writealloc =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_user_amba_prot_writealloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_user_amba_prot_privileged =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_user_amba_prot_privileged; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_user_amba_prot_secure =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_user_amba_prot_secure; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_user_amba_prot_fetch =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_user_amba_prot_fetch; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_mask =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_data =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_b_ready =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_b_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_c_valid =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_c_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_c_bits_opcode =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_c_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_c_bits_param =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_c_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_c_bits_size =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_c_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_c_bits_source =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_c_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_c_bits_address =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_c_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_c_bits_data =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_c_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_d_ready =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_d_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_e_valid =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_e_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_e_bits_sink =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_e_bits_sink; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_ready =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_a_ready; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_b_valid =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_b_valid; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_b_bits_param =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_b_bits_param; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_b_bits_address =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_b_bits_address; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_ready =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_c_ready; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_d_valid =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_d_valid; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_opcode =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_opcode; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_param =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_param; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_size =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_size; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_source =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_source; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_sink =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_sink; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_denied =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_denied; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_data =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_data; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_corrupt =
    coupler_to_bus_named_subsystem_l2_widget_auto_in_d_bits_corrupt; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_a_valid =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_a_valid; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_opcode =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_opcode; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_param =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_param; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_size =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_size; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_source =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_source; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_address =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_address; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_bufferable =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_modifiable =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_readalloc =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_writealloc =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_privileged =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_secure =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_fetch =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_mask =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_mask; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_data =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_a_bits_data; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_b_ready =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_b_ready; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_c_valid =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_c_valid; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_opcode =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_c_bits_opcode; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_param =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_c_bits_param; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_size =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_c_bits_size; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_source =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_c_bits_source; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_address =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_c_bits_address; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_data =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_c_bits_data; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_ready =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_d_ready; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_e_valid =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_e_valid; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_e_bits_sink =
    coupler_to_bus_named_subsystem_l2_widget_auto_out_e_bits_sink; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_a_valid =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_a_valid; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_opcode =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_opcode; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_param =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_param; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_size =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_size; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_source =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_source; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_address =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_address; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_user_amba_prot_bufferable =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_user_amba_prot_modifiable =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_user_amba_prot_readalloc =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_user_amba_prot_writealloc =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_user_amba_prot_privileged =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_user_amba_prot_secure =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_secure; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_user_amba_prot_fetch =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_mask =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_mask; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_a_bits_data =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_data; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_b_ready =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_b_ready; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_c_valid =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_c_valid; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_c_bits_opcode =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_opcode; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_c_bits_param =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_param; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_c_bits_size =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_size; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_c_bits_source =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_source; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_c_bits_address =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_address; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_c_bits_data =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_data; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_d_ready =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_d_ready; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_e_valid =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_e_valid; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_in_e_bits_sink =
    coupler_to_bus_named_subsystem_l2_auto_widget_in_e_bits_sink; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_a_ready =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_a_ready; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_b_valid =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_b_valid; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_b_bits_param =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_b_bits_param; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_b_bits_address =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_b_bits_address; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_c_ready =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_c_ready; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_d_valid =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_d_valid; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_opcode =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_opcode; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_param =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_param; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_size =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_size; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_source =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_source; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_sink =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_sink; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_denied =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_denied; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_data =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_data; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_widget_auto_out_d_bits_corrupt =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_corrupt; // @[LazyModule.scala 314:12]
  assign coupler_from_tile_auto_tl_master_xing_in_a_ready = coupler_from_tile_auto_tl_out_a_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_tile_auto_tl_master_xing_in_b_valid = coupler_from_tile_auto_tl_out_b_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_tile_auto_tl_master_xing_in_b_bits_param = coupler_from_tile_auto_tl_out_b_bits_param; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_tile_auto_tl_master_xing_in_b_bits_address = coupler_from_tile_auto_tl_out_b_bits_address; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_tile_auto_tl_master_xing_in_c_ready = coupler_from_tile_auto_tl_out_c_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_tile_auto_tl_master_xing_in_d_valid = coupler_from_tile_auto_tl_out_d_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_tile_auto_tl_master_xing_in_d_bits_opcode = coupler_from_tile_auto_tl_out_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_tile_auto_tl_master_xing_in_d_bits_param = coupler_from_tile_auto_tl_out_d_bits_param; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_tile_auto_tl_master_xing_in_d_bits_size = coupler_from_tile_auto_tl_out_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_tile_auto_tl_master_xing_in_d_bits_source = coupler_from_tile_auto_tl_out_d_bits_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_tile_auto_tl_master_xing_in_d_bits_sink = coupler_from_tile_auto_tl_out_d_bits_sink; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_tile_auto_tl_master_xing_in_d_bits_denied = coupler_from_tile_auto_tl_out_d_bits_denied; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_tile_auto_tl_master_xing_in_d_bits_data = coupler_from_tile_auto_tl_out_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_tile_auto_tl_master_xing_in_d_bits_corrupt = coupler_from_tile_auto_tl_out_d_bits_corrupt; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_tile_auto_tl_out_a_valid = coupler_from_tile_auto_tl_master_xing_in_a_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_out_a_bits_opcode = coupler_from_tile_auto_tl_master_xing_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_out_a_bits_param = coupler_from_tile_auto_tl_master_xing_in_a_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_out_a_bits_size = coupler_from_tile_auto_tl_master_xing_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_out_a_bits_source = coupler_from_tile_auto_tl_master_xing_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_out_a_bits_address = coupler_from_tile_auto_tl_master_xing_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_out_a_bits_mask = coupler_from_tile_auto_tl_master_xing_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_out_a_bits_data = coupler_from_tile_auto_tl_master_xing_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_out_a_bits_corrupt = coupler_from_tile_auto_tl_master_xing_in_a_bits_corrupt; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_out_b_ready = coupler_from_tile_auto_tl_master_xing_in_b_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_out_c_valid = coupler_from_tile_auto_tl_master_xing_in_c_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_out_c_bits_opcode = coupler_from_tile_auto_tl_master_xing_in_c_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_out_c_bits_param = coupler_from_tile_auto_tl_master_xing_in_c_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_out_c_bits_size = coupler_from_tile_auto_tl_master_xing_in_c_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_out_c_bits_source = coupler_from_tile_auto_tl_master_xing_in_c_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_out_c_bits_address = coupler_from_tile_auto_tl_master_xing_in_c_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_out_c_bits_data = coupler_from_tile_auto_tl_master_xing_in_c_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_out_d_ready = coupler_from_tile_auto_tl_master_xing_in_d_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_out_e_valid = coupler_from_tile_auto_tl_master_xing_in_e_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_out_e_bits_sink = coupler_from_tile_auto_tl_master_xing_in_e_bits_sink; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_valid =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_valid; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_id =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_id; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_addr =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_addr; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_len =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_len; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_size =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_size; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_burst =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_burst; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_lock =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_lock; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_cache =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_cache; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_prot =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_prot; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_qos =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_qos; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_valid =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_valid; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_data =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_data; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_strb =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_strb; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_last =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_last; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_ready =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_ready; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_valid =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_valid; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_id =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_id; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_addr =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_addr; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_len =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_len; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_size =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_size; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_burst =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_burst; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_lock =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_lock; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_cache =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_cache; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_prot =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_prot; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_qos =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_qos; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_ready =
    coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_ready; // @[LazyModule.scala 314:12]
  assign auto_coupler_from_tile_tl_master_xing_in_a_ready = coupler_from_tile_auto_tl_master_xing_in_a_ready; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_tile_tl_master_xing_in_b_valid = coupler_from_tile_auto_tl_master_xing_in_b_valid; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_tile_tl_master_xing_in_b_bits_param = coupler_from_tile_auto_tl_master_xing_in_b_bits_param; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_tile_tl_master_xing_in_b_bits_address =
    coupler_from_tile_auto_tl_master_xing_in_b_bits_address; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_tile_tl_master_xing_in_c_ready = coupler_from_tile_auto_tl_master_xing_in_c_ready; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_tile_tl_master_xing_in_d_valid = coupler_from_tile_auto_tl_master_xing_in_d_valid; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_opcode = coupler_from_tile_auto_tl_master_xing_in_d_bits_opcode
    ; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_param = coupler_from_tile_auto_tl_master_xing_in_d_bits_param; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_size = coupler_from_tile_auto_tl_master_xing_in_d_bits_size; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_source = coupler_from_tile_auto_tl_master_xing_in_d_bits_source
    ; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_sink = coupler_from_tile_auto_tl_master_xing_in_d_bits_sink; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_denied = coupler_from_tile_auto_tl_master_xing_in_d_bits_denied
    ; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_data = coupler_from_tile_auto_tl_master_xing_in_d_bits_data; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_tile_tl_master_xing_in_d_bits_corrupt =
    coupler_from_tile_auto_tl_master_xing_in_d_bits_corrupt; // @[LazyModule.scala 312:16]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_valid =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_a_valid; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_opcode =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_opcode; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_param =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_param; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_size =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_size; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_source =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_source; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_address =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_address; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_bufferable =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_modifiable =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_readalloc =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_writealloc =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_privileged =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_secure =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_user_amba_prot_fetch =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_mask =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_mask; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_a_bits_data =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_a_bits_data; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_b_ready =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_b_ready; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_valid =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_c_valid; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_opcode =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_opcode; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_param =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_param; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_size =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_size; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_source =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_source; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_address =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_address; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_c_bits_data =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_c_bits_data; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_d_ready =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_d_ready; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_e_valid =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_e_valid; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_l2_widget_out_e_bits_sink =
    coupler_to_bus_named_subsystem_l2_auto_widget_out_e_bits_sink; // @[LazyModule.scala 314:12]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_ready =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_ready; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_valid =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_valid; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_opcode =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_opcode; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_size =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_size; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_source =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_source; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_denied =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_denied; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_data =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_data; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_corrupt =
    coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_bits_corrupt; // @[LazyModule.scala 312:16]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_valid =
    coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_valid; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_opcode =
    coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_opcode; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_param =
    coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_param; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_size =
    coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_size; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_source =
    coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_source; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_address =
    coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_address; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_mask =
    coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_mask; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_data =
    coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_data; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_corrupt =
    coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_bits_corrupt; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_ready =
    coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_ready; // @[LazyModule.scala 314:12]
  assign auto_fixedClockNode_out_0_clock = fixedClockNode_auto_out_1_clock; // @[LazyModule.scala 314:12]
  assign auto_fixedClockNode_out_0_reset = fixedClockNode_auto_out_1_reset; // @[LazyModule.scala 314:12]
  assign auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_1_clock =
    subsystem_sbus_clock_groups_auto_out_3_member_subsystem_l2_1_clock; // @[LazyModule.scala 314:12]
  assign auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_1_reset =
    subsystem_sbus_clock_groups_auto_out_3_member_subsystem_l2_1_reset; // @[LazyModule.scala 314:12]
  assign auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_0_clock =
    subsystem_sbus_clock_groups_auto_out_3_member_subsystem_l2_0_clock; // @[LazyModule.scala 314:12]
  assign auto_subsystem_sbus_clock_groups_out_2_member_subsystem_l2_0_reset =
    subsystem_sbus_clock_groups_auto_out_3_member_subsystem_l2_0_reset; // @[LazyModule.scala 314:12]
  assign auto_subsystem_sbus_clock_groups_out_1_member_subsystem_fbus_0_clock =
    subsystem_sbus_clock_groups_auto_out_2_member_subsystem_fbus_0_clock; // @[LazyModule.scala 314:12]
  assign auto_subsystem_sbus_clock_groups_out_1_member_subsystem_fbus_0_reset =
    subsystem_sbus_clock_groups_auto_out_2_member_subsystem_fbus_0_reset; // @[LazyModule.scala 314:12]
  assign auto_subsystem_sbus_clock_groups_out_0_member_subsystem_cbus_0_clock =
    subsystem_sbus_clock_groups_auto_out_1_member_subsystem_cbus_0_clock; // @[LazyModule.scala 314:12]
  assign auto_subsystem_sbus_clock_groups_out_0_member_subsystem_cbus_0_reset =
    subsystem_sbus_clock_groups_auto_out_1_member_subsystem_cbus_0_reset; // @[LazyModule.scala 314:12]
  assign subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_5_clock =
    auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_5_clock; // @[LazyModule.scala 312:16]
  assign subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_5_reset =
    auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_5_reset; // @[LazyModule.scala 312:16]
  assign subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_4_clock =
    auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_4_clock; // @[LazyModule.scala 312:16]
  assign subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_4_reset =
    auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_4_reset; // @[LazyModule.scala 312:16]
  assign subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_3_clock =
    auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_3_clock; // @[LazyModule.scala 312:16]
  assign subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_3_reset =
    auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_3_reset; // @[LazyModule.scala 312:16]
  assign subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_1_clock =
    auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_1_clock; // @[LazyModule.scala 312:16]
  assign subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_1_reset =
    auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_1_reset; // @[LazyModule.scala 312:16]
  assign subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_0_clock =
    auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_0_clock; // @[LazyModule.scala 312:16]
  assign subsystem_sbus_clock_groups_auto_in_member_subsystem_sbus_0_reset =
    auto_subsystem_sbus_clock_groups_in_member_subsystem_sbus_0_reset; // @[LazyModule.scala 312:16]
  assign clockGroup_auto_in_member_subsystem_sbus_0_clock =
    subsystem_sbus_clock_groups_auto_out_0_member_subsystem_sbus_0_clock; // @[LazyModule.scala 301:16]
  assign clockGroup_auto_in_member_subsystem_sbus_0_reset =
    subsystem_sbus_clock_groups_auto_out_0_member_subsystem_sbus_0_reset; // @[LazyModule.scala 301:16]
  assign fixedClockNode_auto_in_clock = clockGroup_auto_out_clock; // @[LazyModule.scala 301:16]
  assign fixedClockNode_auto_in_reset = clockGroup_auto_out_reset; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_clock = fixedClockNode_auto_out_0_clock; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign system_bus_xbar_reset = fixedClockNode_auto_out_0_reset; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_1_a_valid = fixer_auto_out_1_a_valid; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_1_a_bits_opcode = fixer_auto_out_1_a_bits_opcode; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_1_a_bits_param = fixer_auto_out_1_a_bits_param; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_1_a_bits_size = fixer_auto_out_1_a_bits_size; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_1_a_bits_source = fixer_auto_out_1_a_bits_source; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_1_a_bits_address = fixer_auto_out_1_a_bits_address; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_1_a_bits_mask = fixer_auto_out_1_a_bits_mask; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_1_a_bits_data = fixer_auto_out_1_a_bits_data; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_1_a_bits_corrupt = fixer_auto_out_1_a_bits_corrupt; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_1_b_ready = fixer_auto_out_1_b_ready; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_1_c_valid = fixer_auto_out_1_c_valid; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_1_c_bits_opcode = fixer_auto_out_1_c_bits_opcode; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_1_c_bits_param = fixer_auto_out_1_c_bits_param; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_1_c_bits_size = fixer_auto_out_1_c_bits_size; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_1_c_bits_source = fixer_auto_out_1_c_bits_source; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_1_c_bits_address = fixer_auto_out_1_c_bits_address; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_1_c_bits_data = fixer_auto_out_1_c_bits_data; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_1_d_ready = fixer_auto_out_1_d_ready; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_1_e_valid = fixer_auto_out_1_e_valid; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_1_e_bits_sink = fixer_auto_out_1_e_bits_sink; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_0_a_valid = fixer_auto_out_0_a_valid; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_0_a_bits_opcode = fixer_auto_out_0_a_bits_opcode; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_0_a_bits_param = fixer_auto_out_0_a_bits_param; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_0_a_bits_size = fixer_auto_out_0_a_bits_size; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_0_a_bits_source = fixer_auto_out_0_a_bits_source; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_0_a_bits_address = fixer_auto_out_0_a_bits_address; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_0_a_bits_user_amba_prot_bufferable = fixer_auto_out_0_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_0_a_bits_user_amba_prot_modifiable = fixer_auto_out_0_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_0_a_bits_user_amba_prot_readalloc = fixer_auto_out_0_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_0_a_bits_user_amba_prot_writealloc = fixer_auto_out_0_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_0_a_bits_user_amba_prot_privileged = fixer_auto_out_0_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_0_a_bits_user_amba_prot_secure = fixer_auto_out_0_a_bits_user_amba_prot_secure; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_0_a_bits_user_amba_prot_fetch = fixer_auto_out_0_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_0_a_bits_mask = fixer_auto_out_0_a_bits_mask; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_0_a_bits_data = fixer_auto_out_0_a_bits_data; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_0_a_bits_corrupt = fixer_auto_out_0_a_bits_corrupt; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_in_0_d_ready = fixer_auto_out_0_d_ready; // @[LazyModule.scala 299:16]
  assign system_bus_xbar_auto_out_2_a_ready = coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_ready; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_2_d_valid = coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_valid; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_2_d_bits_opcode = coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_bits_opcode; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_2_d_bits_size = coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_bits_size; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_2_d_bits_source = coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_bits_source; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_2_d_bits_denied = coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_bits_denied; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_2_d_bits_data = coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_bits_data; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_2_d_bits_corrupt = coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_bits_corrupt; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_1_a_ready = coupler_to_bus_named_subsystem_l2_auto_widget_in_a_ready; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_1_b_valid = coupler_to_bus_named_subsystem_l2_auto_widget_in_b_valid; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_1_b_bits_param = coupler_to_bus_named_subsystem_l2_auto_widget_in_b_bits_param; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_1_b_bits_address = coupler_to_bus_named_subsystem_l2_auto_widget_in_b_bits_address; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_1_c_ready = coupler_to_bus_named_subsystem_l2_auto_widget_in_c_ready; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_1_d_valid = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_valid; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_1_d_bits_opcode = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_1_d_bits_param = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_param; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_1_d_bits_size = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_size; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_1_d_bits_source = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_source; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_1_d_bits_sink = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_sink; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_1_d_bits_denied = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_denied; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_1_d_bits_data = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_data; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_1_d_bits_corrupt = coupler_to_bus_named_subsystem_l2_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_0_a_ready = coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_ready; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_0_d_valid = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_valid; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_0_d_bits_opcode = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_0_d_bits_param = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_param; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_0_d_bits_size = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_size; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_0_d_bits_source = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_source; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_0_d_bits_sink = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_sink; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_0_d_bits_denied = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_denied; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_0_d_bits_data = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_data; // @[LazyModule.scala 301:16]
  assign system_bus_xbar_auto_out_0_d_bits_corrupt = coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 301:16]
  assign fixer_clock = fixedClockNode_auto_out_0_clock; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign fixer_reset = fixedClockNode_auto_out_0_reset; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign fixer_auto_in_1_a_valid = coupler_from_tile_auto_tl_out_a_valid; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_1_a_bits_opcode = coupler_from_tile_auto_tl_out_a_bits_opcode; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_1_a_bits_param = coupler_from_tile_auto_tl_out_a_bits_param; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_1_a_bits_size = coupler_from_tile_auto_tl_out_a_bits_size; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_1_a_bits_source = coupler_from_tile_auto_tl_out_a_bits_source; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_1_a_bits_address = coupler_from_tile_auto_tl_out_a_bits_address; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_1_a_bits_mask = coupler_from_tile_auto_tl_out_a_bits_mask; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_1_a_bits_data = coupler_from_tile_auto_tl_out_a_bits_data; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_1_a_bits_corrupt = coupler_from_tile_auto_tl_out_a_bits_corrupt; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_1_b_ready = coupler_from_tile_auto_tl_out_b_ready; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_1_c_valid = coupler_from_tile_auto_tl_out_c_valid; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_1_c_bits_opcode = coupler_from_tile_auto_tl_out_c_bits_opcode; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_1_c_bits_param = coupler_from_tile_auto_tl_out_c_bits_param; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_1_c_bits_size = coupler_from_tile_auto_tl_out_c_bits_size; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_1_c_bits_source = coupler_from_tile_auto_tl_out_c_bits_source; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_1_c_bits_address = coupler_from_tile_auto_tl_out_c_bits_address; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_1_c_bits_data = coupler_from_tile_auto_tl_out_c_bits_data; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_1_d_ready = coupler_from_tile_auto_tl_out_d_ready; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_1_e_valid = coupler_from_tile_auto_tl_out_e_valid; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_1_e_bits_sink = coupler_from_tile_auto_tl_out_e_bits_sink; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_0_a_valid = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_valid; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_0_a_bits_opcode = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_opcode; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_0_a_bits_param = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_param; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_0_a_bits_size = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_size; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_0_a_bits_source = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_source; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_0_a_bits_address = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_address; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_0_a_bits_user_amba_prot_bufferable =
    coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_0_a_bits_user_amba_prot_modifiable =
    coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_0_a_bits_user_amba_prot_readalloc =
    coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_0_a_bits_user_amba_prot_writealloc =
    coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_0_a_bits_user_amba_prot_privileged =
    coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_0_a_bits_user_amba_prot_secure =
    coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_0_a_bits_user_amba_prot_fetch =
    coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_0_a_bits_mask = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_mask; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_0_a_bits_data = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_data; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_0_a_bits_corrupt = coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_bits_corrupt; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_0_d_ready = coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_ready; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_1_a_ready = system_bus_xbar_auto_in_1_a_ready; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_1_b_valid = system_bus_xbar_auto_in_1_b_valid; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_1_b_bits_param = system_bus_xbar_auto_in_1_b_bits_param; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_1_b_bits_address = system_bus_xbar_auto_in_1_b_bits_address; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_1_c_ready = system_bus_xbar_auto_in_1_c_ready; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_1_d_valid = system_bus_xbar_auto_in_1_d_valid; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_1_d_bits_opcode = system_bus_xbar_auto_in_1_d_bits_opcode; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_1_d_bits_param = system_bus_xbar_auto_in_1_d_bits_param; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_1_d_bits_size = system_bus_xbar_auto_in_1_d_bits_size; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_1_d_bits_source = system_bus_xbar_auto_in_1_d_bits_source; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_1_d_bits_sink = system_bus_xbar_auto_in_1_d_bits_sink; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_1_d_bits_denied = system_bus_xbar_auto_in_1_d_bits_denied; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_1_d_bits_data = system_bus_xbar_auto_in_1_d_bits_data; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_1_d_bits_corrupt = system_bus_xbar_auto_in_1_d_bits_corrupt; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_0_a_ready = system_bus_xbar_auto_in_0_a_ready; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_0_d_valid = system_bus_xbar_auto_in_0_d_valid; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_0_d_bits_opcode = system_bus_xbar_auto_in_0_d_bits_opcode; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_0_d_bits_size = system_bus_xbar_auto_in_0_d_bits_size; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_0_d_bits_source = system_bus_xbar_auto_in_0_d_bits_source; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_0_d_bits_denied = system_bus_xbar_auto_in_0_d_bits_denied; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_0_d_bits_data = system_bus_xbar_auto_in_0_d_bits_data; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_0_d_bits_corrupt = system_bus_xbar_auto_in_0_d_bits_corrupt; // @[LazyModule.scala 299:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_valid = system_bus_xbar_auto_out_0_a_valid; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_opcode = system_bus_xbar_auto_out_0_a_bits_opcode; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_param = system_bus_xbar_auto_out_0_a_bits_param; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_size = system_bus_xbar_auto_out_0_a_bits_size; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_source = system_bus_xbar_auto_out_0_a_bits_source; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_address = system_bus_xbar_auto_out_0_a_bits_address; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_mask = system_bus_xbar_auto_out_0_a_bits_mask; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_data = system_bus_xbar_auto_out_0_a_bits_data; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_a_bits_corrupt = system_bus_xbar_auto_out_0_a_bits_corrupt; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_widget_in_d_ready = system_bus_xbar_auto_out_0_d_ready; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_a_ready =
    auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_ready; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_valid =
    auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_valid; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_opcode =
    auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_opcode; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_param =
    auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_param; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_size =
    auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_size; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_source =
    auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_source; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_sink =
    auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_sink; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_denied =
    auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_denied; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_data =
    auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_data; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_cbus_auto_bus_xing_out_d_bits_corrupt =
    auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_corrupt; // @[LazyModule.scala 314:12]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_a_ready = fixer_auto_in_0_a_ready; // @[LazyModule.scala 299:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_valid = fixer_auto_in_0_d_valid; // @[LazyModule.scala 299:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_opcode = fixer_auto_in_0_d_bits_opcode; // @[LazyModule.scala 299:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_size = fixer_auto_in_0_d_bits_size; // @[LazyModule.scala 299:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_source = fixer_auto_in_0_d_bits_source; // @[LazyModule.scala 299:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_denied = fixer_auto_in_0_d_bits_denied; // @[LazyModule.scala 299:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_data = fixer_auto_in_0_d_bits_data; // @[LazyModule.scala 299:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_widget_out_d_bits_corrupt = fixer_auto_in_0_d_bits_corrupt; // @[LazyModule.scala 299:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_valid =
    auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_valid; // @[LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_opcode =
    auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_opcode; // @[LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_param =
    auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_param; // @[LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_size =
    auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_size; // @[LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_source =
    auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_source; // @[LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_address =
    auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_address; // @[LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_bufferable =
    auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_modifiable =
    auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_readalloc =
    auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_writealloc =
    auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_privileged =
    auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_secure =
    auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_secure; // @[LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_user_amba_prot_fetch =
    auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_mask =
    auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_mask; // @[LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_data =
    auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_data; // @[LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_a_bits_corrupt =
    auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_corrupt; // @[LazyModule.scala 312:16]
  assign coupler_from_bus_named_subsystem_fbus_auto_bus_xing_in_d_ready =
    auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_ready; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_valid = system_bus_xbar_auto_out_1_a_valid; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_opcode = system_bus_xbar_auto_out_1_a_bits_opcode; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_param = system_bus_xbar_auto_out_1_a_bits_param; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_size = system_bus_xbar_auto_out_1_a_bits_size; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_source = system_bus_xbar_auto_out_1_a_bits_source; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_address = system_bus_xbar_auto_out_1_a_bits_address; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_bufferable =
    system_bus_xbar_auto_out_1_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_modifiable =
    system_bus_xbar_auto_out_1_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_readalloc =
    system_bus_xbar_auto_out_1_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_writealloc =
    system_bus_xbar_auto_out_1_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_privileged =
    system_bus_xbar_auto_out_1_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_secure =
    system_bus_xbar_auto_out_1_a_bits_user_amba_prot_secure; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_user_amba_prot_fetch =
    system_bus_xbar_auto_out_1_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_mask = system_bus_xbar_auto_out_1_a_bits_mask; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_a_bits_data = system_bus_xbar_auto_out_1_a_bits_data; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_b_ready = system_bus_xbar_auto_out_1_b_ready; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_valid = system_bus_xbar_auto_out_1_c_valid; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_opcode = system_bus_xbar_auto_out_1_c_bits_opcode; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_param = system_bus_xbar_auto_out_1_c_bits_param; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_size = system_bus_xbar_auto_out_1_c_bits_size; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_source = system_bus_xbar_auto_out_1_c_bits_source; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_address = system_bus_xbar_auto_out_1_c_bits_address; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_c_bits_data = system_bus_xbar_auto_out_1_c_bits_data; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_d_ready = system_bus_xbar_auto_out_1_d_ready; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_e_valid = system_bus_xbar_auto_out_1_e_valid; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_in_e_bits_sink = system_bus_xbar_auto_out_1_e_bits_sink; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_a_ready =
    auto_coupler_to_bus_named_subsystem_l2_widget_out_a_ready; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_b_valid =
    auto_coupler_to_bus_named_subsystem_l2_widget_out_b_valid; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_b_bits_param =
    auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_param; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_b_bits_address =
    auto_coupler_to_bus_named_subsystem_l2_widget_out_b_bits_address; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_c_ready =
    auto_coupler_to_bus_named_subsystem_l2_widget_out_c_ready; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_valid =
    auto_coupler_to_bus_named_subsystem_l2_widget_out_d_valid; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_opcode =
    auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_opcode; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_param =
    auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_param; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_size =
    auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_size; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_source =
    auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_source; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_sink =
    auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_sink; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_denied =
    auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_denied; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_data =
    auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_data; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_l2_auto_widget_out_d_bits_corrupt =
    auto_coupler_to_bus_named_subsystem_l2_widget_out_d_bits_corrupt; // @[LazyModule.scala 314:12]
  assign coupler_from_tile_auto_tl_master_xing_in_a_valid = auto_coupler_from_tile_tl_master_xing_in_a_valid; // @[LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_opcode = auto_coupler_from_tile_tl_master_xing_in_a_bits_opcode
    ; // @[LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_param = auto_coupler_from_tile_tl_master_xing_in_a_bits_param; // @[LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_size = auto_coupler_from_tile_tl_master_xing_in_a_bits_size; // @[LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_source = auto_coupler_from_tile_tl_master_xing_in_a_bits_source
    ; // @[LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_address =
    auto_coupler_from_tile_tl_master_xing_in_a_bits_address; // @[LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_mask = auto_coupler_from_tile_tl_master_xing_in_a_bits_mask; // @[LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_data = auto_coupler_from_tile_tl_master_xing_in_a_bits_data; // @[LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_master_xing_in_a_bits_corrupt =
    auto_coupler_from_tile_tl_master_xing_in_a_bits_corrupt; // @[LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_master_xing_in_b_ready = auto_coupler_from_tile_tl_master_xing_in_b_ready; // @[LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_master_xing_in_c_valid = auto_coupler_from_tile_tl_master_xing_in_c_valid; // @[LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_master_xing_in_c_bits_opcode = auto_coupler_from_tile_tl_master_xing_in_c_bits_opcode
    ; // @[LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_master_xing_in_c_bits_param = auto_coupler_from_tile_tl_master_xing_in_c_bits_param; // @[LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_master_xing_in_c_bits_size = auto_coupler_from_tile_tl_master_xing_in_c_bits_size; // @[LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_master_xing_in_c_bits_source = auto_coupler_from_tile_tl_master_xing_in_c_bits_source
    ; // @[LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_master_xing_in_c_bits_address =
    auto_coupler_from_tile_tl_master_xing_in_c_bits_address; // @[LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_master_xing_in_c_bits_data = auto_coupler_from_tile_tl_master_xing_in_c_bits_data; // @[LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_master_xing_in_d_ready = auto_coupler_from_tile_tl_master_xing_in_d_ready; // @[LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_master_xing_in_e_valid = auto_coupler_from_tile_tl_master_xing_in_e_valid; // @[LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_master_xing_in_e_bits_sink = auto_coupler_from_tile_tl_master_xing_in_e_bits_sink; // @[LazyModule.scala 312:16]
  assign coupler_from_tile_auto_tl_out_a_ready = fixer_auto_in_1_a_ready; // @[LazyModule.scala 299:16]
  assign coupler_from_tile_auto_tl_out_b_valid = fixer_auto_in_1_b_valid; // @[LazyModule.scala 299:16]
  assign coupler_from_tile_auto_tl_out_b_bits_param = fixer_auto_in_1_b_bits_param; // @[LazyModule.scala 299:16]
  assign coupler_from_tile_auto_tl_out_b_bits_address = fixer_auto_in_1_b_bits_address; // @[LazyModule.scala 299:16]
  assign coupler_from_tile_auto_tl_out_c_ready = fixer_auto_in_1_c_ready; // @[LazyModule.scala 299:16]
  assign coupler_from_tile_auto_tl_out_d_valid = fixer_auto_in_1_d_valid; // @[LazyModule.scala 299:16]
  assign coupler_from_tile_auto_tl_out_d_bits_opcode = fixer_auto_in_1_d_bits_opcode; // @[LazyModule.scala 299:16]
  assign coupler_from_tile_auto_tl_out_d_bits_param = fixer_auto_in_1_d_bits_param; // @[LazyModule.scala 299:16]
  assign coupler_from_tile_auto_tl_out_d_bits_size = fixer_auto_in_1_d_bits_size; // @[LazyModule.scala 299:16]
  assign coupler_from_tile_auto_tl_out_d_bits_source = fixer_auto_in_1_d_bits_source; // @[LazyModule.scala 299:16]
  assign coupler_from_tile_auto_tl_out_d_bits_sink = fixer_auto_in_1_d_bits_sink; // @[LazyModule.scala 299:16]
  assign coupler_from_tile_auto_tl_out_d_bits_denied = fixer_auto_in_1_d_bits_denied; // @[LazyModule.scala 299:16]
  assign coupler_from_tile_auto_tl_out_d_bits_data = fixer_auto_in_1_d_bits_data; // @[LazyModule.scala 299:16]
  assign coupler_from_tile_auto_tl_out_d_bits_corrupt = fixer_auto_in_1_d_bits_corrupt; // @[LazyModule.scala 299:16]
  assign coupler_to_port_named_mmio_port_axi4_clock = fixedClockNode_auto_out_0_clock; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign coupler_to_port_named_mmio_port_axi4_reset = fixedClockNode_auto_out_0_reset; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_ready =
    auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_ready; // @[LazyModule.scala 314:12]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_ready =
    auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_ready; // @[LazyModule.scala 314:12]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_valid =
    auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_valid; // @[LazyModule.scala 314:12]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_id =
    auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_id; // @[LazyModule.scala 314:12]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_resp =
    auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_resp; // @[LazyModule.scala 314:12]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_ready =
    auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_ready; // @[LazyModule.scala 314:12]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_valid =
    auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_valid; // @[LazyModule.scala 314:12]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_id =
    auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_id; // @[LazyModule.scala 314:12]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_data =
    auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_data; // @[LazyModule.scala 314:12]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_resp =
    auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_resp; // @[LazyModule.scala 314:12]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_last =
    auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_last; // @[LazyModule.scala 314:12]
  assign coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_valid = system_bus_xbar_auto_out_2_a_valid; // @[LazyModule.scala 301:16]
  assign coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_opcode = system_bus_xbar_auto_out_2_a_bits_opcode; // @[LazyModule.scala 301:16]
  assign coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_size = system_bus_xbar_auto_out_2_a_bits_size; // @[LazyModule.scala 301:16]
  assign coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_source = system_bus_xbar_auto_out_2_a_bits_source; // @[LazyModule.scala 301:16]
  assign coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_address = system_bus_xbar_auto_out_2_a_bits_address; // @[LazyModule.scala 301:16]
  assign coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_user_amba_prot_bufferable =
    system_bus_xbar_auto_out_2_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 301:16]
  assign coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_user_amba_prot_modifiable =
    system_bus_xbar_auto_out_2_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 301:16]
  assign coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_user_amba_prot_readalloc =
    system_bus_xbar_auto_out_2_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 301:16]
  assign coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_user_amba_prot_writealloc =
    system_bus_xbar_auto_out_2_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 301:16]
  assign coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_user_amba_prot_privileged =
    system_bus_xbar_auto_out_2_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 301:16]
  assign coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_user_amba_prot_secure =
    system_bus_xbar_auto_out_2_a_bits_user_amba_prot_secure; // @[LazyModule.scala 301:16]
  assign coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_user_amba_prot_fetch =
    system_bus_xbar_auto_out_2_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 301:16]
  assign coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_mask = system_bus_xbar_auto_out_2_a_bits_mask; // @[LazyModule.scala 301:16]
  assign coupler_to_port_named_mmio_port_axi4_auto_tl_in_a_bits_data = system_bus_xbar_auto_out_2_a_bits_data; // @[LazyModule.scala 301:16]
  assign coupler_to_port_named_mmio_port_axi4_auto_tl_in_d_ready = system_bus_xbar_auto_out_2_d_ready; // @[LazyModule.scala 301:16]
endmodule
