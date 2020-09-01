module SimAXIMem(
  input         clock,
  input         reset,
  output        io_axi4_0_aw_ready,
  input         io_axi4_0_aw_valid,
  input  [3:0]  io_axi4_0_aw_bits_id,
  input  [27:0] io_axi4_0_aw_bits_addr,
  input  [7:0]  io_axi4_0_aw_bits_len,
  input  [2:0]  io_axi4_0_aw_bits_size,
  input  [1:0]  io_axi4_0_aw_bits_burst,
  output        io_axi4_0_w_ready,
  input         io_axi4_0_w_valid,
  input  [63:0] io_axi4_0_w_bits_data,
  input  [7:0]  io_axi4_0_w_bits_strb,
  input         io_axi4_0_w_bits_last,
  input         io_axi4_0_b_ready,
  output        io_axi4_0_b_valid,
  output [3:0]  io_axi4_0_b_bits_id,
  output [1:0]  io_axi4_0_b_bits_resp,
  output        io_axi4_0_ar_ready,
  input         io_axi4_0_ar_valid,
  input  [3:0]  io_axi4_0_ar_bits_id,
  input  [27:0] io_axi4_0_ar_bits_addr,
  input  [7:0]  io_axi4_0_ar_bits_len,
  input  [2:0]  io_axi4_0_ar_bits_size,
  input  [1:0]  io_axi4_0_ar_bits_burst,
  input         io_axi4_0_r_ready,
  output        io_axi4_0_r_valid,
  output [3:0]  io_axi4_0_r_bits_id,
  output [63:0] io_axi4_0_r_bits_data,
  output [1:0]  io_axi4_0_r_bits_resp,
  output        io_axi4_0_r_bits_last
);
  wire  srams_clock; // @[SimAXIMem.scala 16:15]
  wire  srams_reset; // @[SimAXIMem.scala 16:15]
  wire  srams_auto_in_aw_ready; // @[SimAXIMem.scala 16:15]
  wire  srams_auto_in_aw_valid; // @[SimAXIMem.scala 16:15]
  wire [3:0] srams_auto_in_aw_bits_id; // @[SimAXIMem.scala 16:15]
  wire [27:0] srams_auto_in_aw_bits_addr; // @[SimAXIMem.scala 16:15]
  wire  srams_auto_in_aw_bits_echo_real_last; // @[SimAXIMem.scala 16:15]
  wire  srams_auto_in_w_ready; // @[SimAXIMem.scala 16:15]
  wire  srams_auto_in_w_valid; // @[SimAXIMem.scala 16:15]
  wire [63:0] srams_auto_in_w_bits_data; // @[SimAXIMem.scala 16:15]
  wire [7:0] srams_auto_in_w_bits_strb; // @[SimAXIMem.scala 16:15]
  wire  srams_auto_in_b_ready; // @[SimAXIMem.scala 16:15]
  wire  srams_auto_in_b_valid; // @[SimAXIMem.scala 16:15]
  wire [3:0] srams_auto_in_b_bits_id; // @[SimAXIMem.scala 16:15]
  wire [1:0] srams_auto_in_b_bits_resp; // @[SimAXIMem.scala 16:15]
  wire  srams_auto_in_b_bits_echo_real_last; // @[SimAXIMem.scala 16:15]
  wire  srams_auto_in_ar_ready; // @[SimAXIMem.scala 16:15]
  wire  srams_auto_in_ar_valid; // @[SimAXIMem.scala 16:15]
  wire [3:0] srams_auto_in_ar_bits_id; // @[SimAXIMem.scala 16:15]
  wire [27:0] srams_auto_in_ar_bits_addr; // @[SimAXIMem.scala 16:15]
  wire  srams_auto_in_ar_bits_echo_real_last; // @[SimAXIMem.scala 16:15]
  wire  srams_auto_in_r_ready; // @[SimAXIMem.scala 16:15]
  wire  srams_auto_in_r_valid; // @[SimAXIMem.scala 16:15]
  wire [3:0] srams_auto_in_r_bits_id; // @[SimAXIMem.scala 16:15]
  wire [63:0] srams_auto_in_r_bits_data; // @[SimAXIMem.scala 16:15]
  wire [1:0] srams_auto_in_r_bits_resp; // @[SimAXIMem.scala 16:15]
  wire  srams_auto_in_r_bits_echo_real_last; // @[SimAXIMem.scala 16:15]
  wire  axi4xbar_clock; // @[Xbar.scala 218:30]
  wire  axi4xbar_reset; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_aw_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_aw_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_in_aw_bits_id; // @[Xbar.scala 218:30]
  wire [27:0] axi4xbar_auto_in_aw_bits_addr; // @[Xbar.scala 218:30]
  wire [7:0] axi4xbar_auto_in_aw_bits_len; // @[Xbar.scala 218:30]
  wire [2:0] axi4xbar_auto_in_aw_bits_size; // @[Xbar.scala 218:30]
  wire [1:0] axi4xbar_auto_in_aw_bits_burst; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_w_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_w_valid; // @[Xbar.scala 218:30]
  wire [63:0] axi4xbar_auto_in_w_bits_data; // @[Xbar.scala 218:30]
  wire [7:0] axi4xbar_auto_in_w_bits_strb; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_w_bits_last; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_b_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_b_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_in_b_bits_id; // @[Xbar.scala 218:30]
  wire [1:0] axi4xbar_auto_in_b_bits_resp; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_ar_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_ar_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_in_ar_bits_id; // @[Xbar.scala 218:30]
  wire [27:0] axi4xbar_auto_in_ar_bits_addr; // @[Xbar.scala 218:30]
  wire [7:0] axi4xbar_auto_in_ar_bits_len; // @[Xbar.scala 218:30]
  wire [2:0] axi4xbar_auto_in_ar_bits_size; // @[Xbar.scala 218:30]
  wire [1:0] axi4xbar_auto_in_ar_bits_burst; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_r_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_r_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_in_r_bits_id; // @[Xbar.scala 218:30]
  wire [63:0] axi4xbar_auto_in_r_bits_data; // @[Xbar.scala 218:30]
  wire [1:0] axi4xbar_auto_in_r_bits_resp; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_in_r_bits_last; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_aw_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_aw_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_aw_bits_id; // @[Xbar.scala 218:30]
  wire [27:0] axi4xbar_auto_out_aw_bits_addr; // @[Xbar.scala 218:30]
  wire [7:0] axi4xbar_auto_out_aw_bits_len; // @[Xbar.scala 218:30]
  wire [2:0] axi4xbar_auto_out_aw_bits_size; // @[Xbar.scala 218:30]
  wire [1:0] axi4xbar_auto_out_aw_bits_burst; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_w_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_w_valid; // @[Xbar.scala 218:30]
  wire [63:0] axi4xbar_auto_out_w_bits_data; // @[Xbar.scala 218:30]
  wire [7:0] axi4xbar_auto_out_w_bits_strb; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_w_bits_last; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_b_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_b_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_b_bits_id; // @[Xbar.scala 218:30]
  wire [1:0] axi4xbar_auto_out_b_bits_resp; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_ar_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_ar_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_ar_bits_id; // @[Xbar.scala 218:30]
  wire [27:0] axi4xbar_auto_out_ar_bits_addr; // @[Xbar.scala 218:30]
  wire [7:0] axi4xbar_auto_out_ar_bits_len; // @[Xbar.scala 218:30]
  wire [2:0] axi4xbar_auto_out_ar_bits_size; // @[Xbar.scala 218:30]
  wire [1:0] axi4xbar_auto_out_ar_bits_burst; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_r_ready; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_r_valid; // @[Xbar.scala 218:30]
  wire [3:0] axi4xbar_auto_out_r_bits_id; // @[Xbar.scala 218:30]
  wire [63:0] axi4xbar_auto_out_r_bits_data; // @[Xbar.scala 218:30]
  wire [1:0] axi4xbar_auto_out_r_bits_resp; // @[Xbar.scala 218:30]
  wire  axi4xbar_auto_out_r_bits_last; // @[Xbar.scala 218:30]
  wire  axi4buf_clock; // @[Buffer.scala 58:29]
  wire  axi4buf_reset; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_aw_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_aw_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_in_aw_bits_id; // @[Buffer.scala 58:29]
  wire [27:0] axi4buf_auto_in_aw_bits_addr; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_aw_bits_echo_real_last; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_w_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_w_valid; // @[Buffer.scala 58:29]
  wire [63:0] axi4buf_auto_in_w_bits_data; // @[Buffer.scala 58:29]
  wire [7:0] axi4buf_auto_in_w_bits_strb; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_w_bits_last; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_b_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_b_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_in_b_bits_id; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_auto_in_b_bits_resp; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_b_bits_echo_real_last; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_ar_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_ar_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_in_ar_bits_id; // @[Buffer.scala 58:29]
  wire [27:0] axi4buf_auto_in_ar_bits_addr; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_ar_bits_echo_real_last; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_r_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_r_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_in_r_bits_id; // @[Buffer.scala 58:29]
  wire [63:0] axi4buf_auto_in_r_bits_data; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_auto_in_r_bits_resp; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_r_bits_echo_real_last; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_in_r_bits_last; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_aw_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_aw_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_out_aw_bits_id; // @[Buffer.scala 58:29]
  wire [27:0] axi4buf_auto_out_aw_bits_addr; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_aw_bits_echo_real_last; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_w_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_w_valid; // @[Buffer.scala 58:29]
  wire [63:0] axi4buf_auto_out_w_bits_data; // @[Buffer.scala 58:29]
  wire [7:0] axi4buf_auto_out_w_bits_strb; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_b_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_b_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_out_b_bits_id; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_auto_out_b_bits_resp; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_b_bits_echo_real_last; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_ar_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_ar_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_out_ar_bits_id; // @[Buffer.scala 58:29]
  wire [27:0] axi4buf_auto_out_ar_bits_addr; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_ar_bits_echo_real_last; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_r_ready; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_r_valid; // @[Buffer.scala 58:29]
  wire [3:0] axi4buf_auto_out_r_bits_id; // @[Buffer.scala 58:29]
  wire [63:0] axi4buf_auto_out_r_bits_data; // @[Buffer.scala 58:29]
  wire [1:0] axi4buf_auto_out_r_bits_resp; // @[Buffer.scala 58:29]
  wire  axi4buf_auto_out_r_bits_echo_real_last; // @[Buffer.scala 58:29]
  wire  axi4frag_clock; // @[Fragmenter.scala 206:30]
  wire  axi4frag_reset; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_aw_ready; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_aw_valid; // @[Fragmenter.scala 206:30]
  wire [3:0] axi4frag_auto_in_aw_bits_id; // @[Fragmenter.scala 206:30]
  wire [27:0] axi4frag_auto_in_aw_bits_addr; // @[Fragmenter.scala 206:30]
  wire [7:0] axi4frag_auto_in_aw_bits_len; // @[Fragmenter.scala 206:30]
  wire [2:0] axi4frag_auto_in_aw_bits_size; // @[Fragmenter.scala 206:30]
  wire [1:0] axi4frag_auto_in_aw_bits_burst; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_w_ready; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_w_valid; // @[Fragmenter.scala 206:30]
  wire [63:0] axi4frag_auto_in_w_bits_data; // @[Fragmenter.scala 206:30]
  wire [7:0] axi4frag_auto_in_w_bits_strb; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_w_bits_last; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_b_ready; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_b_valid; // @[Fragmenter.scala 206:30]
  wire [3:0] axi4frag_auto_in_b_bits_id; // @[Fragmenter.scala 206:30]
  wire [1:0] axi4frag_auto_in_b_bits_resp; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_ar_ready; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_ar_valid; // @[Fragmenter.scala 206:30]
  wire [3:0] axi4frag_auto_in_ar_bits_id; // @[Fragmenter.scala 206:30]
  wire [27:0] axi4frag_auto_in_ar_bits_addr; // @[Fragmenter.scala 206:30]
  wire [7:0] axi4frag_auto_in_ar_bits_len; // @[Fragmenter.scala 206:30]
  wire [2:0] axi4frag_auto_in_ar_bits_size; // @[Fragmenter.scala 206:30]
  wire [1:0] axi4frag_auto_in_ar_bits_burst; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_r_ready; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_r_valid; // @[Fragmenter.scala 206:30]
  wire [3:0] axi4frag_auto_in_r_bits_id; // @[Fragmenter.scala 206:30]
  wire [63:0] axi4frag_auto_in_r_bits_data; // @[Fragmenter.scala 206:30]
  wire [1:0] axi4frag_auto_in_r_bits_resp; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_in_r_bits_last; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_aw_ready; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_aw_valid; // @[Fragmenter.scala 206:30]
  wire [3:0] axi4frag_auto_out_aw_bits_id; // @[Fragmenter.scala 206:30]
  wire [27:0] axi4frag_auto_out_aw_bits_addr; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_aw_bits_echo_real_last; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_w_ready; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_w_valid; // @[Fragmenter.scala 206:30]
  wire [63:0] axi4frag_auto_out_w_bits_data; // @[Fragmenter.scala 206:30]
  wire [7:0] axi4frag_auto_out_w_bits_strb; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_w_bits_last; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_b_ready; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_b_valid; // @[Fragmenter.scala 206:30]
  wire [3:0] axi4frag_auto_out_b_bits_id; // @[Fragmenter.scala 206:30]
  wire [1:0] axi4frag_auto_out_b_bits_resp; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_b_bits_echo_real_last; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_ar_ready; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_ar_valid; // @[Fragmenter.scala 206:30]
  wire [3:0] axi4frag_auto_out_ar_bits_id; // @[Fragmenter.scala 206:30]
  wire [27:0] axi4frag_auto_out_ar_bits_addr; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_ar_bits_echo_real_last; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_r_ready; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_r_valid; // @[Fragmenter.scala 206:30]
  wire [3:0] axi4frag_auto_out_r_bits_id; // @[Fragmenter.scala 206:30]
  wire [63:0] axi4frag_auto_out_r_bits_data; // @[Fragmenter.scala 206:30]
  wire [1:0] axi4frag_auto_out_r_bits_resp; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_r_bits_echo_real_last; // @[Fragmenter.scala 206:30]
  wire  axi4frag_auto_out_r_bits_last; // @[Fragmenter.scala 206:30]
  AXI4RAM srams ( // @[SimAXIMem.scala 16:15]
    .clock(srams_clock),
    .reset(srams_reset),
    .auto_in_aw_ready(srams_auto_in_aw_ready),
    .auto_in_aw_valid(srams_auto_in_aw_valid),
    .auto_in_aw_bits_id(srams_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(srams_auto_in_aw_bits_addr),
    .auto_in_aw_bits_echo_real_last(srams_auto_in_aw_bits_echo_real_last),
    .auto_in_w_ready(srams_auto_in_w_ready),
    .auto_in_w_valid(srams_auto_in_w_valid),
    .auto_in_w_bits_data(srams_auto_in_w_bits_data),
    .auto_in_w_bits_strb(srams_auto_in_w_bits_strb),
    .auto_in_b_ready(srams_auto_in_b_ready),
    .auto_in_b_valid(srams_auto_in_b_valid),
    .auto_in_b_bits_id(srams_auto_in_b_bits_id),
    .auto_in_b_bits_resp(srams_auto_in_b_bits_resp),
    .auto_in_b_bits_echo_real_last(srams_auto_in_b_bits_echo_real_last),
    .auto_in_ar_ready(srams_auto_in_ar_ready),
    .auto_in_ar_valid(srams_auto_in_ar_valid),
    .auto_in_ar_bits_id(srams_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(srams_auto_in_ar_bits_addr),
    .auto_in_ar_bits_echo_real_last(srams_auto_in_ar_bits_echo_real_last),
    .auto_in_r_ready(srams_auto_in_r_ready),
    .auto_in_r_valid(srams_auto_in_r_valid),
    .auto_in_r_bits_id(srams_auto_in_r_bits_id),
    .auto_in_r_bits_data(srams_auto_in_r_bits_data),
    .auto_in_r_bits_resp(srams_auto_in_r_bits_resp),
    .auto_in_r_bits_echo_real_last(srams_auto_in_r_bits_echo_real_last)
  );
  AXI4Xbar axi4xbar ( // @[Xbar.scala 218:30]
    .clock(axi4xbar_clock),
    .reset(axi4xbar_reset),
    .auto_in_aw_ready(axi4xbar_auto_in_aw_ready),
    .auto_in_aw_valid(axi4xbar_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4xbar_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4xbar_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi4xbar_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi4xbar_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(axi4xbar_auto_in_aw_bits_burst),
    .auto_in_w_ready(axi4xbar_auto_in_w_ready),
    .auto_in_w_valid(axi4xbar_auto_in_w_valid),
    .auto_in_w_bits_data(axi4xbar_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4xbar_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4xbar_auto_in_w_bits_last),
    .auto_in_b_ready(axi4xbar_auto_in_b_ready),
    .auto_in_b_valid(axi4xbar_auto_in_b_valid),
    .auto_in_b_bits_id(axi4xbar_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4xbar_auto_in_b_bits_resp),
    .auto_in_ar_ready(axi4xbar_auto_in_ar_ready),
    .auto_in_ar_valid(axi4xbar_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4xbar_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4xbar_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi4xbar_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi4xbar_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(axi4xbar_auto_in_ar_bits_burst),
    .auto_in_r_ready(axi4xbar_auto_in_r_ready),
    .auto_in_r_valid(axi4xbar_auto_in_r_valid),
    .auto_in_r_bits_id(axi4xbar_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4xbar_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4xbar_auto_in_r_bits_resp),
    .auto_in_r_bits_last(axi4xbar_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4xbar_auto_out_aw_ready),
    .auto_out_aw_valid(axi4xbar_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4xbar_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4xbar_auto_out_aw_bits_addr),
    .auto_out_aw_bits_len(axi4xbar_auto_out_aw_bits_len),
    .auto_out_aw_bits_size(axi4xbar_auto_out_aw_bits_size),
    .auto_out_aw_bits_burst(axi4xbar_auto_out_aw_bits_burst),
    .auto_out_w_ready(axi4xbar_auto_out_w_ready),
    .auto_out_w_valid(axi4xbar_auto_out_w_valid),
    .auto_out_w_bits_data(axi4xbar_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4xbar_auto_out_w_bits_strb),
    .auto_out_w_bits_last(axi4xbar_auto_out_w_bits_last),
    .auto_out_b_ready(axi4xbar_auto_out_b_ready),
    .auto_out_b_valid(axi4xbar_auto_out_b_valid),
    .auto_out_b_bits_id(axi4xbar_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4xbar_auto_out_b_bits_resp),
    .auto_out_ar_ready(axi4xbar_auto_out_ar_ready),
    .auto_out_ar_valid(axi4xbar_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4xbar_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4xbar_auto_out_ar_bits_addr),
    .auto_out_ar_bits_len(axi4xbar_auto_out_ar_bits_len),
    .auto_out_ar_bits_size(axi4xbar_auto_out_ar_bits_size),
    .auto_out_ar_bits_burst(axi4xbar_auto_out_ar_bits_burst),
    .auto_out_r_ready(axi4xbar_auto_out_r_ready),
    .auto_out_r_valid(axi4xbar_auto_out_r_valid),
    .auto_out_r_bits_id(axi4xbar_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4xbar_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4xbar_auto_out_r_bits_resp),
    .auto_out_r_bits_last(axi4xbar_auto_out_r_bits_last)
  );
  AXI4Buffer_1 axi4buf ( // @[Buffer.scala 58:29]
    .clock(axi4buf_clock),
    .reset(axi4buf_reset),
    .auto_in_aw_ready(axi4buf_auto_in_aw_ready),
    .auto_in_aw_valid(axi4buf_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4buf_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4buf_auto_in_aw_bits_addr),
    .auto_in_aw_bits_echo_real_last(axi4buf_auto_in_aw_bits_echo_real_last),
    .auto_in_w_ready(axi4buf_auto_in_w_ready),
    .auto_in_w_valid(axi4buf_auto_in_w_valid),
    .auto_in_w_bits_data(axi4buf_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4buf_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4buf_auto_in_w_bits_last),
    .auto_in_b_ready(axi4buf_auto_in_b_ready),
    .auto_in_b_valid(axi4buf_auto_in_b_valid),
    .auto_in_b_bits_id(axi4buf_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4buf_auto_in_b_bits_resp),
    .auto_in_b_bits_echo_real_last(axi4buf_auto_in_b_bits_echo_real_last),
    .auto_in_ar_ready(axi4buf_auto_in_ar_ready),
    .auto_in_ar_valid(axi4buf_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4buf_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4buf_auto_in_ar_bits_addr),
    .auto_in_ar_bits_echo_real_last(axi4buf_auto_in_ar_bits_echo_real_last),
    .auto_in_r_ready(axi4buf_auto_in_r_ready),
    .auto_in_r_valid(axi4buf_auto_in_r_valid),
    .auto_in_r_bits_id(axi4buf_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4buf_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4buf_auto_in_r_bits_resp),
    .auto_in_r_bits_echo_real_last(axi4buf_auto_in_r_bits_echo_real_last),
    .auto_in_r_bits_last(axi4buf_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4buf_auto_out_aw_ready),
    .auto_out_aw_valid(axi4buf_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4buf_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4buf_auto_out_aw_bits_addr),
    .auto_out_aw_bits_echo_real_last(axi4buf_auto_out_aw_bits_echo_real_last),
    .auto_out_w_ready(axi4buf_auto_out_w_ready),
    .auto_out_w_valid(axi4buf_auto_out_w_valid),
    .auto_out_w_bits_data(axi4buf_auto_out_w_bits_data),
    .auto_out_w_bits_strb(axi4buf_auto_out_w_bits_strb),
    .auto_out_b_ready(axi4buf_auto_out_b_ready),
    .auto_out_b_valid(axi4buf_auto_out_b_valid),
    .auto_out_b_bits_id(axi4buf_auto_out_b_bits_id),
    .auto_out_b_bits_resp(axi4buf_auto_out_b_bits_resp),
    .auto_out_b_bits_echo_real_last(axi4buf_auto_out_b_bits_echo_real_last),
    .auto_out_ar_ready(axi4buf_auto_out_ar_ready),
    .auto_out_ar_valid(axi4buf_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4buf_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4buf_auto_out_ar_bits_addr),
    .auto_out_ar_bits_echo_real_last(axi4buf_auto_out_ar_bits_echo_real_last),
    .auto_out_r_ready(axi4buf_auto_out_r_ready),
    .auto_out_r_valid(axi4buf_auto_out_r_valid),
    .auto_out_r_bits_id(axi4buf_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4buf_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4buf_auto_out_r_bits_resp),
    .auto_out_r_bits_echo_real_last(axi4buf_auto_out_r_bits_echo_real_last)
  );
  AXI4Fragmenter_1 axi4frag ( // @[Fragmenter.scala 206:30]
    .clock(axi4frag_clock),
    .reset(axi4frag_reset),
    .auto_in_aw_ready(axi4frag_auto_in_aw_ready),
    .auto_in_aw_valid(axi4frag_auto_in_aw_valid),
    .auto_in_aw_bits_id(axi4frag_auto_in_aw_bits_id),
    .auto_in_aw_bits_addr(axi4frag_auto_in_aw_bits_addr),
    .auto_in_aw_bits_len(axi4frag_auto_in_aw_bits_len),
    .auto_in_aw_bits_size(axi4frag_auto_in_aw_bits_size),
    .auto_in_aw_bits_burst(axi4frag_auto_in_aw_bits_burst),
    .auto_in_w_ready(axi4frag_auto_in_w_ready),
    .auto_in_w_valid(axi4frag_auto_in_w_valid),
    .auto_in_w_bits_data(axi4frag_auto_in_w_bits_data),
    .auto_in_w_bits_strb(axi4frag_auto_in_w_bits_strb),
    .auto_in_w_bits_last(axi4frag_auto_in_w_bits_last),
    .auto_in_b_ready(axi4frag_auto_in_b_ready),
    .auto_in_b_valid(axi4frag_auto_in_b_valid),
    .auto_in_b_bits_id(axi4frag_auto_in_b_bits_id),
    .auto_in_b_bits_resp(axi4frag_auto_in_b_bits_resp),
    .auto_in_ar_ready(axi4frag_auto_in_ar_ready),
    .auto_in_ar_valid(axi4frag_auto_in_ar_valid),
    .auto_in_ar_bits_id(axi4frag_auto_in_ar_bits_id),
    .auto_in_ar_bits_addr(axi4frag_auto_in_ar_bits_addr),
    .auto_in_ar_bits_len(axi4frag_auto_in_ar_bits_len),
    .auto_in_ar_bits_size(axi4frag_auto_in_ar_bits_size),
    .auto_in_ar_bits_burst(axi4frag_auto_in_ar_bits_burst),
    .auto_in_r_ready(axi4frag_auto_in_r_ready),
    .auto_in_r_valid(axi4frag_auto_in_r_valid),
    .auto_in_r_bits_id(axi4frag_auto_in_r_bits_id),
    .auto_in_r_bits_data(axi4frag_auto_in_r_bits_data),
    .auto_in_r_bits_resp(axi4frag_auto_in_r_bits_resp),
    .auto_in_r_bits_last(axi4frag_auto_in_r_bits_last),
    .auto_out_aw_ready(axi4frag_auto_out_aw_ready),
    .auto_out_aw_valid(axi4frag_auto_out_aw_valid),
    .auto_out_aw_bits_id(axi4frag_auto_out_aw_bits_id),
    .auto_out_aw_bits_addr(axi4frag_auto_out_aw_bits_addr),
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
    .auto_out_b_bits_echo_real_last(axi4frag_auto_out_b_bits_echo_real_last),
    .auto_out_ar_ready(axi4frag_auto_out_ar_ready),
    .auto_out_ar_valid(axi4frag_auto_out_ar_valid),
    .auto_out_ar_bits_id(axi4frag_auto_out_ar_bits_id),
    .auto_out_ar_bits_addr(axi4frag_auto_out_ar_bits_addr),
    .auto_out_ar_bits_echo_real_last(axi4frag_auto_out_ar_bits_echo_real_last),
    .auto_out_r_ready(axi4frag_auto_out_r_ready),
    .auto_out_r_valid(axi4frag_auto_out_r_valid),
    .auto_out_r_bits_id(axi4frag_auto_out_r_bits_id),
    .auto_out_r_bits_data(axi4frag_auto_out_r_bits_data),
    .auto_out_r_bits_resp(axi4frag_auto_out_r_bits_resp),
    .auto_out_r_bits_echo_real_last(axi4frag_auto_out_r_bits_echo_real_last),
    .auto_out_r_bits_last(axi4frag_auto_out_r_bits_last)
  );
  assign io_axi4_0_aw_ready = axi4xbar_auto_in_aw_ready; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign io_axi4_0_w_ready = axi4xbar_auto_in_w_ready; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign io_axi4_0_b_valid = axi4xbar_auto_in_b_valid; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign io_axi4_0_b_bits_id = axi4xbar_auto_in_b_bits_id; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign io_axi4_0_b_bits_resp = axi4xbar_auto_in_b_bits_resp; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign io_axi4_0_ar_ready = axi4xbar_auto_in_ar_ready; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign io_axi4_0_r_valid = axi4xbar_auto_in_r_valid; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign io_axi4_0_r_bits_id = axi4xbar_auto_in_r_bits_id; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign io_axi4_0_r_bits_data = axi4xbar_auto_in_r_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign io_axi4_0_r_bits_resp = axi4xbar_auto_in_r_bits_resp; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign io_axi4_0_r_bits_last = axi4xbar_auto_in_r_bits_last; // @[Nodes.scala 1213:84 LazyModule.scala 301:16]
  assign srams_clock = clock;
  assign srams_reset = reset;
  assign srams_auto_in_aw_valid = axi4buf_auto_out_aw_valid; // @[LazyModule.scala 299:16]
  assign srams_auto_in_aw_bits_id = axi4buf_auto_out_aw_bits_id; // @[LazyModule.scala 299:16]
  assign srams_auto_in_aw_bits_addr = axi4buf_auto_out_aw_bits_addr; // @[LazyModule.scala 299:16]
  assign srams_auto_in_aw_bits_echo_real_last = axi4buf_auto_out_aw_bits_echo_real_last; // @[LazyModule.scala 299:16]
  assign srams_auto_in_w_valid = axi4buf_auto_out_w_valid; // @[LazyModule.scala 299:16]
  assign srams_auto_in_w_bits_data = axi4buf_auto_out_w_bits_data; // @[LazyModule.scala 299:16]
  assign srams_auto_in_w_bits_strb = axi4buf_auto_out_w_bits_strb; // @[LazyModule.scala 299:16]
  assign srams_auto_in_b_ready = axi4buf_auto_out_b_ready; // @[LazyModule.scala 299:16]
  assign srams_auto_in_ar_valid = axi4buf_auto_out_ar_valid; // @[LazyModule.scala 299:16]
  assign srams_auto_in_ar_bits_id = axi4buf_auto_out_ar_bits_id; // @[LazyModule.scala 299:16]
  assign srams_auto_in_ar_bits_addr = axi4buf_auto_out_ar_bits_addr; // @[LazyModule.scala 299:16]
  assign srams_auto_in_ar_bits_echo_real_last = axi4buf_auto_out_ar_bits_echo_real_last; // @[LazyModule.scala 299:16]
  assign srams_auto_in_r_ready = axi4buf_auto_out_r_ready; // @[LazyModule.scala 299:16]
  assign axi4xbar_clock = clock;
  assign axi4xbar_reset = reset;
  assign axi4xbar_auto_in_aw_valid = io_axi4_0_aw_valid; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign axi4xbar_auto_in_aw_bits_id = io_axi4_0_aw_bits_id; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign axi4xbar_auto_in_aw_bits_addr = io_axi4_0_aw_bits_addr; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign axi4xbar_auto_in_aw_bits_len = io_axi4_0_aw_bits_len; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign axi4xbar_auto_in_aw_bits_size = io_axi4_0_aw_bits_size; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign axi4xbar_auto_in_aw_bits_burst = io_axi4_0_aw_bits_burst; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign axi4xbar_auto_in_w_valid = io_axi4_0_w_valid; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign axi4xbar_auto_in_w_bits_data = io_axi4_0_w_bits_data; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign axi4xbar_auto_in_w_bits_strb = io_axi4_0_w_bits_strb; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign axi4xbar_auto_in_w_bits_last = io_axi4_0_w_bits_last; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign axi4xbar_auto_in_b_ready = io_axi4_0_b_ready; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign axi4xbar_auto_in_ar_valid = io_axi4_0_ar_valid; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign axi4xbar_auto_in_ar_bits_id = io_axi4_0_ar_bits_id; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign axi4xbar_auto_in_ar_bits_addr = io_axi4_0_ar_bits_addr; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign axi4xbar_auto_in_ar_bits_len = io_axi4_0_ar_bits_len; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign axi4xbar_auto_in_ar_bits_size = io_axi4_0_ar_bits_size; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign axi4xbar_auto_in_ar_bits_burst = io_axi4_0_ar_bits_burst; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign axi4xbar_auto_in_r_ready = io_axi4_0_r_ready; // @[Nodes.scala 1213:84 Nodes.scala 1636:60]
  assign axi4xbar_auto_out_aw_ready = axi4frag_auto_in_aw_ready; // @[LazyModule.scala 301:16]
  assign axi4xbar_auto_out_w_ready = axi4frag_auto_in_w_ready; // @[LazyModule.scala 301:16]
  assign axi4xbar_auto_out_b_valid = axi4frag_auto_in_b_valid; // @[LazyModule.scala 301:16]
  assign axi4xbar_auto_out_b_bits_id = axi4frag_auto_in_b_bits_id; // @[LazyModule.scala 301:16]
  assign axi4xbar_auto_out_b_bits_resp = axi4frag_auto_in_b_bits_resp; // @[LazyModule.scala 301:16]
  assign axi4xbar_auto_out_ar_ready = axi4frag_auto_in_ar_ready; // @[LazyModule.scala 301:16]
  assign axi4xbar_auto_out_r_valid = axi4frag_auto_in_r_valid; // @[LazyModule.scala 301:16]
  assign axi4xbar_auto_out_r_bits_id = axi4frag_auto_in_r_bits_id; // @[LazyModule.scala 301:16]
  assign axi4xbar_auto_out_r_bits_data = axi4frag_auto_in_r_bits_data; // @[LazyModule.scala 301:16]
  assign axi4xbar_auto_out_r_bits_resp = axi4frag_auto_in_r_bits_resp; // @[LazyModule.scala 301:16]
  assign axi4xbar_auto_out_r_bits_last = axi4frag_auto_in_r_bits_last; // @[LazyModule.scala 301:16]
  assign axi4buf_clock = clock;
  assign axi4buf_reset = reset;
  assign axi4buf_auto_in_aw_valid = axi4frag_auto_out_aw_valid; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_in_aw_bits_id = axi4frag_auto_out_aw_bits_id; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_in_aw_bits_addr = axi4frag_auto_out_aw_bits_addr; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_in_aw_bits_echo_real_last = axi4frag_auto_out_aw_bits_echo_real_last; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_in_w_valid = axi4frag_auto_out_w_valid; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_in_w_bits_data = axi4frag_auto_out_w_bits_data; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_in_w_bits_strb = axi4frag_auto_out_w_bits_strb; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_in_w_bits_last = axi4frag_auto_out_w_bits_last; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_in_b_ready = axi4frag_auto_out_b_ready; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_in_ar_valid = axi4frag_auto_out_ar_valid; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_in_ar_bits_id = axi4frag_auto_out_ar_bits_id; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_in_ar_bits_addr = axi4frag_auto_out_ar_bits_addr; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_in_ar_bits_echo_real_last = axi4frag_auto_out_ar_bits_echo_real_last; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_in_r_ready = axi4frag_auto_out_r_ready; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_out_aw_ready = srams_auto_in_aw_ready; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_out_w_ready = srams_auto_in_w_ready; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_out_b_valid = srams_auto_in_b_valid; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_out_b_bits_id = srams_auto_in_b_bits_id; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_out_b_bits_resp = srams_auto_in_b_bits_resp; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_out_b_bits_echo_real_last = srams_auto_in_b_bits_echo_real_last; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_out_ar_ready = srams_auto_in_ar_ready; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_out_r_valid = srams_auto_in_r_valid; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_out_r_bits_id = srams_auto_in_r_bits_id; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_out_r_bits_data = srams_auto_in_r_bits_data; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_out_r_bits_resp = srams_auto_in_r_bits_resp; // @[LazyModule.scala 299:16]
  assign axi4buf_auto_out_r_bits_echo_real_last = srams_auto_in_r_bits_echo_real_last; // @[LazyModule.scala 299:16]
  assign axi4frag_clock = clock;
  assign axi4frag_reset = reset;
  assign axi4frag_auto_in_aw_valid = axi4xbar_auto_out_aw_valid; // @[LazyModule.scala 301:16]
  assign axi4frag_auto_in_aw_bits_id = axi4xbar_auto_out_aw_bits_id; // @[LazyModule.scala 301:16]
  assign axi4frag_auto_in_aw_bits_addr = axi4xbar_auto_out_aw_bits_addr; // @[LazyModule.scala 301:16]
  assign axi4frag_auto_in_aw_bits_len = axi4xbar_auto_out_aw_bits_len; // @[LazyModule.scala 301:16]
  assign axi4frag_auto_in_aw_bits_size = axi4xbar_auto_out_aw_bits_size; // @[LazyModule.scala 301:16]
  assign axi4frag_auto_in_aw_bits_burst = axi4xbar_auto_out_aw_bits_burst; // @[LazyModule.scala 301:16]
  assign axi4frag_auto_in_w_valid = axi4xbar_auto_out_w_valid; // @[LazyModule.scala 301:16]
  assign axi4frag_auto_in_w_bits_data = axi4xbar_auto_out_w_bits_data; // @[LazyModule.scala 301:16]
  assign axi4frag_auto_in_w_bits_strb = axi4xbar_auto_out_w_bits_strb; // @[LazyModule.scala 301:16]
  assign axi4frag_auto_in_w_bits_last = axi4xbar_auto_out_w_bits_last; // @[LazyModule.scala 301:16]
  assign axi4frag_auto_in_b_ready = axi4xbar_auto_out_b_ready; // @[LazyModule.scala 301:16]
  assign axi4frag_auto_in_ar_valid = axi4xbar_auto_out_ar_valid; // @[LazyModule.scala 301:16]
  assign axi4frag_auto_in_ar_bits_id = axi4xbar_auto_out_ar_bits_id; // @[LazyModule.scala 301:16]
  assign axi4frag_auto_in_ar_bits_addr = axi4xbar_auto_out_ar_bits_addr; // @[LazyModule.scala 301:16]
  assign axi4frag_auto_in_ar_bits_len = axi4xbar_auto_out_ar_bits_len; // @[LazyModule.scala 301:16]
  assign axi4frag_auto_in_ar_bits_size = axi4xbar_auto_out_ar_bits_size; // @[LazyModule.scala 301:16]
  assign axi4frag_auto_in_ar_bits_burst = axi4xbar_auto_out_ar_bits_burst; // @[LazyModule.scala 301:16]
  assign axi4frag_auto_in_r_ready = axi4xbar_auto_out_r_ready; // @[LazyModule.scala 301:16]
  assign axi4frag_auto_out_aw_ready = axi4buf_auto_in_aw_ready; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_w_ready = axi4buf_auto_in_w_ready; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_b_valid = axi4buf_auto_in_b_valid; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_b_bits_id = axi4buf_auto_in_b_bits_id; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_b_bits_resp = axi4buf_auto_in_b_bits_resp; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_b_bits_echo_real_last = axi4buf_auto_in_b_bits_echo_real_last; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_ar_ready = axi4buf_auto_in_ar_ready; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_r_valid = axi4buf_auto_in_r_valid; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_r_bits_id = axi4buf_auto_in_r_bits_id; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_r_bits_data = axi4buf_auto_in_r_bits_data; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_r_bits_resp = axi4buf_auto_in_r_bits_resp; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_r_bits_echo_real_last = axi4buf_auto_in_r_bits_echo_real_last; // @[LazyModule.scala 299:16]
  assign axi4frag_auto_out_r_bits_last = axi4buf_auto_in_r_bits_last; // @[LazyModule.scala 299:16]
endmodule
