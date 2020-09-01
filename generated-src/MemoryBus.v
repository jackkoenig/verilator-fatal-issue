module MemoryBus(
  input         auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_ready,
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_valid,
  output [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_id,
  output [31:0] auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_addr,
  output [7:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_len,
  output [2:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_size,
  output [1:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_burst,
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_lock,
  output [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_cache,
  output [2:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_prot,
  output [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_qos,
  input         auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_ready,
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_valid,
  output [63:0] auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_data,
  output [7:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_strb,
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_last,
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_ready,
  input         auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_valid,
  input  [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_id,
  input  [1:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_resp,
  input         auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_ready,
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_valid,
  output [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_id,
  output [31:0] auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_addr,
  output [7:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_len,
  output [2:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_size,
  output [1:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_burst,
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_lock,
  output [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_cache,
  output [2:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_prot,
  output [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_qos,
  output        auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_ready,
  input         auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_valid,
  input  [3:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_id,
  input  [63:0] auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_data,
  input  [1:0]  auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_resp,
  input         auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_last,
  output        auto_fixer_in_a_ready,
  input         auto_fixer_in_a_valid,
  input  [2:0]  auto_fixer_in_a_bits_opcode,
  input  [2:0]  auto_fixer_in_a_bits_size,
  input  [6:0]  auto_fixer_in_a_bits_source,
  input  [31:0] auto_fixer_in_a_bits_address,
  input         auto_fixer_in_a_bits_user_amba_prot_bufferable,
  input         auto_fixer_in_a_bits_user_amba_prot_modifiable,
  input         auto_fixer_in_a_bits_user_amba_prot_readalloc,
  input         auto_fixer_in_a_bits_user_amba_prot_writealloc,
  input         auto_fixer_in_a_bits_user_amba_prot_privileged,
  input         auto_fixer_in_a_bits_user_amba_prot_secure,
  input         auto_fixer_in_a_bits_user_amba_prot_fetch,
  input  [7:0]  auto_fixer_in_a_bits_mask,
  input  [63:0] auto_fixer_in_a_bits_data,
  input         auto_fixer_in_d_ready,
  output        auto_fixer_in_d_valid,
  output [2:0]  auto_fixer_in_d_bits_opcode,
  output [2:0]  auto_fixer_in_d_bits_size,
  output [6:0]  auto_fixer_in_d_bits_source,
  output        auto_fixer_in_d_bits_denied,
  output [63:0] auto_fixer_in_d_bits_data,
  output        auto_fixer_in_d_bits_corrupt,
  input         auto_subsystem_mbus_clock_groups_in_member_subsystem_mbus_0_clock,
  input         auto_subsystem_mbus_clock_groups_in_member_subsystem_mbus_0_reset
);
  wire  subsystem_mbus_clock_groups_auto_in_member_subsystem_mbus_0_clock;
  wire  subsystem_mbus_clock_groups_auto_in_member_subsystem_mbus_0_reset;
  wire  subsystem_mbus_clock_groups_auto_out_member_subsystem_mbus_0_clock;
  wire  subsystem_mbus_clock_groups_auto_out_member_subsystem_mbus_0_reset;
  wire  clockGroup_auto_in_member_subsystem_mbus_0_clock;
  wire  clockGroup_auto_in_member_subsystem_mbus_0_reset;
  wire  clockGroup_auto_out_clock;
  wire  clockGroup_auto_out_reset;
  wire  fixedClockNode_auto_in_clock;
  wire  fixedClockNode_auto_in_reset;
  wire  fixedClockNode_auto_out_clock;
  wire  fixedClockNode_auto_out_reset;
  wire  subsystem_mbus_xbar_auto_in_a_ready; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_in_a_valid; // @[MemoryBus.scala 44:32]
  wire [2:0] subsystem_mbus_xbar_auto_in_a_bits_opcode; // @[MemoryBus.scala 44:32]
  wire [2:0] subsystem_mbus_xbar_auto_in_a_bits_size; // @[MemoryBus.scala 44:32]
  wire [6:0] subsystem_mbus_xbar_auto_in_a_bits_source; // @[MemoryBus.scala 44:32]
  wire [31:0] subsystem_mbus_xbar_auto_in_a_bits_address; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_bufferable; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_modifiable; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_readalloc; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_writealloc; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_privileged; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_secure; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_fetch; // @[MemoryBus.scala 44:32]
  wire [7:0] subsystem_mbus_xbar_auto_in_a_bits_mask; // @[MemoryBus.scala 44:32]
  wire [63:0] subsystem_mbus_xbar_auto_in_a_bits_data; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_in_d_ready; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_in_d_valid; // @[MemoryBus.scala 44:32]
  wire [2:0] subsystem_mbus_xbar_auto_in_d_bits_opcode; // @[MemoryBus.scala 44:32]
  wire [2:0] subsystem_mbus_xbar_auto_in_d_bits_size; // @[MemoryBus.scala 44:32]
  wire [6:0] subsystem_mbus_xbar_auto_in_d_bits_source; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_in_d_bits_denied; // @[MemoryBus.scala 44:32]
  wire [63:0] subsystem_mbus_xbar_auto_in_d_bits_data; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_in_d_bits_corrupt; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_out_a_ready; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_out_a_valid; // @[MemoryBus.scala 44:32]
  wire [2:0] subsystem_mbus_xbar_auto_out_a_bits_opcode; // @[MemoryBus.scala 44:32]
  wire [2:0] subsystem_mbus_xbar_auto_out_a_bits_size; // @[MemoryBus.scala 44:32]
  wire [6:0] subsystem_mbus_xbar_auto_out_a_bits_source; // @[MemoryBus.scala 44:32]
  wire [31:0] subsystem_mbus_xbar_auto_out_a_bits_address; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_bufferable; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_modifiable; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_readalloc; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_writealloc; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_privileged; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_secure; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_fetch; // @[MemoryBus.scala 44:32]
  wire [7:0] subsystem_mbus_xbar_auto_out_a_bits_mask; // @[MemoryBus.scala 44:32]
  wire [63:0] subsystem_mbus_xbar_auto_out_a_bits_data; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_out_d_ready; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_out_d_valid; // @[MemoryBus.scala 44:32]
  wire [2:0] subsystem_mbus_xbar_auto_out_d_bits_opcode; // @[MemoryBus.scala 44:32]
  wire [2:0] subsystem_mbus_xbar_auto_out_d_bits_size; // @[MemoryBus.scala 44:32]
  wire [6:0] subsystem_mbus_xbar_auto_out_d_bits_source; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_out_d_bits_denied; // @[MemoryBus.scala 44:32]
  wire [63:0] subsystem_mbus_xbar_auto_out_d_bits_data; // @[MemoryBus.scala 44:32]
  wire  subsystem_mbus_xbar_auto_out_d_bits_corrupt; // @[MemoryBus.scala 44:32]
  wire  fixer_auto_in_a_ready; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_a_valid; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_in_a_bits_opcode; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_in_a_bits_size; // @[FIFOFixer.scala 146:27]
  wire [6:0] fixer_auto_in_a_bits_source; // @[FIFOFixer.scala 146:27]
  wire [31:0] fixer_auto_in_a_bits_address; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_a_bits_user_amba_prot_bufferable; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_a_bits_user_amba_prot_modifiable; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_a_bits_user_amba_prot_readalloc; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_a_bits_user_amba_prot_writealloc; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_a_bits_user_amba_prot_privileged; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_a_bits_user_amba_prot_secure; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_a_bits_user_amba_prot_fetch; // @[FIFOFixer.scala 146:27]
  wire [7:0] fixer_auto_in_a_bits_mask; // @[FIFOFixer.scala 146:27]
  wire [63:0] fixer_auto_in_a_bits_data; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_d_ready; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_d_valid; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_in_d_bits_opcode; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_in_d_bits_size; // @[FIFOFixer.scala 146:27]
  wire [6:0] fixer_auto_in_d_bits_source; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_d_bits_denied; // @[FIFOFixer.scala 146:27]
  wire [63:0] fixer_auto_in_d_bits_data; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_d_bits_corrupt; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_a_ready; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_a_valid; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_out_a_bits_opcode; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_out_a_bits_size; // @[FIFOFixer.scala 146:27]
  wire [6:0] fixer_auto_out_a_bits_source; // @[FIFOFixer.scala 146:27]
  wire [31:0] fixer_auto_out_a_bits_address; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_a_bits_user_amba_prot_bufferable; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_a_bits_user_amba_prot_modifiable; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_a_bits_user_amba_prot_readalloc; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_a_bits_user_amba_prot_writealloc; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_a_bits_user_amba_prot_privileged; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_a_bits_user_amba_prot_secure; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_a_bits_user_amba_prot_fetch; // @[FIFOFixer.scala 146:27]
  wire [7:0] fixer_auto_out_a_bits_mask; // @[FIFOFixer.scala 146:27]
  wire [63:0] fixer_auto_out_a_bits_data; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_d_ready; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_d_valid; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_out_d_bits_opcode; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_out_d_bits_size; // @[FIFOFixer.scala 146:27]
  wire [6:0] fixer_auto_out_d_bits_source; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_d_bits_denied; // @[FIFOFixer.scala 146:27]
  wire [63:0] fixer_auto_out_d_bits_data; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_d_bits_corrupt; // @[FIFOFixer.scala 146:27]
  wire  picker_auto_in_a_ready; // @[ProbePicker.scala 65:28]
  wire  picker_auto_in_a_valid; // @[ProbePicker.scala 65:28]
  wire [2:0] picker_auto_in_a_bits_opcode; // @[ProbePicker.scala 65:28]
  wire [2:0] picker_auto_in_a_bits_size; // @[ProbePicker.scala 65:28]
  wire [6:0] picker_auto_in_a_bits_source; // @[ProbePicker.scala 65:28]
  wire [31:0] picker_auto_in_a_bits_address; // @[ProbePicker.scala 65:28]
  wire  picker_auto_in_a_bits_user_amba_prot_bufferable; // @[ProbePicker.scala 65:28]
  wire  picker_auto_in_a_bits_user_amba_prot_modifiable; // @[ProbePicker.scala 65:28]
  wire  picker_auto_in_a_bits_user_amba_prot_readalloc; // @[ProbePicker.scala 65:28]
  wire  picker_auto_in_a_bits_user_amba_prot_writealloc; // @[ProbePicker.scala 65:28]
  wire  picker_auto_in_a_bits_user_amba_prot_privileged; // @[ProbePicker.scala 65:28]
  wire  picker_auto_in_a_bits_user_amba_prot_secure; // @[ProbePicker.scala 65:28]
  wire  picker_auto_in_a_bits_user_amba_prot_fetch; // @[ProbePicker.scala 65:28]
  wire [7:0] picker_auto_in_a_bits_mask; // @[ProbePicker.scala 65:28]
  wire [63:0] picker_auto_in_a_bits_data; // @[ProbePicker.scala 65:28]
  wire  picker_auto_in_d_ready; // @[ProbePicker.scala 65:28]
  wire  picker_auto_in_d_valid; // @[ProbePicker.scala 65:28]
  wire [2:0] picker_auto_in_d_bits_opcode; // @[ProbePicker.scala 65:28]
  wire [2:0] picker_auto_in_d_bits_size; // @[ProbePicker.scala 65:28]
  wire [6:0] picker_auto_in_d_bits_source; // @[ProbePicker.scala 65:28]
  wire  picker_auto_in_d_bits_denied; // @[ProbePicker.scala 65:28]
  wire [63:0] picker_auto_in_d_bits_data; // @[ProbePicker.scala 65:28]
  wire  picker_auto_in_d_bits_corrupt; // @[ProbePicker.scala 65:28]
  wire  picker_auto_out_a_ready; // @[ProbePicker.scala 65:28]
  wire  picker_auto_out_a_valid; // @[ProbePicker.scala 65:28]
  wire [2:0] picker_auto_out_a_bits_opcode; // @[ProbePicker.scala 65:28]
  wire [2:0] picker_auto_out_a_bits_size; // @[ProbePicker.scala 65:28]
  wire [6:0] picker_auto_out_a_bits_source; // @[ProbePicker.scala 65:28]
  wire [31:0] picker_auto_out_a_bits_address; // @[ProbePicker.scala 65:28]
  wire  picker_auto_out_a_bits_user_amba_prot_bufferable; // @[ProbePicker.scala 65:28]
  wire  picker_auto_out_a_bits_user_amba_prot_modifiable; // @[ProbePicker.scala 65:28]
  wire  picker_auto_out_a_bits_user_amba_prot_readalloc; // @[ProbePicker.scala 65:28]
  wire  picker_auto_out_a_bits_user_amba_prot_writealloc; // @[ProbePicker.scala 65:28]
  wire  picker_auto_out_a_bits_user_amba_prot_privileged; // @[ProbePicker.scala 65:28]
  wire  picker_auto_out_a_bits_user_amba_prot_secure; // @[ProbePicker.scala 65:28]
  wire  picker_auto_out_a_bits_user_amba_prot_fetch; // @[ProbePicker.scala 65:28]
  wire [7:0] picker_auto_out_a_bits_mask; // @[ProbePicker.scala 65:28]
  wire [63:0] picker_auto_out_a_bits_data; // @[ProbePicker.scala 65:28]
  wire  picker_auto_out_d_ready; // @[ProbePicker.scala 65:28]
  wire  picker_auto_out_d_valid; // @[ProbePicker.scala 65:28]
  wire [2:0] picker_auto_out_d_bits_opcode; // @[ProbePicker.scala 65:28]
  wire [2:0] picker_auto_out_d_bits_size; // @[ProbePicker.scala 65:28]
  wire [6:0] picker_auto_out_d_bits_source; // @[ProbePicker.scala 65:28]
  wire  picker_auto_out_d_bits_denied; // @[ProbePicker.scala 65:28]
  wire [63:0] picker_auto_out_d_bits_data; // @[ProbePicker.scala 65:28]
  wire  picker_auto_out_d_bits_corrupt; // @[ProbePicker.scala 65:28]
  wire  coupler_to_memory_controller_port_named_axi4_clock; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_reset; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_ready; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_valid; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_id; // @[LazyModule.scala 445:27]
  wire [31:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_addr; // @[LazyModule.scala 445:27]
  wire [7:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_len; // @[LazyModule.scala 445:27]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_size; // @[LazyModule.scala 445:27]
  wire [1:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_burst; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_lock; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_cache; // @[LazyModule.scala 445:27]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_prot; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_qos; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_ready; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_valid; // @[LazyModule.scala 445:27]
  wire [63:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_data; // @[LazyModule.scala 445:27]
  wire [7:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_strb; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_last; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_ready; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_valid; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_bits_id; // @[LazyModule.scala 445:27]
  wire [1:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_bits_resp; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_ready; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_valid; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_id; // @[LazyModule.scala 445:27]
  wire [31:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_addr; // @[LazyModule.scala 445:27]
  wire [7:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_len; // @[LazyModule.scala 445:27]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_size; // @[LazyModule.scala 445:27]
  wire [1:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_burst; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_lock; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_cache; // @[LazyModule.scala 445:27]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_prot; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_qos; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_ready; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_valid; // @[LazyModule.scala 445:27]
  wire [3:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_id; // @[LazyModule.scala 445:27]
  wire [63:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_data; // @[LazyModule.scala 445:27]
  wire [1:0] coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_resp; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_last; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_ready; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_valid; // @[LazyModule.scala 445:27]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_opcode; // @[LazyModule.scala 445:27]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_size; // @[LazyModule.scala 445:27]
  wire [6:0] coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_source; // @[LazyModule.scala 445:27]
  wire [31:0] coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_address; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_user_amba_prot_secure; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 445:27]
  wire [7:0] coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_mask; // @[LazyModule.scala 445:27]
  wire [63:0] coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_data; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_ready; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_valid; // @[LazyModule.scala 445:27]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_bits_opcode; // @[LazyModule.scala 445:27]
  wire [2:0] coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_bits_size; // @[LazyModule.scala 445:27]
  wire [6:0] coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_bits_source; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_bits_denied; // @[LazyModule.scala 445:27]
  wire [63:0] coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_bits_data; // @[LazyModule.scala 445:27]
  wire  coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_bits_corrupt; // @[LazyModule.scala 445:27]
  TLXbar_6 subsystem_mbus_xbar ( // @[MemoryBus.scala 44:32]
    .auto_in_a_ready(subsystem_mbus_xbar_auto_in_a_ready),
    .auto_in_a_valid(subsystem_mbus_xbar_auto_in_a_valid),
    .auto_in_a_bits_opcode(subsystem_mbus_xbar_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(subsystem_mbus_xbar_auto_in_a_bits_size),
    .auto_in_a_bits_source(subsystem_mbus_xbar_auto_in_a_bits_source),
    .auto_in_a_bits_address(subsystem_mbus_xbar_auto_in_a_bits_address),
    .auto_in_a_bits_user_amba_prot_bufferable(subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_bufferable),
    .auto_in_a_bits_user_amba_prot_modifiable(subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_modifiable),
    .auto_in_a_bits_user_amba_prot_readalloc(subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_readalloc),
    .auto_in_a_bits_user_amba_prot_writealloc(subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_writealloc),
    .auto_in_a_bits_user_amba_prot_privileged(subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_privileged),
    .auto_in_a_bits_user_amba_prot_secure(subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_secure),
    .auto_in_a_bits_user_amba_prot_fetch(subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_fetch),
    .auto_in_a_bits_mask(subsystem_mbus_xbar_auto_in_a_bits_mask),
    .auto_in_a_bits_data(subsystem_mbus_xbar_auto_in_a_bits_data),
    .auto_in_d_ready(subsystem_mbus_xbar_auto_in_d_ready),
    .auto_in_d_valid(subsystem_mbus_xbar_auto_in_d_valid),
    .auto_in_d_bits_opcode(subsystem_mbus_xbar_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(subsystem_mbus_xbar_auto_in_d_bits_size),
    .auto_in_d_bits_source(subsystem_mbus_xbar_auto_in_d_bits_source),
    .auto_in_d_bits_denied(subsystem_mbus_xbar_auto_in_d_bits_denied),
    .auto_in_d_bits_data(subsystem_mbus_xbar_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(subsystem_mbus_xbar_auto_in_d_bits_corrupt),
    .auto_out_a_ready(subsystem_mbus_xbar_auto_out_a_ready),
    .auto_out_a_valid(subsystem_mbus_xbar_auto_out_a_valid),
    .auto_out_a_bits_opcode(subsystem_mbus_xbar_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(subsystem_mbus_xbar_auto_out_a_bits_size),
    .auto_out_a_bits_source(subsystem_mbus_xbar_auto_out_a_bits_source),
    .auto_out_a_bits_address(subsystem_mbus_xbar_auto_out_a_bits_address),
    .auto_out_a_bits_user_amba_prot_bufferable(subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_bufferable),
    .auto_out_a_bits_user_amba_prot_modifiable(subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_modifiable),
    .auto_out_a_bits_user_amba_prot_readalloc(subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_readalloc),
    .auto_out_a_bits_user_amba_prot_writealloc(subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_writealloc),
    .auto_out_a_bits_user_amba_prot_privileged(subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_privileged),
    .auto_out_a_bits_user_amba_prot_secure(subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_secure),
    .auto_out_a_bits_user_amba_prot_fetch(subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_fetch),
    .auto_out_a_bits_mask(subsystem_mbus_xbar_auto_out_a_bits_mask),
    .auto_out_a_bits_data(subsystem_mbus_xbar_auto_out_a_bits_data),
    .auto_out_d_ready(subsystem_mbus_xbar_auto_out_d_ready),
    .auto_out_d_valid(subsystem_mbus_xbar_auto_out_d_valid),
    .auto_out_d_bits_opcode(subsystem_mbus_xbar_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(subsystem_mbus_xbar_auto_out_d_bits_size),
    .auto_out_d_bits_source(subsystem_mbus_xbar_auto_out_d_bits_source),
    .auto_out_d_bits_denied(subsystem_mbus_xbar_auto_out_d_bits_denied),
    .auto_out_d_bits_data(subsystem_mbus_xbar_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(subsystem_mbus_xbar_auto_out_d_bits_corrupt)
  );
  TLFIFOFixer_4 fixer ( // @[FIFOFixer.scala 146:27]
    .auto_in_a_ready(fixer_auto_in_a_ready),
    .auto_in_a_valid(fixer_auto_in_a_valid),
    .auto_in_a_bits_opcode(fixer_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(fixer_auto_in_a_bits_size),
    .auto_in_a_bits_source(fixer_auto_in_a_bits_source),
    .auto_in_a_bits_address(fixer_auto_in_a_bits_address),
    .auto_in_a_bits_user_amba_prot_bufferable(fixer_auto_in_a_bits_user_amba_prot_bufferable),
    .auto_in_a_bits_user_amba_prot_modifiable(fixer_auto_in_a_bits_user_amba_prot_modifiable),
    .auto_in_a_bits_user_amba_prot_readalloc(fixer_auto_in_a_bits_user_amba_prot_readalloc),
    .auto_in_a_bits_user_amba_prot_writealloc(fixer_auto_in_a_bits_user_amba_prot_writealloc),
    .auto_in_a_bits_user_amba_prot_privileged(fixer_auto_in_a_bits_user_amba_prot_privileged),
    .auto_in_a_bits_user_amba_prot_secure(fixer_auto_in_a_bits_user_amba_prot_secure),
    .auto_in_a_bits_user_amba_prot_fetch(fixer_auto_in_a_bits_user_amba_prot_fetch),
    .auto_in_a_bits_mask(fixer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(fixer_auto_in_a_bits_data),
    .auto_in_d_ready(fixer_auto_in_d_ready),
    .auto_in_d_valid(fixer_auto_in_d_valid),
    .auto_in_d_bits_opcode(fixer_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(fixer_auto_in_d_bits_size),
    .auto_in_d_bits_source(fixer_auto_in_d_bits_source),
    .auto_in_d_bits_denied(fixer_auto_in_d_bits_denied),
    .auto_in_d_bits_data(fixer_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(fixer_auto_in_d_bits_corrupt),
    .auto_out_a_ready(fixer_auto_out_a_ready),
    .auto_out_a_valid(fixer_auto_out_a_valid),
    .auto_out_a_bits_opcode(fixer_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(fixer_auto_out_a_bits_size),
    .auto_out_a_bits_source(fixer_auto_out_a_bits_source),
    .auto_out_a_bits_address(fixer_auto_out_a_bits_address),
    .auto_out_a_bits_user_amba_prot_bufferable(fixer_auto_out_a_bits_user_amba_prot_bufferable),
    .auto_out_a_bits_user_amba_prot_modifiable(fixer_auto_out_a_bits_user_amba_prot_modifiable),
    .auto_out_a_bits_user_amba_prot_readalloc(fixer_auto_out_a_bits_user_amba_prot_readalloc),
    .auto_out_a_bits_user_amba_prot_writealloc(fixer_auto_out_a_bits_user_amba_prot_writealloc),
    .auto_out_a_bits_user_amba_prot_privileged(fixer_auto_out_a_bits_user_amba_prot_privileged),
    .auto_out_a_bits_user_amba_prot_secure(fixer_auto_out_a_bits_user_amba_prot_secure),
    .auto_out_a_bits_user_amba_prot_fetch(fixer_auto_out_a_bits_user_amba_prot_fetch),
    .auto_out_a_bits_mask(fixer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(fixer_auto_out_a_bits_data),
    .auto_out_d_ready(fixer_auto_out_d_ready),
    .auto_out_d_valid(fixer_auto_out_d_valid),
    .auto_out_d_bits_opcode(fixer_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(fixer_auto_out_d_bits_size),
    .auto_out_d_bits_source(fixer_auto_out_d_bits_source),
    .auto_out_d_bits_denied(fixer_auto_out_d_bits_denied),
    .auto_out_d_bits_data(fixer_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(fixer_auto_out_d_bits_corrupt)
  );
  ProbePicker picker ( // @[ProbePicker.scala 65:28]
    .auto_in_a_ready(picker_auto_in_a_ready),
    .auto_in_a_valid(picker_auto_in_a_valid),
    .auto_in_a_bits_opcode(picker_auto_in_a_bits_opcode),
    .auto_in_a_bits_size(picker_auto_in_a_bits_size),
    .auto_in_a_bits_source(picker_auto_in_a_bits_source),
    .auto_in_a_bits_address(picker_auto_in_a_bits_address),
    .auto_in_a_bits_user_amba_prot_bufferable(picker_auto_in_a_bits_user_amba_prot_bufferable),
    .auto_in_a_bits_user_amba_prot_modifiable(picker_auto_in_a_bits_user_amba_prot_modifiable),
    .auto_in_a_bits_user_amba_prot_readalloc(picker_auto_in_a_bits_user_amba_prot_readalloc),
    .auto_in_a_bits_user_amba_prot_writealloc(picker_auto_in_a_bits_user_amba_prot_writealloc),
    .auto_in_a_bits_user_amba_prot_privileged(picker_auto_in_a_bits_user_amba_prot_privileged),
    .auto_in_a_bits_user_amba_prot_secure(picker_auto_in_a_bits_user_amba_prot_secure),
    .auto_in_a_bits_user_amba_prot_fetch(picker_auto_in_a_bits_user_amba_prot_fetch),
    .auto_in_a_bits_mask(picker_auto_in_a_bits_mask),
    .auto_in_a_bits_data(picker_auto_in_a_bits_data),
    .auto_in_d_ready(picker_auto_in_d_ready),
    .auto_in_d_valid(picker_auto_in_d_valid),
    .auto_in_d_bits_opcode(picker_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(picker_auto_in_d_bits_size),
    .auto_in_d_bits_source(picker_auto_in_d_bits_source),
    .auto_in_d_bits_denied(picker_auto_in_d_bits_denied),
    .auto_in_d_bits_data(picker_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(picker_auto_in_d_bits_corrupt),
    .auto_out_a_ready(picker_auto_out_a_ready),
    .auto_out_a_valid(picker_auto_out_a_valid),
    .auto_out_a_bits_opcode(picker_auto_out_a_bits_opcode),
    .auto_out_a_bits_size(picker_auto_out_a_bits_size),
    .auto_out_a_bits_source(picker_auto_out_a_bits_source),
    .auto_out_a_bits_address(picker_auto_out_a_bits_address),
    .auto_out_a_bits_user_amba_prot_bufferable(picker_auto_out_a_bits_user_amba_prot_bufferable),
    .auto_out_a_bits_user_amba_prot_modifiable(picker_auto_out_a_bits_user_amba_prot_modifiable),
    .auto_out_a_bits_user_amba_prot_readalloc(picker_auto_out_a_bits_user_amba_prot_readalloc),
    .auto_out_a_bits_user_amba_prot_writealloc(picker_auto_out_a_bits_user_amba_prot_writealloc),
    .auto_out_a_bits_user_amba_prot_privileged(picker_auto_out_a_bits_user_amba_prot_privileged),
    .auto_out_a_bits_user_amba_prot_secure(picker_auto_out_a_bits_user_amba_prot_secure),
    .auto_out_a_bits_user_amba_prot_fetch(picker_auto_out_a_bits_user_amba_prot_fetch),
    .auto_out_a_bits_mask(picker_auto_out_a_bits_mask),
    .auto_out_a_bits_data(picker_auto_out_a_bits_data),
    .auto_out_d_ready(picker_auto_out_d_ready),
    .auto_out_d_valid(picker_auto_out_d_valid),
    .auto_out_d_bits_opcode(picker_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(picker_auto_out_d_bits_size),
    .auto_out_d_bits_source(picker_auto_out_d_bits_source),
    .auto_out_d_bits_denied(picker_auto_out_d_bits_denied),
    .auto_out_d_bits_data(picker_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(picker_auto_out_d_bits_corrupt)
  );
  TLInterconnectCoupler_12 coupler_to_memory_controller_port_named_axi4 ( // @[LazyModule.scala 445:27]
    .clock(coupler_to_memory_controller_port_named_axi4_clock),
    .reset(coupler_to_memory_controller_port_named_axi4_reset),
    .auto_axi4yank_out_aw_ready(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_ready),
    .auto_axi4yank_out_aw_valid(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_valid),
    .auto_axi4yank_out_aw_bits_id(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_id),
    .auto_axi4yank_out_aw_bits_addr(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_addr),
    .auto_axi4yank_out_aw_bits_len(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_len),
    .auto_axi4yank_out_aw_bits_size(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_size),
    .auto_axi4yank_out_aw_bits_burst(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_burst),
    .auto_axi4yank_out_aw_bits_lock(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_lock),
    .auto_axi4yank_out_aw_bits_cache(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_cache),
    .auto_axi4yank_out_aw_bits_prot(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_prot),
    .auto_axi4yank_out_aw_bits_qos(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_qos),
    .auto_axi4yank_out_w_ready(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_ready),
    .auto_axi4yank_out_w_valid(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_valid),
    .auto_axi4yank_out_w_bits_data(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_data),
    .auto_axi4yank_out_w_bits_strb(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_strb),
    .auto_axi4yank_out_w_bits_last(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_last),
    .auto_axi4yank_out_b_ready(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_ready),
    .auto_axi4yank_out_b_valid(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_valid),
    .auto_axi4yank_out_b_bits_id(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_bits_id),
    .auto_axi4yank_out_b_bits_resp(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_bits_resp),
    .auto_axi4yank_out_ar_ready(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_ready),
    .auto_axi4yank_out_ar_valid(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_valid),
    .auto_axi4yank_out_ar_bits_id(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_id),
    .auto_axi4yank_out_ar_bits_addr(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_addr),
    .auto_axi4yank_out_ar_bits_len(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_len),
    .auto_axi4yank_out_ar_bits_size(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_size),
    .auto_axi4yank_out_ar_bits_burst(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_burst),
    .auto_axi4yank_out_ar_bits_lock(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_lock),
    .auto_axi4yank_out_ar_bits_cache(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_cache),
    .auto_axi4yank_out_ar_bits_prot(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_prot),
    .auto_axi4yank_out_ar_bits_qos(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_qos),
    .auto_axi4yank_out_r_ready(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_ready),
    .auto_axi4yank_out_r_valid(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_valid),
    .auto_axi4yank_out_r_bits_id(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_id),
    .auto_axi4yank_out_r_bits_data(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_data),
    .auto_axi4yank_out_r_bits_resp(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_resp),
    .auto_axi4yank_out_r_bits_last(coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_last),
    .auto_tl_in_a_ready(coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_ready),
    .auto_tl_in_a_valid(coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_valid),
    .auto_tl_in_a_bits_opcode(coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_opcode),
    .auto_tl_in_a_bits_size(coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_size),
    .auto_tl_in_a_bits_source(coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_source),
    .auto_tl_in_a_bits_address(coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_address),
    .auto_tl_in_a_bits_user_amba_prot_bufferable(
      coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_user_amba_prot_bufferable),
    .auto_tl_in_a_bits_user_amba_prot_modifiable(
      coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_user_amba_prot_modifiable),
    .auto_tl_in_a_bits_user_amba_prot_readalloc(
      coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_user_amba_prot_readalloc),
    .auto_tl_in_a_bits_user_amba_prot_writealloc(
      coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_user_amba_prot_writealloc),
    .auto_tl_in_a_bits_user_amba_prot_privileged(
      coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_user_amba_prot_privileged),
    .auto_tl_in_a_bits_user_amba_prot_secure(
      coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_user_amba_prot_secure),
    .auto_tl_in_a_bits_user_amba_prot_fetch(
      coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_user_amba_prot_fetch),
    .auto_tl_in_a_bits_mask(coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_mask),
    .auto_tl_in_a_bits_data(coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_data),
    .auto_tl_in_d_ready(coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_ready),
    .auto_tl_in_d_valid(coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_valid),
    .auto_tl_in_d_bits_opcode(coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_bits_opcode),
    .auto_tl_in_d_bits_size(coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_bits_size),
    .auto_tl_in_d_bits_source(coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_bits_source),
    .auto_tl_in_d_bits_denied(coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_bits_denied),
    .auto_tl_in_d_bits_data(coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_bits_data),
    .auto_tl_in_d_bits_corrupt(coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_bits_corrupt)
  );
  assign subsystem_mbus_clock_groups_auto_out_member_subsystem_mbus_0_clock =
    subsystem_mbus_clock_groups_auto_in_member_subsystem_mbus_0_clock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign subsystem_mbus_clock_groups_auto_out_member_subsystem_mbus_0_reset =
    subsystem_mbus_clock_groups_auto_in_member_subsystem_mbus_0_reset; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign clockGroup_auto_out_clock = clockGroup_auto_in_member_subsystem_mbus_0_clock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign clockGroup_auto_out_reset = clockGroup_auto_in_member_subsystem_mbus_0_reset; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign fixedClockNode_auto_out_clock = fixedClockNode_auto_in_clock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign fixedClockNode_auto_out_reset = fixedClockNode_auto_in_reset; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_valid =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_valid; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_id =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_id; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_addr =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_addr; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_len =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_len; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_size =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_size; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_burst =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_burst; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_lock =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_lock; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_cache =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_cache; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_prot =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_prot; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_bits_qos =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_bits_qos; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_valid =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_valid; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_data =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_data; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_strb =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_strb; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_bits_last =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_bits_last; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_ready =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_ready; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_valid =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_valid; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_id =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_id; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_addr =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_addr; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_len =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_len; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_size =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_size; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_burst =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_burst; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_lock =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_lock; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_cache =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_cache; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_prot =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_prot; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_bits_qos =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_bits_qos; // @[LazyModule.scala 314:12]
  assign auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_ready =
    coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_ready; // @[LazyModule.scala 314:12]
  assign auto_fixer_in_a_ready = fixer_auto_in_a_ready; // @[LazyModule.scala 312:16]
  assign auto_fixer_in_d_valid = fixer_auto_in_d_valid; // @[LazyModule.scala 312:16]
  assign auto_fixer_in_d_bits_opcode = fixer_auto_in_d_bits_opcode; // @[LazyModule.scala 312:16]
  assign auto_fixer_in_d_bits_size = fixer_auto_in_d_bits_size; // @[LazyModule.scala 312:16]
  assign auto_fixer_in_d_bits_source = fixer_auto_in_d_bits_source; // @[LazyModule.scala 312:16]
  assign auto_fixer_in_d_bits_denied = fixer_auto_in_d_bits_denied; // @[LazyModule.scala 312:16]
  assign auto_fixer_in_d_bits_data = fixer_auto_in_d_bits_data; // @[LazyModule.scala 312:16]
  assign auto_fixer_in_d_bits_corrupt = fixer_auto_in_d_bits_corrupt; // @[LazyModule.scala 312:16]
  assign subsystem_mbus_clock_groups_auto_in_member_subsystem_mbus_0_clock =
    auto_subsystem_mbus_clock_groups_in_member_subsystem_mbus_0_clock; // @[LazyModule.scala 312:16]
  assign subsystem_mbus_clock_groups_auto_in_member_subsystem_mbus_0_reset =
    auto_subsystem_mbus_clock_groups_in_member_subsystem_mbus_0_reset; // @[LazyModule.scala 312:16]
  assign clockGroup_auto_in_member_subsystem_mbus_0_clock =
    subsystem_mbus_clock_groups_auto_out_member_subsystem_mbus_0_clock; // @[LazyModule.scala 301:16]
  assign clockGroup_auto_in_member_subsystem_mbus_0_reset =
    subsystem_mbus_clock_groups_auto_out_member_subsystem_mbus_0_reset; // @[LazyModule.scala 301:16]
  assign fixedClockNode_auto_in_clock = clockGroup_auto_out_clock; // @[LazyModule.scala 301:16]
  assign fixedClockNode_auto_in_reset = clockGroup_auto_out_reset; // @[LazyModule.scala 301:16]
  assign subsystem_mbus_xbar_auto_in_a_valid = fixer_auto_out_a_valid; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_xbar_auto_in_a_bits_opcode = fixer_auto_out_a_bits_opcode; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_xbar_auto_in_a_bits_size = fixer_auto_out_a_bits_size; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_xbar_auto_in_a_bits_source = fixer_auto_out_a_bits_source; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_xbar_auto_in_a_bits_address = fixer_auto_out_a_bits_address; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_bufferable = fixer_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_modifiable = fixer_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_readalloc = fixer_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_writealloc = fixer_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_privileged = fixer_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_secure = fixer_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_xbar_auto_in_a_bits_user_amba_prot_fetch = fixer_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_xbar_auto_in_a_bits_mask = fixer_auto_out_a_bits_mask; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_xbar_auto_in_a_bits_data = fixer_auto_out_a_bits_data; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_xbar_auto_in_d_ready = fixer_auto_out_d_ready; // @[LazyModule.scala 299:16]
  assign subsystem_mbus_xbar_auto_out_a_ready = picker_auto_in_a_ready; // @[LazyModule.scala 301:16]
  assign subsystem_mbus_xbar_auto_out_d_valid = picker_auto_in_d_valid; // @[LazyModule.scala 301:16]
  assign subsystem_mbus_xbar_auto_out_d_bits_opcode = picker_auto_in_d_bits_opcode; // @[LazyModule.scala 301:16]
  assign subsystem_mbus_xbar_auto_out_d_bits_size = picker_auto_in_d_bits_size; // @[LazyModule.scala 301:16]
  assign subsystem_mbus_xbar_auto_out_d_bits_source = picker_auto_in_d_bits_source; // @[LazyModule.scala 301:16]
  assign subsystem_mbus_xbar_auto_out_d_bits_denied = picker_auto_in_d_bits_denied; // @[LazyModule.scala 301:16]
  assign subsystem_mbus_xbar_auto_out_d_bits_data = picker_auto_in_d_bits_data; // @[LazyModule.scala 301:16]
  assign subsystem_mbus_xbar_auto_out_d_bits_corrupt = picker_auto_in_d_bits_corrupt; // @[LazyModule.scala 301:16]
  assign fixer_auto_in_a_valid = auto_fixer_in_a_valid; // @[LazyModule.scala 312:16]
  assign fixer_auto_in_a_bits_opcode = auto_fixer_in_a_bits_opcode; // @[LazyModule.scala 312:16]
  assign fixer_auto_in_a_bits_size = auto_fixer_in_a_bits_size; // @[LazyModule.scala 312:16]
  assign fixer_auto_in_a_bits_source = auto_fixer_in_a_bits_source; // @[LazyModule.scala 312:16]
  assign fixer_auto_in_a_bits_address = auto_fixer_in_a_bits_address; // @[LazyModule.scala 312:16]
  assign fixer_auto_in_a_bits_user_amba_prot_bufferable = auto_fixer_in_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 312:16]
  assign fixer_auto_in_a_bits_user_amba_prot_modifiable = auto_fixer_in_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 312:16]
  assign fixer_auto_in_a_bits_user_amba_prot_readalloc = auto_fixer_in_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 312:16]
  assign fixer_auto_in_a_bits_user_amba_prot_writealloc = auto_fixer_in_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 312:16]
  assign fixer_auto_in_a_bits_user_amba_prot_privileged = auto_fixer_in_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 312:16]
  assign fixer_auto_in_a_bits_user_amba_prot_secure = auto_fixer_in_a_bits_user_amba_prot_secure; // @[LazyModule.scala 312:16]
  assign fixer_auto_in_a_bits_user_amba_prot_fetch = auto_fixer_in_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 312:16]
  assign fixer_auto_in_a_bits_mask = auto_fixer_in_a_bits_mask; // @[LazyModule.scala 312:16]
  assign fixer_auto_in_a_bits_data = auto_fixer_in_a_bits_data; // @[LazyModule.scala 312:16]
  assign fixer_auto_in_d_ready = auto_fixer_in_d_ready; // @[LazyModule.scala 312:16]
  assign fixer_auto_out_a_ready = subsystem_mbus_xbar_auto_in_a_ready; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_d_valid = subsystem_mbus_xbar_auto_in_d_valid; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_d_bits_opcode = subsystem_mbus_xbar_auto_in_d_bits_opcode; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_d_bits_size = subsystem_mbus_xbar_auto_in_d_bits_size; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_d_bits_source = subsystem_mbus_xbar_auto_in_d_bits_source; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_d_bits_denied = subsystem_mbus_xbar_auto_in_d_bits_denied; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_d_bits_data = subsystem_mbus_xbar_auto_in_d_bits_data; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_d_bits_corrupt = subsystem_mbus_xbar_auto_in_d_bits_corrupt; // @[LazyModule.scala 299:16]
  assign picker_auto_in_a_valid = subsystem_mbus_xbar_auto_out_a_valid; // @[LazyModule.scala 301:16]
  assign picker_auto_in_a_bits_opcode = subsystem_mbus_xbar_auto_out_a_bits_opcode; // @[LazyModule.scala 301:16]
  assign picker_auto_in_a_bits_size = subsystem_mbus_xbar_auto_out_a_bits_size; // @[LazyModule.scala 301:16]
  assign picker_auto_in_a_bits_source = subsystem_mbus_xbar_auto_out_a_bits_source; // @[LazyModule.scala 301:16]
  assign picker_auto_in_a_bits_address = subsystem_mbus_xbar_auto_out_a_bits_address; // @[LazyModule.scala 301:16]
  assign picker_auto_in_a_bits_user_amba_prot_bufferable = subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_bufferable
    ; // @[LazyModule.scala 301:16]
  assign picker_auto_in_a_bits_user_amba_prot_modifiable = subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_modifiable
    ; // @[LazyModule.scala 301:16]
  assign picker_auto_in_a_bits_user_amba_prot_readalloc = subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 301:16]
  assign picker_auto_in_a_bits_user_amba_prot_writealloc = subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_writealloc
    ; // @[LazyModule.scala 301:16]
  assign picker_auto_in_a_bits_user_amba_prot_privileged = subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_privileged
    ; // @[LazyModule.scala 301:16]
  assign picker_auto_in_a_bits_user_amba_prot_secure = subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 301:16]
  assign picker_auto_in_a_bits_user_amba_prot_fetch = subsystem_mbus_xbar_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 301:16]
  assign picker_auto_in_a_bits_mask = subsystem_mbus_xbar_auto_out_a_bits_mask; // @[LazyModule.scala 301:16]
  assign picker_auto_in_a_bits_data = subsystem_mbus_xbar_auto_out_a_bits_data; // @[LazyModule.scala 301:16]
  assign picker_auto_in_d_ready = subsystem_mbus_xbar_auto_out_d_ready; // @[LazyModule.scala 301:16]
  assign picker_auto_out_a_ready = coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_ready; // @[LazyModule.scala 301:16]
  assign picker_auto_out_d_valid = coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_valid; // @[LazyModule.scala 301:16]
  assign picker_auto_out_d_bits_opcode = coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_bits_opcode; // @[LazyModule.scala 301:16]
  assign picker_auto_out_d_bits_size = coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_bits_size; // @[LazyModule.scala 301:16]
  assign picker_auto_out_d_bits_source = coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_bits_source; // @[LazyModule.scala 301:16]
  assign picker_auto_out_d_bits_denied = coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_bits_denied; // @[LazyModule.scala 301:16]
  assign picker_auto_out_d_bits_data = coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_bits_data; // @[LazyModule.scala 301:16]
  assign picker_auto_out_d_bits_corrupt = coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_bits_corrupt; // @[LazyModule.scala 301:16]
  assign coupler_to_memory_controller_port_named_axi4_clock = fixedClockNode_auto_out_clock; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign coupler_to_memory_controller_port_named_axi4_reset = fixedClockNode_auto_out_reset; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_aw_ready =
    auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_aw_ready; // @[LazyModule.scala 314:12]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_w_ready =
    auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_w_ready; // @[LazyModule.scala 314:12]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_valid =
    auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_valid; // @[LazyModule.scala 314:12]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_bits_id =
    auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_id; // @[LazyModule.scala 314:12]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_b_bits_resp =
    auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_b_bits_resp; // @[LazyModule.scala 314:12]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_ar_ready =
    auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_ar_ready; // @[LazyModule.scala 314:12]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_valid =
    auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_valid; // @[LazyModule.scala 314:12]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_id =
    auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_id; // @[LazyModule.scala 314:12]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_data =
    auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_data; // @[LazyModule.scala 314:12]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_resp =
    auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_resp; // @[LazyModule.scala 314:12]
  assign coupler_to_memory_controller_port_named_axi4_auto_axi4yank_out_r_bits_last =
    auto_coupler_to_memory_controller_port_named_axi4_axi4yank_out_r_bits_last; // @[LazyModule.scala 314:12]
  assign coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_valid = picker_auto_out_a_valid; // @[LazyModule.scala 301:16]
  assign coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_opcode = picker_auto_out_a_bits_opcode; // @[LazyModule.scala 301:16]
  assign coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_size = picker_auto_out_a_bits_size; // @[LazyModule.scala 301:16]
  assign coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_source = picker_auto_out_a_bits_source; // @[LazyModule.scala 301:16]
  assign coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_address = picker_auto_out_a_bits_address; // @[LazyModule.scala 301:16]
  assign coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_user_amba_prot_bufferable =
    picker_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 301:16]
  assign coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_user_amba_prot_modifiable =
    picker_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 301:16]
  assign coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_user_amba_prot_readalloc =
    picker_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 301:16]
  assign coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_user_amba_prot_writealloc =
    picker_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 301:16]
  assign coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_user_amba_prot_privileged =
    picker_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 301:16]
  assign coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_user_amba_prot_secure =
    picker_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 301:16]
  assign coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_user_amba_prot_fetch =
    picker_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 301:16]
  assign coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_mask = picker_auto_out_a_bits_mask; // @[LazyModule.scala 301:16]
  assign coupler_to_memory_controller_port_named_axi4_auto_tl_in_a_bits_data = picker_auto_out_a_bits_data; // @[LazyModule.scala 301:16]
  assign coupler_to_memory_controller_port_named_axi4_auto_tl_in_d_ready = picker_auto_out_d_ready; // @[LazyModule.scala 301:16]
endmodule
