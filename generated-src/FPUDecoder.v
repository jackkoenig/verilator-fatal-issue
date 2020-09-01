module FPUDecoder(
  input  [31:0] io_inst,
  output        io_sigs_wen,
  output        io_sigs_ren1,
  output        io_sigs_ren2,
  output        io_sigs_ren3,
  output        io_sigs_swap12,
  output        io_sigs_swap23,
  output        io_sigs_singleIn,
  output        io_sigs_singleOut,
  output        io_sigs_fromint,
  output        io_sigs_toint,
  output        io_sigs_fastpipe,
  output        io_sigs_fma,
  output        io_sigs_div,
  output        io_sigs_sqrt,
  output        io_sigs_wflags
);
  wire [31:0] _decoder_T = io_inst & 32'h40; // @[Decode.scala 14:65]
  wire [31:0] _decoder_T_2 = io_inst & 32'h80000020; // @[Decode.scala 14:65]
  wire  _decoder_T_3 = _decoder_T_2 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_4 = io_inst & 32'h30; // @[Decode.scala 14:65]
  wire  _decoder_T_5 = _decoder_T_4 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_6 = io_inst & 32'h10000020; // @[Decode.scala 14:65]
  wire  _decoder_T_7 = _decoder_T_6 == 32'h10000000; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_10 = io_inst & 32'h80000004; // @[Decode.scala 14:65]
  wire  _decoder_T_11 = _decoder_T_10 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_12 = io_inst & 32'h10000004; // @[Decode.scala 14:65]
  wire  _decoder_T_13 = _decoder_T_12 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_14 = io_inst & 32'h50; // @[Decode.scala 14:65]
  wire  decoder_4 = _decoder_T_14 == 32'h40; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_18 = io_inst & 32'h40000004; // @[Decode.scala 14:65]
  wire  _decoder_T_19 = _decoder_T_18 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_20 = io_inst & 32'h20; // @[Decode.scala 14:65]
  wire  _decoder_T_21 = _decoder_T_20 == 32'h20; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_24 = io_inst & 32'h30000010; // @[Decode.scala 14:65]
  wire [31:0] _decoder_T_26 = io_inst & 32'h82100020; // @[Decode.scala 14:65]
  wire  _decoder_T_27 = _decoder_T_26 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_28 = io_inst & 32'h42000020; // @[Decode.scala 14:65]
  wire  _decoder_T_29 = _decoder_T_28 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_30 = io_inst & 32'h2000030; // @[Decode.scala 14:65]
  wire  _decoder_T_31 = _decoder_T_30 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_32 = io_inst & 32'h2103000; // @[Decode.scala 14:65]
  wire  _decoder_T_33 = _decoder_T_32 == 32'h1000; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_34 = io_inst & 32'h12002000; // @[Decode.scala 14:65]
  wire  _decoder_T_35 = _decoder_T_34 == 32'h10000000; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_36 = io_inst & 32'hd0100010; // @[Decode.scala 14:65]
  wire  _decoder_T_37 = _decoder_T_36 == 32'h40000010; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_38 = io_inst & 32'ha2000020; // @[Decode.scala 14:65]
  wire  _decoder_T_39 = _decoder_T_38 == 32'h80000000; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_46 = io_inst & 32'h42001000; // @[Decode.scala 14:65]
  wire  _decoder_T_47 = _decoder_T_46 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_48 = io_inst & 32'h22000004; // @[Decode.scala 14:65]
  wire  _decoder_T_49 = _decoder_T_48 == 32'h0; // @[Decode.scala 14:121]
  wire  _decoder_T_51 = _decoder_T_34 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_52 = io_inst & 32'h1040; // @[Decode.scala 14:65]
  wire  _decoder_T_53 = _decoder_T_52 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_54 = io_inst & 32'h2000050; // @[Decode.scala 14:65]
  wire  _decoder_T_55 = _decoder_T_54 == 32'h40; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_60 = io_inst & 32'h90000010; // @[Decode.scala 14:65]
  wire  _decoder_T_63 = _decoder_T_60 == 32'h80000010; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_65 = io_inst & 32'ha0000010; // @[Decode.scala 14:65]
  wire  _decoder_T_66 = _decoder_T_65 == 32'h20000010; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_67 = io_inst & 32'hd0000010; // @[Decode.scala 14:65]
  wire  _decoder_T_68 = _decoder_T_67 == 32'h40000010; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_70 = io_inst & 32'h70000004; // @[Decode.scala 14:65]
  wire  _decoder_T_71 = _decoder_T_70 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_72 = io_inst & 32'h68000004; // @[Decode.scala 14:65]
  wire  _decoder_T_73 = _decoder_T_72 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_76 = io_inst & 32'h58000010; // @[Decode.scala 14:65]
  wire [31:0] _decoder_T_80 = io_inst & 32'h20000004; // @[Decode.scala 14:65]
  wire  _decoder_T_81 = _decoder_T_80 == 32'h0; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_82 = io_inst & 32'h8002000; // @[Decode.scala 14:65]
  wire  _decoder_T_83 = _decoder_T_82 == 32'h8000000; // @[Decode.scala 14:121]
  wire [31:0] _decoder_T_84 = io_inst & 32'hc0000004; // @[Decode.scala 14:65]
  wire  _decoder_T_85 = _decoder_T_84 == 32'h80000000; // @[Decode.scala 14:121]
  assign io_sigs_wen = (_decoder_T_3 | _decoder_T_5) | _decoder_T_7; // @[Decode.scala 15:30]
  assign io_sigs_ren1 = (_decoder_T_11 | _decoder_T_13) | decoder_4; // @[Decode.scala 15:30]
  assign io_sigs_ren2 = (_decoder_T_19 | _decoder_T_21) | decoder_4; // @[Decode.scala 15:30]
  assign io_sigs_ren3 = _decoder_T_14 == 32'h40; // @[Decode.scala 14:121]
  assign io_sigs_swap12 = _decoder_T == 32'h0; // @[Decode.scala 14:121]
  assign io_sigs_swap23 = _decoder_T_24 == 32'h10; // @[Decode.scala 14:121]
  assign io_sigs_singleIn = (((((_decoder_T_27 | _decoder_T_29) | _decoder_T_31) | _decoder_T_33) | _decoder_T_35) |
    _decoder_T_37) | _decoder_T_39; // @[Decode.scala 15:30]
  assign io_sigs_singleOut = (((_decoder_T_47 | _decoder_T_49) | _decoder_T_51) | _decoder_T_53) | _decoder_T_55; // @[Decode.scala 15:30]
  assign io_sigs_fromint = _decoder_T_60 == 32'h90000010; // @[Decode.scala 14:121]
  assign io_sigs_toint = _decoder_T_21 | _decoder_T_63; // @[Decode.scala 15:30]
  assign io_sigs_fastpipe = _decoder_T_66 | _decoder_T_68; // @[Decode.scala 15:30]
  assign io_sigs_fma = (_decoder_T_71 | _decoder_T_73) | decoder_4; // @[Decode.scala 15:30]
  assign io_sigs_div = _decoder_T_76 == 32'h18000010; // @[Decode.scala 14:121]
  assign io_sigs_sqrt = _decoder_T_67 == 32'h50000010; // @[Decode.scala 14:121]
  assign io_sigs_wflags = ((_decoder_T_81 | decoder_4) | _decoder_T_83) | _decoder_T_85; // @[Decode.scala 15:30]
endmodule
