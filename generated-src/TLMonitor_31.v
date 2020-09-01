module TLMonitor_31(
  input        clock,
  input        reset,
  input        io_in_a_ready,
  input        io_in_a_valid,
  input  [2:0] io_in_a_bits_opcode,
  input  [8:0] io_in_a_bits_address,
  input        io_in_d_ready,
  input        io_in_d_valid,
  input  [2:0] io_in_d_bits_opcode,
  input  [1:0] io_in_d_bits_param,
  input  [1:0] io_in_d_bits_size,
  input        io_in_d_bits_sink,
  input        io_in_d_bits_denied,
  input        io_in_d_bits_corrupt
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 80:11]
  wire [31:0] plusarg_reader_1_out; // @[PlusArg.scala 80:11]
  wire [8:0] _is_aligned_T = io_in_a_bits_address & 9'h3; // @[Edges.scala 22:16]
  wire  is_aligned = _is_aligned_T == 9'h0; // @[Edges.scala 22:24]
  wire  _T_15 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 83:25]
  wire  _T_30 = ~reset; // @[Monitor.scala 44:11]
  wire  _T_69 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 94:25]
  wire  _T_127 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 106:25]
  wire  _T_167 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 116:25]
  wire  _T_201 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 124:25]
  wire  _T_236 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 132:25]
  wire  _T_266 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 140:25]
  wire  _T_296 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 148:25]
  wire  _T_330 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24]
  wire  _T_334 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 312:25]
  wire  _T_338 = io_in_d_bits_size >= 2'h2; // @[Monitor.scala 314:27]
  wire  _T_342 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 315:28]
  wire  _T_346 = ~io_in_d_bits_corrupt; // @[Monitor.scala 316:15]
  wire  _T_350 = ~io_in_d_bits_denied; // @[Monitor.scala 317:15]
  wire  _T_354 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 320:25]
  wire  _T_365 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26]
  wire  _T_369 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 325:28]
  wire  _T_382 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 330:25]
  wire  _T_402 = _T_350 | io_in_d_bits_corrupt; // @[Monitor.scala 336:30]
  wire  _T_411 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 340:25]
  wire  _T_428 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 348:25]
  wire  _T_446 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 356:25]
  wire  a_first_done = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37]
  reg  a_first_counter; // @[Edges.scala 230:27]
  wire  a_first_counter1 = a_first_counter - 1'h1; // @[Edges.scala 231:28]
  wire  a_first = ~a_first_counter; // @[Edges.scala 232:25]
  reg [2:0] opcode; // @[Monitor.scala 386:22]
  reg [8:0] address; // @[Monitor.scala 390:22]
  wire  _T_476 = io_in_a_valid & (~a_first); // @[Monitor.scala 391:19]
  wire  _T_477 = io_in_a_bits_opcode == opcode; // @[Monitor.scala 392:32]
  wire  _T_493 = io_in_a_bits_address == address; // @[Monitor.scala 396:32]
  wire  _T_498 = a_first_done & a_first; // @[Monitor.scala 398:20]
  wire  d_first_done = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37]
  reg  d_first_counter; // @[Edges.scala 230:27]
  wire  d_first_counter1 = d_first_counter - 1'h1; // @[Edges.scala 231:28]
  wire  d_first = ~d_first_counter; // @[Edges.scala 232:25]
  reg [2:0] opcode_1; // @[Monitor.scala 537:22]
  reg [1:0] param_1; // @[Monitor.scala 538:22]
  reg [1:0] size_1; // @[Monitor.scala 539:22]
  reg  sink; // @[Monitor.scala 541:22]
  reg  denied; // @[Monitor.scala 542:22]
  wire  _T_500 = io_in_d_valid & (~d_first); // @[Monitor.scala 543:19]
  wire  _T_501 = io_in_d_bits_opcode == opcode_1; // @[Monitor.scala 544:29]
  wire  _T_505 = io_in_d_bits_param == param_1; // @[Monitor.scala 545:29]
  wire  _T_509 = io_in_d_bits_size == size_1; // @[Monitor.scala 546:29]
  wire  _T_517 = io_in_d_bits_sink == sink; // @[Monitor.scala 548:29]
  wire  _T_521 = io_in_d_bits_denied == denied; // @[Monitor.scala 549:29]
  wire  _T_526 = d_first_done & d_first; // @[Monitor.scala 551:20]
  reg  inflight; // @[Monitor.scala 613:27]
  reg [3:0] inflight_opcodes; // @[Monitor.scala 615:35]
  reg [3:0] inflight_sizes; // @[Monitor.scala 617:33]
  reg  a_first_counter_1; // @[Edges.scala 230:27]
  wire  a_first_counter1_1 = a_first_counter_1 - 1'h1; // @[Edges.scala 231:28]
  wire  a_first_1 = ~a_first_counter_1; // @[Edges.scala 232:25]
  reg  d_first_counter_1; // @[Edges.scala 230:27]
  wire  d_first_counter1_1 = d_first_counter_1 - 1'h1; // @[Edges.scala 231:28]
  wire  d_first_1 = ~d_first_counter_1; // @[Edges.scala 232:25]
  wire [15:0] _a_opcode_lookup_T_5 = 16'h10 - 16'h1; // @[Monitor.scala 611:57]
  wire [15:0] _GEN_71 = {{12'd0}, inflight_opcodes}; // @[Monitor.scala 636:97]
  wire [15:0] _a_opcode_lookup_T_6 = _GEN_71 & _a_opcode_lookup_T_5; // @[Monitor.scala 636:97]
  wire [15:0] _a_opcode_lookup_T_7 = {{1'd0}, _a_opcode_lookup_T_6[15:1]}; // @[Monitor.scala 636:152]
  wire [15:0] _GEN_73 = {{12'd0}, inflight_sizes}; // @[Monitor.scala 640:91]
  wire [15:0] _a_size_lookup_T_6 = _GEN_73 & _a_opcode_lookup_T_5; // @[Monitor.scala 640:91]
  wire [15:0] _a_size_lookup_T_7 = {{1'd0}, _a_size_lookup_T_6[15:1]}; // @[Monitor.scala 640:144]
  wire  _T_527 = io_in_a_valid & a_first_1; // @[Monitor.scala 650:26]
  wire  _T_530 = a_first_done & a_first_1; // @[Monitor.scala 654:27]
  wire [3:0] _a_opcodes_set_interm_T = {io_in_a_bits_opcode, 1'h0}; // @[Monitor.scala 656:53]
  wire [3:0] _a_opcodes_set_interm_T_1 = _a_opcodes_set_interm_T | 4'h1; // @[Monitor.scala 656:61]
  wire [3:0] a_opcodes_set_interm = _T_530 ? _a_opcodes_set_interm_T_1 : 4'h0; // @[Monitor.scala 654:72 Monitor.scala 656:28]
  wire [18:0] _a_opcodes_set_T_1 = {{15'd0}, a_opcodes_set_interm}; // @[Monitor.scala 658:54]
  wire [2:0] a_sizes_set_interm = _T_530 ? 3'h5 : 3'h0; // @[Monitor.scala 654:72 Monitor.scala 657:28]
  wire [17:0] _a_sizes_set_T_1 = {{15'd0}, a_sizes_set_interm}; // @[Monitor.scala 659:52]
  wire  _T_534 = ~inflight; // @[Monitor.scala 660:17]
  wire [1:0] _GEN_16 = _T_530 ? 2'h1 : 2'h0; // @[Monitor.scala 654:72 Monitor.scala 655:28]
  wire [18:0] _GEN_19 = _T_530 ? _a_opcodes_set_T_1 : 19'h0; // @[Monitor.scala 654:72 Monitor.scala 658:28]
  wire [17:0] _GEN_20 = _T_530 ? _a_sizes_set_T_1 : 18'h0; // @[Monitor.scala 654:72 Monitor.scala 659:28]
  wire  _T_538 = io_in_d_valid & d_first_1; // @[Monitor.scala 673:26]
  wire  _T_540 = ~_T_334; // @[Monitor.scala 673:74]
  wire  _T_541 = (io_in_d_valid & d_first_1) & (~_T_334); // @[Monitor.scala 673:71]
  wire  _T_546 = (d_first_done & d_first_1) & _T_540; // @[Monitor.scala 677:72]
  wire [30:0] _d_opcodes_clr_T_5 = {{15'd0}, _a_opcode_lookup_T_5}; // @[Monitor.scala 679:76]
  wire [1:0] _GEN_22 = _T_546 ? 2'h1 : 2'h0; // @[Monitor.scala 677:91 Monitor.scala 678:21]
  wire [30:0] _GEN_23 = _T_546 ? _d_opcodes_clr_T_5 : 31'h0; // @[Monitor.scala 677:91 Monitor.scala 679:21]
  wire  _T_553 = inflight | _T_527; // @[Monitor.scala 684:49]
  wire [2:0] _GEN_27 = 3'h2 == io_in_a_bits_opcode ? 3'h1 : 3'h0; // @[Monitor.scala 687:38 Monitor.scala 687:38]
  wire [2:0] _GEN_28 = 3'h3 == io_in_a_bits_opcode ? 3'h1 : _GEN_27; // @[Monitor.scala 687:38 Monitor.scala 687:38]
  wire [2:0] _GEN_29 = 3'h4 == io_in_a_bits_opcode ? 3'h1 : _GEN_28; // @[Monitor.scala 687:38 Monitor.scala 687:38]
  wire [2:0] _GEN_30 = 3'h5 == io_in_a_bits_opcode ? 3'h2 : _GEN_29; // @[Monitor.scala 687:38 Monitor.scala 687:38]
  wire [2:0] _GEN_31 = 3'h6 == io_in_a_bits_opcode ? 3'h4 : _GEN_30; // @[Monitor.scala 687:38 Monitor.scala 687:38]
  wire [2:0] _GEN_32 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_31; // @[Monitor.scala 687:38 Monitor.scala 687:38]
  wire [2:0] _GEN_39 = 3'h6 == io_in_a_bits_opcode ? 3'h5 : _GEN_30; // @[Monitor.scala 688:39 Monitor.scala 688:39]
  wire [2:0] _GEN_40 = 3'h7 == io_in_a_bits_opcode ? 3'h4 : _GEN_39; // @[Monitor.scala 688:39 Monitor.scala 688:39]
  wire  _T_558 = io_in_d_bits_opcode == _GEN_40; // @[Monitor.scala 688:39]
  wire  _T_559 = (io_in_d_bits_opcode == _GEN_32) | _T_558; // @[Monitor.scala 687:77]
  wire  _T_563 = 2'h2 == io_in_d_bits_size; // @[Monitor.scala 689:36]
  wire [3:0] a_opcode_lookup = _a_opcode_lookup_T_7[3:0];
  wire [2:0] _GEN_43 = 3'h2 == (a_opcode_lookup[2:0]) ? 3'h1 : 3'h0; // @[Monitor.scala 691:38 Monitor.scala 691:38]
  wire [2:0] _GEN_44 = 3'h3 == (a_opcode_lookup[2:0]) ? 3'h1 : _GEN_43; // @[Monitor.scala 691:38 Monitor.scala 691:38]
  wire [2:0] _GEN_45 = 3'h4 == (a_opcode_lookup[2:0]) ? 3'h1 : _GEN_44; // @[Monitor.scala 691:38 Monitor.scala 691:38]
  wire [2:0] _GEN_46 = 3'h5 == (a_opcode_lookup[2:0]) ? 3'h2 : _GEN_45; // @[Monitor.scala 691:38 Monitor.scala 691:38]
  wire [2:0] _GEN_47 = 3'h6 == (a_opcode_lookup[2:0]) ? 3'h4 : _GEN_46; // @[Monitor.scala 691:38 Monitor.scala 691:38]
  wire [2:0] _GEN_48 = 3'h7 == (a_opcode_lookup[2:0]) ? 3'h4 : _GEN_47; // @[Monitor.scala 691:38 Monitor.scala 691:38]
  wire [2:0] _GEN_55 = 3'h6 == (a_opcode_lookup[2:0]) ? 3'h5 : _GEN_46; // @[Monitor.scala 692:38 Monitor.scala 692:38]
  wire [2:0] _GEN_56 = 3'h7 == (a_opcode_lookup[2:0]) ? 3'h4 : _GEN_55; // @[Monitor.scala 692:38 Monitor.scala 692:38]
  wire  _T_570 = io_in_d_bits_opcode == _GEN_56; // @[Monitor.scala 692:38]
  wire  _T_571 = (io_in_d_bits_opcode == _GEN_48) | _T_570; // @[Monitor.scala 691:72]
  wire [3:0] a_size_lookup = _a_size_lookup_T_7[3:0];
  wire [3:0] _GEN_75 = {{2'd0}, io_in_d_bits_size}; // @[Monitor.scala 693:36]
  wire  _T_575 = _GEN_75 == a_size_lookup; // @[Monitor.scala 693:36]
  wire  _T_585 = ((_T_538 & a_first_1) & io_in_a_valid) & _T_540; // @[Monitor.scala 696:116]
  wire  _T_587 = (~io_in_d_ready) | io_in_a_ready; // @[Monitor.scala 697:32]
  wire  a_set = _GEN_16[0];
  wire  d_clr = _GEN_22[0];
  wire  _inflight_T_2 = (inflight | a_set) & (~d_clr); // @[Monitor.scala 704:36]
  wire [3:0] a_opcodes_set = _GEN_19[3:0];
  wire [3:0] _inflight_opcodes_T = inflight_opcodes | a_opcodes_set; // @[Monitor.scala 705:43]
  wire [3:0] d_opcodes_clr = _GEN_23[3:0];
  wire [3:0] _inflight_opcodes_T_1 = ~d_opcodes_clr; // @[Monitor.scala 705:62]
  wire [3:0] _inflight_opcodes_T_2 = _inflight_opcodes_T & _inflight_opcodes_T_1; // @[Monitor.scala 705:60]
  wire [3:0] a_sizes_set = _GEN_20[3:0];
  wire [3:0] _inflight_sizes_T = inflight_sizes | a_sizes_set; // @[Monitor.scala 706:39]
  wire [3:0] _inflight_sizes_T_2 = _inflight_sizes_T & _inflight_opcodes_T_1; // @[Monitor.scala 706:54]
  reg [31:0] watchdog; // @[Monitor.scala 708:27]
  wire  _T_596 = ((~(|inflight)) | (plusarg_reader_out == 32'h0)) | (watchdog < plusarg_reader_out); // @[Monitor.scala 711:47]
  wire [31:0] _watchdog_T_1 = watchdog + 32'h1; // @[Monitor.scala 713:26]
  wire  _T_602 = a_first_done | d_first_done; // @[Monitor.scala 714:27]
  reg [3:0] inflight_sizes_1; // @[Monitor.scala 727:35]
  reg  d_first_counter_2; // @[Edges.scala 230:27]
  wire  d_first_counter1_2 = d_first_counter_2 - 1'h1; // @[Edges.scala 231:28]
  wire  d_first_2 = ~d_first_counter_2; // @[Edges.scala 232:25]
  wire [15:0] _GEN_78 = {{12'd0}, inflight_sizes_1}; // @[Monitor.scala 749:93]
  wire [15:0] _c_size_lookup_T_6 = _GEN_78 & _a_opcode_lookup_T_5; // @[Monitor.scala 749:93]
  wire [15:0] _c_size_lookup_T_7 = {{1'd0}, _c_size_lookup_T_6[15:1]}; // @[Monitor.scala 749:146]
  wire  _T_622 = (io_in_d_valid & d_first_2) & _T_334; // @[Monitor.scala 781:71]
  wire  _T_626 = (d_first_done & d_first_2) & _T_334; // @[Monitor.scala 785:72]
  wire [30:0] _GEN_68 = _T_626 ? _d_opcodes_clr_T_5 : 31'h0; // @[Monitor.scala 785:90 Monitor.scala 787:21]
  wire [3:0] c_size_lookup = _c_size_lookup_T_7[3:0];
  wire  _T_640 = _GEN_75 == c_size_lookup; // @[Monitor.scala 797:36]
  wire [3:0] d_opcodes_clr_1 = _GEN_68[3:0];
  wire [3:0] _inflight_opcodes_1_T_1 = ~d_opcodes_clr_1; // @[Monitor.scala 812:62]
  wire [3:0] _inflight_sizes_1_T_2 = inflight_sizes_1 & _inflight_opcodes_1_T_1; // @[Monitor.scala 813:56]
  assign plusarg_reader_out = 32'd0;
  assign plusarg_reader_1_out = 32'd0;
  always @(posedge clock) begin
    if (reset) begin // @[Edges.scala 230:27]
      a_first_counter <= 1'h0; // @[Edges.scala 230:27]
    end else if (a_first_done) begin // @[Edges.scala 236:17]
      if (a_first) begin // @[Edges.scala 237:21]
        a_first_counter <= 1'h0;
      end else begin
        a_first_counter <= a_first_counter1;
      end
    end
    if (_T_498) begin // @[Monitor.scala 398:32]
      opcode <= io_in_a_bits_opcode; // @[Monitor.scala 399:15]
    end
    if (_T_498) begin // @[Monitor.scala 398:32]
      address <= io_in_a_bits_address; // @[Monitor.scala 403:15]
    end
    if (reset) begin // @[Edges.scala 230:27]
      d_first_counter <= 1'h0; // @[Edges.scala 230:27]
    end else if (d_first_done) begin // @[Edges.scala 236:17]
      if (d_first) begin // @[Edges.scala 237:21]
        d_first_counter <= 1'h0;
      end else begin
        d_first_counter <= d_first_counter1;
      end
    end
    if (_T_526) begin // @[Monitor.scala 551:32]
      opcode_1 <= io_in_d_bits_opcode; // @[Monitor.scala 552:15]
    end
    if (_T_526) begin // @[Monitor.scala 551:32]
      param_1 <= io_in_d_bits_param; // @[Monitor.scala 553:15]
    end
    if (_T_526) begin // @[Monitor.scala 551:32]
      size_1 <= io_in_d_bits_size; // @[Monitor.scala 554:15]
    end
    if (_T_526) begin // @[Monitor.scala 551:32]
      sink <= io_in_d_bits_sink; // @[Monitor.scala 556:15]
    end
    if (_T_526) begin // @[Monitor.scala 551:32]
      denied <= io_in_d_bits_denied; // @[Monitor.scala 557:15]
    end
    if (reset) begin // @[Monitor.scala 613:27]
      inflight <= 1'h0; // @[Monitor.scala 613:27]
    end else begin
      inflight <= _inflight_T_2; // @[Monitor.scala 704:14]
    end
    if (reset) begin // @[Monitor.scala 615:35]
      inflight_opcodes <= 4'h0; // @[Monitor.scala 615:35]
    end else begin
      inflight_opcodes <= _inflight_opcodes_T_2; // @[Monitor.scala 705:22]
    end
    if (reset) begin // @[Monitor.scala 617:33]
      inflight_sizes <= 4'h0; // @[Monitor.scala 617:33]
    end else begin
      inflight_sizes <= _inflight_sizes_T_2; // @[Monitor.scala 706:20]
    end
    if (reset) begin // @[Edges.scala 230:27]
      a_first_counter_1 <= 1'h0; // @[Edges.scala 230:27]
    end else if (a_first_done) begin // @[Edges.scala 236:17]
      if (a_first_1) begin // @[Edges.scala 237:21]
        a_first_counter_1 <= 1'h0;
      end else begin
        a_first_counter_1 <= a_first_counter1_1;
      end
    end
    if (reset) begin // @[Edges.scala 230:27]
      d_first_counter_1 <= 1'h0; // @[Edges.scala 230:27]
    end else if (d_first_done) begin // @[Edges.scala 236:17]
      if (d_first_1) begin // @[Edges.scala 237:21]
        d_first_counter_1 <= 1'h0;
      end else begin
        d_first_counter_1 <= d_first_counter1_1;
      end
    end
    if (reset) begin // @[Monitor.scala 708:27]
      watchdog <= 32'h0; // @[Monitor.scala 708:27]
    end else if (_T_602) begin // @[Monitor.scala 714:47]
      watchdog <= 32'h0; // @[Monitor.scala 714:58]
    end else begin
      watchdog <= _watchdog_T_1; // @[Monitor.scala 713:14]
    end
    if (reset) begin // @[Monitor.scala 727:35]
      inflight_sizes_1 <= 4'h0; // @[Monitor.scala 727:35]
    end else begin
      inflight_sizes_1 <= _inflight_sizes_1_T_2; // @[Monitor.scala 813:22]
    end
    if (reset) begin // @[Edges.scala 230:27]
      d_first_counter_2 <= 1'h0; // @[Edges.scala 230:27]
    end else if (d_first_done) begin // @[Edges.scala 236:17]
      if (d_first_2) begin // @[Edges.scala 237:21]
        d_first_counter_2 <= 1'h0;
      end else begin
        d_first_counter_2 <= d_first_counter1_2;
      end
    end
    `ifndef SYNTHESIS
    `ifndef SUPPRESS
    if (_T_476 & (~(_T_493 | reset))) begin
      $fatal; // @[Monitor.scala 44:11]
    end
    `endif // SUPPRESS
    if (_T_541 & (~(_T_553 | reset))) begin
      $display("fatal: _T_541 = %d, _T_553 = %d, reset = %d", _T_541, _T_553, reset);
      `ifndef NONFATAL
      $fatal; // @[Monitor.scala 51:11]
      `endif // NONFATAL
    end
    `endif // SYNTHESIS
  end
endmodule
