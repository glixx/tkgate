//: version "2.0-b10"
//: property encoding = "utf-8"
//: property locale = "ru"
//: property prefix = "_GG"
//: property title = "flipflop.v"
//: property showSwitchNets = 0
//: property timingViolationMode = 2
//: property initTime = "0 ns"
//: require "timer"

`timescale 1ns/1ns


//: /symbolBegin: 178255472
//: /iconBegin normal 815 5 5
//: /data "#define bitmap_width 28"
//: /data "#define bitmap_height 29"
//: /data "static unsigned char bitmap_bits[] = {"
//: /data "   0x03, 0x00, 0x00, 0x00, 0x0d, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00,"
//: /data "   0xc1, 0x00, 0x00, 0x00, 0x01, 0x03, 0x00, 0x00, 0x01, 0x0c, 0x00, 0x00,"
//: /data "   0x01, 0x30, 0x00, 0x00, 0x01, 0xc0, 0x00, 0x00, 0x01, 0x00, 0x03, 0x00,"
//: /data "   0x01, 0x00, 0x0c, 0x00, 0x01, 0x00, 0x30, 0x00, 0xf1, 0x3c, 0xc0, 0x00,"
//: /data "   0x91, 0x24, 0x00, 0x03, 0x91, 0x24, 0x00, 0x0c, 0x91, 0x24, 0x00, 0x08,"
//: /data "   0x91, 0x24, 0x00, 0x0c, 0x91, 0x24, 0x00, 0x03, 0x9d, 0xe7, 0xc0, 0x00,"
//: /data "   0x01, 0x00, 0x30, 0x00, 0x01, 0x00, 0x0c, 0x00, 0x01, 0x00, 0x03, 0x00,"
//: /data "   0x01, 0xc0, 0x00, 0x00, 0x01, 0x30, 0x00, 0x00, 0x01, 0x0c, 0x00, 0x00,"
//: /data "   0x01, 0x03, 0x00, 0x00, 0xc1, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00,"
//: /data "   0x0d, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00};"
//: /iconEnd
//: /iconBegin select 815 5 5
//: /data "#define bitmap_width 28"
//: /data "#define bitmap_height 29"
//: /data "static unsigned char bitmap_bits[] = {"
//: /data "   0x03, 0x00, 0x00, 0x00, 0x0f, 0x00, 0x00, 0x00, 0x3f, 0x00, 0x00, 0x00,"
//: /data "   0xf3, 0x00, 0x00, 0x00, 0xc3, 0x03, 0x00, 0x00, 0x03, 0x0f, 0x00, 0x00,"
//: /data "   0x03, 0x3c, 0x00, 0x00, 0x03, 0xf0, 0x00, 0x00, 0x03, 0xc0, 0x03, 0x00,"
//: /data "   0x03, 0x00, 0x0f, 0x00, 0x03, 0x00, 0x3c, 0x00, 0xf3, 0x7d, 0xf0, 0x00,"
//: /data "   0xf3, 0x7d, 0xc0, 0x03, 0xb3, 0x6d, 0x00, 0x0f, 0xb3, 0x6d, 0x00, 0x0c,"
//: /data "   0xb3, 0x6d, 0x00, 0x0f, 0xb3, 0x6d, 0xc0, 0x03, 0xbf, 0xef, 0xf1, 0x00,"
//: /data "   0x9f, 0xe7, 0x3c, 0x00, 0x03, 0x00, 0x0f, 0x00, 0x03, 0xc0, 0x03, 0x00,"
//: /data "   0x03, 0xf0, 0x00, 0x00, 0x03, 0x3c, 0x00, 0x00, 0x03, 0x0f, 0x00, 0x00,"
//: /data "   0xc3, 0x03, 0x00, 0x00, 0xf3, 0x00, 0x00, 0x00, 0x3f, 0x00, 0x00, 0x00,"
//: /data "   0x0f, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00};"
//: /iconEnd
//: /port output Z @(33, 19) /r:0
//: /symbolEnd
//: /netlistBegin main
module main;    //: root_module
reg w6;    //: /sn:0 {0}(781,230)(781,169)(632,169){1}
//: {2}(628,169)(475,169){3}
//: {4}(471,169)(338,169){5}
//: {6}(334,169)(254,169)(254,169)(177,169){7}
//: {8}(336,171)(336,226){9}
//: {10}(473,171)(473,226){11}
//: {12}(630,171)(630,229){13}
supply0 w4;    //: /sn:0 {0}(661,215)(661,212)(640,212)(640,229){1}
supply0 w0;    //: /sn:0 {0}(346,226)(346,200)(362,200)(362,210){1}
supply0 w3;    //: /sn:0 {0}(499,211)(499,207)(483,207)(483,226){1}
supply0 w9;    //: /sn:0 {0}(821,213)(821,206)(791,206)(791,230){1}
wire w7;    //: /sn:0 {0}(494,247)(504,247){1}
wire w16;    //: /sn:0 {0}(435,235)(446,235)(446,242)(462,242){1}
wire w14;    //: /sn:0 {0}(729,243)(694,243)(694,192)(832,192){1}
//: {2}(834,190)(834,134)(463,134)(463,122){3}
//: {4}(834,194)(834,241)(802,241){5}
wire w15;    //: /sn:0 {0}(433,122)(433,139)(380,139)(380,235){1}
//: {2}(382,237)(414,237){3}
//: {4}(378,237)(357,237){5}
//: {6}(380,239)(380,272)(534,272){7}
wire w19;    //: /sn:0 {0}(555,270)(554,270)(554,269)(564,269){1}
//: {2}(568,269)(687,269){3}
//: {4}(566,267)(566,247)(574,247){5}
wire w21;    //: /sn:0 {0}(174,344)(339,344){1}
//: {2}(343,344)(476,344){3}
//: {4}(480,344)(633,344){5}
//: {6}(637,344)(786,344)(786,262){7}
//: {8}(635,342)(635,261){9}
//: {10}(478,342)(478,258){11}
//: {12}(341,342)(341,258){13}
wire w20;    //: /sn:0 {0}(750,246)(770,246){1}
wire w24;    //: /sn:0 {0}(708,267)(714,267)(714,248)(729,248){1}
wire w1;    //: /sn:0 {0}(357,247)(367,247)(367,277)(312,277)(312,242)(325,242){1}
wire w18;    //: /sn:0 {0}(802,251)(812,251){1}
wire [3:0] w17;    //: /sn:0 {0}(#:448,116)(448,91){1}
wire w11;    //: /sn:0 {0}(453,122)(453,142)(677,142)(677,188){1}
//: {2}(675,190)(564,190)(564,242)(574,242){3}
//: {4}(677,192)(677,238){5}
//: {6}(675,240)(651,240){7}
//: {8}(677,242)(677,264)(687,264){9}
wire w12;    //: /sn:0 {0}(595,245)(619,245){1}
wire w13;    //: /sn:0 {0}(651,250)(661,250){1}
wire w5;    //: /sn:0 {0}(494,237)(518,237){1}
//: {2}(520,235)(520,194){3}
//: {4}(520,190)(520,149)(443,149)(443,122){5}
//: {6}(518,192)(404,192)(404,232)(414,232){7}
//: {8}(520,239)(520,267)(534,267){9}
//: enddecls

  //: GROUND g8 (w3) @(499,217) /sn:0 /w:[ 0 ]
  OSCILLATOR #(.HZ(300)) g4 (.Z(w21));   //: @(160, 344) /symbol:178255472 /sn:0 /w:[ 0 ]
  //: LED g13 (w17) @(448,84) /sn:0 /w:[ 1 ] /type:1
  //: GROUND g3 (w0) @(362,216) /sn:0 /w:[ 1 ]
  _GGFF #(10, 10, 20) g2 (.Q(w11), ._Q(w13), .D(w12), .EN(w4), .CLR(w6), .CK(w21));   //: @(635,245) /sn:0 /w:[ 7 0 1 1 13 9 ] /mi:0
  _GGFF #(10, 10, 20) g1 (.Q(w5), ._Q(w7), .D(w16), .EN(w3), .CLR(w6), .CK(w21));   //: @(478,242) /sn:0 /w:[ 0 0 1 1 11 11 ] /mi:0
  //: joint g16 (w5) @(520, 192) /w:[ -1 4 6 3 ]
  //: joint g11 (w21) @(341, 344) /w:[ 2 12 1 -1 ]
  //: joint g28 (w14) @(834, 192) /w:[ -1 2 1 4 ]
  _GGFF #(10, 10, 20) g10 (.Q(w14), ._Q(w18), .D(w20), .EN(w9), .CLR(w6), .CK(w21));   //: @(786,246) /sn:0 /w:[ 5 0 1 1 0 7 ] /mi:0
  //: joint g27 (w21) @(635, 344) /w:[ 6 8 5 -1 ]
  _GGAND2 #(6) g19 (.I0(w5), .I1(w15), .Z(w19));   //: @(545,270) /sn:0 /w:[ 9 7 0 ] /eb:0
  //: joint g6 (w6) @(336, 169) /w:[ 5 -1 6 8 ]
  //: joint g7 (w6) @(473, 169) /w:[ 3 -1 4 10 ]
  //: GROUND g9 (w4) @(661,221) /sn:0 /w:[ 0 ]
  _GGXOR2 #(8) g15 (.I0(w5), .I1(w15), .Z(w16));   //: @(425,235) /sn:0 /w:[ 7 3 0 ] /eb:0
  //: joint g20 (w5) @(520, 237) /w:[ -1 2 1 8 ]
  //: comment g39 @(20,12) /sn:0
  //: /line:" <a href=\"../index.v\">[НАЗАД]</a> "
  //: /end
  //: joint g29 (w6) @(630, 169) /w:[ 1 -1 2 12 ]
  //: joint g17 (w15) @(380, 237) /w:[ 2 1 4 6 ]
  //: joint g25 (w19) @(566, 269) /w:[ 2 4 1 -1 ]
  //: SWITCH g5 (w6) @(160,169) /sn:0 /w:[ 7 ] /st:0 /dn:0
  assign w17 = {w14, w11, w5, w15}; //: CONCAT g14  @(448,117) /sn:0 /R:1 /w:[ 0 3 0 5 0 ] /dr:1 /tp:0 /drp:1
  //: joint g21 (w11) @(677, 190) /w:[ -1 1 2 4 ]
  _GGXOR2 #(8) g24 (.I0(w14), .I1(w24), .Z(w20));   //: @(740,246) /sn:0 /w:[ 0 1 0 ] /eb:0
  //: GROUND g23 (w9) @(821,219) /sn:0 /w:[ 0 ]
  _GGFF #(10, 10, 20) g0 (.Q(w15), ._Q(w1), .D(w1), .EN(w0), .CLR(w6), .CK(w21));   //: @(341,242) /sn:0 /w:[ 5 0 1 0 9 13 ] /mi:0
  _GGAND2 #(6) g22 (.I0(w11), .I1(w19), .Z(w24));   //: @(698,267) /sn:0 /w:[ 9 3 0 ] /eb:0
  //: joint g26 (w11) @(677, 240) /w:[ -1 5 6 8 ]
  //: joint g12 (w21) @(478, 344) /w:[ 4 10 3 -1 ]
  _GGXOR2 #(8) g18 (.I0(w11), .I1(w19), .Z(w12));   //: @(585,245) /sn:0 /w:[ 3 5 0 ] /eb:0
  //: comment g30 @(44,184) /sn:0
  //: /line:"<p>Переместите переключатель в положение"
  //: /line:"логической единицы, чтобы запустить счётчик</p>"
  //: /end

endmodule
//: /netlistEnd

