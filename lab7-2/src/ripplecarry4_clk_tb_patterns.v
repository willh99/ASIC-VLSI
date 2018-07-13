// Verilog pattern output written by  TetraMAX (TM)  C-2009.06-SP4-i091125_172637 
// Date: Thu Mar  3 09:44:12 2011
// Module tested: ripplecarry4_clk

//     Uncollapsed Stuck Fault Summary Report
// -----------------------------------------------
// fault class                     code   #faults
// ------------------------------  ----  ---------
// Detected                         DT        282
// Possibly detected                PT          0
// Undetectable                     UD          0
// ATPG untestable                  AU          0
// Not detected                     ND          0
// -----------------------------------------------
// total faults                               282
// test coverage                           100.00%
// -----------------------------------------------
// 
//            Pattern Summary Report
// -----------------------------------------------
// #internal patterns                          14
//     #full_sequential patterns               14
// -----------------------------------------------
// 
// rule  severity  #fails  description
// ----  --------  ------  ---------------------------------
// N20   warning        1  underspecified UDP
// 
// clock_name        off  usage
// ----------------  ---  --------------------------
// clk                0   master shift 
// 
// There are no constraint ports
// There are no equivalent pins
// There are no net connections

`timescale 1 ns / 1 ns

//
// --- NOTE: Remove the comment to define 'tmax_iddq' to activate processing of IDDQ events
//     Or use '+define+tmax_iddq' on the verilog compile line
//
//`define tmax_iddq

module AAA_tmax_testbench_1_16 ;
   parameter NAMELENGTH = 200; // max length of names reported in fails
   parameter LENMAX = 3, NSHIFTS = 0; // LENMAX for serial
   parameter LENSERIAL = 3, NCHAINS = 1;
   parameter SHBEG = 0, SHEND = 0;
   integer nofails, bit, cbit, pattern, lastpattern, chain, idx;
   integer error_banner; // flag for tracking displayed error banner
   integer loads;        // number of load_unloads for current pattern
   integer patm1;        // pattern - 1
   integer patp1;        // pattern + lastpattern
   integer prev_pat;     // previous pattern number
   integer report_interval; // report pattern progress every Nth pattern
   integer verbose;      // message verbosity level
   parameter NINPUTS = 13, NOUTPUTS = 6;
   wire [0:NOUTPUTS-1] PO; reg [0:NOUTPUTS-1] ALLPOS, XPCT, MASK;
   reg [0:NINPUTS-1] PI, ALLPIS;
   reg [0:8*(NAMELENGTH-1)] POnames [0:NOUTPUTS-1];
   reg [0:8*(NAMELENGTH-1)] CHAINnames [0:NCHAINS-1];
   reg [0:8*(NAMELENGTH-1)] CHAINpins [0:NCHAINS-1];
   reg [0:LENSERIAL-1] LOAD0, LOADSH0;
   reg [0:LENMAX-1] UNL, UNLOAD[0:NCHAINS-1];
   reg [0:LENMAX-1] UNLM, UNLMSK[0:NCHAINS-1], SHBEGM[0:NCHAINS-1];
   reg [0:LENMAX-1] SERIALM;
   reg [0:LENMAX-1] INPINV[0:NCHAINS-1], OUTINV[0:NCHAINS-1];
   wire [0:NCHAINS-1] SCANOUT;
   wire [0:LENMAX-1] CHAINOUT0;
   reg [0:LENMAX-1] CHOUT, CHAINOUT[0:NCHAINS-1];
   event IDDQ;

   wire cout;
   wire cin;
   wire clk;
   wire rst;
   wire test_si;
   wire test_so;
   wire test_se;
   wire [3:0] sum;
   wire [3:0] a;
   wire [3:0] b;

   // map PI[] vector to DUT inputs and bidis
   assign a = PI[0:3];
   assign b = PI[4:7];
   assign cin = PI[8];
   assign clk = PI[9];
   assign rst = PI[10];
   assign test_si = PI[11];
   assign test_se = PI[12];

   // map DUT outputs and bidis to PO[] vector
   assign
      PO[0] = sum[3] ,
      PO[1] = sum[2] ,
      PO[2] = sum[1] ,
      PO[3] = sum[0] ,
      PO[4] = cout ,
      PO[5] = test_so ;

   // instantiate the design into the testbench
   ripplecarry4_clk dut (
      .sum(sum),
      .cout(cout),
      .a(a),
      .b(b),
      .cin(cin),
      .clk(clk),
      .rst(rst),
      .test_si(test_si),
      .test_so(test_so),
      .test_se(test_se)   );

   event pulse_clk;
   always @ pulse_clk begin
      #45 PI[9] = 1; #10 PI[9] = 0;   // clk
   end


   integer errshown;
   event measurePO;
   always @ measurePO begin
      if (((XPCT&MASK) !== (ALLPOS&MASK)) || (XPCT !== (~(~XPCT)))) begin
         errshown = 0;
         for (bit = 0; bit < NOUTPUTS; bit=bit + 1) begin
            if (MASK[bit]==1'b1) begin
               if (XPCT[bit] !== ALLPOS[bit]) begin
                  if (errshown==0) $display("\n// *** ERROR during capture pattern %0d, T=%t", pattern, $time);
                  $display("  %0d %0s (exp=%b, got=%b)", pattern, POnames[bit], XPCT[bit], ALLPOS[bit]);
                  nofails = nofails + 1; errshown = 1;
               end
            end
         end
      end
   end

   event forcePI_allclock_launch_capture_WFT;
   always @ forcePI_allclock_launch_capture_WFT begin
      PI = ALLPIS;
   end
   event measurePO_allclock_launch_capture_WFT;
   always @ measurePO_allclock_launch_capture_WFT begin
      #40;
      ALLPOS = PO;
      #0; #0 -> measurePO;
      `ifdef tmax_iddq
         #0; ->IDDQ;
      `endif
   end

   event forcePI_multiclock_capture_WFT;
   always @ forcePI_multiclock_capture_WFT begin
      PI = ALLPIS;
   end
   event measurePO_multiclock_capture_WFT;
   always @ measurePO_multiclock_capture_WFT begin
      #40;
      ALLPOS = PO;
      #0; #0 -> measurePO;
      `ifdef tmax_iddq
         #0; ->IDDQ;
      `endif
   end

   event forcePI_allclock_launch_WFT;
   always @ forcePI_allclock_launch_WFT begin
      PI = ALLPIS;
   end
   event measurePO_allclock_launch_WFT;
   always @ measurePO_allclock_launch_WFT begin
      #40;
      ALLPOS = PO;
      #0; #0 -> measurePO;
      `ifdef tmax_iddq
         #0; ->IDDQ;
      `endif
   end

   event forcePI_allclock_capture_WFT;
   always @ forcePI_allclock_capture_WFT begin
      PI = ALLPIS;
   end
   event measurePO_allclock_capture_WFT;
   always @ measurePO_allclock_capture_WFT begin
      #40;
      ALLPOS = PO;
      #0; #0 -> measurePO;
      `ifdef tmax_iddq
         #0; ->IDDQ;
      `endif
   end

   event forcePI_default_WFT;
   always @ forcePI_default_WFT begin
      PI = ALLPIS;
   end
   event measurePO_default_WFT;
   always @ measurePO_default_WFT begin
      #40;
      ALLPOS = PO;
      #0; #0 -> measurePO;
      `ifdef tmax_iddq
         #0; ->IDDQ;
      `endif
   end

   event force_scanin;
   always @ force_scanin begin
      PI[11] <= LOAD0[bit];
   end

   assign SCANOUT[0] = test_so;

   event measure_scanout;
   always @ measure_scanout begin
      if ((NSHIFTS < LENMAX) && (bit >= SHBEG)) cbit = bit - LENMAX + NSHIFTS + 1 + SHBEG;
      else cbit = bit; // because parallel does NSHIFTS + 1 shifts
      idx = cbit + 0;
      for (chain = 0; chain < 1; chain=chain + 1) begin
         UNL = UNLOAD[chain]; UNLM = UNLMSK[chain];
         if ((UNL[idx]&UNLM[idx]) !== (SCANOUT[chain]&UNLM[idx])) begin
            patp1 = pattern + lastpattern;  patm1 = patp1 - 1;
            if (error_banner != pattern) begin
               if (lastpattern == 0) $display("\n// *** ERROR during scan pattern %0d (detected during load of pattern %0d)", patm1, patp1);
               else $display("\n// *** ERROR during scan pattern %0d (detected during final pattern unload)", patm1);
               error_banner = pattern;
            end
            $display("  %0d %0s %0d (exp=%b, got=%b)  // pin %0s, scan cell %0d, T=%t",
               patm1, CHAINnames[chain], cbit, UNL[idx], SCANOUT[chain], CHAINpins[chain], cbit, $time);
            nofails = nofails + 1;
         end
      end
   end


   always @ IDDQ begin
   `ifdef tmax_iddq
      $ssi_iddq("strobe_try");
      $ssi_iddq("status drivers leaky AAA_tmax_testbench_1_16.leaky");
   `endif
   end

   event multiclock_capture;
   always @ multiclock_capture begin
      ->forcePI_multiclock_capture_WFT;
      ->measurePO_multiclock_capture_WFT;
   end

   event allclock_capture;
   always @ allclock_capture begin
      ->forcePI_allclock_capture_WFT;
      ->measurePO_allclock_capture_WFT;
   end

   event allclock_launch;
   always @ allclock_launch begin
      ->forcePI_allclock_launch_WFT;
      ->measurePO_allclock_launch_WFT;
   end

   event allclock_launch_capture;
   always @ allclock_launch_capture begin
      ->forcePI_allclock_launch_capture_WFT;
      ->measurePO_allclock_launch_capture_WFT;
   end

   task shift;
   begin
      if (verbose >= 4) $display("// %t :    shift %0d", $time, bit);
      ->force_scanin;
      #40; ->measure_scanout;
      #5 PI[9] = 1; // clk
      #10 PI[9] = 0; // clk
      #45;
   end
   endtask

   event capture_clk;
   always @ capture_clk begin
      ->forcePI_multiclock_capture_WFT;
      ->measurePO_multiclock_capture_WFT;
      #45 PI[9] = 1; // clk
      #10 PI[9] = 0; // clk
   end

   event capture;
   always @ capture begin
      ->forcePI_multiclock_capture_WFT;
      ->measurePO_multiclock_capture_WFT;
   end

   event test_setup;
   always @ test_setup begin
      #0 PI[9] = 0; // clk
      #0 PI[3] = 1'bX; // a[0]
      #0 PI[2] = 1'bX; // a[1]
      #0 PI[1] = 1'bX; // a[2]
      #0 PI[0] = 1'bX; // a[3]
      #0 PI[7] = 1'bX; // b[0]
      #0 PI[6] = 1'bX; // b[1]
      #0 PI[5] = 1'bX; // b[2]
      #0 PI[4] = 1'bX; // b[3]
      #0 PI[8] = 1'bX; // cin
      #0 PI[10] = 1'bX; // rst
      #0 PI[11] = 1'bX; // test_si
      #0 PI[12] = 1'bX; // test_se
   end


   task multiple_shift;
   begin
      bit = bit-1;
      error_banner = -2;
      while (bit+1 < LENMAX-SHEND) begin
         bit = bit+1;
         shift;
      end
   end
   endtask

   assign CHAINOUT0 = { dut.c2_reg_reg.Q, dut.c1_reg_reg.Q, dut.c0_reg_reg.Q };

   event load_unload;
   always @ load_unload begin
      if (pattern != prev_pat) begin
         loads = 1;
         prev_pat = pattern;
         if ((verbose >= 2) && (pattern % report_interval == 0))
            $display("// %t : ...begin scan load for pattern %0d", $time, pattern);
         end
      else begin
         loads = loads + 1;
         if ((verbose >= 2) && (pattern % report_interval == 0))
            $display("// %t : ...begin scan load for pattern %0d, load %0d", $time, pattern, loads);
      end

      #0 PI[12] = 1; // test_se
      #0 PI[9] = 0; // clk
      #100;
      // end of load_unload preamble

      // gather current scan cell output bit values
      CHAINOUT[0] = (CHAINOUT0 ^ SHBEGM[0]) >> SHBEG;
      #0;

      // compare actual vs. expected values
      for (chain = 0; chain < 1; chain=chain + 1) begin
         UNL = UNLOAD[chain]; UNLM = UNLMSK[chain] & SERIALM; CHOUT = CHAINOUT[chain] ^ OUTINV[chain];
         if ((UNL&UNLM) !== (CHOUT&UNLM)) begin
            patp1 = pattern + lastpattern;  patm1 = patp1 - 1;
            if (lastpattern == 0) $display("\n// *** ERROR during scan pattern %0d (detected during load of pattern %0d), T=%t", patm1, patp1, $time );
            else                  $display("\n// *** ERROR during scan pattern %0d (detected during final pattern unload), T=%t", patm1, $time );
            for (bit = NSHIFTS+SHBEG; bit < LENMAX; bit=bit + 1) begin
               if ((UNL[bit]&UNLM[bit]) !== (CHOUT[bit]&UNLM[bit])) begin
                  $display("  %0d %0s %0d (exp=%b, got=%b)  // pin %0s, scan cell %0d",
                      patm1, CHAINnames[chain], bit, UNL[bit], CHOUT[bit], CHAINpins[chain], bit);
                  nofails = nofails + 1;
               end
            end
         end
      end
      #0;

      // force bits of scan chain 0
      LOADSH0 = (LOAD0 >> NSHIFTS) ^ INPINV[0];
      force dut.c2_reg_reg.TI = LOADSH0[0];
      force dut.c1_reg_reg.TI = LOADSH0[1];
      force dut.c0_reg_reg.TI = LOADSH0[2];
      #0;

      // apply single shift pulse with force's in place
      bit = LENMAX - NSHIFTS - 1;
      shift;

      // release bits of scan chain 0
      release dut.c2_reg_reg.TI;
      release dut.c1_reg_reg.TI;
      release dut.c0_reg_reg.TI;
      #0;

      // handle potential of last N bits shifted serially
      if (NSHIFTS > SHEND) begin
         bit = LENMAX-NSHIFTS; multiple_shift;
      end
   end

   `ifdef tmax_serial_timing
      parameter load_delay = 400; // equivalent serial simulation load_unload time advance
   `else
      parameter load_delay = 200; // minimal load_unload time advance
   `endif

   initial begin

      //
      // --- establish a default time format for %t
      //
      $timeformat(-9,2," ns",18);

      //
      // --- default verbosity to 2 but also allow user override by
      //     using '+define+tmax_msg=N' on verilog compile line.
      //
      `ifdef tmax_msg
         verbose = `tmax_msg ;
      `else
         verbose = 2 ;
      `endif

      //
      // --- default pattern reporting interval to 5 but also allow user
      //     override by using '+define+tmax_rpt=N' on verilog compile line.
      //
      `ifdef tmax_rpt
         report_interval = `tmax_rpt ;
      `else
         report_interval = 5 ;
      `endif

      //
      // --- support generating Extened VCD output by using
      //     '+define+tmax_vcde' on verilog compile line.
      //
      `ifdef tmax_vcde
         // extended VCD, see IEEE Verilog P1364.1-1999 Draft 2
         if (verbose >= 2) $display("// %t : opening Extended VCD output file", $time);
         $dumpports( dut, "sim_vcde.out");
      `endif

      //
      // --- IDDQ PLI initialization
      //     User may activite by using '+define+tmax_iddq' on verilog compile line.
      //     Or by defining `tmax_iddq in this file.
      //
      `ifdef tmax_iddq
         if (verbose >= 3) $display("// %t : Initializing IDDQ PLI", $time);
         $ssi_iddq("dut AAA_tmax_testbench_1_16.dut");
         $ssi_iddq("verb on");
         $ssi_iddq("cycle 0");
         //
         // --- User may select one of the following two methods for fault seeding:
         //     #1 faults seeded by PLI (default)
         //     #2 faults supplied in a file
         //     Comment out the unused lines as needed (precede with '//').
         //     Replace the 'FAULTLIST_FILE' string with the actual file pathname.
         //
         $ssi_iddq("seed SA AAA_tmax_testbench_1_16.dut");   // no file, faults seeded by PLI
         //
         // $ssi_iddq("scope AAA_tmax_testbench_1_16.dut");   // set scope for faults from a file
         // $ssi_iddq("read_tmax FAULTLIST_FILE"); // read faults from a file
         //
      `endif

      POnames[0] = "sum[3]";
      POnames[1] = "sum[2]";
      POnames[2] = "sum[1]";
      POnames[3] = "sum[0]";
      POnames[4] = "cout";
      POnames[5] = "test_so";
      CHAINnames[0] = "1";
      CHAINpins[0] = "test_so";
      SERIALM = 3'b111;
      INPINV[0] = 3'b000;
      OUTINV[0] = 3'b000;
      SHBEGM[0] = 3'b000;
      nofails = 0; pattern = -1; lastpattern = 0;
      prev_pat = -2; error_banner = -2;

      if (verbose >=1) $display("// %t : Begin test_setup", $time);
      ->test_setup;
      #200; // 200


      /*** Scan test ***/

      if (verbose >= 1) $display("// %t : Begin patterns, first pattern = 0", $time);
pattern = 0; // 200
LOAD0 = 3'b111;
UNLMSK[0] = 3'b000;
#0 ->load_unload;
#load_delay; // 400
#0 PI = 13'b0011011100000;
#100; // 500
XPCT = 6'b101001;
MASK = 6'b111111;
#0 ->measurePO_default_WFT;
#100; // 600
#0 ->pulse_clk; 
#100; // 700

pattern = 1; // 700
LOAD0 = 3'b100;
UNLOAD[0] = 3'b111;
UNLMSK[0] = 3'b111;
#0 ->load_unload;
#load_delay; // 900
#0 PI = 13'b1010101010000;
#100; // 1000
XPCT = 6'b100111;
MASK = 6'b111111;
#0 ->measurePO_default_WFT;
#100; // 1100
#0 ->pulse_clk; 
#100; // 1200

pattern = 2; // 1200
LOAD0 = 3'b000;
UNLOAD[0] = 3'b010;
UNLMSK[0] = 3'b111;
#0 ->load_unload;
#load_delay; // 1400
#0 PI = 13'b1111101010000;
#100; // 1500
XPCT = 6'b010010;
MASK = 6'b111111;
#0 ->measurePO_default_WFT;
#100; // 1600
#0 ->pulse_clk; 
#100; // 1700

pattern = 3; // 1700
LOAD0 = 3'b011;
UNLOAD[0] = 3'b011;
UNLMSK[0] = 3'b111;
#0 ->load_unload;
#load_delay; // 1900
#0 PI = 13'b0011001000000;
#100; // 2000
XPCT = 6'b011100;
MASK = 6'b111111;
#0 ->measurePO_default_WFT;
#100; // 2100
#0 ->pulse_clk; 
#100; // 2200

pattern = 4; // 2200
LOAD0 = 3'b000;
UNLOAD[0] = 3'b010;
UNLMSK[0] = 3'b111;
#0 ->load_unload;
#load_delay; // 2400
#0 PI = 13'b1000110100010;
#100; // 2500
XPCT = 6'b010110;
MASK = 6'b111111;
#0 ->measurePO_default_WFT;
#100; // 2600
#0 ->pulse_clk; 
#100; // 2700

pattern = 5; // 2700
LOAD0 = 3'b110;
UNLOAD[0] = 3'b000;
UNLMSK[0] = 3'b111;
#0 ->load_unload;
#load_delay; // 2900
#0 PI = 13'b0110110000111;
#100; // 3000
XPCT = 6'b011011;
MASK = 6'b111111;
#0 ->measurePO_default_WFT;
#100; // 3100

pattern = 6; // 3100
LOAD0 = 3'b110;
UNLOAD[0] = 3'b110;
UNLMSK[0] = 3'b111;
#0 ->load_unload;
#load_delay; // 3300
#0 PI = 13'b0111100110110;
#100; // 3400
XPCT = 6'b001111;
MASK = 6'b111111;
#0 ->measurePO_default_WFT;
#100; // 3500
#0 ->pulse_clk; 
#100; // 3600

pattern = 7; // 3600
LOAD0 = 3'b010;
UNLOAD[0] = 3'b000;
UNLMSK[0] = 3'b111;
#0 ->load_unload;
#load_delay; // 3800
#0 PI = 13'b1111000100000;
#100; // 3900
XPCT = 6'b101000;
MASK = 6'b111111;
#0 ->measurePO_default_WFT;
#100; // 4000
#0 ->pulse_clk; 
#100; // 4100

pattern = 8; // 4100
LOAD0 = 3'b010;
UNLOAD[0] = 3'b101;
UNLMSK[0] = 3'b111;
#0 ->load_unload;
#load_delay; // 4300
#0 PI = 13'b0111011000110;
#100; // 4400
XPCT = 6'b010100;
MASK = 6'b111111;
#0 ->measurePO_default_WFT;
#100; // 4500
#0 ->pulse_clk; 
#100; // 4600

pattern = 9; // 4600
LOAD0 = 3'b111;
UNLOAD[0] = 3'b000;
UNLMSK[0] = 3'b111;
#0 ->load_unload;
#load_delay; // 4800
#0 PI = 13'b1001010000010;
#100; // 4900
XPCT = 6'b001111;
MASK = 6'b111111;
#0 ->measurePO_default_WFT;
#100; // 5000
#0 ->pulse_clk; 
#100; // 5100

pattern = 10; // 5100
LOAD0 = 3'b001;
UNLOAD[0] = 3'b100;
UNLMSK[0] = 3'b111;
#0 ->load_unload;
#load_delay; // 5300
#0 PI = 13'b1010000110010;
#100; // 5400
XPCT = 6'b100000;
MASK = 6'b111111;
#0 ->measurePO_default_WFT;
#100; // 5500
#0 ->pulse_clk; 
#100; // 5600

pattern = 11; // 5600
LOAD0 = 3'b000;
UNLOAD[0] = 3'b011;
UNLMSK[0] = 3'b111;
#0 ->load_unload;
#load_delay; // 5800
#0 PI = 13'b0001011010010;
#100; // 5900
XPCT = 6'b011000;
MASK = 6'b111111;
#0 ->measurePO_default_WFT;
#100; // 6000
#0 ->pulse_clk; 
#100; // 6100

pattern = 12; // 6100
LOAD0 = 3'b111;
UNLOAD[0] = 3'b001;
UNLMSK[0] = 3'b111;
#0 ->load_unload;
#load_delay; // 6300
#0 PI = 13'b0111010000010;
#100; // 6400
XPCT = 6'b110101;
MASK = 6'b111111;
#0 ->measurePO_default_WFT;
#100; // 6500
#0 ->pulse_clk; 
#100; // 6600

pattern = 13; // 6600
LOAD0 = 3'b010;
UNLOAD[0] = 3'b110;
UNLMSK[0] = 3'b111;
#0 ->load_unload;
#load_delay; // 6800
#0 PI = 13'b0111111000001;
#100; // 6900
XPCT = 6'b110100;
MASK = 6'b111111;
#0 ->measurePO_default_WFT;
#100; // 7000

lastpattern = 1;
LOAD0 = 3'b000;
UNLOAD[0] = 3'b010;
UNLMSK[0] = 3'b111;
#0 ->load_unload;
#load_delay; // 7200
      $display("// %t : Simulation of %0d patterns completed with %0d errors\n", $time, pattern+1, nofails);
      if (verbose >=2) $finish(2);
      /* else */ $finish(0);
   end
endmodule
