//: version "2.2"
//: property encoding = "iso8859-1"
//: property locale = "en"
//: property prefix = "_GG"
//: property title = "74-series gate level verilog models"
//: property timingViolationMode = 2
//: property initTime = "0 ns"

`timescale 1ns/1ns

//: /netlistBegin main
module main;    //: root_module
reg w14;    //: /sn:0 {0}(378,140)(312,140)(312,145)(297,145){1}
reg w16;    //: /sn:0 {0}(297,240)(363,240)(363,172)(378,172){1}
reg w15;    //: /sn:0 {0}(378,156)(312,156)(312,181)(297,181){1}
reg w3;    //: /sn:0 {0}(394,442)(341,442)(341,544)(288,544){1}
reg w23;    //: /sn:0 {0}(288,291)(356,291)(356,346)(394,346){1}
reg w24;    //: /sn:0 {0}(288,590)(364,590)(364,458)(394,458){1}
reg w8;    //: /sn:0 {0}(394,410)(320,410)(320,458)(288,458){1}
reg w11;    //: /sn:0 {0}(394,362)(345,362)(345,332)(288,332){1}
reg w12;    //: /sn:0 {0}(378,108)(354,108)(354,73)(297,73){1}
reg w10;    //: /sn:0 {0}(394,378)(367,378)(367,375)(288,375){1}
reg w13;    //: /sn:0 {0}(378,124)(344,124)(344,109)(297,109){1}
reg w5;    //: /sn:0 {0}(394,426)(330,426)(330,501)(288,501){1}
reg w9;    //: /sn:0 {0}(394,394)(311,394)(311,415)(288,415){1}
reg w26;    //: /sn:0 {0}(400,266)(410,266)(410,281)(378,281)(378,330)(394,330){1}
wire w32;    //: /sn:0 {0}(536,458)(521,458){1}
wire w6;    //: /sn:0 {0}(580,147)(543,147)(543,124)(491,124){1}
wire w7;    //: /sn:0 {0}(491,140)(565,140)(565,177)(580,177){1}
wire w19;    //: /sn:0 {0}(580,137)(548,137)(548,188)(491,188){1}
wire w4;    //: /sn:0 {0}(580,167)(523,167)(523,172)(491,172){1}
wire [6:0] w0;    //: /sn:0 {0}(660,131)(660,157)(#:586,157){1}
wire w34;    //: /sn:0 {0}(536,426)(521,426){1}
wire w21;    //: /sn:0 {0}(578,310)(578,346)(521,346){1}
wire w31;    //: /sn:0 {0}(620,452)(620,474)(521,474){1}
wire w28;    //: /sn:0 {0}(536,522)(521,522){1}
wire w36;    //: /sn:0 {0}(670,378)(670,394)(521,394){1}
wire w20;    //: /sn:0 {0}(580,127)(559,127)(559,108)(491,108){1}
wire w1;    //: /sn:0 {0}(580,187)(523,187)(523,156)(491,156){1}
wire w25;    //: /sn:0 {0}(617,343)(617,362)(521,362){1}
wire w35;    //: /sn:0 {0}(536,410)(521,410){1}
wire w18;    //: /sn:0 {0}(536,554)(521,554){1}
wire w30;    //: /sn:0 {0}(536,490)(521,490){1}
wire w22;    //: /sn:0 {0}(555,311)(555,330)(521,330){1}
wire w17;    //: /sn:0 {0}(580,157)(533,157)(533,204)(491,204){1}
wire w2;    //: /sn:0 {0}(634,343)(634,378)(521,378){1}
wire w27;    //: /sn:0 {0}(536,538)(521,538){1}
wire w33;    //: /sn:0 {0}(536,442)(521,442){1}
wire w29;    //: /sn:0 {0}(703,398)(703,506)(521,506){1}
//: enddecls

  SN7470 g8 (._CLR(w26), .J1(w23), .J2(w11), ._J(w10), .K1(w9), .K2(w8), ._K(w5), ._PRE(w3), .CLK(w24), .Q(w22), ._Q(w21), .J(w25), .K(w2), .CLK_1(w36), .J_1(w35), .K_1(w34), .w1_1(w33), .w1_2(w32), .w2_1(w31), .w2_2(w30), .w3_1(w29), .w3_2(w28), .w4_1(w27), .w4_2(w18));   //: @(395, 314) /sz:(125, 256) /sn:0 /p:[ Li0>1 Li1>1 Li2>0 Li3>0 Li4>0 Li5>0 Li6>0 Li7>0 Li8>1 Ro0<1 Ro1<1 Ro2<1 Ro3<1 Ro4<1 Ro5<1 Ro6<1 Ro7<1 Ro8<1 Ro9<1 Ro10<1 Ro11<1 Ro12<1 Ro13<1 Ro14<1 ]
  //: SWITCH g4 (w15) @(280,181) /sn:0 /w:[ 1 ] /st:1 /dn:1
  //: SWITCH g13 (w11) @(271,332) /sn:0 /w:[ 1 ] /st:0 /dn:1
  //: SWITCH g3 (w14) @(280,145) /sn:0 /w:[ 1 ] /st:0 /dn:1
  //: SWITCH g2 (w13) @(280,109) /sn:0 /w:[ 1 ] /st:0 /dn:1
  //: SWITCH g1 (w12) @(280,73) /sn:0 /w:[ 1 ] /st:1 /dn:1
  //: SWITCH g16 (w8) @(271,458) /sn:0 /w:[ 1 ] /st:0 /dn:1
  //: SWITCH g11 (w24) @(271,590) /sn:0 /w:[ 0 ] /st:0 /dn:1
  //: LED g10 (w21) @(578,303) /sn:0 /w:[ 0 ] /type:0
  //: LED g19 (w25) @(617,336) /sn:0 /w:[ 0 ] /type:0
  //: LED g6 (w0) @(660,124) /sn:0 /w:[ 0 ] /type:4
  //: LED g9 (w22) @(555,304) /sn:0 /w:[ 0 ] /type:0
  assign w0 = {w1, w7, w4, w17, w6, w19, w20}; //: CONCAT g7  @(585,157) /sn:0 /w:[ 1 0 1 0 0 0 0 0 ] /dr:1 /tp:0 /drp:1
  //: LED g20 (w2) @(634,336) /sn:0 /w:[ 0 ] /type:0
  //: SWITCH g15 (w9) @(271,415) /sn:0 /w:[ 1 ] /st:0 /dn:1
  //: SWITCH g17 (w5) @(271,501) /sn:0 /w:[ 1 ] /st:0 /dn:1
  //: SWITCH g14 (w10) @(271,375) /sn:0 /w:[ 1 ] /st:0 /dn:1
  //: SWITCH g5 (w16) @(280,240) /sn:0 /w:[ 0 ] /st:1 /dn:1
  //: LED g24 (w31) @(620,445) /sn:0 /w:[ 0 ] /type:0
  //: SWITCH g21 (w26) @(383,266) /sn:0 /w:[ 0 ] /st:0 /dn:1
  //: LED g23 (w29) @(703,391) /sn:0 /w:[ 0 ] /type:0
  //: LED g22 (w36) @(670,371) /sn:0 /w:[ 0 ] /type:0
  SN7449 g0 (._BI(w16), .D(w15), .C(w14), .B(w13), .A(w12), .g(w17), .f(w19), .e(w4), .d(w1), .c(w7), .b(w6), .a(w20));   //: @(379, 92) /sz:(111, 128) /sn:0 /p:[ Li0>1 Li1>0 Li2>0 Li3>0 Li4>0 Ro0<1 Ro1<1 Ro2<1 Ro3<1 Ro4<0 Ro5<1 Ro6<1 ]
  //: SWITCH g18 (w3) @(271,544) /sn:0 /w:[ 1 ] /st:0 /dn:1
  //: SWITCH g12 (w23) @(271,291) /sn:0 /w:[ 0 ] /st:0 /dn:1

endmodule
//: /netlistEnd

//: /hdlBegin SN7470
//: interface  /sz:(125, 256) /bd:[ Li0>CLK(144/256) Li1>_PRE(128/256) Li2>_K(112/256) Li3>K2(96/256) Li4>K1(80/256) Li5>_J(64/256) Li6>J2(48/256) Li7>J1(32/256) Li8>_CLR(16/256) Ro0<w4_2(240/256) Ro1<w4_1(224/256) Ro2<w3_2(208/256) Ro3<w3_1(192/256) Ro4<w2_2(176/256) Ro5<w2_1(160/256) Ro6<w1_2(144/256) Ro7<w1_1(128/256) Ro8<K_1(112/256) Ro9<J_1(96/256) Ro10<CLK_1(80/256) Ro11<K(64/256) Ro12<J(48/256) Ro13<_Q(32/256) Ro14<Q(16/256) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module SN7470(J1, J2, K1, K2, _K, _J, _PRE, _CLR, CLK, Q, _Q, J, K, w1_1, w1_2, K_1, CLK_1, J_1, w2_1, w2_2, w3_1, w3_2, w4_1, w4_2 );
  
  input J1, J2, K1, K2, _J, _K, _PRE, _CLR, CLK;
  output Q, _Q, J, K;
  
  output w1_1, w1_2, K_1, CLK_1, J_1, w2_1, w2_2, w3_1, w3_2, w4_1, w4_2;
  
  buf (K_1, ~_K);
  buf (J_1, ~_J);
  buf (CLK_1, ~CLK);

  nand (w1_1, K1, K2, K_1,_PRE, w3_1, Q);
  nand (w1_2, J1, J2, J_1,_CLR, w3_2,_Q);
  
  and (w2_1, w1_1, w3_2, w4_1);
  and (w2_2, w1_2, w3_1, w4_2);
  
  assign w3_1 = (w2_1==1'bx) ? CLK_1 : 1'bz;
  assign w3_2 = (w2_2==1'bx) ? CLK_1 : 1'bz;
  
  nand (w4_1, w3_1,_PRE, w4_2);
  nand (w4_2, w3_2,_CLR, w4_1);
  
  buf (_Q, ~w4_1);
  buf ( Q, ~w4_2);

endmodule
//: /hdlEnd


`timescale 1ns/1ns

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

//: /hdlBegin SN7449
//: interface  /sz:(111, 128) /bd:[ Li0>_BI(80/128) Li1>D(64/128) Li2>C(48/128) Li3>B(32/128) Li4>A(16/128) Ro0<g(112/128) Ro1<f(96/128) Ro2<e(80/128) Ro3<d(64/128) Ro4<c(48/128) Ro5<b(32/128) Ro6<a(16/128) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module SN7449 (A,B,C,D,_BI,a,b,c,d,e,f,g);
  
  input A,B,C,D,_BI;
  output a,b,c,d,e,f,g;
  
  wire s1_1,s1_2,s1_3,s1_4,s1_5;
  
  not #12 (s1_1, A);
  not #12 (s1_2, B);
  not #12 (s1_3, C);
  not #12 (s1_4, D);
  not #12 (s1_5, ~_BI);
  
  wire s2_1,s2_2,s2_3,s2_4;

  nand #11 (s2_1, s1_1,s1_5);
  nand #11 (s2_2, s1_2,s1_5);
  nand #11 (s2_3, s1_3,s1_5);
  nand #11 (s2_4, s1_4,s1_5);
  
  wire s3_1,s3_2,s3_3,s3_4,s3_5,s3_6,s3_7,s3_8,s3_9,s3_10,s3_11,s3_12,s3_13,s3_14,s3_15,s3_16,s3_17,s3_18;
  
  and #18 (s3_1, s2_2,s2_4);
  and #18 (s3_2, s1_1,s2_3);
  and #20 (s3_3, s2_1,s1_2,s1_3,s1_4);
  and #18 (s3_4, s2_2,s2_4);
  and #19 (s3_5, s2_1,s1_2,s2_3);
  and #19 (s3_6, s1_1,s2_2,s2_3);
  and #18 (s3_7, s2_3,s2_4);
  and #19 (s3_8, s1_1,s2_2,s1_3);
  and #19 (s3_9, s2_1,s1_2,s1_3);
  and #19 (s3_10,s1_1,s1_2,s2_3);
  and #19 (s3_11,s2_1,s2_2,s2_3);
  buf #18 (s3_12,s2_1);
  and #18 (s3_13,s1_2,s2_3);
  and #18 (s3_14,s2_1,s2_2);
  and #18 (s3_15,s2_2,s1_3);
  and #19 (s3_16,s2_1,s1_3,s1_4);
  and #19 (s3_17,s2_1,s2_2,s2_3);
  and #20 (s3_18,s1_2,s1_3,s1_4);
  
  and #19 (a, ~s3_1,~s3_2,~s3_3);
  and #19 (b, ~s3_4,~s3_5,~s3_6);
  and #18 (c, ~s3_7,~s3_8);
  and #19 (d, ~s3_9,~s3_10,~s3_11);
  and #18 (e, ~s3_12,~s3_13);
  and #19 (f, ~s3_14,~s3_15,~s3_16);
  and #18 (g, ~s3_17,~s3_18);
  
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

