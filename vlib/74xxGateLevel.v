//: version "2.0-rc3"
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
//: interface  /sz:(120, 128) /bd:[ Li0>_R(16/128) Li1>_S1(32/128) Li2>_S2(48/128) Li3>_S3(64/128) Li4>_S4(80/128) Li5>_S5(96/128) Li6>_S6(112/128) Ro0<Q1(16/128) Ro1<Q2(32/128) Ro2<Q3(48/128) Ro3<Q4(64/128) Ro4<Q5(80/128) Ro5<Q6(96/128) ] /pd: 0 /pi: 0 /pe: 1 /pp: 0
//: property pptype=0
//: enddecls
module SN74118 (_S1, _S2, _S3, _S4, _S5, _S6, _R, Q1, Q2, Q3, Q4, Q5, Q6);

  input _S1,_S2,_S3,_S4,_S5,_S6,_R;
  output Q1, Q2, Q3, Q4, Q5, Q6;
  wire  _Q1,_Q2,_Q3,_Q4,_Q5,_Q6;

  nand #11 g1( Q1,_S1,_Q1);
  nand #11 g2(_Q1, Q1,_R);
  
  nand #11 g3( Q2,_S2,_Q2);
  nand #11 g4(_Q2, Q2,_R);
  
  nand #11 g5( Q3,_S3,_Q3);
  nand #11 g6(_Q3, Q3,_R);
  
  nand #11 g7( Q4,_S4,_Q4);
  nand #11 g8(_Q4, Q4,_R);
  
  nand #11 g9( Q5,_S5,_Q5);
  nand #11 g10(_Q5, Q5,_R);
  
  nand #11 g11( Q6,_S6,_Q6);
  nand #11 g12(_Q6, Q6,_R);

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin SN7408
//: interface  /sz:(97, 144) /bd:[ Li0>B4(128/144) Li1>B3(112/144) Li2>B2(96/144) Li3>B1(80/144) Li4>A4(64/144) Li5>A3(48/144) Li6>A2(32/144) Li7>A1(16/144) Ro0<Y4(64/144) Ro1<Y3(48/144) Ro2<Y2(32/144) Ro3<Y1(16/144) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module SN7408(A1, A2, A3, A4, B1, B2, B3, B4, Y1, Y2, Y3, Y4);

  input  A1, A2, A3, A4, B1, B2, B3, B4;
  output Y1, Y2, Y3, Y4;

  and #18 g1(Y1, A1, B1);
  and #18 g2(Y2, A2, B2);
  and #18 g3(Y3, A3, B3);
  and #18 g4(Y4, A4, B4);

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin SN7404
//: interface  /sz:(97, 112) /bd:[ Li0>A6(96/112) Li1>A5(80/112) Li2>A4(64/112) Li3>A3(48/112) Li4>A2(32/112) Li5>A1(16/112) Ro0<Y6(96/112) Ro1<Y5(80/112) Ro2<Y4(64/112) Ro3<Y3(48/112) Ro4<Y2(32/112) Ro5<Y1(16/112) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module SN7404(A1, A2, A3, A4, A5, A6, Y1, Y2, Y3, Y4, Y5, Y6);
  
  input A1, A2, A3, A4, A5, A6;
  output Y1, Y2, Y3, Y4, Y5, Y6;
  
  not #12 g1(Y1, A1);
  not #12 g2(Y2, A2);
  not #12 g3(Y3, A3);
  not #12 g4(Y4, A4);
  not #12 g5(Y5, A5);
  not #12 g6(Y6, A6);

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin SN7405
//: interface  /sz:(97, 112) /bd:[ Li0>A6(96/112) Li1>A5(80/112) Li2>A4(64/112) Li3>A3(48/112) Li4>A2(32/112) Li5>A1(16/112) Ro0<Y6(96/112) Ro1<Y5(80/112) Ro2<Y4(64/112) Ro3<Y3(48/112) Ro4<Y2(32/112) Ro5<Y1(16/112) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module SN7405(A1, A2, A3, A4, A5, A6, Y1, Y2, Y3, Y4, Y5, Y6);
  
  input A1, A2, A3, A4, A5, A6;
  output Y1, Y2, Y3, Y4, Y5, Y6;
  
  not (highz1, strong0) #40 g1(Y1, A1);
  not (highz1, strong0) #40 g2(Y2, A2);
  not (highz1, strong0) #40 g3(Y3, A3);
  not (highz1, strong0) #40 g4(Y4, A4);
  not (highz1, strong0) #40 g5(Y5, A5);
  not (highz1, strong0) #40 g6(Y6, A6);

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin SN7410
//: interface  /sz:(97, 160) /bd:[ Li0>C3(144/160) Li1>C2(128/160) Li2>C1(112/160) Li3>B3(96/160) Li4>B2(80/160) Li5>B1(64/160) Li6>A3(48/160) Li7>A2(32/160) Li8>A1(16/160) Ro0<Y3(48/160) Ro1<Y2(32/160) Ro2<Y1(16/160) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module SN7410 (A1, A2, A3, B1, B2, B3, C1, C2, C3, Y1, Y2, Y3);
  
  input A1, A2, A3, B1, B2, B3, C1, C2, C3;
  output Y1, Y2, Y3;

  nand #11 g1(Y1, A1, B1, C1);
  nand #11 g2(Y2, A2, B2, C2);
  nand #11 g3(Y3, A3, B3, C3);

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin SN7403
//: interface  /sz:(97, 144) /bd:[ Li0>B4(128/144) Li1>B3(112/144) Li2>B2(96/144) Li3>B1(80/144) Li4>A4(64/144) Li5>A3(48/144) Li6>A2(32/144) Li7>A1(16/144) Ro0<Y4(64/144) Ro1<Y3(48/144) Ro2<Y2(32/144) Ro3<Y1(16/144) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
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

//: /hdlBegin SN7422
//: interface  /sz:(97, 144) /bd:[ Li0>A1(16/144) Li1>A2(32/144) Li2>B1(48/144) Li3>B2(64/144) Li4>C1(80/144) Li5>C2(96/144) Li6>D1(112/144) Li7>D2(128/144) Ro0<Y1(16/144) Ro1<Y2(32/144) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module SN7422(A1, A2, B1, B2, C1, C2, D1, D2, Y1, Y2);

  input  A1, A2, B1, B2, C1, C2, D1, D2;
  output Y1, Y2;

  nand (highz1, strong0) #35 g1(Y1, A1, B1, C1, D1);
  nand (highz1, strong0) #35 g2(Y2, A2, B2, C2, D2);

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin SN7400
//: interface  /sz:(97, 144) /bd:[ Li0>B4(128/144) Li1>B3(112/144) Li2>B2(96/144) Li3>B1(80/144) Li4>A4(64/144) Li5>A3(48/144) Li6>A2(32/144) Li7>A1(16/144) Ro0<Y4(64/144) Ro1<Y3(48/144) Ro2<Y2(32/144) Ro3<Y1(16/144) ] /pd: 0 /pi: 0 /pe: 1 /pp: 0
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

//: /hdlBegin SN7421
//: interface  /sz:(97, 144) /bd:[ Li0>A1(16/144) Li1>A2(32/144) Li2>B1(48/144) Li3>B2(64/144) Li4>C1(80/144) Li5>C2(96/144) Li6>D1(112/144) Li7>D2(128/144) Ro0<Y1(16/144) Ro1<Y2(32/144) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module SN7421(A1, A2, B1, B2, C1, C2, D1, D2, Y1, Y2);

  input  A1, A2, B1, B2, C1, C2, D1, D2;
  output Y1, Y2;

  and #20 g1(Y1, A1, B1, C1, D1);
  and #20 g2(Y2, A2, B2, C2, D2);

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin SN7412
//: interface  /sz:(97, 160) /bd:[ Li0>C3(144/160) Li1>C2(128/160) Li2>C1(112/160) Li3>B3(96/160) Li4>B2(80/160) Li5>B1(64/160) Li6>A3(48/160) Li7>A2(32/160) Li8>A1(16/160) Ro0<Y3(48/160) Ro1<Y2(32/160) Ro2<Y1(16/160) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module SN7412 (A1, A2, A3, B1, B2, B3, C1, C2, C3, Y1, Y2, Y3);
  
  input A1, A2, A3, B1, B2, B3, C1, C2, C3;
  output Y1, Y2, Y3;

  nand (highz1, strong0) #35 g1(Y1, A1, B1, C1);
  nand (highz1, strong0) #35 g2(Y2, A2, B2, C2);
  nand (highz1, strong0) #35 g3(Y3, A3, B3, C3);

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin SN7409
//: interface  /sz:(97, 144) /bd:[ Li0>B4(128/144) Li1>B3(112/144) Li2>B2(96/144) Li3>B1(80/144) Li4>A4(64/144) Li5>A3(48/144) Li6>A2(32/144) Li7>A1(16/144) Ro0<Y4(64/144) Ro1<Y3(48/144) Ro2<Y2(32/144) Ro3<Y1(16/144) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module SN7409(A1, A2, A3, A4, B1, B2, B3, B4, Y1, Y2, Y3, Y4);

  input  A1, A2, A3, A4, B1, B2, B3, B4;
  output Y1, Y2, Y3, Y4;

  and (highz1, strong0) #21 g1(Y1, A1, B1);
  and (highz1, strong0) #21 g2(Y2, A2, B2);
  and (highz1, strong0) #21 g3(Y3, A3, B3);
  and (highz1, strong0) #21 g4(Y4, A4, B4);

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin SN7420
//: interface  /sz:(97, 144) /bd:[ Li0>A1(16/144) Li1>A2(32/144) Li2>B1(48/144) Li3>B2(64/144) Li4>C1(80/144) Li5>C2(96/144) Li6>D1(112/144) Li7>D2(128/144) Ro0<Y1(16/144) Ro1<Y2(32/144) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module SN7420(A1, A2, B1, B2, C1, C2, D1, D2, Y1, Y2);

  input  A1, A2, B1, B2, C1, C2, D1, D2;
  output Y1, Y2;

  nand #12 g1(Y1, A1, B1, C1, D1);
  nand #12 g2(Y2, A2, B2, C2, D2);

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin SN7415
//: interface  /sz:(97, 160) /bd:[ Li0>A1(16/160) Li1>A2(32/160) Li2>A3(48/160) Li3>B1(64/160) Li4>B2(80/160) Li5>B3(96/160) Li6>C1(112/160) Li7>C2(128/160) Li8>C3(144/160) Ro0<Y1(16/160) Ro1<Y2(32/160) Ro2<Y3(48/160) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module SN7415 (A1, A2, A3, B1, B2, B3, C1, C2, C3, Y1, Y2, Y3);
  
  input A1, A2, A3, B1, B2, B3, C1, C2, C3;
  output Y1, Y2, Y3;

  and (highz1, strong0) #40 g1(Y1, A1, B1, C1);
  and (highz1, strong0) #40 g2(Y2, A2, B2, C2);
  and (highz1, strong0) #40 g3(Y3, A3, B3, C3);

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin SN7411
//: interface  /sz:(97, 160) /bd:[ Li0>A1(16/160) Li1>A2(32/160) Li2>A3(48/160) Li3>B1(64/160) Li4>B2(80/160) Li5>B3(96/160) Li6>C1(112/160) Li7>C2(128/160) Li8>C3(144/160) Ro0<Y1(16/160) Ro1<Y2(32/160) Ro2<Y3(48/160) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module SN7411 (A1, A2, A3, B1, B2, B3, C1, C2, C3, Y1, Y2, Y3);
  
  input A1, A2, A3, B1, B2, B3, C1, C2, C3;
  output Y1, Y2, Y3;

  and #19 g1(Y1, A1, B1, C1);
  and #19 g2(Y2, A2, B2, C2);
  and #19 g3(Y3, A3, B3, C3);

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin SN7401
//: interface  /sz:(97, 144) /bd:[ Li0>B4(128/144) Li1>B3(112/144) Li2>B2(96/144) Li3>B1(80/144) Li4>A4(64/144) Li5>A3(48/144) Li6>A2(32/144) Li7>A1(16/144) Ro0<Y4(64/144) Ro1<Y3(48/144) Ro2<Y2(32/144) Ro3<Y1(16/144) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
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
//: interface  /sz:(97, 144) /bd:[ Li0>B4(128/144) Li1>B3(112/144) Li2>B2(96/144) Li3>B1(80/144) Li4>A4(64/144) Li5>A3(48/144) Li6>A2(32/144) Li7>A1(16/144) Ro0<Y4(64/144) Ro1<Y3(48/144) Ro2<Y2(32/144) Ro3<Y1(16/144) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
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

