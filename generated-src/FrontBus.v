module FrontBus(
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_ready,
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_valid,
  input  [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_id,
  input  [31:0] auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_addr,
  input  [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_len,
  input  [2:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_size,
  input  [1:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_burst,
  input  [3:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_cache,
  input  [2:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_prot,
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_ready,
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_valid,
  input  [63:0] auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_data,
  input  [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_strb,
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_last,
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_ready,
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_valid,
  output [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_id,
  output [1:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_resp,
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_ready,
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_valid,
  input  [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_id,
  input  [31:0] auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_addr,
  input  [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_len,
  input  [2:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_size,
  input  [1:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_burst,
  input  [3:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_cache,
  input  [2:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_prot,
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_ready,
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_valid,
  output [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_id,
  output [63:0] auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_data,
  output [1:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_resp,
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_last,
  input         auto_subsystem_fbus_clock_groups_in_member_subsystem_fbus_0_clock,
  input         auto_subsystem_fbus_clock_groups_in_member_subsystem_fbus_0_reset,
  input         auto_bus_xing_out_a_ready,
  output        auto_bus_xing_out_a_valid,
  output [2:0]  auto_bus_xing_out_a_bits_opcode,
  output [2:0]  auto_bus_xing_out_a_bits_param,
  output [3:0]  auto_bus_xing_out_a_bits_size,
  output [3:0]  auto_bus_xing_out_a_bits_source,
  output [31:0] auto_bus_xing_out_a_bits_address,
  output        auto_bus_xing_out_a_bits_user_amba_prot_bufferable,
  output        auto_bus_xing_out_a_bits_user_amba_prot_modifiable,
  output        auto_bus_xing_out_a_bits_user_amba_prot_readalloc,
  output        auto_bus_xing_out_a_bits_user_amba_prot_writealloc,
  output        auto_bus_xing_out_a_bits_user_amba_prot_privileged,
  output        auto_bus_xing_out_a_bits_user_amba_prot_secure,
  output        auto_bus_xing_out_a_bits_user_amba_prot_fetch,
  output [7:0]  auto_bus_xing_out_a_bits_mask,
  output [63:0] auto_bus_xing_out_a_bits_data,
  output        auto_bus_xing_out_a_bits_corrupt,
  output        auto_bus_xing_out_d_ready,
  input         auto_bus_xing_out_d_valid,
  input  [2:0]  auto_bus_xing_out_d_bits_opcode,
  input  [3:0]  auto_bus_xing_out_d_bits_size,
  input  [3:0]  auto_bus_xing_out_d_bits_source,
  input         auto_bus_xing_out_d_bits_denied,
  input  [63:0] auto_bus_xing_out_d_bits_data,
  input         auto_bus_xing_out_d_bits_corrupt
);
  wire  subsystem_fbus_clock_groups_auto_in_member_subsystem_fbus_0_clock;
  wire  subsystem_fbus_clock_groups_auto_in_member_subsystem_fbus_0_reset;
  wire  subsystem_fbus_clock_groups_auto_out_member_subsystem_fbus_0_clock;
  wire  subsystem_fbus_clock_groups_auto_out_member_subsystem_fbus_0_reset;
  wire  clockGroup_auto_in_member_subsystem_fbus_0_clock;
  wire  clockGroup_auto_in_member_subsystem_fbus_0_reset;
  wire  clockGroup_auto_out_clock;
  wire  clockGroup_auto_out_reset;
  wire  fixedClockNode_auto_in_clock;
  wire  fixedClockNode_auto_in_reset;
  wire  fixedClockNode_auto_out_clock;
  wire  fixedClockNode_auto_out_reset;
  wire  subsystem_fbus_xbar_auto_in_a_ready; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_in_a_valid; // @[BusWrapper.scala 357:32]
  wire [2:0] subsystem_fbus_xbar_auto_in_a_bits_opcode; // @[BusWrapper.scala 357:32]
  wire [2:0] subsystem_fbus_xbar_auto_in_a_bits_param; // @[BusWrapper.scala 357:32]
  wire [3:0] subsystem_fbus_xbar_auto_in_a_bits_size; // @[BusWrapper.scala 357:32]
  wire [3:0] subsystem_fbus_xbar_auto_in_a_bits_source; // @[BusWrapper.scala 357:32]
  wire [31:0] subsystem_fbus_xbar_auto_in_a_bits_address; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_bufferable; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_modifiable; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_readalloc; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_writealloc; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_privileged; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_secure; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_fetch; // @[BusWrapper.scala 357:32]
  wire [7:0] subsystem_fbus_xbar_auto_in_a_bits_mask; // @[BusWrapper.scala 357:32]
  wire [63:0] subsystem_fbus_xbar_auto_in_a_bits_data; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_in_a_bits_corrupt; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_in_d_ready; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_in_d_valid; // @[BusWrapper.scala 357:32]
  wire [2:0] subsystem_fbus_xbar_auto_in_d_bits_opcode; // @[BusWrapper.scala 357:32]
  wire [3:0] subsystem_fbus_xbar_auto_in_d_bits_size; // @[BusWrapper.scala 357:32]
  wire [3:0] subsystem_fbus_xbar_auto_in_d_bits_source; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_in_d_bits_denied; // @[BusWrapper.scala 357:32]
  wire [63:0] subsystem_fbus_xbar_auto_in_d_bits_data; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_in_d_bits_corrupt; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_out_a_ready; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_out_a_valid; // @[BusWrapper.scala 357:32]
  wire [2:0] subsystem_fbus_xbar_auto_out_a_bits_opcode; // @[BusWrapper.scala 357:32]
  wire [2:0] subsystem_fbus_xbar_auto_out_a_bits_param; // @[BusWrapper.scala 357:32]
  wire [3:0] subsystem_fbus_xbar_auto_out_a_bits_size; // @[BusWrapper.scala 357:32]
  wire [3:0] subsystem_fbus_xbar_auto_out_a_bits_source; // @[BusWrapper.scala 357:32]
  wire [31:0] subsystem_fbus_xbar_auto_out_a_bits_address; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_bufferable; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_modifiable; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_readalloc; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_writealloc; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_privileged; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_secure; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_fetch; // @[BusWrapper.scala 357:32]
  wire [7:0] subsystem_fbus_xbar_auto_out_a_bits_mask; // @[BusWrapper.scala 357:32]
  wire [63:0] subsystem_fbus_xbar_auto_out_a_bits_data; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_out_a_bits_corrupt; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_out_d_ready; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_out_d_valid; // @[BusWrapper.scala 357:32]
  wire [2:0] subsystem_fbus_xbar_auto_out_d_bits_opcode; // @[BusWrapper.scala 357:32]
  wire [3:0] subsystem_fbus_xbar_auto_out_d_bits_size; // @[BusWrapper.scala 357:32]
  wire [3:0] subsystem_fbus_xbar_auto_out_d_bits_source; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_out_d_bits_denied; // @[BusWrapper.scala 357:32]
  wire [63:0] subsystem_fbus_xbar_auto_out_d_bits_data; // @[BusWrapper.scala 357:32]
  wire  subsystem_fbus_xbar_auto_out_d_bits_corrupt; // @[BusWrapper.scala 357:32]
  wire  buffer_clock; // @[Buffer.scala 69:28]
  wire  buffer_reset; // @[Buffer.scala 69:28]
  wire  buffer_auto_in_a_ready; // @[Buffer.scala 69:28]
  wire  buffer_auto_in_a_valid; // @[Buffer.scala 69:28]
  wire [2:0] buffer_auto_in_a_bits_opcode; // @[Buffer.scala 69:28]
  wire [2:0] buffer_auto_in_a_bits_param; // @[Buffer.scala 69:28]
  wire [3:0] buffer_auto_in_a_bits_size; // @[Buffer.scala 69:28]
  wire [3:0] buffer_auto_in_a_bits_source; // @[Buffer.scala 69:28]
  wire [31:0] buffer_auto_in_a_bits_address; // @[Buffer.scala 69:28]
  wire  buffer_auto_in_a_bits_user_amba_prot_bufferable; // @[Buffer.scala 69:28]
  wire  buffer_auto_in_a_bits_user_amba_prot_modifiable; // @[Buffer.scala 69:28]
  wire  buffer_auto_in_a_bits_user_amba_prot_readalloc; // @[Buffer.scala 69:28]
  wire  buffer_auto_in_a_bits_user_amba_prot_writealloc; // @[Buffer.scala 69:28]
  wire  buffer_auto_in_a_bits_user_amba_prot_privileged; // @[Buffer.scala 69:28]
  wire  buffer_auto_in_a_bits_user_amba_prot_secure; // @[Buffer.scala 69:28]
  wire  buffer_auto_in_a_bits_user_amba_prot_fetch; // @[Buffer.scala 69:28]
  wire [7:0] buffer_auto_in_a_bits_mask; // @[Buffer.scala 69:28]
  wire [63:0] buffer_auto_in_a_bits_data; // @[Buffer.scala 69:28]
  wire  buffer_auto_in_a_bits_corrupt; // @[Buffer.scala 69:28]
  wire  buffer_auto_in_d_ready; // @[Buffer.scala 69:28]
  wire  buffer_auto_in_d_valid; // @[Buffer.scala 69:28]
  wire [2:0] buffer_auto_in_d_bits_opcode; // @[Buffer.scala 69:28]
  wire [3:0] buffer_auto_in_d_bits_size; // @[Buffer.scala 69:28]
  wire [3:0] buffer_auto_in_d_bits_source; // @[Buffer.scala 69:28]
  wire  buffer_auto_in_d_bits_denied; // @[Buffer.scala 69:28]
  wire [63:0] buffer_auto_in_d_bits_data; // @[Buffer.scala 69:28]
  wire  buffer_auto_in_d_bits_corrupt; // @[Buffer.scala 69:28]
  wire  buffer_auto_out_a_ready; // @[Buffer.scala 69:28]
  wire  buffer_auto_out_a_valid; // @[Buffer.scala 69:28]
  wire [2:0] buffer_auto_out_a_bits_opcode; // @[Buffer.scala 69:28]
  wire [2:0] buffer_auto_out_a_bits_param; // @[Buffer.scala 69:28]
  wire [3:0] buffer_auto_out_a_bits_size; // @[Buffer.scala 69:28]
  wire [3:0] buffer_auto_out_a_bits_source; // @[Buffer.scala 69:28]
  wire [31:0] buffer_auto_out_a_bits_address; // @[Buffer.scala 69:28]
  wire  buffer_auto_out_a_bits_user_amba_prot_bufferable; // @[Buffer.scala 69:28]
  wire  buffer_auto_out_a_bits_user_amba_prot_modifiable; // @[Buffer.scala 69:28]
  wire  buffer_auto_out_a_bits_user_amba_prot_readalloc; // @[Buffer.scala 69:28]
  wire  buffer_auto_out_a_bits_user_amba_prot_writealloc; // @[Buffer.scala 69:28]
  wire  buffer_auto_out_a_bits_user_amba_prot_privileged; // @[Buffer.scala 69:28]
  wire  buffer_auto_out_a_bits_user_amba_prot_secure; // @[Buffer.scala 69:28]
  wire  buffer_auto_out_a_bits_user_amba_prot_fetch; // @[Buffer.scala 69:28]
  wire [7:0] buffer_auto_out_a_bits_mask; // @[Buffer.scala 69:28]
  wire [63:0] buffer_auto_out_a_bits_data; // @[Buffer.scala 69:28]
  wire  buffer_auto_out_a_bits_corrupt; // @[Buffer.scala 69:28]
  wire  buffer_auto_out_d_ready; // @[Buffer.scala 69:28]
  wire  buffer_auto_out_d_valid; // @[Buffer.scala 69:28]
  wire [2:0] buffer_auto_out_d_bits_opcode; // @[Buffer.scala 69:28]
  wire [3:0] buffer_auto_out_d_bits_size; // @[Buffer.scala 69:28]
  wire [3:0] buffer_auto_out_d_bits_source; // @[Buffer.scala 69:28]
  wire  buffer_auto_out_d_bits_denied; // @[Buffer.scala 69:28]
  wire [63:0] buffer_auto_out_d_bits_data; // @[Buffer.scala 69:28]
  wire  buffer_auto_out_d_bits_corrupt; // @[Buffer.scala 69:28]
  wire  coupler_from_port_named_slave_port_axi4_clock; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_reset; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_ready; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_valid; // @[LazyModule.scala 445:27]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_id; // @[LazyModule.scala 445:27]
  wire [31:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_addr; // @[LazyModule.scala 445:27]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_len; // @[LazyModule.scala 445:27]
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_size; // @[LazyModule.scala 445:27]
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_burst; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_cache; // @[LazyModule.scala 445:27]
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_prot; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_ready; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_valid; // @[LazyModule.scala 445:27]
  wire [63:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_data; // @[LazyModule.scala 445:27]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_strb; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_last; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_ready; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_valid; // @[LazyModule.scala 445:27]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_id; // @[LazyModule.scala 445:27]
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_resp; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_ready; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_valid; // @[LazyModule.scala 445:27]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_id; // @[LazyModule.scala 445:27]
  wire [31:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_addr; // @[LazyModule.scala 445:27]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_len; // @[LazyModule.scala 445:27]
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_size; // @[LazyModule.scala 445:27]
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_burst; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_cache; // @[LazyModule.scala 445:27]
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_prot; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_ready; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_valid; // @[LazyModule.scala 445:27]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_id; // @[LazyModule.scala 445:27]
  wire [63:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_data; // @[LazyModule.scala 445:27]
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_resp; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_last; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_tl_out_a_ready; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_tl_out_a_valid; // @[LazyModule.scala 445:27]
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_opcode; // @[LazyModule.scala 445:27]
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_param; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_size; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_source; // @[LazyModule.scala 445:27]
  wire [31:0] coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_address; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 445:27]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_mask; // @[LazyModule.scala 445:27]
  wire [63:0] coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_data; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_corrupt; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_tl_out_d_ready; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_tl_out_d_valid; // @[LazyModule.scala 445:27]
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_tl_out_d_bits_opcode; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_tl_out_d_bits_size; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_tl_out_d_bits_source; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_tl_out_d_bits_denied; // @[LazyModule.scala 445:27]
  wire [63:0] coupler_from_port_named_slave_port_axi4_auto_tl_out_d_bits_data; // @[LazyModule.scala 445:27]
  wire  coupler_from_port_named_slave_port_axi4_auto_tl_out_d_bits_corrupt; // @[LazyModule.scala 445:27]
  TLXbar_3 subsystem_fbus_xbar ( // @[BusWrapper.scala 357:32]
    .auto_in_a_ready(subsystem_fbus_xbar_auto_in_a_ready),
    .auto_in_a_valid(subsystem_fbus_xbar_auto_in_a_valid),
    .auto_in_a_bits_opcode(subsystem_fbus_xbar_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(subsystem_fbus_xbar_auto_in_a_bits_param),
    .auto_in_a_bits_size(subsystem_fbus_xbar_auto_in_a_bits_size),
    .auto_in_a_bits_source(subsystem_fbus_xbar_auto_in_a_bits_source),
    .auto_in_a_bits_address(subsystem_fbus_xbar_auto_in_a_bits_address),
    .auto_in_a_bits_user_amba_prot_bufferable(subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_bufferable),
    .auto_in_a_bits_user_amba_prot_modifiable(subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_modifiable),
    .auto_in_a_bits_user_amba_prot_readalloc(subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_readalloc),
    .auto_in_a_bits_user_amba_prot_writealloc(subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_writealloc),
    .auto_in_a_bits_user_amba_prot_privileged(subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_privileged),
    .auto_in_a_bits_user_amba_prot_secure(subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_secure),
    .auto_in_a_bits_user_amba_prot_fetch(subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_fetch),
    .auto_in_a_bits_mask(subsystem_fbus_xbar_auto_in_a_bits_mask),
    .auto_in_a_bits_data(subsystem_fbus_xbar_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(subsystem_fbus_xbar_auto_in_a_bits_corrupt),
    .auto_in_d_ready(subsystem_fbus_xbar_auto_in_d_ready),
    .auto_in_d_valid(subsystem_fbus_xbar_auto_in_d_valid),
    .auto_in_d_bits_opcode(subsystem_fbus_xbar_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(subsystem_fbus_xbar_auto_in_d_bits_size),
    .auto_in_d_bits_source(subsystem_fbus_xbar_auto_in_d_bits_source),
    .auto_in_d_bits_denied(subsystem_fbus_xbar_auto_in_d_bits_denied),
    .auto_in_d_bits_data(subsystem_fbus_xbar_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(subsystem_fbus_xbar_auto_in_d_bits_corrupt),
    .auto_out_a_ready(subsystem_fbus_xbar_auto_out_a_ready),
    .auto_out_a_valid(subsystem_fbus_xbar_auto_out_a_valid),
    .auto_out_a_bits_opcode(subsystem_fbus_xbar_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(subsystem_fbus_xbar_auto_out_a_bits_param),
    .auto_out_a_bits_size(subsystem_fbus_xbar_auto_out_a_bits_size),
    .auto_out_a_bits_source(subsystem_fbus_xbar_auto_out_a_bits_source),
    .auto_out_a_bits_address(subsystem_fbus_xbar_auto_out_a_bits_address),
    .auto_out_a_bits_user_amba_prot_bufferable(subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_bufferable),
    .auto_out_a_bits_user_amba_prot_modifiable(subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_modifiable),
    .auto_out_a_bits_user_amba_prot_readalloc(subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_readalloc),
    .auto_out_a_bits_user_amba_prot_writealloc(subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_writealloc),
    .auto_out_a_bits_user_amba_prot_privileged(subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_privileged),
    .auto_out_a_bits_user_amba_prot_secure(subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_secure),
    .auto_out_a_bits_user_amba_prot_fetch(subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_fetch),
    .auto_out_a_bits_mask(subsystem_fbus_xbar_auto_out_a_bits_mask),
    .auto_out_a_bits_data(subsystem_fbus_xbar_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(subsystem_fbus_xbar_auto_out_a_bits_corrupt),
    .auto_out_d_ready(subsystem_fbus_xbar_auto_out_d_ready),
    .auto_out_d_valid(subsystem_fbus_xbar_auto_out_d_valid),
    .auto_out_d_bits_opcode(subsystem_fbus_xbar_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(subsystem_fbus_xbar_auto_out_d_bits_size),
    .auto_out_d_bits_source(subsystem_fbus_xbar_auto_out_d_bits_source),
    .auto_out_d_bits_denied(subsystem_fbus_xbar_auto_out_d_bits_denied),
    .auto_out_d_bits_data(subsystem_fbus_xbar_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(subsystem_fbus_xbar_auto_out_d_bits_corrupt)
  );
  TLBuffer_2 buffer ( // @[Buffer.scala 69:28]
    .clock(buffer_clock),
    .reset(buffer_reset),
    .auto_in_a_ready(buffer_auto_in_a_ready),
    .auto_in_a_valid(buffer_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffer_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(buffer_auto_in_a_bits_param),
    .auto_in_a_bits_size(buffer_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffer_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffer_auto_in_a_bits_address),
    .auto_in_a_bits_user_amba_prot_bufferable(buffer_auto_in_a_bits_user_amba_prot_bufferable),
    .auto_in_a_bits_user_amba_prot_modifiable(buffer_auto_in_a_bits_user_amba_prot_modifiable),
    .auto_in_a_bits_user_amba_prot_readalloc(buffer_auto_in_a_bits_user_amba_prot_readalloc),
    .auto_in_a_bits_user_amba_prot_writealloc(buffer_auto_in_a_bits_user_amba_prot_writealloc),
    .auto_in_a_bits_user_amba_prot_privileged(buffer_auto_in_a_bits_user_amba_prot_privileged),
    .auto_in_a_bits_user_amba_prot_secure(buffer_auto_in_a_bits_user_amba_prot_secure),
    .auto_in_a_bits_user_amba_prot_fetch(buffer_auto_in_a_bits_user_amba_prot_fetch),
    .auto_in_a_bits_mask(buffer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffer_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(buffer_auto_in_a_bits_corrupt),
    .auto_in_d_ready(buffer_auto_in_d_ready),
    .auto_in_d_valid(buffer_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffer_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(buffer_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffer_auto_in_d_bits_source),
    .auto_in_d_bits_denied(buffer_auto_in_d_bits_denied),
    .auto_in_d_bits_data(buffer_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(buffer_auto_in_d_bits_corrupt),
    .auto_out_a_ready(buffer_auto_out_a_ready),
    .auto_out_a_valid(buffer_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffer_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(buffer_auto_out_a_bits_param),
    .auto_out_a_bits_size(buffer_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffer_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffer_auto_out_a_bits_address),
    .auto_out_a_bits_user_amba_prot_bufferable(buffer_auto_out_a_bits_user_amba_prot_bufferable),
    .auto_out_a_bits_user_amba_prot_modifiable(buffer_auto_out_a_bits_user_amba_prot_modifiable),
    .auto_out_a_bits_user_amba_prot_readalloc(buffer_auto_out_a_bits_user_amba_prot_readalloc),
    .auto_out_a_bits_user_amba_prot_writealloc(buffer_auto_out_a_bits_user_amba_prot_writealloc),
    .auto_out_a_bits_user_amba_prot_privileged(buffer_auto_out_a_bits_user_amba_prot_privileged),
    .auto_out_a_bits_user_amba_prot_secure(buffer_auto_out_a_bits_user_amba_prot_secure),
    .auto_out_a_bits_user_amba_prot_fetch(buffer_auto_out_a_bits_user_amba_prot_fetch),
    .auto_out_a_bits_mask(buffer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffer_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(buffer_auto_out_a_bits_corrupt),
    .auto_out_d_ready(buffer_auto_out_d_ready),
    .auto_out_d_valid(buffer_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffer_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(buffer_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffer_auto_out_d_bits_source),
    .auto_out_d_bits_denied(buffer_auto_out_d_bits_denied),
    .auto_out_d_bits_data(buffer_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(buffer_auto_out_d_bits_corrupt)
  );
  TLInterconnectCoupler_5 coupler_from_port_named_slave_port_axi4 ( // @[LazyModule.scala 445:27]
    .clock(coupler_from_port_named_slave_port_axi4_clock),
    .reset(coupler_from_port_named_slave_port_axi4_reset),
    .auto_axi4index_in_aw_ready(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_ready),
    .auto_axi4index_in_aw_valid(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_valid),
    .auto_axi4index_in_aw_bits_id(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_id),
    .auto_axi4index_in_aw_bits_addr(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_addr),
    .auto_axi4index_in_aw_bits_len(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_len),
    .auto_axi4index_in_aw_bits_size(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_size),
    .auto_axi4index_in_aw_bits_burst(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_burst),
    .auto_axi4index_in_aw_bits_cache(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_cache),
    .auto_axi4index_in_aw_bits_prot(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_prot),
    .auto_axi4index_in_w_ready(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_ready),
    .auto_axi4index_in_w_valid(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_valid),
    .auto_axi4index_in_w_bits_data(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_data),
    .auto_axi4index_in_w_bits_strb(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_strb),
    .auto_axi4index_in_w_bits_last(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_last),
    .auto_axi4index_in_b_ready(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_ready),
    .auto_axi4index_in_b_valid(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_valid),
    .auto_axi4index_in_b_bits_id(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_id),
    .auto_axi4index_in_b_bits_resp(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_resp),
    .auto_axi4index_in_ar_ready(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_ready),
    .auto_axi4index_in_ar_valid(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_valid),
    .auto_axi4index_in_ar_bits_id(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_id),
    .auto_axi4index_in_ar_bits_addr(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_addr),
    .auto_axi4index_in_ar_bits_len(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_len),
    .auto_axi4index_in_ar_bits_size(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_size),
    .auto_axi4index_in_ar_bits_burst(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_burst),
    .auto_axi4index_in_ar_bits_cache(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_cache),
    .auto_axi4index_in_ar_bits_prot(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_prot),
    .auto_axi4index_in_r_ready(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_ready),
    .auto_axi4index_in_r_valid(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_valid),
    .auto_axi4index_in_r_bits_id(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_id),
    .auto_axi4index_in_r_bits_data(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_data),
    .auto_axi4index_in_r_bits_resp(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_resp),
    .auto_axi4index_in_r_bits_last(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_last),
    .auto_tl_out_a_ready(coupler_from_port_named_slave_port_axi4_auto_tl_out_a_ready),
    .auto_tl_out_a_valid(coupler_from_port_named_slave_port_axi4_auto_tl_out_a_valid),
    .auto_tl_out_a_bits_opcode(coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_opcode),
    .auto_tl_out_a_bits_param(coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_param),
    .auto_tl_out_a_bits_size(coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_size),
    .auto_tl_out_a_bits_source(coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_source),
    .auto_tl_out_a_bits_address(coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_address),
    .auto_tl_out_a_bits_user_amba_prot_bufferable(
      coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_user_amba_prot_bufferable),
    .auto_tl_out_a_bits_user_amba_prot_modifiable(
      coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_user_amba_prot_modifiable),
    .auto_tl_out_a_bits_user_amba_prot_readalloc(
      coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_user_amba_prot_readalloc),
    .auto_tl_out_a_bits_user_amba_prot_writealloc(
      coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_user_amba_prot_writealloc),
    .auto_tl_out_a_bits_user_amba_prot_privileged(
      coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_user_amba_prot_privileged),
    .auto_tl_out_a_bits_user_amba_prot_secure(
      coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_user_amba_prot_secure),
    .auto_tl_out_a_bits_user_amba_prot_fetch(
      coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_user_amba_prot_fetch),
    .auto_tl_out_a_bits_mask(coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_mask),
    .auto_tl_out_a_bits_data(coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_data),
    .auto_tl_out_a_bits_corrupt(coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_corrupt),
    .auto_tl_out_d_ready(coupler_from_port_named_slave_port_axi4_auto_tl_out_d_ready),
    .auto_tl_out_d_valid(coupler_from_port_named_slave_port_axi4_auto_tl_out_d_valid),
    .auto_tl_out_d_bits_opcode(coupler_from_port_named_slave_port_axi4_auto_tl_out_d_bits_opcode),
    .auto_tl_out_d_bits_size(coupler_from_port_named_slave_port_axi4_auto_tl_out_d_bits_size),
    .auto_tl_out_d_bits_source(coupler_from_port_named_slave_port_axi4_auto_tl_out_d_bits_source),
    .auto_tl_out_d_bits_denied(coupler_from_port_named_slave_port_axi4_auto_tl_out_d_bits_denied),
    .auto_tl_out_d_bits_data(coupler_from_port_named_slave_port_axi4_auto_tl_out_d_bits_data),
    .auto_tl_out_d_bits_corrupt(coupler_from_port_named_slave_port_axi4_auto_tl_out_d_bits_corrupt)
  );
  assign subsystem_fbus_clock_groups_auto_out_member_subsystem_fbus_0_clock =
    subsystem_fbus_clock_groups_auto_in_member_subsystem_fbus_0_clock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign subsystem_fbus_clock_groups_auto_out_member_subsystem_fbus_0_reset =
    subsystem_fbus_clock_groups_auto_in_member_subsystem_fbus_0_reset; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign clockGroup_auto_out_clock = clockGroup_auto_in_member_subsystem_fbus_0_clock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign clockGroup_auto_out_reset = clockGroup_auto_in_member_subsystem_fbus_0_reset; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign fixedClockNode_auto_out_clock = fixedClockNode_auto_in_clock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign fixedClockNode_auto_out_reset = fixedClockNode_auto_in_reset; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_ready =
    coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_ready; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_ready =
    coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_ready; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_valid =
    coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_valid; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_id =
    coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_id; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_resp =
    coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_resp; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_ready =
    coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_ready; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_valid =
    coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_valid; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_id =
    coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_id; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_data =
    coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_data; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_resp =
    coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_resp; // @[LazyModule.scala 312:16]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_last =
    coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_last; // @[LazyModule.scala 312:16]
  assign auto_bus_xing_out_a_valid = buffer_auto_out_a_valid; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_bus_xing_out_a_bits_opcode = buffer_auto_out_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_bus_xing_out_a_bits_param = buffer_auto_out_a_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_bus_xing_out_a_bits_size = buffer_auto_out_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_bus_xing_out_a_bits_source = buffer_auto_out_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_bus_xing_out_a_bits_address = buffer_auto_out_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_bus_xing_out_a_bits_user_amba_prot_bufferable = buffer_auto_out_a_bits_user_amba_prot_bufferable; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_bus_xing_out_a_bits_user_amba_prot_modifiable = buffer_auto_out_a_bits_user_amba_prot_modifiable; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_bus_xing_out_a_bits_user_amba_prot_readalloc = buffer_auto_out_a_bits_user_amba_prot_readalloc; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_bus_xing_out_a_bits_user_amba_prot_writealloc = buffer_auto_out_a_bits_user_amba_prot_writealloc; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_bus_xing_out_a_bits_user_amba_prot_privileged = buffer_auto_out_a_bits_user_amba_prot_privileged; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_bus_xing_out_a_bits_user_amba_prot_secure = buffer_auto_out_a_bits_user_amba_prot_secure; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_bus_xing_out_a_bits_user_amba_prot_fetch = buffer_auto_out_a_bits_user_amba_prot_fetch; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_bus_xing_out_a_bits_mask = buffer_auto_out_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_bus_xing_out_a_bits_data = buffer_auto_out_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_bus_xing_out_a_bits_corrupt = buffer_auto_out_a_bits_corrupt; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_bus_xing_out_d_ready = buffer_auto_out_d_ready; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign subsystem_fbus_clock_groups_auto_in_member_subsystem_fbus_0_clock =
    auto_subsystem_fbus_clock_groups_in_member_subsystem_fbus_0_clock; // @[LazyModule.scala 312:16]
  assign subsystem_fbus_clock_groups_auto_in_member_subsystem_fbus_0_reset =
    auto_subsystem_fbus_clock_groups_in_member_subsystem_fbus_0_reset; // @[LazyModule.scala 312:16]
  assign clockGroup_auto_in_member_subsystem_fbus_0_clock =
    subsystem_fbus_clock_groups_auto_out_member_subsystem_fbus_0_clock; // @[LazyModule.scala 301:16]
  assign clockGroup_auto_in_member_subsystem_fbus_0_reset =
    subsystem_fbus_clock_groups_auto_out_member_subsystem_fbus_0_reset; // @[LazyModule.scala 301:16]
  assign fixedClockNode_auto_in_clock = clockGroup_auto_out_clock; // @[LazyModule.scala 301:16]
  assign fixedClockNode_auto_in_reset = clockGroup_auto_out_reset; // @[LazyModule.scala 301:16]
  assign subsystem_fbus_xbar_auto_in_a_valid = coupler_from_port_named_slave_port_axi4_auto_tl_out_a_valid; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_xbar_auto_in_a_bits_opcode = coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_opcode; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_xbar_auto_in_a_bits_param = coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_param; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_xbar_auto_in_a_bits_size = coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_size; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_xbar_auto_in_a_bits_source = coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_source; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_xbar_auto_in_a_bits_address = coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_address
    ; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_bufferable =
    coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_modifiable =
    coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_readalloc =
    coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_writealloc =
    coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_privileged =
    coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_secure =
    coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_xbar_auto_in_a_bits_user_amba_prot_fetch =
    coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_xbar_auto_in_a_bits_mask = coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_mask; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_xbar_auto_in_a_bits_data = coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_data; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_xbar_auto_in_a_bits_corrupt = coupler_from_port_named_slave_port_axi4_auto_tl_out_a_bits_corrupt
    ; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_xbar_auto_in_d_ready = coupler_from_port_named_slave_port_axi4_auto_tl_out_d_ready; // @[LazyModule.scala 299:16]
  assign subsystem_fbus_xbar_auto_out_a_ready = buffer_auto_in_a_ready; // @[LazyModule.scala 301:16]
  assign subsystem_fbus_xbar_auto_out_d_valid = buffer_auto_in_d_valid; // @[LazyModule.scala 301:16]
  assign subsystem_fbus_xbar_auto_out_d_bits_opcode = buffer_auto_in_d_bits_opcode; // @[LazyModule.scala 301:16]
  assign subsystem_fbus_xbar_auto_out_d_bits_size = buffer_auto_in_d_bits_size; // @[LazyModule.scala 301:16]
  assign subsystem_fbus_xbar_auto_out_d_bits_source = buffer_auto_in_d_bits_source; // @[LazyModule.scala 301:16]
  assign subsystem_fbus_xbar_auto_out_d_bits_denied = buffer_auto_in_d_bits_denied; // @[LazyModule.scala 301:16]
  assign subsystem_fbus_xbar_auto_out_d_bits_data = buffer_auto_in_d_bits_data; // @[LazyModule.scala 301:16]
  assign subsystem_fbus_xbar_auto_out_d_bits_corrupt = buffer_auto_in_d_bits_corrupt; // @[LazyModule.scala 301:16]
  assign buffer_clock = fixedClockNode_auto_out_clock; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign buffer_reset = fixedClockNode_auto_out_reset; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign buffer_auto_in_a_valid = subsystem_fbus_xbar_auto_out_a_valid; // @[LazyModule.scala 301:16]
  assign buffer_auto_in_a_bits_opcode = subsystem_fbus_xbar_auto_out_a_bits_opcode; // @[LazyModule.scala 301:16]
  assign buffer_auto_in_a_bits_param = subsystem_fbus_xbar_auto_out_a_bits_param; // @[LazyModule.scala 301:16]
  assign buffer_auto_in_a_bits_size = subsystem_fbus_xbar_auto_out_a_bits_size; // @[LazyModule.scala 301:16]
  assign buffer_auto_in_a_bits_source = subsystem_fbus_xbar_auto_out_a_bits_source; // @[LazyModule.scala 301:16]
  assign buffer_auto_in_a_bits_address = subsystem_fbus_xbar_auto_out_a_bits_address; // @[LazyModule.scala 301:16]
  assign buffer_auto_in_a_bits_user_amba_prot_bufferable = subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_bufferable
    ; // @[LazyModule.scala 301:16]
  assign buffer_auto_in_a_bits_user_amba_prot_modifiable = subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_modifiable
    ; // @[LazyModule.scala 301:16]
  assign buffer_auto_in_a_bits_user_amba_prot_readalloc = subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 301:16]
  assign buffer_auto_in_a_bits_user_amba_prot_writealloc = subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_writealloc
    ; // @[LazyModule.scala 301:16]
  assign buffer_auto_in_a_bits_user_amba_prot_privileged = subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_privileged
    ; // @[LazyModule.scala 301:16]
  assign buffer_auto_in_a_bits_user_amba_prot_secure = subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 301:16]
  assign buffer_auto_in_a_bits_user_amba_prot_fetch = subsystem_fbus_xbar_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 301:16]
  assign buffer_auto_in_a_bits_mask = subsystem_fbus_xbar_auto_out_a_bits_mask; // @[LazyModule.scala 301:16]
  assign buffer_auto_in_a_bits_data = subsystem_fbus_xbar_auto_out_a_bits_data; // @[LazyModule.scala 301:16]
  assign buffer_auto_in_a_bits_corrupt = subsystem_fbus_xbar_auto_out_a_bits_corrupt; // @[LazyModule.scala 301:16]
  assign buffer_auto_in_d_ready = subsystem_fbus_xbar_auto_out_d_ready; // @[LazyModule.scala 301:16]
  assign buffer_auto_out_a_ready = auto_bus_xing_out_a_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign buffer_auto_out_d_valid = auto_bus_xing_out_d_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign buffer_auto_out_d_bits_opcode = auto_bus_xing_out_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign buffer_auto_out_d_bits_size = auto_bus_xing_out_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign buffer_auto_out_d_bits_source = auto_bus_xing_out_d_bits_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign buffer_auto_out_d_bits_denied = auto_bus_xing_out_d_bits_denied; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign buffer_auto_out_d_bits_data = auto_bus_xing_out_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign buffer_auto_out_d_bits_corrupt = auto_bus_xing_out_d_bits_corrupt; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign coupler_from_port_named_slave_port_axi4_clock = fixedClockNode_auto_out_clock; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign coupler_from_port_named_slave_port_axi4_reset = fixedClockNode_auto_out_reset; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_valid =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_valid; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_id =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_id; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_addr =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_addr; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_len =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_len; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_size =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_size; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_burst =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_burst; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_cache =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_cache; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_prot =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_prot; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_valid =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_valid; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_data =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_data; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_strb =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_strb; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_last =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_last; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_ready =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_ready; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_valid =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_valid; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_id =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_id; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_addr =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_addr; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_len =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_len; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_size =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_size; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_burst =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_burst; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_cache =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_cache; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_prot =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_prot; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_ready =
    auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_ready; // @[LazyModule.scala 312:16]
  assign coupler_from_port_named_slave_port_axi4_auto_tl_out_a_ready = subsystem_fbus_xbar_auto_in_a_ready; // @[LazyModule.scala 299:16]
  assign coupler_from_port_named_slave_port_axi4_auto_tl_out_d_valid = subsystem_fbus_xbar_auto_in_d_valid; // @[LazyModule.scala 299:16]
  assign coupler_from_port_named_slave_port_axi4_auto_tl_out_d_bits_opcode = subsystem_fbus_xbar_auto_in_d_bits_opcode; // @[LazyModule.scala 299:16]
  assign coupler_from_port_named_slave_port_axi4_auto_tl_out_d_bits_size = subsystem_fbus_xbar_auto_in_d_bits_size; // @[LazyModule.scala 299:16]
  assign coupler_from_port_named_slave_port_axi4_auto_tl_out_d_bits_source = subsystem_fbus_xbar_auto_in_d_bits_source; // @[LazyModule.scala 299:16]
  assign coupler_from_port_named_slave_port_axi4_auto_tl_out_d_bits_denied = subsystem_fbus_xbar_auto_in_d_bits_denied; // @[LazyModule.scala 299:16]
  assign coupler_from_port_named_slave_port_axi4_auto_tl_out_d_bits_data = subsystem_fbus_xbar_auto_in_d_bits_data; // @[LazyModule.scala 299:16]
  assign coupler_from_port_named_slave_port_axi4_auto_tl_out_d_bits_corrupt = subsystem_fbus_xbar_auto_in_d_bits_corrupt
    ; // @[LazyModule.scala 299:16]
endmodule
