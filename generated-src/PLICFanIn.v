module PLICFanIn(
  input  [1:0] io_prio_0,
  input  [1:0] io_prio_1,
  input  [1:0] io_ip,
  output [1:0] io_dev,
  output [1:0] io_max
);
  wire  effectivePriority_right = io_ip[0]; // @[Plic.scala 342:59]
  wire  effectivePriority_right_1 = io_ip[1]; // @[Plic.scala 342:59]
  wire [2:0] effectivePriority_1 = {effectivePriority_right,io_prio_0}; // @[Cat.scala 29:58]
  wire [2:0] effectivePriority_2 = {effectivePriority_right_1,io_prio_1}; // @[Cat.scala 29:58]
  wire  _T = 3'h4 >= effectivePriority_1; // @[Plic.scala 338:20]
  wire [2:0] _T_2 = _T ? 3'h4 : effectivePriority_1; // @[Misc.scala 34:9]
  wire  _T_3 = _T ? 1'h0 : 1'h1; // @[Misc.scala 34:36]
  wire  _T_4 = _T_2 >= effectivePriority_2; // @[Plic.scala 338:20]
  wire [2:0] maxPri = _T_4 ? _T_2 : effectivePriority_2; // @[Misc.scala 34:9]
  assign io_dev = _T_4 ? {{1'd0}, _T_3} : 2'h2; // @[Misc.scala 34:36]
  assign io_max = maxPri[1:0]; // @[Plic.scala 344:10]
endmodule
