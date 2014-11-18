//: version "2.0-b10"
//: property encoding = "iso8859-1"
//: property locale = "en"
//: property prefix = "_GG"
//: property title = "Motorola 68xx chips"
//: property timingViolationMode = 2
//: property initTime = "0 ns"
//: require "74xx"

`timescale 1ns/1ns

//: /netlistBegin main
module main;    //: root_module
supply1 w15;    //: /sn:0 {0}(161,160)(113,160)(113,146){1}
//: {2}(115,144)(161,144){3}
//: {4}(113,142)(113,130){5}
//: {6}(115,128)(161,128){7}
//: {8}(113,126)(113,114){9}
//: {10}(115,112)(161,112){11}
//: {12}(113,110)(113,37){13}
reg w1;    //: /sn:0 {0}(-168,177)(-18,177)(-18,176)(161,176){1}
reg OSC_W;    //: /sn:0 {0}(-157,80)(-70,80){1}
wire [9:0] ROM_ADDRESS_BUS;    //: /sn:0 {0}(#:426,211)(144,211)(144,236)(182,236){1}
wire F2_CBUS;    //: /sn:0 {0}(161,96)(54,96){1}
wire [15:0] ADDRESS_BUS;    //: {0}(#:431,462)(431,253){1}
//: {2}(431,252)(431,211){3}
//: {4}(431,210)(431,153){5}
//: {6}(#:433,151)(539,151)(539,109){7}
//: {8}(431,149)(50:431,80)(292,80){9}
wire [7:0] DATA_BUS;    //: {0}(#:292,96)(50:329,96){1}
//: {2}(333,96)(389,96)(389,236)(284,236){3}
//: {4}(331,94)(331,43){5}
wire VMA_F2__CBUS;    //: /sn:0 {0}(182,300)(86,300)(86,286){1}
//: {2}(88,284)(182,284){3}
//: {4}(86,282)(86,112)(54,112){5}
wire F1_CBUS;    //: /sn:0 {0}(161,80)(54,80){1}
wire w11;    //: /sn:0 {0}(149,254)(179,254)(179,252)(182,252){1}
wire [1:0] w12;    //: /sn:0 {0}(#:426,253)(297,253)(297,355)(145,355)(145,268){1}
//: {2}(145,267)(145,254){3}
//: {4}(145,253)(145,247){5}
wire w10;    //: /sn:0 {0}(149,268)(182,268){1}
wire VMA_CBUS;    //: /sn:0 {0}(292,128)(312,128)(312,197)(-111,197)(-111,96)(-70,96){1}
wire w5;    //: /sn:0 {0}(307,112)(292,112){1}
//: enddecls

  //: joint g8 (w15) @(113, 112) /w:[ 10 12 -1 9 ]
  assign w11 = w12[0]; //: TAP g4 @(143,254) /sn:0 /R:2 /w:[ 0 3 4 ] /ss:1
  assign w10 = w12[1]; //: TAP g3 @(143,268) /sn:0 /R:2 /w:[ 0 1 2 ] /ss:1
  //: joint g13 (ADDRESS_BUS) @(431, 151) /w:[ 6 8 -1 5 ]
  assign w12 = ADDRESS_BUS[15:14]; //: TAP g2 @(429,253) /sn:0 /R:2 /w:[ 0 1 2 ] /ss:0
  assign ROM_ADDRESS_BUS = ADDRESS_BUS[9:0]; //: TAP g1 @(429,211) /sn:0 /R:2 /w:[ 0 3 4 ] /ss:0
  //: joint g11 (VMA_F2__CBUS) @(86, 284) /w:[ 2 4 -1 1 ]
  //: SWITCH RESET_SW (w1) @(-185,177) /w:[ 0 ] /st:0 /dn:1
  //: SWITCH OSC_SW (OSC_W) @(-174,80) /w:[ 0 ] /st:0 /dn:1
  //: LED g10 (DATA_BUS) @(331,36) /sn:0 /w:[ 5 ] /type:2
  MC6800 MPU (.CLK_1(F1_CBUS), .CLK_2(F2_CBUS), .DBE(w15), ._HALT(w15), ._IRQ(w15), ._NMI(w15), ._RESET(w1), .A(ADDRESS_BUS), .R_W(w5), .VMA(VMA_CBUS), .D(DATA_BUS));   //: @(162, 64) /sz:(129, 128) /p:[ Li0>0 Li1>0 Li2>11 Li3>7 Li4>3 Li5>0 Li6>1 Ro0<9 Ro1<1 Ro2<0 Rt0=0 ]
  //: VDD g6 (w15) @(124,37) /sn:0 /w:[ 13 ]
  CLOCK g9 (.CLK(OSC_W), .VMA(VMA_CBUS), .F1(F1_CBUS), .F2(F2_CBUS), .F2_VMA(VMA_F2__CBUS));   //: @(-69, 64) /sz:(122, 64) /sn:0 /p:[ Li0>1 Li1>1 Ro0<1 Ro1<1 Ro2<5 ]
  //: joint g7 (w15) @(113, 128) /w:[ 6 8 -1 5 ]
  //: joint g5 (w15) @(113, 144) /w:[ 2 4 -1 1 ]
  MCM6830 ROM (.A(ROM_ADDRESS_BUS), .CS0(w11), .CS1(w10), .CS2(VMA_F2__CBUS), .CS3(VMA_F2__CBUS), .D(DATA_BUS));   //: @(183, 220) /sz:(100, 96) /p:[ Li0>1 Li1>1 Li2>1 Li3>3 Li4>0 Rt0=3 ]
  //: joint g0 (DATA_BUS) @(331, 96) /w:[ 2 4 1 -1 ]
  //: LED g12 (ADDRESS_BUS) @(512,102) /sn:0 /w:[ 7 ] /type:1

endmodule
//: /netlistEnd

//: /netlistBegin MCM6830
module MCM6830(CS2, CS1, CS0, D, CS3, A);
//: interface  /sz:(100, 96) /bd:[ Li0>A[9:0](16/96) Li1>CS0(32/96) Li2>CS1(48/96) Li3>CS2(64/96) Li4>CS3(80/96) Rt0=D[7:0](16/96) ] /pd: 0 /pi: 0 /pe: 1 /pp: 0
//: property pptype=0
input [9:0] A;    //: /sn:0 {0}(#:118,82)(201,82){1}
input CS2;    //: /sn:0 {0}(159,138)(131,138)(131,143)(119,143){1}
input CS0;    //: {0}(159,128)(150,128)(150,109)(-99:119,109){1}
input CS3;    //: /sn:0 {0}(159,143)(150,143)(150,160)(119,160){1}
inout [7:0] D;    //: {0}(50:305,80)(#:236,80){1}
input CS1;    //: /sn:0 {0}(159,133)(131,133)(131,126)(119,126){1}
wire ROM_CS;    //: /sn:0 {0}(180,135)(219,135)(219,107){1}
//: enddecls

  //: IN g4 (CS2) @(117,143) /sn:0 /w:[ 1 ]
  //: IN g3 (CS1) @(117,126) /sn:0 /w:[ 1 ]
  //: IN g2 (CS0) @(117,109) /sn:0 /w:[ 1 ]
  //: INOUT g1 (D) @(313,80) /sn:0 /R:2 /w:[ 0 ]
  _GGROM10x8 #(1, 1) MEMORY (.A(A), .D(D), .OE(ROM_CS));   //: @(219,81) /delay:" 1 1" /w:[ 1 1 1 ]
  _GGNAND4 #(8) g7 (.I0(CS0), .I1(CS1), .I2(CS2), .I3(CS3), .Z(ROM_CS));   //: @(170,135) /sn:0 /w:[ 0 0 0 0 0 ]
  //: IN g5 (CS3) @(117,160) /sn:0 /w:[ 1 ]
  //: IN g0 (A) @(116,82) /sn:0 /w:[ 0 ]

endmodule
//: /netlistEnd

//: /netlistBegin ChipScope
module ChipScope(IR, X, PC, B, SP, CC, A);
//: interface  /sz:(102, 128) /bd:[ Li0>IR[7:0](112/128) Li1>CC[7:0](96/128) Li2>SP[15:0](80/128) Li3>X[15:0](64/128) Li4>PC[15:0](48/128) Li5>B[7:0](32/128) Li6>A[7:0](16/128) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
input [15:0] X;    //: {0}(290,162)(#:99:290,215){1}
input [7:0] B;    //: /sn:0 {0}(#:219,214)(#:219,162){1}
input [7:0] IR;    //: /sn:0 {0}(#:565,181)(565,145){1}
input [15:0] SP;    //: {0}(#:86:287,-6)(#:287,54){1}
input [7:0] CC;    //: /sn:0 {0}(#:432,248)(#:432,212){1}
input [15:0] PC;    //: {0}(#:99:194,-4)(194,54){1}
input [7:0] A;    //: /sn:0 {0}(#:171,215)(#:171,161){1}
wire w4;    //: /sn:0 {0}(473,156)(473,191)(457,191)(457,206){1}
wire w3;    //: /sn:0 {0}(450,156)(450,194)(447,194)(447,206){1}
wire w0;    //: /sn:0 {0}(397,197)(397,206){1}
wire w1;    //: /sn:0 {0}(427,206)(427,185)(404,185)(404,156){1}
wire w12;    //: /sn:0 {0}(417,206)(417,188)(381,188)(381,156){1}
wire w2;    //: /sn:0 {0}(437,206)(437,180)(427,180)(427,156){1}
wire w13;    //: /sn:0 {0}(407,206)(407,191){1}
wire w5;    //: /sn:0 {0}(496,156)(496,194)(467,194)(467,206){1}
//: enddecls

  //: IN g8 (IR) @(565,183) /sn:0 /R:1 /w:[ 0 ]
  //: IN g4 (X) @(290,217) /sn:0 /R:1 /w:[ 1 ]
  //: frame g3 @(139,32) /sn:0 /wi:617 /ht:144 /tx:""
  //: LED I (w1) @(404,149) /w:[ 1 ] /type:0
  //: IN g2 (PC) @(194,-6) /sn:0 /R:3 /w:[ 0 ]
  //: IN g1 (B) @(219,216) /sn:0 /R:1 /w:[ 0 ]
  //: LED V (w4) @(473,149) /w:[ 0 ] /type:0
  //: LED Z (w3) @(450,149) /w:[ 0 ] /type:0
  //: LED REG_IR (IR) @(565,138) /w:[ 1 ] /type:2
  //: IN g6 (SP) @(287,-8) /sn:0 /R:3 /w:[ 0 ]
  //: IN g7 (CC) @(432,250) /sn:0 /R:1 /w:[ 0 ]
  //: LED REG_X (X) @(290,155) /w:[ 0 ] /type:2
  //: LED RE_SP (SP) @(287,61) /R:2 /w:[ 1 ] /type:2
  assign {w0, w13, w12, w1, w2, w3, w4, w5} = CC; //: CONCAT g5  @(432,211) /sn:0 /R:3 /w:[ 1 0 0 0 0 1 1 1 1 ] /dr:1 /tp:1 /drp:0
  //: LED H (w12) @(381,149) /w:[ 1 ] /type:0
  //: LED C (w5) @(496,149) /w:[ 0 ] /type:0
  //: LED REG_PC (PC) @(194,61) /R:2 /w:[ 1 ] /type:2
  //: LED REG_B (B) @(219,155) /w:[ 1 ] /type:2
  //: IN g0 (A) @(171,217) /sn:0 /R:1 /w:[ 0 ]
  //: LED REG_A (A) @(171,154) /w:[ 1 ] /type:2
  //: LED N (w2) @(427,149) /w:[ 1 ] /type:0

endmodule
//: /netlistEnd

//: /hdlBegin MC6800
//: interface  /sz:(129, 128) /bd:[ Li0>_RESET(112/128) Li1>_NMI(96/128) Li2>_IRQ(80/128) Li3>_HALT(64/128) Li4>DBE(48/128) Li5>CLK_2(32/128) Li6>CLK_1(16/128) Ro0<VMA(64/128) Ro1<R_W(48/128) Ro2<A[15:0](16/128) Rt0=D[7:0](32/128) ] /pd: 0 /pi: 0 /pe: 0 /pp: 0
//: property pptype=0
//: enddecls
module MC6800 #(.delay(4)) ( _IRQ,_RESET,A,D,R_W,_HALT, CLK_1, CLK_2, VMA, DBE );
  
  input CLK_1;
  input CLK_2;
  
  input _IRQ;
  input _RESET;
  input _HALT;
  input _NMI;
  input DBE;
  
  output [15:0] A;
  output R_W;
  output VMA;
    
  inout [7:0] D;
  
  reg I_R_W, I_VMA, I_DBE;
  
  // Program visible registers
  reg [7:0]  R_A; // Accumulator A
  reg [7:0]  R_B; // Accumulator B
    
  reg [7:0]   R_PC_H;// Program counter higher byte
  reg [7:0]   R_PC_L;// Program counter lower byte
  wire [15:0] R_PC;
  
  reg [7:0]   R_SP_H;// Stack pointer higher byte
  reg [7:0]   R_SP_L;// Stack pointer lower byte
  wire [15:0] R_SP;
  
  reg [7:0] R_X_H;// Index register higher byte
  reg [7:0] R_X_L;// Index register lower byte
  wire [15:0] R_X;
  
  reg C_H, C_I, C_N, C_Z, C_V, C_C;
  wire [7:0] R_CC;
  
  ChipScope cs( .A(R_A), .B(R_B), .X(R_X), .PC(R_PC), .SP(R_SP), .CC(R_CC), .IR(_R_IR) );
  
  // Internal registers
  reg [7:0] _D; // Data buffer
  reg [7:0] _R_OB_H; // Output buffer higher byte
  reg [7:0] _R_OB_L; // Output buffer lower byte
  reg [7:0] _R_IR; // Instruction register
  
  reg [2:0] mpuState; // 0 - IFETCH, 1 - IEXEC
  
  ///////////////////////////////////////////////////////////////
  
  assign R_PC = { R_PC_H, R_PC_L };
  assign R_SP = { R_SP_H, R_SP_L };
  assign R_X = { R_X_H, R_X_L };
  assign R_CC = {1'b1, 1'b1, C_H, C_I, C_N, C_Z, C_V, C_C};
  assign A = { _R_OB_H, _R_OB_L };
  
  assign D = (R_W) ? 8'hz : _D;
  
  assign #delay R_W = I_R_W;
  assign #delay VMA = I_VMA;
  
  initial
    begin
      $display("MC6800");
      R_A <= 0;
      R_B <= 0;
      R_PC_H <= 'hc0; R_PC_L <= 'h00;
      R_SP_H <= 0; R_SP_L <= 0;
      R_X_H <= 0; R_X_L <= 0;
      C_H <= 0; C_I <= 0; C_N <= 0; C_Z <= 0; C_V <= 0; C_C <= 0;
      _D <= 0;
      mpuState <= 0;
    end
  
  task IFetch_f1;
    begin
      $display("IFetch_f1");
      {_R_OB_H,_R_OB_L} = R_PC;
      I_R_W <= 1'b1;
      I_VMA <= 1'b1;
    end
  endtask
  
  task IFetch_f2;
    begin
      $display("IFetch_f2");
      mpuState <= 1;
    end
  endtask
  
  task LDA_IMM;
    begin
      $display("LDA (Immediate)");
      mpuState <= 2;
    end
  endtask
  
  task IExec_f1;
    begin
      $display("IExec_f1");
      _R_IR <= D;
      {R_PC_H,R_PC_L} <= R_PC+1;
    end
  endtask
  
  task IExec_f2;
    begin
      $display("IExec_f2");
      $display("Opcode", _R_IR);
      case (_R_IR)
        'h86 : LDA_IMM;
      endcase
      mpuState = 0;
    end
  endtask
  
  task ImmDFetch_f1;
    begin
      $display("ImmDFetch_f1");
      {_R_OB_H,_R_OB_L} = R_PC;
      I_R_W <= 1'b1;
      I_VMA <= 1'b1;
    end
  endtask
  
  task ImmDFetch_f2;
    begin
      $display("ImmDFetch_f2");
      mpuState <= 0;
    end
  endtask  
    
  always @ (posedge CLK_1)
    begin
      case (mpuState)
        0: IFetch_f1;
        1: IExec_f1;
        2: ImmDFetch_f1;
      endcase
    end
  
  always @ (posedge CLK_2)
    begin
      case (mpuState)
        0: IFetch_f2;
        1: IExec_f2;
      endcase
    end

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin CLOCK
//: interface  /sz:(122, 64) /bd:[ Li0>VMA(32/64) Li1>CLK(16/64) Ro0<F2_VMA(48/64) Ro1<F2(32/64) Ro2<F1(16/64) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module CLOCK #(.tRize(100))( VMA, CLK, F1, F2, F2_VMA );
  
  input VMA, CLK;
  output reg F1,F2;
  output F2_VMA;
  
  assign F2_VMA = F2 & VMA;
  
  always @(posedge CLK)
    begin
      #tRize F2 = 0;
      #tRize F1 = 1;
    end
  
  always @(negedge CLK)
    begin
      #tRize F1 = 0;
      #tRize F2 = 1;
    end

endmodule
//: /hdlEnd


`timescale 1ns/1ns

