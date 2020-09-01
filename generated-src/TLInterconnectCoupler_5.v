module TLInterconnectCoupler_5(
  input         clock,
  input         reset,
  output        auto_axi4index_in_aw_ready,
  input         auto_axi4index_in_aw_valid,
  input  [7:0]  auto_axi4index_in_aw_bits_id,
  input  [31:0] auto_axi4index_in_aw_bits_addr,
  input  [7:0]  auto_axi4index_in_aw_bits_len,
  input  [2:0]  auto_axi4index_in_aw_bits_size,
  input  [1:0]  auto_axi4index_in_aw_bits_burst,
  input  [3:0]  auto_axi4index_in_aw_bits_cache,
  input  [2:0]  auto_axi4index_in_aw_bits_prot,
  output        auto_axi4index_in_w_ready,
  input         auto_axi4index_in_w_valid,
  input  [63:0] auto_axi4index_in_w_bits_data,
  input  [7:0]  auto_axi4index_in_w_bits_strb,
  input         auto_axi4index_in_w_bits_last,
  input         auto_axi4index_in_b_ready,
  output        auto_axi4index_in_b_valid,
  output [7:0]  auto_axi4index_in_b_bits_id,
  output [1:0]  auto_axi4index_in_b_bits_resp,
  output        auto_axi4index_in_ar_ready,
  input         auto_axi4index_in_ar_valid,
  input  [7:0]  auto_axi4index_in_ar_bits_id,
  input  [31:0] auto_axi4index_in_ar_bits_addr,
  input  [7:0]  auto_axi4index_in_ar_bits_len,
  input  [2:0]  auto_axi4index_in_ar_bits_size,
  input  [1:0]  auto_axi4index_in_ar_bits_burst,
  input  [3:0]  auto_axi4index_in_ar_bits_cache,
  input  [2:0]  auto_axi4index_in_ar_bits_prot,
  input         auto_axi4index_in_r_ready,
  output        auto_axi4index_in_r_valid,
  output [7:0]  auto_axi4index_in_r_bits_id,
  output [63:0] auto_axi4index_in_r_bits_data,
  output [1:0]  auto_axi4index_in_r_bits_resp,
  output        auto_axi4index_in_r_bits_last,
  input         auto_tl_out_a_ready,
  output        auto_tl_out_a_valid,
  output [2:0]  auto_tl_out_a_bits_opcode,
  output [2:0]  auto_tl_out_a_bits_param,
  output [3:0]  auto_tl_out_a_bits_size,
  output [3:0]  auto_tl_out_a_bits_source,
  output [31:0] auto_tl_out_a_bits_address,
  output        auto_tl_out_a_bits_user_amba_prot_bufferable,
  output        auto_tl_out_a_bits_user_amba_prot_modifiable,
  output        auto_tl_out_a_bits_user_amba_prot_readalloc,
  output        auto_tl_out_a_bits_user_amba_prot_writealloc,
  output        auto_tl_out_a_bits_user_amba_prot_privileged,
  output        auto_tl_out_a_bits_user_amba_prot_secure,
  output        auto_tl_out_a_bits_user_amba_prot_fetch,
  output [7:0]  auto_tl_out_a_bits_mask,
  output [63:0] auto_tl_out_a_bits_data,
  output        auto_tl_out_a_bits_corrupt,
  output        auto_tl_out_d_ready,
  input         auto_tl_out_d_valid,
  input  [2:0]  auto_tl_out_d_bits_opcode,
  input  [3:0]  auto_tl_out_d_bits_size,
  input  [3:0]  auto_tl_out_d_bits_source,
  input         auto_tl_out_d_bits_denied,
  input  [63:0] auto_tl_out_d_bits_data,
  input         auto_tl_out_d_bits_corrupt
);
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
  wire  fixer_clock; // @[FIFOFixer.scala 146:27]
  wire  fixer_reset; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_a_ready; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_a_valid; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_in_a_bits_opcode; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_in_a_bits_param; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_in_a_bits_size; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_in_a_bits_source; // @[FIFOFixer.scala 146:27]
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
  wire  fixer_auto_in_a_bits_corrupt; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_d_ready; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_d_valid; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_in_d_bits_opcode; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_in_d_bits_size; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_in_d_bits_source; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_d_bits_denied; // @[FIFOFixer.scala 146:27]
  wire [63:0] fixer_auto_in_d_bits_data; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_in_d_bits_corrupt; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_a_ready; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_a_valid; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_out_a_bits_opcode; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_out_a_bits_param; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_out_a_bits_size; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_out_a_bits_source; // @[FIFOFixer.scala 146:27]
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
  wire  fixer_auto_out_a_bits_corrupt; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_d_ready; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_d_valid; // @[FIFOFixer.scala 146:27]
  wire [2:0] fixer_auto_out_d_bits_opcode; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_out_d_bits_size; // @[FIFOFixer.scala 146:27]
  wire [3:0] fixer_auto_out_d_bits_source; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_d_bits_denied; // @[FIFOFixer.scala 146:27]
  wire [63:0] fixer_auto_out_d_bits_data; // @[FIFOFixer.scala 146:27]
  wire  fixer_auto_out_d_bits_corrupt; // @[FIFOFixer.scala 146:27]
  wire  widget_auto_in_a_ready;
  wire  widget_auto_in_a_valid;
  wire [2:0] widget_auto_in_a_bits_opcode;
  wire [2:0] widget_auto_in_a_bits_param;
  wire [3:0] widget_auto_in_a_bits_size;
  wire [3:0] widget_auto_in_a_bits_source;
  wire [31:0] widget_auto_in_a_bits_address;
  wire  widget_auto_in_a_bits_user_amba_prot_bufferable;
  wire  widget_auto_in_a_bits_user_amba_prot_modifiable;
  wire  widget_auto_in_a_bits_user_amba_prot_readalloc;
  wire  widget_auto_in_a_bits_user_amba_prot_writealloc;
  wire  widget_auto_in_a_bits_user_amba_prot_privileged;
  wire  widget_auto_in_a_bits_user_amba_prot_secure;
  wire  widget_auto_in_a_bits_user_amba_prot_fetch;
  wire [7:0] widget_auto_in_a_bits_mask;
  wire [63:0] widget_auto_in_a_bits_data;
  wire  widget_auto_in_a_bits_corrupt;
  wire  widget_auto_in_d_ready;
  wire  widget_auto_in_d_valid;
  wire [2:0] widget_auto_in_d_bits_opcode;
  wire [3:0] widget_auto_in_d_bits_size;
  wire [3:0] widget_auto_in_d_bits_source;
  wire  widget_auto_in_d_bits_denied;
  wire [63:0] widget_auto_in_d_bits_data;
  wire  widget_auto_in_d_bits_corrupt;
  wire  widget_auto_out_a_ready;
  wire  widget_auto_out_a_valid;
  wire [2:0] widget_auto_out_a_bits_opcode;
  wire [2:0] widget_auto_out_a_bits_param;
  wire [3:0] widget_auto_out_a_bits_size;
  wire [3:0] widget_auto_out_a_bits_source;
  wire [31:0] widget_auto_out_a_bits_address;
  wire  widget_auto_out_a_bits_user_amba_prot_bufferable;
  wire  widget_auto_out_a_bits_user_amba_prot_modifiable;
  wire  widget_auto_out_a_bits_user_amba_prot_readalloc;
  wire  widget_auto_out_a_bits_user_amba_prot_writealloc;
  wire  widget_auto_out_a_bits_user_amba_prot_privileged;
  wire  widget_auto_out_a_bits_user_amba_prot_secure;
  wire  widget_auto_out_a_bits_user_amba_prot_fetch;
  wire [7:0] widget_auto_out_a_bits_mask;
  wire [63:0] widget_auto_out_a_bits_data;
  wire  widget_auto_out_a_bits_corrupt;
  wire  widget_auto_out_d_ready;
  wire  widget_auto_out_d_valid;
  wire [2:0] widget_auto_out_d_bits_opcode;
  wire [3:0] widget_auto_out_d_bits_size;
  wire [3:0] widget_auto_out_d_bits_source;
  wire  widget_auto_out_d_bits_denied;
  wire [63:0] widget_auto_out_d_bits_data;
  wire  widget_auto_out_d_bits_corrupt;
  wire  axi42tl_clock; // @[ToTL.scala 215:29]
  wire  axi42tl_reset; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_in_aw_ready; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_in_aw_valid; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_in_aw_bits_id; // @[ToTL.scala 215:29]
  wire [31:0] axi42tl_auto_in_aw_bits_addr; // @[ToTL.scala 215:29]
  wire [7:0] axi42tl_auto_in_aw_bits_len; // @[ToTL.scala 215:29]
  wire [2:0] axi42tl_auto_in_aw_bits_size; // @[ToTL.scala 215:29]
  wire [3:0] axi42tl_auto_in_aw_bits_cache; // @[ToTL.scala 215:29]
  wire [2:0] axi42tl_auto_in_aw_bits_prot; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_in_w_ready; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_in_w_valid; // @[ToTL.scala 215:29]
  wire [63:0] axi42tl_auto_in_w_bits_data; // @[ToTL.scala 215:29]
  wire [7:0] axi42tl_auto_in_w_bits_strb; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_in_w_bits_last; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_in_b_ready; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_in_b_valid; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_in_b_bits_id; // @[ToTL.scala 215:29]
  wire [1:0] axi42tl_auto_in_b_bits_resp; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_in_ar_ready; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_in_ar_valid; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_in_ar_bits_id; // @[ToTL.scala 215:29]
  wire [31:0] axi42tl_auto_in_ar_bits_addr; // @[ToTL.scala 215:29]
  wire [7:0] axi42tl_auto_in_ar_bits_len; // @[ToTL.scala 215:29]
  wire [2:0] axi42tl_auto_in_ar_bits_size; // @[ToTL.scala 215:29]
  wire [3:0] axi42tl_auto_in_ar_bits_cache; // @[ToTL.scala 215:29]
  wire [2:0] axi42tl_auto_in_ar_bits_prot; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_in_r_ready; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_in_r_valid; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_in_r_bits_id; // @[ToTL.scala 215:29]
  wire [63:0] axi42tl_auto_in_r_bits_data; // @[ToTL.scala 215:29]
  wire [1:0] axi42tl_auto_in_r_bits_resp; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_in_r_bits_last; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_out_a_ready; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_out_a_valid; // @[ToTL.scala 215:29]
  wire [2:0] axi42tl_auto_out_a_bits_opcode; // @[ToTL.scala 215:29]
  wire [2:0] axi42tl_auto_out_a_bits_param; // @[ToTL.scala 215:29]
  wire [3:0] axi42tl_auto_out_a_bits_size; // @[ToTL.scala 215:29]
  wire [3:0] axi42tl_auto_out_a_bits_source; // @[ToTL.scala 215:29]
  wire [31:0] axi42tl_auto_out_a_bits_address; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_out_a_bits_user_amba_prot_bufferable; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_out_a_bits_user_amba_prot_modifiable; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_out_a_bits_user_amba_prot_readalloc; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_out_a_bits_user_amba_prot_writealloc; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_out_a_bits_user_amba_prot_privileged; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_out_a_bits_user_amba_prot_secure; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_out_a_bits_user_amba_prot_fetch; // @[ToTL.scala 215:29]
  wire [7:0] axi42tl_auto_out_a_bits_mask; // @[ToTL.scala 215:29]
  wire [63:0] axi42tl_auto_out_a_bits_data; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_out_a_bits_corrupt; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_out_d_ready; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_out_d_valid; // @[ToTL.scala 215:29]
  wire [2:0] axi42tl_auto_out_d_bits_opcode; // @[ToTL.scala 215:29]
  wire [3:0] axi42tl_auto_out_d_bits_size; // @[ToTL.scala 215:29]
  wire [3:0] axi42tl_auto_out_d_bits_source; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_out_d_bits_denied; // @[ToTL.scala 215:29]
  wire [63:0] axi42tl_auto_out_d_bits_data; // @[ToTL.scala 215:29]
  wire  axi42tl_auto_out_d_bits_corrupt; // @[ToTL.scala 215:29]
  wire  axi4yank_clock; // @[UserYanker.scala 97:30]
  wire  axi4yank_reset; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_aw_ready; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_aw_valid; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_aw_bits_id; // @[UserYanker.scala 97:30]
  wire [31:0] axi4yank_auto_in_aw_bits_addr; // @[UserYanker.scala 97:30]
  wire [7:0] axi4yank_auto_in_aw_bits_len; // @[UserYanker.scala 97:30]
  wire [2:0] axi4yank_auto_in_aw_bits_size; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_in_aw_bits_cache; // @[UserYanker.scala 97:30]
  wire [2:0] axi4yank_auto_in_aw_bits_prot; // @[UserYanker.scala 97:30]
  wire [6:0] axi4yank_auto_in_aw_bits_echo_extra_id; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_aw_bits_echo_real_last; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_w_ready; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_w_valid; // @[UserYanker.scala 97:30]
  wire [63:0] axi4yank_auto_in_w_bits_data; // @[UserYanker.scala 97:30]
  wire [7:0] axi4yank_auto_in_w_bits_strb; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_w_bits_last; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_b_ready; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_b_valid; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_b_bits_id; // @[UserYanker.scala 97:30]
  wire [1:0] axi4yank_auto_in_b_bits_resp; // @[UserYanker.scala 97:30]
  wire [6:0] axi4yank_auto_in_b_bits_echo_extra_id; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_b_bits_echo_real_last; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_ar_ready; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_ar_valid; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_ar_bits_id; // @[UserYanker.scala 97:30]
  wire [31:0] axi4yank_auto_in_ar_bits_addr; // @[UserYanker.scala 97:30]
  wire [7:0] axi4yank_auto_in_ar_bits_len; // @[UserYanker.scala 97:30]
  wire [2:0] axi4yank_auto_in_ar_bits_size; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_in_ar_bits_cache; // @[UserYanker.scala 97:30]
  wire [2:0] axi4yank_auto_in_ar_bits_prot; // @[UserYanker.scala 97:30]
  wire [6:0] axi4yank_auto_in_ar_bits_echo_extra_id; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_ar_bits_echo_real_last; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_r_ready; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_r_valid; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_r_bits_id; // @[UserYanker.scala 97:30]
  wire [63:0] axi4yank_auto_in_r_bits_data; // @[UserYanker.scala 97:30]
  wire [1:0] axi4yank_auto_in_r_bits_resp; // @[UserYanker.scala 97:30]
  wire [6:0] axi4yank_auto_in_r_bits_echo_extra_id; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_r_bits_echo_real_last; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_in_r_bits_last; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_aw_ready; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_aw_valid; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_aw_bits_id; // @[UserYanker.scala 97:30]
  wire [31:0] axi4yank_auto_out_aw_bits_addr; // @[UserYanker.scala 97:30]
  wire [7:0] axi4yank_auto_out_aw_bits_len; // @[UserYanker.scala 97:30]
  wire [2:0] axi4yank_auto_out_aw_bits_size; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_out_aw_bits_cache; // @[UserYanker.scala 97:30]
  wire [2:0] axi4yank_auto_out_aw_bits_prot; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_w_ready; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_w_valid; // @[UserYanker.scala 97:30]
  wire [63:0] axi4yank_auto_out_w_bits_data; // @[UserYanker.scala 97:30]
  wire [7:0] axi4yank_auto_out_w_bits_strb; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_w_bits_last; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_b_ready; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_b_valid; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_b_bits_id; // @[UserYanker.scala 97:30]
  wire [1:0] axi4yank_auto_out_b_bits_resp; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_ar_ready; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_ar_valid; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_ar_bits_id; // @[UserYanker.scala 97:30]
  wire [31:0] axi4yank_auto_out_ar_bits_addr; // @[UserYanker.scala 97:30]
  wire [7:0] axi4yank_auto_out_ar_bits_len; // @[UserYanker.scala 97:30]
  wire [2:0] axi4yank_auto_out_ar_bits_size; // @[UserYanker.scala 97:30]
  wire [3:0] axi4yank_auto_out_ar_bits_cache; // @[UserYanker.scala 97:30]
  wire [2:0] axi4yank_auto_out_ar_bits_prot; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_r_ready; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_r_valid; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_r_bits_id; // @[UserYanker.scala 97:30]
  wire [63:0] axi4yank_auto_out_r_bits_data; // @[UserYanker.scala 97:30]
  wire [1:0] axi4yank_auto_out_r_bits_resp; // @[UserYanker.scala 97:30]
  wire  axi4yank_auto_out_r_bits_last; // @[UserYanker.scala 97:30]
  wire  axi4frag_clock; // @[Fragmenter.scala 206:30]
  wire  axi4frag_reset; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_aw_ready; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_aw_valid; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_aw_bits_id; // @[Fragmenter.scala 206:30]
  wire [31:0] axi4frag_auto_in_aw_bits_addr; // @[Fragmenter.scala 206:30]
  wire [7:0] axi4frag_auto_in_aw_bits_len; // @[Fragmenter.scala 206:30]
  wire [2:0] axi4frag_auto_in_aw_bits_size; // @[Fragmenter.scala 206:30]
  wire [1:0] axi4frag_auto_in_aw_bits_burst; // @[Fragmenter.scala 206:30]
  wire [3:0] axi4frag_auto_in_aw_bits_cache; // @[Fragmenter.scala 206:30]
  wire [2:0] axi4frag_auto_in_aw_bits_prot; // @[Fragmenter.scala 206:30]
  wire [6:0] axi4frag_auto_in_aw_bits_echo_extra_id; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_w_ready; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_w_valid; // @[Fragmenter.scala 206:30]
  wire [63:0] axi4frag_auto_in_w_bits_data; // @[Fragmenter.scala 206:30]
  wire [7:0] axi4frag_auto_in_w_bits_strb; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_w_bits_last; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_b_ready; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_b_valid; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_b_bits_id; // @[Fragmenter.scala 206:30]
  wire [1:0] axi4frag_auto_in_b_bits_resp; // @[Fragmenter.scala 206:30]
  wire [6:0] axi4frag_auto_in_b_bits_echo_extra_id; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_ar_ready; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_ar_valid; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_ar_bits_id; // @[Fragmenter.scala 206:30]
  wire [31:0] axi4frag_auto_in_ar_bits_addr; // @[Fragmenter.scala 206:30]
  wire [7:0] axi4frag_auto_in_ar_bits_len; // @[Fragmenter.scala 206:30]
  wire [2:0] axi4frag_auto_in_ar_bits_size; // @[Fragmenter.scala 206:30]
  wire [1:0] axi4frag_auto_in_ar_bits_burst; // @[Fragmenter.scala 206:30]
  wire [3:0] axi4frag_auto_in_ar_bits_cache; // @[Fragmenter.scala 206:30]
  wire [2:0] axi4frag_auto_in_ar_bits_prot; // @[Fragmenter.scala 206:30]
  wire [6:0] axi4frag_auto_in_ar_bits_echo_extra_id; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_r_ready; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_r_valid; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_r_bits_id; // @[Fragmenter.scala 206:30]
  wire [63:0] axi4frag_auto_in_r_bits_data; // @[Fragmenter.scala 206:30]
  wire [1:0] axi4frag_auto_in_r_bits_resp; // @[Fragmenter.scala 206:30]
  wire [6:0] axi4frag_auto_in_r_bits_echo_extra_id; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_r_bits_last; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_aw_ready; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_aw_valid; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_aw_bits_id; // @[Fragmenter.scala 206:30]
  wire [31:0] axi4frag_auto_out_aw_bits_addr; // @[Fragmenter.scala 206:30]
  wire [7:0] axi4frag_auto_out_aw_bits_len; // @[Fragmenter.scala 206:30]
  wire [2:0] axi4frag_auto_out_aw_bits_size; // @[Fragmenter.scala 206:30]
  wire [3:0] axi4frag_auto_out_aw_bits_cache; // @[Fragmenter.scala 206:30]
  wire [2:0] axi4frag_auto_out_aw_bits_prot; // @[Fragmenter.scala 206:30]
  wire [6:0] axi4frag_auto_out_aw_bits_echo_extra_id; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_aw_bits_echo_real_last; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_w_ready; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_w_valid; // @[Fragmenter.scala 206:30]
  wire [63:0] axi4frag_auto_out_w_bits_data; // @[Fragmenter.scala 206:30]
  wire [7:0] axi4frag_auto_out_w_bits_strb; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_w_bits_last; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_b_ready; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_b_valid; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_b_bits_id; // @[Fragmenter.scala 206:30]
  wire [1:0] axi4frag_auto_out_b_bits_resp; // @[Fragmenter.scala 206:30]
  wire [6:0] axi4frag_auto_out_b_bits_echo_extra_id; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_b_bits_echo_real_last; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_ar_ready; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_ar_valid; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_ar_bits_id; // @[Fragmenter.scala 206:30]
  wire [31:0] axi4frag_auto_out_ar_bits_addr; // @[Fragmenter.scala 206:30]
  wire [7:0] axi4frag_auto_out_ar_bits_len; // @[Fragmenter.scala 206:30]
  wire [2:0] axi4frag_auto_out_ar_bits_size; // @[Fragmenter.scala 206:30]
  wire [3:0] axi4frag_auto_out_ar_bits_cache; // @[Fragmenter.scala 206:30]
  wire [2:0] axi4frag_auto_out_ar_bits_prot; // @[Fragmenter.scala 206:30]
  wire [6:0] axi4frag_auto_out_ar_bits_echo_extra_id; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_ar_bits_echo_real_last; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_r_ready; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_r_valid; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_r_bits_id; // @[Fragmenter.scala 206:30]
  wire [63:0] axi4frag_auto_out_r_bits_data; // @[Fragmenter.scala 206:30]
  wire [1:0] axi4frag_auto_out_r_bits_resp; // @[Fragmenter.scala 206:30]
  wire [6:0] axi4frag_auto_out_r_bits_echo_extra_id; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_r_bits_echo_real_last; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_r_bits_last; // @[Fragmenter.scala 206:30]
  wire  axi4index_auto_in_aw_ready; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_aw_valid; // @[IdIndexer.scala 84:31]
  wire [7:0] axi4index_auto_in_aw_bits_id; // @[IdIndexer.scala 84:31]
  wire [31:0] axi4index_auto_in_aw_bits_addr; // @[IdIndexer.scala 84:31]
  wire [7:0] axi4index_auto_in_aw_bits_len; // @[IdIndexer.scala 84:31]
  wire [2:0] axi4index_auto_in_aw_bits_size; // @[IdIndexer.scala 84:31]
  wire [1:0] axi4index_auto_in_aw_bits_burst; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_in_aw_bits_cache; // @[IdIndexer.scala 84:31]
  wire [2:0] axi4index_auto_in_aw_bits_prot; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_w_ready; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_w_valid; // @[IdIndexer.scala 84:31]
  wire [63:0] axi4index_auto_in_w_bits_data; // @[IdIndexer.scala 84:31]
  wire [7:0] axi4index_auto_in_w_bits_strb; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_w_bits_last; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_b_ready; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_b_valid; // @[IdIndexer.scala 84:31]
  wire [7:0] axi4index_auto_in_b_bits_id; // @[IdIndexer.scala 84:31]
  wire [1:0] axi4index_auto_in_b_bits_resp; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_ar_ready; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_ar_valid; // @[IdIndexer.scala 84:31]
  wire [7:0] axi4index_auto_in_ar_bits_id; // @[IdIndexer.scala 84:31]
  wire [31:0] axi4index_auto_in_ar_bits_addr; // @[IdIndexer.scala 84:31]
  wire [7:0] axi4index_auto_in_ar_bits_len; // @[IdIndexer.scala 84:31]
  wire [2:0] axi4index_auto_in_ar_bits_size; // @[IdIndexer.scala 84:31]
  wire [1:0] axi4index_auto_in_ar_bits_burst; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_in_ar_bits_cache; // @[IdIndexer.scala 84:31]
  wire [2:0] axi4index_auto_in_ar_bits_prot; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_r_ready; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_r_valid; // @[IdIndexer.scala 84:31]
  wire [7:0] axi4index_auto_in_r_bits_id; // @[IdIndexer.scala 84:31]
  wire [63:0] axi4index_auto_in_r_bits_data; // @[IdIndexer.scala 84:31]
  wire [1:0] axi4index_auto_in_r_bits_resp; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_in_r_bits_last; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_aw_ready; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_aw_valid; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_aw_bits_id; // @[IdIndexer.scala 84:31]
  wire [31:0] axi4index_auto_out_aw_bits_addr; // @[IdIndexer.scala 84:31]
  wire [7:0] axi4index_auto_out_aw_bits_len; // @[IdIndexer.scala 84:31]
  wire [2:0] axi4index_auto_out_aw_bits_size; // @[IdIndexer.scala 84:31]
  wire [1:0] axi4index_auto_out_aw_bits_burst; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_out_aw_bits_cache; // @[IdIndexer.scala 84:31]
  wire [2:0] axi4index_auto_out_aw_bits_prot; // @[IdIndexer.scala 84:31]
  wire [6:0] axi4index_auto_out_aw_bits_echo_extra_id; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_w_ready; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_w_valid; // @[IdIndexer.scala 84:31]
  wire [63:0] axi4index_auto_out_w_bits_data; // @[IdIndexer.scala 84:31]
  wire [7:0] axi4index_auto_out_w_bits_strb; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_w_bits_last; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_b_ready; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_b_valid; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_b_bits_id; // @[IdIndexer.scala 84:31]
  wire [1:0] axi4index_auto_out_b_bits_resp; // @[IdIndexer.scala 84:31]
  wire [6:0] axi4index_auto_out_b_bits_echo_extra_id; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_ar_ready; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_ar_valid; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_ar_bits_id; // @[IdIndexer.scala 84:31]
  wire [31:0] axi4index_auto_out_ar_bits_addr; // @[IdIndexer.scala 84:31]
  wire [7:0] axi4index_auto_out_ar_bits_len; // @[IdIndexer.scala 84:31]
  wire [2:0] axi4index_auto_out_ar_bits_size; // @[IdIndexer.scala 84:31]
  wire [1:0] axi4index_auto_out_ar_bits_burst; // @[IdIndexer.scala 84:31]
  wire [3:0] axi4index_auto_out_ar_bits_cache; // @[IdIndexer.scala 84:31]
  wire [2:0] axi4index_auto_out_ar_bits_prot; // @[IdIndexer.scala 84:31]
  wire [6:0] axi4index_auto_out_ar_bits_echo_extra_id; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_r_ready; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_r_valid; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_r_bits_id; // @[IdIndexer.scala 84:31]
  wire [63:0] axi4index_auto_out_r_bits_data; // @[IdIndexer.scala 84:31]
  wire [1:0] axi4index_auto_out_r_bits_resp; // @[IdIndexer.scala 84:31]
  wire [6:0] axi4index_auto_out_r_bits_echo_extra_id; // @[IdIndexer.scala 84:31]
  wire  axi4index_auto_out_r_bits_last; // @[IdIndexer.scala 84:31]
  TLBuffer_3 buffer ( // @[Buffer.scala 69:28]
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
  TLFIFOFixer_2 fixer ( // @[FIFOFixer.scala 146:27]
    .clock(fixer_clock),
    .reset(fixer_reset),
    .auto_in_a_ready(fixer_auto_in_a_ready),
    .auto_in_a_valid(fixer_auto_in_a_valid),
    .auto_in_a_bits_opcode(fixer_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(fixer_auto_in_a_bits_param),
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
    .auto_in_a_bits_corrupt(fixer_auto_in_a_bits_corrupt),
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
    .auto_out_a_bits_param(fixer_auto_out_a_bits_param),
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
    .auto_out_a_bits_corrupt(fixer_auto_out_a_bits_corrupt),
    .auto_out_d_ready(fixer_auto_out_d_ready),
    .auto_out_d_valid(fixer_auto_out_d_valid),
    .auto_out_d_bits_opcode(fixer_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(fixer_auto_out_d_bits_size),
    .auto_out_d_bits_source(fixer_auto_out_d_bits_source),
    .auto_out_d_bits_denied(fixer_auto_out_d_bits_denied),
    .auto_out_d_bits_data(fixer_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(fixer_auto_out_d_bits_corrupt)
  );
  AXI4ToTL axi42tl ( // @[ToTL.scala 215:29]
    .clock(axi42tl_clock),
    .reset(axi42tl_reset),
    .auto_in_aw_ready(axi42tl_auto_in_aw_ready),
    .auto_in_aw_valid(axi42tl_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi42tl_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi42tl_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi42tl_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi42tl_auto_in_aw_bits_size),
    .auto_in_aw_bits_cache(axi42tl_auto_in_aw_bits_cache),
    .auto_in_aw_bits_prot(axi42tl_auto_in_aw_bits_prot),
    .auto_in_w_ready(axi42tl_auto_in_w_ready),
    .auto_in_w_valid(axi42tl_auto_in_w_valid),
    .auto_in_w_bits_data(axi42tl_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi42tl_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi42tl_auto_in_w_bits_last),
    .auto_in_b_ready(axi42tl_auto_in_b_ready),
    .auto_in_b_valid(axi42tl_auto_in_b_valid),
    .auto_in_b_bits_id(axi42tl_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi42tl_auto_in_b_bits_resp),
    .auto_in_ar_ready(axi42tl_auto_in_ar_ready),
    .auto_in_ar_valid(axi42tl_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi42tl_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi42tl_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi42tl_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi42tl_auto_in_ar_bits_size),
    .auto_in_ar_bits_cache(axi42tl_auto_in_ar_bits_cache),
    .auto_in_ar_bits_prot(axi42tl_auto_in_ar_bits_prot),
    .auto_in_r_ready(axi42tl_auto_in_r_ready),
    .auto_in_r_valid(axi42tl_auto_in_r_valid),
    .auto_in_r_bits_id(axi42tl_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi42tl_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi42tl_auto_in_r_bits_resp),
    .auto_in_r_bits_last(axi42tl_auto_in_r_bits_last),
    .auto_out_a_ready(axi42tl_auto_out_a_ready),
    .auto_out_a_valid(axi42tl_auto_out_a_valid),
    .auto_out_a_bits_opcode(axi42tl_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(axi42tl_auto_out_a_bits_param),
    .auto_out_a_bits_size(axi42tl_auto_out_a_bits_size),
    .auto_out_a_bits_source(axi42tl_auto_out_a_bits_source),
    .auto_out_a_bits_address(axi42tl_auto_out_a_bits_address),
    .auto_out_a_bits_user_amba_prot_bufferable(axi42tl_auto_out_a_bits_user_amba_prot_bufferable),
    .auto_out_a_bits_user_amba_prot_modifiable(axi42tl_auto_out_a_bits_user_amba_prot_modifiable),
    .auto_out_a_bits_user_amba_prot_readalloc(axi42tl_auto_out_a_bits_user_amba_prot_readalloc),
    .auto_out_a_bits_user_amba_prot_writealloc(axi42tl_auto_out_a_bits_user_amba_prot_writealloc),
    .auto_out_a_bits_user_amba_prot_privileged(axi42tl_auto_out_a_bits_user_amba_prot_privileged),
    .auto_out_a_bits_user_amba_prot_secure(axi42tl_auto_out_a_bits_user_amba_prot_secure),
    .auto_out_a_bits_user_amba_prot_fetch(axi42tl_auto_out_a_bits_user_amba_prot_fetch),
    .auto_out_a_bits_mask(axi42tl_auto_out_a_bits_mask),
    .auto_out_a_bits_data(axi42tl_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(axi42tl_auto_out_a_bits_corrupt),
    .auto_out_d_ready(axi42tl_auto_out_d_ready),
    .auto_out_d_valid(axi42tl_auto_out_d_valid),
    .auto_out_d_bits_opcode(axi42tl_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(axi42tl_auto_out_d_bits_size),
    .auto_out_d_bits_source(axi42tl_auto_out_d_bits_source),
    .auto_out_d_bits_denied(axi42tl_auto_out_d_bits_denied),
    .auto_out_d_bits_data(axi42tl_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(axi42tl_auto_out_d_bits_corrupt)
  );
  AXI4UserYanker_1 axi4yank ( // @[UserYanker.scala 97:30]
    .clock(axi4yank_clock),
    .reset(axi4yank_reset),
    .auto_in_aw_ready(axi4yank_auto_in_aw_ready),
    .auto_in_aw_valid(axi4yank_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4yank_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4yank_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi4yank_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi4yank_auto_in_aw_bits_size),
    .auto_in_aw_bits_cache(axi4yank_auto_in_aw_bits_cache),
    .auto_in_aw_bits_prot(axi4yank_auto_in_aw_bits_prot),
    .auto_in_aw_bits_echo_extra_id(axi4yank_auto_in_aw_bits_echo_extra_id),
    .auto_in_aw_bits_echo_real_last(axi4yank_auto_in_aw_bits_echo_real_last),
    .auto_in_w_ready(axi4yank_auto_in_w_ready),
    .auto_in_w_valid(axi4yank_auto_in_w_valid),
    .auto_in_w_bits_data(axi4yank_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4yank_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4yank_auto_in_w_bits_last),
    .auto_in_b_ready(axi4yank_auto_in_b_ready),
    .auto_in_b_valid(axi4yank_auto_in_b_valid),
    .auto_in_b_bits_id(axi4yank_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4yank_auto_in_b_bits_resp),
    .auto_in_b_bits_echo_extra_id(axi4yank_auto_in_b_bits_echo_extra_id),
    .auto_in_b_bits_echo_real_last(axi4yank_auto_in_b_bits_echo_real_last),
    .auto_in_ar_ready(axi4yank_auto_in_ar_ready),
    .auto_in_ar_valid(axi4yank_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4yank_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4yank_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi4yank_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi4yank_auto_in_ar_bits_size),
    .auto_in_ar_bits_cache(axi4yank_auto_in_ar_bits_cache),
    .auto_in_ar_bits_prot(axi4yank_auto_in_ar_bits_prot),
    .auto_in_ar_bits_echo_extra_id(axi4yank_auto_in_ar_bits_echo_extra_id),
    .auto_in_ar_bits_echo_real_last(axi4yank_auto_in_ar_bits_echo_real_last),
    .auto_in_r_ready(axi4yank_auto_in_r_ready),
    .auto_in_r_valid(axi4yank_auto_in_r_valid),
    .auto_in_r_bits_id(axi4yank_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4yank_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4yank_auto_in_r_bits_resp),
    .auto_in_r_bits_echo_extra_id(axi4yank_auto_in_r_bits_echo_extra_id),
    .auto_in_r_bits_echo_real_last(axi4yank_auto_in_r_bits_echo_real_last),
    .auto_in_r_bits_last(axi4yank_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4yank_auto_out_aw_ready),
    .auto_out_aw_valid(axi4yank_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4yank_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4yank_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(axi4yank_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(axi4yank_auto_out_aw_bits_size),
    .auto_out_aw_bits_cache(axi4yank_auto_out_aw_bits_cache),
    .auto_out_aw_bits_prot(axi4yank_auto_out_aw_bits_prot),
    .auto_out_w_ready(axi4yank_auto_out_w_ready),
    .auto_out_w_valid(axi4yank_auto_out_w_valid),
    .auto_out_w_bits_data(axi4yank_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4yank_auto_out_w_bits_strb),
    .auto_out_w_bits_last(axi4yank_auto_out_w_bits_last),
    .auto_out_b_ready(axi4yank_auto_out_b_ready),
    .auto_out_b_valid(axi4yank_auto_out_b_valid),
    .auto_out_b_bits_id(axi4yank_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4yank_auto_out_b_bits_resp),
    .auto_out_ar_ready(axi4yank_auto_out_ar_ready),
    .auto_out_ar_valid(axi4yank_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4yank_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4yank_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(axi4yank_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(axi4yank_auto_out_ar_bits_size),
    .auto_out_ar_bits_cache(axi4yank_auto_out_ar_bits_cache),
    .auto_out_ar_bits_prot(axi4yank_auto_out_ar_bits_prot),
    .auto_out_r_ready(axi4yank_auto_out_r_ready),
    .auto_out_r_valid(axi4yank_auto_out_r_valid),
    .auto_out_r_bits_id(axi4yank_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4yank_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4yank_auto_out_r_bits_resp),
    .auto_out_r_bits_last(axi4yank_auto_out_r_bits_last)
  );
  AXI4Fragmenter axi4frag ( // @[Fragmenter.scala 206:30]
    .clock(axi4frag_clock),
    .reset(axi4frag_reset),
    .auto_in_aw_ready(axi4frag_auto_in_aw_ready),
    .auto_in_aw_valid(axi4frag_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4frag_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4frag_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi4frag_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi4frag_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(axi4frag_auto_in_aw_bits_burst),
    .auto_in_aw_bits_cache(axi4frag_auto_in_aw_bits_cache),
    .auto_in_aw_bits_prot(axi4frag_auto_in_aw_bits_prot),
    .auto_in_aw_bits_echo_extra_id(axi4frag_auto_in_aw_bits_echo_extra_id),
    .auto_in_w_ready(axi4frag_auto_in_w_ready),
    .auto_in_w_valid(axi4frag_auto_in_w_valid),
    .auto_in_w_bits_data(axi4frag_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4frag_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4frag_auto_in_w_bits_last),
    .auto_in_b_ready(axi4frag_auto_in_b_ready),
    .auto_in_b_valid(axi4frag_auto_in_b_valid),
    .auto_in_b_bits_id(axi4frag_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4frag_auto_in_b_bits_resp),
    .auto_in_b_bits_echo_extra_id(axi4frag_auto_in_b_bits_echo_extra_id),
    .auto_in_ar_ready(axi4frag_auto_in_ar_ready),
    .auto_in_ar_valid(axi4frag_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4frag_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4frag_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi4frag_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi4frag_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(axi4frag_auto_in_ar_bits_burst),
    .auto_in_ar_bits_cache(axi4frag_auto_in_ar_bits_cache),
    .auto_in_ar_bits_prot(axi4frag_auto_in_ar_bits_prot),
    .auto_in_ar_bits_echo_extra_id(axi4frag_auto_in_ar_bits_echo_extra_id),
    .auto_in_r_ready(axi4frag_auto_in_r_ready),
    .auto_in_r_valid(axi4frag_auto_in_r_valid),
    .auto_in_r_bits_id(axi4frag_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4frag_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4frag_auto_in_r_bits_resp),
    .auto_in_r_bits_echo_extra_id(axi4frag_auto_in_r_bits_echo_extra_id),
    .auto_in_r_bits_last(axi4frag_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4frag_auto_out_aw_ready),
    .auto_out_aw_valid(axi4frag_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4frag_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4frag_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(axi4frag_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(axi4frag_auto_out_aw_bits_size),
    .auto_out_aw_bits_cache(axi4frag_auto_out_aw_bits_cache),
    .auto_out_aw_bits_prot(axi4frag_auto_out_aw_bits_prot),
    .auto_out_aw_bits_echo_extra_id(axi4frag_auto_out_aw_bits_echo_extra_id),
    .auto_out_aw_bits_echo_real_last(axi4frag_auto_out_aw_bits_echo_real_last),
    .auto_out_w_ready(axi4frag_auto_out_w_ready),
    .auto_out_w_valid(axi4frag_auto_out_w_valid),
    .auto_out_w_bits_data(axi4frag_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4frag_auto_out_w_bits_strb),
    .auto_out_w_bits_last(axi4frag_auto_out_w_bits_last),
    .auto_out_b_ready(axi4frag_auto_out_b_ready),
    .auto_out_b_valid(axi4frag_auto_out_b_valid),
    .auto_out_b_bits_id(axi4frag_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4frag_auto_out_b_bits_resp),
    .auto_out_b_bits_echo_extra_id(axi4frag_auto_out_b_bits_echo_extra_id),
    .auto_out_b_bits_echo_real_last(axi4frag_auto_out_b_bits_echo_real_last),
    .auto_out_ar_ready(axi4frag_auto_out_ar_ready),
    .auto_out_ar_valid(axi4frag_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4frag_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4frag_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(axi4frag_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(axi4frag_auto_out_ar_bits_size),
    .auto_out_ar_bits_cache(axi4frag_auto_out_ar_bits_cache),
    .auto_out_ar_bits_prot(axi4frag_auto_out_ar_bits_prot),
    .auto_out_ar_bits_echo_extra_id(axi4frag_auto_out_ar_bits_echo_extra_id),
    .auto_out_ar_bits_echo_real_last(axi4frag_auto_out_ar_bits_echo_real_last),
    .auto_out_r_ready(axi4frag_auto_out_r_ready),
    .auto_out_r_valid(axi4frag_auto_out_r_valid),
    .auto_out_r_bits_id(axi4frag_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4frag_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4frag_auto_out_r_bits_resp),
    .auto_out_r_bits_echo_extra_id(axi4frag_auto_out_r_bits_echo_extra_id),
    .auto_out_r_bits_echo_real_last(axi4frag_auto_out_r_bits_echo_real_last),
    .auto_out_r_bits_last(axi4frag_auto_out_r_bits_last)
  );
  AXI4IdIndexer_1 axi4index ( // @[IdIndexer.scala 84:31]
    .auto_in_aw_ready(axi4index_auto_in_aw_ready),
    .auto_in_aw_valid(axi4index_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4index_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4index_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi4index_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi4index_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(axi4index_auto_in_aw_bits_burst),
    .auto_in_aw_bits_cache(axi4index_auto_in_aw_bits_cache),
    .auto_in_aw_bits_prot(axi4index_auto_in_aw_bits_prot),
    .auto_in_w_ready(axi4index_auto_in_w_ready),
    .auto_in_w_valid(axi4index_auto_in_w_valid),
    .auto_in_w_bits_data(axi4index_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4index_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4index_auto_in_w_bits_last),
    .auto_in_b_ready(axi4index_auto_in_b_ready),
    .auto_in_b_valid(axi4index_auto_in_b_valid),
    .auto_in_b_bits_id(axi4index_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4index_auto_in_b_bits_resp),
    .auto_in_ar_ready(axi4index_auto_in_ar_ready),
    .auto_in_ar_valid(axi4index_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4index_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4index_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi4index_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi4index_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(axi4index_auto_in_ar_bits_burst),
    .auto_in_ar_bits_cache(axi4index_auto_in_ar_bits_cache),
    .auto_in_ar_bits_prot(axi4index_auto_in_ar_bits_prot),
    .auto_in_r_ready(axi4index_auto_in_r_ready),
    .auto_in_r_valid(axi4index_auto_in_r_valid),
    .auto_in_r_bits_id(axi4index_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4index_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4index_auto_in_r_bits_resp),
    .auto_in_r_bits_last(axi4index_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4index_auto_out_aw_ready),
    .auto_out_aw_valid(axi4index_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4index_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4index_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(axi4index_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(axi4index_auto_out_aw_bits_size),
    .auto_out_aw_bits_burst(axi4index_auto_out_aw_bits_burst),
    .auto_out_aw_bits_cache(axi4index_auto_out_aw_bits_cache),
    .auto_out_aw_bits_prot(axi4index_auto_out_aw_bits_prot),
    .auto_out_aw_bits_echo_extra_id(axi4index_auto_out_aw_bits_echo_extra_id),
    .auto_out_w_ready(axi4index_auto_out_w_ready),
    .auto_out_w_valid(axi4index_auto_out_w_valid),
    .auto_out_w_bits_data(axi4index_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4index_auto_out_w_bits_strb),
    .auto_out_w_bits_last(axi4index_auto_out_w_bits_last),
    .auto_out_b_ready(axi4index_auto_out_b_ready),
    .auto_out_b_valid(axi4index_auto_out_b_valid),
    .auto_out_b_bits_id(axi4index_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4index_auto_out_b_bits_resp),
    .auto_out_b_bits_echo_extra_id(axi4index_auto_out_b_bits_echo_extra_id),
    .auto_out_ar_ready(axi4index_auto_out_ar_ready),
    .auto_out_ar_valid(axi4index_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4index_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4index_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(axi4index_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(axi4index_auto_out_ar_bits_size),
    .auto_out_ar_bits_burst(axi4index_auto_out_ar_bits_burst),
    .auto_out_ar_bits_cache(axi4index_auto_out_ar_bits_cache),
    .auto_out_ar_bits_prot(axi4index_auto_out_ar_bits_prot),
    .auto_out_ar_bits_echo_extra_id(axi4index_auto_out_ar_bits_echo_extra_id),
    .auto_out_r_ready(axi4index_auto_out_r_ready),
    .auto_out_r_valid(axi4index_auto_out_r_valid),
    .auto_out_r_bits_id(axi4index_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4index_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4index_auto_out_r_bits_resp),
    .auto_out_r_bits_echo_extra_id(axi4index_auto_out_r_bits_echo_extra_id),
    .auto_out_r_bits_last(axi4index_auto_out_r_bits_last)
  );
  assign widget_auto_in_a_ready = widget_auto_out_a_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign widget_auto_in_d_valid = widget_auto_out_d_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign widget_auto_in_d_bits_opcode = widget_auto_out_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign widget_auto_in_d_bits_size = widget_auto_out_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign widget_auto_in_d_bits_source = widget_auto_out_d_bits_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign widget_auto_in_d_bits_denied = widget_auto_out_d_bits_denied; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign widget_auto_in_d_bits_data = widget_auto_out_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign widget_auto_in_d_bits_corrupt = widget_auto_out_d_bits_corrupt; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign widget_auto_out_a_valid = widget_auto_in_a_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_opcode = widget_auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_param = widget_auto_in_a_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_size = widget_auto_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_source = widget_auto_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_address = widget_auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_user_amba_prot_bufferable = widget_auto_in_a_bits_user_amba_prot_bufferable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_user_amba_prot_modifiable = widget_auto_in_a_bits_user_amba_prot_modifiable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_user_amba_prot_readalloc = widget_auto_in_a_bits_user_amba_prot_readalloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_user_amba_prot_writealloc = widget_auto_in_a_bits_user_amba_prot_writealloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_user_amba_prot_privileged = widget_auto_in_a_bits_user_amba_prot_privileged; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_user_amba_prot_secure = widget_auto_in_a_bits_user_amba_prot_secure; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_user_amba_prot_fetch = widget_auto_in_a_bits_user_amba_prot_fetch; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_mask = widget_auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_data = widget_auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_a_bits_corrupt = widget_auto_in_a_bits_corrupt; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign widget_auto_out_d_ready = widget_auto_in_d_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_axi4index_in_aw_ready = axi4index_auto_in_aw_ready; // @[LazyModule.scala 312:16]
  assign auto_axi4index_in_w_ready = axi4index_auto_in_w_ready; // @[LazyModule.scala 312:16]
  assign auto_axi4index_in_b_valid = axi4index_auto_in_b_valid; // @[LazyModule.scala 312:16]
  assign auto_axi4index_in_b_bits_id = axi4index_auto_in_b_bits_id; // @[LazyModule.scala 312:16]
  assign auto_axi4index_in_b_bits_resp = axi4index_auto_in_b_bits_resp; // @[LazyModule.scala 312:16]
  assign auto_axi4index_in_ar_ready = axi4index_auto_in_ar_ready; // @[LazyModule.scala 312:16]
  assign auto_axi4index_in_r_valid = axi4index_auto_in_r_valid; // @[LazyModule.scala 312:16]
  assign auto_axi4index_in_r_bits_id = axi4index_auto_in_r_bits_id; // @[LazyModule.scala 312:16]
  assign auto_axi4index_in_r_bits_data = axi4index_auto_in_r_bits_data; // @[LazyModule.scala 312:16]
  assign auto_axi4index_in_r_bits_resp = axi4index_auto_in_r_bits_resp; // @[LazyModule.scala 312:16]
  assign auto_axi4index_in_r_bits_last = axi4index_auto_in_r_bits_last; // @[LazyModule.scala 312:16]
  assign auto_tl_out_a_valid = buffer_auto_out_a_valid; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_out_a_bits_opcode = buffer_auto_out_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_out_a_bits_param = buffer_auto_out_a_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_out_a_bits_size = buffer_auto_out_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_out_a_bits_source = buffer_auto_out_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_out_a_bits_address = buffer_auto_out_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_out_a_bits_user_amba_prot_bufferable = buffer_auto_out_a_bits_user_amba_prot_bufferable; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_out_a_bits_user_amba_prot_modifiable = buffer_auto_out_a_bits_user_amba_prot_modifiable; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_out_a_bits_user_amba_prot_readalloc = buffer_auto_out_a_bits_user_amba_prot_readalloc; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_out_a_bits_user_amba_prot_writealloc = buffer_auto_out_a_bits_user_amba_prot_writealloc; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_out_a_bits_user_amba_prot_privileged = buffer_auto_out_a_bits_user_amba_prot_privileged; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_out_a_bits_user_amba_prot_secure = buffer_auto_out_a_bits_user_amba_prot_secure; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_out_a_bits_user_amba_prot_fetch = buffer_auto_out_a_bits_user_amba_prot_fetch; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_out_a_bits_mask = buffer_auto_out_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_out_a_bits_data = buffer_auto_out_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_out_a_bits_corrupt = buffer_auto_out_a_bits_corrupt; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign auto_tl_out_d_ready = buffer_auto_out_d_ready; // @[Nodes.scala 1216:84 LazyModule.scala 299:16]
  assign buffer_clock = clock;
  assign buffer_reset = reset;
  assign buffer_auto_in_a_valid = fixer_auto_out_a_valid; // @[LazyModule.scala 299:16]
  assign buffer_auto_in_a_bits_opcode = fixer_auto_out_a_bits_opcode; // @[LazyModule.scala 299:16]
  assign buffer_auto_in_a_bits_param = fixer_auto_out_a_bits_param; // @[LazyModule.scala 299:16]
  assign buffer_auto_in_a_bits_size = fixer_auto_out_a_bits_size; // @[LazyModule.scala 299:16]
  assign buffer_auto_in_a_bits_source = fixer_auto_out_a_bits_source; // @[LazyModule.scala 299:16]
  assign buffer_auto_in_a_bits_address = fixer_auto_out_a_bits_address; // @[LazyModule.scala 299:16]
  assign buffer_auto_in_a_bits_user_amba_prot_bufferable = fixer_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 299:16]
  assign buffer_auto_in_a_bits_user_amba_prot_modifiable = fixer_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 299:16]
  assign buffer_auto_in_a_bits_user_amba_prot_readalloc = fixer_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 299:16]
  assign buffer_auto_in_a_bits_user_amba_prot_writealloc = fixer_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 299:16]
  assign buffer_auto_in_a_bits_user_amba_prot_privileged = fixer_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 299:16]
  assign buffer_auto_in_a_bits_user_amba_prot_secure = fixer_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 299:16]
  assign buffer_auto_in_a_bits_user_amba_prot_fetch = fixer_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 299:16]
  assign buffer_auto_in_a_bits_mask = fixer_auto_out_a_bits_mask; // @[LazyModule.scala 299:16]
  assign buffer_auto_in_a_bits_data = fixer_auto_out_a_bits_data; // @[LazyModule.scala 299:16]
  assign buffer_auto_in_a_bits_corrupt = fixer_auto_out_a_bits_corrupt; // @[LazyModule.scala 299:16]
  assign buffer_auto_in_d_ready = fixer_auto_out_d_ready; // @[LazyModule.scala 299:16]
  assign buffer_auto_out_a_ready = auto_tl_out_a_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign buffer_auto_out_d_valid = auto_tl_out_d_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign buffer_auto_out_d_bits_opcode = auto_tl_out_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign buffer_auto_out_d_bits_size = auto_tl_out_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign buffer_auto_out_d_bits_source = auto_tl_out_d_bits_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign buffer_auto_out_d_bits_denied = auto_tl_out_d_bits_denied; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign buffer_auto_out_d_bits_data = auto_tl_out_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign buffer_auto_out_d_bits_corrupt = auto_tl_out_d_bits_corrupt; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign fixer_clock = clock;
  assign fixer_reset = reset;
  assign fixer_auto_in_a_valid = widget_auto_out_a_valid; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_a_bits_opcode = widget_auto_out_a_bits_opcode; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_a_bits_param = widget_auto_out_a_bits_param; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_a_bits_size = widget_auto_out_a_bits_size; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_a_bits_source = widget_auto_out_a_bits_source; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_a_bits_address = widget_auto_out_a_bits_address; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_a_bits_user_amba_prot_bufferable = widget_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_a_bits_user_amba_prot_modifiable = widget_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_a_bits_user_amba_prot_readalloc = widget_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_a_bits_user_amba_prot_writealloc = widget_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_a_bits_user_amba_prot_privileged = widget_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_a_bits_user_amba_prot_secure = widget_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_a_bits_user_amba_prot_fetch = widget_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_a_bits_mask = widget_auto_out_a_bits_mask; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_a_bits_data = widget_auto_out_a_bits_data; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_a_bits_corrupt = widget_auto_out_a_bits_corrupt; // @[LazyModule.scala 299:16]
  assign fixer_auto_in_d_ready = widget_auto_out_d_ready; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_a_ready = buffer_auto_in_a_ready; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_d_valid = buffer_auto_in_d_valid; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_d_bits_opcode = buffer_auto_in_d_bits_opcode; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_d_bits_size = buffer_auto_in_d_bits_size; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_d_bits_source = buffer_auto_in_d_bits_source; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_d_bits_denied = buffer_auto_in_d_bits_denied; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_d_bits_data = buffer_auto_in_d_bits_data; // @[LazyModule.scala 299:16]
  assign fixer_auto_out_d_bits_corrupt = buffer_auto_in_d_bits_corrupt; // @[LazyModule.scala 299:16]
  assign widget_auto_in_a_valid = axi42tl_auto_out_a_valid; // @[LazyModule.scala 299:16]
  assign widget_auto_in_a_bits_opcode = axi42tl_auto_out_a_bits_opcode; // @[LazyModule.scala 299:16]
  assign widget_auto_in_a_bits_param = axi42tl_auto_out_a_bits_param; // @[LazyModule.scala 299:16]
  assign widget_auto_in_a_bits_size = axi42tl_auto_out_a_bits_size; // @[LazyModule.scala 299:16]
  assign widget_auto_in_a_bits_source = axi42tl_auto_out_a_bits_source; // @[LazyModule.scala 299:16]
  assign widget_auto_in_a_bits_address = axi42tl_auto_out_a_bits_address; // @[LazyModule.scala 299:16]
  assign widget_auto_in_a_bits_user_amba_prot_bufferable = axi42tl_auto_out_a_bits_user_amba_prot_bufferable; // @[LazyModule.scala 299:16]
  assign widget_auto_in_a_bits_user_amba_prot_modifiable = axi42tl_auto_out_a_bits_user_amba_prot_modifiable; // @[LazyModule.scala 299:16]
  assign widget_auto_in_a_bits_user_amba_prot_readalloc = axi42tl_auto_out_a_bits_user_amba_prot_readalloc; // @[LazyModule.scala 299:16]
  assign widget_auto_in_a_bits_user_amba_prot_writealloc = axi42tl_auto_out_a_bits_user_amba_prot_writealloc; // @[LazyModule.scala 299:16]
  assign widget_auto_in_a_bits_user_amba_prot_privileged = axi42tl_auto_out_a_bits_user_amba_prot_privileged; // @[LazyModule.scala 299:16]
  assign widget_auto_in_a_bits_user_amba_prot_secure = axi42tl_auto_out_a_bits_user_amba_prot_secure; // @[LazyModule.scala 299:16]
  assign widget_auto_in_a_bits_user_amba_prot_fetch = axi42tl_auto_out_a_bits_user_amba_prot_fetch; // @[LazyModule.scala 299:16]
  assign widget_auto_in_a_bits_mask = axi42tl_auto_out_a_bits_mask; // @[LazyModule.scala 299:16]
  assign widget_auto_in_a_bits_data = axi42tl_auto_out_a_bits_data; // @[LazyModule.scala 299:16]
  assign widget_auto_in_a_bits_corrupt = axi42tl_auto_out_a_bits_corrupt; // @[LazyModule.scala 299:16]
  assign widget_auto_in_d_ready = axi42tl_auto_out_d_ready; // @[LazyModule.scala 299:16]
  assign widget_auto_out_a_ready = fixer_auto_in_a_ready; // @[LazyModule.scala 299:16]
  assign widget_auto_out_d_valid = fixer_auto_in_d_valid; // @[LazyModule.scala 299:16]
  assign widget_auto_out_d_bits_opcode = fixer_auto_in_d_bits_opcode; // @[LazyModule.scala 299:16]
  assign widget_auto_out_d_bits_size = fixer_auto_in_d_bits_size; // @[LazyModule.scala 299:16]
  assign widget_auto_out_d_bits_source = fixer_auto_in_d_bits_source; // @[LazyModule.scala 299:16]
  assign widget_auto_out_d_bits_denied = fixer_auto_in_d_bits_denied; // @[LazyModule.scala 299:16]
  assign widget_auto_out_d_bits_data = fixer_auto_in_d_bits_data; // @[LazyModule.scala 299:16]
  assign widget_auto_out_d_bits_corrupt = fixer_auto_in_d_bits_corrupt; // @[LazyModule.scala 299:16]
  assign axi42tl_clock = clock;
  assign axi42tl_reset = reset;
  assign axi42tl_auto_in_aw_valid = axi4yank_auto_out_aw_valid; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_in_aw_bits_id = axi4yank_auto_out_aw_bits_id; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_in_aw_bits_addr = axi4yank_auto_out_aw_bits_addr; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_in_aw_bits_len = axi4yank_auto_out_aw_bits_len; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_in_aw_bits_size = axi4yank_auto_out_aw_bits_size; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_in_aw_bits_cache = axi4yank_auto_out_aw_bits_cache; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_in_aw_bits_prot = axi4yank_auto_out_aw_bits_prot; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_in_w_valid = axi4yank_auto_out_w_valid; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_in_w_bits_data = axi4yank_auto_out_w_bits_data; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_in_w_bits_strb = axi4yank_auto_out_w_bits_strb; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_in_w_bits_last = axi4yank_auto_out_w_bits_last; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_in_b_ready = axi4yank_auto_out_b_ready; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_in_ar_valid = axi4yank_auto_out_ar_valid; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_in_ar_bits_id = axi4yank_auto_out_ar_bits_id; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_in_ar_bits_addr = axi4yank_auto_out_ar_bits_addr; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_in_ar_bits_len = axi4yank_auto_out_ar_bits_len; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_in_ar_bits_size = axi4yank_auto_out_ar_bits_size; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_in_ar_bits_cache = axi4yank_auto_out_ar_bits_cache; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_in_ar_bits_prot = axi4yank_auto_out_ar_bits_prot; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_in_r_ready = axi4yank_auto_out_r_ready; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_out_a_ready = widget_auto_in_a_ready; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_out_d_valid = widget_auto_in_d_valid; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_out_d_bits_opcode = widget_auto_in_d_bits_opcode; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_out_d_bits_size = widget_auto_in_d_bits_size; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_out_d_bits_source = widget_auto_in_d_bits_source; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_out_d_bits_denied = widget_auto_in_d_bits_denied; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_out_d_bits_data = widget_auto_in_d_bits_data; // @[LazyModule.scala 299:16]
  assign axi42tl_auto_out_d_bits_corrupt = widget_auto_in_d_bits_corrupt; // @[LazyModule.scala 299:16]
  assign axi4yank_clock = clock;
  assign axi4yank_reset = reset;
  assign axi4yank_auto_in_aw_valid = axi4frag_auto_out_aw_valid; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_aw_bits_id = axi4frag_auto_out_aw_bits_id; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_aw_bits_addr = axi4frag_auto_out_aw_bits_addr; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_aw_bits_len = axi4frag_auto_out_aw_bits_len; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_aw_bits_size = axi4frag_auto_out_aw_bits_size; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_aw_bits_cache = axi4frag_auto_out_aw_bits_cache; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_aw_bits_prot = axi4frag_auto_out_aw_bits_prot; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_aw_bits_echo_extra_id = axi4frag_auto_out_aw_bits_echo_extra_id; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_aw_bits_echo_real_last = axi4frag_auto_out_aw_bits_echo_real_last; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_w_valid = axi4frag_auto_out_w_valid; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_w_bits_data = axi4frag_auto_out_w_bits_data; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_w_bits_strb = axi4frag_auto_out_w_bits_strb; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_w_bits_last = axi4frag_auto_out_w_bits_last; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_b_ready = axi4frag_auto_out_b_ready; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_valid = axi4frag_auto_out_ar_valid; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_bits_id = axi4frag_auto_out_ar_bits_id; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_bits_addr = axi4frag_auto_out_ar_bits_addr; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_bits_len = axi4frag_auto_out_ar_bits_len; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_bits_size = axi4frag_auto_out_ar_bits_size; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_bits_cache = axi4frag_auto_out_ar_bits_cache; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_bits_prot = axi4frag_auto_out_ar_bits_prot; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_bits_echo_extra_id = axi4frag_auto_out_ar_bits_echo_extra_id; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_ar_bits_echo_real_last = axi4frag_auto_out_ar_bits_echo_real_last; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_in_r_ready = axi4frag_auto_out_r_ready; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_out_aw_ready = axi42tl_auto_in_aw_ready; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_out_w_ready = axi42tl_auto_in_w_ready; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_out_b_valid = axi42tl_auto_in_b_valid; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_out_b_bits_id = axi42tl_auto_in_b_bits_id; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_out_b_bits_resp = axi42tl_auto_in_b_bits_resp; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_out_ar_ready = axi42tl_auto_in_ar_ready; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_out_r_valid = axi42tl_auto_in_r_valid; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_out_r_bits_id = axi42tl_auto_in_r_bits_id; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_out_r_bits_data = axi42tl_auto_in_r_bits_data; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_out_r_bits_resp = axi42tl_auto_in_r_bits_resp; // @[LazyModule.scala 299:16]
  assign axi4yank_auto_out_r_bits_last = axi42tl_auto_in_r_bits_last; // @[LazyModule.scala 299:16]
  assign axi4frag_clock = clock;
  assign axi4frag_reset = reset;
  assign axi4frag_auto_in_aw_valid = axi4index_auto_out_aw_valid; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_aw_bits_id = axi4index_auto_out_aw_bits_id; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_aw_bits_addr = axi4index_auto_out_aw_bits_addr; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_aw_bits_len = axi4index_auto_out_aw_bits_len; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_aw_bits_size = axi4index_auto_out_aw_bits_size; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_aw_bits_burst = axi4index_auto_out_aw_bits_burst; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_aw_bits_cache = axi4index_auto_out_aw_bits_cache; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_aw_bits_prot = axi4index_auto_out_aw_bits_prot; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_aw_bits_echo_extra_id = axi4index_auto_out_aw_bits_echo_extra_id; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_w_valid = axi4index_auto_out_w_valid; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_w_bits_data = axi4index_auto_out_w_bits_data; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_w_bits_strb = axi4index_auto_out_w_bits_strb; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_w_bits_last = axi4index_auto_out_w_bits_last; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_b_ready = axi4index_auto_out_b_ready; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_ar_valid = axi4index_auto_out_ar_valid; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_ar_bits_id = axi4index_auto_out_ar_bits_id; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_ar_bits_addr = axi4index_auto_out_ar_bits_addr; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_ar_bits_len = axi4index_auto_out_ar_bits_len; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_ar_bits_size = axi4index_auto_out_ar_bits_size; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_ar_bits_burst = axi4index_auto_out_ar_bits_burst; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_ar_bits_cache = axi4index_auto_out_ar_bits_cache; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_ar_bits_prot = axi4index_auto_out_ar_bits_prot; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_ar_bits_echo_extra_id = axi4index_auto_out_ar_bits_echo_extra_id; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_in_r_ready = axi4index_auto_out_r_ready; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_aw_ready = axi4yank_auto_in_aw_ready; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_w_ready = axi4yank_auto_in_w_ready; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_b_valid = axi4yank_auto_in_b_valid; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_b_bits_id = axi4yank_auto_in_b_bits_id; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_b_bits_resp = axi4yank_auto_in_b_bits_resp; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_b_bits_echo_extra_id = axi4yank_auto_in_b_bits_echo_extra_id; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_b_bits_echo_real_last = axi4yank_auto_in_b_bits_echo_real_last; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_ar_ready = axi4yank_auto_in_ar_ready; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_r_valid = axi4yank_auto_in_r_valid; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_r_bits_id = axi4yank_auto_in_r_bits_id; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_r_bits_data = axi4yank_auto_in_r_bits_data; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_r_bits_resp = axi4yank_auto_in_r_bits_resp; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_r_bits_echo_extra_id = axi4yank_auto_in_r_bits_echo_extra_id; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_r_bits_echo_real_last = axi4yank_auto_in_r_bits_echo_real_last; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_r_bits_last = axi4yank_auto_in_r_bits_last; // @[LazyModule.scala 299:16]
  assign axi4index_auto_in_aw_valid = auto_axi4index_in_aw_valid; // @[LazyModule.scala 312:16]
  assign axi4index_auto_in_aw_bits_id = auto_axi4index_in_aw_bits_id; // @[LazyModule.scala 312:16]
  assign axi4index_auto_in_aw_bits_addr = auto_axi4index_in_aw_bits_addr; // @[LazyModule.scala 312:16]
  assign axi4index_auto_in_aw_bits_len = auto_axi4index_in_aw_bits_len; // @[LazyModule.scala 312:16]
  assign axi4index_auto_in_aw_bits_size = auto_axi4index_in_aw_bits_size; // @[LazyModule.scala 312:16]
  assign axi4index_auto_in_aw_bits_burst = auto_axi4index_in_aw_bits_burst; // @[LazyModule.scala 312:16]
  assign axi4index_auto_in_aw_bits_cache = auto_axi4index_in_aw_bits_cache; // @[LazyModule.scala 312:16]
  assign axi4index_auto_in_aw_bits_prot = auto_axi4index_in_aw_bits_prot; // @[LazyModule.scala 312:16]
  assign axi4index_auto_in_w_valid = auto_axi4index_in_w_valid; // @[LazyModule.scala 312:16]
  assign axi4index_auto_in_w_bits_data = auto_axi4index_in_w_bits_data; // @[LazyModule.scala 312:16]
  assign axi4index_auto_in_w_bits_strb = auto_axi4index_in_w_bits_strb; // @[LazyModule.scala 312:16]
  assign axi4index_auto_in_w_bits_last = auto_axi4index_in_w_bits_last; // @[LazyModule.scala 312:16]
  assign axi4index_auto_in_b_ready = auto_axi4index_in_b_ready; // @[LazyModule.scala 312:16]
  assign axi4index_auto_in_ar_valid = auto_axi4index_in_ar_valid; // @[LazyModule.scala 312:16]
  assign axi4index_auto_in_ar_bits_id = auto_axi4index_in_ar_bits_id; // @[LazyModule.scala 312:16]
  assign axi4index_auto_in_ar_bits_addr = auto_axi4index_in_ar_bits_addr; // @[LazyModule.scala 312:16]
  assign axi4index_auto_in_ar_bits_len = auto_axi4index_in_ar_bits_len; // @[LazyModule.scala 312:16]
  assign axi4index_auto_in_ar_bits_size = auto_axi4index_in_ar_bits_size; // @[LazyModule.scala 312:16]
  assign axi4index_auto_in_ar_bits_burst = auto_axi4index_in_ar_bits_burst; // @[LazyModule.scala 312:16]
  assign axi4index_auto_in_ar_bits_cache = auto_axi4index_in_ar_bits_cache; // @[LazyModule.scala 312:16]
  assign axi4index_auto_in_ar_bits_prot = auto_axi4index_in_ar_bits_prot; // @[LazyModule.scala 312:16]
  assign axi4index_auto_in_r_ready = auto_axi4index_in_r_ready; // @[LazyModule.scala 312:16]
  assign axi4index_auto_out_aw_ready = axi4frag_auto_in_aw_ready; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_w_ready = axi4frag_auto_in_w_ready; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_b_valid = axi4frag_auto_in_b_valid; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_b_bits_id = axi4frag_auto_in_b_bits_id; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_b_bits_resp = axi4frag_auto_in_b_bits_resp; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_b_bits_echo_extra_id = axi4frag_auto_in_b_bits_echo_extra_id; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_ar_ready = axi4frag_auto_in_ar_ready; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_r_valid = axi4frag_auto_in_r_valid; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_r_bits_id = axi4frag_auto_in_r_bits_id; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_r_bits_data = axi4frag_auto_in_r_bits_data; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_r_bits_resp = axi4frag_auto_in_r_bits_resp; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_r_bits_echo_extra_id = axi4frag_auto_in_r_bits_echo_extra_id; // @[LazyModule.scala 299:16]
  assign axi4index_auto_out_r_bits_last = axi4frag_auto_in_r_bits_last; // @[LazyModule.scala 299:16]
endmodule
