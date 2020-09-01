module AXI4Buffer(
  input         clock,
  input         reset,
  output        auto_in_aw_ready,
  input         auto_in_aw_valid,
  input  [3:0]  auto_in_aw_bits_id,
  input  [30:0] auto_in_aw_bits_addr,
  input  [7:0]  auto_in_aw_bits_len,
  input  [2:0]  auto_in_aw_bits_size,
  input  [1:0]  auto_in_aw_bits_burst,
  input         auto_in_aw_bits_lock,
  input  [3:0]  auto_in_aw_bits_cache,
  input  [2:0]  auto_in_aw_bits_prot,
  input  [3:0]  auto_in_aw_bits_qos,
  output        auto_in_w_ready,
  input         auto_in_w_valid,
  input  [63:0] auto_in_w_bits_data,
  input  [7:0]  auto_in_w_bits_strb,
  input         auto_in_w_bits_last,
  input         auto_in_b_ready,
  output        auto_in_b_valid,
  output [3:0]  auto_in_b_bits_id,
  output [1:0]  auto_in_b_bits_resp,
  output        auto_in_ar_ready,
  input         auto_in_ar_valid,
  input  [3:0]  auto_in_ar_bits_id,
  input  [30:0] auto_in_ar_bits_addr,
  input  [7:0]  auto_in_ar_bits_len,
  input  [2:0]  auto_in_ar_bits_size,
  input  [1:0]  auto_in_ar_bits_burst,
  input         auto_in_ar_bits_lock,
  input  [3:0]  auto_in_ar_bits_cache,
  input  [2:0]  auto_in_ar_bits_prot,
  input  [3:0]  auto_in_ar_bits_qos,
  input         auto_in_r_ready,
  output        auto_in_r_valid,
  output [3:0]  auto_in_r_bits_id,
  output [63:0] auto_in_r_bits_data,
  output [1:0]  auto_in_r_bits_resp,
  output        auto_in_r_bits_last,
  input         auto_out_aw_ready,
  output        auto_out_aw_valid,
  output [3:0]  auto_out_aw_bits_id,
  output [30:0] auto_out_aw_bits_addr,
  output [7:0]  auto_out_aw_bits_len,
  output [2:0]  auto_out_aw_bits_size,
  output [1:0]  auto_out_aw_bits_burst,
  output        auto_out_aw_bits_lock,
  output [3:0]  auto_out_aw_bits_cache,
  output [2:0]  auto_out_aw_bits_prot,
  output [3:0]  auto_out_aw_bits_qos,
  input         auto_out_w_ready,
  output        auto_out_w_valid,
  output [63:0] auto_out_w_bits_data,
  output [7:0]  auto_out_w_bits_strb,
  output        auto_out_w_bits_last,
  output        auto_out_b_ready,
  input         auto_out_b_valid,
  input  [3:0]  auto_out_b_bits_id,
  input  [1:0]  auto_out_b_bits_resp,
  input         auto_out_ar_ready,
  output        auto_out_ar_valid,
  output [3:0]  auto_out_ar_bits_id,
  output [30:0] auto_out_ar_bits_addr,
  output [7:0]  auto_out_ar_bits_len,
  output [2:0]  auto_out_ar_bits_size,
  output [1:0]  auto_out_ar_bits_burst,
  output        auto_out_ar_bits_lock,
  output [3:0]  auto_out_ar_bits_cache,
  output [2:0]  auto_out_ar_bits_prot,
  output [3:0]  auto_out_ar_bits_qos,
  output        auto_out_r_ready,
  input         auto_out_r_valid,
  input  [3:0]  auto_out_r_bits_id,
  input  [63:0] auto_out_r_bits_data,
  input  [1:0]  auto_out_r_bits_resp,
  input         auto_out_r_bits_last
);
  wire  auto_data_1_aw_deq_clock; // @[Decoupled.scala 296:21]
  wire  auto_data_1_aw_deq_reset; // @[Decoupled.scala 296:21]
  wire  auto_data_1_aw_deq_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_1_aw_deq_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_1_aw_deq_io_enq_bits_id; // @[Decoupled.scala 296:21]
  wire [30:0] auto_data_1_aw_deq_io_enq_bits_addr; // @[Decoupled.scala 296:21]
  wire [7:0] auto_data_1_aw_deq_io_enq_bits_len; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_1_aw_deq_io_enq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_1_aw_deq_io_enq_bits_burst; // @[Decoupled.scala 296:21]
  wire  auto_data_1_aw_deq_io_enq_bits_lock; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_1_aw_deq_io_enq_bits_cache; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_1_aw_deq_io_enq_bits_prot; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_1_aw_deq_io_enq_bits_qos; // @[Decoupled.scala 296:21]
  wire  auto_data_1_aw_deq_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_1_aw_deq_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_1_aw_deq_io_deq_bits_id; // @[Decoupled.scala 296:21]
  wire [30:0] auto_data_1_aw_deq_io_deq_bits_addr; // @[Decoupled.scala 296:21]
  wire [7:0] auto_data_1_aw_deq_io_deq_bits_len; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_1_aw_deq_io_deq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_1_aw_deq_io_deq_bits_burst; // @[Decoupled.scala 296:21]
  wire  auto_data_1_aw_deq_io_deq_bits_lock; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_1_aw_deq_io_deq_bits_cache; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_1_aw_deq_io_deq_bits_prot; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_1_aw_deq_io_deq_bits_qos; // @[Decoupled.scala 296:21]
  wire  auto_data_1_w_deq_clock; // @[Decoupled.scala 296:21]
  wire  auto_data_1_w_deq_reset; // @[Decoupled.scala 296:21]
  wire  auto_data_1_w_deq_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_1_w_deq_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [63:0] auto_data_1_w_deq_io_enq_bits_data; // @[Decoupled.scala 296:21]
  wire [7:0] auto_data_1_w_deq_io_enq_bits_strb; // @[Decoupled.scala 296:21]
  wire  auto_data_1_w_deq_io_enq_bits_last; // @[Decoupled.scala 296:21]
  wire  auto_data_1_w_deq_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_1_w_deq_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [63:0] auto_data_1_w_deq_io_deq_bits_data; // @[Decoupled.scala 296:21]
  wire [7:0] auto_data_1_w_deq_io_deq_bits_strb; // @[Decoupled.scala 296:21]
  wire  auto_data_1_w_deq_io_deq_bits_last; // @[Decoupled.scala 296:21]
  wire  auto_data_b_deq_clock; // @[Decoupled.scala 296:21]
  wire  auto_data_b_deq_reset; // @[Decoupled.scala 296:21]
  wire  auto_data_b_deq_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_b_deq_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_b_deq_io_enq_bits_id; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_b_deq_io_enq_bits_resp; // @[Decoupled.scala 296:21]
  wire  auto_data_b_deq_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_b_deq_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_b_deq_io_deq_bits_id; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_b_deq_io_deq_bits_resp; // @[Decoupled.scala 296:21]
  wire  auto_data_1_ar_deq_clock; // @[Decoupled.scala 296:21]
  wire  auto_data_1_ar_deq_reset; // @[Decoupled.scala 296:21]
  wire  auto_data_1_ar_deq_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_1_ar_deq_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_1_ar_deq_io_enq_bits_id; // @[Decoupled.scala 296:21]
  wire [30:0] auto_data_1_ar_deq_io_enq_bits_addr; // @[Decoupled.scala 296:21]
  wire [7:0] auto_data_1_ar_deq_io_enq_bits_len; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_1_ar_deq_io_enq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_1_ar_deq_io_enq_bits_burst; // @[Decoupled.scala 296:21]
  wire  auto_data_1_ar_deq_io_enq_bits_lock; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_1_ar_deq_io_enq_bits_cache; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_1_ar_deq_io_enq_bits_prot; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_1_ar_deq_io_enq_bits_qos; // @[Decoupled.scala 296:21]
  wire  auto_data_1_ar_deq_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_1_ar_deq_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_1_ar_deq_io_deq_bits_id; // @[Decoupled.scala 296:21]
  wire [30:0] auto_data_1_ar_deq_io_deq_bits_addr; // @[Decoupled.scala 296:21]
  wire [7:0] auto_data_1_ar_deq_io_deq_bits_len; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_1_ar_deq_io_deq_bits_size; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_1_ar_deq_io_deq_bits_burst; // @[Decoupled.scala 296:21]
  wire  auto_data_1_ar_deq_io_deq_bits_lock; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_1_ar_deq_io_deq_bits_cache; // @[Decoupled.scala 296:21]
  wire [2:0] auto_data_1_ar_deq_io_deq_bits_prot; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_1_ar_deq_io_deq_bits_qos; // @[Decoupled.scala 296:21]
  wire  auto_data_r_deq_clock; // @[Decoupled.scala 296:21]
  wire  auto_data_r_deq_reset; // @[Decoupled.scala 296:21]
  wire  auto_data_r_deq_io_enq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_r_deq_io_enq_valid; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_r_deq_io_enq_bits_id; // @[Decoupled.scala 296:21]
  wire [63:0] auto_data_r_deq_io_enq_bits_data; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_r_deq_io_enq_bits_resp; // @[Decoupled.scala 296:21]
  wire  auto_data_r_deq_io_enq_bits_last; // @[Decoupled.scala 296:21]
  wire  auto_data_r_deq_io_deq_ready; // @[Decoupled.scala 296:21]
  wire  auto_data_r_deq_io_deq_valid; // @[Decoupled.scala 296:21]
  wire [3:0] auto_data_r_deq_io_deq_bits_id; // @[Decoupled.scala 296:21]
  wire [63:0] auto_data_r_deq_io_deq_bits_data; // @[Decoupled.scala 296:21]
  wire [1:0] auto_data_r_deq_io_deq_bits_resp; // @[Decoupled.scala 296:21]
  wire  auto_data_r_deq_io_deq_bits_last; // @[Decoupled.scala 296:21]
  Queue auto_data_1_aw_deq ( // @[Decoupled.scala 296:21]
    .clock(auto_data_1_aw_deq_clock),
    .reset(auto_data_1_aw_deq_reset),
    .io_enq_ready(auto_data_1_aw_deq_io_enq_ready),
    .io_enq_valid(auto_data_1_aw_deq_io_enq_valid),
    .io_enq_bits_id(auto_data_1_aw_deq_io_enq_bits_id),
    .io_enq_bits_addr(auto_data_1_aw_deq_io_enq_bits_addr),
    .io_enq_bits_len(auto_data_1_aw_deq_io_enq_bits_len),
    .io_enq_bits_size(auto_data_1_aw_deq_io_enq_bits_size),
    .io_enq_bits_burst(auto_data_1_aw_deq_io_enq_bits_burst),
    .io_enq_bits_lock(auto_data_1_aw_deq_io_enq_bits_lock),
    .io_enq_bits_cache(auto_data_1_aw_deq_io_enq_bits_cache),
    .io_enq_bits_prot(auto_data_1_aw_deq_io_enq_bits_prot),
    .io_enq_bits_qos(auto_data_1_aw_deq_io_enq_bits_qos),
    .io_deq_ready(auto_data_1_aw_deq_io_deq_ready),
    .io_deq_valid(auto_data_1_aw_deq_io_deq_valid),
    .io_deq_bits_id(auto_data_1_aw_deq_io_deq_bits_id),
    .io_deq_bits_addr(auto_data_1_aw_deq_io_deq_bits_addr),
    .io_deq_bits_len(auto_data_1_aw_deq_io_deq_bits_len),
    .io_deq_bits_size(auto_data_1_aw_deq_io_deq_bits_size),
    .io_deq_bits_burst(auto_data_1_aw_deq_io_deq_bits_burst),
    .io_deq_bits_lock(auto_data_1_aw_deq_io_deq_bits_lock),
    .io_deq_bits_cache(auto_data_1_aw_deq_io_deq_bits_cache),
    .io_deq_bits_prot(auto_data_1_aw_deq_io_deq_bits_prot),
    .io_deq_bits_qos(auto_data_1_aw_deq_io_deq_bits_qos)
  );
  Queue_1 auto_data_1_w_deq ( // @[Decoupled.scala 296:21]
    .clock(auto_data_1_w_deq_clock),
    .reset(auto_data_1_w_deq_reset),
    .io_enq_ready(auto_data_1_w_deq_io_enq_ready),
    .io_enq_valid(auto_data_1_w_deq_io_enq_valid),
    .io_enq_bits_data(auto_data_1_w_deq_io_enq_bits_data),
    .io_enq_bits_strb(auto_data_1_w_deq_io_enq_bits_strb),
    .io_enq_bits_last(auto_data_1_w_deq_io_enq_bits_last),
    .io_deq_ready(auto_data_1_w_deq_io_deq_ready),
    .io_deq_valid(auto_data_1_w_deq_io_deq_valid),
    .io_deq_bits_data(auto_data_1_w_deq_io_deq_bits_data),
    .io_deq_bits_strb(auto_data_1_w_deq_io_deq_bits_strb),
    .io_deq_bits_last(auto_data_1_w_deq_io_deq_bits_last)
  );
  Queue_2 auto_data_b_deq ( // @[Decoupled.scala 296:21]
    .clock(auto_data_b_deq_clock),
    .reset(auto_data_b_deq_reset),
    .io_enq_ready(auto_data_b_deq_io_enq_ready),
    .io_enq_valid(auto_data_b_deq_io_enq_valid),
    .io_enq_bits_id(auto_data_b_deq_io_enq_bits_id),
    .io_enq_bits_resp(auto_data_b_deq_io_enq_bits_resp),
    .io_deq_ready(auto_data_b_deq_io_deq_ready),
    .io_deq_valid(auto_data_b_deq_io_deq_valid),
    .io_deq_bits_id(auto_data_b_deq_io_deq_bits_id),
    .io_deq_bits_resp(auto_data_b_deq_io_deq_bits_resp)
  );
  Queue auto_data_1_ar_deq ( // @[Decoupled.scala 296:21]
    .clock(auto_data_1_ar_deq_clock),
    .reset(auto_data_1_ar_deq_reset),
    .io_enq_ready(auto_data_1_ar_deq_io_enq_ready),
    .io_enq_valid(auto_data_1_ar_deq_io_enq_valid),
    .io_enq_bits_id(auto_data_1_ar_deq_io_enq_bits_id),
    .io_enq_bits_addr(auto_data_1_ar_deq_io_enq_bits_addr),
    .io_enq_bits_len(auto_data_1_ar_deq_io_enq_bits_len),
    .io_enq_bits_size(auto_data_1_ar_deq_io_enq_bits_size),
    .io_enq_bits_burst(auto_data_1_ar_deq_io_enq_bits_burst),
    .io_enq_bits_lock(auto_data_1_ar_deq_io_enq_bits_lock),
    .io_enq_bits_cache(auto_data_1_ar_deq_io_enq_bits_cache),
    .io_enq_bits_prot(auto_data_1_ar_deq_io_enq_bits_prot),
    .io_enq_bits_qos(auto_data_1_ar_deq_io_enq_bits_qos),
    .io_deq_ready(auto_data_1_ar_deq_io_deq_ready),
    .io_deq_valid(auto_data_1_ar_deq_io_deq_valid),
    .io_deq_bits_id(auto_data_1_ar_deq_io_deq_bits_id),
    .io_deq_bits_addr(auto_data_1_ar_deq_io_deq_bits_addr),
    .io_deq_bits_len(auto_data_1_ar_deq_io_deq_bits_len),
    .io_deq_bits_size(auto_data_1_ar_deq_io_deq_bits_size),
    .io_deq_bits_burst(auto_data_1_ar_deq_io_deq_bits_burst),
    .io_deq_bits_lock(auto_data_1_ar_deq_io_deq_bits_lock),
    .io_deq_bits_cache(auto_data_1_ar_deq_io_deq_bits_cache),
    .io_deq_bits_prot(auto_data_1_ar_deq_io_deq_bits_prot),
    .io_deq_bits_qos(auto_data_1_ar_deq_io_deq_bits_qos)
  );
  Queue_4 auto_data_r_deq ( // @[Decoupled.scala 296:21]
    .clock(auto_data_r_deq_clock),
    .reset(auto_data_r_deq_reset),
    .io_enq_ready(auto_data_r_deq_io_enq_ready),
    .io_enq_valid(auto_data_r_deq_io_enq_valid),
    .io_enq_bits_id(auto_data_r_deq_io_enq_bits_id),
    .io_enq_bits_data(auto_data_r_deq_io_enq_bits_data),
    .io_enq_bits_resp(auto_data_r_deq_io_enq_bits_resp),
    .io_enq_bits_last(auto_data_r_deq_io_enq_bits_last),
    .io_deq_ready(auto_data_r_deq_io_deq_ready),
    .io_deq_valid(auto_data_r_deq_io_deq_valid),
    .io_deq_bits_id(auto_data_r_deq_io_deq_bits_id),
    .io_deq_bits_data(auto_data_r_deq_io_deq_bits_data),
    .io_deq_bits_resp(auto_data_r_deq_io_deq_bits_resp),
    .io_deq_bits_last(auto_data_r_deq_io_deq_bits_last)
  );
  assign auto_in_aw_ready = auto_data_1_aw_deq_io_enq_ready; // @[Nodes.scala 1216:84 Decoupled.scala 299:17]
  assign auto_in_w_ready = auto_data_1_w_deq_io_enq_ready; // @[Nodes.scala 1216:84 Decoupled.scala 299:17]
  assign auto_in_b_valid = auto_data_b_deq_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  assign auto_in_b_bits_id = auto_data_b_deq_io_deq_bits_id; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_in_b_bits_resp = auto_data_b_deq_io_deq_bits_resp; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_in_ar_ready = auto_data_1_ar_deq_io_enq_ready; // @[Nodes.scala 1216:84 Decoupled.scala 299:17]
  assign auto_in_r_valid = auto_data_r_deq_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  assign auto_in_r_bits_id = auto_data_r_deq_io_deq_bits_id; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_in_r_bits_data = auto_data_r_deq_io_deq_bits_data; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_in_r_bits_resp = auto_data_r_deq_io_deq_bits_resp; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_in_r_bits_last = auto_data_r_deq_io_deq_bits_last; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_valid = auto_data_1_aw_deq_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  assign auto_out_aw_bits_id = auto_data_1_aw_deq_io_deq_bits_id; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_addr = auto_data_1_aw_deq_io_deq_bits_addr; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_len = auto_data_1_aw_deq_io_deq_bits_len; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_size = auto_data_1_aw_deq_io_deq_bits_size; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_burst = auto_data_1_aw_deq_io_deq_bits_burst; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_lock = auto_data_1_aw_deq_io_deq_bits_lock; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_cache = auto_data_1_aw_deq_io_deq_bits_cache; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_prot = auto_data_1_aw_deq_io_deq_bits_prot; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_aw_bits_qos = auto_data_1_aw_deq_io_deq_bits_qos; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_w_valid = auto_data_1_w_deq_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  assign auto_out_w_bits_data = auto_data_1_w_deq_io_deq_bits_data; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_w_bits_strb = auto_data_1_w_deq_io_deq_bits_strb; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_w_bits_last = auto_data_1_w_deq_io_deq_bits_last; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_b_ready = auto_data_b_deq_io_enq_ready; // @[Nodes.scala 1213:84 Decoupled.scala 299:17]
  assign auto_out_ar_valid = auto_data_1_ar_deq_io_deq_valid; // @[Decoupled.scala 317:19 Decoupled.scala 319:15]
  assign auto_out_ar_bits_id = auto_data_1_ar_deq_io_deq_bits_id; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_addr = auto_data_1_ar_deq_io_deq_bits_addr; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_len = auto_data_1_ar_deq_io_deq_bits_len; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_size = auto_data_1_ar_deq_io_deq_bits_size; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_burst = auto_data_1_ar_deq_io_deq_bits_burst; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_lock = auto_data_1_ar_deq_io_deq_bits_lock; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_cache = auto_data_1_ar_deq_io_deq_bits_cache; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_prot = auto_data_1_ar_deq_io_deq_bits_prot; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_ar_bits_qos = auto_data_1_ar_deq_io_deq_bits_qos; // @[Decoupled.scala 317:19 Decoupled.scala 318:14]
  assign auto_out_r_ready = auto_data_r_deq_io_enq_ready; // @[Nodes.scala 1213:84 Decoupled.scala 299:17]
  assign auto_data_1_aw_deq_clock = clock;
  assign auto_data_1_aw_deq_reset = reset;
  assign auto_data_1_aw_deq_io_enq_valid = auto_in_aw_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_aw_deq_io_enq_bits_id = auto_in_aw_bits_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_aw_deq_io_enq_bits_addr = auto_in_aw_bits_addr; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_aw_deq_io_enq_bits_len = auto_in_aw_bits_len; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_aw_deq_io_enq_bits_size = auto_in_aw_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_aw_deq_io_enq_bits_burst = auto_in_aw_bits_burst; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_aw_deq_io_enq_bits_lock = auto_in_aw_bits_lock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_aw_deq_io_enq_bits_cache = auto_in_aw_bits_cache; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_aw_deq_io_enq_bits_prot = auto_in_aw_bits_prot; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_aw_deq_io_enq_bits_qos = auto_in_aw_bits_qos; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_aw_deq_io_deq_ready = auto_out_aw_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_1_w_deq_clock = clock;
  assign auto_data_1_w_deq_reset = reset;
  assign auto_data_1_w_deq_io_enq_valid = auto_in_w_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_w_deq_io_enq_bits_data = auto_in_w_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_w_deq_io_enq_bits_strb = auto_in_w_bits_strb; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_w_deq_io_enq_bits_last = auto_in_w_bits_last; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_w_deq_io_deq_ready = auto_out_w_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_b_deq_clock = clock;
  assign auto_data_b_deq_reset = reset;
  assign auto_data_b_deq_io_enq_valid = auto_out_b_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_b_deq_io_enq_bits_id = auto_out_b_bits_id; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_b_deq_io_enq_bits_resp = auto_out_b_bits_resp; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_b_deq_io_deq_ready = auto_in_b_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_ar_deq_clock = clock;
  assign auto_data_1_ar_deq_reset = reset;
  assign auto_data_1_ar_deq_io_enq_valid = auto_in_ar_valid; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_ar_deq_io_enq_bits_id = auto_in_ar_bits_id; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_ar_deq_io_enq_bits_addr = auto_in_ar_bits_addr; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_ar_deq_io_enq_bits_len = auto_in_ar_bits_len; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_ar_deq_io_enq_bits_size = auto_in_ar_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_ar_deq_io_enq_bits_burst = auto_in_ar_bits_burst; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_ar_deq_io_enq_bits_lock = auto_in_ar_bits_lock; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_ar_deq_io_enq_bits_cache = auto_in_ar_bits_cache; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_ar_deq_io_enq_bits_prot = auto_in_ar_bits_prot; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_ar_deq_io_enq_bits_qos = auto_in_ar_bits_qos; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_data_1_ar_deq_io_deq_ready = auto_out_ar_ready; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_r_deq_clock = clock;
  assign auto_data_r_deq_reset = reset;
  assign auto_data_r_deq_io_enq_valid = auto_out_r_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_r_deq_io_enq_bits_id = auto_out_r_bits_id; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_r_deq_io_enq_bits_data = auto_out_r_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_r_deq_io_enq_bits_resp = auto_out_r_bits_resp; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_r_deq_io_enq_bits_last = auto_out_r_bits_last; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_data_r_deq_io_deq_ready = auto_in_r_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
endmodule
