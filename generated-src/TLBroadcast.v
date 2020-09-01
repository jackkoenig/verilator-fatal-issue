module TLBroadcast(
  input         clock,
  input         reset,
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [2:0]  auto_in_a_bits_param,
  input  [2:0]  auto_in_a_bits_size,
  input  [4:0]  auto_in_a_bits_source,
  input  [31:0] auto_in_a_bits_address,
  input         auto_in_a_bits_user_amba_prot_bufferable,
  input         auto_in_a_bits_user_amba_prot_modifiable,
  input         auto_in_a_bits_user_amba_prot_readalloc,
  input         auto_in_a_bits_user_amba_prot_writealloc,
  input         auto_in_a_bits_user_amba_prot_privileged,
  input         auto_in_a_bits_user_amba_prot_secure,
  input         auto_in_a_bits_user_amba_prot_fetch,
  input  [7:0]  auto_in_a_bits_mask,
  input  [63:0] auto_in_a_bits_data,
  input         auto_in_b_ready,
  output        auto_in_b_valid,
  output [1:0]  auto_in_b_bits_param,
  output [31:0] auto_in_b_bits_address,
  output        auto_in_c_ready,
  input         auto_in_c_valid,
  input  [2:0]  auto_in_c_bits_opcode,
  input  [2:0]  auto_in_c_bits_param,
  input  [2:0]  auto_in_c_bits_size,
  input  [4:0]  auto_in_c_bits_source,
  input  [31:0] auto_in_c_bits_address,
  input  [63:0] auto_in_c_bits_data,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output [2:0]  auto_in_d_bits_opcode,
  output [1:0]  auto_in_d_bits_param,
  output [2:0]  auto_in_d_bits_size,
  output [4:0]  auto_in_d_bits_source,
  output [1:0]  auto_in_d_bits_sink,
  output        auto_in_d_bits_denied,
  output [63:0] auto_in_d_bits_data,
  output        auto_in_d_bits_corrupt,
  input         auto_in_e_valid,
  input  [1:0]  auto_in_e_bits_sink,
  input         auto_out_a_ready,
  output        auto_out_a_valid,
  output [2:0]  auto_out_a_bits_opcode,
  output [2:0]  auto_out_a_bits_size,
  output [6:0]  auto_out_a_bits_source,
  output [31:0] auto_out_a_bits_address,
  output        auto_out_a_bits_user_amba_prot_bufferable,
  output        auto_out_a_bits_user_amba_prot_modifiable,
  output        auto_out_a_bits_user_amba_prot_readalloc,
  output        auto_out_a_bits_user_amba_prot_writealloc,
  output        auto_out_a_bits_user_amba_prot_privileged,
  output        auto_out_a_bits_user_amba_prot_secure,
  output        auto_out_a_bits_user_amba_prot_fetch,
  output [7:0]  auto_out_a_bits_mask,
  output [63:0] auto_out_a_bits_data,
  output        auto_out_d_ready,
  input         auto_out_d_valid,
  input  [2:0]  auto_out_d_bits_opcode,
  input  [2:0]  auto_out_d_bits_size,
  input  [6:0]  auto_out_d_bits_source,
  input         auto_out_d_bits_denied,
  input  [63:0] auto_out_d_bits_data,
  input         auto_out_d_bits_corrupt
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
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
`endif // RANDOMIZE_REG_INIT
  wire  filter_io_request_ready; // @[Broadcast.scala 99:26]
  wire  filter_io_request_valid; // @[Broadcast.scala 99:26]
  wire [1:0] filter_io_request_bits_mshr; // @[Broadcast.scala 99:26]
  wire [31:0] filter_io_request_bits_address; // @[Broadcast.scala 99:26]
  wire  filter_io_request_bits_allocOH; // @[Broadcast.scala 99:26]
  wire  filter_io_request_bits_needT; // @[Broadcast.scala 99:26]
  wire  filter_io_response_ready; // @[Broadcast.scala 99:26]
  wire  filter_io_response_valid; // @[Broadcast.scala 99:26]
  wire [1:0] filter_io_response_bits_mshr; // @[Broadcast.scala 99:26]
  wire [31:0] filter_io_response_bits_address; // @[Broadcast.scala 99:26]
  wire  filter_io_response_bits_allocOH; // @[Broadcast.scala 99:26]
  wire  filter_io_response_bits_needT; // @[Broadcast.scala 99:26]
  wire  TLBroadcastTracker_clock; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_reset; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_in_a_first; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_in_a_ready; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_in_a_valid; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_io_in_a_bits_opcode; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_io_in_a_bits_param; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_io_in_a_bits_size; // @[Broadcast.scala 107:15]
  wire [4:0] TLBroadcastTracker_io_in_a_bits_source; // @[Broadcast.scala 107:15]
  wire [31:0] TLBroadcastTracker_io_in_a_bits_address; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_in_a_bits_user_amba_prot_bufferable; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_in_a_bits_user_amba_prot_modifiable; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_in_a_bits_user_amba_prot_readalloc; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_in_a_bits_user_amba_prot_writealloc; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_in_a_bits_user_amba_prot_privileged; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_in_a_bits_user_amba_prot_secure; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_in_a_bits_user_amba_prot_fetch; // @[Broadcast.scala 107:15]
  wire [7:0] TLBroadcastTracker_io_in_a_bits_mask; // @[Broadcast.scala 107:15]
  wire [63:0] TLBroadcastTracker_io_in_a_bits_data; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_out_a_ready; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_out_a_valid; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_io_out_a_bits_opcode; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_io_out_a_bits_param; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_io_out_a_bits_size; // @[Broadcast.scala 107:15]
  wire [6:0] TLBroadcastTracker_io_out_a_bits_source; // @[Broadcast.scala 107:15]
  wire [31:0] TLBroadcastTracker_io_out_a_bits_address; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_out_a_bits_user_amba_prot_bufferable; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_out_a_bits_user_amba_prot_modifiable; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_out_a_bits_user_amba_prot_readalloc; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_out_a_bits_user_amba_prot_writealloc; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_out_a_bits_user_amba_prot_privileged; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_out_a_bits_user_amba_prot_secure; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_out_a_bits_user_amba_prot_fetch; // @[Broadcast.scala 107:15]
  wire [7:0] TLBroadcastTracker_io_out_a_bits_mask; // @[Broadcast.scala 107:15]
  wire [63:0] TLBroadcastTracker_io_out_a_bits_data; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_probe_valid; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_probe_bits_count; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_probenack; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_probedack; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_probesack; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_d_last; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_e_last; // @[Broadcast.scala 107:15]
  wire [4:0] TLBroadcastTracker_io_source; // @[Broadcast.scala 107:15]
  wire [25:0] TLBroadcastTracker_io_line; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_idle; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_io_need_d; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_clock; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_reset; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_in_a_first; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_in_a_ready; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_in_a_valid; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_1_io_in_a_bits_opcode; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_1_io_in_a_bits_param; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_1_io_in_a_bits_size; // @[Broadcast.scala 107:15]
  wire [4:0] TLBroadcastTracker_1_io_in_a_bits_source; // @[Broadcast.scala 107:15]
  wire [31:0] TLBroadcastTracker_1_io_in_a_bits_address; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_bufferable; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_modifiable; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_readalloc; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_writealloc; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_privileged; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_secure; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_fetch; // @[Broadcast.scala 107:15]
  wire [7:0] TLBroadcastTracker_1_io_in_a_bits_mask; // @[Broadcast.scala 107:15]
  wire [63:0] TLBroadcastTracker_1_io_in_a_bits_data; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_out_a_ready; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_out_a_valid; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_1_io_out_a_bits_opcode; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_1_io_out_a_bits_param; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_1_io_out_a_bits_size; // @[Broadcast.scala 107:15]
  wire [6:0] TLBroadcastTracker_1_io_out_a_bits_source; // @[Broadcast.scala 107:15]
  wire [31:0] TLBroadcastTracker_1_io_out_a_bits_address; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_bufferable; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_modifiable; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_readalloc; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_writealloc; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_privileged; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_secure; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_fetch; // @[Broadcast.scala 107:15]
  wire [7:0] TLBroadcastTracker_1_io_out_a_bits_mask; // @[Broadcast.scala 107:15]
  wire [63:0] TLBroadcastTracker_1_io_out_a_bits_data; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_probe_valid; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_probe_bits_count; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_probenack; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_probedack; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_probesack; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_d_last; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_e_last; // @[Broadcast.scala 107:15]
  wire [4:0] TLBroadcastTracker_1_io_source; // @[Broadcast.scala 107:15]
  wire [25:0] TLBroadcastTracker_1_io_line; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_idle; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_1_io_need_d; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_clock; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_reset; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_in_a_first; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_in_a_ready; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_in_a_valid; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_2_io_in_a_bits_opcode; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_2_io_in_a_bits_param; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_2_io_in_a_bits_size; // @[Broadcast.scala 107:15]
  wire [4:0] TLBroadcastTracker_2_io_in_a_bits_source; // @[Broadcast.scala 107:15]
  wire [31:0] TLBroadcastTracker_2_io_in_a_bits_address; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_bufferable; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_modifiable; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_readalloc; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_writealloc; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_privileged; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_secure; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_fetch; // @[Broadcast.scala 107:15]
  wire [7:0] TLBroadcastTracker_2_io_in_a_bits_mask; // @[Broadcast.scala 107:15]
  wire [63:0] TLBroadcastTracker_2_io_in_a_bits_data; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_out_a_ready; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_out_a_valid; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_2_io_out_a_bits_opcode; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_2_io_out_a_bits_param; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_2_io_out_a_bits_size; // @[Broadcast.scala 107:15]
  wire [6:0] TLBroadcastTracker_2_io_out_a_bits_source; // @[Broadcast.scala 107:15]
  wire [31:0] TLBroadcastTracker_2_io_out_a_bits_address; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_bufferable; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_modifiable; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_readalloc; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_writealloc; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_privileged; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_secure; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_fetch; // @[Broadcast.scala 107:15]
  wire [7:0] TLBroadcastTracker_2_io_out_a_bits_mask; // @[Broadcast.scala 107:15]
  wire [63:0] TLBroadcastTracker_2_io_out_a_bits_data; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_probe_valid; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_probe_bits_count; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_probenack; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_probedack; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_probesack; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_d_last; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_e_last; // @[Broadcast.scala 107:15]
  wire [4:0] TLBroadcastTracker_2_io_source; // @[Broadcast.scala 107:15]
  wire [25:0] TLBroadcastTracker_2_io_line; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_idle; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_2_io_need_d; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_clock; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_reset; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_in_a_first; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_in_a_ready; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_in_a_valid; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_3_io_in_a_bits_opcode; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_3_io_in_a_bits_param; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_3_io_in_a_bits_size; // @[Broadcast.scala 107:15]
  wire [4:0] TLBroadcastTracker_3_io_in_a_bits_source; // @[Broadcast.scala 107:15]
  wire [31:0] TLBroadcastTracker_3_io_in_a_bits_address; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_bufferable; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_modifiable; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_readalloc; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_writealloc; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_privileged; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_secure; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_fetch; // @[Broadcast.scala 107:15]
  wire [7:0] TLBroadcastTracker_3_io_in_a_bits_mask; // @[Broadcast.scala 107:15]
  wire [63:0] TLBroadcastTracker_3_io_in_a_bits_data; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_out_a_ready; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_out_a_valid; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_3_io_out_a_bits_opcode; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_3_io_out_a_bits_param; // @[Broadcast.scala 107:15]
  wire [2:0] TLBroadcastTracker_3_io_out_a_bits_size; // @[Broadcast.scala 107:15]
  wire [6:0] TLBroadcastTracker_3_io_out_a_bits_source; // @[Broadcast.scala 107:15]
  wire [31:0] TLBroadcastTracker_3_io_out_a_bits_address; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_bufferable; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_modifiable; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_readalloc; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_writealloc; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_privileged; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_secure; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_fetch; // @[Broadcast.scala 107:15]
  wire [7:0] TLBroadcastTracker_3_io_out_a_bits_mask; // @[Broadcast.scala 107:15]
  wire [63:0] TLBroadcastTracker_3_io_out_a_bits_data; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_probe_valid; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_probe_bits_count; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_probenack; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_probedack; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_probesack; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_d_last; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_e_last; // @[Broadcast.scala 107:15]
  wire [4:0] TLBroadcastTracker_3_io_source; // @[Broadcast.scala 107:15]
  wire [25:0] TLBroadcastTracker_3_io_line; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_idle; // @[Broadcast.scala 107:15]
  wire  TLBroadcastTracker_3_io_need_d; // @[Broadcast.scala 107:15]
  wire [3:0] _T = 4'h1 << auto_in_e_bits_sink; // @[OneHot.scala 58:35]
  wire [1:0] d_what = auto_out_d_bits_source[6:5]; // @[Broadcast.scala 118:37]
  wire  d_drop = d_what == 2'h1; // @[Broadcast.scala 119:27]
  wire  d_hasData = auto_out_d_bits_opcode[0]; // @[Edges.scala 107:36]
  reg [2:0] beatsLeft; // @[Arbiter.scala 88:30]
  wire  idle = beatsLeft == 3'h0; // @[Arbiter.scala 89:28]
  wire  d_response = d_hasData | (~(d_what[1])); // @[Broadcast.scala 140:34]
  reg [2:0] counter; // @[Edges.scala 230:27]
  wire [2:0] _d_normal_bits_opcode_T = d_hasData ? 3'h5 : 3'h6; // @[Broadcast.scala 132:36]
  wire [2:0] d_normal_bits_opcode = d_what[1] ? _d_normal_bits_opcode_T : auto_out_d_bits_opcode; // @[Broadcast.scala 131:24 Broadcast.scala 132:30 Broadcast.scala 130:21]
  wire  beats1_opdata = d_normal_bits_opcode[0]; // @[Edges.scala 107:36]
  wire [12:0] _beats1_decode_T_1 = 13'h3f << auto_out_d_bits_size; // @[package.scala 212:77]
  wire [5:0] _beats1_decode_T_3 = ~(_beats1_decode_T_1[5:0]); // @[package.scala 212:46]
  wire [2:0] beats1_decode = _beats1_decode_T_3[5:3]; // @[Edges.scala 221:59]
  wire [2:0] beats1 = beats1_opdata ? beats1_decode : 3'h0; // @[Edges.scala 222:14]
  wire  d_last = (counter == 3'h1) | (beats1 == 3'h0); // @[Edges.scala 233:37]
  wire  _d_normal_valid_T_1 = ~d_drop; // @[Broadcast.scala 129:51]
  wire  d_normal_valid = auto_out_d_valid & (~d_drop); // @[Broadcast.scala 129:48]
  wire  c_release = auto_in_c_bits_opcode == 3'h6; // @[Broadcast.scala 161:45]
  wire  releaseack_valid = auto_in_c_valid & c_release; // @[Broadcast.scala 192:79]
  wire [1:0] _readys_T = {d_normal_valid,releaseack_valid}; // @[Cat.scala 29:58]
  wire [2:0] _readys_T_1 = {_readys_T, 1'h0}; // @[package.scala 222:48]
  wire [1:0] _readys_T_3 = _readys_T | (_readys_T_1[1:0]); // @[package.scala 222:43]
  wire [2:0] _readys_T_5 = {_readys_T_3, 1'h0}; // @[Arbiter.scala 17:78]
  wire [1:0] _readys_T_7 = ~(_readys_T_5[1:0]); // @[Arbiter.scala 17:61]
  wire  readys__1 = _readys_T_7[1]; // @[Arbiter.scala 96:86]
  reg  state__1; // @[Arbiter.scala 117:26]
  wire  allowed__1 = idle ? readys__1 : state__1; // @[Arbiter.scala 122:24]
  wire  sourcesIn_1_ready = auto_in_d_ready & allowed__1; // @[Arbiter.scala 124:31]
  wire  _T_5 = sourcesIn_1_ready & d_normal_valid; // @[Decoupled.scala 40:37]
  wire [2:0] counter1 = counter - 3'h1; // @[Edges.scala 231:28]
  wire  d_first = counter == 3'h0; // @[Edges.scala 232:25]
  wire [4:0] d_normal_bits_source = auto_out_d_bits_source[4:0]; // @[Broadcast.scala 121:26 Broadcast.scala 130:21]
  wire  _d_trackerOH_T_1 = TLBroadcastTracker_io_need_d & (TLBroadcastTracker_io_source == d_normal_bits_source); // @[Broadcast.scala 123:62]
  wire  _d_trackerOH_T_3 = TLBroadcastTracker_1_io_need_d & (TLBroadcastTracker_1_io_source == d_normal_bits_source); // @[Broadcast.scala 123:62]
  wire  _d_trackerOH_T_5 = TLBroadcastTracker_2_io_need_d & (TLBroadcastTracker_2_io_source == d_normal_bits_source); // @[Broadcast.scala 123:62]
  wire  _d_trackerOH_T_7 = TLBroadcastTracker_3_io_need_d & (TLBroadcastTracker_3_io_source == d_normal_bits_source); // @[Broadcast.scala 123:62]
  wire [3:0] _d_trackerOH_T_8 = {_d_trackerOH_T_7,_d_trackerOH_T_5,_d_trackerOH_T_3,_d_trackerOH_T_1}; // @[Broadcast.scala 123:102]
  reg [3:0] d_trackerOH_r; // @[Reg.scala 15:16]
  wire [3:0] _GEN_1 = d_first ? _d_trackerOH_T_8 : d_trackerOH_r; // @[Reg.scala 16:19 Reg.scala 16:23 Reg.scala 15:16]
  wire  auto_data_1_d_ready = sourcesIn_1_ready | d_drop; // @[Broadcast.scala 128:50]
  wire [1:0] _d_normal_bits_param_T_1 = d_what[0] ? 2'h0 : 2'h1; // @[Broadcast.scala 133:51]
  wire [1:0] _d_normal_bits_param_T_2 = d_hasData ? _d_normal_bits_param_T_1 : 2'h0; // @[Broadcast.scala 133:36]
  wire [1:0] d_normal_bits_param = d_what[1] ? _d_normal_bits_param_T_2 : 2'h0; // @[Broadcast.scala 131:24 Broadcast.scala 133:30 Broadcast.scala 130:21]
  wire [1:0] d_mshr_hi = _GEN_1[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] d_mshr_lo = _GEN_1[1:0]; // @[OneHot.scala 31:18]
  wire  d_mshr_right = |d_mshr_hi; // @[OneHot.scala 32:14]
  wire [1:0] _d_mshr_T = d_mshr_hi | d_mshr_lo; // @[OneHot.scala 32:28]
  wire  d_mshr_left = _d_mshr_T[1]; // @[CircuitMath.scala 30:8]
  wire  _TLBroadcastTracker_io_probedack_T = auto_data_1_d_ready & auto_out_d_valid; // @[Decoupled.scala 40:37]
  wire  c_probeack = auto_in_c_bits_opcode == 3'h4; // @[Broadcast.scala 158:45]
  wire  c_probeackdata = auto_in_c_bits_opcode == 3'h5; // @[Broadcast.scala 159:45]
  wire  c_releasedata = auto_in_c_bits_opcode == 3'h7; // @[Broadcast.scala 160:45]
  wire  c_trackerOH_0 = TLBroadcastTracker_io_line == (auto_in_c_bits_address[31:6]); // @[Broadcast.scala 162:55]
  wire  c_trackerOH_1 = TLBroadcastTracker_1_io_line == (auto_in_c_bits_address[31:6]); // @[Broadcast.scala 162:55]
  wire  c_trackerOH_2 = TLBroadcastTracker_2_io_line == (auto_in_c_bits_address[31:6]); // @[Broadcast.scala 162:55]
  wire  c_trackerOH_3 = TLBroadcastTracker_3_io_line == (auto_in_c_bits_address[31:6]); // @[Broadcast.scala 162:55]
  wire [4:0] _c_trackerSrc_T = c_trackerOH_0 ? TLBroadcastTracker_io_source : 5'h0; // @[Mux.scala 27:72]
  wire [4:0] _c_trackerSrc_T_1 = c_trackerOH_1 ? TLBroadcastTracker_1_io_source : 5'h0; // @[Mux.scala 27:72]
  wire [4:0] _c_trackerSrc_T_2 = c_trackerOH_2 ? TLBroadcastTracker_2_io_source : 5'h0; // @[Mux.scala 27:72]
  wire [4:0] _c_trackerSrc_T_3 = c_trackerOH_3 ? TLBroadcastTracker_3_io_source : 5'h0; // @[Mux.scala 27:72]
  wire [4:0] _c_trackerSrc_T_4 = _c_trackerSrc_T | _c_trackerSrc_T_1; // @[Mux.scala 27:72]
  wire [4:0] _c_trackerSrc_T_5 = _c_trackerSrc_T_4 | _c_trackerSrc_T_2; // @[Mux.scala 27:72]
  wire [4:0] c_trackerSrc = _c_trackerSrc_T_5 | _c_trackerSrc_T_3; // @[Mux.scala 27:72]
  wire  readys__0 = _readys_T_7[0]; // @[Arbiter.scala 96:86]
  reg  state__0; // @[Arbiter.scala 117:26]
  wire  allowed__0 = idle ? readys__0 : state__0; // @[Arbiter.scala 122:24]
  wire  sourcesIn_0_ready = auto_in_d_ready & allowed__0; // @[Arbiter.scala 124:31]
  reg [2:0] beatsLeft_1; // @[Arbiter.scala 88:30]
  wire  idle_1 = beatsLeft_1 == 3'h0; // @[Arbiter.scala 89:28]
  wire  sourcesIn_4_earlyValid = TLBroadcastTracker_3_io_out_a_valid; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 73:20]
  wire  sourcesIn_3_earlyValid = TLBroadcastTracker_2_io_out_a_valid; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 73:20]
  wire  sourcesIn_2_earlyValid = TLBroadcastTracker_1_io_out_a_valid; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 73:20]
  wire  sourcesIn_1_1_earlyValid = TLBroadcastTracker_io_out_a_valid; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 73:20]
  wire  putfull_valid = auto_in_c_valid & (c_probeackdata | c_releasedata); // @[Broadcast.scala 197:35]
  wire [4:0] _readys_T_10 = {sourcesIn_4_earlyValid,sourcesIn_3_earlyValid,sourcesIn_2_earlyValid,
    sourcesIn_1_1_earlyValid,putfull_valid}; // @[Cat.scala 29:58]
  wire [5:0] _readys_T_11 = {_readys_T_10, 1'h0}; // @[package.scala 222:48]
  wire [4:0] _readys_T_13 = _readys_T_10 | (_readys_T_11[4:0]); // @[package.scala 222:43]
  wire [6:0] _readys_T_14 = {_readys_T_13, 2'h0}; // @[package.scala 222:48]
  wire [4:0] _readys_T_16 = _readys_T_13 | (_readys_T_14[4:0]); // @[package.scala 222:43]
  wire [8:0] _readys_T_17 = {_readys_T_16, 4'h0}; // @[package.scala 222:48]
  wire [4:0] _readys_T_19 = _readys_T_16 | (_readys_T_17[4:0]); // @[package.scala 222:43]
  wire [5:0] _readys_T_21 = {_readys_T_19, 1'h0}; // @[Arbiter.scala 17:78]
  wire [4:0] _readys_T_23 = ~(_readys_T_21[4:0]); // @[Arbiter.scala 17:61]
  wire  readys_1_0 = _readys_T_23[0]; // @[Arbiter.scala 96:86]
  reg  state_1_0; // @[Arbiter.scala 117:26]
  wire  allowed_1_0 = idle_1 ? readys_1_0 : state_1_0; // @[Arbiter.scala 122:24]
  wire  sourcesIn_0_1_ready = auto_out_a_ready & allowed_1_0; // @[Arbiter.scala 124:31]
  wire  _auto_data_c_ready_T = c_release ? sourcesIn_0_ready : sourcesIn_0_1_ready; // @[Broadcast.scala 184:38]
  wire  auto_data_c_ready = c_probeack | _auto_data_c_ready_T; // @[Broadcast.scala 184:32]
  wire  _clearOH_T = auto_data_c_ready & auto_in_c_valid; // @[Decoupled.scala 40:37]
  wire  _clearOH_T_1 = c_probeack | c_probeackdata; // @[Broadcast.scala 170:52]
  wire  _TLBroadcastTracker_io_probesack_T_5 = auto_in_c_bits_param == 3'h4; // @[Broadcast.scala 178:27]
  wire  _TLBroadcastTracker_io_probesack_T_6 = (auto_in_c_bits_param == 3'h0) | _TLBroadcastTracker_io_probesack_T_5; // @[Broadcast.scala 177:50]
  wire [12:0] _c_first_beats1_decode_T_1 = 13'h3f << auto_in_c_bits_size; // @[package.scala 212:77]
  wire [5:0] _c_first_beats1_decode_T_3 = ~(_c_first_beats1_decode_T_1[5:0]); // @[package.scala 212:46]
  wire [2:0] c_first_beats1_decode = _c_first_beats1_decode_T_3[5:3]; // @[Edges.scala 221:59]
  wire [1:0] putfull_bits_right = c_releasedata ? 2'h2 : 2'h1; // @[Broadcast.scala 195:25]
  wire [4:0] putfull_bits_left = c_releasedata ? auto_in_c_bits_source : c_trackerSrc; // @[Broadcast.scala 196:25]
  wire [1:0] putfull_bits_putfull_bits_a_mask_sizeOH_shiftAmount = auto_in_c_bits_size[1:0]; // @[OneHot.scala 64:49]
  wire [3:0] _putfull_bits_putfull_bits_a_mask_sizeOH_T_1 = 4'h1 << putfull_bits_putfull_bits_a_mask_sizeOH_shiftAmount; // @[OneHot.scala 65:12]
  wire [2:0] putfull_bits_putfull_bits_a_mask_sizeOH = (_putfull_bits_putfull_bits_a_mask_sizeOH_T_1[2:0]) | 3'h1; // @[Misc.scala 201:81]
  wire  putfull_bits_putfull_bits_a_mask_sub_acc = auto_in_c_bits_size >= 3'h3; // @[Misc.scala 205:21]
  wire  putfull_bits_putfull_bits_a_mask_size = putfull_bits_putfull_bits_a_mask_sizeOH[2]; // @[Misc.scala 208:26]
  wire  putfull_bits_putfull_bits_a_mask_bit = auto_in_c_bits_address[2]; // @[Misc.scala 209:26]
  wire  putfull_bits_putfull_bits_a_mask_nbit = ~putfull_bits_putfull_bits_a_mask_bit; // @[Misc.scala 210:20]
  wire  putfull_bits_putfull_bits_a_mask_sub_acc_1 = putfull_bits_putfull_bits_a_mask_sub_acc | (
    putfull_bits_putfull_bits_a_mask_size & putfull_bits_putfull_bits_a_mask_nbit); // @[Misc.scala 214:29]
  wire  putfull_bits_putfull_bits_a_mask_sub_acc_2 = putfull_bits_putfull_bits_a_mask_sub_acc | (
    putfull_bits_putfull_bits_a_mask_size & putfull_bits_putfull_bits_a_mask_bit); // @[Misc.scala 214:29]
  wire  putfull_bits_putfull_bits_a_mask_size_1 = putfull_bits_putfull_bits_a_mask_sizeOH[1]; // @[Misc.scala 208:26]
  wire  putfull_bits_putfull_bits_a_mask_bit_1 = auto_in_c_bits_address[1]; // @[Misc.scala 209:26]
  wire  putfull_bits_putfull_bits_a_mask_nbit_1 = ~putfull_bits_putfull_bits_a_mask_bit_1; // @[Misc.scala 210:20]
  wire  putfull_bits_putfull_bits_a_mask_sub_eq_2 = putfull_bits_putfull_bits_a_mask_nbit &
    putfull_bits_putfull_bits_a_mask_nbit_1; // @[Misc.scala 213:27]
  wire  putfull_bits_putfull_bits_a_mask_sub_acc_3 = putfull_bits_putfull_bits_a_mask_sub_acc_1 | (
    putfull_bits_putfull_bits_a_mask_size_1 & putfull_bits_putfull_bits_a_mask_sub_eq_2); // @[Misc.scala 214:29]
  wire  putfull_bits_putfull_bits_a_mask_sub_eq_3 = putfull_bits_putfull_bits_a_mask_nbit &
    putfull_bits_putfull_bits_a_mask_bit_1; // @[Misc.scala 213:27]
  wire  putfull_bits_putfull_bits_a_mask_sub_acc_4 = putfull_bits_putfull_bits_a_mask_sub_acc_1 | (
    putfull_bits_putfull_bits_a_mask_size_1 & putfull_bits_putfull_bits_a_mask_sub_eq_3); // @[Misc.scala 214:29]
  wire  putfull_bits_putfull_bits_a_mask_sub_eq_4 = putfull_bits_putfull_bits_a_mask_bit &
    putfull_bits_putfull_bits_a_mask_nbit_1; // @[Misc.scala 213:27]
  wire  putfull_bits_putfull_bits_a_mask_sub_acc_5 = putfull_bits_putfull_bits_a_mask_sub_acc_2 | (
    putfull_bits_putfull_bits_a_mask_size_1 & putfull_bits_putfull_bits_a_mask_sub_eq_4); // @[Misc.scala 214:29]
  wire  putfull_bits_putfull_bits_a_mask_sub_eq_5 = putfull_bits_putfull_bits_a_mask_bit &
    putfull_bits_putfull_bits_a_mask_bit_1; // @[Misc.scala 213:27]
  wire  putfull_bits_putfull_bits_a_mask_sub_acc_6 = putfull_bits_putfull_bits_a_mask_sub_acc_2 | (
    putfull_bits_putfull_bits_a_mask_size_1 & putfull_bits_putfull_bits_a_mask_sub_eq_5); // @[Misc.scala 214:29]
  wire  putfull_bits_putfull_bits_a_mask_size_2 = putfull_bits_putfull_bits_a_mask_sizeOH[0]; // @[Misc.scala 208:26]
  wire  putfull_bits_putfull_bits_a_mask_bit_2 = auto_in_c_bits_address[0]; // @[Misc.scala 209:26]
  wire  putfull_bits_putfull_bits_a_mask_nbit_2 = ~putfull_bits_putfull_bits_a_mask_bit_2; // @[Misc.scala 210:20]
  wire  putfull_bits_putfull_bits_a_mask_eq = putfull_bits_putfull_bits_a_mask_sub_eq_2 &
    putfull_bits_putfull_bits_a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  putfull_bits_putfull_bits_a_mask_left_left_left = putfull_bits_putfull_bits_a_mask_sub_acc_3 | (
    putfull_bits_putfull_bits_a_mask_size_2 & putfull_bits_putfull_bits_a_mask_eq); // @[Misc.scala 214:29]
  wire  putfull_bits_putfull_bits_a_mask_eq_1 = putfull_bits_putfull_bits_a_mask_sub_eq_2 &
    putfull_bits_putfull_bits_a_mask_bit_2; // @[Misc.scala 213:27]
  wire  putfull_bits_putfull_bits_a_mask_left_left_right = putfull_bits_putfull_bits_a_mask_sub_acc_3 | (
    putfull_bits_putfull_bits_a_mask_size_2 & putfull_bits_putfull_bits_a_mask_eq_1); // @[Misc.scala 214:29]
  wire  putfull_bits_putfull_bits_a_mask_eq_2 = putfull_bits_putfull_bits_a_mask_sub_eq_3 &
    putfull_bits_putfull_bits_a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  putfull_bits_putfull_bits_a_mask_left_right_left = putfull_bits_putfull_bits_a_mask_sub_acc_4 | (
    putfull_bits_putfull_bits_a_mask_size_2 & putfull_bits_putfull_bits_a_mask_eq_2); // @[Misc.scala 214:29]
  wire  putfull_bits_putfull_bits_a_mask_eq_3 = putfull_bits_putfull_bits_a_mask_sub_eq_3 &
    putfull_bits_putfull_bits_a_mask_bit_2; // @[Misc.scala 213:27]
  wire  putfull_bits_putfull_bits_a_mask_left_right_right = putfull_bits_putfull_bits_a_mask_sub_acc_4 | (
    putfull_bits_putfull_bits_a_mask_size_2 & putfull_bits_putfull_bits_a_mask_eq_3); // @[Misc.scala 214:29]
  wire  putfull_bits_putfull_bits_a_mask_eq_4 = putfull_bits_putfull_bits_a_mask_sub_eq_4 &
    putfull_bits_putfull_bits_a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  putfull_bits_putfull_bits_a_mask_right_left_left = putfull_bits_putfull_bits_a_mask_sub_acc_5 | (
    putfull_bits_putfull_bits_a_mask_size_2 & putfull_bits_putfull_bits_a_mask_eq_4); // @[Misc.scala 214:29]
  wire  putfull_bits_putfull_bits_a_mask_eq_5 = putfull_bits_putfull_bits_a_mask_sub_eq_4 &
    putfull_bits_putfull_bits_a_mask_bit_2; // @[Misc.scala 213:27]
  wire  putfull_bits_putfull_bits_a_mask_right_left_right = putfull_bits_putfull_bits_a_mask_sub_acc_5 | (
    putfull_bits_putfull_bits_a_mask_size_2 & putfull_bits_putfull_bits_a_mask_eq_5); // @[Misc.scala 214:29]
  wire  putfull_bits_putfull_bits_a_mask_eq_6 = putfull_bits_putfull_bits_a_mask_sub_eq_5 &
    putfull_bits_putfull_bits_a_mask_nbit_2; // @[Misc.scala 213:27]
  wire  putfull_bits_putfull_bits_a_mask_right_right_left = putfull_bits_putfull_bits_a_mask_sub_acc_6 | (
    putfull_bits_putfull_bits_a_mask_size_2 & putfull_bits_putfull_bits_a_mask_eq_6); // @[Misc.scala 214:29]
  wire  putfull_bits_putfull_bits_a_mask_eq_7 = putfull_bits_putfull_bits_a_mask_sub_eq_5 &
    putfull_bits_putfull_bits_a_mask_bit_2; // @[Misc.scala 213:27]
  wire  putfull_bits_putfull_bits_a_mask_right_right_right = putfull_bits_putfull_bits_a_mask_sub_acc_6 | (
    putfull_bits_putfull_bits_a_mask_size_2 & putfull_bits_putfull_bits_a_mask_eq_7); // @[Misc.scala 214:29]
  wire  latch = idle & auto_in_d_ready; // @[Arbiter.scala 90:24]
  wire  earlyWinner__0 = readys__0 & releaseack_valid; // @[Arbiter.scala 98:79]
  wire  earlyWinner__1 = readys__1 & d_normal_valid; // @[Arbiter.scala 98:79]
  wire  _prefixOR_T = earlyWinner__0 | earlyWinner__1; // @[Arbiter.scala 105:53]
  wire  _T_37 = releaseack_valid | d_normal_valid; // @[Arbiter.scala 108:36]
  wire  _T_38 = ~(releaseack_valid | d_normal_valid); // @[Arbiter.scala 108:15]
  wire  muxStateEarly__0 = idle ? earlyWinner__0 : state__0; // @[Arbiter.scala 118:30]
  wire  muxStateEarly__1 = idle ? earlyWinner__1 : state__1; // @[Arbiter.scala 118:30]
  wire  _sink_ACancel_earlyValid_T_3 = (state__0 & releaseack_valid) | (state__1 & d_normal_valid); // @[Mux.scala 27:72]
  wire  sink_ACancel_earlyValid = idle ? _T_37 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 126:29]
  wire  _beatsLeft_T_2 = auto_in_d_ready & sink_ACancel_earlyValid; // @[ReadyValidCancel.scala 52:33]
  wire [2:0] _GEN_14 = {{2'd0}, _beatsLeft_T_2}; // @[Arbiter.scala 114:52]
  wire [2:0] _beatsLeft_T_4 = beatsLeft - _GEN_14; // @[Arbiter.scala 114:52]
  wire [80:0] _T_51 = {5'h18,auto_in_c_bits_size,auto_in_c_bits_source,68'h0}; // @[Mux.scala 27:72]
  wire [80:0] _T_52 = muxStateEarly__0 ? _T_51 : 81'h0; // @[Mux.scala 27:72]
  wire [80:0] _T_53 = {d_normal_bits_opcode,d_normal_bits_param,auto_out_d_bits_size,d_normal_bits_source,d_mshr_right,
    d_mshr_left,auto_out_d_bits_denied,auto_out_d_bits_data,auto_out_d_bits_corrupt}; // @[Mux.scala 27:72]
  wire [80:0] _T_54 = muxStateEarly__1 ? _T_53 : 81'h0; // @[Mux.scala 27:72]
  wire [80:0] _T_55 = _T_52 | _T_54; // @[Mux.scala 27:72]
  wire [12:0] _decode_T_13 = 13'h3f << TLBroadcastTracker_io_out_a_bits_size; // @[package.scala 212:77]
  wire [5:0] _decode_T_15 = ~(_decode_T_13[5:0]); // @[package.scala 212:46]
  wire [2:0] decode_3 = _decode_T_15[5:3]; // @[Edges.scala 221:59]
  wire  opdata_3 = ~(TLBroadcastTracker_io_out_a_bits_opcode[2]); // @[Edges.scala 93:28]
  wire [2:0] beatsIn_1_1 = opdata_3 ? decode_3 : 3'h0; // @[Edges.scala 222:14]
  wire [12:0] _decode_T_17 = 13'h3f << TLBroadcastTracker_1_io_out_a_bits_size; // @[package.scala 212:77]
  wire [5:0] _decode_T_19 = ~(_decode_T_17[5:0]); // @[package.scala 212:46]
  wire [2:0] decode_4 = _decode_T_19[5:3]; // @[Edges.scala 221:59]
  wire  opdata_4 = ~(TLBroadcastTracker_1_io_out_a_bits_opcode[2]); // @[Edges.scala 93:28]
  wire [2:0] beatsIn_2 = opdata_4 ? decode_4 : 3'h0; // @[Edges.scala 222:14]
  wire [12:0] _decode_T_21 = 13'h3f << TLBroadcastTracker_2_io_out_a_bits_size; // @[package.scala 212:77]
  wire [5:0] _decode_T_23 = ~(_decode_T_21[5:0]); // @[package.scala 212:46]
  wire [2:0] decode_5 = _decode_T_23[5:3]; // @[Edges.scala 221:59]
  wire  opdata_5 = ~(TLBroadcastTracker_2_io_out_a_bits_opcode[2]); // @[Edges.scala 93:28]
  wire [2:0] beatsIn_3 = opdata_5 ? decode_5 : 3'h0; // @[Edges.scala 222:14]
  wire [12:0] _decode_T_25 = 13'h3f << TLBroadcastTracker_3_io_out_a_bits_size; // @[package.scala 212:77]
  wire [5:0] _decode_T_27 = ~(_decode_T_25[5:0]); // @[package.scala 212:46]
  wire [2:0] decode_6 = _decode_T_27[5:3]; // @[Edges.scala 221:59]
  wire  opdata_6 = ~(TLBroadcastTracker_3_io_out_a_bits_opcode[2]); // @[Edges.scala 93:28]
  wire [2:0] beatsIn_4 = opdata_6 ? decode_6 : 3'h0; // @[Edges.scala 222:14]
  wire  latch_1 = idle_1 & auto_out_a_ready; // @[Arbiter.scala 90:24]
  wire  readys_1_1 = _readys_T_23[1]; // @[Arbiter.scala 96:86]
  wire  readys_1_2 = _readys_T_23[2]; // @[Arbiter.scala 96:86]
  wire  readys_1_3 = _readys_T_23[3]; // @[Arbiter.scala 96:86]
  wire  readys_1_4 = _readys_T_23[4]; // @[Arbiter.scala 96:86]
  wire  earlyWinner_1_0 = readys_1_0 & putfull_valid; // @[Arbiter.scala 98:79]
  wire  earlyWinner_1_1 = readys_1_1 & sourcesIn_1_1_earlyValid; // @[Arbiter.scala 98:79]
  wire  earlyWinner_1_2 = readys_1_2 & sourcesIn_2_earlyValid; // @[Arbiter.scala 98:79]
  wire  earlyWinner_1_3 = readys_1_3 & sourcesIn_3_earlyValid; // @[Arbiter.scala 98:79]
  wire  earlyWinner_1_4 = readys_1_4 & sourcesIn_4_earlyValid; // @[Arbiter.scala 98:79]
  wire  prefixOR_2 = earlyWinner_1_0 | earlyWinner_1_1; // @[Arbiter.scala 105:53]
  wire  prefixOR_3 = prefixOR_2 | earlyWinner_1_2; // @[Arbiter.scala 105:53]
  wire  prefixOR_4 = prefixOR_3 | earlyWinner_1_3; // @[Arbiter.scala 105:53]
  wire  _prefixOR_T_1 = prefixOR_4 | earlyWinner_1_4; // @[Arbiter.scala 105:53]
  wire  _T_89 = (((putfull_valid | sourcesIn_1_1_earlyValid) | sourcesIn_2_earlyValid) | sourcesIn_3_earlyValid) |
    sourcesIn_4_earlyValid; // @[Arbiter.scala 108:36]
  wire  _T_90 = ~((((putfull_valid | sourcesIn_1_1_earlyValid) | sourcesIn_2_earlyValid) | sourcesIn_3_earlyValid) |
    sourcesIn_4_earlyValid); // @[Arbiter.scala 108:15]
  wire [2:0] maskedBeats_0_1 = earlyWinner_1_0 ? c_first_beats1_decode : 3'h0; // @[Arbiter.scala 112:73]
  wire [2:0] maskedBeats_1_1 = earlyWinner_1_1 ? beatsIn_1_1 : 3'h0; // @[Arbiter.scala 112:73]
  wire [2:0] maskedBeats_2 = earlyWinner_1_2 ? beatsIn_2 : 3'h0; // @[Arbiter.scala 112:73]
  wire [2:0] maskedBeats_3 = earlyWinner_1_3 ? beatsIn_3 : 3'h0; // @[Arbiter.scala 112:73]
  wire [2:0] maskedBeats_4 = earlyWinner_1_4 ? beatsIn_4 : 3'h0; // @[Arbiter.scala 112:73]
  wire [2:0] _initBeats_T = maskedBeats_0_1 | maskedBeats_1_1; // @[Arbiter.scala 113:44]
  wire [2:0] _initBeats_T_1 = _initBeats_T | maskedBeats_2; // @[Arbiter.scala 113:44]
  wire [2:0] _initBeats_T_2 = _initBeats_T_1 | maskedBeats_3; // @[Arbiter.scala 113:44]
  wire [2:0] initBeats_1 = _initBeats_T_2 | maskedBeats_4; // @[Arbiter.scala 113:44]
  wire  muxStateEarly_1_0 = idle_1 ? earlyWinner_1_0 : state_1_0; // @[Arbiter.scala 118:30]
  reg  state_1_1; // @[Arbiter.scala 117:26]
  wire  muxStateEarly_1_1 = idle_1 ? earlyWinner_1_1 : state_1_1; // @[Arbiter.scala 118:30]
  reg  state_1_2; // @[Arbiter.scala 117:26]
  wire  muxStateEarly_1_2 = idle_1 ? earlyWinner_1_2 : state_1_2; // @[Arbiter.scala 118:30]
  reg  state_1_3; // @[Arbiter.scala 117:26]
  wire  muxStateEarly_1_3 = idle_1 ? earlyWinner_1_3 : state_1_3; // @[Arbiter.scala 118:30]
  reg  state_1_4; // @[Arbiter.scala 117:26]
  wire  muxStateEarly_1_4 = idle_1 ? earlyWinner_1_4 : state_1_4; // @[Arbiter.scala 118:30]
  wire  _sink_ACancel_1_earlyValid_T_12 = ((((state_1_0 & putfull_valid) | (state_1_1 & sourcesIn_1_1_earlyValid)) | (
    state_1_2 & sourcesIn_2_earlyValid)) | (state_1_3 & sourcesIn_3_earlyValid)) | (state_1_4 & sourcesIn_4_earlyValid); // @[Mux.scala 27:72]
  wire  sink_ACancel_1_earlyValid = idle_1 ? _T_89 : _sink_ACancel_1_earlyValid_T_12; // @[Arbiter.scala 126:29]
  wire  _beatsLeft_1_T_2 = auto_out_a_ready & sink_ACancel_1_earlyValid; // @[ReadyValidCancel.scala 52:33]
  wire [2:0] _GEN_15 = {{2'd0}, _beatsLeft_1_T_2}; // @[Arbiter.scala 114:52]
  wire [2:0] _beatsLeft_1_T_4 = beatsLeft_1 - _GEN_15; // @[Arbiter.scala 114:52]
  wire  allowed_1_1 = idle_1 ? readys_1_1 : state_1_1; // @[Arbiter.scala 122:24]
  wire  allowed_1_2 = idle_1 ? readys_1_2 : state_1_2; // @[Arbiter.scala 122:24]
  wire  allowed_1_3 = idle_1 ? readys_1_3 : state_1_3; // @[Arbiter.scala 122:24]
  wire  allowed_1_4 = idle_1 ? readys_1_4 : state_1_4; // @[Arbiter.scala 122:24]
  wire [72:0] left_left_2 = {putfull_bits_putfull_bits_a_mask_right_right_right,
    putfull_bits_putfull_bits_a_mask_right_right_left,putfull_bits_putfull_bits_a_mask_right_left_right,
    putfull_bits_putfull_bits_a_mask_right_left_left,putfull_bits_putfull_bits_a_mask_left_right_right,
    putfull_bits_putfull_bits_a_mask_left_right_left,putfull_bits_putfull_bits_a_mask_left_left_right,
    putfull_bits_putfull_bits_a_mask_left_left_left,auto_in_c_bits_data,1'h0}; // @[Mux.scala 27:72]
  wire [127:0] _T_112 = {6'h0,auto_in_c_bits_size,putfull_bits_right,putfull_bits_left,auto_in_c_bits_address,1'h1,2'h3,4'he
    ,left_left_2}; // @[Mux.scala 27:72]
  wire [127:0] _T_113 = muxStateEarly_1_0 ? _T_112 : 128'h0; // @[Mux.scala 27:72]
  wire [7:0] sourcesIn_1_1_bits_mask = TLBroadcastTracker_io_out_a_bits_mask; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [63:0] sourcesIn_1_1_bits_data = TLBroadcastTracker_io_out_a_bits_data; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_1_1_bits_user_amba_prot_secure = TLBroadcastTracker_io_out_a_bits_user_amba_prot_secure; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_1_1_bits_user_amba_prot_fetch = TLBroadcastTracker_io_out_a_bits_user_amba_prot_fetch; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_1_1_bits_user_amba_prot_writealloc = TLBroadcastTracker_io_out_a_bits_user_amba_prot_writealloc; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_1_1_bits_user_amba_prot_privileged = TLBroadcastTracker_io_out_a_bits_user_amba_prot_privileged; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [76:0] left_3 = {sourcesIn_1_1_bits_user_amba_prot_writealloc,sourcesIn_1_1_bits_user_amba_prot_privileged,
    sourcesIn_1_1_bits_user_amba_prot_secure,sourcesIn_1_1_bits_user_amba_prot_fetch,sourcesIn_1_1_bits_mask,
    sourcesIn_1_1_bits_data,1'h0}; // @[Mux.scala 27:72]
  wire  sourcesIn_1_1_bits_user_amba_prot_modifiable = TLBroadcastTracker_io_out_a_bits_user_amba_prot_modifiable; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_1_1_bits_user_amba_prot_readalloc = TLBroadcastTracker_io_out_a_bits_user_amba_prot_readalloc; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [31:0] sourcesIn_1_1_bits_address = TLBroadcastTracker_io_out_a_bits_address; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_1_1_bits_user_amba_prot_bufferable = TLBroadcastTracker_io_out_a_bits_user_amba_prot_bufferable; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [2:0] sourcesIn_1_1_bits_size = TLBroadcastTracker_io_out_a_bits_size; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [6:0] sourcesIn_1_1_bits_source = TLBroadcastTracker_io_out_a_bits_source; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [2:0] sourcesIn_1_1_bits_opcode = TLBroadcastTracker_io_out_a_bits_opcode; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [2:0] sourcesIn_1_1_bits_param = TLBroadcastTracker_io_out_a_bits_param; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [127:0] _T_114 = {sourcesIn_1_1_bits_opcode,sourcesIn_1_1_bits_param,sourcesIn_1_1_bits_size,
    sourcesIn_1_1_bits_source,sourcesIn_1_1_bits_address,sourcesIn_1_1_bits_user_amba_prot_bufferable,
    sourcesIn_1_1_bits_user_amba_prot_modifiable,sourcesIn_1_1_bits_user_amba_prot_readalloc,left_3}; // @[Mux.scala 27:72]
  wire [127:0] _T_115 = muxStateEarly_1_1 ? _T_114 : 128'h0; // @[Mux.scala 27:72]
  wire [7:0] sourcesIn_2_bits_mask = TLBroadcastTracker_1_io_out_a_bits_mask; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [63:0] sourcesIn_2_bits_data = TLBroadcastTracker_1_io_out_a_bits_data; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_2_bits_user_amba_prot_secure = TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_secure; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_2_bits_user_amba_prot_fetch = TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_fetch; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_2_bits_user_amba_prot_writealloc = TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_writealloc; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_2_bits_user_amba_prot_privileged = TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_privileged; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [76:0] left_4 = {sourcesIn_2_bits_user_amba_prot_writealloc,sourcesIn_2_bits_user_amba_prot_privileged,
    sourcesIn_2_bits_user_amba_prot_secure,sourcesIn_2_bits_user_amba_prot_fetch,sourcesIn_2_bits_mask,
    sourcesIn_2_bits_data,1'h0}; // @[Mux.scala 27:72]
  wire  sourcesIn_2_bits_user_amba_prot_modifiable = TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_modifiable; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_2_bits_user_amba_prot_readalloc = TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_readalloc; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [31:0] sourcesIn_2_bits_address = TLBroadcastTracker_1_io_out_a_bits_address; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_2_bits_user_amba_prot_bufferable = TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_bufferable; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [2:0] sourcesIn_2_bits_size = TLBroadcastTracker_1_io_out_a_bits_size; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [6:0] sourcesIn_2_bits_source = TLBroadcastTracker_1_io_out_a_bits_source; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [2:0] sourcesIn_2_bits_opcode = TLBroadcastTracker_1_io_out_a_bits_opcode; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [2:0] sourcesIn_2_bits_param = TLBroadcastTracker_1_io_out_a_bits_param; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [127:0] _T_116 = {sourcesIn_2_bits_opcode,sourcesIn_2_bits_param,sourcesIn_2_bits_size,sourcesIn_2_bits_source,
    sourcesIn_2_bits_address,sourcesIn_2_bits_user_amba_prot_bufferable,sourcesIn_2_bits_user_amba_prot_modifiable,
    sourcesIn_2_bits_user_amba_prot_readalloc,left_4}; // @[Mux.scala 27:72]
  wire [127:0] _T_117 = muxStateEarly_1_2 ? _T_116 : 128'h0; // @[Mux.scala 27:72]
  wire [7:0] sourcesIn_3_bits_mask = TLBroadcastTracker_2_io_out_a_bits_mask; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [63:0] sourcesIn_3_bits_data = TLBroadcastTracker_2_io_out_a_bits_data; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_3_bits_user_amba_prot_secure = TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_secure; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_3_bits_user_amba_prot_fetch = TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_fetch; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_3_bits_user_amba_prot_writealloc = TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_writealloc; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_3_bits_user_amba_prot_privileged = TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_privileged; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [76:0] left_5 = {sourcesIn_3_bits_user_amba_prot_writealloc,sourcesIn_3_bits_user_amba_prot_privileged,
    sourcesIn_3_bits_user_amba_prot_secure,sourcesIn_3_bits_user_amba_prot_fetch,sourcesIn_3_bits_mask,
    sourcesIn_3_bits_data,1'h0}; // @[Mux.scala 27:72]
  wire  sourcesIn_3_bits_user_amba_prot_modifiable = TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_modifiable; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_3_bits_user_amba_prot_readalloc = TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_readalloc; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [31:0] sourcesIn_3_bits_address = TLBroadcastTracker_2_io_out_a_bits_address; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_3_bits_user_amba_prot_bufferable = TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_bufferable; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [2:0] sourcesIn_3_bits_size = TLBroadcastTracker_2_io_out_a_bits_size; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [6:0] sourcesIn_3_bits_source = TLBroadcastTracker_2_io_out_a_bits_source; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [2:0] sourcesIn_3_bits_opcode = TLBroadcastTracker_2_io_out_a_bits_opcode; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [2:0] sourcesIn_3_bits_param = TLBroadcastTracker_2_io_out_a_bits_param; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [127:0] _T_118 = {sourcesIn_3_bits_opcode,sourcesIn_3_bits_param,sourcesIn_3_bits_size,sourcesIn_3_bits_source,
    sourcesIn_3_bits_address,sourcesIn_3_bits_user_amba_prot_bufferable,sourcesIn_3_bits_user_amba_prot_modifiable,
    sourcesIn_3_bits_user_amba_prot_readalloc,left_5}; // @[Mux.scala 27:72]
  wire [127:0] _T_119 = muxStateEarly_1_3 ? _T_118 : 128'h0; // @[Mux.scala 27:72]
  wire [7:0] sourcesIn_4_bits_mask = TLBroadcastTracker_3_io_out_a_bits_mask; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [63:0] sourcesIn_4_bits_data = TLBroadcastTracker_3_io_out_a_bits_data; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_4_bits_user_amba_prot_secure = TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_secure; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_4_bits_user_amba_prot_fetch = TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_fetch; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_4_bits_user_amba_prot_writealloc = TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_writealloc; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_4_bits_user_amba_prot_privileged = TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_privileged; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [76:0] left_6 = {sourcesIn_4_bits_user_amba_prot_writealloc,sourcesIn_4_bits_user_amba_prot_privileged,
    sourcesIn_4_bits_user_amba_prot_secure,sourcesIn_4_bits_user_amba_prot_fetch,sourcesIn_4_bits_mask,
    sourcesIn_4_bits_data,1'h0}; // @[Mux.scala 27:72]
  wire  sourcesIn_4_bits_user_amba_prot_modifiable = TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_modifiable; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_4_bits_user_amba_prot_readalloc = TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_readalloc; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [31:0] sourcesIn_4_bits_address = TLBroadcastTracker_3_io_out_a_bits_address; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire  sourcesIn_4_bits_user_amba_prot_bufferable = TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_bufferable; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [2:0] sourcesIn_4_bits_size = TLBroadcastTracker_3_io_out_a_bits_size; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [6:0] sourcesIn_4_bits_source = TLBroadcastTracker_3_io_out_a_bits_source; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [2:0] sourcesIn_4_bits_opcode = TLBroadcastTracker_3_io_out_a_bits_opcode; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [2:0] sourcesIn_4_bits_param = TLBroadcastTracker_3_io_out_a_bits_param; // @[ReadyValidCancel.scala 72:19 ReadyValidCancel.scala 75:14]
  wire [127:0] _T_120 = {sourcesIn_4_bits_opcode,sourcesIn_4_bits_param,sourcesIn_4_bits_size,sourcesIn_4_bits_source,
    sourcesIn_4_bits_address,sourcesIn_4_bits_user_amba_prot_bufferable,sourcesIn_4_bits_user_amba_prot_modifiable,
    sourcesIn_4_bits_user_amba_prot_readalloc,left_6}; // @[Mux.scala 27:72]
  wire [127:0] _T_121 = muxStateEarly_1_4 ? _T_120 : 128'h0; // @[Mux.scala 27:72]
  wire [127:0] _T_122 = _T_113 | _T_115; // @[Mux.scala 27:72]
  wire [127:0] _T_123 = _T_122 | _T_117; // @[Mux.scala 27:72]
  wire [127:0] _T_124 = _T_123 | _T_119; // @[Mux.scala 27:72]
  wire [127:0] _T_125 = _T_124 | _T_121; // @[Mux.scala 27:72]
  reg  probe_todo; // @[Broadcast.scala 215:31]
  reg [25:0] probe_line; // @[Broadcast.scala 216:27]
  reg [1:0] probe_perms; // @[Broadcast.scala 217:28]
  wire [1:0] _probe_next_T_1 = {probe_todo, 1'h0}; // @[Broadcast.scala 218:58]
  wire [1:0] _probe_next_T_2 = ~_probe_next_T_1; // @[Broadcast.scala 218:37]
  wire [1:0] _GEN_16 = {{1'd0}, probe_todo}; // @[Broadcast.scala 218:35]
  wire [1:0] probe_next = _GEN_16 & _probe_next_T_2; // @[Broadcast.scala 218:35]
  wire  probe_busy = |probe_todo; // @[Broadcast.scala 219:38]
  wire  _T_141 = auto_in_b_ready & probe_busy; // @[Decoupled.scala 40:37]
  wire [1:0] _probe_todo_T = ~probe_next; // @[Broadcast.scala 227:55]
  wire [1:0] _probe_todo_T_1 = _GEN_16 & _probe_todo_T; // @[Broadcast.scala 227:53]
  wire [1:0] _GEN_5 = _T_141 ? _probe_todo_T_1 : {{1'd0}, probe_todo}; // @[Broadcast.scala 227:26 Broadcast.scala 227:39 Broadcast.scala 215:31]
  reg [2:0] a_first_counter; // @[Edges.scala 230:27]
  wire  a_first = a_first_counter == 3'h0; // @[Edges.scala 232:25]
  wire  _auto_data_a_ready_T_1 = (~a_first) | filter_io_request_ready; // @[Broadcast.scala 243:31]
  wire [3:0] matchTrackers = {TLBroadcastTracker_3_io_line == (auto_in_a_bits_address[31:6]),
    TLBroadcastTracker_2_io_line == (auto_in_a_bits_address[31:6]),TLBroadcastTracker_1_io_line == (
    auto_in_a_bits_address[31:6]),TLBroadcastTracker_io_line == (auto_in_a_bits_address[31:6])}; // @[Broadcast.scala 236:100]
  wire  matchTracker = |matchTrackers; // @[Broadcast.scala 237:43]
  wire  _freeTrackers_WIRE_3 = TLBroadcastTracker_3_io_idle; // @[Broadcast.scala 234:33 Broadcast.scala 234:33]
  wire  _freeTrackers_WIRE_2 = TLBroadcastTracker_2_io_idle; // @[Broadcast.scala 234:33 Broadcast.scala 234:33]
  wire  _freeTrackers_WIRE_1 = TLBroadcastTracker_1_io_idle; // @[Broadcast.scala 234:33 Broadcast.scala 234:33]
  wire  _freeTrackers_WIRE_0 = TLBroadcastTracker_io_idle; // @[Broadcast.scala 234:33 Broadcast.scala 234:33]
  wire [3:0] freeTrackers = {_freeTrackers_WIRE_3,_freeTrackers_WIRE_2,_freeTrackers_WIRE_1,_freeTrackers_WIRE_0}; // @[Broadcast.scala 234:64]
  wire [4:0] _allocTracker_T = {freeTrackers, 1'h0}; // @[package.scala 222:48]
  wire [3:0] _allocTracker_T_2 = freeTrackers | (_allocTracker_T[3:0]); // @[package.scala 222:43]
  wire [5:0] _allocTracker_T_3 = {_allocTracker_T_2, 2'h0}; // @[package.scala 222:48]
  wire [3:0] _allocTracker_T_5 = _allocTracker_T_2 | (_allocTracker_T_3[3:0]); // @[package.scala 222:43]
  wire [4:0] _allocTracker_T_7 = {_allocTracker_T_5, 1'h0}; // @[Broadcast.scala 238:64]
  wire [4:0] _allocTracker_T_8 = ~_allocTracker_T_7; // @[Broadcast.scala 238:41]
  wire [4:0] _GEN_18 = {{1'd0}, freeTrackers}; // @[Broadcast.scala 238:39]
  wire [4:0] allocTracker = _GEN_18 & _allocTracker_T_8; // @[Broadcast.scala 238:39]
  wire [4:0] selectTracker = matchTracker ? {{1'd0}, matchTrackers} : allocTracker; // @[Broadcast.scala 239:30]
  wire  _trackerReadys_WIRE_3 = TLBroadcastTracker_3_io_in_a_ready; // @[Broadcast.scala 240:34 Broadcast.scala 240:34]
  wire  _trackerReadys_WIRE_2 = TLBroadcastTracker_2_io_in_a_ready; // @[Broadcast.scala 240:34 Broadcast.scala 240:34]
  wire  _trackerReadys_WIRE_1 = TLBroadcastTracker_1_io_in_a_ready; // @[Broadcast.scala 240:34 Broadcast.scala 240:34]
  wire  _trackerReadys_WIRE_0 = TLBroadcastTracker_io_in_a_ready; // @[Broadcast.scala 240:34 Broadcast.scala 240:34]
  wire [3:0] trackerReadys = {_trackerReadys_WIRE_3,_trackerReadys_WIRE_2,_trackerReadys_WIRE_1,_trackerReadys_WIRE_0}; // @[Broadcast.scala 240:63]
  wire [4:0] _GEN_19 = {{1'd0}, trackerReadys}; // @[Broadcast.scala 241:41]
  wire [4:0] _trackerReady_T = selectTracker & _GEN_19; // @[Broadcast.scala 241:41]
  wire  trackerReady = |_trackerReady_T; // @[Broadcast.scala 241:61]
  wire  auto_data_a_ready = ((~a_first) | filter_io_request_ready) & trackerReady; // @[Broadcast.scala 243:59]
  wire  _a_first_T = auto_data_a_ready & auto_in_a_valid; // @[Decoupled.scala 40:37]
  wire [12:0] _a_first_beats1_decode_T_1 = 13'h3f << auto_in_a_bits_size; // @[package.scala 212:77]
  wire [5:0] _a_first_beats1_decode_T_3 = ~(_a_first_beats1_decode_T_1[5:0]); // @[package.scala 212:46]
  wire [2:0] a_first_beats1_decode = _a_first_beats1_decode_T_3[5:3]; // @[Edges.scala 221:59]
  wire  a_first_beats1_opdata = ~(auto_in_a_bits_opcode[2]); // @[Edges.scala 93:28]
  wire [2:0] a_first_counter1 = a_first_counter - 3'h1; // @[Edges.scala 231:28]
  wire [3:0] filter_io_request_bits_mshr_lo = selectTracker[3:0]; // @[OneHot.scala 31:18]
  wire  filter_io_request_bits_mshr_right = |(selectTracker[4]); // @[OneHot.scala 32:14]
  wire [3:0] _GEN_20 = {{3'd0}, selectTracker[4]}; // @[OneHot.scala 32:28]
  wire [3:0] _filter_io_request_bits_mshr_T = _GEN_20 | filter_io_request_bits_mshr_lo; // @[OneHot.scala 32:28]
  wire [1:0] filter_io_request_bits_mshr_hi_1 = _filter_io_request_bits_mshr_T[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] filter_io_request_bits_mshr_lo_1 = _filter_io_request_bits_mshr_T[1:0]; // @[OneHot.scala 31:18]
  wire  filter_io_request_bits_mshr_right_1 = |filter_io_request_bits_mshr_hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _filter_io_request_bits_mshr_T_1 = filter_io_request_bits_mshr_hi_1 | filter_io_request_bits_mshr_lo_1; // @[OneHot.scala 32:28]
  wire  filter_io_request_bits_mshr_left = _filter_io_request_bits_mshr_T_1[1]; // @[CircuitMath.scala 30:8]
  wire [2:0] _filter_io_request_bits_mshr_T_2 = {filter_io_request_bits_mshr_right,filter_io_request_bits_mshr_right_1,
    filter_io_request_bits_mshr_left}; // @[Cat.scala 29:58]
  wire  filter_io_request_bits_needT_acq_needT = (3'h2 == auto_in_a_bits_param) | (3'h1 == auto_in_a_bits_param); // @[Mux.scala 80:57]
  wire  _filter_io_request_bits_needT_T_11 = 3'h4 == auto_in_a_bits_opcode ? 1'h0 : 1'h1; // @[Mux.scala 80:57]
  wire  _filter_io_request_bits_needT_T_13 = 3'h5 == auto_in_a_bits_opcode ? 3'h1 == auto_in_a_bits_param :
    _filter_io_request_bits_needT_T_11; // @[Mux.scala 80:57]
  wire  _filter_io_request_bits_needT_T_15 = 3'h6 == auto_in_a_bits_opcode ? filter_io_request_bits_needT_acq_needT :
    _filter_io_request_bits_needT_T_13; // @[Mux.scala 80:57]
  wire  others = ~filter_io_response_bits_allocOH; // @[Broadcast.scala 257:54]
  wire  _T_147 = filter_io_response_ready & filter_io_response_valid; // @[Decoupled.scala 40:37]
  wire [1:0] _GEN_7 = _T_147 ? {{1'd0}, others} : _GEN_5; // @[Broadcast.scala 260:40 Broadcast.scala 261:21]
  wire [1:0] responseMSHR_shiftAmount = filter_io_response_bits_mshr; // @[OneHot.scala 64:49]
  wire [3:0] _responseMSHR_T = 4'h1 << responseMSHR_shiftAmount; // @[OneHot.scala 65:12]
  wire  responseMSHR_0 = _responseMSHR_T[0]; // @[Broadcast.scala 269:85]
  wire  responseMSHR_1 = _responseMSHR_T[1]; // @[Broadcast.scala 269:85]
  wire  responseMSHR_2 = _responseMSHR_T[2]; // @[Broadcast.scala 269:85]
  wire  responseMSHR_3 = _responseMSHR_T[3]; // @[Broadcast.scala 269:85]
  BroadcastFilter filter ( // @[Broadcast.scala 99:26]
    .io_request_ready(filter_io_request_ready),
    .io_request_valid(filter_io_request_valid),
    .io_request_bits_mshr(filter_io_request_bits_mshr),
    .io_request_bits_address(filter_io_request_bits_address),
    .io_request_bits_allocOH(filter_io_request_bits_allocOH),
    .io_request_bits_needT(filter_io_request_bits_needT),
    .io_response_ready(filter_io_response_ready),
    .io_response_valid(filter_io_response_valid),
    .io_response_bits_mshr(filter_io_response_bits_mshr),
    .io_response_bits_address(filter_io_response_bits_address),
    .io_response_bits_allocOH(filter_io_response_bits_allocOH),
    .io_response_bits_needT(filter_io_response_bits_needT)
  );
  TLBroadcastTracker TLBroadcastTracker ( // @[Broadcast.scala 107:15]
    .clock(TLBroadcastTracker_clock),
    .reset(TLBroadcastTracker_reset),
    .io_in_a_first(TLBroadcastTracker_io_in_a_first),
    .io_in_a_ready(TLBroadcastTracker_io_in_a_ready),
    .io_in_a_valid(TLBroadcastTracker_io_in_a_valid),
    .io_in_a_bits_opcode(TLBroadcastTracker_io_in_a_bits_opcode),
    .io_in_a_bits_param(TLBroadcastTracker_io_in_a_bits_param),
    .io_in_a_bits_size(TLBroadcastTracker_io_in_a_bits_size),
    .io_in_a_bits_source(TLBroadcastTracker_io_in_a_bits_source),
    .io_in_a_bits_address(TLBroadcastTracker_io_in_a_bits_address),
    .io_in_a_bits_user_amba_prot_bufferable(TLBroadcastTracker_io_in_a_bits_user_amba_prot_bufferable),
    .io_in_a_bits_user_amba_prot_modifiable(TLBroadcastTracker_io_in_a_bits_user_amba_prot_modifiable),
    .io_in_a_bits_user_amba_prot_readalloc(TLBroadcastTracker_io_in_a_bits_user_amba_prot_readalloc),
    .io_in_a_bits_user_amba_prot_writealloc(TLBroadcastTracker_io_in_a_bits_user_amba_prot_writealloc),
    .io_in_a_bits_user_amba_prot_privileged(TLBroadcastTracker_io_in_a_bits_user_amba_prot_privileged),
    .io_in_a_bits_user_amba_prot_secure(TLBroadcastTracker_io_in_a_bits_user_amba_prot_secure),
    .io_in_a_bits_user_amba_prot_fetch(TLBroadcastTracker_io_in_a_bits_user_amba_prot_fetch),
    .io_in_a_bits_mask(TLBroadcastTracker_io_in_a_bits_mask),
    .io_in_a_bits_data(TLBroadcastTracker_io_in_a_bits_data),
    .io_out_a_ready(TLBroadcastTracker_io_out_a_ready),
    .io_out_a_valid(TLBroadcastTracker_io_out_a_valid),
    .io_out_a_bits_opcode(TLBroadcastTracker_io_out_a_bits_opcode),
    .io_out_a_bits_param(TLBroadcastTracker_io_out_a_bits_param),
    .io_out_a_bits_size(TLBroadcastTracker_io_out_a_bits_size),
    .io_out_a_bits_source(TLBroadcastTracker_io_out_a_bits_source),
    .io_out_a_bits_address(TLBroadcastTracker_io_out_a_bits_address),
    .io_out_a_bits_user_amba_prot_bufferable(TLBroadcastTracker_io_out_a_bits_user_amba_prot_bufferable),
    .io_out_a_bits_user_amba_prot_modifiable(TLBroadcastTracker_io_out_a_bits_user_amba_prot_modifiable),
    .io_out_a_bits_user_amba_prot_readalloc(TLBroadcastTracker_io_out_a_bits_user_amba_prot_readalloc),
    .io_out_a_bits_user_amba_prot_writealloc(TLBroadcastTracker_io_out_a_bits_user_amba_prot_writealloc),
    .io_out_a_bits_user_amba_prot_privileged(TLBroadcastTracker_io_out_a_bits_user_amba_prot_privileged),
    .io_out_a_bits_user_amba_prot_secure(TLBroadcastTracker_io_out_a_bits_user_amba_prot_secure),
    .io_out_a_bits_user_amba_prot_fetch(TLBroadcastTracker_io_out_a_bits_user_amba_prot_fetch),
    .io_out_a_bits_mask(TLBroadcastTracker_io_out_a_bits_mask),
    .io_out_a_bits_data(TLBroadcastTracker_io_out_a_bits_data),
    .io_probe_valid(TLBroadcastTracker_io_probe_valid),
    .io_probe_bits_count(TLBroadcastTracker_io_probe_bits_count),
    .io_probenack(TLBroadcastTracker_io_probenack),
    .io_probedack(TLBroadcastTracker_io_probedack),
    .io_probesack(TLBroadcastTracker_io_probesack),
    .io_d_last(TLBroadcastTracker_io_d_last),
    .io_e_last(TLBroadcastTracker_io_e_last),
    .io_source(TLBroadcastTracker_io_source),
    .io_line(TLBroadcastTracker_io_line),
    .io_idle(TLBroadcastTracker_io_idle),
    .io_need_d(TLBroadcastTracker_io_need_d)
  );
  TLBroadcastTracker_1 TLBroadcastTracker_1 ( // @[Broadcast.scala 107:15]
    .clock(TLBroadcastTracker_1_clock),
    .reset(TLBroadcastTracker_1_reset),
    .io_in_a_first(TLBroadcastTracker_1_io_in_a_first),
    .io_in_a_ready(TLBroadcastTracker_1_io_in_a_ready),
    .io_in_a_valid(TLBroadcastTracker_1_io_in_a_valid),
    .io_in_a_bits_opcode(TLBroadcastTracker_1_io_in_a_bits_opcode),
    .io_in_a_bits_param(TLBroadcastTracker_1_io_in_a_bits_param),
    .io_in_a_bits_size(TLBroadcastTracker_1_io_in_a_bits_size),
    .io_in_a_bits_source(TLBroadcastTracker_1_io_in_a_bits_source),
    .io_in_a_bits_address(TLBroadcastTracker_1_io_in_a_bits_address),
    .io_in_a_bits_user_amba_prot_bufferable(TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_bufferable),
    .io_in_a_bits_user_amba_prot_modifiable(TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_modifiable),
    .io_in_a_bits_user_amba_prot_readalloc(TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_readalloc),
    .io_in_a_bits_user_amba_prot_writealloc(TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_writealloc),
    .io_in_a_bits_user_amba_prot_privileged(TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_privileged),
    .io_in_a_bits_user_amba_prot_secure(TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_secure),
    .io_in_a_bits_user_amba_prot_fetch(TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_fetch),
    .io_in_a_bits_mask(TLBroadcastTracker_1_io_in_a_bits_mask),
    .io_in_a_bits_data(TLBroadcastTracker_1_io_in_a_bits_data),
    .io_out_a_ready(TLBroadcastTracker_1_io_out_a_ready),
    .io_out_a_valid(TLBroadcastTracker_1_io_out_a_valid),
    .io_out_a_bits_opcode(TLBroadcastTracker_1_io_out_a_bits_opcode),
    .io_out_a_bits_param(TLBroadcastTracker_1_io_out_a_bits_param),
    .io_out_a_bits_size(TLBroadcastTracker_1_io_out_a_bits_size),
    .io_out_a_bits_source(TLBroadcastTracker_1_io_out_a_bits_source),
    .io_out_a_bits_address(TLBroadcastTracker_1_io_out_a_bits_address),
    .io_out_a_bits_user_amba_prot_bufferable(TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_bufferable),
    .io_out_a_bits_user_amba_prot_modifiable(TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_modifiable),
    .io_out_a_bits_user_amba_prot_readalloc(TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_readalloc),
    .io_out_a_bits_user_amba_prot_writealloc(TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_writealloc),
    .io_out_a_bits_user_amba_prot_privileged(TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_privileged),
    .io_out_a_bits_user_amba_prot_secure(TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_secure),
    .io_out_a_bits_user_amba_prot_fetch(TLBroadcastTracker_1_io_out_a_bits_user_amba_prot_fetch),
    .io_out_a_bits_mask(TLBroadcastTracker_1_io_out_a_bits_mask),
    .io_out_a_bits_data(TLBroadcastTracker_1_io_out_a_bits_data),
    .io_probe_valid(TLBroadcastTracker_1_io_probe_valid),
    .io_probe_bits_count(TLBroadcastTracker_1_io_probe_bits_count),
    .io_probenack(TLBroadcastTracker_1_io_probenack),
    .io_probedack(TLBroadcastTracker_1_io_probedack),
    .io_probesack(TLBroadcastTracker_1_io_probesack),
    .io_d_last(TLBroadcastTracker_1_io_d_last),
    .io_e_last(TLBroadcastTracker_1_io_e_last),
    .io_source(TLBroadcastTracker_1_io_source),
    .io_line(TLBroadcastTracker_1_io_line),
    .io_idle(TLBroadcastTracker_1_io_idle),
    .io_need_d(TLBroadcastTracker_1_io_need_d)
  );
  TLBroadcastTracker_2 TLBroadcastTracker_2 ( // @[Broadcast.scala 107:15]
    .clock(TLBroadcastTracker_2_clock),
    .reset(TLBroadcastTracker_2_reset),
    .io_in_a_first(TLBroadcastTracker_2_io_in_a_first),
    .io_in_a_ready(TLBroadcastTracker_2_io_in_a_ready),
    .io_in_a_valid(TLBroadcastTracker_2_io_in_a_valid),
    .io_in_a_bits_opcode(TLBroadcastTracker_2_io_in_a_bits_opcode),
    .io_in_a_bits_param(TLBroadcastTracker_2_io_in_a_bits_param),
    .io_in_a_bits_size(TLBroadcastTracker_2_io_in_a_bits_size),
    .io_in_a_bits_source(TLBroadcastTracker_2_io_in_a_bits_source),
    .io_in_a_bits_address(TLBroadcastTracker_2_io_in_a_bits_address),
    .io_in_a_bits_user_amba_prot_bufferable(TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_bufferable),
    .io_in_a_bits_user_amba_prot_modifiable(TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_modifiable),
    .io_in_a_bits_user_amba_prot_readalloc(TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_readalloc),
    .io_in_a_bits_user_amba_prot_writealloc(TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_writealloc),
    .io_in_a_bits_user_amba_prot_privileged(TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_privileged),
    .io_in_a_bits_user_amba_prot_secure(TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_secure),
    .io_in_a_bits_user_amba_prot_fetch(TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_fetch),
    .io_in_a_bits_mask(TLBroadcastTracker_2_io_in_a_bits_mask),
    .io_in_a_bits_data(TLBroadcastTracker_2_io_in_a_bits_data),
    .io_out_a_ready(TLBroadcastTracker_2_io_out_a_ready),
    .io_out_a_valid(TLBroadcastTracker_2_io_out_a_valid),
    .io_out_a_bits_opcode(TLBroadcastTracker_2_io_out_a_bits_opcode),
    .io_out_a_bits_param(TLBroadcastTracker_2_io_out_a_bits_param),
    .io_out_a_bits_size(TLBroadcastTracker_2_io_out_a_bits_size),
    .io_out_a_bits_source(TLBroadcastTracker_2_io_out_a_bits_source),
    .io_out_a_bits_address(TLBroadcastTracker_2_io_out_a_bits_address),
    .io_out_a_bits_user_amba_prot_bufferable(TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_bufferable),
    .io_out_a_bits_user_amba_prot_modifiable(TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_modifiable),
    .io_out_a_bits_user_amba_prot_readalloc(TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_readalloc),
    .io_out_a_bits_user_amba_prot_writealloc(TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_writealloc),
    .io_out_a_bits_user_amba_prot_privileged(TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_privileged),
    .io_out_a_bits_user_amba_prot_secure(TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_secure),
    .io_out_a_bits_user_amba_prot_fetch(TLBroadcastTracker_2_io_out_a_bits_user_amba_prot_fetch),
    .io_out_a_bits_mask(TLBroadcastTracker_2_io_out_a_bits_mask),
    .io_out_a_bits_data(TLBroadcastTracker_2_io_out_a_bits_data),
    .io_probe_valid(TLBroadcastTracker_2_io_probe_valid),
    .io_probe_bits_count(TLBroadcastTracker_2_io_probe_bits_count),
    .io_probenack(TLBroadcastTracker_2_io_probenack),
    .io_probedack(TLBroadcastTracker_2_io_probedack),
    .io_probesack(TLBroadcastTracker_2_io_probesack),
    .io_d_last(TLBroadcastTracker_2_io_d_last),
    .io_e_last(TLBroadcastTracker_2_io_e_last),
    .io_source(TLBroadcastTracker_2_io_source),
    .io_line(TLBroadcastTracker_2_io_line),
    .io_idle(TLBroadcastTracker_2_io_idle),
    .io_need_d(TLBroadcastTracker_2_io_need_d)
  );
  TLBroadcastTracker_3 TLBroadcastTracker_3 ( // @[Broadcast.scala 107:15]
    .clock(TLBroadcastTracker_3_clock),
    .reset(TLBroadcastTracker_3_reset),
    .io_in_a_first(TLBroadcastTracker_3_io_in_a_first),
    .io_in_a_ready(TLBroadcastTracker_3_io_in_a_ready),
    .io_in_a_valid(TLBroadcastTracker_3_io_in_a_valid),
    .io_in_a_bits_opcode(TLBroadcastTracker_3_io_in_a_bits_opcode),
    .io_in_a_bits_param(TLBroadcastTracker_3_io_in_a_bits_param),
    .io_in_a_bits_size(TLBroadcastTracker_3_io_in_a_bits_size),
    .io_in_a_bits_source(TLBroadcastTracker_3_io_in_a_bits_source),
    .io_in_a_bits_address(TLBroadcastTracker_3_io_in_a_bits_address),
    .io_in_a_bits_user_amba_prot_bufferable(TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_bufferable),
    .io_in_a_bits_user_amba_prot_modifiable(TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_modifiable),
    .io_in_a_bits_user_amba_prot_readalloc(TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_readalloc),
    .io_in_a_bits_user_amba_prot_writealloc(TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_writealloc),
    .io_in_a_bits_user_amba_prot_privileged(TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_privileged),
    .io_in_a_bits_user_amba_prot_secure(TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_secure),
    .io_in_a_bits_user_amba_prot_fetch(TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_fetch),
    .io_in_a_bits_mask(TLBroadcastTracker_3_io_in_a_bits_mask),
    .io_in_a_bits_data(TLBroadcastTracker_3_io_in_a_bits_data),
    .io_out_a_ready(TLBroadcastTracker_3_io_out_a_ready),
    .io_out_a_valid(TLBroadcastTracker_3_io_out_a_valid),
    .io_out_a_bits_opcode(TLBroadcastTracker_3_io_out_a_bits_opcode),
    .io_out_a_bits_param(TLBroadcastTracker_3_io_out_a_bits_param),
    .io_out_a_bits_size(TLBroadcastTracker_3_io_out_a_bits_size),
    .io_out_a_bits_source(TLBroadcastTracker_3_io_out_a_bits_source),
    .io_out_a_bits_address(TLBroadcastTracker_3_io_out_a_bits_address),
    .io_out_a_bits_user_amba_prot_bufferable(TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_bufferable),
    .io_out_a_bits_user_amba_prot_modifiable(TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_modifiable),
    .io_out_a_bits_user_amba_prot_readalloc(TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_readalloc),
    .io_out_a_bits_user_amba_prot_writealloc(TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_writealloc),
    .io_out_a_bits_user_amba_prot_privileged(TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_privileged),
    .io_out_a_bits_user_amba_prot_secure(TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_secure),
    .io_out_a_bits_user_amba_prot_fetch(TLBroadcastTracker_3_io_out_a_bits_user_amba_prot_fetch),
    .io_out_a_bits_mask(TLBroadcastTracker_3_io_out_a_bits_mask),
    .io_out_a_bits_data(TLBroadcastTracker_3_io_out_a_bits_data),
    .io_probe_valid(TLBroadcastTracker_3_io_probe_valid),
    .io_probe_bits_count(TLBroadcastTracker_3_io_probe_bits_count),
    .io_probenack(TLBroadcastTracker_3_io_probenack),
    .io_probedack(TLBroadcastTracker_3_io_probedack),
    .io_probesack(TLBroadcastTracker_3_io_probesack),
    .io_d_last(TLBroadcastTracker_3_io_d_last),
    .io_e_last(TLBroadcastTracker_3_io_e_last),
    .io_source(TLBroadcastTracker_3_io_source),
    .io_line(TLBroadcastTracker_3_io_line),
    .io_idle(TLBroadcastTracker_3_io_idle),
    .io_need_d(TLBroadcastTracker_3_io_need_d)
  );
  assign auto_in_a_ready = ((~a_first) | filter_io_request_ready) & trackerReady; // @[Broadcast.scala 243:59]
  assign auto_in_b_valid = |probe_todo; // @[Broadcast.scala 219:38]
  assign auto_in_b_bits_param = probe_perms; // @[Edges.scala 602:17 Edges.scala 604:15]
  assign auto_in_b_bits_address = {probe_line, 6'h0}; // @[Broadcast.scala 225:46]
  assign auto_in_c_ready = c_probeack | _auto_data_c_ready_T; // @[Broadcast.scala 184:32]
  assign auto_in_d_valid = idle ? _T_37 : _sink_ACancel_earlyValid_T_3; // @[Arbiter.scala 126:29]
  assign auto_in_d_bits_opcode = _T_55[80:78]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_param = _T_55[77:76]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_size = _T_55[75:73]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_source = _T_55[72:68]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_sink = _T_55[67:66]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_denied = _T_55[65]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_data = _T_55[64:1]; // @[Mux.scala 27:72]
  assign auto_in_d_bits_corrupt = _T_55[0]; // @[Mux.scala 27:72]
  assign auto_out_a_valid = idle_1 ? _T_89 : _sink_ACancel_1_earlyValid_T_12; // @[Arbiter.scala 126:29]
  assign auto_out_a_bits_opcode = _T_125[127:125]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_size = _T_125[121:119]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_source = _T_125[118:112]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_address = _T_125[111:80]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_user_amba_prot_bufferable = _T_125[79]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_user_amba_prot_modifiable = _T_125[78]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_user_amba_prot_readalloc = _T_125[77]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_user_amba_prot_writealloc = _T_125[76]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_user_amba_prot_privileged = _T_125[75]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_user_amba_prot_secure = _T_125[74]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_user_amba_prot_fetch = _T_125[73]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_mask = _T_125[72:65]; // @[Mux.scala 27:72]
  assign auto_out_a_bits_data = _T_125[64:1]; // @[Mux.scala 27:72]
  assign auto_out_d_ready = sourcesIn_1_ready | d_drop; // @[Broadcast.scala 128:50]
  assign filter_io_request_valid = (auto_in_a_valid & a_first) & trackerReady; // @[Broadcast.scala 250:56]
  assign filter_io_request_bits_mshr = _filter_io_request_bits_mshr_T_2[1:0]; // @[Broadcast.scala 251:38]
  assign filter_io_request_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign filter_io_request_bits_allocOH = auto_in_a_bits_source == 5'h10; // @[Parameters.scala 47:9]
  assign filter_io_request_bits_needT = 3'h7 == auto_in_a_bits_opcode ? filter_io_request_bits_needT_acq_needT :
    _filter_io_request_bits_needT_T_15; // @[Mux.scala 80:57]
  assign filter_io_response_ready = ~probe_busy; // @[Broadcast.scala 259:35]
  assign TLBroadcastTracker_clock = clock;
  assign TLBroadcastTracker_reset = reset;
  assign TLBroadcastTracker_io_in_a_first = a_first_counter == 3'h0; // @[Edges.scala 232:25]
  assign TLBroadcastTracker_io_in_a_valid = (auto_in_a_valid & (selectTracker[0])) & _auto_data_a_ready_T_1; // @[Broadcast.scala 245:46]
  assign TLBroadcastTracker_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_io_in_a_bits_user_amba_prot_bufferable = auto_in_a_bits_user_amba_prot_bufferable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_io_in_a_bits_user_amba_prot_modifiable = auto_in_a_bits_user_amba_prot_modifiable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_io_in_a_bits_user_amba_prot_readalloc = auto_in_a_bits_user_amba_prot_readalloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_io_in_a_bits_user_amba_prot_writealloc = auto_in_a_bits_user_amba_prot_writealloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_io_in_a_bits_user_amba_prot_privileged = auto_in_a_bits_user_amba_prot_privileged; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_io_in_a_bits_user_amba_prot_secure = auto_in_a_bits_user_amba_prot_secure; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_io_in_a_bits_user_amba_prot_fetch = auto_in_a_bits_user_amba_prot_fetch; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_io_in_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_io_out_a_ready = auto_out_a_ready & allowed_1_1; // @[Arbiter.scala 124:31]
  assign TLBroadcastTracker_io_probe_valid = _T_147 & responseMSHR_0; // @[Broadcast.scala 272:58]
  assign TLBroadcastTracker_io_probe_bits_count = ~filter_io_response_bits_allocOH; // @[Broadcast.scala 257:54]
  assign TLBroadcastTracker_io_probenack = (_clearOH_T & c_probeack) & c_trackerOH_0; // @[Broadcast.scala 175:56]
  assign TLBroadcastTracker_io_probedack = ((_GEN_1[0]) & _TLBroadcastTracker_io_probedack_T) & d_drop; // @[Broadcast.scala 143:53]
  assign TLBroadcastTracker_io_probesack = ((_clearOH_T & c_trackerOH_0) & _clearOH_T_1) &
    _TLBroadcastTracker_io_probesack_T_6; // @[Broadcast.scala 176:86]
  assign TLBroadcastTracker_io_d_last = (((_GEN_1[0]) & _T_5) & d_response) & d_last; // @[Broadcast.scala 142:67]
  assign TLBroadcastTracker_io_e_last = (_T[0]) & auto_in_e_valid; // @[Broadcast.scala 113:34]
  assign TLBroadcastTracker_1_clock = clock;
  assign TLBroadcastTracker_1_reset = reset;
  assign TLBroadcastTracker_1_io_in_a_first = a_first_counter == 3'h0; // @[Edges.scala 232:25]
  assign TLBroadcastTracker_1_io_in_a_valid = (auto_in_a_valid & (selectTracker[1])) & _auto_data_a_ready_T_1; // @[Broadcast.scala 245:46]
  assign TLBroadcastTracker_1_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_1_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_1_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_1_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_1_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_bufferable = auto_in_a_bits_user_amba_prot_bufferable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_modifiable = auto_in_a_bits_user_amba_prot_modifiable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_readalloc = auto_in_a_bits_user_amba_prot_readalloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_writealloc = auto_in_a_bits_user_amba_prot_writealloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_privileged = auto_in_a_bits_user_amba_prot_privileged; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_secure = auto_in_a_bits_user_amba_prot_secure; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_1_io_in_a_bits_user_amba_prot_fetch = auto_in_a_bits_user_amba_prot_fetch; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_1_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_1_io_in_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_1_io_out_a_ready = auto_out_a_ready & allowed_1_2; // @[Arbiter.scala 124:31]
  assign TLBroadcastTracker_1_io_probe_valid = _T_147 & responseMSHR_1; // @[Broadcast.scala 272:58]
  assign TLBroadcastTracker_1_io_probe_bits_count = ~filter_io_response_bits_allocOH; // @[Broadcast.scala 257:54]
  assign TLBroadcastTracker_1_io_probenack = (_clearOH_T & c_probeack) & c_trackerOH_1; // @[Broadcast.scala 175:56]
  assign TLBroadcastTracker_1_io_probedack = ((_GEN_1[1]) & _TLBroadcastTracker_io_probedack_T) & d_drop; // @[Broadcast.scala 143:53]
  assign TLBroadcastTracker_1_io_probesack = ((_clearOH_T & c_trackerOH_1) & _clearOH_T_1) &
    _TLBroadcastTracker_io_probesack_T_6; // @[Broadcast.scala 176:86]
  assign TLBroadcastTracker_1_io_d_last = (((_GEN_1[1]) & _T_5) & d_response) & d_last; // @[Broadcast.scala 142:67]
  assign TLBroadcastTracker_1_io_e_last = (_T[1]) & auto_in_e_valid; // @[Broadcast.scala 113:34]
  assign TLBroadcastTracker_2_clock = clock;
  assign TLBroadcastTracker_2_reset = reset;
  assign TLBroadcastTracker_2_io_in_a_first = a_first_counter == 3'h0; // @[Edges.scala 232:25]
  assign TLBroadcastTracker_2_io_in_a_valid = (auto_in_a_valid & (selectTracker[2])) & _auto_data_a_ready_T_1; // @[Broadcast.scala 245:46]
  assign TLBroadcastTracker_2_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_2_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_2_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_2_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_2_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_bufferable = auto_in_a_bits_user_amba_prot_bufferable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_modifiable = auto_in_a_bits_user_amba_prot_modifiable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_readalloc = auto_in_a_bits_user_amba_prot_readalloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_writealloc = auto_in_a_bits_user_amba_prot_writealloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_privileged = auto_in_a_bits_user_amba_prot_privileged; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_secure = auto_in_a_bits_user_amba_prot_secure; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_2_io_in_a_bits_user_amba_prot_fetch = auto_in_a_bits_user_amba_prot_fetch; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_2_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_2_io_in_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_2_io_out_a_ready = auto_out_a_ready & allowed_1_3; // @[Arbiter.scala 124:31]
  assign TLBroadcastTracker_2_io_probe_valid = _T_147 & responseMSHR_2; // @[Broadcast.scala 272:58]
  assign TLBroadcastTracker_2_io_probe_bits_count = ~filter_io_response_bits_allocOH; // @[Broadcast.scala 257:54]
  assign TLBroadcastTracker_2_io_probenack = (_clearOH_T & c_probeack) & c_trackerOH_2; // @[Broadcast.scala 175:56]
  assign TLBroadcastTracker_2_io_probedack = ((_GEN_1[2]) & _TLBroadcastTracker_io_probedack_T) & d_drop; // @[Broadcast.scala 143:53]
  assign TLBroadcastTracker_2_io_probesack = ((_clearOH_T & c_trackerOH_2) & _clearOH_T_1) &
    _TLBroadcastTracker_io_probesack_T_6; // @[Broadcast.scala 176:86]
  assign TLBroadcastTracker_2_io_d_last = (((_GEN_1[2]) & _T_5) & d_response) & d_last; // @[Broadcast.scala 142:67]
  assign TLBroadcastTracker_2_io_e_last = (_T[2]) & auto_in_e_valid; // @[Broadcast.scala 113:34]
  assign TLBroadcastTracker_3_clock = clock;
  assign TLBroadcastTracker_3_reset = reset;
  assign TLBroadcastTracker_3_io_in_a_first = a_first_counter == 3'h0; // @[Edges.scala 232:25]
  assign TLBroadcastTracker_3_io_in_a_valid = (auto_in_a_valid & (selectTracker[3])) & _auto_data_a_ready_T_1; // @[Broadcast.scala 245:46]
  assign TLBroadcastTracker_3_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_3_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_3_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_3_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_3_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_bufferable = auto_in_a_bits_user_amba_prot_bufferable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_modifiable = auto_in_a_bits_user_amba_prot_modifiable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_readalloc = auto_in_a_bits_user_amba_prot_readalloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_writealloc = auto_in_a_bits_user_amba_prot_writealloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_privileged = auto_in_a_bits_user_amba_prot_privileged; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_secure = auto_in_a_bits_user_amba_prot_secure; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_3_io_in_a_bits_user_amba_prot_fetch = auto_in_a_bits_user_amba_prot_fetch; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_3_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_3_io_in_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign TLBroadcastTracker_3_io_out_a_ready = auto_out_a_ready & allowed_1_4; // @[Arbiter.scala 124:31]
  assign TLBroadcastTracker_3_io_probe_valid = _T_147 & responseMSHR_3; // @[Broadcast.scala 272:58]
  assign TLBroadcastTracker_3_io_probe_bits_count = ~filter_io_response_bits_allocOH; // @[Broadcast.scala 257:54]
  assign TLBroadcastTracker_3_io_probenack = (_clearOH_T & c_probeack) & c_trackerOH_3; // @[Broadcast.scala 175:56]
  assign TLBroadcastTracker_3_io_probedack = ((_GEN_1[3]) & _TLBroadcastTracker_io_probedack_T) & d_drop; // @[Broadcast.scala 143:53]
  assign TLBroadcastTracker_3_io_probesack = ((_clearOH_T & c_trackerOH_3) & _clearOH_T_1) &
    _TLBroadcastTracker_io_probesack_T_6; // @[Broadcast.scala 176:86]
  assign TLBroadcastTracker_3_io_d_last = (((_GEN_1[3]) & _T_5) & d_response) & d_last; // @[Broadcast.scala 142:67]
  assign TLBroadcastTracker_3_io_e_last = (_T[3]) & auto_in_e_valid; // @[Broadcast.scala 113:34]
  always @(posedge clock) begin
    if (reset) begin // @[Arbiter.scala 88:30]
      beatsLeft <= 3'h0; // @[Arbiter.scala 88:30]
    end else if (latch) begin // @[Arbiter.scala 114:23]
      if (earlyWinner__1) begin // @[Arbiter.scala 112:73]
        if (beats1_opdata) begin // @[Edges.scala 222:14]
          beatsLeft <= beats1_decode;
        end else begin
          beatsLeft <= 3'h0;
        end
      end else begin
        beatsLeft <= 3'h0;
      end
    end else begin
      beatsLeft <= _beatsLeft_T_4;
    end
    if (reset) begin // @[Edges.scala 230:27]
      counter <= 3'h0; // @[Edges.scala 230:27]
    end else if (_T_5) begin // @[Edges.scala 236:17]
      if (d_first) begin // @[Edges.scala 237:21]
        if (beats1_opdata) begin // @[Edges.scala 222:14]
          counter <= beats1_decode;
        end else begin
          counter <= 3'h0;
        end
      end else begin
        counter <= counter1;
      end
    end
    if (reset) begin // @[Arbiter.scala 117:26]
      state__1 <= 1'h0; // @[Arbiter.scala 117:26]
    end else if (idle) begin // @[Arbiter.scala 118:30]
      state__1 <= earlyWinner__1;
    end
    if (d_first) begin // @[Reg.scala 16:19]
      d_trackerOH_r <= _d_trackerOH_T_8; // @[Reg.scala 16:23]
    end
    if (reset) begin // @[Arbiter.scala 117:26]
      state__0 <= 1'h0; // @[Arbiter.scala 117:26]
    end else if (idle) begin // @[Arbiter.scala 118:30]
      state__0 <= earlyWinner__0;
    end
    if (reset) begin // @[Arbiter.scala 88:30]
      beatsLeft_1 <= 3'h0; // @[Arbiter.scala 88:30]
    end else if (latch_1) begin // @[Arbiter.scala 114:23]
      beatsLeft_1 <= initBeats_1;
    end else begin
      beatsLeft_1 <= _beatsLeft_1_T_4;
    end
    if (reset) begin // @[Arbiter.scala 117:26]
      state_1_0 <= 1'h0; // @[Arbiter.scala 117:26]
    end else if (idle_1) begin // @[Arbiter.scala 118:30]
      state_1_0 <= earlyWinner_1_0;
    end
    if (reset) begin // @[Arbiter.scala 117:26]
      state_1_1 <= 1'h0; // @[Arbiter.scala 117:26]
    end else if (idle_1) begin // @[Arbiter.scala 118:30]
      state_1_1 <= earlyWinner_1_1;
    end
    if (reset) begin // @[Arbiter.scala 117:26]
      state_1_2 <= 1'h0; // @[Arbiter.scala 117:26]
    end else if (idle_1) begin // @[Arbiter.scala 118:30]
      state_1_2 <= earlyWinner_1_2;
    end
    if (reset) begin // @[Arbiter.scala 117:26]
      state_1_3 <= 1'h0; // @[Arbiter.scala 117:26]
    end else if (idle_1) begin // @[Arbiter.scala 118:30]
      state_1_3 <= earlyWinner_1_3;
    end
    if (reset) begin // @[Arbiter.scala 117:26]
      state_1_4 <= 1'h0; // @[Arbiter.scala 117:26]
    end else if (idle_1) begin // @[Arbiter.scala 118:30]
      state_1_4 <= earlyWinner_1_4;
    end
    if (reset) begin // @[Broadcast.scala 215:31]
      probe_todo <= 1'h0; // @[Broadcast.scala 215:31]
    end else begin
      probe_todo <= _GEN_7[0];
    end
    if (_T_147) begin // @[Broadcast.scala 260:40]
      probe_line <= filter_io_response_bits_address[31:6]; // @[Broadcast.scala 262:21]
    end
    if (_T_147) begin // @[Broadcast.scala 260:40]
      if (filter_io_response_bits_needT) begin // @[Broadcast.scala 263:27]
        probe_perms <= 2'h2;
      end else begin
        probe_perms <= 2'h1;
      end
    end
    if (reset) begin // @[Edges.scala 230:27]
      a_first_counter <= 3'h0; // @[Edges.scala 230:27]
    end else if (_a_first_T) begin // @[Edges.scala 236:17]
      if (a_first) begin // @[Edges.scala 237:21]
        if (a_first_beats1_opdata) begin // @[Edges.scala 222:14]
          a_first_counter <= a_first_beats1_decode;
        end else begin
          a_first_counter <= 3'h0;
        end
      end else begin
        a_first_counter <= a_first_counter1;
      end
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
  beatsLeft = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  counter = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  state__1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  d_trackerOH_r = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  state__0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  beatsLeft_1 = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  state_1_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  state_1_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  state_1_2 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  state_1_3 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  state_1_4 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  probe_todo = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  probe_line = _RAND_12[25:0];
  _RAND_13 = {1{`RANDOM}};
  probe_perms = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  a_first_counter = _RAND_14[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
