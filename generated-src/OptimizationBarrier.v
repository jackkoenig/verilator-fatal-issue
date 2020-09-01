module OptimizationBarrier(
  input  [19:0] io_x_ppn,
  input         io_x_u,
  input         io_x_ae,
  input         io_x_sw,
  input         io_x_sx,
  input         io_x_sr,
  input         io_x_pw,
  input         io_x_px,
  input         io_x_pr,
  input         io_x_ppp,
  input         io_x_pal,
  input         io_x_paa,
  input         io_x_eff,
  input         io_x_c,
  output [19:0] io_y_ppn,
  output        io_y_u,
  output        io_y_ae,
  output        io_y_sw,
  output        io_y_sx,
  output        io_y_sr,
  output        io_y_pw,
  output        io_y_px,
  output        io_y_pr,
  output        io_y_ppp,
  output        io_y_pal,
  output        io_y_paa,
  output        io_y_eff,
  output        io_y_c
);
  assign io_y_ppn = io_x_ppn; // @[package.scala 241:12]
  assign io_y_u = io_x_u; // @[package.scala 241:12]
  assign io_y_ae = io_x_ae; // @[package.scala 241:12]
  assign io_y_sw = io_x_sw; // @[package.scala 241:12]
  assign io_y_sx = io_x_sx; // @[package.scala 241:12]
  assign io_y_sr = io_x_sr; // @[package.scala 241:12]
  assign io_y_pw = io_x_pw; // @[package.scala 241:12]
  assign io_y_px = io_x_px; // @[package.scala 241:12]
  assign io_y_pr = io_x_pr; // @[package.scala 241:12]
  assign io_y_ppp = io_x_ppp; // @[package.scala 241:12]
  assign io_y_pal = io_x_pal; // @[package.scala 241:12]
  assign io_y_paa = io_x_paa; // @[package.scala 241:12]
  assign io_y_eff = io_x_eff; // @[package.scala 241:12]
  assign io_y_c = io_x_c; // @[package.scala 241:12]
endmodule
