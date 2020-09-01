module PTW(
  input         clock,
  input         reset,
  output        io_requestor_0_req_ready,
  input         io_requestor_0_req_valid,
  input  [26:0] io_requestor_0_req_bits_bits_addr,
  output        io_requestor_0_resp_valid,
  output        io_requestor_0_resp_bits_ae,
  output [53:0] io_requestor_0_resp_bits_pte_ppn,
  output        io_requestor_0_resp_bits_pte_d,
  output        io_requestor_0_resp_bits_pte_a,
  output        io_requestor_0_resp_bits_pte_g,
  output        io_requestor_0_resp_bits_pte_u,
  output        io_requestor_0_resp_bits_pte_x,
  output        io_requestor_0_resp_bits_pte_w,
  output        io_requestor_0_resp_bits_pte_r,
  output        io_requestor_0_resp_bits_pte_v,
  output [1:0]  io_requestor_0_resp_bits_level,
  output        io_requestor_0_resp_bits_homogeneous,
  output [3:0]  io_requestor_0_ptbr_mode,
  output        io_requestor_0_status_debug,
  output [1:0]  io_requestor_0_status_dprv,
  output        io_requestor_0_status_mxr,
  output        io_requestor_0_status_sum,
  output        io_requestor_0_pmp_0_cfg_l,
  output [1:0]  io_requestor_0_pmp_0_cfg_a,
  output        io_requestor_0_pmp_0_cfg_x,
  output        io_requestor_0_pmp_0_cfg_w,
  output        io_requestor_0_pmp_0_cfg_r,
  output [29:0] io_requestor_0_pmp_0_addr,
  output [31:0] io_requestor_0_pmp_0_mask,
  output        io_requestor_0_pmp_1_cfg_l,
  output [1:0]  io_requestor_0_pmp_1_cfg_a,
  output        io_requestor_0_pmp_1_cfg_x,
  output        io_requestor_0_pmp_1_cfg_w,
  output        io_requestor_0_pmp_1_cfg_r,
  output [29:0] io_requestor_0_pmp_1_addr,
  output [31:0] io_requestor_0_pmp_1_mask,
  output        io_requestor_0_pmp_2_cfg_l,
  output [1:0]  io_requestor_0_pmp_2_cfg_a,
  output        io_requestor_0_pmp_2_cfg_x,
  output        io_requestor_0_pmp_2_cfg_w,
  output        io_requestor_0_pmp_2_cfg_r,
  output [29:0] io_requestor_0_pmp_2_addr,
  output [31:0] io_requestor_0_pmp_2_mask,
  output        io_requestor_0_pmp_3_cfg_l,
  output [1:0]  io_requestor_0_pmp_3_cfg_a,
  output        io_requestor_0_pmp_3_cfg_x,
  output        io_requestor_0_pmp_3_cfg_w,
  output        io_requestor_0_pmp_3_cfg_r,
  output [29:0] io_requestor_0_pmp_3_addr,
  output [31:0] io_requestor_0_pmp_3_mask,
  output        io_requestor_0_pmp_4_cfg_l,
  output [1:0]  io_requestor_0_pmp_4_cfg_a,
  output        io_requestor_0_pmp_4_cfg_x,
  output        io_requestor_0_pmp_4_cfg_w,
  output        io_requestor_0_pmp_4_cfg_r,
  output [29:0] io_requestor_0_pmp_4_addr,
  output [31:0] io_requestor_0_pmp_4_mask,
  output        io_requestor_0_pmp_5_cfg_l,
  output [1:0]  io_requestor_0_pmp_5_cfg_a,
  output        io_requestor_0_pmp_5_cfg_x,
  output        io_requestor_0_pmp_5_cfg_w,
  output        io_requestor_0_pmp_5_cfg_r,
  output [29:0] io_requestor_0_pmp_5_addr,
  output [31:0] io_requestor_0_pmp_5_mask,
  output        io_requestor_0_pmp_6_cfg_l,
  output [1:0]  io_requestor_0_pmp_6_cfg_a,
  output        io_requestor_0_pmp_6_cfg_x,
  output        io_requestor_0_pmp_6_cfg_w,
  output        io_requestor_0_pmp_6_cfg_r,
  output [29:0] io_requestor_0_pmp_6_addr,
  output [31:0] io_requestor_0_pmp_6_mask,
  output        io_requestor_0_pmp_7_cfg_l,
  output [1:0]  io_requestor_0_pmp_7_cfg_a,
  output        io_requestor_0_pmp_7_cfg_x,
  output        io_requestor_0_pmp_7_cfg_w,
  output        io_requestor_0_pmp_7_cfg_r,
  output [29:0] io_requestor_0_pmp_7_addr,
  output [31:0] io_requestor_0_pmp_7_mask,
  output        io_requestor_1_req_ready,
  input         io_requestor_1_req_valid,
  input         io_requestor_1_req_bits_valid,
  input  [26:0] io_requestor_1_req_bits_bits_addr,
  output        io_requestor_1_resp_valid,
  output        io_requestor_1_resp_bits_ae,
  output [53:0] io_requestor_1_resp_bits_pte_ppn,
  output        io_requestor_1_resp_bits_pte_d,
  output        io_requestor_1_resp_bits_pte_a,
  output        io_requestor_1_resp_bits_pte_g,
  output        io_requestor_1_resp_bits_pte_u,
  output        io_requestor_1_resp_bits_pte_x,
  output        io_requestor_1_resp_bits_pte_w,
  output        io_requestor_1_resp_bits_pte_r,
  output        io_requestor_1_resp_bits_pte_v,
  output [1:0]  io_requestor_1_resp_bits_level,
  output        io_requestor_1_resp_bits_homogeneous,
  output [3:0]  io_requestor_1_ptbr_mode,
  output        io_requestor_1_status_debug,
  output [1:0]  io_requestor_1_status_prv,
  output        io_requestor_1_pmp_0_cfg_l,
  output [1:0]  io_requestor_1_pmp_0_cfg_a,
  output        io_requestor_1_pmp_0_cfg_x,
  output        io_requestor_1_pmp_0_cfg_w,
  output        io_requestor_1_pmp_0_cfg_r,
  output [29:0] io_requestor_1_pmp_0_addr,
  output [31:0] io_requestor_1_pmp_0_mask,
  output        io_requestor_1_pmp_1_cfg_l,
  output [1:0]  io_requestor_1_pmp_1_cfg_a,
  output        io_requestor_1_pmp_1_cfg_x,
  output        io_requestor_1_pmp_1_cfg_w,
  output        io_requestor_1_pmp_1_cfg_r,
  output [29:0] io_requestor_1_pmp_1_addr,
  output [31:0] io_requestor_1_pmp_1_mask,
  output        io_requestor_1_pmp_2_cfg_l,
  output [1:0]  io_requestor_1_pmp_2_cfg_a,
  output        io_requestor_1_pmp_2_cfg_x,
  output        io_requestor_1_pmp_2_cfg_w,
  output        io_requestor_1_pmp_2_cfg_r,
  output [29:0] io_requestor_1_pmp_2_addr,
  output [31:0] io_requestor_1_pmp_2_mask,
  output        io_requestor_1_pmp_3_cfg_l,
  output [1:0]  io_requestor_1_pmp_3_cfg_a,
  output        io_requestor_1_pmp_3_cfg_x,
  output        io_requestor_1_pmp_3_cfg_w,
  output        io_requestor_1_pmp_3_cfg_r,
  output [29:0] io_requestor_1_pmp_3_addr,
  output [31:0] io_requestor_1_pmp_3_mask,
  output        io_requestor_1_pmp_4_cfg_l,
  output [1:0]  io_requestor_1_pmp_4_cfg_a,
  output        io_requestor_1_pmp_4_cfg_x,
  output        io_requestor_1_pmp_4_cfg_w,
  output        io_requestor_1_pmp_4_cfg_r,
  output [29:0] io_requestor_1_pmp_4_addr,
  output [31:0] io_requestor_1_pmp_4_mask,
  output        io_requestor_1_pmp_5_cfg_l,
  output [1:0]  io_requestor_1_pmp_5_cfg_a,
  output        io_requestor_1_pmp_5_cfg_x,
  output        io_requestor_1_pmp_5_cfg_w,
  output        io_requestor_1_pmp_5_cfg_r,
  output [29:0] io_requestor_1_pmp_5_addr,
  output [31:0] io_requestor_1_pmp_5_mask,
  output        io_requestor_1_pmp_6_cfg_l,
  output [1:0]  io_requestor_1_pmp_6_cfg_a,
  output        io_requestor_1_pmp_6_cfg_x,
  output        io_requestor_1_pmp_6_cfg_w,
  output        io_requestor_1_pmp_6_cfg_r,
  output [29:0] io_requestor_1_pmp_6_addr,
  output [31:0] io_requestor_1_pmp_6_mask,
  output        io_requestor_1_pmp_7_cfg_l,
  output [1:0]  io_requestor_1_pmp_7_cfg_a,
  output        io_requestor_1_pmp_7_cfg_x,
  output        io_requestor_1_pmp_7_cfg_w,
  output        io_requestor_1_pmp_7_cfg_r,
  output [29:0] io_requestor_1_pmp_7_addr,
  output [31:0] io_requestor_1_pmp_7_mask,
  output [63:0] io_requestor_1_customCSRs_csrs_0_value,
  input         io_mem_req_ready,
  output        io_mem_req_valid,
  output [39:0] io_mem_req_bits_addr,
  output        io_mem_s1_kill,
  input         io_mem_s2_nack,
  input         io_mem_resp_valid,
  input  [63:0] io_mem_resp_bits_data,
  input         io_mem_s2_xcpt_ae_ld,
  input  [3:0]  io_dpath_ptbr_mode,
  input  [43:0] io_dpath_ptbr_ppn,
  input         io_dpath_sfence_valid,
  input         io_dpath_sfence_bits_rs1,
  input         io_dpath_status_debug,
  input  [1:0]  io_dpath_status_dprv,
  input  [1:0]  io_dpath_status_prv,
  input         io_dpath_status_mxr,
  input         io_dpath_status_sum,
  input         io_dpath_pmp_0_cfg_l,
  input  [1:0]  io_dpath_pmp_0_cfg_a,
  input         io_dpath_pmp_0_cfg_x,
  input         io_dpath_pmp_0_cfg_w,
  input         io_dpath_pmp_0_cfg_r,
  input  [29:0] io_dpath_pmp_0_addr,
  input  [31:0] io_dpath_pmp_0_mask,
  input         io_dpath_pmp_1_cfg_l,
  input  [1:0]  io_dpath_pmp_1_cfg_a,
  input         io_dpath_pmp_1_cfg_x,
  input         io_dpath_pmp_1_cfg_w,
  input         io_dpath_pmp_1_cfg_r,
  input  [29:0] io_dpath_pmp_1_addr,
  input  [31:0] io_dpath_pmp_1_mask,
  input         io_dpath_pmp_2_cfg_l,
  input  [1:0]  io_dpath_pmp_2_cfg_a,
  input         io_dpath_pmp_2_cfg_x,
  input         io_dpath_pmp_2_cfg_w,
  input         io_dpath_pmp_2_cfg_r,
  input  [29:0] io_dpath_pmp_2_addr,
  input  [31:0] io_dpath_pmp_2_mask,
  input         io_dpath_pmp_3_cfg_l,
  input  [1:0]  io_dpath_pmp_3_cfg_a,
  input         io_dpath_pmp_3_cfg_x,
  input         io_dpath_pmp_3_cfg_w,
  input         io_dpath_pmp_3_cfg_r,
  input  [29:0] io_dpath_pmp_3_addr,
  input  [31:0] io_dpath_pmp_3_mask,
  input         io_dpath_pmp_4_cfg_l,
  input  [1:0]  io_dpath_pmp_4_cfg_a,
  input         io_dpath_pmp_4_cfg_x,
  input         io_dpath_pmp_4_cfg_w,
  input         io_dpath_pmp_4_cfg_r,
  input  [29:0] io_dpath_pmp_4_addr,
  input  [31:0] io_dpath_pmp_4_mask,
  input         io_dpath_pmp_5_cfg_l,
  input  [1:0]  io_dpath_pmp_5_cfg_a,
  input         io_dpath_pmp_5_cfg_x,
  input         io_dpath_pmp_5_cfg_w,
  input         io_dpath_pmp_5_cfg_r,
  input  [29:0] io_dpath_pmp_5_addr,
  input  [31:0] io_dpath_pmp_5_mask,
  input         io_dpath_pmp_6_cfg_l,
  input  [1:0]  io_dpath_pmp_6_cfg_a,
  input         io_dpath_pmp_6_cfg_x,
  input         io_dpath_pmp_6_cfg_w,
  input         io_dpath_pmp_6_cfg_r,
  input  [29:0] io_dpath_pmp_6_addr,
  input  [31:0] io_dpath_pmp_6_mask,
  input         io_dpath_pmp_7_cfg_l,
  input  [1:0]  io_dpath_pmp_7_cfg_a,
  input         io_dpath_pmp_7_cfg_x,
  input         io_dpath_pmp_7_cfg_w,
  input         io_dpath_pmp_7_cfg_r,
  input  [29:0] io_dpath_pmp_7_addr,
  input  [31:0] io_dpath_pmp_7_mask,
  input  [63:0] io_dpath_customCSRs_csrs_0_value
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
  reg [63:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
`endif // RANDOMIZE_REG_INIT
  wire  arb_io_in_0_ready; // @[PTW.scala 109:19]
  wire  arb_io_in_0_valid; // @[PTW.scala 109:19]
  wire [26:0] arb_io_in_0_bits_bits_addr; // @[PTW.scala 109:19]
  wire  arb_io_in_1_ready; // @[PTW.scala 109:19]
  wire  arb_io_in_1_valid; // @[PTW.scala 109:19]
  wire  arb_io_in_1_bits_valid; // @[PTW.scala 109:19]
  wire [26:0] arb_io_in_1_bits_bits_addr; // @[PTW.scala 109:19]
  wire  arb_io_out_ready; // @[PTW.scala 109:19]
  wire  arb_io_out_valid; // @[PTW.scala 109:19]
  wire  arb_io_out_bits_valid; // @[PTW.scala 109:19]
  wire [26:0] arb_io_out_bits_bits_addr; // @[PTW.scala 109:19]
  wire  arb_io_chosen; // @[PTW.scala 109:19]
  wire [2:0] state_barrier_io_x; // @[package.scala 236:25]
  wire [2:0] state_barrier_io_y; // @[package.scala 236:25]
  wire [53:0] r_pte_barrier_io_x_ppn; // @[package.scala 236:25]
  wire  r_pte_barrier_io_x_d; // @[package.scala 236:25]
  wire  r_pte_barrier_io_x_a; // @[package.scala 236:25]
  wire  r_pte_barrier_io_x_g; // @[package.scala 236:25]
  wire  r_pte_barrier_io_x_u; // @[package.scala 236:25]
  wire  r_pte_barrier_io_x_x; // @[package.scala 236:25]
  wire  r_pte_barrier_io_x_w; // @[package.scala 236:25]
  wire  r_pte_barrier_io_x_r; // @[package.scala 236:25]
  wire  r_pte_barrier_io_x_v; // @[package.scala 236:25]
  wire [53:0] r_pte_barrier_io_y_ppn; // @[package.scala 236:25]
  wire  r_pte_barrier_io_y_d; // @[package.scala 236:25]
  wire  r_pte_barrier_io_y_a; // @[package.scala 236:25]
  wire  r_pte_barrier_io_y_g; // @[package.scala 236:25]
  wire  r_pte_barrier_io_y_u; // @[package.scala 236:25]
  wire  r_pte_barrier_io_y_x; // @[package.scala 236:25]
  wire  r_pte_barrier_io_y_w; // @[package.scala 236:25]
  wire  r_pte_barrier_io_y_r; // @[package.scala 236:25]
  wire  r_pte_barrier_io_y_v; // @[package.scala 236:25]
  reg [2:0] state; // @[PTW.scala 106:18]
  reg  l2_refill; // @[PTW.scala 193:26]
  reg  resp_valid_0; // @[PTW.scala 113:23]
  reg  resp_valid_1; // @[PTW.scala 113:23]
  wire  _clock_en_T = state != 3'h0; // @[PTW.scala 115:24]
  reg  invalidated; // @[PTW.scala 122:24]
  reg [1:0] count; // @[PTW.scala 123:18]
  reg  resp_ae; // @[PTW.scala 124:24]
  reg [26:0] r_req_addr; // @[PTW.scala 127:18]
  reg  r_req_dest; // @[PTW.scala 128:23]
  reg [53:0] r_pte_ppn; // @[PTW.scala 129:18]
  reg  r_pte_d; // @[PTW.scala 129:18]
  reg  r_pte_a; // @[PTW.scala 129:18]
  reg  r_pte_g; // @[PTW.scala 129:18]
  reg  r_pte_u; // @[PTW.scala 129:18]
  reg  r_pte_x; // @[PTW.scala 129:18]
  reg  r_pte_w; // @[PTW.scala 129:18]
  reg  r_pte_r; // @[PTW.scala 129:18]
  reg  r_pte_v; // @[PTW.scala 129:18]
  reg  mem_resp_valid; // @[PTW.scala 131:31]
  reg [63:0] mem_resp_data; // @[PTW.scala 132:30]
  wire  tmp_v = mem_resp_data[0]; // @[PTW.scala 143:33]
  wire  tmp_r = mem_resp_data[1]; // @[PTW.scala 143:33]
  wire  tmp_w = mem_resp_data[2]; // @[PTW.scala 143:33]
  wire  tmp_x = mem_resp_data[3]; // @[PTW.scala 143:33]
  wire  tmp_u = mem_resp_data[4]; // @[PTW.scala 143:33]
  wire  tmp_g = mem_resp_data[5]; // @[PTW.scala 143:33]
  wire  tmp_a = mem_resp_data[6]; // @[PTW.scala 143:33]
  wire  tmp_d = mem_resp_data[7]; // @[PTW.scala 143:33]
  wire [53:0] tmp_ppn = mem_resp_data[63:10]; // @[PTW.scala 143:33]
  wire  _T_1 = (tmp_r | tmp_w) | tmp_x; // @[PTW.scala 146:26]
  wire  _T_5 = (count <= 2'h0) & ((tmp_ppn[17:9]) != 9'h0); // @[PTW.scala 149:26]
  wire  _GEN_0 = _T_5 ? 1'h0 : tmp_v; // @[PTW.scala 149:102 PTW.scala 149:110]
  wire  _T_9 = (count <= 2'h1) & ((tmp_ppn[8:0]) != 9'h0); // @[PTW.scala 149:26]
  wire  _GEN_1 = _T_9 ? 1'h0 : _GEN_0; // @[PTW.scala 149:102 PTW.scala 149:110]
  wire  res_v = _T_1 ? _GEN_1 : tmp_v; // @[PTW.scala 146:36]
  wire  invalid_paddr = (tmp_ppn[53:20]) != 34'h0; // @[PTW.scala 151:32]
  wire  _traverse_T_5 = ((res_v & (~tmp_r)) & (~tmp_w)) & (~tmp_x); // @[PTW.scala 69:45]
  wire  _traverse_T_6 = ~invalid_paddr; // @[PTW.scala 153:33]
  wire  _traverse_T_8 = count < 2'h2; // @[PTW.scala 153:57]
  wire  traverse = (_traverse_T_5 & (~invalid_paddr)) & (count < 2'h2); // @[PTW.scala 153:48]
  wire [8:0] vpn_idxs_0 = r_req_addr[26:18]; // @[PTW.scala 155:60]
  wire [8:0] vpn_idxs_1 = r_req_addr[17:9]; // @[PTW.scala 155:90]
  wire [8:0] vpn_idxs_2 = r_req_addr[8:0]; // @[PTW.scala 155:90]
  wire [8:0] _pte_addr_vpn_idx_T_1 = count == 2'h1 ? vpn_idxs_1 : vpn_idxs_0; // @[package.scala 32:76]
  wire  _pte_addr_vpn_idx_T_2 = count == 2'h2; // @[package.scala 32:86]
  wire [8:0] _pte_addr_vpn_idx_T_3 = count == 2'h2 ? vpn_idxs_2 : _pte_addr_vpn_idx_T_1; // @[package.scala 32:76]
  wire [8:0] vpn_idx = count == 2'h3 ? vpn_idxs_2 : _pte_addr_vpn_idx_T_3; // @[package.scala 32:76]
  wire [62:0] _pte_addr_T = {r_pte_ppn,vpn_idx}; // @[Cat.scala 29:58]
  wire [65:0] pte_addr = {_pte_addr_T, 3'h0}; // @[PTW.scala 157:29]
  wire [35:0] fragmented_superpage_ppn_choices_right = r_pte_ppn[53:18]; // @[PTW.scala 160:69]
  wire [17:0] fragmented_superpage_ppn_choices_left = r_req_addr[17:0]; // @[PTW.scala 160:99]
  wire [53:0] choices_0 = {fragmented_superpage_ppn_choices_right,fragmented_superpage_ppn_choices_left}; // @[Cat.scala 29:58]
  wire [44:0] fragmented_superpage_ppn_choices_right_1 = r_pte_ppn[53:9]; // @[PTW.scala 160:69]
  wire [53:0] choices_1 = {fragmented_superpage_ppn_choices_right_1,vpn_idxs_2}; // @[Cat.scala 29:58]
  wire  fragmented_superpage_ppn_truncIdx = count[0]; // @[package.scala 31:49]
  wire [53:0] fragmented_superpage_ppn = fragmented_superpage_ppn_truncIdx ? choices_1 : choices_0; // @[package.scala 32:76]
  wire  _T_11 = arb_io_out_ready & arb_io_out_valid; // @[Decoupled.scala 40:37]
  reg [6:0] state_reg; // @[Replacement.scala 158:30]
  reg [7:0] valid; // @[PTW.scala 172:24]
  reg [31:0] tags_0; // @[PTW.scala 173:19]
  reg [31:0] tags_1; // @[PTW.scala 173:19]
  reg [31:0] tags_2; // @[PTW.scala 173:19]
  reg [31:0] tags_3; // @[PTW.scala 173:19]
  reg [31:0] tags_4; // @[PTW.scala 173:19]
  reg [31:0] tags_5; // @[PTW.scala 173:19]
  reg [31:0] tags_6; // @[PTW.scala 173:19]
  reg [31:0] tags_7; // @[PTW.scala 173:19]
  reg [19:0] data_0; // @[PTW.scala 174:19]
  reg [19:0] data_1; // @[PTW.scala 174:19]
  reg [19:0] data_2; // @[PTW.scala 174:19]
  reg [19:0] data_3; // @[PTW.scala 174:19]
  reg [19:0] data_4; // @[PTW.scala 174:19]
  reg [19:0] data_5; // @[PTW.scala 174:19]
  reg [19:0] data_6; // @[PTW.scala 174:19]
  reg [19:0] data_7; // @[PTW.scala 174:19]
  wire [65:0] _GEN_108 = {{34'd0}, tags_0}; // @[PTW.scala 176:27]
  wire  hits_left_left_left = _GEN_108 == pte_addr; // @[PTW.scala 176:27]
  wire [65:0] _GEN_109 = {{34'd0}, tags_1}; // @[PTW.scala 176:27]
  wire  hits_left_left_right = _GEN_109 == pte_addr; // @[PTW.scala 176:27]
  wire [65:0] _GEN_110 = {{34'd0}, tags_2}; // @[PTW.scala 176:27]
  wire  hits_left_right_left = _GEN_110 == pte_addr; // @[PTW.scala 176:27]
  wire [65:0] _GEN_111 = {{34'd0}, tags_3}; // @[PTW.scala 176:27]
  wire  hits_left_right_right = _GEN_111 == pte_addr; // @[PTW.scala 176:27]
  wire [65:0] _GEN_112 = {{34'd0}, tags_4}; // @[PTW.scala 176:27]
  wire  hits_right_left_left = _GEN_112 == pte_addr; // @[PTW.scala 176:27]
  wire [65:0] _GEN_113 = {{34'd0}, tags_5}; // @[PTW.scala 176:27]
  wire  hits_right_left_right = _GEN_113 == pte_addr; // @[PTW.scala 176:27]
  wire [65:0] _GEN_114 = {{34'd0}, tags_6}; // @[PTW.scala 176:27]
  wire  hits_right_right_left = _GEN_114 == pte_addr; // @[PTW.scala 176:27]
  wire [65:0] _GEN_115 = {{34'd0}, tags_7}; // @[PTW.scala 176:27]
  wire  hits_right_right_right = _GEN_115 == pte_addr; // @[PTW.scala 176:27]
  wire [7:0] _hits_T = {hits_right_right_right,hits_right_right_left,hits_right_left_right,hits_right_left_left,
    hits_left_right_right,hits_left_right_left,hits_left_left_right,hits_left_left_left}; // @[Cat.scala 29:58]
  wire [7:0] hits = _hits_T & valid; // @[PTW.scala 176:48]
  wire  hit = |hits; // @[PTW.scala 177:20]
  wire  _T_16 = ((mem_resp_valid & traverse) & (~hit)) & (~invalidated); // @[PTW.scala 178:46]
  wire  r_right = state_reg[6]; // @[Replacement.scala 233:38]
  wire [2:0] r_left_subtree_state = state_reg[5:3]; // @[package.scala 143:13]
  wire [2:0] r_right_subtree_state = state_reg[2:0]; // @[Replacement.scala 235:38]
  wire  r_right_1 = r_left_subtree_state[2]; // @[Replacement.scala 233:38]
  wire  r_left_subtree_state_1 = r_left_subtree_state[1]; // @[package.scala 143:13]
  wire  r_right_subtree_state_1 = r_left_subtree_state[0]; // @[Replacement.scala 235:38]
  wire  r_left = r_right_1 ? r_left_subtree_state_1 : r_right_subtree_state_1; // @[Replacement.scala 240:16]
  wire [1:0] _r_T_3 = {r_right_1,r_left}; // @[Cat.scala 29:58]
  wire  r_right_2 = r_right_subtree_state[2]; // @[Replacement.scala 233:38]
  wire  r_left_subtree_state_2 = r_right_subtree_state[1]; // @[package.scala 143:13]
  wire  r_right_subtree_state_2 = r_right_subtree_state[0]; // @[Replacement.scala 235:38]
  wire  r_left_1 = r_right_2 ? r_left_subtree_state_2 : r_right_subtree_state_2; // @[Replacement.scala 240:16]
  wire [1:0] _r_T_6 = {r_right_2,r_left_1}; // @[Cat.scala 29:58]
  wire [1:0] r_left_2 = r_right ? _r_T_3 : _r_T_6; // @[Replacement.scala 240:16]
  wire [2:0] _r_T_7 = {r_right,r_left_2}; // @[Cat.scala 29:58]
  wire [7:0] _r_T_8 = ~valid; // @[PTW.scala 179:57]
  wire [2:0] _r_T_17 = _r_T_8[6] ? 3'h6 : 3'h7; // @[Mux.scala 47:69]
  wire [2:0] _r_T_18 = _r_T_8[5] ? 3'h5 : _r_T_17; // @[Mux.scala 47:69]
  wire [2:0] _r_T_19 = _r_T_8[4] ? 3'h4 : _r_T_18; // @[Mux.scala 47:69]
  wire [2:0] _r_T_20 = _r_T_8[3] ? 3'h3 : _r_T_19; // @[Mux.scala 47:69]
  wire [2:0] _r_T_21 = _r_T_8[2] ? 3'h2 : _r_T_20; // @[Mux.scala 47:69]
  wire [2:0] _r_T_22 = _r_T_8[1] ? 3'h1 : _r_T_21; // @[Mux.scala 47:69]
  wire [2:0] _r_T_23 = _r_T_8[0] ? 3'h0 : _r_T_22; // @[Mux.scala 47:69]
  wire [2:0] r = &valid ? _r_T_7 : _r_T_23; // @[PTW.scala 179:18]
  wire [7:0] _valid_T = 8'h1 << r; // @[OneHot.scala 58:35]
  wire [7:0] _valid_T_1 = valid | _valid_T; // @[PTW.scala 180:22]
  wire [53:0] res_ppn = {{34'd0}, tmp_ppn[19:0]};
  wire  _T_17 = state == 3'h1; // @[PTW.scala 184:24]
  wire  _T_18 = hit & (state == 3'h1); // @[PTW.scala 184:15]
  wire [3:0] hi = hits[7:4]; // @[OneHot.scala 30:18]
  wire [3:0] lo = hits[3:0]; // @[OneHot.scala 31:18]
  wire  right = |hi; // @[OneHot.scala 32:14]
  wire [3:0] _T_19 = hi | lo; // @[OneHot.scala 32:28]
  wire [1:0] hi_1 = _T_19[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] lo_1 = _T_19[1:0]; // @[OneHot.scala 31:18]
  wire  right_1 = |hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _T_20 = hi_1 | lo_1; // @[OneHot.scala 32:28]
  wire  left = _T_20[1]; // @[CircuitMath.scala 30:8]
  wire [2:0] state_reg_touch_way_sized = {right,right_1,left}; // @[Cat.scala 29:58]
  wire  state_reg_right_right = ~(state_reg_touch_way_sized[2]); // @[Replacement.scala 186:33]
  wire  state_reg_right_right_1 = ~(state_reg_touch_way_sized[1]); // @[Replacement.scala 186:33]
  wire  _state_reg_T_3 = ~(state_reg_touch_way_sized[0]); // @[Replacement.scala 208:7]
  wire  state_reg_right_left = state_reg_right_right_1 ? r_left_subtree_state_1 : _state_reg_T_3; // @[Replacement.scala 193:16]
  wire  state_reg_left = state_reg_right_right_1 ? _state_reg_T_3 : r_right_subtree_state_1; // @[Replacement.scala 196:16]
  wire [2:0] _state_reg_T_7 = {state_reg_right_right_1,state_reg_right_left,state_reg_left}; // @[Cat.scala 29:58]
  wire [2:0] state_reg_right_left_1 = state_reg_right_right ? r_left_subtree_state : _state_reg_T_7; // @[Replacement.scala 193:16]
  wire  state_reg_right_left_2 = state_reg_right_right_1 ? r_left_subtree_state_2 : _state_reg_T_3; // @[Replacement.scala 193:16]
  wire  state_reg_left_1 = state_reg_right_right_1 ? _state_reg_T_3 : r_right_subtree_state_2; // @[Replacement.scala 196:16]
  wire [2:0] _state_reg_T_15 = {state_reg_right_right_1,state_reg_right_left_2,state_reg_left_1}; // @[Cat.scala 29:58]
  wire [2:0] state_reg_left_2 = state_reg_right_right ? _state_reg_T_15 : r_right_subtree_state; // @[Replacement.scala 196:16]
  wire [6:0] _state_reg_T_16 = {state_reg_right_right,state_reg_right_left_1,state_reg_left_2}; // @[Cat.scala 29:58]
  wire  _T_23 = io_dpath_sfence_valid & (~io_dpath_sfence_bits_rs1); // @[PTW.scala 185:33]
  wire  pte_cache_hit = hit & _traverse_T_8; // @[PTW.scala 190:10]
  wire [19:0] _T_41 = hits[0] ? data_0 : 20'h0; // @[Mux.scala 27:72]
  wire [19:0] _T_42 = hits[1] ? data_1 : 20'h0; // @[Mux.scala 27:72]
  wire [19:0] _T_43 = hits[2] ? data_2 : 20'h0; // @[Mux.scala 27:72]
  wire [19:0] _T_44 = hits[3] ? data_3 : 20'h0; // @[Mux.scala 27:72]
  wire [19:0] _T_45 = hits[4] ? data_4 : 20'h0; // @[Mux.scala 27:72]
  wire [19:0] _T_46 = hits[5] ? data_5 : 20'h0; // @[Mux.scala 27:72]
  wire [19:0] _T_47 = hits[6] ? data_6 : 20'h0; // @[Mux.scala 27:72]
  wire [19:0] _T_48 = hits[7] ? data_7 : 20'h0; // @[Mux.scala 27:72]
  wire [19:0] _T_49 = _T_41 | _T_42; // @[Mux.scala 27:72]
  wire [19:0] _T_50 = _T_49 | _T_43; // @[Mux.scala 27:72]
  wire [19:0] _T_51 = _T_50 | _T_44; // @[Mux.scala 27:72]
  wire [19:0] _T_52 = _T_51 | _T_45; // @[Mux.scala 27:72]
  wire [19:0] _T_53 = _T_52 | _T_46; // @[Mux.scala 27:72]
  wire [19:0] _T_54 = _T_53 | _T_47; // @[Mux.scala 27:72]
  wire [19:0] pte_cache_data = _T_54 | _T_48; // @[Mux.scala 27:72]
  wire [65:0] _pmaPgLevelHomogeneous_T_6 = pte_addr ^ 66'hc000000; // @[Parameters.scala 138:31]
  wire [66:0] _pmaPgLevelHomogeneous_T_7 = {1'b0,$signed(_pmaPgLevelHomogeneous_T_6)}; // @[Parameters.scala 138:49]
  wire [66:0] _pmaPgLevelHomogeneous_T_9 = $signed(_pmaPgLevelHomogeneous_T_7) & -67'sh4000000; // @[Parameters.scala 138:52]
  wire  _pmaPgLevelHomogeneous_T_10 = $signed(_pmaPgLevelHomogeneous_T_9) == 67'sh0; // @[Parameters.scala 138:67]
  wire [65:0] _pmaPgLevelHomogeneous_T_11 = pte_addr ^ 66'h60000000; // @[Parameters.scala 138:31]
  wire [66:0] _pmaPgLevelHomogeneous_T_12 = {1'b0,$signed(_pmaPgLevelHomogeneous_T_11)}; // @[Parameters.scala 138:49]
  wire [66:0] _pmaPgLevelHomogeneous_T_14 = $signed(_pmaPgLevelHomogeneous_T_12) & -67'sh20000000; // @[Parameters.scala 138:52]
  wire  _pmaPgLevelHomogeneous_T_15 = $signed(_pmaPgLevelHomogeneous_T_14) == 67'sh0; // @[Parameters.scala 138:67]
  wire [65:0] _pmaPgLevelHomogeneous_T_16 = pte_addr ^ 66'h80000000; // @[Parameters.scala 138:31]
  wire [66:0] _pmaPgLevelHomogeneous_T_17 = {1'b0,$signed(_pmaPgLevelHomogeneous_T_16)}; // @[Parameters.scala 138:49]
  wire [66:0] _pmaPgLevelHomogeneous_T_19 = $signed(_pmaPgLevelHomogeneous_T_17) & -67'sh10000000; // @[Parameters.scala 138:52]
  wire  _pmaPgLevelHomogeneous_T_20 = $signed(_pmaPgLevelHomogeneous_T_19) == 67'sh0; // @[Parameters.scala 138:67]
  wire  pmaPgLevelHomogeneous_1 = (_pmaPgLevelHomogeneous_T_10 | _pmaPgLevelHomogeneous_T_15) |
    _pmaPgLevelHomogeneous_T_20; // @[TLBPermissions.scala 98:65]
  wire [66:0] _pmaPgLevelHomogeneous_T_26 = {1'b0,$signed(pte_addr)}; // @[Parameters.scala 138:49]
  wire [66:0] _pmaPgLevelHomogeneous_T_53 = $signed(_pmaPgLevelHomogeneous_T_26) & -67'sh1000; // @[Parameters.scala 138:52]
  wire  _pmaPgLevelHomogeneous_T_54 = $signed(_pmaPgLevelHomogeneous_T_53) == 67'sh0; // @[Parameters.scala 138:67]
  wire [65:0] _pmaPgLevelHomogeneous_T_55 = pte_addr ^ 66'h3000; // @[Parameters.scala 138:31]
  wire [66:0] _pmaPgLevelHomogeneous_T_56 = {1'b0,$signed(_pmaPgLevelHomogeneous_T_55)}; // @[Parameters.scala 138:49]
  wire [66:0] _pmaPgLevelHomogeneous_T_58 = $signed(_pmaPgLevelHomogeneous_T_56) & -67'sh1000; // @[Parameters.scala 138:52]
  wire  _pmaPgLevelHomogeneous_T_59 = $signed(_pmaPgLevelHomogeneous_T_58) == 67'sh0; // @[Parameters.scala 138:67]
  wire [65:0] _pmaPgLevelHomogeneous_T_60 = pte_addr ^ 66'h10000; // @[Parameters.scala 138:31]
  wire [66:0] _pmaPgLevelHomogeneous_T_61 = {1'b0,$signed(_pmaPgLevelHomogeneous_T_60)}; // @[Parameters.scala 138:49]
  wire [66:0] _pmaPgLevelHomogeneous_T_63 = $signed(_pmaPgLevelHomogeneous_T_61) & -67'sh10000; // @[Parameters.scala 138:52]
  wire  _pmaPgLevelHomogeneous_T_64 = $signed(_pmaPgLevelHomogeneous_T_63) == 67'sh0; // @[Parameters.scala 138:67]
  wire [65:0] _pmaPgLevelHomogeneous_T_65 = pte_addr ^ 66'h2000000; // @[Parameters.scala 138:31]
  wire [66:0] _pmaPgLevelHomogeneous_T_66 = {1'b0,$signed(_pmaPgLevelHomogeneous_T_65)}; // @[Parameters.scala 138:49]
  wire [66:0] _pmaPgLevelHomogeneous_T_68 = $signed(_pmaPgLevelHomogeneous_T_66) & -67'sh10000; // @[Parameters.scala 138:52]
  wire  _pmaPgLevelHomogeneous_T_69 = $signed(_pmaPgLevelHomogeneous_T_68) == 67'sh0; // @[Parameters.scala 138:67]
  wire  pmaPgLevelHomogeneous_2 = (((((_pmaPgLevelHomogeneous_T_54 | _pmaPgLevelHomogeneous_T_59) |
    _pmaPgLevelHomogeneous_T_64) | _pmaPgLevelHomogeneous_T_69) | _pmaPgLevelHomogeneous_T_10) |
    _pmaPgLevelHomogeneous_T_15) | _pmaPgLevelHomogeneous_T_20; // @[TLBPermissions.scala 98:65]
  wire  _pmaHomogeneous_T_3 = count == 2'h2 ? pmaPgLevelHomogeneous_2 : (count == 2'h1) & pmaPgLevelHomogeneous_1; // @[package.scala 32:76]
  wire  pmaHomogeneous = count == 2'h3 ? pmaPgLevelHomogeneous_2 : _pmaHomogeneous_T_3; // @[package.scala 32:76]
  wire [65:0] _pmpHomogeneous_T_1 = {pte_addr[65:12], 12'h0}; // @[PTW.scala 274:92]
  wire  _pmpHomogeneous_maskHomogeneous_T_4 = count == 2'h1 ? io_dpath_pmp_0_mask[20] : io_dpath_pmp_0_mask[29]; // @[package.scala 32:76]
  wire  _pmpHomogeneous_maskHomogeneous_T_6 = count == 2'h2 ? io_dpath_pmp_0_mask[11] :
    _pmpHomogeneous_maskHomogeneous_T_4; // @[package.scala 32:76]
  wire  pmpHomogeneous_maskHomogeneous = count == 2'h3 ? io_dpath_pmp_0_mask[11] : _pmpHomogeneous_maskHomogeneous_T_6; // @[package.scala 32:76]
  wire [31:0] _pmpHomogeneous_T_3 = {io_dpath_pmp_0_addr, 2'h0}; // @[PMP.scala 62:36]
  wire [31:0] _pmpHomogeneous_T_4 = ~_pmpHomogeneous_T_3; // @[PMP.scala 62:29]
  wire [31:0] _pmpHomogeneous_T_5 = _pmpHomogeneous_T_4 | 32'h3; // @[PMP.scala 62:48]
  wire [31:0] _pmpHomogeneous_T_6 = ~_pmpHomogeneous_T_5; // @[PMP.scala 62:27]
  wire [65:0] _GEN_116 = {{34'd0}, _pmpHomogeneous_T_6}; // @[PMP.scala 100:53]
  wire [65:0] _pmpHomogeneous_T_7 = _pmpHomogeneous_T_1 ^ _GEN_116; // @[PMP.scala 100:53]
  wire  _pmpHomogeneous_T_9 = (_pmpHomogeneous_T_7[65:30]) != 36'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_16 = (_pmpHomogeneous_T_7[65:21]) != 45'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_23 = (_pmpHomogeneous_T_7[65:12]) != 54'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_25 = count == 2'h1 ? _pmpHomogeneous_T_16 : _pmpHomogeneous_T_9; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_27 = count == 2'h2 ? _pmpHomogeneous_T_23 : _pmpHomogeneous_T_25; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_29 = count == 2'h3 ? _pmpHomogeneous_T_23 : _pmpHomogeneous_T_27; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_30 = pmpHomogeneous_maskHomogeneous | _pmpHomogeneous_T_29; // @[PMP.scala 100:21]
  wire  pmpHomogeneous_beginsAfterUpper = ~(_pmpHomogeneous_T_1 < _GEN_116); // @[PMP.scala 109:28]
  wire [31:0] _pmpHomogeneous_pgMask_T_1 = count == 2'h1 ? 32'hffe00000 : 32'hc0000000; // @[package.scala 32:76]
  wire [31:0] _pmpHomogeneous_pgMask_T_3 = count == 2'h2 ? 32'hfffff000 : _pmpHomogeneous_pgMask_T_1; // @[package.scala 32:76]
  wire [31:0] pmpHomogeneous_pgMask = count == 2'h3 ? 32'hfffff000 : _pmpHomogeneous_pgMask_T_3; // @[package.scala 32:76]
  wire [65:0] _GEN_120 = {{34'd0}, pmpHomogeneous_pgMask}; // @[PMP.scala 112:30]
  wire [65:0] _pmpHomogeneous_endsBeforeLower_T = _pmpHomogeneous_T_1 & _GEN_120; // @[PMP.scala 112:30]
  wire [31:0] _pmpHomogeneous_endsBeforeUpper_T_5 = _pmpHomogeneous_T_6 & pmpHomogeneous_pgMask; // @[PMP.scala 113:53]
  wire [65:0] _GEN_122 = {{34'd0}, _pmpHomogeneous_endsBeforeUpper_T_5}; // @[PMP.scala 113:40]
  wire  pmpHomogeneous_endsBeforeUpper = _pmpHomogeneous_endsBeforeLower_T < _GEN_122; // @[PMP.scala 113:40]
  wire  _pmpHomogeneous_T_35 = pmpHomogeneous_beginsAfterUpper | pmpHomogeneous_endsBeforeUpper; // @[PMP.scala 115:41]
  wire  _pmpHomogeneous_T_37 = io_dpath_pmp_0_cfg_a[1] ? _pmpHomogeneous_T_30 : (~(io_dpath_pmp_0_cfg_a[0])) |
    _pmpHomogeneous_T_35; // @[PMP.scala 120:8]
  wire  _pmpHomogeneous_maskHomogeneous_T_12 = count == 2'h1 ? io_dpath_pmp_1_mask[20] : io_dpath_pmp_1_mask[29]; // @[package.scala 32:76]
  wire  _pmpHomogeneous_maskHomogeneous_T_14 = count == 2'h2 ? io_dpath_pmp_1_mask[11] :
    _pmpHomogeneous_maskHomogeneous_T_12; // @[package.scala 32:76]
  wire  pmpHomogeneous_maskHomogeneous_1 = count == 2'h3 ? io_dpath_pmp_1_mask[11] :
    _pmpHomogeneous_maskHomogeneous_T_14; // @[package.scala 32:76]
  wire [31:0] _pmpHomogeneous_T_40 = {io_dpath_pmp_1_addr, 2'h0}; // @[PMP.scala 62:36]
  wire [31:0] _pmpHomogeneous_T_41 = ~_pmpHomogeneous_T_40; // @[PMP.scala 62:29]
  wire [31:0] _pmpHomogeneous_T_42 = _pmpHomogeneous_T_41 | 32'h3; // @[PMP.scala 62:48]
  wire [31:0] _pmpHomogeneous_T_43 = ~_pmpHomogeneous_T_42; // @[PMP.scala 62:27]
  wire [65:0] _GEN_123 = {{34'd0}, _pmpHomogeneous_T_43}; // @[PMP.scala 100:53]
  wire [65:0] _pmpHomogeneous_T_44 = _pmpHomogeneous_T_1 ^ _GEN_123; // @[PMP.scala 100:53]
  wire  _pmpHomogeneous_T_46 = (_pmpHomogeneous_T_44[65:30]) != 36'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_53 = (_pmpHomogeneous_T_44[65:21]) != 45'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_60 = (_pmpHomogeneous_T_44[65:12]) != 54'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_62 = count == 2'h1 ? _pmpHomogeneous_T_53 : _pmpHomogeneous_T_46; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_64 = count == 2'h2 ? _pmpHomogeneous_T_60 : _pmpHomogeneous_T_62; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_66 = count == 2'h3 ? _pmpHomogeneous_T_60 : _pmpHomogeneous_T_64; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_67 = pmpHomogeneous_maskHomogeneous_1 | _pmpHomogeneous_T_66; // @[PMP.scala 100:21]
  wire  pmpHomogeneous_beginsAfterUpper_1 = ~(_pmpHomogeneous_T_1 < _GEN_123); // @[PMP.scala 109:28]
  wire [31:0] _pmpHomogeneous_endsBeforeUpper_T_11 = _pmpHomogeneous_T_43 & pmpHomogeneous_pgMask; // @[PMP.scala 113:53]
  wire [65:0] _GEN_131 = {{34'd0}, _pmpHomogeneous_endsBeforeUpper_T_11}; // @[PMP.scala 113:40]
  wire  pmpHomogeneous_endsBeforeUpper_1 = _pmpHomogeneous_endsBeforeLower_T < _GEN_131; // @[PMP.scala 113:40]
  wire  _pmpHomogeneous_T_72 = (pmpHomogeneous_endsBeforeUpper | pmpHomogeneous_beginsAfterUpper_1) | (
    pmpHomogeneous_beginsAfterUpper & pmpHomogeneous_endsBeforeUpper_1); // @[PMP.scala 115:41]
  wire  _pmpHomogeneous_T_74 = io_dpath_pmp_1_cfg_a[1] ? _pmpHomogeneous_T_67 : (~(io_dpath_pmp_1_cfg_a[0])) |
    _pmpHomogeneous_T_72; // @[PMP.scala 120:8]
  wire  _pmpHomogeneous_maskHomogeneous_T_20 = count == 2'h1 ? io_dpath_pmp_2_mask[20] : io_dpath_pmp_2_mask[29]; // @[package.scala 32:76]
  wire  _pmpHomogeneous_maskHomogeneous_T_22 = count == 2'h2 ? io_dpath_pmp_2_mask[11] :
    _pmpHomogeneous_maskHomogeneous_T_20; // @[package.scala 32:76]
  wire  pmpHomogeneous_maskHomogeneous_2 = count == 2'h3 ? io_dpath_pmp_2_mask[11] :
    _pmpHomogeneous_maskHomogeneous_T_22; // @[package.scala 32:76]
  wire [31:0] _pmpHomogeneous_T_77 = {io_dpath_pmp_2_addr, 2'h0}; // @[PMP.scala 62:36]
  wire [31:0] _pmpHomogeneous_T_78 = ~_pmpHomogeneous_T_77; // @[PMP.scala 62:29]
  wire [31:0] _pmpHomogeneous_T_79 = _pmpHomogeneous_T_78 | 32'h3; // @[PMP.scala 62:48]
  wire [31:0] _pmpHomogeneous_T_80 = ~_pmpHomogeneous_T_79; // @[PMP.scala 62:27]
  wire [65:0] _GEN_132 = {{34'd0}, _pmpHomogeneous_T_80}; // @[PMP.scala 100:53]
  wire [65:0] _pmpHomogeneous_T_81 = _pmpHomogeneous_T_1 ^ _GEN_132; // @[PMP.scala 100:53]
  wire  _pmpHomogeneous_T_83 = (_pmpHomogeneous_T_81[65:30]) != 36'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_90 = (_pmpHomogeneous_T_81[65:21]) != 45'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_97 = (_pmpHomogeneous_T_81[65:12]) != 54'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_99 = count == 2'h1 ? _pmpHomogeneous_T_90 : _pmpHomogeneous_T_83; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_101 = count == 2'h2 ? _pmpHomogeneous_T_97 : _pmpHomogeneous_T_99; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_103 = count == 2'h3 ? _pmpHomogeneous_T_97 : _pmpHomogeneous_T_101; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_104 = pmpHomogeneous_maskHomogeneous_2 | _pmpHomogeneous_T_103; // @[PMP.scala 100:21]
  wire  pmpHomogeneous_beginsAfterUpper_2 = ~(_pmpHomogeneous_T_1 < _GEN_132); // @[PMP.scala 109:28]
  wire [31:0] _pmpHomogeneous_endsBeforeUpper_T_17 = _pmpHomogeneous_T_80 & pmpHomogeneous_pgMask; // @[PMP.scala 113:53]
  wire [65:0] _GEN_140 = {{34'd0}, _pmpHomogeneous_endsBeforeUpper_T_17}; // @[PMP.scala 113:40]
  wire  pmpHomogeneous_endsBeforeUpper_2 = _pmpHomogeneous_endsBeforeLower_T < _GEN_140; // @[PMP.scala 113:40]
  wire  _pmpHomogeneous_T_109 = (pmpHomogeneous_endsBeforeUpper_1 | pmpHomogeneous_beginsAfterUpper_2) | (
    pmpHomogeneous_beginsAfterUpper_1 & pmpHomogeneous_endsBeforeUpper_2); // @[PMP.scala 115:41]
  wire  _pmpHomogeneous_T_111 = io_dpath_pmp_2_cfg_a[1] ? _pmpHomogeneous_T_104 : (~(io_dpath_pmp_2_cfg_a[0])) |
    _pmpHomogeneous_T_109; // @[PMP.scala 120:8]
  wire  _pmpHomogeneous_maskHomogeneous_T_28 = count == 2'h1 ? io_dpath_pmp_3_mask[20] : io_dpath_pmp_3_mask[29]; // @[package.scala 32:76]
  wire  _pmpHomogeneous_maskHomogeneous_T_30 = count == 2'h2 ? io_dpath_pmp_3_mask[11] :
    _pmpHomogeneous_maskHomogeneous_T_28; // @[package.scala 32:76]
  wire  pmpHomogeneous_maskHomogeneous_3 = count == 2'h3 ? io_dpath_pmp_3_mask[11] :
    _pmpHomogeneous_maskHomogeneous_T_30; // @[package.scala 32:76]
  wire [31:0] _pmpHomogeneous_T_114 = {io_dpath_pmp_3_addr, 2'h0}; // @[PMP.scala 62:36]
  wire [31:0] _pmpHomogeneous_T_115 = ~_pmpHomogeneous_T_114; // @[PMP.scala 62:29]
  wire [31:0] _pmpHomogeneous_T_116 = _pmpHomogeneous_T_115 | 32'h3; // @[PMP.scala 62:48]
  wire [31:0] _pmpHomogeneous_T_117 = ~_pmpHomogeneous_T_116; // @[PMP.scala 62:27]
  wire [65:0] _GEN_141 = {{34'd0}, _pmpHomogeneous_T_117}; // @[PMP.scala 100:53]
  wire [65:0] _pmpHomogeneous_T_118 = _pmpHomogeneous_T_1 ^ _GEN_141; // @[PMP.scala 100:53]
  wire  _pmpHomogeneous_T_120 = (_pmpHomogeneous_T_118[65:30]) != 36'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_127 = (_pmpHomogeneous_T_118[65:21]) != 45'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_134 = (_pmpHomogeneous_T_118[65:12]) != 54'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_136 = count == 2'h1 ? _pmpHomogeneous_T_127 : _pmpHomogeneous_T_120; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_138 = count == 2'h2 ? _pmpHomogeneous_T_134 : _pmpHomogeneous_T_136; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_140 = count == 2'h3 ? _pmpHomogeneous_T_134 : _pmpHomogeneous_T_138; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_141 = pmpHomogeneous_maskHomogeneous_3 | _pmpHomogeneous_T_140; // @[PMP.scala 100:21]
  wire  pmpHomogeneous_beginsAfterUpper_3 = ~(_pmpHomogeneous_T_1 < _GEN_141); // @[PMP.scala 109:28]
  wire [31:0] _pmpHomogeneous_endsBeforeUpper_T_23 = _pmpHomogeneous_T_117 & pmpHomogeneous_pgMask; // @[PMP.scala 113:53]
  wire [65:0] _GEN_149 = {{34'd0}, _pmpHomogeneous_endsBeforeUpper_T_23}; // @[PMP.scala 113:40]
  wire  pmpHomogeneous_endsBeforeUpper_3 = _pmpHomogeneous_endsBeforeLower_T < _GEN_149; // @[PMP.scala 113:40]
  wire  _pmpHomogeneous_T_146 = (pmpHomogeneous_endsBeforeUpper_2 | pmpHomogeneous_beginsAfterUpper_3) | (
    pmpHomogeneous_beginsAfterUpper_2 & pmpHomogeneous_endsBeforeUpper_3); // @[PMP.scala 115:41]
  wire  _pmpHomogeneous_T_148 = io_dpath_pmp_3_cfg_a[1] ? _pmpHomogeneous_T_141 : (~(io_dpath_pmp_3_cfg_a[0])) |
    _pmpHomogeneous_T_146; // @[PMP.scala 120:8]
  wire  _pmpHomogeneous_maskHomogeneous_T_36 = count == 2'h1 ? io_dpath_pmp_4_mask[20] : io_dpath_pmp_4_mask[29]; // @[package.scala 32:76]
  wire  _pmpHomogeneous_maskHomogeneous_T_38 = count == 2'h2 ? io_dpath_pmp_4_mask[11] :
    _pmpHomogeneous_maskHomogeneous_T_36; // @[package.scala 32:76]
  wire  pmpHomogeneous_maskHomogeneous_4 = count == 2'h3 ? io_dpath_pmp_4_mask[11] :
    _pmpHomogeneous_maskHomogeneous_T_38; // @[package.scala 32:76]
  wire [31:0] _pmpHomogeneous_T_151 = {io_dpath_pmp_4_addr, 2'h0}; // @[PMP.scala 62:36]
  wire [31:0] _pmpHomogeneous_T_152 = ~_pmpHomogeneous_T_151; // @[PMP.scala 62:29]
  wire [31:0] _pmpHomogeneous_T_153 = _pmpHomogeneous_T_152 | 32'h3; // @[PMP.scala 62:48]
  wire [31:0] _pmpHomogeneous_T_154 = ~_pmpHomogeneous_T_153; // @[PMP.scala 62:27]
  wire [65:0] _GEN_150 = {{34'd0}, _pmpHomogeneous_T_154}; // @[PMP.scala 100:53]
  wire [65:0] _pmpHomogeneous_T_155 = _pmpHomogeneous_T_1 ^ _GEN_150; // @[PMP.scala 100:53]
  wire  _pmpHomogeneous_T_157 = (_pmpHomogeneous_T_155[65:30]) != 36'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_164 = (_pmpHomogeneous_T_155[65:21]) != 45'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_171 = (_pmpHomogeneous_T_155[65:12]) != 54'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_173 = count == 2'h1 ? _pmpHomogeneous_T_164 : _pmpHomogeneous_T_157; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_175 = count == 2'h2 ? _pmpHomogeneous_T_171 : _pmpHomogeneous_T_173; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_177 = count == 2'h3 ? _pmpHomogeneous_T_171 : _pmpHomogeneous_T_175; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_178 = pmpHomogeneous_maskHomogeneous_4 | _pmpHomogeneous_T_177; // @[PMP.scala 100:21]
  wire  pmpHomogeneous_beginsAfterUpper_4 = ~(_pmpHomogeneous_T_1 < _GEN_150); // @[PMP.scala 109:28]
  wire [31:0] _pmpHomogeneous_endsBeforeUpper_T_29 = _pmpHomogeneous_T_154 & pmpHomogeneous_pgMask; // @[PMP.scala 113:53]
  wire [65:0] _GEN_158 = {{34'd0}, _pmpHomogeneous_endsBeforeUpper_T_29}; // @[PMP.scala 113:40]
  wire  pmpHomogeneous_endsBeforeUpper_4 = _pmpHomogeneous_endsBeforeLower_T < _GEN_158; // @[PMP.scala 113:40]
  wire  _pmpHomogeneous_T_183 = (pmpHomogeneous_endsBeforeUpper_3 | pmpHomogeneous_beginsAfterUpper_4) | (
    pmpHomogeneous_beginsAfterUpper_3 & pmpHomogeneous_endsBeforeUpper_4); // @[PMP.scala 115:41]
  wire  _pmpHomogeneous_T_185 = io_dpath_pmp_4_cfg_a[1] ? _pmpHomogeneous_T_178 : (~(io_dpath_pmp_4_cfg_a[0])) |
    _pmpHomogeneous_T_183; // @[PMP.scala 120:8]
  wire  _pmpHomogeneous_maskHomogeneous_T_44 = count == 2'h1 ? io_dpath_pmp_5_mask[20] : io_dpath_pmp_5_mask[29]; // @[package.scala 32:76]
  wire  _pmpHomogeneous_maskHomogeneous_T_46 = count == 2'h2 ? io_dpath_pmp_5_mask[11] :
    _pmpHomogeneous_maskHomogeneous_T_44; // @[package.scala 32:76]
  wire  pmpHomogeneous_maskHomogeneous_5 = count == 2'h3 ? io_dpath_pmp_5_mask[11] :
    _pmpHomogeneous_maskHomogeneous_T_46; // @[package.scala 32:76]
  wire [31:0] _pmpHomogeneous_T_188 = {io_dpath_pmp_5_addr, 2'h0}; // @[PMP.scala 62:36]
  wire [31:0] _pmpHomogeneous_T_189 = ~_pmpHomogeneous_T_188; // @[PMP.scala 62:29]
  wire [31:0] _pmpHomogeneous_T_190 = _pmpHomogeneous_T_189 | 32'h3; // @[PMP.scala 62:48]
  wire [31:0] _pmpHomogeneous_T_191 = ~_pmpHomogeneous_T_190; // @[PMP.scala 62:27]
  wire [65:0] _GEN_159 = {{34'd0}, _pmpHomogeneous_T_191}; // @[PMP.scala 100:53]
  wire [65:0] _pmpHomogeneous_T_192 = _pmpHomogeneous_T_1 ^ _GEN_159; // @[PMP.scala 100:53]
  wire  _pmpHomogeneous_T_194 = (_pmpHomogeneous_T_192[65:30]) != 36'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_201 = (_pmpHomogeneous_T_192[65:21]) != 45'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_208 = (_pmpHomogeneous_T_192[65:12]) != 54'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_210 = count == 2'h1 ? _pmpHomogeneous_T_201 : _pmpHomogeneous_T_194; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_212 = count == 2'h2 ? _pmpHomogeneous_T_208 : _pmpHomogeneous_T_210; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_214 = count == 2'h3 ? _pmpHomogeneous_T_208 : _pmpHomogeneous_T_212; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_215 = pmpHomogeneous_maskHomogeneous_5 | _pmpHomogeneous_T_214; // @[PMP.scala 100:21]
  wire  pmpHomogeneous_beginsAfterUpper_5 = ~(_pmpHomogeneous_T_1 < _GEN_159); // @[PMP.scala 109:28]
  wire [31:0] _pmpHomogeneous_endsBeforeUpper_T_35 = _pmpHomogeneous_T_191 & pmpHomogeneous_pgMask; // @[PMP.scala 113:53]
  wire [65:0] _GEN_167 = {{34'd0}, _pmpHomogeneous_endsBeforeUpper_T_35}; // @[PMP.scala 113:40]
  wire  pmpHomogeneous_endsBeforeUpper_5 = _pmpHomogeneous_endsBeforeLower_T < _GEN_167; // @[PMP.scala 113:40]
  wire  _pmpHomogeneous_T_220 = (pmpHomogeneous_endsBeforeUpper_4 | pmpHomogeneous_beginsAfterUpper_5) | (
    pmpHomogeneous_beginsAfterUpper_4 & pmpHomogeneous_endsBeforeUpper_5); // @[PMP.scala 115:41]
  wire  _pmpHomogeneous_T_222 = io_dpath_pmp_5_cfg_a[1] ? _pmpHomogeneous_T_215 : (~(io_dpath_pmp_5_cfg_a[0])) |
    _pmpHomogeneous_T_220; // @[PMP.scala 120:8]
  wire  _pmpHomogeneous_maskHomogeneous_T_52 = count == 2'h1 ? io_dpath_pmp_6_mask[20] : io_dpath_pmp_6_mask[29]; // @[package.scala 32:76]
  wire  _pmpHomogeneous_maskHomogeneous_T_54 = count == 2'h2 ? io_dpath_pmp_6_mask[11] :
    _pmpHomogeneous_maskHomogeneous_T_52; // @[package.scala 32:76]
  wire  pmpHomogeneous_maskHomogeneous_6 = count == 2'h3 ? io_dpath_pmp_6_mask[11] :
    _pmpHomogeneous_maskHomogeneous_T_54; // @[package.scala 32:76]
  wire [31:0] _pmpHomogeneous_T_225 = {io_dpath_pmp_6_addr, 2'h0}; // @[PMP.scala 62:36]
  wire [31:0] _pmpHomogeneous_T_226 = ~_pmpHomogeneous_T_225; // @[PMP.scala 62:29]
  wire [31:0] _pmpHomogeneous_T_227 = _pmpHomogeneous_T_226 | 32'h3; // @[PMP.scala 62:48]
  wire [31:0] _pmpHomogeneous_T_228 = ~_pmpHomogeneous_T_227; // @[PMP.scala 62:27]
  wire [65:0] _GEN_168 = {{34'd0}, _pmpHomogeneous_T_228}; // @[PMP.scala 100:53]
  wire [65:0] _pmpHomogeneous_T_229 = _pmpHomogeneous_T_1 ^ _GEN_168; // @[PMP.scala 100:53]
  wire  _pmpHomogeneous_T_231 = (_pmpHomogeneous_T_229[65:30]) != 36'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_238 = (_pmpHomogeneous_T_229[65:21]) != 45'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_245 = (_pmpHomogeneous_T_229[65:12]) != 54'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_247 = count == 2'h1 ? _pmpHomogeneous_T_238 : _pmpHomogeneous_T_231; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_249 = count == 2'h2 ? _pmpHomogeneous_T_245 : _pmpHomogeneous_T_247; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_251 = count == 2'h3 ? _pmpHomogeneous_T_245 : _pmpHomogeneous_T_249; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_252 = pmpHomogeneous_maskHomogeneous_6 | _pmpHomogeneous_T_251; // @[PMP.scala 100:21]
  wire  pmpHomogeneous_beginsAfterUpper_6 = ~(_pmpHomogeneous_T_1 < _GEN_168); // @[PMP.scala 109:28]
  wire [31:0] _pmpHomogeneous_endsBeforeUpper_T_41 = _pmpHomogeneous_T_228 & pmpHomogeneous_pgMask; // @[PMP.scala 113:53]
  wire [65:0] _GEN_176 = {{34'd0}, _pmpHomogeneous_endsBeforeUpper_T_41}; // @[PMP.scala 113:40]
  wire  pmpHomogeneous_endsBeforeUpper_6 = _pmpHomogeneous_endsBeforeLower_T < _GEN_176; // @[PMP.scala 113:40]
  wire  _pmpHomogeneous_T_257 = (pmpHomogeneous_endsBeforeUpper_5 | pmpHomogeneous_beginsAfterUpper_6) | (
    pmpHomogeneous_beginsAfterUpper_5 & pmpHomogeneous_endsBeforeUpper_6); // @[PMP.scala 115:41]
  wire  _pmpHomogeneous_T_259 = io_dpath_pmp_6_cfg_a[1] ? _pmpHomogeneous_T_252 : (~(io_dpath_pmp_6_cfg_a[0])) |
    _pmpHomogeneous_T_257; // @[PMP.scala 120:8]
  wire  _pmpHomogeneous_maskHomogeneous_T_60 = count == 2'h1 ? io_dpath_pmp_7_mask[20] : io_dpath_pmp_7_mask[29]; // @[package.scala 32:76]
  wire  _pmpHomogeneous_maskHomogeneous_T_62 = count == 2'h2 ? io_dpath_pmp_7_mask[11] :
    _pmpHomogeneous_maskHomogeneous_T_60; // @[package.scala 32:76]
  wire  pmpHomogeneous_maskHomogeneous_7 = count == 2'h3 ? io_dpath_pmp_7_mask[11] :
    _pmpHomogeneous_maskHomogeneous_T_62; // @[package.scala 32:76]
  wire [31:0] _pmpHomogeneous_T_262 = {io_dpath_pmp_7_addr, 2'h0}; // @[PMP.scala 62:36]
  wire [31:0] _pmpHomogeneous_T_263 = ~_pmpHomogeneous_T_262; // @[PMP.scala 62:29]
  wire [31:0] _pmpHomogeneous_T_264 = _pmpHomogeneous_T_263 | 32'h3; // @[PMP.scala 62:48]
  wire [31:0] _pmpHomogeneous_T_265 = ~_pmpHomogeneous_T_264; // @[PMP.scala 62:27]
  wire [65:0] _GEN_177 = {{34'd0}, _pmpHomogeneous_T_265}; // @[PMP.scala 100:53]
  wire [65:0] _pmpHomogeneous_T_266 = _pmpHomogeneous_T_1 ^ _GEN_177; // @[PMP.scala 100:53]
  wire  _pmpHomogeneous_T_268 = (_pmpHomogeneous_T_266[65:30]) != 36'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_275 = (_pmpHomogeneous_T_266[65:21]) != 45'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_282 = (_pmpHomogeneous_T_266[65:12]) != 54'h0; // @[PMP.scala 100:78]
  wire  _pmpHomogeneous_T_284 = count == 2'h1 ? _pmpHomogeneous_T_275 : _pmpHomogeneous_T_268; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_286 = count == 2'h2 ? _pmpHomogeneous_T_282 : _pmpHomogeneous_T_284; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_288 = count == 2'h3 ? _pmpHomogeneous_T_282 : _pmpHomogeneous_T_286; // @[package.scala 32:76]
  wire  _pmpHomogeneous_T_289 = pmpHomogeneous_maskHomogeneous_7 | _pmpHomogeneous_T_288; // @[PMP.scala 100:21]
  wire  pmpHomogeneous_beginsAfterUpper_7 = ~(_pmpHomogeneous_T_1 < _GEN_177); // @[PMP.scala 109:28]
  wire [31:0] _pmpHomogeneous_endsBeforeUpper_T_47 = _pmpHomogeneous_T_265 & pmpHomogeneous_pgMask; // @[PMP.scala 113:53]
  wire [65:0] _GEN_185 = {{34'd0}, _pmpHomogeneous_endsBeforeUpper_T_47}; // @[PMP.scala 113:40]
  wire  pmpHomogeneous_endsBeforeUpper_7 = _pmpHomogeneous_endsBeforeLower_T < _GEN_185; // @[PMP.scala 113:40]
  wire  _pmpHomogeneous_T_294 = (pmpHomogeneous_endsBeforeUpper_6 | pmpHomogeneous_beginsAfterUpper_7) | (
    pmpHomogeneous_beginsAfterUpper_6 & pmpHomogeneous_endsBeforeUpper_7); // @[PMP.scala 115:41]
  wire  _pmpHomogeneous_T_296 = io_dpath_pmp_7_cfg_a[1] ? _pmpHomogeneous_T_289 : (~(io_dpath_pmp_7_cfg_a[0])) |
    _pmpHomogeneous_T_294; // @[PMP.scala 120:8]
  wire  pmpHomogeneous = ((((((_pmpHomogeneous_T_37 & _pmpHomogeneous_T_74) & _pmpHomogeneous_T_111) &
    _pmpHomogeneous_T_148) & _pmpHomogeneous_T_185) & _pmpHomogeneous_T_222) & _pmpHomogeneous_T_259) &
    _pmpHomogeneous_T_296; // @[PMP.scala 140:10]
  wire  homogeneous = pmaHomogeneous & pmpHomogeneous; // @[PTW.scala 275:36]
  wire  _T_56 = 3'h0 == state; // @[Conditional.scala 37:30]
  wire [2:0] _next_state_T = arb_io_out_bits_valid ? 3'h1 : 3'h0; // @[PTW.scala 297:26]
  wire [2:0] _GEN_40 = _T_11 ? _next_state_T : state; // @[PTW.scala 296:32 PTW.scala 297:20]
  wire  _T_58 = 3'h1 == state; // @[Conditional.scala 37:30]
  wire [1:0] _count_T_3 = count + 2'h1; // @[PTW.scala 303:24]
  wire [2:0] _next_state_T_1 = io_mem_req_ready ? 3'h2 : 3'h1; // @[PTW.scala 305:26]
  wire [1:0] _GEN_41 = pte_cache_hit ? _count_T_3 : count; // @[PTW.scala 302:28 PTW.scala 303:15 PTW.scala 123:18]
  wire [2:0] _GEN_42 = pte_cache_hit ? state : _next_state_T_1; // @[PTW.scala 302:28 PTW.scala 305:20]
  wire  _T_59 = 3'h2 == state; // @[Conditional.scala 37:30]
  wire  _T_60 = 3'h4 == state; // @[Conditional.scala 37:30]
  wire  _GEN_43 = ~r_req_dest; // @[PTW.scala 317:32 PTW.scala 317:32 PTW.scala 113:23]
  wire [2:0] _GEN_46 = io_mem_s2_xcpt_ae_ld ? 3'h0 : 3'h5; // @[PTW.scala 314:35 PTW.scala 316:20 PTW.scala 313:18]
  wire  _GEN_47 = io_mem_s2_xcpt_ae_ld & _GEN_43; // @[PTW.scala 314:35 PTW.scala 113:23]
  wire  _GEN_48 = io_mem_s2_xcpt_ae_ld & r_req_dest; // @[PTW.scala 314:35 PTW.scala 113:23]
  wire  _T_63 = 3'h7 == state; // @[Conditional.scala 37:30]
  wire  _T_66 = ~homogeneous; // @[PTW.scala 324:13]
  wire [1:0] _GEN_51 = _T_66 ? 2'h2 : count; // @[PTW.scala 324:27 PTW.scala 325:15 PTW.scala 123:18]
  wire [2:0] _GEN_53 = _T_63 ? 3'h0 : state; // @[Conditional.scala 39:67 PTW.scala 321:18]
  wire  _GEN_54 = _T_63 & _GEN_43; // @[Conditional.scala 39:67 PTW.scala 113:23]
  wire  _GEN_55 = _T_63 & r_req_dest; // @[Conditional.scala 39:67 PTW.scala 113:23]
  wire [1:0] _GEN_57 = _T_63 ? _GEN_51 : count; // @[Conditional.scala 39:67 PTW.scala 123:18]
  wire [2:0] _GEN_59 = _T_60 ? _GEN_46 : _GEN_53; // @[Conditional.scala 39:67]
  wire  _GEN_60 = _T_60 & io_mem_s2_xcpt_ae_ld; // @[Conditional.scala 39:67]
  wire  _GEN_61 = _T_60 ? _GEN_47 : _GEN_54; // @[Conditional.scala 39:67]
  wire  _GEN_62 = _T_60 ? _GEN_48 : _GEN_55; // @[Conditional.scala 39:67]
  wire [1:0] _GEN_63 = _T_60 ? count : _GEN_57; // @[Conditional.scala 39:67 PTW.scala 123:18]
  wire [2:0] _GEN_65 = _T_59 ? 3'h4 : _GEN_59; // @[Conditional.scala 39:67 PTW.scala 310:18]
  wire  _GEN_66 = _T_59 ? 1'h0 : _GEN_60; // @[Conditional.scala 39:67 PTW.scala 124:24]
  wire  _GEN_67 = _T_59 ? 1'h0 : _GEN_61; // @[Conditional.scala 39:67 PTW.scala 113:23]
  wire  _GEN_68 = _T_59 ? 1'h0 : _GEN_62; // @[Conditional.scala 39:67 PTW.scala 113:23]
  wire [1:0] _GEN_69 = _T_59 ? count : _GEN_63; // @[Conditional.scala 39:67 PTW.scala 123:18]
  wire [1:0] _GEN_71 = _T_58 ? _GEN_41 : _GEN_69; // @[Conditional.scala 39:67]
  wire [2:0] _GEN_72 = _T_58 ? _GEN_42 : _GEN_65; // @[Conditional.scala 39:67]
  wire  _GEN_73 = _T_58 ? 1'h0 : _GEN_66; // @[Conditional.scala 39:67 PTW.scala 124:24]
  wire  _GEN_74 = _T_58 ? 1'h0 : _GEN_67; // @[Conditional.scala 39:67 PTW.scala 113:23]
  wire  _GEN_75 = _T_58 ? 1'h0 : _GEN_68; // @[Conditional.scala 39:67 PTW.scala 113:23]
  wire [2:0] _GEN_77 = _T_56 ? _GEN_40 : _GEN_72; // @[Conditional.scala 40:58]
  wire [1:0] _GEN_78 = _T_56 ? 2'h0 : _GEN_71; // @[Conditional.scala 40:58 PTW.scala 299:13]
  wire  _GEN_79 = _T_56 ? 1'h0 : _GEN_73; // @[Conditional.scala 40:58 PTW.scala 124:24]
  wire  _GEN_80 = _T_56 ? 1'h0 : _GEN_74; // @[Conditional.scala 40:58 PTW.scala 113:23]
  wire  _GEN_81 = _T_56 ? 1'h0 : _GEN_75; // @[Conditional.scala 40:58 PTW.scala 113:23]
  wire  _r_pte_T_4 = (state == 3'h7) & _T_66; // @[PTW.scala 339:40]
  wire  _r_pte_T_6 = _T_17 & pte_cache_hit; // @[PTW.scala 340:25]
  wire [53:0] pte_2_ppn = {{10'd0}, io_dpath_ptbr_ppn};
  wire [53:0] _r_pte_T_8_ppn = _T_11 ? pte_2_ppn : r_pte_ppn; // @[PTW.scala 341:8]
  wire [53:0] pte_1_ppn = {{34'd0}, pte_cache_data};
  wire [53:0] _r_pte_T_9_ppn = _r_pte_T_6 ? pte_1_ppn : _r_pte_T_8_ppn; // @[PTW.scala 340:8]
  wire  _r_pte_T_9_d = _T_17 & pte_cache_hit ? 1'h0 : r_pte_d; // @[PTW.scala 340:8]
  wire  _r_pte_T_9_a = _T_17 & pte_cache_hit ? 1'h0 : r_pte_a; // @[PTW.scala 340:8]
  wire  _r_pte_T_9_g = _T_17 & pte_cache_hit ? 1'h0 : r_pte_g; // @[PTW.scala 340:8]
  wire  _r_pte_T_9_u = _T_17 & pte_cache_hit ? 1'h0 : r_pte_u; // @[PTW.scala 340:8]
  wire  _r_pte_T_9_x = _T_17 & pte_cache_hit ? 1'h0 : r_pte_x; // @[PTW.scala 340:8]
  wire  _r_pte_T_9_w = _T_17 & pte_cache_hit ? 1'h0 : r_pte_w; // @[PTW.scala 340:8]
  wire  _r_pte_T_9_r = _T_17 & pte_cache_hit ? 1'h0 : r_pte_r; // @[PTW.scala 340:8]
  wire  _r_pte_T_9_v = _T_17 & pte_cache_hit ? 1'h0 : r_pte_v; // @[PTW.scala 340:8]
  wire [53:0] _r_pte_T_10_ppn = _r_pte_T_4 ? fragmented_superpage_ppn : _r_pte_T_9_ppn; // @[PTW.scala 339:8]
  wire  _r_pte_T_10_d = (state == 3'h7) & _T_66 ? r_pte_d : _r_pte_T_9_d; // @[PTW.scala 339:8]
  wire  _r_pte_T_10_a = (state == 3'h7) & _T_66 ? r_pte_a : _r_pte_T_9_a; // @[PTW.scala 339:8]
  wire  _r_pte_T_10_g = (state == 3'h7) & _T_66 ? r_pte_g : _r_pte_T_9_g; // @[PTW.scala 339:8]
  wire  _r_pte_T_10_u = (state == 3'h7) & _T_66 ? r_pte_u : _r_pte_T_9_u; // @[PTW.scala 339:8]
  wire  _r_pte_T_10_x = (state == 3'h7) & _T_66 ? r_pte_x : _r_pte_T_9_x; // @[PTW.scala 339:8]
  wire  _r_pte_T_10_w = (state == 3'h7) & _T_66 ? r_pte_w : _r_pte_T_9_w; // @[PTW.scala 339:8]
  wire  _r_pte_T_10_r = (state == 3'h7) & _T_66 ? r_pte_r : _r_pte_T_9_r; // @[PTW.scala 339:8]
  wire  _r_pte_T_10_v = (state == 3'h7) & _T_66 ? r_pte_v : _r_pte_T_9_v; // @[PTW.scala 339:8]
  wire  _GEN_83 = _GEN_43 | _GEN_80; // @[PTW.scala 347:28 PTW.scala 347:28]
  wire  _GEN_84 = r_req_dest | _GEN_81; // @[PTW.scala 347:28 PTW.scala 347:28]
  wire  _l2_refill_T_3 = (res_v & _traverse_T_6) & _pte_addr_vpn_idx_T_2; // @[PTW.scala 357:44]
  wire  ae = res_v & invalid_paddr; // @[PTW.scala 358:22]
  wire [2:0] _GEN_95 = traverse ? 3'h1 : 3'h0; // @[PTW.scala 353:21 PTW.scala 354:18]
  wire  _GEN_97 = traverse ? 1'h0 : _l2_refill_T_3; // @[PTW.scala 353:21 PTW.scala 193:26 PTW.scala 357:17]
  wire [2:0] _GEN_101 = mem_resp_valid ? _GEN_95 : _GEN_77; // @[PTW.scala 351:25]
  Arbiter arb ( // @[PTW.scala 109:19]
    .io_in_0_ready(arb_io_in_0_ready),
    .io_in_0_valid(arb_io_in_0_valid),
    .io_in_0_bits_bits_addr(arb_io_in_0_bits_bits_addr),
    .io_in_1_ready(arb_io_in_1_ready),
    .io_in_1_valid(arb_io_in_1_valid),
    .io_in_1_bits_valid(arb_io_in_1_bits_valid),
    .io_in_1_bits_bits_addr(arb_io_in_1_bits_bits_addr),
    .io_out_ready(arb_io_out_ready),
    .io_out_valid(arb_io_out_valid),
    .io_out_bits_valid(arb_io_out_bits_valid),
    .io_out_bits_bits_addr(arb_io_out_bits_bits_addr),
    .io_chosen(arb_io_chosen)
  );
  OptimizationBarrier_117 state_barrier ( // @[package.scala 236:25]
    .io_x(state_barrier_io_x),
    .io_y(state_barrier_io_y)
  );
  OptimizationBarrier_118 r_pte_barrier ( // @[package.scala 236:25]
    .io_x_ppn(r_pte_barrier_io_x_ppn),
    .io_x_d(r_pte_barrier_io_x_d),
    .io_x_a(r_pte_barrier_io_x_a),
    .io_x_g(r_pte_barrier_io_x_g),
    .io_x_u(r_pte_barrier_io_x_u),
    .io_x_x(r_pte_barrier_io_x_x),
    .io_x_w(r_pte_barrier_io_x_w),
    .io_x_r(r_pte_barrier_io_x_r),
    .io_x_v(r_pte_barrier_io_x_v),
    .io_y_ppn(r_pte_barrier_io_y_ppn),
    .io_y_d(r_pte_barrier_io_y_d),
    .io_y_a(r_pte_barrier_io_y_a),
    .io_y_g(r_pte_barrier_io_y_g),
    .io_y_u(r_pte_barrier_io_y_u),
    .io_y_x(r_pte_barrier_io_y_x),
    .io_y_w(r_pte_barrier_io_y_w),
    .io_y_r(r_pte_barrier_io_y_r),
    .io_y_v(r_pte_barrier_io_y_v)
  );
  assign io_requestor_0_req_ready = arb_io_in_0_ready; // @[PTW.scala 110:13]
  assign io_requestor_0_resp_valid = resp_valid_0; // @[PTW.scala 278:32]
  assign io_requestor_0_resp_bits_ae = resp_ae; // @[PTW.scala 279:34]
  assign io_requestor_0_resp_bits_pte_ppn = r_pte_ppn; // @[PTW.scala 280:35]
  assign io_requestor_0_resp_bits_pte_d = r_pte_d; // @[PTW.scala 280:35]
  assign io_requestor_0_resp_bits_pte_a = r_pte_a; // @[PTW.scala 280:35]
  assign io_requestor_0_resp_bits_pte_g = r_pte_g; // @[PTW.scala 280:35]
  assign io_requestor_0_resp_bits_pte_u = r_pte_u; // @[PTW.scala 280:35]
  assign io_requestor_0_resp_bits_pte_x = r_pte_x; // @[PTW.scala 280:35]
  assign io_requestor_0_resp_bits_pte_w = r_pte_w; // @[PTW.scala 280:35]
  assign io_requestor_0_resp_bits_pte_r = r_pte_r; // @[PTW.scala 280:35]
  assign io_requestor_0_resp_bits_pte_v = r_pte_v; // @[PTW.scala 280:35]
  assign io_requestor_0_resp_bits_level = count; // @[PTW.scala 281:37]
  assign io_requestor_0_resp_bits_homogeneous = pmaHomogeneous & pmpHomogeneous; // @[PTW.scala 275:36]
  assign io_requestor_0_ptbr_mode = io_dpath_ptbr_mode; // @[PTW.scala 284:26]
  assign io_requestor_0_status_debug = io_dpath_status_debug; // @[PTW.scala 286:28]
  assign io_requestor_0_status_dprv = io_dpath_status_dprv; // @[PTW.scala 286:28]
  assign io_requestor_0_status_mxr = io_dpath_status_mxr; // @[PTW.scala 286:28]
  assign io_requestor_0_status_sum = io_dpath_status_sum; // @[PTW.scala 286:28]
  assign io_requestor_0_pmp_0_cfg_l = io_dpath_pmp_0_cfg_l; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_0_cfg_a = io_dpath_pmp_0_cfg_a; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_0_cfg_x = io_dpath_pmp_0_cfg_x; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_0_cfg_w = io_dpath_pmp_0_cfg_w; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_0_cfg_r = io_dpath_pmp_0_cfg_r; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_0_addr = io_dpath_pmp_0_addr; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_0_mask = io_dpath_pmp_0_mask; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_1_cfg_l = io_dpath_pmp_1_cfg_l; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_1_cfg_a = io_dpath_pmp_1_cfg_a; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_1_cfg_x = io_dpath_pmp_1_cfg_x; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_1_cfg_w = io_dpath_pmp_1_cfg_w; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_1_cfg_r = io_dpath_pmp_1_cfg_r; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_1_addr = io_dpath_pmp_1_addr; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_1_mask = io_dpath_pmp_1_mask; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_2_cfg_l = io_dpath_pmp_2_cfg_l; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_2_cfg_a = io_dpath_pmp_2_cfg_a; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_2_cfg_x = io_dpath_pmp_2_cfg_x; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_2_cfg_w = io_dpath_pmp_2_cfg_w; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_2_cfg_r = io_dpath_pmp_2_cfg_r; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_2_addr = io_dpath_pmp_2_addr; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_2_mask = io_dpath_pmp_2_mask; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_3_cfg_l = io_dpath_pmp_3_cfg_l; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_3_cfg_a = io_dpath_pmp_3_cfg_a; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_3_cfg_x = io_dpath_pmp_3_cfg_x; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_3_cfg_w = io_dpath_pmp_3_cfg_w; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_3_cfg_r = io_dpath_pmp_3_cfg_r; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_3_addr = io_dpath_pmp_3_addr; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_3_mask = io_dpath_pmp_3_mask; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_4_cfg_l = io_dpath_pmp_4_cfg_l; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_4_cfg_a = io_dpath_pmp_4_cfg_a; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_4_cfg_x = io_dpath_pmp_4_cfg_x; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_4_cfg_w = io_dpath_pmp_4_cfg_w; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_4_cfg_r = io_dpath_pmp_4_cfg_r; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_4_addr = io_dpath_pmp_4_addr; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_4_mask = io_dpath_pmp_4_mask; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_5_cfg_l = io_dpath_pmp_5_cfg_l; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_5_cfg_a = io_dpath_pmp_5_cfg_a; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_5_cfg_x = io_dpath_pmp_5_cfg_x; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_5_cfg_w = io_dpath_pmp_5_cfg_w; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_5_cfg_r = io_dpath_pmp_5_cfg_r; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_5_addr = io_dpath_pmp_5_addr; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_5_mask = io_dpath_pmp_5_mask; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_6_cfg_l = io_dpath_pmp_6_cfg_l; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_6_cfg_a = io_dpath_pmp_6_cfg_a; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_6_cfg_x = io_dpath_pmp_6_cfg_x; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_6_cfg_w = io_dpath_pmp_6_cfg_w; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_6_cfg_r = io_dpath_pmp_6_cfg_r; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_6_addr = io_dpath_pmp_6_addr; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_6_mask = io_dpath_pmp_6_mask; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_7_cfg_l = io_dpath_pmp_7_cfg_l; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_7_cfg_a = io_dpath_pmp_7_cfg_a; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_7_cfg_x = io_dpath_pmp_7_cfg_x; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_7_cfg_w = io_dpath_pmp_7_cfg_w; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_7_cfg_r = io_dpath_pmp_7_cfg_r; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_7_addr = io_dpath_pmp_7_addr; // @[PTW.scala 287:25]
  assign io_requestor_0_pmp_7_mask = io_dpath_pmp_7_mask; // @[PTW.scala 287:25]
  assign io_requestor_1_req_ready = arb_io_in_1_ready; // @[PTW.scala 110:13]
  assign io_requestor_1_resp_valid = resp_valid_1; // @[PTW.scala 278:32]
  assign io_requestor_1_resp_bits_ae = resp_ae; // @[PTW.scala 279:34]
  assign io_requestor_1_resp_bits_pte_ppn = r_pte_ppn; // @[PTW.scala 280:35]
  assign io_requestor_1_resp_bits_pte_d = r_pte_d; // @[PTW.scala 280:35]
  assign io_requestor_1_resp_bits_pte_a = r_pte_a; // @[PTW.scala 280:35]
  assign io_requestor_1_resp_bits_pte_g = r_pte_g; // @[PTW.scala 280:35]
  assign io_requestor_1_resp_bits_pte_u = r_pte_u; // @[PTW.scala 280:35]
  assign io_requestor_1_resp_bits_pte_x = r_pte_x; // @[PTW.scala 280:35]
  assign io_requestor_1_resp_bits_pte_w = r_pte_w; // @[PTW.scala 280:35]
  assign io_requestor_1_resp_bits_pte_r = r_pte_r; // @[PTW.scala 280:35]
  assign io_requestor_1_resp_bits_pte_v = r_pte_v; // @[PTW.scala 280:35]
  assign io_requestor_1_resp_bits_level = count; // @[PTW.scala 281:37]
  assign io_requestor_1_resp_bits_homogeneous = pmaHomogeneous & pmpHomogeneous; // @[PTW.scala 275:36]
  assign io_requestor_1_ptbr_mode = io_dpath_ptbr_mode; // @[PTW.scala 284:26]
  assign io_requestor_1_status_debug = io_dpath_status_debug; // @[PTW.scala 286:28]
  assign io_requestor_1_status_prv = io_dpath_status_prv; // @[PTW.scala 286:28]
  assign io_requestor_1_pmp_0_cfg_l = io_dpath_pmp_0_cfg_l; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_0_cfg_a = io_dpath_pmp_0_cfg_a; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_0_cfg_x = io_dpath_pmp_0_cfg_x; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_0_cfg_w = io_dpath_pmp_0_cfg_w; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_0_cfg_r = io_dpath_pmp_0_cfg_r; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_0_addr = io_dpath_pmp_0_addr; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_0_mask = io_dpath_pmp_0_mask; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_1_cfg_l = io_dpath_pmp_1_cfg_l; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_1_cfg_a = io_dpath_pmp_1_cfg_a; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_1_cfg_x = io_dpath_pmp_1_cfg_x; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_1_cfg_w = io_dpath_pmp_1_cfg_w; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_1_cfg_r = io_dpath_pmp_1_cfg_r; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_1_addr = io_dpath_pmp_1_addr; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_1_mask = io_dpath_pmp_1_mask; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_2_cfg_l = io_dpath_pmp_2_cfg_l; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_2_cfg_a = io_dpath_pmp_2_cfg_a; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_2_cfg_x = io_dpath_pmp_2_cfg_x; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_2_cfg_w = io_dpath_pmp_2_cfg_w; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_2_cfg_r = io_dpath_pmp_2_cfg_r; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_2_addr = io_dpath_pmp_2_addr; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_2_mask = io_dpath_pmp_2_mask; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_3_cfg_l = io_dpath_pmp_3_cfg_l; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_3_cfg_a = io_dpath_pmp_3_cfg_a; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_3_cfg_x = io_dpath_pmp_3_cfg_x; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_3_cfg_w = io_dpath_pmp_3_cfg_w; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_3_cfg_r = io_dpath_pmp_3_cfg_r; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_3_addr = io_dpath_pmp_3_addr; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_3_mask = io_dpath_pmp_3_mask; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_4_cfg_l = io_dpath_pmp_4_cfg_l; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_4_cfg_a = io_dpath_pmp_4_cfg_a; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_4_cfg_x = io_dpath_pmp_4_cfg_x; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_4_cfg_w = io_dpath_pmp_4_cfg_w; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_4_cfg_r = io_dpath_pmp_4_cfg_r; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_4_addr = io_dpath_pmp_4_addr; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_4_mask = io_dpath_pmp_4_mask; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_5_cfg_l = io_dpath_pmp_5_cfg_l; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_5_cfg_a = io_dpath_pmp_5_cfg_a; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_5_cfg_x = io_dpath_pmp_5_cfg_x; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_5_cfg_w = io_dpath_pmp_5_cfg_w; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_5_cfg_r = io_dpath_pmp_5_cfg_r; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_5_addr = io_dpath_pmp_5_addr; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_5_mask = io_dpath_pmp_5_mask; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_6_cfg_l = io_dpath_pmp_6_cfg_l; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_6_cfg_a = io_dpath_pmp_6_cfg_a; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_6_cfg_x = io_dpath_pmp_6_cfg_x; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_6_cfg_w = io_dpath_pmp_6_cfg_w; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_6_cfg_r = io_dpath_pmp_6_cfg_r; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_6_addr = io_dpath_pmp_6_addr; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_6_mask = io_dpath_pmp_6_mask; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_7_cfg_l = io_dpath_pmp_7_cfg_l; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_7_cfg_a = io_dpath_pmp_7_cfg_a; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_7_cfg_x = io_dpath_pmp_7_cfg_x; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_7_cfg_w = io_dpath_pmp_7_cfg_w; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_7_cfg_r = io_dpath_pmp_7_cfg_r; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_7_addr = io_dpath_pmp_7_addr; // @[PTW.scala 287:25]
  assign io_requestor_1_pmp_7_mask = io_dpath_pmp_7_mask; // @[PTW.scala 287:25]
  assign io_requestor_1_customCSRs_csrs_0_value = io_dpath_customCSRs_csrs_0_value; // @[PTW.scala 285:32]
  assign io_mem_req_valid = _T_17 | (state == 3'h3); // @[PTW.scala 253:39]
  assign io_mem_req_bits_addr = pte_addr[39:0]; // @[PTW.scala 258:24]
  assign io_mem_s1_kill = state != 3'h2; // @[PTW.scala 260:37]
  assign arb_io_in_0_valid = io_requestor_0_req_valid; // @[PTW.scala 110:13]
  assign arb_io_in_0_bits_bits_addr = io_requestor_0_req_bits_bits_addr; // @[PTW.scala 110:13]
  assign arb_io_in_1_valid = io_requestor_1_req_valid; // @[PTW.scala 110:13]
  assign arb_io_in_1_bits_valid = io_requestor_1_req_bits_valid; // @[PTW.scala 110:13]
  assign arb_io_in_1_bits_bits_addr = io_requestor_1_req_bits_bits_addr; // @[PTW.scala 110:13]
  assign arb_io_out_ready = (state == 3'h0) & (~l2_refill); // @[PTW.scala 111:43]
  assign state_barrier_io_x = io_mem_s2_nack ? 3'h1 : _GEN_101; // @[PTW.scala 368:25 PTW.scala 370:16]
  assign r_pte_barrier_io_x_ppn = mem_resp_valid ? res_ppn : _r_pte_T_10_ppn; // @[PTW.scala 337:8]
  assign r_pte_barrier_io_x_d = mem_resp_valid ? tmp_d : _r_pte_T_10_d; // @[PTW.scala 337:8]
  assign r_pte_barrier_io_x_a = mem_resp_valid ? tmp_a : _r_pte_T_10_a; // @[PTW.scala 337:8]
  assign r_pte_barrier_io_x_g = mem_resp_valid ? tmp_g : _r_pte_T_10_g; // @[PTW.scala 337:8]
  assign r_pte_barrier_io_x_u = mem_resp_valid ? tmp_u : _r_pte_T_10_u; // @[PTW.scala 337:8]
  assign r_pte_barrier_io_x_x = mem_resp_valid ? tmp_x : _r_pte_T_10_x; // @[PTW.scala 337:8]
  assign r_pte_barrier_io_x_w = mem_resp_valid ? tmp_w : _r_pte_T_10_w; // @[PTW.scala 337:8]
  assign r_pte_barrier_io_x_r = mem_resp_valid ? tmp_r : _r_pte_T_10_r; // @[PTW.scala 337:8]
  assign r_pte_barrier_io_x_v = mem_resp_valid ? res_v : _r_pte_T_10_v; // @[PTW.scala 337:8]
  always @(posedge clock) begin
    if (reset) begin // @[PTW.scala 106:18]
      state <= 3'h0; // @[PTW.scala 106:18]
    end else begin
      state <= state_barrier_io_y; // @[PTW.scala 292:9]
    end
    l2_refill <= mem_resp_valid & _GEN_97; // @[PTW.scala 351:25 PTW.scala 193:26]
    if (mem_resp_valid) begin // @[PTW.scala 351:25]
      if (traverse) begin // @[PTW.scala 353:21]
        resp_valid_0 <= _GEN_80;
      end else begin
        resp_valid_0 <= _GEN_83;
      end
    end else begin
      resp_valid_0 <= _GEN_80;
    end
    if (mem_resp_valid) begin // @[PTW.scala 351:25]
      if (traverse) begin // @[PTW.scala 353:21]
        resp_valid_1 <= _GEN_81;
      end else begin
        resp_valid_1 <= _GEN_84;
      end
    end else begin
      resp_valid_1 <= _GEN_81;
    end
    invalidated <= io_dpath_sfence_valid | (invalidated & _clock_en_T); // @[PTW.scala 251:40]
    if (mem_resp_valid) begin // @[PTW.scala 351:25]
      if (traverse) begin // @[PTW.scala 353:21]
        count <= _count_T_3; // @[PTW.scala 355:13]
      end else begin
        count <= _GEN_78;
      end
    end else begin
      count <= _GEN_78;
    end
    if (mem_resp_valid) begin // @[PTW.scala 351:25]
      if (traverse) begin // @[PTW.scala 353:21]
        resp_ae <= _GEN_79;
      end else begin
        resp_ae <= ae; // @[PTW.scala 359:15]
      end
    end else begin
      resp_ae <= _GEN_79;
    end
    if (_T_11) begin // @[PTW.scala 164:28]
      r_req_addr <= arb_io_out_bits_bits_addr; // @[PTW.scala 165:11]
    end
    if (_T_11) begin // @[PTW.scala 164:28]
      r_req_dest <= arb_io_chosen; // @[PTW.scala 166:16]
    end
    r_pte_ppn <= r_pte_barrier_io_y_ppn; // @[PTW.scala 336:9]
    r_pte_d <= r_pte_barrier_io_y_d; // @[PTW.scala 336:9]
    r_pte_a <= r_pte_barrier_io_y_a; // @[PTW.scala 336:9]
    r_pte_g <= r_pte_barrier_io_y_g; // @[PTW.scala 336:9]
    r_pte_u <= r_pte_barrier_io_y_u; // @[PTW.scala 336:9]
    r_pte_x <= r_pte_barrier_io_y_x; // @[PTW.scala 336:9]
    r_pte_w <= r_pte_barrier_io_y_w; // @[PTW.scala 336:9]
    r_pte_r <= r_pte_barrier_io_y_r; // @[PTW.scala 336:9]
    r_pte_v <= r_pte_barrier_io_y_v; // @[PTW.scala 336:9]
    mem_resp_valid <= io_mem_resp_valid; // @[PTW.scala 131:31]
    mem_resp_data <= io_mem_resp_bits_data; // @[PTW.scala 132:30]
    if (_T_18) begin // @[PTW.scala 184:35]
      state_reg <= _state_reg_T_16; // @[Replacement.scala 162:15]
    end
    if (reset) begin // @[PTW.scala 172:24]
      valid <= 8'h0; // @[PTW.scala 172:24]
    end else if (_T_23) begin // @[PTW.scala 185:63]
      valid <= 8'h0; // @[PTW.scala 185:71]
    end else if (_T_16) begin // @[PTW.scala 178:63]
      valid <= _valid_T_1; // @[PTW.scala 180:13]
    end
    if (_T_16) begin // @[PTW.scala 178:63]
      if (3'h0 == r) begin // @[PTW.scala 181:15]
        tags_0 <= pte_addr[31:0]; // @[PTW.scala 181:15]
      end
    end
    if (_T_16) begin // @[PTW.scala 178:63]
      if (3'h1 == r) begin // @[PTW.scala 181:15]
        tags_1 <= pte_addr[31:0]; // @[PTW.scala 181:15]
      end
    end
    if (_T_16) begin // @[PTW.scala 178:63]
      if (3'h2 == r) begin // @[PTW.scala 181:15]
        tags_2 <= pte_addr[31:0]; // @[PTW.scala 181:15]
      end
    end
    if (_T_16) begin // @[PTW.scala 178:63]
      if (3'h3 == r) begin // @[PTW.scala 181:15]
        tags_3 <= pte_addr[31:0]; // @[PTW.scala 181:15]
      end
    end
    if (_T_16) begin // @[PTW.scala 178:63]
      if (3'h4 == r) begin // @[PTW.scala 181:15]
        tags_4 <= pte_addr[31:0]; // @[PTW.scala 181:15]
      end
    end
    if (_T_16) begin // @[PTW.scala 178:63]
      if (3'h5 == r) begin // @[PTW.scala 181:15]
        tags_5 <= pte_addr[31:0]; // @[PTW.scala 181:15]
      end
    end
    if (_T_16) begin // @[PTW.scala 178:63]
      if (3'h6 == r) begin // @[PTW.scala 181:15]
        tags_6 <= pte_addr[31:0]; // @[PTW.scala 181:15]
      end
    end
    if (_T_16) begin // @[PTW.scala 178:63]
      if (3'h7 == r) begin // @[PTW.scala 181:15]
        tags_7 <= pte_addr[31:0]; // @[PTW.scala 181:15]
      end
    end
    if (_T_16) begin // @[PTW.scala 178:63]
      if (3'h0 == r) begin // @[PTW.scala 182:15]
        data_0 <= res_ppn[19:0]; // @[PTW.scala 182:15]
      end
    end
    if (_T_16) begin // @[PTW.scala 178:63]
      if (3'h1 == r) begin // @[PTW.scala 182:15]
        data_1 <= res_ppn[19:0]; // @[PTW.scala 182:15]
      end
    end
    if (_T_16) begin // @[PTW.scala 178:63]
      if (3'h2 == r) begin // @[PTW.scala 182:15]
        data_2 <= res_ppn[19:0]; // @[PTW.scala 182:15]
      end
    end
    if (_T_16) begin // @[PTW.scala 178:63]
      if (3'h3 == r) begin // @[PTW.scala 182:15]
        data_3 <= res_ppn[19:0]; // @[PTW.scala 182:15]
      end
    end
    if (_T_16) begin // @[PTW.scala 178:63]
      if (3'h4 == r) begin // @[PTW.scala 182:15]
        data_4 <= res_ppn[19:0]; // @[PTW.scala 182:15]
      end
    end
    if (_T_16) begin // @[PTW.scala 178:63]
      if (3'h5 == r) begin // @[PTW.scala 182:15]
        data_5 <= res_ppn[19:0]; // @[PTW.scala 182:15]
      end
    end
    if (_T_16) begin // @[PTW.scala 178:63]
      if (3'h6 == r) begin // @[PTW.scala 182:15]
        data_6 <= res_ppn[19:0]; // @[PTW.scala 182:15]
      end
    end
    if (_T_16) begin // @[PTW.scala 178:63]
      if (3'h7 == r) begin // @[PTW.scala 182:15]
        data_7 <= res_ppn[19:0]; // @[PTW.scala 182:15]
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
  state = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  l2_refill = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  resp_valid_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  resp_valid_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  invalidated = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  count = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  resp_ae = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  r_req_addr = _RAND_7[26:0];
  _RAND_8 = {1{`RANDOM}};
  r_req_dest = _RAND_8[0:0];
  _RAND_9 = {2{`RANDOM}};
  r_pte_ppn = _RAND_9[53:0];
  _RAND_10 = {1{`RANDOM}};
  r_pte_d = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  r_pte_a = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  r_pte_g = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  r_pte_u = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  r_pte_x = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  r_pte_w = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  r_pte_r = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  r_pte_v = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  mem_resp_valid = _RAND_18[0:0];
  _RAND_19 = {2{`RANDOM}};
  mem_resp_data = _RAND_19[63:0];
  _RAND_20 = {1{`RANDOM}};
  state_reg = _RAND_20[6:0];
  _RAND_21 = {1{`RANDOM}};
  valid = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  tags_0 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  tags_1 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  tags_2 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  tags_3 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  tags_4 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  tags_5 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  tags_6 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  tags_7 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  data_0 = _RAND_30[19:0];
  _RAND_31 = {1{`RANDOM}};
  data_1 = _RAND_31[19:0];
  _RAND_32 = {1{`RANDOM}};
  data_2 = _RAND_32[19:0];
  _RAND_33 = {1{`RANDOM}};
  data_3 = _RAND_33[19:0];
  _RAND_34 = {1{`RANDOM}};
  data_4 = _RAND_34[19:0];
  _RAND_35 = {1{`RANDOM}};
  data_5 = _RAND_35[19:0];
  _RAND_36 = {1{`RANDOM}};
  data_6 = _RAND_36[19:0];
  _RAND_37 = {1{`RANDOM}};
  data_7 = _RAND_37[19:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
