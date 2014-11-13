//: version "2.0-b10"
//: property encoding = "iso8859-1"
//: property locale = "en"
//: property prefix = "_GG"
//: property title = "Motorola 68xx chips"
//: property timingViolationMode = 2
//: property initTime = "0 ns"

`timescale 1ns/1ns

//: /netlistBegin main
module main;    //: root_module
supply0 w7;    //: /sn:0 {0}(485,154)(485,146)(486,146)(486,138){1}
reg w4;    //: /sn:0 {0}(164,92)(206,92)(206,113)(227,113){1}
reg w1;    //: /sn:0 {0}(120,129)(227,129){1}
reg w10;    //: /sn:0 {0}(227,145)(188,145)(188,202)(117,202){1}
wire [7:0] w6;    //: /sn:0 {0}(#:351,129)(392,129){1}
//: {2}(396,129)(430,129)(430,196)(552,196)(552,111)(#:510,111){3}
//: {4}(394,131)(394,224){5}
wire [7:0] w3;    //: /sn:0 {0}(#:410,97)(464,97)(464,113)(475,113){1}
wire w0;    //: /sn:0 {0}(366,161)(351,161){1}
wire [7:0] w11;    //: /sn:0 {0}(#:425,107)(410,107){1}
wire [15:0] w2;    //: /sn:0 {0}(#:404,102)(379,102){1}
//: {2}(377,100)(#:377,47){3}
//: {4}(377,104)(377,113)(351,113){5}
wire w5;    //: /sn:0 {0}(351,145)(441,145){1}
//: {2}(443,143)(443,76)(493,76)(493,88){3}
//: {4}(443,147)(443,174)(453,174){5}
wire w9;    //: /sn:0 {0}(469,174)(500,174)(500,138){1}
//: enddecls

  //: SWITCH g8 (w10) @(100,202) /sn:0 /w:[ 1 ] /st:1 /dn:1
  _GGRAM8x8 #(10, 60, 70, 10, 10, 10) g4 (.A(w3), .D(w6), .WE(w5), .OE(w9), .CS(w7));   //: @(493,112) /sn:0 /w:[ 1 3 3 1 1 ]
  //: LED g3 (w2) @(377,40) /sn:0 /w:[ 3 ] /type:1
  //: SWITCH g2 (w1) @(103,129) /sn:0 /w:[ 0 ] /st:0 /dn:-1
  //: SWITCH g1 (w4) @(147,92) /sn:0 /w:[ 0 ] /st:0 /dn:1
  //: LED g11 (w6) @(394,231) /sn:0 /R:2 /w:[ 5 ] /type:1
  //: joint g10 (w2) @(377, 102) /w:[ 1 2 -1 4 ]
  //: GROUND g6 (w7) @(485,160) /sn:0 /w:[ 0 ]
  assign {w11, w3} = w2; //: CONCAT g9  @(405,102) /sn:0 /R:2 /w:[ 1 0 0 ] /dr:0 /tp:1 /drp:0
  //: joint g7 (w5) @(443, 145) /w:[ -1 2 1 4 ]
  _GGNBUF #(2) g5 (.I(w5), .Z(w9));   //: @(459,174) /sn:0 /w:[ 5 0 ]
  m6800 g0 (._IRQ(w4), ._RESET(w1), .CLK_1(w10), .A(w2), .R_W(w5), ._HALT(w0), .D(w6));   //: @(228, 97) /sz:(122, 80) /sn:0 /p:[ Li0>1 Li1>1 Li2>0 Ro0<5 Ro1<0 Ro2<1 Rt0=0 ]
  //: joint g12 (w6) @(394, 129) /w:[ 2 -1 1 4 ]

endmodule
//: /netlistEnd

//: /hdlBegin m6800
//: interface  /sz:(122, 80) /bd:[ Li0>_IRQ(16/80) Li1>_RESET(32/80) Li2>CLK_1(48/80) Ro0<A[15:0](16/80) Ro1<R_W(48/80) Ro2<_HALT(64/80) Rt0=D[7:0](32/80) ] /pd: 0 /pi: 0 /pe: 0 /pp: 0
//: property pptype=0
//: enddecls
module m6800 ( _IRQ,_RESET,A,D,R_W,_HALT, CLK_1 );
  
  input CLK_1;
  input _IRQ;
  input _RESET;
  output [15:0] A;
  inout [7:0] D;
  output R_W, _HALT;
  
  // Program visible registers
  reg [7:0]  R_A; // Accumulator A
  reg [7:0]  R_B; // Accumulator B
  
  //reg [7:0] R_PC_H;// Program counter higher byte
  //reg [7:0] R_PC_L;// Program counter lower byte
  reg [15:0] R_PC;
  
  reg [7:0] R_SP_H;// Stack pointer higher byte
  reg [7:0] R_SP_L;// Stack pointer lower byte
  
  reg [7:0] R_X_H;// Index register higher byte
  reg [7:0] R_X_L;// Index register lower byte
  
  // Internal registers
  reg [7:0] _R_DB; // Data buffer
  reg [7:0] _R_OB_H; // Output buffer higher byte
  reg [7:0] _R_OB_L; // Output buffer lower byte
  reg [7:0] _R_IR; // Instruction register
  
  reg C_H,C_I,C_N,C_Z,C_V,C_C;
  wire [7:0] R_CC;
  
  reg R_W;
  
  reg [2:0] mpuState; // 0 - IFETCH, 1 - IEXEC
  
  ChipScope_6800 chipScope( .A(R_A), .B(R_B), .PC(R_PC), .R_IR(_R_IR), .CC(R_CC) );
  ///////////////////////////////////////////////////////////////
  assign A = { _R_OB_H, _R_OB_L };
  assign R_CC = {1,1,C_H,C_I,C_N,C_Z,C_V,C_C};
  
  task TFetch;
    begin
      $display("TFetch");
      {_R_OB_H,_R_OB_L} <= R_PC;
      R_W <= 1;
      _R_DB <= D;
      _R_IR <= _R_DB;
      R_PC <= R_PC+1;
      mpuState <= 1;
    end
  endtask
  
  task TExec;
    begin
      $display("TExec");
      mpuState <= 0;
    end
  endtask
  
  initial
    begin
      $display("MCM 68000 started");
      R_A = 0;
      R_B = 0;
      R_PC = 0;
      C_H=0; C_I=0; C_N=0; C_Z=0; C_V=0; C_C=0;
      mpuState = 0;
    end
  
  always @(posedge CLK_1)
    begin
      $display("Condition", R_CC);
      case (mpuState)
        0: TFetch;
        1: TExec;
      endcase
    end

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /netlistBegin ChipScope_6800
module ChipScope_6800(PC, B, CC, R_IR, A);
//: interface  /sz:(161, 96) /bd:[ Li0>A[7:0](16/96) Li1>B[7:0](32/96) Li2>CC[7:0](48/96) Li3>PC[15:0](64/96) Li4>R_IR[7:0](80/96) ] /pd: 0 /pi: 0 /pe: 1 /pp: 0
//: property pptype=0
input [7:0] B;    //: /sn:0 {0}(#:158,145)(#:210,145){1}
input [7:0] CC;    //: /sn:0 {0}(212,222)(#:168,222){1}
input [15:0] PC;    //: /sn:0 {0}(#:210,170)(#:161,170){1}
input [7:0] A;    //: {0}(#:210,120)(183,120)(183,120)(#:-99:155,120){1}
input [7:0] R_IR;    //: /sn:0 {0}(#:161,193)(#:211,193){1}
//: enddecls

  //: LED g4 (R_IR) @(218,193) /sn:0 /R:3 /w:[ 1 ] /type:1
  //: IN g3 (PC) @(159,170) /sn:0 /w:[ 1 ]
  //: LED g13 (PC) @(217,170) /sn:0 /R:3 /w:[ 0 ] /type:1
  //: LED g2 (A) @(217,120) /sn:0 /R:3 /w:[ 0 ] /type:1
  //: IN g1 (B) @(156,145) /sn:0 /w:[ 0 ]
  //: IN g6 (CC) @(166,222) /sn:0 /w:[ 1 ]
  //: LED g7 (CC) @(219,222) /sn:0 /R:3 /w:[ 0 ] /type:1
  //: IN g5 (R_IR) @(159,193) /sn:0 /w:[ 0 ]
  //: IN g0 (A) @(153,120) /sn:0 /w:[ 1 ]
  //: LED g12 (B) @(217,145) /sn:0 /R:3 /w:[ 1 ] /type:1

endmodule
//: /netlistEnd

