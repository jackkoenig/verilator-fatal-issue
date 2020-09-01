module PlusArgTimeout(
  input         clock,
  input         reset,
  input  [31:0] io_count
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 62:19]
  wire  _T = plusarg_reader_out > 32'h0; // @[PlusArg.scala 63:13]
  plusarg_reader #(.FORMAT("max_core_cycles=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 62:19]
    .out(plusarg_reader_out)
  );
endmodule
