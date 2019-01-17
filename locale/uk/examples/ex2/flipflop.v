//: version "2.2"
//: property encoding = "utf-8"
//: property locale = "uk"
//: property prefix = "_GG"
//: property title = "4-бітовий лічильник"
//: property showSwitchNets = 0
//: property timingViolationMode = 2
//: property initTime = "0 ns"
//: require "timer"

`timescale 1ns/1ns

//: /netlistBegin main
module main;    //: root_module
reg w6;    //: /sn:0 {0}(622,214)(622,153)(473,153){1}
//: {2}(469,153)(316,153){3}
//: {4}(312,153)(179,153){5}
//: {6}(175,153)(111,153)(111,153)(54,153){7}
//: {8}(177,155)(177,210){9}
//: {10}(314,155)(314,210){11}
//: {12}(471,155)(471,213){13}
supply0 w4;    //: /sn:0 {0}(502,199)(502,196)(481,196)(481,213){1}
supply0 w0;    //: /sn:0 {0}(187,210)(187,184)(203,184)(203,194){1}
supply0 w3;    //: /sn:0 {0}(340,195)(340,191)(324,191)(324,210){1}
supply0 w9;    //: /sn:0 {0}(662,197)(662,190)(632,190)(632,214){1}
wire w7;    //: /sn:0 {0}(335,231)(345,231){1}
wire w16;    //: /sn:0 {0}(276,219)(287,219)(287,226)(303,226){1}
wire w14;    //: /sn:0 {0}(570,227)(535,227)(535,176)(673,176){1}
//: {2}(675,174)(675,118)(304,118)(304,106){3}
//: {4}(675,178)(675,225)(643,225){5}
wire w15;    //: /sn:0 {0}(274,106)(274,123)(221,123)(221,219){1}
//: {2}(223,221)(255,221){3}
//: {4}(219,221)(198,221){5}
//: {6}(221,223)(221,256)(375,256){7}
wire w19;    //: /sn:0 {0}(396,254)(395,254)(395,253)(405,253){1}
//: {2}(409,253)(528,253){3}
//: {4}(407,251)(407,231)(415,231){5}
wire w21;    //: /sn:0 {0}(50,328)(117,328)(117,328)(180,328){1}
//: {2}(184,328)(317,328){3}
//: {4}(321,328)(474,328){5}
//: {6}(478,328)(627,328)(627,246){7}
//: {8}(476,326)(476,245){9}
//: {10}(319,326)(319,242){11}
//: {12}(182,326)(182,242){13}
wire w20;    //: /sn:0 {0}(591,230)(611,230){1}
wire w24;    //: /sn:0 {0}(549,251)(555,251)(555,232)(570,232){1}
wire w1;    //: /sn:0 {0}(198,231)(208,231)(208,261)(153,261)(153,226)(166,226){1}
wire w18;    //: /sn:0 {0}(643,235)(653,235){1}
wire [3:0] w17;    //: /sn:0 {0}(#:289,100)(289,73){1}
//: {2}(#:291,71)(331,71)(331,59){3}
//: {4}(287,71)(250,71)(250,59){5}
wire w11;    //: /sn:0 {0}(294,106)(294,126)(518,126)(518,172){1}
//: {2}(516,174)(405,174)(405,226)(415,226){3}
//: {4}(518,176)(518,222){5}
//: {6}(516,224)(492,224){7}
//: {8}(518,226)(518,248)(528,248){9}
wire w12;    //: /sn:0 {0}(436,229)(460,229){1}
wire w13;    //: /sn:0 {0}(492,234)(502,234){1}
wire w5;    //: /sn:0 {0}(335,221)(359,221){1}
//: {2}(361,219)(361,178){3}
//: {4}(361,174)(361,133)(284,133)(284,106){5}
//: {6}(359,176)(245,176)(245,216)(255,216){7}
//: {8}(361,223)(361,251)(375,251){9}
//: enddecls

  _GGCLOCK_P100_0_50 g4 (.Z(w21));   //: @(37,328) /sn:0 /w:[ 0 ] /omega:100 /phi:0 /duty:50
  //: GROUND g8 (w3) @(340,201) /sn:0 /w:[ 0 ]
  //: LED g13 (w17) @(250,52) /sn:0 /w:[ 5 ] /type:1
  //: GROUND g3 (w0) @(203,200) /sn:0 /w:[ 1 ]
  _GGFF #(10, 10, 20) g2 (.Q(w11), ._Q(w13), .D(w12), .EN(w4), .CLR(w6), .CK(w21));   //: @(476,229) /sn:0 /w:[ 7 0 1 1 13 9 ] /mi:0
  _GGFF #(10, 10, 20) g1 (.Q(w5), ._Q(w7), .D(w16), .EN(w3), .CLR(w6), .CK(w21));   //: @(319,226) /sn:0 /w:[ 0 0 1 1 11 11 ] /mi:0
  //: joint g11 (w21) @(182, 328) /w:[ 2 12 1 -1 ]
  //: joint g16 (w5) @(361, 176) /w:[ -1 4 6 3 ]
  //: joint g28 (w14) @(675, 176) /w:[ -1 2 1 4 ]
  _GGFF #(10, 10, 20) g10 (.Q(w14), ._Q(w18), .D(w20), .EN(w9), .CLR(w6), .CK(w21));   //: @(627,230) /sn:0 /w:[ 5 0 1 1 0 7 ] /mi:0
  //: joint g27 (w21) @(476, 328) /w:[ 6 8 5 -1 ]
  _GGAND2 #(6) g19 (.I0(w5), .I1(w15), .Z(w19));   //: @(386,254) /sn:0 /w:[ 9 7 0 ] /eb:0
  //: joint g6 (w6) @(177, 153) /w:[ 5 -1 6 8 ]
  //: comment LABEL_COUNTER @(10,84) /sn:0 /anc:1
  //: /line:"<p>Перемкніть перемикач у стан"
  //: /line:"логічної 1, щоб запустити"
  //: /line:"лічильник</p>"
  //: /end
  //: joint g7 (w6) @(314, 153) /w:[ 3 -1 4 10 ]
  //: GROUND g9 (w4) @(502,205) /sn:0 /w:[ 0 ]
  //: LED INDICATOR (w17) @(331,52) /sn:0 /w:[ 3 ] /type:2
  //: joint g31 (w17) @(289, 71) /w:[ 2 -1 4 1 ]
  _GGXOR2 #(8) g15 (.I0(w5), .I1(w15), .Z(w16));   //: @(266,219) /sn:0 /w:[ 7 3 0 ] /eb:0
  //: joint g20 (w5) @(361, 221) /w:[ -1 2 1 8 ]
  //: comment g39 @(20,12) /sn:0
  //: /line:"<a href=\"../index.v\">[НАЗАД]</a>"
  //: /end
  //: joint g29 (w6) @(471, 153) /w:[ 1 -1 2 12 ]
  //: joint g17 (w15) @(221, 221) /w:[ 2 1 4 6 ]
  //: joint g25 (w19) @(407, 253) /w:[ 2 4 1 -1 ]
  //: SWITCH g5 (w6) @(37,153) /sn:0 /w:[ 7 ] /st:1 /dn:0
  assign w17 = {w14, w11, w5, w15}; //: CONCAT g14  @(289,101) /sn:0 /R:1 /w:[ 0 3 0 5 0 ] /dr:1 /tp:0 /drp:1
  //: joint g21 (w11) @(518, 174) /w:[ -1 1 2 4 ]
  _GGXOR2 #(8) g24 (.I0(w14), .I1(w24), .Z(w20));   //: @(581,230) /sn:0 /w:[ 0 1 0 ] /eb:0
  //: GROUND g23 (w9) @(662,203) /sn:0 /w:[ 0 ]
  _GGFF #(10, 10, 20) g0 (.Q(w15), ._Q(w1), .D(w1), .EN(w0), .CLR(w6), .CK(w21));   //: @(182,226) /sn:0 /w:[ 5 0 1 0 9 13 ] /mi:0
  _GGAND2 #(6) g22 (.I0(w11), .I1(w19), .Z(w24));   //: @(539,251) /sn:0 /w:[ 9 3 0 ] /eb:0
  //: joint g26 (w11) @(518, 224) /w:[ -1 5 6 8 ]
  //: joint g12 (w21) @(319, 328) /w:[ 4 10 3 -1 ]
  _GGXOR2 #(8) g18 (.I0(w11), .I1(w19), .Z(w12));   //: @(426,229) /sn:0 /w:[ 3 5 0 ] /eb:0

endmodule
//: /netlistEnd

