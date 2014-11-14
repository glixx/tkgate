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
reg w4;    //: /sn:0 {0}(164,92)(206,92)(206,113)(227,113){1}
reg w1;    //: /sn:0 {0}(120,129)(227,129){1}
supply0 w8;    //: /sn:0 {0}(530,161)(557,161)(557,143){1}
reg w10;    //: /sn:0 {0}(227,145)(188,145)(188,202)(117,202){1}
wire w6;    //: /sn:0 {0}(351,145)(412,145){1}
//: {2}(414,143)(414,61)(564,61)(564,93){3}
//: {4}(414,147)(414,173)(464,173){5}
wire [7:0] w7;    //: /sn:0 {0}(#:351,129)(385,129)(385,195)(496,195){1}
//: {2}(500,195)(607,195)(607,116)(#:581,116){3}
//: {4}(498,197)(498,233){5}
wire w0;    //: /sn:0 {0}(366,161)(351,161){1}
wire [15:0] w3;    //: /sn:0 {0}(#:351,113)(#:440,113){1}
wire [7:0] w13;    //: /sn:0 {0}(#:461,108)(446,108){1}
wire [7:0] w5;    //: /sn:0 {0}(#:546,118)(498,118){1}
//: {2}(496,116)(496,36){3}
//: {4}(494,118)(#:446,118){5}
wire w9;    //: /sn:0 {0}(480,173)(571,173)(571,143){1}
//: enddecls

  //: SWITCH g8 (w10) @(100,202) /sn:0 /w:[ 1 ] /st:0 /dn:1
  assign {w13, w5} = w3; //: CONCAT g4  @(441,113) /sn:0 /R:2 /w:[ 1 5 1 ] /dr:1 /tp:1 /drp:0
  _GGRAM8x8 #(10, 60, 70, 10, 10, 10) g3 (.A(w5), .D(w7), .WE(w6), .OE(w9), .CS(w8));   //: @(564,117) /sn:0 /w:[ 0 3 3 1 1 ]
  //: SWITCH g2 (w1) @(103,129) /sn:0 /w:[ 0 ] /st:10 /dn:-1
  //: SWITCH g1 (w4) @(147,92) /sn:0 /w:[ 0 ] /st:0 /dn:1
  //: LED g11 (w7) @(498,240) /sn:0 /R:2 /w:[ 5 ] /type:2
  //: joint g10 (w5) @(496, 118) /w:[ 1 2 4 -1 ]
  //: joint g6 (w6) @(414, 145) /w:[ -1 2 1 4 ]
  //: LED g9 (w5) @(496,29) /sn:0 /w:[ 3 ] /type:2
  //: GROUND g7 (w8) @(524,161) /sn:0 /R:3 /w:[ 0 ]
  _GGNBUF #(2) g5 (.I(w6), .Z(w9));   //: @(470,173) /sn:0 /w:[ 5 0 ]
  m6800 g0 (._IRQ(w4), ._RESET(w1), .CLK_1(w10), .A(w3), .R_W(w6), ._HALT(w0), .D(w7));   //: @(228, 97) /sz:(122, 80) /sn:0 /p:[ Li0>1 Li1>1 Li2>0 Ro0<0 Ro1<0 Ro2<1 Rt0=0 ]
  //: joint g12 (w7) @(498, 195) /w:[ 2 -1 1 4 ]

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
  
  reg R_W, _HALT;
  
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
  reg [7:0] _R_DB; // Data buffer
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
  
  initial
    begin
      $display("MC68");
      R_A = 0;
      R_B = 0;
      R_PC_H = 0; R_PC_L = 0;
      R_SP_H = 0; R_SP_L = 0;
      R_X_H = 0; R_X_L = 0;
      C_H = 0; C_I = 0; C_N = 0; C_Z = 0; C_V = 0; C_C = 0;
      mpuState = 0;
    end
  
  task IFetch;
    begin
      $display("IFetch");
      {_R_OB_H, _R_OB_L} = R_PC;
      R_W = 1;
      _R_DB = D;
      { R_PC_H, R_PC_L } = R_PC+1;
      mpuState = 1;
      $display("Opcode:", _R_DB);
    end
  endtask
  
  task LDA_IMM;
    begin
      $display("LDA (Immediate)");
      
    end
  endtask
  
  task IExec;
    begin
      $display("IExec");
      _R_IR = _R_DB;
      case (_R_IR)
        'h86 : LDA_IMM;
        default : $display("Unknown opcode:", _R_IR);
      endcase
      mpuState = 0;
    end
  endtask
  
  always @ (posedge CLK_1)
    begin
      case (mpuState)
        0: IFetch;
        1: IExec;
      endcase
    end

endmodule
//: /hdlEnd


`timescale 1ns/1ns

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

