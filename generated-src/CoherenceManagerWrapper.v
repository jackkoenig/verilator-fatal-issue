module CoherenceManagerWrapper(
  input         auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_ready,
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_valid,
  output [2:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_opcode,
  output [2:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_size,
  output [6:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_source,
  output [31:0] auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_address,
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_bufferable,
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_modifiable,
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_readalloc,
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_writealloc,
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_privileged,
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_secure,
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_fetch,
  output [7:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_mask,
  output [63:0] auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_data,
  output        auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_ready,
  input         auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_valid,
  input  [2:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_opcode,
  input  [2:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_size,
  input  [6:0]  auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_source,
  input         auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_denied,
  input  [63:0] auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_data,
  input         auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_corrupt,
  output        auto_coherent_jbar_in_a_ready,
  input         auto_coherent_jbar_in_a_valid,
  input  [2:0]  auto_coherent_jbar_in_a_bits_opcode,
  input  [2:0]  auto_coherent_jbar_in_a_bits_param,
  input  [2:0]  auto_coherent_jbar_in_a_bits_size,
  input  [4:0]  auto_coherent_jbar_in_a_bits_source,
  input  [31:0] auto_coherent_jbar_in_a_bits_address,
  input         auto_coherent_jbar_in_a_bits_user_amba_prot_bufferable,
  input         auto_coherent_jbar_in_a_bits_user_amba_prot_modifiable,
  input         auto_coherent_jbar_in_a_bits_user_amba_prot_readalloc,
  input         auto_coherent_jbar_in_a_bits_user_amba_prot_writealloc,
  input         auto_coherent_jbar_in_a_bits_user_amba_prot_privileged,
  input         auto_coherent_jbar_in_a_bits_user_amba_prot_secure,
  input         auto_coherent_jbar_in_a_bits_user_amba_prot_fetch,
  input  [7:0]  auto_coherent_jbar_in_a_bits_mask,
  input  [63:0] auto_coherent_jbar_in_a_bits_data,
  input         auto_coherent_jbar_in_b_ready,
  output        auto_coherent_jbar_in_b_valid,
  output [1:0]  auto_coherent_jbar_in_b_bits_param,
  output [31:0] auto_coherent_jbar_in_b_bits_address,
  output        auto_coherent_jbar_in_c_ready,
  input         auto_coherent_jbar_in_c_valid,
  input  [2:0]  auto_coherent_jbar_in_c_bits_opcode,
  input  [2:0]  auto_coherent_jbar_in_c_bits_param,
  input  [2:0]  auto_coherent_jbar_in_c_bits_size,
  input  [4:0]  auto_coherent_jbar_in_c_bits_source,
  input  [31:0] auto_coherent_jbar_in_c_bits_address,
  input  [63:0] auto_coherent_jbar_in_c_bits_data,
  input         auto_coherent_jbar_in_d_ready,
  output        auto_coherent_jbar_in_d_valid,
  output [2:0]  auto_coherent_jbar_in_d_bits_opcode,
  output [1:0]  auto_coherent_jbar_in_d_bits_param,
  output [2:0]  auto_coherent_jbar_in_d_bits_size,
  output [4:0]  auto_coherent_jbar_in_d_bits_source,
  output [1:0]  auto_coherent_jbar_in_d_bits_sink,
  output        auto_coherent_jbar_in_d_bits_denied,
  output [63:0] auto_coherent_jbar_in_d_bits_data,
  output        auto_coherent_jbar_in_d_bits_corrupt,
  input         auto_coherent_jbar_in_e_valid,
  input  [1:0]  auto_coherent_jbar_in_e_bits_sink,
  input         auto_subsystem_l2_clock_groups_in_member_subsystem_l2_1_clock,
  input         auto_subsystem_l2_clock_groups_in_member_subsystem_l2_1_reset,
  input         auto_subsystem_l2_clock_groups_in_member_subsystem_l2_0_clock,
  input         auto_subsystem_l2_clock_groups_in_member_subsystem_l2_0_reset,
  output        auto_subsystem_l2_clock_groups_out_member_subsystem_mbus_0_clock,
  output        auto_subsystem_l2_clock_groups_out_member_subsystem_mbus_0_reset
);
  wire  subsystem_l2_clock_groups_auto_in_member_subsystem_l2_1_clock; // @[BusWrapper.scala 40:48]
  wire  subsystem_l2_clock_groups_auto_in_member_subsystem_l2_1_reset; // @[BusWrapper.scala 40:48]
  wire  subsystem_l2_clock_groups_auto_in_member_subsystem_l2_0_clock; // @[BusWrapper.scala 40:48]
  wire  subsystem_l2_clock_groups_auto_in_member_subsystem_l2_0_reset; // @[BusWrapper.scala 40:48]
  wire  subsystem_l2_clock_groups_auto_out_1_member_subsystem_mbus_0_clock; // @[BusWrapper.scala 40:48]
  wire  subsystem_l2_clock_groups_auto_out_1_member_subsystem_mbus_0_reset; // @[BusWrapper.scala 40:48]
  wire  subsystem_l2_clock_groups_auto_out_0_member_subsystem_l2_0_clock; // @[BusWrapper.scala 40:48]
  wire  subsystem_l2_clock_groups_auto_out_0_member_subsystem_l2_0_reset; // @[BusWrapper.scala 40:48]
  wire  clockGroup_auto_in_member_subsystem_l2_0_clock;
  wire  clockGroup_auto_in_member_subsystem_l2_0_reset;
  wire  clockGroup_auto_out_clock;
  wire  clockGroup_auto_out_reset;
  wire  fixedClockNode_auto_in_clock;
  wire  fixedClockNode_auto_in_reset;
  wire  fixedClockNode_auto_out_clock;
  wire  fixedClockNode_auto_out_reset;
  wire  broadcast_1_clock; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_reset; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_in_a_ready; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_in_a_valid; // @[BankedL2Params.scala 81:24]
  wire [2:0] broadcast_1_auto_in_a_bits_opcode; // @[BankedL2Params.scala 81:24]
  wire [2:0] broadcast_1_auto_in_a_bits_param; // @[BankedL2Params.scala 81:24]
  wire [2:0] broadcast_1_auto_in_a_bits_size; // @[BankedL2Params.scala 81:24]
  wire [4:0] broadcast_1_auto_in_a_bits_source; // @[BankedL2Params.scala 81:24]
  wire [31:0] broadcast_1_auto_in_a_bits_address; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_in_a_bits_user_amba_prot_bufferable; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_in_a_bits_user_amba_prot_modifiable; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_in_a_bits_user_amba_prot_readalloc; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_in_a_bits_user_amba_prot_writealloc; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_in_a_bits_user_amba_prot_privileged; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_in_a_bits_user_amba_prot_secure; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_in_a_bits_user_amba_prot_fetch; // @[BankedL2Params.scala 81:24]
  wire [7:0] broadcast_1_auto_in_a_bits_mask; // @[BankedL2Params.scala 81:24]
  wire [63:0] broadcast_1_auto_in_a_bits_data; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_in_b_ready; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_in_b_valid; // @[BankedL2Params.scala 81:24]
  wire [1:0] broadcast_1_auto_in_b_bits_param; // @[BankedL2Params.scala 81:24]
  wire [31:0] broadcast_1_auto_in_b_bits_address; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_in_c_ready; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_in_c_valid; // @[BankedL2Params.scala 81:24]
  wire [2:0] broadcast_1_auto_in_c_bits_opcode; // @[BankedL2Params.scala 81:24]
  wire [2:0] broadcast_1_auto_in_c_bits_param; // @[BankedL2Params.scala 81:24]
  wire [2:0] broadcast_1_auto_in_c_bits_size; // @[BankedL2Params.scala 81:24]
  wire [4:0] broadcast_1_auto_in_c_bits_source; // @[BankedL2Params.scala 81:24]
  wire [31:0] broadcast_1_auto_in_c_bits_address; // @[BankedL2Params.scala 81:24]
  wire [63:0] broadcast_1_auto_in_c_bits_data; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_in_d_ready; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_in_d_valid; // @[BankedL2Params.scala 81:24]
  wire [2:0] broadcast_1_auto_in_d_bits_opcode; // @[BankedL2Params.scala 81:24]
  wire [1:0] broadcast_1_auto_in_d_bits_param; // @[BankedL2Params.scala 81:24]
  wire [2:0] broadcast_1_auto_in_d_bits_size; // @[BankedL2Params.scala 81:24]
  wire [4:0] broadcast_1_auto_in_d_bits_source; // @[BankedL2Params.scala 81:24]
  wire [1:0] broadcast_1_auto_in_d_bits_sink; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_in_d_bits_denied; // @[BankedL2Params.scala 81:24]
  wire [63:0] broadcast_1_auto_in_d_bits_data; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_in_d_bits_corrupt; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_in_e_valid; // @[BankedL2Params.scala 81:24]
  wire [1:0] broadcast_1_auto_in_e_bits_sink; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_out_a_ready; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_out_a_valid; // @[BankedL2Params.scala 81:24]
  wire [2:0] broadcast_1_auto_out_a_bits_opcode; // @[BankedL2Params.scala 81:24]
  wire [2:0] broadcast_1_auto_out_a_bits_size; // @[BankedL2Params.scala 81:24]
  wire [6:0] broadcast_1_auto_out_a_bits_source; // @[BankedL2Params.scala 81:24]
  wire [31:0] broadcast_1_auto_out_a_bits_address; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_out_a_bits_user_amba_prot_bufferable; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_out_a_bits_user_amba_prot_modifiable; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_out_a_bits_user_amba_prot_readalloc; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_out_a_bits_user_amba_prot_writealloc; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_out_a_bits_user_amba_prot_privileged; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_out_a_bits_user_amba_prot_secure; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_out_a_bits_user_amba_prot_fetch; // @[BankedL2Params.scala 81:24]
  wire [7:0] broadcast_1_auto_out_a_bits_mask; // @[BankedL2Params.scala 81:24]
  wire [63:0] broadcast_1_auto_out_a_bits_data; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_out_d_ready; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_out_d_valid; // @[BankedL2Params.scala 81:24]
  wire [2:0] broadcast_1_auto_out_d_bits_opcode; // @[BankedL2Params.scala 81:24]
  wire [2:0] broadcast_1_auto_out_d_bits_size; // @[BankedL2Params.scala 81:24]
  wire [6:0] broadcast_1_auto_out_d_bits_source; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_out_d_bits_denied; // @[BankedL2Params.scala 81:24]
  wire [63:0] broadcast_1_auto_out_d_bits_data; // @[BankedL2Params.scala 81:24]
  wire  broadcast_1_auto_out_d_bits_corrupt; // @[BankedL2Params.scala 81:24]
  wire  coherent_jbar_auto_in_a_ready;
  wire  coherent_jbar_auto_in_a_valid;
  wire [2:0] coherent_jbar_auto_in_a_bits_opcode;
  wire [2:0] coherent_jbar_auto_in_a_bits_param;
  wire [2:0] coherent_jbar_auto_in_a_bits_size;
  wire [4:0] coherent_jbar_auto_in_a_bits_source;
  wire [31:0] coherent_jbar_auto_in_a_bits_address;
  wire  coherent_jbar_auto_in_a_bits_user_amba_prot_bufferable;
  wire  coherent_jbar_auto_in_a_bits_user_amba_prot_modifiable;
  wire  coherent_jbar_auto_in_a_bits_user_amba_prot_readalloc;
  wire  coherent_jbar_auto_in_a_bits_user_amba_prot_writealloc;
  wire  coherent_jbar_auto_in_a_bits_user_amba_prot_privileged;
  wire  coherent_jbar_auto_in_a_bits_user_amba_prot_secure;
  wire  coherent_jbar_auto_in_a_bits_user_amba_prot_fetch;
  wire [7:0] coherent_jbar_auto_in_a_bits_mask;
  wire [63:0] coherent_jbar_auto_in_a_bits_data;
  wire  coherent_jbar_auto_in_b_ready;
  wire  coherent_jbar_auto_in_b_valid;
  wire [1:0] coherent_jbar_auto_in_b_bits_param;
  wire [31:0] coherent_jbar_auto_in_b_bits_address;
  wire  coherent_jbar_auto_in_c_ready;
  wire  coherent_jbar_auto_in_c_valid;
  wire [2:0] coherent_jbar_auto_in_c_bits_opcode;
  wire [2:0] coherent_jbar_auto_in_c_bits_param;
  wire [2:0] coherent_jbar_auto_in_c_bits_size;
  wire [4:0] coherent_jbar_auto_in_c_bits_source;
  wire [31:0] coherent_jbar_auto_in_c_bits_address;
  wire [63:0] coherent_jbar_auto_in_c_bits_data;
  wire  coherent_jbar_auto_in_d_ready;
  wire  coherent_jbar_auto_in_d_valid;
  wire [2:0] coherent_jbar_auto_in_d_bits_opcode;
  wire [1:0] coherent_jbar_auto_in_d_bits_param;
  wire [2:0] coherent_jbar_auto_in_d_bits_size;
  wire [4:0] coherent_jbar_auto_in_d_bits_source;
  wire [1:0] coherent_jbar_auto_in_d_bits_sink;
  wire  coherent_jbar_auto_in_d_bits_denied;
  wire [63:0] coherent_jbar_auto_in_d_bits_data;
  wire  coherent_jbar_auto_in_d_bits_corrupt;
  wire  coherent_jbar_auto_in_e_valid;
  wire [1:0] coherent_jbar_auto_in_e_bits_sink;
  wire  coherent_jbar_auto_out_a_ready;
  wire  coherent_jbar_auto_out_a_valid;
  wire [2:0] coherent_jbar_auto_out_a_bits_opcode;
  wire [2:0] coherent_jbar_auto_out_a_bits_param;
  wire [2:0] coherent_jbar_auto_out_a_bits_size;
  wire [4:0] coherent_jbar_auto_out_a_bits_source;
  wire [31:0] coherent_jbar_auto_out_a_bits_address;
  wire  coherent_jbar_auto_out_a_bits_user_amba_prot_bufferable;
  wire  coherent_jbar_auto_out_a_bits_user_amba_prot_modifiable;
  wire  coherent_jbar_auto_out_a_bits_user_amba_prot_readalloc;
  wire  coherent_jbar_auto_out_a_bits_user_amba_prot_writealloc;
  wire  coherent_jbar_auto_out_a_bits_user_amba_prot_privileged;
  wire  coherent_jbar_auto_out_a_bits_user_amba_prot_secure;
  wire  coherent_jbar_auto_out_a_bits_user_amba_prot_fetch;
  wire [7:0] coherent_jbar_auto_out_a_bits_mask;
  wire [63:0] coherent_jbar_auto_out_a_bits_data;
  wire  coherent_jbar_auto_out_b_ready;
  wire  coherent_jbar_auto_out_b_valid;
  wire [1:0] coherent_jbar_auto_out_b_bits_param;
  wire [31:0] coherent_jbar_auto_out_b_bits_address;
  wire  coherent_jbar_auto_out_c_ready;
  wire  coherent_jbar_auto_out_c_valid;
  wire [2:0] coherent_jbar_auto_out_c_bits_opcode;
  wire [2:0] coherent_jbar_auto_out_c_bits_param;
  wire [2:0] coherent_jbar_auto_out_c_bits_size;
  wire [4:0] coherent_jbar_auto_out_c_bits_source;
  wire [31:0] coherent_jbar_auto_out_c_bits_address;
  wire [63:0] coherent_jbar_auto_out_c_bits_data;
  wire  coherent_jbar_auto_out_d_ready;
  wire  coherent_jbar_auto_out_d_valid;
  wire [2:0] coherent_jbar_auto_out_d_bits_opcode;
  wire [1:0] coherent_jbar_auto_out_d_bits_param;
  wire [2:0] coherent_jbar_auto_out_d_bits_size;
  wire [4:0] coherent_jbar_auto_out_d_bits_source;
  wire [1:0] coherent_jbar_auto_out_d_bits_sink;
  wire  coherent_jbar_auto_out_d_bits_denied;
  wire [63:0] coherent_jbar_auto_out_d_bits_data;
  wire  coherent_jbar_auto_out_d_bits_corrupt;
  wire  coherent_jbar_auto_out_e_valid;
  wire [1:0] coherent_jbar_auto_out_e_bits_sink;
  wire  binder_auto_in_a_ready; // @[BankBinder.scala 68:28]
  wire  binder_auto_in_a_valid; // @[BankBinder.scala 68:28]
  wire [2:0] binder_auto_in_a_bits_opcode; // @[BankBinder.scala 68:28]
  wire [2:0] binder_auto_in_a_bits_size; // @[BankBinder.scala 68:28]
  wire [6:0] binder_auto_in_a_bits_source; // @[BankBinder.scala 68:28]
  wire [31:0] binder_auto_in_a_bits_address; // @[BankBinder.scala 68:28]
  wire  binder_auto_in_a_bits_user_amba_prot_bufferable; // @[BankBinder.scala 68:28]
  wire  binder_auto_in_a_bits_user_amba_prot_modifiable; // @[BankBinder.scala 68:28]
  wire  binder_auto_in_a_bits_user_amba_prot_readalloc; // @[BankBinder.scala 68:28]
  wire  binder_auto_in_a_bits_user_amba_prot_writealloc; // @[BankBinder.scala 68:28]
  wire  binder_auto_in_a_bits_user_amba_prot_privileged; // @[BankBinder.scala 68:28]
  wire  binder_auto_in_a_bits_user_amba_prot_secure; // @[BankBinder.scala 68:28]
  wire  binder_auto_in_a_bits_user_amba_prot_fetch; // @[BankBinder.scala 68:28]
  wire [7:0] binder_auto_in_a_bits_mask; // @[BankBinder.scala 68:28]
  wire [63:0] binder_auto_in_a_bits_data; // @[BankBinder.scala 68:28]
  wire  binder_auto_in_d_ready; // @[BankBinder.scala 68:28]
  wire  binder_auto_in_d_valid; // @[BankBinder.scala 68:28]
  wire [2:0] binder_auto_in_d_bits_opcode; // @[BankBinder.scala 68:28]
  wire [2:0] binder_auto_in_d_bits_size; // @[BankBinder.scala 68:28]
  wire [6:0] binder_auto_in_d_bits_source; // @[BankBinder.scala 68:28]
  wire  binder_auto_in_d_bits_denied; // @[BankBinder.scala 68:28]
  wire [63:0] binder_auto_in_d_bits_data; // @[BankBinder.scala 68:28]
  wire  binder_auto_in_d_bits_corrupt; // @[BankBinder.scala 68:28]
  wire  binder_auto_out_a_ready; // @[BankBinder.scala 68:28]
  wire  binder_auto_out_a_valid; // @[BankBinder.scala 68:28]
  wire [2:0] binder_auto_out_a_bits_opcode; // @[BankBinder.scala 68:28]
  wire [2:0] binder_auto_out_a_bits_size; // @[BankBinder.scala 68:28]
  wire [6:0] binder_auto_out_a_bits_source; // @[BankBinder.scala 68:28]
  wire [31:0] binder_auto_out_a_bits_address; // @[BankBinder.scala 68:28]
  wire  binder_auto_out_a_bits_user_amba_prot_bufferable; // @[BankBinder.scala 68:28]
  wire  binder_auto_out_a_bits_user_amba_prot_modifiable; // @[BankBinder.scala 68:28]
  wire  binder_auto_out_a_bits_user_amba_prot_readalloc; // @[BankBinder.scala 68:28]
  wire  binder_auto_out_a_bits_user_amba_prot_writealloc; // @[BankBinder.scala 68:28]
  wire  binder_auto_out_a_bits_user_amba_prot_privileged; // @[BankBinder.scala 68:28]
  wire  binder_auto_out_a_bits_user_amba_prot_secure; // @[BankBinder.scala 68:28]
  wire  binder_auto_out_a_bits_user_amba_prot_fetch; // @[BankBinder.scala 68:28]
  wire [7:0] binder_auto_out_a_bits_mask; // @[BankBinder.scala 68:28]
  wire [63:0] binder_auto_out_a_bits_data; // @[BankBinder.scala 68:28]
  wire  binder_auto_out_d_ready; // @[BankBinder.scala 68:28]
  wire  binder_auto_out_d_valid; // @[BankBinder.scala 68:28]
  wire [2:0] binder_auto_out_d_bits_opcode; // @[BankBinder.scala 68:28]
  wire [2:0] binder_auto_out_d_bits_size; // @[BankBinder.scala 68:28]
  wire [6:0] binder_auto_out_d_bits_source; // @[BankBinder.scala 68:28]
  wire  binder_auto_out_d_bits_denied; // @[BankBinder.scala 68:28]
  wire [63:0] binder_auto_out_d_bits_data; // @[BankBinder.scala 68:28]
  wire  binder_auto_out_d_bits_corrupt; // @[BankBinder.scala 68:28]
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_ready;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_valid;
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_opcode;
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_size;
  wire [6:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_source;
  wire [31:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_address;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_bufferable;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_modifiable;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_readalloc;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_writealloc;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_privileged;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_secure;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_fetch;
  wire [7:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_mask;
  wire [63:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_data;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_ready;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_valid;
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_opcode;
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_size;
  wire [6:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_source;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_denied;
  wire [63:0] coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_data;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_corrupt;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_ready;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_valid;
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_opcode;
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_size;
  wire [6:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_source;
  wire [31:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_address;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_bufferable;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_modifiable;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_readalloc;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_writealloc;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_privileged;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_secure;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_fetch;
  wire [7:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_mask;
  wire [63:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_data;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_ready;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_valid;
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_opcode;
  wire [2:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_size;
  wire [6:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_source;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_denied;
  wire [63:0] coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_data;
  wire  coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_corrupt;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_ready;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_valid;
  wire [2:0] coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_opcode;
  wire [2:0] coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_size;
  wire [6:0] coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_source;
  wire [31:0] coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_address;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_user_amba_prot_bufferable;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_user_amba_prot_modifiable;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_user_amba_prot_readalloc;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_user_amba_prot_writealloc;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_user_amba_prot_privileged;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_user_amba_prot_secure;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_user_amba_prot_fetch;
  wire [7:0] coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_mask;
  wire [63:0] coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_data;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_ready;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_valid;
  wire [2:0] coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_bits_opcode;
  wire [2:0] coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_bits_size;
  wire [6:0] coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_bits_source;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_bits_denied;
  wire [63:0] coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_bits_data;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_bits_corrupt;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_ready;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_valid;
  wire [2:0] coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_opcode;
  wire [2:0] coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_size;
  wire [6:0] coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_source;
  wire [31:0] coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_address;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_user_amba_prot_bufferable;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_user_amba_prot_modifiable;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_user_amba_prot_readalloc;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_user_amba_prot_writealloc;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_user_amba_prot_privileged;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_user_amba_prot_secure;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_user_amba_prot_fetch;
  wire [7:0] coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_mask;
  wire [63:0] coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_data;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_ready;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_valid;
  wire [2:0] coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_bits_opcode;
  wire [2:0] coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_bits_size;
  wire [6:0] coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_bits_source;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_bits_denied;
  wire [63:0] coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_bits_data;
  wire  coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_bits_corrupt;
  ClockGroupAggregator_5 subsystem_l2_clock_groups ( // @[BusWrapper.scala 40:48]
    .auto_in_member_subsystem_l2_1_clock(subsystem_l2_clock_groups_auto_in_member_subsystem_l2_1_clock),
    .auto_in_member_subsystem_l2_1_reset(subsystem_l2_clock_groups_auto_in_member_subsystem_l2_1_reset),
    .auto_in_member_subsystem_l2_0_clock(subsystem_l2_clock_groups_auto_in_member_subsystem_l2_0_clock),
    .auto_in_member_subsystem_l2_0_reset(subsystem_l2_clock_groups_auto_in_member_subsystem_l2_0_reset),
    .auto_out_1_member_subsystem_mbus_0_clock(subsystem_l2_clock_groups_auto_out_1_member_subsystem_mbus_0_clock),
    .auto_out_1_member_subsystem_mbus_0_reset(subsystem_l2_clock_groups_auto_out_1_member_subsystem_mbus_0_reset),
    .auto_out_0_member_subsystem_l2_0_clock(subsystem_l2_clock_groups_auto_out_0_member_subsystem_l2_0_clock),
    .auto_out_0_member_subsystem_l2_0_reset(subsystem_l2_clock_groups_auto_out_0_member_subsystem_l2_0_reset)
  );
  TLBroadcast broadcast_1 ( // @[BankedL2Params.scala 81:24]
    .clock(broadcast_1_clock),
    .reset(broadcast_1_reset),
    .auto_in_a_ready(broadcast_1_auto_in_a_ready),
    .auto_in_a_valid(broadcast_1_auto_in_a_valid),
    .auto_in_a_bits_opcode(broadcast_1_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(broadcast_1_auto_in_a_bits_param),
    .auto_in_a_bits_size(broadcast_1_auto_in_a_bits_size),
    .auto_in_a_bits_source(broadcast_1_auto_in_a_bits_source),
    .auto_in_a_bits_address(broadcast_1_auto_in_a_bits_address),
    .auto_in_a_bits_user_amba_prot_bufferable(broadcast_1_auto_in_a_bits_user_amba_prot_bufferable),
    .auto_in_a_bits_user_amba_prot_modifiable(broadcast_1_auto_in_a_bits_user_amba_prot_modifiable),
    .auto_in_a_bits_user_amba_prot_readalloc(broadcast_1_auto_in_a_bits_user_amba_prot_readalloc),
    .auto_in_a_bits_user_amba_prot_writealloc(broadcast_1_auto_in_a_bits_user_amba_prot_writealloc),
    .auto_in_a_bits_user_amba_prot_privileged(broadcast_1_auto_in_a_bits_user_amba_prot_privileged),
    .auto_in_a_bits_user_amba_prot_secure(broadcast_1_auto_in_a_bits_user_amba_prot_secure),
    .auto_in_a_bits_user_amba_prot_fetch(broadcast_1_auto_in_a_bits_user_amba_prot_fetch),
    .auto_in_a_bits_mask(broadcast_1_auto_in_a_bits_mask),
    .auto_in_a_bits_data(broadcast_1_auto_in_a_bits_data),
    .auto_in_b_ready(broadcast_1_auto_in_b_ready),
    .auto_in_b_valid(broadcast_1_auto_in_b_valid),
    .auto_in_b_bits_param(broadcast_1_auto_in_b_bits_param),
    .auto_in_b_bits_address(broadcast_1_auto_in_b_bits_address),
    .auto_in_c_ready(broadcast_1_auto_in_c_ready),
    .auto_in_c_valid(broadcast_1_auto_in_c_valid),
    .auto_in_c_bits_opcode(broadcast_1_auto_in_c_bits_opcode),
    .auto_in_c_bits_param(broadcast_1_auto_in_c_bits_param),
    .auto_in_c_bits_size(broadcast_1_auto_in_c_bits_size),
    .auto_in_c_bits_source(broadcast_1_auto_in_c_bits_source),
    .auto_in_c_bits_address(broadcast_1_auto_in_c_bits_address),
    .auto_in_c_bits_data(broadcast_1_auto_in_c_bits_data),
    .auto_in_d_ready(broadcast_1_auto_in_d_ready),
    .auto_in_d_valid(broadcast_1_auto_in_d_valid),
    .auto_in_d_bits_opcode(broadcast_1_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(broadcast_1_auto_in_d_bits_param),
    .auto_in_d_bits_size(broadcast_1_auto_in_d_bits_size),
    .auto_in_d_bits_source(broadcast_1_auto_in_d_bits_source),
    .auto_in_d_bits_sink(broadcast_1_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(broadcast_1_auto_in_d_bits_denied),
    .auto_in_d_bits_data(broadcast_1_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(broadcast_1_auto_in_d_bits_corrupt),
    .auto_in_e_valid(broadcast_1_auto_in_e_valid),
    .auto_in_e_bits_sink(broadcast_1_auto_in_e_bits_sink),
    .auto_out_a_ready(broadcast_1_auto_out_a_ready),
    .auto_out_a_valid(broadcast_1_auto_out_a_valid),
    .auto_out_a_bits_opcode(broadcast_1_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(broadcast_1_auto_out_a_bits_size),
    .auto_out_a_bits_source(broadcast_1_auto_out_a_bits_source),
    .auto_out_a_bits_address(broadcast_1_auto_out_a_bits_address),
    .auto_out_a_bits_user_amba_prot_bufferable(broadcast_1_auto_out_a_bits_user_amba_prot_bufferable),
    .auto_out_a_bits_user_amba_prot_modifiable(broadcast_1_auto_out_a_bits_user_amba_prot_modifiable),
    .auto_out_a_bits_user_amba_prot_readalloc(broadcast_1_auto_out_a_bits_user_amba_prot_readalloc),
    .auto_out_a_bits_user_amba_prot_writealloc(broadcast_1_auto_out_a_bits_user_amba_prot_writealloc),
    .auto_out_a_bits_user_amba_prot_privileged(broadcast_1_auto_out_a_bits_user_amba_prot_privileged),
    .auto_out_a_bits_user_amba_prot_secure(broadcast_1_auto_out_a_bits_user_amba_prot_secure),
    .auto_out_a_bits_user_amba_prot_fetch(broadcast_1_auto_out_a_bits_user_amba_prot_fetch),
    .auto_out_a_bits_mask(broadcast_1_auto_out_a_bits_mask),
    .auto_out_a_bits_data(broadcast_1_auto_out_a_bits_data),
    .auto_out_d_ready(broadcast_1_auto_out_d_ready),
    .auto_out_d_valid(broadcast_1_auto_out_d_valid),
    .auto_out_d_bits_opcode(broadcast_1_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(broadcast_1_auto_out_d_bits_size),
    .auto_out_d_bits_source(broadcast_1_auto_out_d_bits_source),
    .auto_out_d_bits_denied(broadcast_1_auto_out_d_bits_denied),
    .auto_out_d_bits_data(broadcast_1_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(broadcast_1_auto_out_d_bits_corrupt)
  );
  BankBinder binder ( // @[BankBinder.scala 68:28]
    .auto_in_a_ready(binder_auto_in_a_ready),
    .auto_in_a_valid(binder_auto_in_a_valid),
    .auto_in_a_bits_opcode(binder_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(binder_auto_in_a_bits_size),
    .auto_in_a_bits_source(binder_auto_in_a_bits_source),
    .auto_in_a_bits_address(binder_auto_in_a_bits_address),
    .auto_in_a_bits_user_amba_prot_bufferable(binder_auto_in_a_bits_user_amba_prot_bufferable),
    .auto_in_a_bits_user_amba_prot_modifiable(binder_auto_in_a_bits_user_amba_prot_modifiable),
    .auto_in_a_bits_user_amba_prot_readalloc(binder_auto_in_a_bits_user_amba_prot_readalloc),
    .auto_in_a_bits_user_amba_prot_writealloc(binder_auto_in_a_bits_user_amba_prot_writealloc),
    .auto_in_a_bits_user_amba_prot_privileged(binder_auto_in_a_bits_user_amba_prot_privileged),
    .auto_in_a_bits_user_amba_prot_secure(binder_auto_in_a_bits_user_amba_prot_secure),
    .auto_in_a_bits_user_amba_prot_fetch(binder_auto_in_a_bits_user_amba_prot_fetch),
    .auto_in_a_bits_mask(binder_auto_in_a_bits_mask),
    .auto_in_a_bits_data(binder_auto_in_a_bits_data),
    .auto_in_d_ready(binder_auto_in_d_ready),
    .auto_in_d_valid(binder_auto_in_d_valid),
    .auto_in_d_bits_opcode(binder_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(binder_auto_in_d_bits_size),
    .auto_in_d_bits_source(binder_auto_in_d_bits_source),
    .auto_in_d_bits_denied(binder_auto_in_d_bits_denied),
    .auto_in_d_bits_data(binder_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(binder_auto_in_d_bits_corrupt),
    .auto_out_a_ready(binder_auto_out_a_ready),
    .auto_out_a_valid(binder_auto_out_a_valid),
    .auto_out_a_bits_opcode(binder_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(binder_auto_out_a_bits_size),
    .auto_out_a_bits_source(binder_auto_out_a_bits_source),
    .auto_out_a_bits_address(binder_auto_out_a_bits_address),
    .auto_out_a_bits_user_amba_prot_bufferable(binder_auto_out_a_bits_user_amba_prot_bufferable),
    .auto_out_a_bits_user_amba_prot_modifiable(binder_auto_out_a_bits_user_amba_prot_modifiable),
    .auto_out_a_bits_user_amba_prot_readalloc(binder_auto_out_a_bits_user_amba_prot_readalloc),
    .auto_out_a_bits_user_amba_prot_writealloc(binder_auto_out_a_bits_user_amba_prot_writealloc),
    .auto_out_a_bits_user_amba_prot_privileged(binder_auto_out_a_bits_user_amba_prot_privileged),
    .auto_out_a_bits_user_amba_prot_secure(binder_auto_out_a_bits_user_amba_prot_secure),
    .auto_out_a_bits_user_amba_prot_fetch(binder_auto_out_a_bits_user_amba_prot_fetch),
    .auto_out_a_bits_mask(binder_auto_out_a_bits_mask),
    .auto_out_a_bits_data(binder_auto_out_a_bits_data),
    .auto_out_d_ready(binder_auto_out_d_ready),
    .auto_out_d_valid(binder_auto_out_d_valid),
    .auto_out_d_bits_opcode(binder_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(binder_auto_out_d_bits_size),
    .auto_out_d_bits_source(binder_auto_out_d_bits_source),
    .auto_out_d_bits_denied(binder_auto_out_d_bits_denied),
    .auto_out_d_bits_data(binder_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(binder_auto_out_d_bits_corrupt)
  );
  assign clockGroup_auto_out_clock = clockGroup_auto_in_member_subsystem_l2_0_clock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign clockGroup_auto_out_reset = clockGroup_auto_in_member_subsystem_l2_0_reset; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign fixedClockNode_auto_out_clock = fixedClockNode_auto_in_clock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign fixedClockNode_auto_out_reset = fixedClockNode_auto_in_reset; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_a_ready = coherent_jbar_auto_out_a_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coherent_jbar_auto_in_b_valid = coherent_jbar_auto_out_b_valid; // @[ReadyValidCancel.scala 23:38]
  assign coherent_jbar_auto_in_b_bits_param = coherent_jbar_auto_out_b_bits_param; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coherent_jbar_auto_in_b_bits_address = coherent_jbar_auto_out_b_bits_address; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coherent_jbar_auto_in_c_ready = coherent_jbar_auto_out_c_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coherent_jbar_auto_in_d_valid = coherent_jbar_auto_out_d_valid; // @[ReadyValidCancel.scala 23:38]
  assign coherent_jbar_auto_in_d_bits_opcode = coherent_jbar_auto_out_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coherent_jbar_auto_in_d_bits_param = coherent_jbar_auto_out_d_bits_param; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coherent_jbar_auto_in_d_bits_size = coherent_jbar_auto_out_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coherent_jbar_auto_in_d_bits_source = coherent_jbar_auto_out_d_bits_source; // @[Xbar.scala 228:69]
  assign coherent_jbar_auto_in_d_bits_sink = coherent_jbar_auto_out_d_bits_sink; // @[Xbar.scala 323:53]
  assign coherent_jbar_auto_in_d_bits_denied = coherent_jbar_auto_out_d_bits_denied; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coherent_jbar_auto_in_d_bits_data = coherent_jbar_auto_out_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coherent_jbar_auto_in_d_bits_corrupt = coherent_jbar_auto_out_d_bits_corrupt; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coherent_jbar_auto_out_a_valid = coherent_jbar_auto_in_a_valid; // @[ReadyValidCancel.scala 23:38]
  assign coherent_jbar_auto_out_a_bits_opcode = coherent_jbar_auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coherent_jbar_auto_out_a_bits_param = coherent_jbar_auto_in_a_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coherent_jbar_auto_out_a_bits_size = coherent_jbar_auto_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coherent_jbar_auto_out_a_bits_source = coherent_jbar_auto_in_a_bits_source; // @[Xbar.scala 237:55]
  assign coherent_jbar_auto_out_a_bits_address = coherent_jbar_auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coherent_jbar_auto_out_a_bits_user_amba_prot_bufferable =
    coherent_jbar_auto_in_a_bits_user_amba_prot_bufferable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coherent_jbar_auto_out_a_bits_user_amba_prot_modifiable =
    coherent_jbar_auto_in_a_bits_user_amba_prot_modifiable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coherent_jbar_auto_out_a_bits_user_amba_prot_readalloc = coherent_jbar_auto_in_a_bits_user_amba_prot_readalloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coherent_jbar_auto_out_a_bits_user_amba_prot_writealloc =
    coherent_jbar_auto_in_a_bits_user_amba_prot_writealloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coherent_jbar_auto_out_a_bits_user_amba_prot_privileged =
    coherent_jbar_auto_in_a_bits_user_amba_prot_privileged; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coherent_jbar_auto_out_a_bits_user_amba_prot_secure = coherent_jbar_auto_in_a_bits_user_amba_prot_secure; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coherent_jbar_auto_out_a_bits_user_amba_prot_fetch = coherent_jbar_auto_in_a_bits_user_amba_prot_fetch; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coherent_jbar_auto_out_a_bits_mask = coherent_jbar_auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coherent_jbar_auto_out_a_bits_data = coherent_jbar_auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coherent_jbar_auto_out_b_ready = coherent_jbar_auto_in_b_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coherent_jbar_auto_out_c_valid = coherent_jbar_auto_in_c_valid; // @[ReadyValidCancel.scala 23:38]
  assign coherent_jbar_auto_out_c_bits_opcode = coherent_jbar_auto_in_c_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coherent_jbar_auto_out_c_bits_param = coherent_jbar_auto_in_c_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coherent_jbar_auto_out_c_bits_size = coherent_jbar_auto_in_c_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coherent_jbar_auto_out_c_bits_source = coherent_jbar_auto_in_c_bits_source; // @[Xbar.scala 259:55]
  assign coherent_jbar_auto_out_c_bits_address = coherent_jbar_auto_in_c_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coherent_jbar_auto_out_c_bits_data = coherent_jbar_auto_in_c_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coherent_jbar_auto_out_d_ready = coherent_jbar_auto_in_d_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coherent_jbar_auto_out_e_valid = coherent_jbar_auto_in_e_valid; // @[ReadyValidCancel.scala 23:38]
  assign coherent_jbar_auto_out_e_bits_sink = coherent_jbar_auto_in_e_bits_sink; // @[Xbar.scala 228:69]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_ready =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_valid =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_bits_opcode =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_bits_size =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_bits_source =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_bits_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_bits_denied =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_bits_denied; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_bits_data =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_bits_corrupt =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_bits_corrupt; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_valid =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_opcode =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_size =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_source =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_address =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_user_amba_prot_bufferable =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_user_amba_prot_bufferable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_user_amba_prot_modifiable =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_user_amba_prot_modifiable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_user_amba_prot_readalloc =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_user_amba_prot_readalloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_user_amba_prot_writealloc =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_user_amba_prot_writealloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_user_amba_prot_privileged =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_user_amba_prot_privileged; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_user_amba_prot_secure =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_user_amba_prot_secure; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_user_amba_prot_fetch =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_user_amba_prot_fetch; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_mask =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_data =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_ready =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_ready =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_ready; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_valid =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_valid; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_opcode =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_bits_opcode; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_size =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_bits_size; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_source =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_bits_source; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_denied =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_bits_denied; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_data =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_bits_data; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_corrupt =
    coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_bits_corrupt; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_valid =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_valid; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_opcode =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_opcode; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_size =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_size; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_source =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_source; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_address =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_address; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_bufferable =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_modifiable =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_readalloc =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_writealloc =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_privileged =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_secure =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_fetch =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_mask =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_mask; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_data =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_bits_data; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_ready =
    coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_ready; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_valid =
    coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_valid; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_opcode =
    coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_opcode; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_size =
    coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_size; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_source =
    coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_source; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_address =
    coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_address; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_user_amba_prot_bufferable =
    coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_user_amba_prot_modifiable =
    coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_user_amba_prot_readalloc =
    coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_user_amba_prot_writealloc =
    coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_user_amba_prot_privileged =
    coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_user_amba_prot_secure =
    coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_secure; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_user_amba_prot_fetch =
    coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_mask =
    coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_mask; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_a_bits_data =
    coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_data; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_in_d_ready =
    coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_ready; // @[LazyModule.scala 312:16]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_a_ready =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_ready; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_valid =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_valid; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_bits_opcode =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_opcode; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_bits_size =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_size; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_bits_source =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_source; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_bits_denied =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_denied; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_bits_data =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_data; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_widget_auto_out_d_bits_corrupt =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_corrupt; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_valid =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_valid; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_opcode =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_opcode; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_size =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_size; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_source =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_source; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_address =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_address; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_bufferable =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_modifiable =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_readalloc =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_writealloc =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_privileged =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_secure =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_user_amba_prot_fetch =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_mask =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_mask; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_bits_data =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_bits_data; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_ready =
    coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_ready; // @[LazyModule.scala 314:12]
  assign auto_coherent_jbar_in_a_ready = coherent_jbar_auto_in_a_ready; // @[LazyModule.scala 312:16]
  assign auto_coherent_jbar_in_b_valid = coherent_jbar_auto_in_b_valid; // @[LazyModule.scala 312:16]
  assign auto_coherent_jbar_in_b_bits_param = coherent_jbar_auto_in_b_bits_param; // @[LazyModule.scala 312:16]
  assign auto_coherent_jbar_in_b_bits_address = coherent_jbar_auto_in_b_bits_address; // @[LazyModule.scala 312:16]
  assign auto_coherent_jbar_in_c_ready = coherent_jbar_auto_in_c_ready; // @[LazyModule.scala 312:16]
  assign auto_coherent_jbar_in_d_valid = coherent_jbar_auto_in_d_valid; // @[LazyModule.scala 312:16]
  assign auto_coherent_jbar_in_d_bits_opcode = coherent_jbar_auto_in_d_bits_opcode; // @[LazyModule.scala 312:16]
  assign auto_coherent_jbar_in_d_bits_param = coherent_jbar_auto_in_d_bits_param; // @[LazyModule.scala 312:16]
  assign auto_coherent_jbar_in_d_bits_size = coherent_jbar_auto_in_d_bits_size; // @[LazyModule.scala 312:16]
  assign auto_coherent_jbar_in_d_bits_source = coherent_jbar_auto_in_d_bits_source; // @[LazyModule.scala 312:16]
  assign auto_coherent_jbar_in_d_bits_sink = coherent_jbar_auto_in_d_bits_sink; // @[LazyModule.scala 312:16]
  assign auto_coherent_jbar_in_d_bits_denied = coherent_jbar_auto_in_d_bits_denied; // @[LazyModule.scala 312:16]
  assign auto_coherent_jbar_in_d_bits_data = coherent_jbar_auto_in_d_bits_data; // @[LazyModule.scala 312:16]
  assign auto_coherent_jbar_in_d_bits_corrupt = coherent_jbar_auto_in_d_bits_corrupt; // @[LazyModule.scala 312:16]
  assign auto_subsystem_l2_clock_groups_out_member_subsystem_mbus_0_clock =
    subsystem_l2_clock_groups_auto_out_1_member_subsystem_mbus_0_clock; // @[LazyModule.scala 314:12]
  assign auto_subsystem_l2_clock_groups_out_member_subsystem_mbus_0_reset =
    subsystem_l2_clock_groups_auto_out_1_member_subsystem_mbus_0_reset; // @[LazyModule.scala 314:12]
  assign subsystem_l2_clock_groups_auto_in_member_subsystem_l2_1_clock =
    auto_subsystem_l2_clock_groups_in_member_subsystem_l2_1_clock; // @[LazyModule.scala 312:16]
  assign subsystem_l2_clock_groups_auto_in_member_subsystem_l2_1_reset =
    auto_subsystem_l2_clock_groups_in_member_subsystem_l2_1_reset; // @[LazyModule.scala 312:16]
  assign subsystem_l2_clock_groups_auto_in_member_subsystem_l2_0_clock =
    auto_subsystem_l2_clock_groups_in_member_subsystem_l2_0_clock; // @[LazyModule.scala 312:16]
  assign subsystem_l2_clock_groups_auto_in_member_subsystem_l2_0_reset =
    auto_subsystem_l2_clock_groups_in_member_subsystem_l2_0_reset; // @[LazyModule.scala 312:16]
  assign clockGroup_auto_in_member_subsystem_l2_0_clock =
    subsystem_l2_clock_groups_auto_out_0_member_subsystem_l2_0_clock; // @[LazyModule.scala 301:16]
  assign clockGroup_auto_in_member_subsystem_l2_0_reset =
    subsystem_l2_clock_groups_auto_out_0_member_subsystem_l2_0_reset; // @[LazyModule.scala 301:16]
  assign fixedClockNode_auto_in_clock = clockGroup_auto_out_clock; // @[LazyModule.scala 301:16]
  assign fixedClockNode_auto_in_reset = clockGroup_auto_out_reset; // @[LazyModule.scala 301:16]
  assign broadcast_1_clock = fixedClockNode_auto_out_clock; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign broadcast_1_reset = fixedClockNode_auto_out_reset; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign broadcast_1_auto_in_a_valid = coherent_jbar_auto_out_a_valid; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_a_bits_opcode = coherent_jbar_auto_out_a_bits_opcode; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_a_bits_param = coherent_jbar_auto_out_a_bits_param; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_a_bits_size = coherent_jbar_auto_out_a_bits_size; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_a_bits_source = coherent_jbar_auto_out_a_bits_source; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_a_bits_address = coherent_jbar_auto_out_a_bits_address; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_a_bits_user_amba_prot_bufferable = coherent_jbar_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_a_bits_user_amba_prot_modifiable = coherent_jbar_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_a_bits_user_amba_prot_readalloc = coherent_jbar_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_a_bits_user_amba_prot_writealloc = coherent_jbar_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_a_bits_user_amba_prot_privileged = coherent_jbar_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_a_bits_user_amba_prot_secure = coherent_jbar_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_a_bits_user_amba_prot_fetch = coherent_jbar_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_a_bits_mask = coherent_jbar_auto_out_a_bits_mask; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_a_bits_data = coherent_jbar_auto_out_a_bits_data; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_b_ready = coherent_jbar_auto_out_b_ready; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_c_valid = coherent_jbar_auto_out_c_valid; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_c_bits_opcode = coherent_jbar_auto_out_c_bits_opcode; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_c_bits_param = coherent_jbar_auto_out_c_bits_param; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_c_bits_size = coherent_jbar_auto_out_c_bits_size; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_c_bits_source = coherent_jbar_auto_out_c_bits_source; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_c_bits_address = coherent_jbar_auto_out_c_bits_address; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_c_bits_data = coherent_jbar_auto_out_c_bits_data; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_d_ready = coherent_jbar_auto_out_d_ready; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_e_valid = coherent_jbar_auto_out_e_valid; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_in_e_bits_sink = coherent_jbar_auto_out_e_bits_sink; // @[LazyModule.scala 299:16]
  assign broadcast_1_auto_out_a_ready = binder_auto_in_a_ready; // @[LazyModule.scala 301:16]
  assign broadcast_1_auto_out_d_valid = binder_auto_in_d_valid; // @[LazyModule.scala 301:16]
  assign broadcast_1_auto_out_d_bits_opcode = binder_auto_in_d_bits_opcode; // @[LazyModule.scala 301:16]
  assign broadcast_1_auto_out_d_bits_size = binder_auto_in_d_bits_size; // @[LazyModule.scala 301:16]
  assign broadcast_1_auto_out_d_bits_source = binder_auto_in_d_bits_source; // @[LazyModule.scala 301:16]
  assign broadcast_1_auto_out_d_bits_denied = binder_auto_in_d_bits_denied; // @[LazyModule.scala 301:16]
  assign broadcast_1_auto_out_d_bits_data = binder_auto_in_d_bits_data; // @[LazyModule.scala 301:16]
  assign broadcast_1_auto_out_d_bits_corrupt = binder_auto_in_d_bits_corrupt; // @[LazyModule.scala 301:16]
  assign coherent_jbar_auto_in_a_valid = auto_coherent_jbar_in_a_valid; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_a_bits_opcode = auto_coherent_jbar_in_a_bits_opcode; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_a_bits_param = auto_coherent_jbar_in_a_bits_param; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_a_bits_size = auto_coherent_jbar_in_a_bits_size; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_a_bits_source = auto_coherent_jbar_in_a_bits_source; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_a_bits_address = auto_coherent_jbar_in_a_bits_address; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_a_bits_user_amba_prot_bufferable = auto_coherent_jbar_in_a_bits_user_amba_prot_bufferable
    ; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_a_bits_user_amba_prot_modifiable = auto_coherent_jbar_in_a_bits_user_amba_prot_modifiable
    ; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_a_bits_user_amba_prot_readalloc = auto_coherent_jbar_in_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_a_bits_user_amba_prot_writealloc = auto_coherent_jbar_in_a_bits_user_amba_prot_writealloc
    ; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_a_bits_user_amba_prot_privileged = auto_coherent_jbar_in_a_bits_user_amba_prot_privileged
    ; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_a_bits_user_amba_prot_secure = auto_coherent_jbar_in_a_bits_user_amba_prot_secure; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_a_bits_user_amba_prot_fetch = auto_coherent_jbar_in_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_a_bits_mask = auto_coherent_jbar_in_a_bits_mask; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_a_bits_data = auto_coherent_jbar_in_a_bits_data; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_b_ready = auto_coherent_jbar_in_b_ready; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_c_valid = auto_coherent_jbar_in_c_valid; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_c_bits_opcode = auto_coherent_jbar_in_c_bits_opcode; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_c_bits_param = auto_coherent_jbar_in_c_bits_param; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_c_bits_size = auto_coherent_jbar_in_c_bits_size; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_c_bits_source = auto_coherent_jbar_in_c_bits_source; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_c_bits_address = auto_coherent_jbar_in_c_bits_address; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_c_bits_data = auto_coherent_jbar_in_c_bits_data; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_d_ready = auto_coherent_jbar_in_d_ready; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_e_valid = auto_coherent_jbar_in_e_valid; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_in_e_bits_sink = auto_coherent_jbar_in_e_bits_sink; // @[LazyModule.scala 312:16]
  assign coherent_jbar_auto_out_a_ready = broadcast_1_auto_in_a_ready; // @[LazyModule.scala 299:16]
  assign coherent_jbar_auto_out_b_valid = broadcast_1_auto_in_b_valid; // @[LazyModule.scala 299:16]
  assign coherent_jbar_auto_out_b_bits_param = broadcast_1_auto_in_b_bits_param; // @[LazyModule.scala 299:16]
  assign coherent_jbar_auto_out_b_bits_address = broadcast_1_auto_in_b_bits_address; // @[LazyModule.scala 299:16]
  assign coherent_jbar_auto_out_c_ready = broadcast_1_auto_in_c_ready; // @[LazyModule.scala 299:16]
  assign coherent_jbar_auto_out_d_valid = broadcast_1_auto_in_d_valid; // @[LazyModule.scala 299:16]
  assign coherent_jbar_auto_out_d_bits_opcode = broadcast_1_auto_in_d_bits_opcode; // @[LazyModule.scala 299:16]
  assign coherent_jbar_auto_out_d_bits_param = broadcast_1_auto_in_d_bits_param; // @[LazyModule.scala 299:16]
  assign coherent_jbar_auto_out_d_bits_size = broadcast_1_auto_in_d_bits_size; // @[LazyModule.scala 299:16]
  assign coherent_jbar_auto_out_d_bits_source = broadcast_1_auto_in_d_bits_source; // @[LazyModule.scala 299:16]
  assign coherent_jbar_auto_out_d_bits_sink = broadcast_1_auto_in_d_bits_sink; // @[LazyModule.scala 299:16]
  assign coherent_jbar_auto_out_d_bits_denied = broadcast_1_auto_in_d_bits_denied; // @[LazyModule.scala 299:16]
  assign coherent_jbar_auto_out_d_bits_data = broadcast_1_auto_in_d_bits_data; // @[LazyModule.scala 299:16]
  assign coherent_jbar_auto_out_d_bits_corrupt = broadcast_1_auto_in_d_bits_corrupt; // @[LazyModule.scala 299:16]
  assign binder_auto_in_a_valid = broadcast_1_auto_out_a_valid; // @[LazyModule.scala 301:16]
  assign binder_auto_in_a_bits_opcode = broadcast_1_auto_out_a_bits_opcode; // @[LazyModule.scala 301:16]
  assign binder_auto_in_a_bits_size = broadcast_1_auto_out_a_bits_size; // @[LazyModule.scala 301:16]
  assign binder_auto_in_a_bits_source = broadcast_1_auto_out_a_bits_source; // @[LazyModule.scala 301:16]
  assign binder_auto_in_a_bits_address = broadcast_1_auto_out_a_bits_address; // @[LazyModule.scala 301:16]
  assign binder_auto_in_a_bits_user_amba_prot_bufferable = broadcast_1_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 301:16]
  assign binder_auto_in_a_bits_user_amba_prot_modifiable = broadcast_1_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 301:16]
  assign binder_auto_in_a_bits_user_amba_prot_readalloc = broadcast_1_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 301:16]
  assign binder_auto_in_a_bits_user_amba_prot_writealloc = broadcast_1_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 301:16]
  assign binder_auto_in_a_bits_user_amba_prot_privileged = broadcast_1_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 301:16]
  assign binder_auto_in_a_bits_user_amba_prot_secure = broadcast_1_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 301:16]
  assign binder_auto_in_a_bits_user_amba_prot_fetch = broadcast_1_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 301:16]
  assign binder_auto_in_a_bits_mask = broadcast_1_auto_out_a_bits_mask; // @[LazyModule.scala 301:16]
  assign binder_auto_in_a_bits_data = broadcast_1_auto_out_a_bits_data; // @[LazyModule.scala 301:16]
  assign binder_auto_in_d_ready = broadcast_1_auto_out_d_ready; // @[LazyModule.scala 301:16]
  assign binder_auto_out_a_ready = coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_ready; // @[LazyModule.scala 301:16]
  assign binder_auto_out_d_valid = coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_valid; // @[LazyModule.scala 301:16]
  assign binder_auto_out_d_bits_opcode = coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 301:16]
  assign binder_auto_out_d_bits_size = coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_size; // @[LazyModule.scala 301:16]
  assign binder_auto_out_d_bits_source = coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_source; // @[LazyModule.scala 301:16]
  assign binder_auto_out_d_bits_denied = coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_denied; // @[LazyModule.scala 301:16]
  assign binder_auto_out_d_bits_data = coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_data; // @[LazyModule.scala 301:16]
  assign binder_auto_out_d_bits_corrupt = coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_valid = binder_auto_out_a_valid; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_opcode = binder_auto_out_a_bits_opcode; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_size = binder_auto_out_a_bits_size; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_source = binder_auto_out_a_bits_source; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_address = binder_auto_out_a_bits_address; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_bufferable =
    binder_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_modifiable =
    binder_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_readalloc =
    binder_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_writealloc =
    binder_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_privileged =
    binder_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_secure =
    binder_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_user_amba_prot_fetch =
    binder_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_mask = binder_auto_out_a_bits_mask; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_a_bits_data = binder_auto_out_a_bits_data; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_in_d_ready = binder_auto_out_d_ready; // @[LazyModule.scala 301:16]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_a_ready =
    auto_coupler_to_bus_named_subsystem_mbus_widget_out_a_ready; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_valid =
    auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_valid; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_opcode =
    auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_opcode; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_size =
    auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_size; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_source =
    auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_source; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_denied =
    auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_denied; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_data =
    auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_data; // @[LazyModule.scala 314:12]
  assign coupler_to_bus_named_subsystem_mbus_auto_widget_out_d_bits_corrupt =
    auto_coupler_to_bus_named_subsystem_mbus_widget_out_d_bits_corrupt; // @[LazyModule.scala 314:12]
endmodule
