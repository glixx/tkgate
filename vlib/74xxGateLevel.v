//: version "2.0-rc2"
//: property encoding = "iso8859-1"
//: property locale = "en"
//: property prefix = "_GG"
//: property title = "74-series gate level verilog models"
//: property timingViolationMode = 2
//: property initTime = "0 ns"

`timescale 1ns/1ns

//: /netlistBegin main
module main;    //: root_module
//: enddecls


endmodule
//: /netlistEnd

//: /hdlBegin SN74118
//: interface  /sz:(120, 128) /bd:[ Li0>_S6(112/128) Li1>_S5(96/128) Li2>_S4(80/128) Li3>_S3(64/128) Li4>_S2(48/128) Li5>_S1(32/128) Li6>_R(16/128) Ro0<Q6(96/128) Ro1<Q5(80/128) Ro2<Q4(64/128) Ro3<Q3(48/128) Ro4<Q2(32/128) Ro5<Q1(16/128) ] /pd: 0 /pi: 0 /pe: 1 /pp: 0
//: property pptype=0
//: enddecls
module SN74118 (_S1, _S2, _S3, _S4, _S5, _S6, _R, Q1, Q2, Q3, Q4, Q5, Q6);

  input _S1,_S2,_S3,_S4,_S5,_S6,_R;
  output Q1, Q2, Q3, Q4, Q5, Q6;
  wire  _Q1,_Q2,_Q3,_Q4,_Q5,_Q6;

  _NAND_SR_Latch L1(._S(_S1),._R(_R), .Q(Q1),._Q(_Q1));
  _NAND_SR_Latch L1(._S(_S2),._R(_R), .Q(Q2),._Q(_Q2));
  _NAND_SR_Latch L1(._S(_S3),._R(_R), .Q(Q3),._Q(_Q3));
  _NAND_SR_Latch L1(._S(_S4),._R(_R), .Q(Q4),._Q(_Q4));
  _NAND_SR_Latch L1(._S(_S5),._R(_R), .Q(Q5),._Q(_Q5));
  _NAND_SR_Latch L1(._S(_S6),._R(_R), .Q(Q6),._Q(_Q6));

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin _NAND_SR_Latch
//: interface  /sz:(169, 48) /bd:[ Li0>_R(16/48) Li1>_S(32/48) Ro0<Q(16/48) Ro1<_Q(32/48) ] /pd: 0 /pi: 0 /pe: 1 /pp: 0
//: property pptype=0
//: enddecls
module _NAND_SR_Latch(_S,_R, Q,_Q);

  input _S,_R;
  output Q,_Q;

  nand #1 g1( Q,_S,_Q);
  nand #1 q2(_Q, Q,_R);

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin SN7404
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module SN7404(A1, A2, A3, A4, A5, A6, Y1, Y2, Y3, Y4, Y5, Y6);
  
  input A1, A2, A3, A4, A5, A6;
  output Y1, Y2, Y3, Y4, Y5, Y6;
  
  not #12 (Y1, A1);
  not #12 (Y2, A2);
  not #12 (Y3, A3);
  not #12 (Y4, A4);
  not #12 (Y5, A5);
  not #12 (Y6, A6);

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin SN7403
//: interface  /sz:(97, 144) /bd:[ Li0>A1(16/144) Li1>A2(32/144) Li2>A3(48/144) Li3>A4(64/144) Li4>B1(80/144) Li5>B2(96/144) Li6>B3(112/144) Li7>B4(128/144) Ro0<Y1(16/144) Ro1<Y2(32/144) Ro2<Y3(48/144) Ro3<Y4(64/144) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module SN7403(A1, A2, A3, A4, B1, B2, B3, B4, Y1, Y2, Y3, Y4);

  input  A1, A2, A3, A4, B1, B2, B3, B4;
  output Y1, Y2, Y3, Y4;

  nor (highz1,strong0) #35 g1(Y1, A1, B1);
  nor (highz1,strong0) #35 g2(Y2, A2, B2);
  nor (highz1,strong0) #35 g3(Y3, A3, B3);
  nor (highz1,strong0) #35 g4(Y4, A4, B4);

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin SN7400
//: interface  /sz:(97, 144) /bd:[ Li0>A1(16/144) Li1>A2(32/144) Li2>A3(48/144) Li3>A4(64/144) Li4>B1(80/144) Li5>B2(96/144) Li6>B3(112/144) Li7>B4(128/144) Ro0<Y1(16/144) Ro1<Y2(32/144) Ro2<Y3(48/144) Ro3<Y4(64/144) ] /pd: 0 /pi: 0 /pe: 1 /pp: 0
//: property pptype=0
//: enddecls
module SN7400(A1, A2, A3, A4, B1, B2, B3, B4, Y1, Y2, Y3, Y4);

  input  A1, A2, A3, A4, B1, B2, B3, B4;
  output Y1, Y2, Y3, Y4;

  nand #11 g1(Y1, A1, B1);
  nand #11 g2(Y2, A2, B2);
  nand #11 g3(Y3, A3, B3);
  nand #11 g4(Y4, A4, B4);

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin SN7401
//: interface  /sz:(97, 144) /bd:[ Li0>A1(16/144) Li1>A2(32/144) Li2>A3(48/144) Li3>A4(64/144) Li4>B1(80/144) Li5>B2(96/144) Li6>B3(112/144) Li7>B4(128/144) Ro0<Y1(16/144) Ro1<Y2(32/144) Ro2<Y3(48/144) Ro3<Y4(64/144) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module SN7401(A1, A2, A3, A4, B1, B2, B3, B4, Y1, Y2, Y3, Y4);

  input  A1, A2, A3, A4, B1, B2, B3, B4;
  output Y1, Y2, Y3, Y4;

  nand (highz1,strong0) #35 g1(Y1, A1, B1);
  nand (highz1,strong0) #35 g2(Y2, A2, B2);
  nand (highz1,strong0) #35 g3(Y3, A3, B3);
  nand (highz1,strong0) #35 g4(Y4, A4, B4);

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin SN7402
//: interface  /sz:(97, 144) /bd:[ Li0>A1(16/144) Li1>A2(32/144) Li2>A3(48/144) Li3>A4(64/144) Li4>B1(80/144) Li5>B2(96/144) Li6>B3(112/144) Li7>B4(128/144) Ro0<Y1(16/144) Ro1<Y2(32/144) Ro2<Y3(48/144) Ro3<Y4(64/144) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module SN7402(A1, A2, A3, A4, B1, B2, B3, B4, Y1, Y2, Y3, Y4);

  input  A1, A2, A3, A4, B1, B2, B3, B4;
  output Y1, Y2, Y3, Y4;

  nor #12 g1(Y1, A1, B1);
  nor #12 g2(Y2, A2, B2);
  nor #12 g3(Y3, A3, B3);
  nor #12 g4(Y4, A4, B4);

endmodule
//: /hdlEnd


`timescale 1ns/1ns

