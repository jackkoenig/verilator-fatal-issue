module TLFIFOFixer_2(
  input         clock,
  input         reset,
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [2:0]  auto_in_a_bits_param,
  input  [3:0]  auto_in_a_bits_size,
  input  [3:0]  auto_in_a_bits_source,
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
  input         auto_in_a_bits_corrupt,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output [2:0]  auto_in_d_bits_opcode,
  output [3:0]  auto_in_d_bits_size,
  output [3:0]  auto_in_d_bits_source,
  output        auto_in_d_bits_denied,
  output [63:0] auto_in_d_bits_data,
  output        auto_in_d_bits_corrupt,
  input         auto_out_a_ready,
  output        auto_out_a_valid,
  output [2:0]  auto_out_a_bits_opcode,
  output [2:0]  auto_out_a_bits_param,
  output [3:0]  auto_out_a_bits_size,
  output [3:0]  auto_out_a_bits_source,
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
  output        auto_out_a_bits_corrupt,
  output        auto_out_d_ready,
  input         auto_out_d_valid,
  input  [2:0]  auto_out_d_bits_opcode,
  input  [3:0]  auto_out_d_bits_size,
  input  [3:0]  auto_out_d_bits_source,
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
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
`endif // RANDOMIZE_REG_INIT
  wire [32:0] _a_notFIFO_T_1 = {1'b0,$signed(auto_in_a_bits_address)}; // @[Parameters.scala 138:49]
  wire [32:0] _a_id_T_3 = $signed(_a_notFIFO_T_1) & 33'sh80000000; // @[Parameters.scala 138:52]
  wire  a_id = $signed(_a_id_T_3) == 33'sh0; // @[Parameters.scala 138:67]
  wire  a_noDomain = ~a_id; // @[FIFOFixer.scala 57:29]
  wire  stalls_a_sel = ~(auto_in_a_bits_source[3]); // @[Parameters.scala 55:32]
  reg [8:0] a_first_counter; // @[Edges.scala 230:27]
  wire  a_first = a_first_counter == 9'h0; // @[Edges.scala 232:25]
  reg  flight_0; // @[FIFOFixer.scala 73:27]
  reg  flight_1; // @[FIFOFixer.scala 73:27]
  reg  flight_2; // @[FIFOFixer.scala 73:27]
  reg  flight_3; // @[FIFOFixer.scala 73:27]
  reg  flight_4; // @[FIFOFixer.scala 73:27]
  reg  flight_5; // @[FIFOFixer.scala 73:27]
  reg  flight_6; // @[FIFOFixer.scala 73:27]
  reg  flight_7; // @[FIFOFixer.scala 73:27]
  reg  stalls_id; // @[Reg.scala 15:16]
  wire  stalls_0 = ((stalls_a_sel & a_first) & (((((((flight_0 | flight_1) | flight_2) | flight_3) | flight_4) |
    flight_5) | flight_6) | flight_7)) & (a_noDomain | (stalls_id != a_id)); // @[FIFOFixer.scala 82:50]
  reg  flight_8; // @[FIFOFixer.scala 73:27]
  reg  flight_9; // @[FIFOFixer.scala 73:27]
  reg  flight_10; // @[FIFOFixer.scala 73:27]
  reg  flight_11; // @[FIFOFixer.scala 73:27]
  reg  flight_12; // @[FIFOFixer.scala 73:27]
  reg  flight_13; // @[FIFOFixer.scala 73:27]
  reg  flight_14; // @[FIFOFixer.scala 73:27]
  reg  flight_15; // @[FIFOFixer.scala 73:27]
  reg  stalls_id_1; // @[Reg.scala 15:16]
  wire  stalls_1 = (((auto_in_a_bits_source[3]) & a_first) & (((((((flight_8 | flight_9) | flight_10) | flight_11) |
    flight_12) | flight_13) | flight_14) | flight_15)) & (a_noDomain | (stalls_id_1 != a_id)); // @[FIFOFixer.scala 82:50]
  wire  stall = stalls_0 | stalls_1; // @[FIFOFixer.scala 85:49]
  wire  _auto_data_a_ready_T = ~stall; // @[FIFOFixer.scala 90:50]
  wire  auto_data_a_ready = auto_out_a_ready & (~stall); // @[FIFOFixer.scala 90:33]
  wire  _a_first_T = auto_data_a_ready & auto_in_a_valid; // @[Decoupled.scala 40:37]
  wire [26:0] _a_first_beats1_decode_T_1 = 27'hfff << auto_in_a_bits_size; // @[package.scala 212:77]
  wire [11:0] _a_first_beats1_decode_T_3 = ~(_a_first_beats1_decode_T_1[11:0]); // @[package.scala 212:46]
  wire [8:0] a_first_beats1_decode = _a_first_beats1_decode_T_3[11:3]; // @[Edges.scala 221:59]
  wire  a_first_beats1_opdata = ~(auto_in_a_bits_opcode[2]); // @[Edges.scala 93:28]
  wire [8:0] a_first_counter1 = a_first_counter - 9'h1; // @[Edges.scala 231:28]
  wire  _d_first_T = auto_in_d_ready & auto_out_d_valid; // @[Decoupled.scala 40:37]
  wire [26:0] _d_first_beats1_decode_T_1 = 27'hfff << auto_out_d_bits_size; // @[package.scala 212:77]
  wire [11:0] _d_first_beats1_decode_T_3 = ~(_d_first_beats1_decode_T_1[11:0]); // @[package.scala 212:46]
  wire [8:0] d_first_beats1_decode = _d_first_beats1_decode_T_3[11:3]; // @[Edges.scala 221:59]
  wire  d_first_beats1_opdata = auto_out_d_bits_opcode[0]; // @[Edges.scala 107:36]
  reg [8:0] d_first_counter; // @[Edges.scala 230:27]
  wire [8:0] d_first_counter1 = d_first_counter - 9'h1; // @[Edges.scala 231:28]
  wire  d_first_first = d_first_counter == 9'h0; // @[Edges.scala 232:25]
  wire  d_first = d_first_first & (auto_out_d_bits_opcode != 3'h6); // @[FIFOFixer.scala 69:42]
  wire  _T_1 = a_first & _a_first_T; // @[FIFOFixer.scala 74:21]
  wire  _GEN_2 = (4'h0 == auto_in_a_bits_source) | flight_0; // @[FIFOFixer.scala 74:64 FIFOFixer.scala 74:64 FIFOFixer.scala 73:27]
  wire  _GEN_3 = (4'h1 == auto_in_a_bits_source) | flight_1; // @[FIFOFixer.scala 74:64 FIFOFixer.scala 74:64 FIFOFixer.scala 73:27]
  wire  _GEN_4 = (4'h2 == auto_in_a_bits_source) | flight_2; // @[FIFOFixer.scala 74:64 FIFOFixer.scala 74:64 FIFOFixer.scala 73:27]
  wire  _GEN_5 = (4'h3 == auto_in_a_bits_source) | flight_3; // @[FIFOFixer.scala 74:64 FIFOFixer.scala 74:64 FIFOFixer.scala 73:27]
  wire  _GEN_6 = (4'h4 == auto_in_a_bits_source) | flight_4; // @[FIFOFixer.scala 74:64 FIFOFixer.scala 74:64 FIFOFixer.scala 73:27]
  wire  _GEN_7 = (4'h5 == auto_in_a_bits_source) | flight_5; // @[FIFOFixer.scala 74:64 FIFOFixer.scala 74:64 FIFOFixer.scala 73:27]
  wire  _GEN_8 = (4'h6 == auto_in_a_bits_source) | flight_6; // @[FIFOFixer.scala 74:64 FIFOFixer.scala 74:64 FIFOFixer.scala 73:27]
  wire  _GEN_9 = (4'h7 == auto_in_a_bits_source) | flight_7; // @[FIFOFixer.scala 74:64 FIFOFixer.scala 74:64 FIFOFixer.scala 73:27]
  wire  _GEN_10 = (4'h8 == auto_in_a_bits_source) | flight_8; // @[FIFOFixer.scala 74:64 FIFOFixer.scala 74:64 FIFOFixer.scala 73:27]
  wire  _GEN_11 = (4'h9 == auto_in_a_bits_source) | flight_9; // @[FIFOFixer.scala 74:64 FIFOFixer.scala 74:64 FIFOFixer.scala 73:27]
  wire  _GEN_12 = (4'ha == auto_in_a_bits_source) | flight_10; // @[FIFOFixer.scala 74:64 FIFOFixer.scala 74:64 FIFOFixer.scala 73:27]
  wire  _GEN_13 = (4'hb == auto_in_a_bits_source) | flight_11; // @[FIFOFixer.scala 74:64 FIFOFixer.scala 74:64 FIFOFixer.scala 73:27]
  wire  _GEN_14 = (4'hc == auto_in_a_bits_source) | flight_12; // @[FIFOFixer.scala 74:64 FIFOFixer.scala 74:64 FIFOFixer.scala 73:27]
  wire  _GEN_15 = (4'hd == auto_in_a_bits_source) | flight_13; // @[FIFOFixer.scala 74:64 FIFOFixer.scala 74:64 FIFOFixer.scala 73:27]
  wire  _GEN_16 = (4'he == auto_in_a_bits_source) | flight_14; // @[FIFOFixer.scala 74:64 FIFOFixer.scala 74:64 FIFOFixer.scala 73:27]
  wire  _GEN_17 = (4'hf == auto_in_a_bits_source) | flight_15; // @[FIFOFixer.scala 74:64 FIFOFixer.scala 74:64 FIFOFixer.scala 73:27]
  wire  _GEN_18 = _T_1 ? _GEN_2 : flight_0; // @[FIFOFixer.scala 74:37 FIFOFixer.scala 73:27]
  wire  _GEN_19 = _T_1 ? _GEN_3 : flight_1; // @[FIFOFixer.scala 74:37 FIFOFixer.scala 73:27]
  wire  _GEN_20 = _T_1 ? _GEN_4 : flight_2; // @[FIFOFixer.scala 74:37 FIFOFixer.scala 73:27]
  wire  _GEN_21 = _T_1 ? _GEN_5 : flight_3; // @[FIFOFixer.scala 74:37 FIFOFixer.scala 73:27]
  wire  _GEN_22 = _T_1 ? _GEN_6 : flight_4; // @[FIFOFixer.scala 74:37 FIFOFixer.scala 73:27]
  wire  _GEN_23 = _T_1 ? _GEN_7 : flight_5; // @[FIFOFixer.scala 74:37 FIFOFixer.scala 73:27]
  wire  _GEN_24 = _T_1 ? _GEN_8 : flight_6; // @[FIFOFixer.scala 74:37 FIFOFixer.scala 73:27]
  wire  _GEN_25 = _T_1 ? _GEN_9 : flight_7; // @[FIFOFixer.scala 74:37 FIFOFixer.scala 73:27]
  wire  _GEN_26 = _T_1 ? _GEN_10 : flight_8; // @[FIFOFixer.scala 74:37 FIFOFixer.scala 73:27]
  wire  _GEN_27 = _T_1 ? _GEN_11 : flight_9; // @[FIFOFixer.scala 74:37 FIFOFixer.scala 73:27]
  wire  _GEN_28 = _T_1 ? _GEN_12 : flight_10; // @[FIFOFixer.scala 74:37 FIFOFixer.scala 73:27]
  wire  _GEN_29 = _T_1 ? _GEN_13 : flight_11; // @[FIFOFixer.scala 74:37 FIFOFixer.scala 73:27]
  wire  _GEN_30 = _T_1 ? _GEN_14 : flight_12; // @[FIFOFixer.scala 74:37 FIFOFixer.scala 73:27]
  wire  _GEN_31 = _T_1 ? _GEN_15 : flight_13; // @[FIFOFixer.scala 74:37 FIFOFixer.scala 73:27]
  wire  _GEN_32 = _T_1 ? _GEN_16 : flight_14; // @[FIFOFixer.scala 74:37 FIFOFixer.scala 73:27]
  wire  _GEN_33 = _T_1 ? _GEN_17 : flight_15; // @[FIFOFixer.scala 74:37 FIFOFixer.scala 73:27]
  wire  _T_3 = d_first & _d_first_T; // @[FIFOFixer.scala 75:21]
  wire  _stalls_id_T_1 = _a_first_T & stalls_a_sel; // @[FIFOFixer.scala 79:49]
  wire  _stalls_id_T_5 = _a_first_T & (auto_in_a_bits_source[3]); // @[FIFOFixer.scala 79:49]
  assign auto_in_a_ready = auto_out_a_ready & (~stall); // @[FIFOFixer.scala 90:33]
  assign auto_in_d_valid = auto_out_d_valid; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_d_bits_source = auto_out_d_bits_source; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_d_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_in_d_bits_corrupt = auto_out_d_bits_corrupt; // @[Nodes.scala 1213:84 LazyModule.scala 314:12]
  assign auto_out_a_valid = auto_in_a_valid & _auto_data_a_ready_T; // @[FIFOFixer.scala 89:33]
  assign auto_out_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_a_bits_user_amba_prot_bufferable = auto_in_a_bits_user_amba_prot_bufferable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_a_bits_user_amba_prot_modifiable = auto_in_a_bits_user_amba_prot_modifiable; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_a_bits_user_amba_prot_readalloc = auto_in_a_bits_user_amba_prot_readalloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_a_bits_user_amba_prot_writealloc = auto_in_a_bits_user_amba_prot_writealloc; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_a_bits_user_amba_prot_privileged = auto_in_a_bits_user_amba_prot_privileged; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_a_bits_user_amba_prot_secure = auto_in_a_bits_user_amba_prot_secure; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_a_bits_user_amba_prot_fetch = auto_in_a_bits_user_amba_prot_fetch; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  assign auto_out_d_ready = auto_in_d_ready; // @[Nodes.scala 1216:84 LazyModule.scala 312:16]
  always @(posedge clock) begin
    if (reset) begin // @[Edges.scala 230:27]
      a_first_counter <= 9'h0; // @[Edges.scala 230:27]
    end else if (_a_first_T) begin // @[Edges.scala 236:17]
      if (a_first) begin // @[Edges.scala 237:21]
        if (a_first_beats1_opdata) begin // @[Edges.scala 222:14]
          a_first_counter <= a_first_beats1_decode;
        end else begin
          a_first_counter <= 9'h0;
        end
      end else begin
        a_first_counter <= a_first_counter1;
      end
    end
    if (reset) begin // @[FIFOFixer.scala 73:27]
      flight_0 <= 1'h0; // @[FIFOFixer.scala 73:27]
    end else if (_T_3) begin // @[FIFOFixer.scala 75:37]
      if (4'h0 == auto_out_d_bits_source) begin // @[FIFOFixer.scala 75:64]
        flight_0 <= 1'h0; // @[FIFOFixer.scala 75:64]
      end else begin
        flight_0 <= _GEN_18;
      end
    end else begin
      flight_0 <= _GEN_18;
    end
    if (reset) begin // @[FIFOFixer.scala 73:27]
      flight_1 <= 1'h0; // @[FIFOFixer.scala 73:27]
    end else if (_T_3) begin // @[FIFOFixer.scala 75:37]
      if (4'h1 == auto_out_d_bits_source) begin // @[FIFOFixer.scala 75:64]
        flight_1 <= 1'h0; // @[FIFOFixer.scala 75:64]
      end else begin
        flight_1 <= _GEN_19;
      end
    end else begin
      flight_1 <= _GEN_19;
    end
    if (reset) begin // @[FIFOFixer.scala 73:27]
      flight_2 <= 1'h0; // @[FIFOFixer.scala 73:27]
    end else if (_T_3) begin // @[FIFOFixer.scala 75:37]
      if (4'h2 == auto_out_d_bits_source) begin // @[FIFOFixer.scala 75:64]
        flight_2 <= 1'h0; // @[FIFOFixer.scala 75:64]
      end else begin
        flight_2 <= _GEN_20;
      end
    end else begin
      flight_2 <= _GEN_20;
    end
    if (reset) begin // @[FIFOFixer.scala 73:27]
      flight_3 <= 1'h0; // @[FIFOFixer.scala 73:27]
    end else if (_T_3) begin // @[FIFOFixer.scala 75:37]
      if (4'h3 == auto_out_d_bits_source) begin // @[FIFOFixer.scala 75:64]
        flight_3 <= 1'h0; // @[FIFOFixer.scala 75:64]
      end else begin
        flight_3 <= _GEN_21;
      end
    end else begin
      flight_3 <= _GEN_21;
    end
    if (reset) begin // @[FIFOFixer.scala 73:27]
      flight_4 <= 1'h0; // @[FIFOFixer.scala 73:27]
    end else if (_T_3) begin // @[FIFOFixer.scala 75:37]
      if (4'h4 == auto_out_d_bits_source) begin // @[FIFOFixer.scala 75:64]
        flight_4 <= 1'h0; // @[FIFOFixer.scala 75:64]
      end else begin
        flight_4 <= _GEN_22;
      end
    end else begin
      flight_4 <= _GEN_22;
    end
    if (reset) begin // @[FIFOFixer.scala 73:27]
      flight_5 <= 1'h0; // @[FIFOFixer.scala 73:27]
    end else if (_T_3) begin // @[FIFOFixer.scala 75:37]
      if (4'h5 == auto_out_d_bits_source) begin // @[FIFOFixer.scala 75:64]
        flight_5 <= 1'h0; // @[FIFOFixer.scala 75:64]
      end else begin
        flight_5 <= _GEN_23;
      end
    end else begin
      flight_5 <= _GEN_23;
    end
    if (reset) begin // @[FIFOFixer.scala 73:27]
      flight_6 <= 1'h0; // @[FIFOFixer.scala 73:27]
    end else if (_T_3) begin // @[FIFOFixer.scala 75:37]
      if (4'h6 == auto_out_d_bits_source) begin // @[FIFOFixer.scala 75:64]
        flight_6 <= 1'h0; // @[FIFOFixer.scala 75:64]
      end else begin
        flight_6 <= _GEN_24;
      end
    end else begin
      flight_6 <= _GEN_24;
    end
    if (reset) begin // @[FIFOFixer.scala 73:27]
      flight_7 <= 1'h0; // @[FIFOFixer.scala 73:27]
    end else if (_T_3) begin // @[FIFOFixer.scala 75:37]
      if (4'h7 == auto_out_d_bits_source) begin // @[FIFOFixer.scala 75:64]
        flight_7 <= 1'h0; // @[FIFOFixer.scala 75:64]
      end else begin
        flight_7 <= _GEN_25;
      end
    end else begin
      flight_7 <= _GEN_25;
    end
    if (_stalls_id_T_1) begin // @[Reg.scala 16:19]
      stalls_id <= a_id; // @[Reg.scala 16:23]
    end
    if (reset) begin // @[FIFOFixer.scala 73:27]
      flight_8 <= 1'h0; // @[FIFOFixer.scala 73:27]
    end else if (_T_3) begin // @[FIFOFixer.scala 75:37]
      if (4'h8 == auto_out_d_bits_source) begin // @[FIFOFixer.scala 75:64]
        flight_8 <= 1'h0; // @[FIFOFixer.scala 75:64]
      end else begin
        flight_8 <= _GEN_26;
      end
    end else begin
      flight_8 <= _GEN_26;
    end
    if (reset) begin // @[FIFOFixer.scala 73:27]
      flight_9 <= 1'h0; // @[FIFOFixer.scala 73:27]
    end else if (_T_3) begin // @[FIFOFixer.scala 75:37]
      if (4'h9 == auto_out_d_bits_source) begin // @[FIFOFixer.scala 75:64]
        flight_9 <= 1'h0; // @[FIFOFixer.scala 75:64]
      end else begin
        flight_9 <= _GEN_27;
      end
    end else begin
      flight_9 <= _GEN_27;
    end
    if (reset) begin // @[FIFOFixer.scala 73:27]
      flight_10 <= 1'h0; // @[FIFOFixer.scala 73:27]
    end else if (_T_3) begin // @[FIFOFixer.scala 75:37]
      if (4'ha == auto_out_d_bits_source) begin // @[FIFOFixer.scala 75:64]
        flight_10 <= 1'h0; // @[FIFOFixer.scala 75:64]
      end else begin
        flight_10 <= _GEN_28;
      end
    end else begin
      flight_10 <= _GEN_28;
    end
    if (reset) begin // @[FIFOFixer.scala 73:27]
      flight_11 <= 1'h0; // @[FIFOFixer.scala 73:27]
    end else if (_T_3) begin // @[FIFOFixer.scala 75:37]
      if (4'hb == auto_out_d_bits_source) begin // @[FIFOFixer.scala 75:64]
        flight_11 <= 1'h0; // @[FIFOFixer.scala 75:64]
      end else begin
        flight_11 <= _GEN_29;
      end
    end else begin
      flight_11 <= _GEN_29;
    end
    if (reset) begin // @[FIFOFixer.scala 73:27]
      flight_12 <= 1'h0; // @[FIFOFixer.scala 73:27]
    end else if (_T_3) begin // @[FIFOFixer.scala 75:37]
      if (4'hc == auto_out_d_bits_source) begin // @[FIFOFixer.scala 75:64]
        flight_12 <= 1'h0; // @[FIFOFixer.scala 75:64]
      end else begin
        flight_12 <= _GEN_30;
      end
    end else begin
      flight_12 <= _GEN_30;
    end
    if (reset) begin // @[FIFOFixer.scala 73:27]
      flight_13 <= 1'h0; // @[FIFOFixer.scala 73:27]
    end else if (_T_3) begin // @[FIFOFixer.scala 75:37]
      if (4'hd == auto_out_d_bits_source) begin // @[FIFOFixer.scala 75:64]
        flight_13 <= 1'h0; // @[FIFOFixer.scala 75:64]
      end else begin
        flight_13 <= _GEN_31;
      end
    end else begin
      flight_13 <= _GEN_31;
    end
    if (reset) begin // @[FIFOFixer.scala 73:27]
      flight_14 <= 1'h0; // @[FIFOFixer.scala 73:27]
    end else if (_T_3) begin // @[FIFOFixer.scala 75:37]
      if (4'he == auto_out_d_bits_source) begin // @[FIFOFixer.scala 75:64]
        flight_14 <= 1'h0; // @[FIFOFixer.scala 75:64]
      end else begin
        flight_14 <= _GEN_32;
      end
    end else begin
      flight_14 <= _GEN_32;
    end
    if (reset) begin // @[FIFOFixer.scala 73:27]
      flight_15 <= 1'h0; // @[FIFOFixer.scala 73:27]
    end else if (_T_3) begin // @[FIFOFixer.scala 75:37]
      if (4'hf == auto_out_d_bits_source) begin // @[FIFOFixer.scala 75:64]
        flight_15 <= 1'h0; // @[FIFOFixer.scala 75:64]
      end else begin
        flight_15 <= _GEN_33;
      end
    end else begin
      flight_15 <= _GEN_33;
    end
    if (_stalls_id_T_5) begin // @[Reg.scala 16:19]
      stalls_id_1 <= a_id; // @[Reg.scala 16:23]
    end
    if (reset) begin // @[Edges.scala 230:27]
      d_first_counter <= 9'h0; // @[Edges.scala 230:27]
    end else if (_d_first_T) begin // @[Edges.scala 236:17]
      if (d_first_first) begin // @[Edges.scala 237:21]
        if (d_first_beats1_opdata) begin // @[Edges.scala 222:14]
          d_first_counter <= d_first_beats1_decode;
        end else begin
          d_first_counter <= 9'h0;
        end
      end else begin
        d_first_counter <= d_first_counter1;
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
  a_first_counter = _RAND_0[8:0];
  _RAND_1 = {1{`RANDOM}};
  flight_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  flight_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  flight_2 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  flight_3 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  flight_4 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  flight_5 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  flight_6 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  flight_7 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  stalls_id = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  flight_8 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  flight_9 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  flight_10 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  flight_11 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  flight_12 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  flight_13 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  flight_14 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  flight_15 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  stalls_id_1 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  d_first_counter = _RAND_19[8:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
