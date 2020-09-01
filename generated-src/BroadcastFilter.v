module BroadcastFilter(
  output        io_request_ready,
  input         io_request_valid,
  input  [1:0]  io_request_bits_mshr,
  input  [31:0] io_request_bits_address,
  input         io_request_bits_allocOH,
  input         io_request_bits_needT,
  input         io_response_ready,
  output        io_response_valid,
  output [1:0]  io_response_bits_mshr,
  output [31:0] io_response_bits_address,
  output        io_response_bits_allocOH,
  output        io_response_bits_needT
);
  assign io_request_ready = io_response_ready; // @[Broadcast.scala 362:20]
  assign io_response_valid = io_request_valid; // @[Broadcast.scala 363:21]
  assign io_response_bits_mshr = io_request_bits_mshr; // @[Broadcast.scala 365:28]
  assign io_response_bits_address = io_request_bits_address; // @[Broadcast.scala 366:28]
  assign io_response_bits_allocOH = io_request_bits_allocOH; // @[Broadcast.scala 368:28]
  assign io_response_bits_needT = io_request_bits_needT; // @[Broadcast.scala 367:28]
endmodule
