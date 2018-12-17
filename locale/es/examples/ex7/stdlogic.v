//: version "2.1"
//: property encoding = "utf-8"
//: property locale = "es"
//: property prefix = "_GG"
//: property title = "Standard Logic Microcircuits"
//: property timingViolationMode = 2
//: property initTime = "0 ns"
//: require "74xx"

`timescale 1ns/1ns

//: /netlistBegin main
module main;    //: root_module
reg [15:0] A_NET;    //: {0}(#:80,174)(145,174)(145,174)(213,174){1}
//: {2}(1:217,174)(271,174){3}
//: {4}(#:215,176)(215,352)(268,352){5}
reg [3:0] OP_NET;    //: {0}(#:80,416)(91,416)(91,416)(109,416){1}
//: {2}(-18:113,416)(268,416){3}
//: {4}(111,414)(111,238)(271,238){5}
reg w0;    //: /sn:0 {0}(59,380)(105,380)(105,380)(149,380){1}
//: {2}(151,378)(151,222)(271,222){3}
//: {4}(151,382)(151,400)(268,400){5}
reg w3;    //: /sn:0 {0}(59,323)(111,323)(111,323)(163,323){1}
//: {2}(165,321)(165,206)(271,206){3}
//: {4}(165,325)(165,384)(268,384){5}
reg [15:0] B_NET;    //: {0}(#:80,228)(103,228)(64:103,190)(178,190){1}
//: {2}(182,190)(271,190){3}
//: {4}(#:180,192)(180,368)(268,368){5}
wire [15:0] pulse;    //: /sn:0 {0}(#:514,190)(415,190){1}
wire [15:0] propagation;    //: /sn:0 {0}(#:514,368)(466,368){1}
wire w11;    //: /sn:0 {0}(479,325)(479,352)(466,352){1}
wire w5;    //: /sn:0 {0}(415,174)(479,174)(479,148){1}
//: enddecls

  //: SWITCH M (w0) @(42,380) /w:[ 0 ] /st:0 /dn:1
  //: joint g4 (A_NET) @(215, 174) /w:[ 2 -1 1 4 ]
  //: joint g8 (w0) @(151, 380) /w:[ -1 2 1 4 ]
  //: comment back_link @(11,11) /sn:0 /anc:1
  //: /line:"<a href=\"../index.v\">[BACK]</a>"
  //: /end
  //: LED g1 (w5) @(479,141) /sn:0 /w:[ 1 ] /type:0
  //: DIP B_DIP (B_NET) @(42,228) /R:1 /w:[ 0 ] /st:10818 /dn:1
  //: DIP OP_DIP (OP_NET) @(42,416) /R:1 /w:[ 0 ] /st:2 /dn:1
  //: LED g11 (propagation) @(521,368) /sn:0 /R:3 /w:[ 0 ] /type:2
  //: LED g10 (w11) @(479,318) /sn:0 /w:[ 0 ] /type:0
  ALU16_74181 ALU_OSC (.A(A_NET), .B(B_NET), .CI(w3), .M(w0), .S(OP_NET), .CO(w5), .F(pulse));   //: @(272, 158) /sz:(142, 96) /sn:0 /p:[ Li0>3 Li1>3 Li2>3 Li3>3 Li4>5 Ro0<0 Ro1<1 ]
  //: LED g6 (pulse) @(521,190) /sn:0 /R:3 /w:[ 0 ] /type:2
  //: joint g7 (w3) @(165, 323) /w:[ -1 2 1 4 ]
  //: joint g9 (OP_NET) @(111, 416) /w:[ 2 4 1 -1 ]
  //: comment REF_ARITH @(230,7) /sn:0 /anc:1
  //: /line:"Arithmetic (M=0)"
  //: /line:"<b>A</b>"
  //: /line:"<b>A</b> OR <b>B</b>"
  //: /line:"<b>A</b> OR NOT <b>B</b>"
  //: /line:"(<b>A</b> OR <b>B</b>)+(<b>A</b> AND NOT <b>B</b>)"
  //: /line:"<b>A</b> - <b>B</b> - 1"
  //: /line:"<b>A</b> + <b>B</b>"
  //: /line:"<b>A</b> AND <b>B</b> - 1"
  //: /line:"<b>A</b> OR <b>B</b>"
  //: /end
  //: SWITCH CI (w3) @(42,323) /w:[ 0 ] /st:1 /dn:1
  //: joint g5 (B_NET) @(180, 190) /w:[ 2 -1 1 4 ]
  //: comment REF_LOGIC @(90,7) /sn:0 /anc:1
  //: /line:"Logical (M=1)"
  //: /line:"00 - NOT <b>A</b>"
  //: /line:"01 - <b>A</b> NOR <b>B</b>"
  //: /line:"02 - NOT <b>A</b> AND <b>B</b>"
  //: /line:"05 - NOT <b>B</b>"
  //: /line:"06 - <b>A</b> XOR <b>B</b>"
  //: /line:"09 - <b>A</b> XNOR <b>B</b>"
  //: /line:"0B - <b>A</b> AND <b>B</b>"
  //: /line:"0E - <b>A</b> OR <b>B</b>"
  //: /end
  //: DIP A_DIP (A_NET) @(42,174) /R:1 /w:[ 0 ] /st:28555 /dn:1
  ALU16_74181_74182 ALU_PROP (.A(A_NET), .B(B_NET), .CI(w3), .M(w0), .OP(OP_NET), .CO(w11), .F(propagation));   //: @(269, 336) /sz:(196, 96) /sn:0 /p:[ Li0>5 Li1>5 Li2>5 Li3>5 Li4>3 Ro0<1 Ro1<1 ]

endmodule
//: /netlistEnd

//: /netlistBegin ALU16_74181
module ALU16_74181(F, S, M, B, CI, CO, A);
//: interface  /sz:(142, 96) /bd:[ Li0>A[15:0](16/96) Li1>B[15:0](32/96) Li2>CI(48/96) Li3>M(64/96) Li4>S[3:0](80/96) Ro0<CO(16/96) Ro1<F[15:0](32/96) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
input M;    //: {0}(425,559)(258,559)(258,657)(18,657)(18,566){1}
//: {2}(20,564)(70,564)(70,559)(120,559){3}
//: {4}(18,562)(18,370){5}
//: {6}(18,366)(18,327){7}
//: {8}(20,325)(335,325)(335,188)(425,188){9}
//: {10}(18,323)(18,188)(120,188){11}
//: {12}(16,368)(-114,368)(-114,369)(99:-147,369){13}
input [15:0] B;    //: /sn:0 {0}(#:-90,505)(-111,505)(-111,506)(#:-147,506){1}
output [15:0] F;    //: /sn:0 {0}(50:746,254)(715,254)(715,254)(#:689,254){1}
input [15:0] A;    //: {0}(#:80:-147,79)(-117,79)(-117,79)(#:58:-86,79){1}
output CO;    //: /sn:0 {0}(746,491)(633,491)(633,495)(520,495){1}
input CI;    //: /sn:0 {0}(120,172)(112,172)(112,172)(-147,172){1}
input [3:0] S;    //: {0}(#:70:-147,290)(-125,290)(-125,290)(-105,290){1}
//: {2}(-101,290)(321,290){3}
//: {4}(#:70:323,288)(323,229)(#:371,229){5}
//: {6}(323,292)(323,596)(#:375,596){7}
//: {8}(#:70:-103,288)(-103,230)(#:69,230){9}
//: {10}(#:70:-103,292)(-103,604)(#:64,604){11}
wire [3:0] w6;    //: /sn:0 {0}(#:-84,520)(-68,520)(-68,662)(340,662)(340,500)(#:372,500){1}
wire w32;    //: /sn:0 {0}(120,463)(89,463)(89,458)(66,458){1}
wire [3:0] w7;    //: /sn:0 {0}(#:64,510)(-84,510){1}
wire w45;    //: /sn:0 {0}(120,236)(94,236)(94,235)(75,235){1}
wire [3:0] w96;    //: /sn:0 {0}(#:585,434)(596,434)(596,269)(683,269){1}
wire w46;    //: /sn:0 {0}(120,220)(94,220)(94,225)(75,225){1}
wire w99;    //: /sn:0 {0}(579,419)(543,419)(543,415)(520,415){1}
wire w61;    //: /sn:0 {0}(520,108)(535,108){1}
wire w60;    //: /sn:0 {0}(120,543)(39,543)(39,370)(552,370)(552,124)(520,124){1}
wire w56;    //: /sn:0 {0}(425,60)(404,60)(404,64)(377,64){1}
wire w16;    //: /sn:0 {0}(215,124)(246,124)(246,172)(425,172){1}
wire w14;    //: /sn:0 {0}(215,156)(230,156){1}
wire w19;    //: /sn:0 {0}(573,64)(528,64)(528,60)(520,60){1}
wire [3:0] w89;    //: /sn:0 {0}(#:272,67)(292,67)(292,7)(654,7)(654,239)(#:683,239){1}
wire w81;    //: /sn:0 {0}(520,511)(535,511){1}
wire w15;    //: /sn:0 {0}(215,140)(230,140){1}
wire w38;    //: /sn:0 {0}(215,495)(289,495)(289,543)(425,543){1}
wire w106;    //: /sn:0 {0}(267,428)(239,428)(239,415)(215,415){1}
wire w69;    //: /sn:0 {0}(425,575)(395,575)(395,581)(381,581){1}
wire w51;    //: /sn:0 {0}(425,140)(406,140)(406,136)(377,136){1}
wire w3;    //: /sn:0 {0}(425,447)(380,447)(380,442)(373,442){1}
wire [3:0] w97;    //: /sn:0 {0}(#:60,443)(-22,443)(-22,84)(#:-80,84){1}
wire w0;    //: /sn:0 {0}(120,252)(96,252)(96,245)(75,245){1}
wire w64;    //: /sn:0 {0}(120,44)(95,44)(95,49)(75,49){1}
wire w66;    //: /sn:0 {0}(425,236)(397,236)(397,234)(377,234){1}
wire w37;    //: /sn:0 {0}(215,511)(230,511){1}
wire w104;    //: /sn:0 {0}(579,429)(533,429)(533,431)(520,431){1}
wire w63;    //: /sn:0 {0}(425,252)(398,252)(398,244)(377,244){1}
wire w34;    //: /sn:0 {0}(120,431)(99,431)(99,438)(66,438){1}
wire w76;    //: /sn:0 {0}(70,515)(95,515)(95,511)(120,511){1}
wire [3:0] w21;    //: /sn:0 {0}(#:683,249)(643,249)(643,69)(#:579,69){1}
wire w87;    //: /sn:0 {0}(266,82)(240,82)(240,92)(215,92){1}
wire w67;    //: /sn:0 {0}(425,220)(411,220)(411,224)(377,224){1}
wire w54;    //: /sn:0 {0}(120,623)(91,623)(91,619)(70,619){1}
wire w58;    //: /sn:0 {0}(520,156)(535,156){1}
wire w31;    //: /sn:0 {0}(120,479)(79,479)(79,495)(70,495){1}
wire w20;    //: /sn:0 {0}(120,140)(109,140)(109,139)(75,139){1}
wire w41;    //: /sn:0 {0}(425,92)(400,92)(400,84)(377,84){1}
wire w24;    //: /sn:0 {0}(425,156)(399,156)(399,146)(377,146){1}
wire w36;    //: /sn:0 {0}(215,527)(230,527){1}
wire w1;    //: /sn:0 {0}(75,215)(94,215)(94,204)(120,204){1}
wire [3:0] S0;    //: {0}(#:367,437)(332,437)(332,359)(70:-68,359)(-68,94)(#:-80,94){1}
wire w25;    //: /sn:0 {0}(378,505)(406,505)(406,511)(425,511){1}
wire w82;    //: /sn:0 {0}(425,623)(397,623)(397,611)(381,611){1}
wire w65;    //: /sn:0 {0}(120,495)(93,495)(93,505)(70,505){1}
wire w98;    //: /sn:0 {0}(267,458)(237,458)(237,463)(215,463){1}
wire [3:0] w8;    //: /sn:0 {0}(#:371,131)(308,131)(308,281)(-32,281)(-32,500)(-84,500){1}
wire w18;    //: /sn:0 {0}(120,124)(96,124)(96,129)(75,129){1}
wire w103;    //: /sn:0 {0}(267,448)(228,448)(228,447)(215,447){1}
wire w92;    //: /sn:0 {0}(573,84)(538,84)(538,92)(520,92){1}
wire w91;    //: /sn:0 {0}(573,74)(524,74)(524,76)(520,76){1}
wire w35;    //: /sn:0 {0}(120,415)(86,415)(86,428)(66,428){1}
wire w71;    //: /sn:0 {0}(425,607)(406,607)(406,601)(381,601){1}
wire w68;    //: /sn:0 {0}(425,204)(396,204)(396,214)(377,214){1}
wire w101;    //: /sn:0 {0}(579,439)(535,439)(535,447)(520,447){1}
wire w22;    //: /sn:0 {0}(75,149)(91,149)(91,156)(120,156){1}
wire w17;    //: /sn:0 {0}(215,108)(230,108){1}
wire w84;    //: /sn:0 {0}(425,527)(394,527)(394,515)(378,515){1}
wire w59;    //: /sn:0 {0}(520,140)(535,140){1}
wire w85;    //: /sn:0 {0}(266,62)(226,62)(226,60)(215,60){1}
wire [3:0] w62;    //: /sn:0 {0}(#:273,443)(283,443)(283,382)(584,382)(584,259)(683,259){1}
wire w2;    //: /sn:0 {0}(120,108)(92,108)(92,119)(75,119){1}
wire w49;    //: /sn:0 {0}(120,607)(92,607)(92,609)(70,609){1}
wire w44;    //: /sn:0 {0}(70,599)(94,599)(94,591)(120,591){1}
wire w57;    //: /sn:0 {0}(425,44)(397,44)(397,54)(377,54){1}
wire w12;    //: /sn:0 {0}(75,59)(113,59)(113,60)(120,60){1}
wire w11;    //: /sn:0 {0}(120,76)(109,76)(109,69)(75,69){1}
wire w77;    //: /sn:0 {0}(70,525)(83,525)(83,527)(120,527){1}
wire w105;    //: /sn:0 {0}(579,449)(542,449)(542,463)(520,463){1}
wire w70;    //: /sn:0 {0}(425,591)(407,591)(407,591)(381,591){1}
wire w83;    //: /sn:0 {0}(520,479)(535,479){1}
wire w78;    //: /sn:0 {0}(425,431)(397,431)(397,432)(373,432){1}
wire w10;    //: /sn:0 {0}(120,92)(98,92)(98,79)(75,79){1}
wire w94;    //: /sn:0 {0}(267,438)(228,438)(228,431)(215,431){1}
wire w27;    //: /sn:0 {0}(377,116)(399,116)(399,108)(425,108){1}
wire [3:0] w13;    //: /sn:0 {0}(#:69,64)(-80,64){1}
wire w5;    //: /sn:0 {0}(373,452)(398,452)(398,463)(425,463){1}
wire w95;    //: /sn:0 {0}(573,54)(533,54)(533,44)(520,44){1}
wire w86;    //: /sn:0 {0}(266,72)(226,72)(226,76)(215,76){1}
wire w48;    //: /sn:0 {0}(266,52)(240,52)(240,44)(215,44){1}
wire w52;    //: /sn:0 {0}(377,126)(406,126)(406,124)(425,124){1}
wire w33;    //: /sn:0 {0}(120,447)(98,447)(98,448)(66,448){1}
wire [3:0] w107;    //: /sn:0 {0}(#:371,69)(316,69)(316,16)(-41,16)(-41,74)(#:-80,74){1}
wire w47;    //: /sn:0 {0}(425,479)(392,479)(392,485)(378,485){1}
wire w29;    //: /sn:0 {0}(378,495)(402,495)(402,495)(425,495){1}
wire w80;    //: /sn:0 {0}(520,527)(574,527){1}
wire [3:0] w9;    //: /sn:0 {0}(-84,490)(-13,490)(#:-13,134)(#:69,134){1}
wire w42;    //: /sn:0 {0}(120,575)(89,575)(89,589)(70,589){1}
wire w79;    //: /sn:0 {0}(425,415)(392,415)(392,422)(373,422){1}
wire w55;    //: /sn:0 {0}(425,76)(403,76)(403,74)(377,74){1}
wire w39;    //: /sn:0 {0}(215,479)(230,479){1}
//: enddecls

  //: joint g8 (S) @(323, 290) /w:[ -1 4 3 6 ]
  //: OUT g4 (F) @(743,254) /sn:0 /w:[ 0 ]
  assign {w77, w76, w65, w31} = w7; //: CONCAT g34  @(65,510) /sn:0 /R:2 /w:[ 0 0 1 1 0 ] /dr:0 /tp:1 /drp:0
  //: joint g13 (S) @(-103, 290) /w:[ 2 8 1 10 ]
  //: IN g3 (S) @(-149,290) /sn:0 /w:[ 0 ]
  //: IN g2 (M) @(-149,369) /sn:0 /w:[ 13 ]
  //: IN g1 (B) @(-149,506) /sn:0 /w:[ 1 ]
  assign w89 = {w87, w86, w85, w48}; //: CONCAT g16  @(271,67) /sn:0 /w:[ 0 0 0 0 0 ] /dr:1 /tp:1 /drp:1
  H74181 g11 (._A0(w35), ._A1(w34), ._A2(w33), ._A3(w32), ._B0(w31), ._B1(w65), ._B2(w76), ._B3(w77), .Cn(w60), .M(M), .S0(w42), .S1(w44), .S2(w49), .S3(w54), ._F0(w106), ._F1(w94), ._F2(w103), ._F3(w98), .AEB(w39), .CnP4(w38), ._G(w37), ._P(w36));   //: @(121, 399) /sz:(93, 240) /sn:0 /p:[ Li0>0 Li1>0 Li2>0 Li3>0 Li4>0 Li5>0 Li6>1 Li7>1 Li8>0 Li9>3 Li10>0 Li11>1 Li12>0 Li13>0 Ro0<1 Ro1<1 Ro2<1 Ro3<1 Ro4<0 Ro5<0 Ro6<0 Ro7<0 ]
  assign {w10, w11, w12, w64} = w13; //: CONCAT g28  @(70,64) /sn:0 /R:2 /w:[ 1 1 0 1 0 ] /dr:0 /tp:1 /drp:0
  assign {S0, w97, w107, w13} = A; //: CONCAT A_C  @(-85,79) /sn:0 /R:2 /w:[ 1 1 1 1 1 ] /dr:0 /tp:1 /drp:0
  H74181 g10 (._A0(w57), ._A1(w56), ._A2(w55), ._A3(w41), ._B0(w27), ._B1(w52), ._B2(w51), ._B3(w24), .Cn(w16), .M(M), .S0(w68), .S1(w67), .S2(w66), .S3(w63), ._F0(w95), ._F1(w19), ._F2(w91), ._F3(w92), .AEB(w61), .CnP4(w60), ._G(w59), ._P(w58));   //: @(426, 28) /sz:(93, 240) /sn:0 /p:[ Li0>0 Li1>0 Li2>0 Li3>0 Li4>1 Li5>1 Li6>0 Li7>0 Li8>1 Li9>9 Li10>0 Li11>0 Li12>0 Li13>0 Ro0<1 Ro1<1 Ro2<1 Ro3<1 Ro4<0 Ro5<1 Ro6<0 Ro7<0 ]
  assign w21 = {w92, w91, w19, w95}; //: CONCAT g19  @(578,69) /sn:0 /w:[ 1 0 0 0 0 ] /dr:1 /tp:1 /drp:1
  assign {w0, w45, w46, w1} = S; //: CONCAT g32  @(70,230) /sn:0 /R:2 /w:[ 1 1 1 0 9 ] /dr:0 /tp:1 /drp:0
  //: joint g6 (M) @(18, 325) /w:[ 8 10 -1 7 ]
  assign {w63, w66, w67, w68} = S; //: CONCAT g7  @(372,229) /sn:0 /R:2 /w:[ 1 1 1 1 5 ] /dr:0 /tp:1 /drp:0
  H74181 g9 (._A0(w79), ._A1(w78), ._A2(w3), ._A3(w5), ._B0(w47), ._B1(w29), ._B2(w25), ._B3(w84), .Cn(w38), .M(M), .S0(w69), .S1(w70), .S2(w71), .S3(w82), ._F0(w99), ._F1(w104), ._F2(w101), ._F3(w105), .AEB(w83), .CnP4(CO), ._G(w81), ._P(w80));   //: @(426, 399) /sz:(93, 240) /sn:0 /p:[ Li0>0 Li1>0 Li2>0 Li3>1 Li4>0 Li5>1 Li6>1 Li7>0 Li8>1 Li9>0 Li10>0 Li11>0 Li12>0 Li13>0 Ro0<1 Ro1<1 Ro2<1 Ro3<1 Ro4<0 Ro5<1 Ro6<0 Ro7<0 ]
  assign {w84, w25, w29, w47} = w6; //: CONCAT g15  @(373,500) /sn:0 /R:2 /w:[ 1 0 0 1 1 ] /dr:0 /tp:1 /drp:0
  assign {w24, w51, w52, w27} = w8; //: CONCAT g31  @(372,131) /sn:0 /R:2 /w:[ 1 1 0 0 0 ] /dr:0 /tp:1 /drp:0
  //: IN g20 (CI) @(-149,172) /sn:0 /w:[ 1 ]
  assign {w5, w3, w78, w79} = S0; //: CONCAT g25  @(368,437) /sn:0 /R:2 /w:[ 0 1 1 1 0 ] /dr:0 /tp:1 /drp:0
  //: joint g17 (M) @(18, 368) /w:[ -1 6 12 5 ]
  H74181 g29 (._A0(w64), ._A1(w12), ._A2(w11), ._A3(w10), ._B0(w2), ._B1(w18), ._B2(w20), ._B3(w22), .Cn(CI), .M(M), .S0(w1), .S1(w46), .S2(w45), .S3(w0), ._F0(w48), ._F1(w85), ._F2(w86), ._F3(w87), .AEB(w17), .CnP4(w16), ._G(w15), ._P(w14));   //: @(121, 28) /sz:(93, 240) /sn:0 /p:[ Li0>0 Li1>1 Li2>0 Li3>0 Li4>0 Li5>0 Li6>0 Li7>1 Li8>0 Li9>11 Li10>1 Li11>0 Li12>0 Li13>0 Ro0<1 Ro1<1 Ro2<1 Ro3<1 Ro4<0 Ro5<0 Ro6<0 Ro7<0 ]
  //: OUT g5 (CO) @(743,491) /sn:0 /w:[ 0 ]
  assign {w82, w71, w70, w69} = S; //: CONCAT g14  @(376,596) /sn:0 /R:2 /w:[ 1 1 1 1 7 ] /dr:0 /tp:1 /drp:0
  assign w62 = {w98, w103, w94, w106}; //: CONCAT g21  @(272,443) /sn:0 /w:[ 0 0 0 0 0 ] /dr:1 /tp:1 /drp:1
  //: joint g24 (M) @(18, 564) /w:[ 2 4 -1 1 ]
  assign F = {w96, w62, w21, w89}; //: CONCAT g23  @(688,254) /sn:0 /w:[ 1 1 1 0 1 ] /dr:1 /tp:1 /drp:1
  assign w96 = {w105, w101, w104, w99}; //: CONCAT g22  @(584,434) /sn:0 /w:[ 0 0 0 0 0 ] /dr:1 /tp:1 /drp:1
  //: IN g0 (A) @(-149,79) /sn:0 /w:[ 0 ]
  assign {w41, w55, w56, w57} = w107; //: CONCAT g26  @(372,69) /sn:0 /R:2 /w:[ 1 1 1 1 0 ] /dr:0 /tp:1 /drp:0
  assign {w54, w49, w44, w42} = S; //: CONCAT g18  @(65,604) /sn:0 /R:2 /w:[ 1 1 0 1 11 ] /dr:0 /tp:1 /drp:0
  assign {w6, w7, w8, w9} = B; //: CONCAT B_C  @(-89,505) /sn:0 /R:2 /w:[ 0 1 1 0 0 ] /dr:0 /tp:0 /drp:0
  assign {w22, w20, w18, w2} = w9; //: CONCAT g33  @(70,134) /sn:0 /R:2 /w:[ 0 1 1 1 1 ] /dr:0 /tp:1 /drp:0
  assign {w32, w33, w34, w35} = w97; //: CONCAT g30  @(61,443) /sn:0 /R:2 /w:[ 1 1 1 1 0 ] /dr:0 /tp:1 /drp:0

endmodule
//: /netlistEnd

//: /netlistBegin ALU16_74181_74182
module ALU16_74181_74182(CI, F, OP, B, M, CO, A);
//: interface  /sz:(196, 96) /bd:[ Li0>A[15:0](16/96) Li1>B[15:0](32/96) Li2>CI(48/96) Li3>M(64/96) Li4>OP[3:0](80/96) Ro0<CO(16/96) Ro1<F[15:0](32/96) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
input M;    //: /sn:0 {0}(689,368)(571,368)(571,185){1}
//: {2}(571,181)(571,90)(689,90){3}
//: {4}(569,183)(314,183){5}
//: {6}(312,181)(312,87)(351,87){7}
//: {8}(310,183)(14,183){9}
//: {10}(312,185)(312,380)(347,380){11}
input [15:0] B;    //: /sn:0 {0}(#:50:105,553)(79,553)(79,553)(#:56,553){1}
output [15:0] F;    //: /sn:0 {0}(#:1017,62)(1053,62){1}
input [15:0] A;    //: /sn:0 {0}(#:14,18)(39,18)(39,18)(#:63,18){1}
output CO;    //: /sn:0 {0}(994,307)(799,307)(799,304)(784,304){1}
input [3:0] OP;    //: /sn:0 {0}(#:628,411)(595,411)(595,211){1}
//: {2}(595,207)(595,130)(#:628,130){3}
//: {4}(593,209)(220,209){5}
//: {6}(218,207)(218,127)(#:242,127){7}
//: {8}(216,209)(#:19,209){9}
//: {10}(218,211)(218,421)(#:247,421){11}
input CI;    //: /sn:0 {0}(351,71)(325,71)(325,655){1}
//: {2}(323,657)(135,657)(135,658)(58,658){3}
//: {4}(325,659)(325,771)(727,771){5}
wire w32;    //: /sn:0 {0}(488,-28)(457,-28)(457,-25)(446,-25){1}
wire w6;    //: /sn:0 {0}(727,675)(485,675)(485,332)(442,332){1}
wire w45;    //: /sn:0 {0}(689,-54)(649,-54)(649,-42)(634,-42){1}
wire w73;    //: /sn:0 {0}(153,599)(118,599)(118,598)(111,598){1}
wire w96;    //: /sn:0 {0}(634,308)(662,308)(662,304)(689,304){1}
wire w7;    //: /sn:0 {0}(784,42)(851,42)(851,484)(697,484)(697,659)(727,659){1}
wire w93;    //: /sn:0 {0}(634,257)(654,257)(654,256)(689,256){1}
wire w112;    //: /sn:0 {0}(248,142)(335,142)(335,151)(351,151){1}
wire w46;    //: /sn:0 {0}(784,58)(861,58)(861,496)(659,496)(659,723)(727,723){1}
wire w61;    //: /sn:0 {0}(69,23)(207,23)(207,236)(347,236){1}
wire w60;    //: /sn:0 {0}(1011,97)(916,97){1}
wire w99;    //: /sn:0 {0}(689,352)(583,352)(583,565)(879,565)(879,675)(834,675){1}
wire [3:0] w16;    //: /sn:0 {0}(#:628,313)(550,313)(550,614)(#:159,614){1}
wire [3:0] w14;    //: /sn:0 {0}(#:125,78)(150,78)(150,199)(607,199)(607,252)(#:628,252){1}
wire w56;    //: /sn:0 {0}(916,67)(1011,67){1}
wire w4;    //: /sn:0 {0}(727,707)(507,707)(507,55)(446,55){1}
wire w19;    //: /sn:0 {0}(351,55)(298,55)(298,508)(111,508){1}
wire w89;    //: /sn:0 {0}(481,275)(472,275)(472,284)(442,284){1}
wire w81;    //: /sn:0 {0}(634,237)(643,237)(643,224)(689,224){1}
wire w15;    //: /sn:0 {0}(634,30)(665,30)(665,26)(689,26){1}
wire w38;    //: /sn:0 {0}(153,547)(113,547)(113,548)(111,548){1}
wire w51;    //: /sn:0 {0}(1011,47)(929,47)(929,-22)(784,-22){1}
wire w69;    //: /sn:0 {0}(111,558)(179,558)(179,300)(347,300){1}
wire w106;    //: /sn:0 {0}(1011,117)(964,117)(964,240)(784,240){1}
wire w109;    //: /sn:0 {0}(784,288)(799,288){1}
wire w0;    //: /sn:0 {0}(69,-17)(237,-17){1}
wire w3;    //: /sn:0 {0}(634,115)(661,115)(661,106)(689,106){1}
wire w114;    //: /sn:0 {0}(248,122)(340,122)(340,119)(351,119){1}
wire w97;    //: /sn:0 {0}(634,318)(657,318)(657,320)(689,320){1}
wire w37;    //: /sn:0 {0}(689,74)(561,74)(561,573)(857,573)(857,643)(834,643){1}
wire w64;    //: /sn:0 {0}(69,53)(172,53)(172,284)(347,284){1}
wire w66;    //: /sn:0 {0}(119,73)(69,73){1}
wire w104;    //: /sn:0 {0}(634,426)(670,426)(670,432)(689,432){1}
wire w111;    //: /sn:0 {0}(784,336)(794,336)(794,462)(638,462)(638,755)(727,755){1}
wire w63;    //: /sn:0 {0}(347,268)(183,268)(183,43)(69,43){1}
wire w34;    //: /sn:0 {0}(1011,-3)(977,-3){1}
wire w75;    //: /sn:0 {0}(153,619)(118,619)(118,618)(111,618){1}
wire w21;    //: /sn:0 {0}(111,488)(278,488)(278,23)(351,23){1}
wire w43;    //: /sn:0 {0}(237,3)(69,3){1}
wire w76;    //: /sn:0 {0}(153,629)(118,629)(118,628)(111,628){1}
wire w87;    //: /sn:0 {0}(481,255)(458,255)(458,252)(442,252){1}
wire w102;    //: /sn:0 {0}(634,406)(676,406)(676,400)(689,400){1}
wire w54;    //: /sn:0 {0}(347,412)(331,412)(331,416)(253,416){1}
wire w67;    //: /sn:0 {0}(119,83)(69,83){1}
wire w90;    //: /sn:0 {0}(442,300)(457,300){1}
wire [3:0] w100;    //: /sn:0 {0}(#:628,35)(538,35)(538,532)(#:159,532){1}
wire w31;    //: /sn:0 {0}(446,-9)(466,-9)(466,-18)(488,-18){1}
wire w58;    //: /sn:0 {0}(153,537)(113,537)(113,538)(111,538){1}
wire w28;    //: /sn:0 {0}(689,-22)(663,-22)(663,-22)(634,-22){1}
wire w36;    //: /sn:0 {0}(347,444)(329,444)(329,436)(253,436){1}
wire w20;    //: /sn:0 {0}(111,498)(287,498)(287,39)(351,39){1}
wire w23;    //: /sn:0 {0}(69,-27)(319,-27)(319,-9)(351,-9){1}
wire w41;    //: /sn:0 {0}(153,517)(113,517)(113,518)(111,518){1}
wire w24;    //: /sn:0 {0}(69,-37)(327,-37)(327,-25)(351,-25){1}
wire [3:0] w1;    //: /sn:0 {0}(#:243,-2)(272,-2)(272,-78)(613,-78)(613,-27)(#:628,-27){1}
wire w108;    //: /sn:0 {0}(784,272)(985,272)(985,137)(1011,137){1}
wire w82;    //: /sn:0 {0}(347,396)(328,396)(328,406)(253,406){1}
wire w25;    //: /sn:0 {0}(69,-47)(335,-47)(335,-41)(351,-41){1}
wire w74;    //: /sn:0 {0}(153,609)(118,609)(118,608)(111,608){1}
wire w65;    //: /sn:0 {0}(119,63)(69,63){1}
wire w98;    //: /sn:0 {0}(634,328)(644,328)(644,336)(689,336){1}
wire [3:0] w116;    //: /sn:0 {0}(#:494,-33)(559,-33)(559,-93)(963,-93)(963,2)(#:971,2){1}
wire w35;    //: /sn:0 {0}(689,-6)(649,-6)(649,-12)(634,-12){1}
wire w8;    //: /sn:0 {0}(727,643)(517,643)(517,39)(446,39){1}
wire w91;    //: /sn:0 {0}(442,316)(457,316){1}
wire w103;    //: /sn:0 {0}(634,416)(661,416)(661,416)(689,416){1}
wire w18;    //: /sn:0 {0}(634,50)(663,50)(663,58)(689,58){1}
wire w40;    //: /sn:0 {0}(153,527)(113,527)(113,528)(111,528){1}
wire w92;    //: /sn:0 {0}(634,247)(660,247)(660,240)(689,240){1}
wire w71;    //: /sn:0 {0}(347,332)(198,332)(198,578)(111,578){1}
wire w101;    //: /sn:0 {0}(634,396)(667,396)(667,384)(689,384){1}
wire w30;    //: /sn:0 {0}(446,7)(461,7){1}
wire w68;    //: /sn:0 {0}(119,93)(69,93){1}
wire w17;    //: /sn:0 {0}(634,40)(686,40)(686,42)(689,42){1}
wire w22;    //: /sn:0 {0}(351,7)(267,7)(267,478)(111,478){1}
wire w53;    //: /sn:0 {0}(1011,27)(951,27)(951,-54)(784,-54){1}
wire w84;    //: /sn:0 {0}(634,135)(672,135)(672,138)(689,138){1}
wire [3:0] w117;    //: /sn:0 {0}(#:487,260)(497,260)(497,176)(888,176)(888,82)(#:910,82){1}
wire w59;    //: /sn:0 {0}(1011,87)(916,87){1}
wire w62;    //: /sn:0 {0}(69,33)(195,33)(195,252)(347,252){1}
wire w85;    //: /sn:0 {0}(634,145)(664,145)(664,154)(689,154){1}
wire w113;    //: /sn:0 {0}(248,132)(345,132)(345,135)(351,135){1}
wire w2;    //: /sn:0 {0}(727,739)(473,739)(473,348)(442,348){1}
wire w12;    //: /sn:0 {0}(347,364)(227,364)(227,607)(867,607)(867,659)(834,659){1}
wire w44;    //: /sn:0 {0}(69,-7)(237,-7){1}
wire w49;    //: /sn:0 {0}(784,10)(799,10){1}
wire w57;    //: /sn:0 {0}(916,77)(1011,77){1}
wire w11;    //: /sn:0 {0}(488,-48)(467,-48)(467,-57)(446,-57){1}
wire w115;    //: /sn:0 {0}(248,112)(336,112)(336,103)(351,103){1}
wire w83;    //: /sn:0 {0}(634,125)(669,125)(669,122)(689,122){1}
wire w70;    //: /sn:0 {0}(347,316)(188,316)(188,568)(111,568){1}
wire w105;    //: /sn:0 {0}(1011,107)(952,107)(952,224)(784,224){1}
wire w10;    //: /sn:0 {0}(834,691)(849,691){1}
wire w78;    //: /sn:0 {0}(1011,-13)(977,-13){1}
wire w27;    //: /sn:0 {0}(689,-38)(656,-38)(656,-32)(634,-32){1}
wire w72;    //: /sn:0 {0}(111,588)(209,588)(209,348)(347,348){1}
wire w88;    //: /sn:0 {0}(481,265)(462,265)(462,268)(442,268){1}
wire w94;    //: /sn:0 {0}(634,267)(644,267)(644,272)(689,272){1}
wire w13;    //: /sn:0 {0}(977,7)(1011,7){1}
wire w52;    //: /sn:0 {0}(1011,37)(942,37)(942,-38)(784,-38){1}
wire w86;    //: /sn:0 {0}(481,245)(467,245)(467,236)(442,236){1}
wire w95;    //: /sn:0 {0}(634,298)(644,298)(644,288)(689,288){1}
wire w5;    //: /sn:0 {0}(727,691)(678,691)(678,470)(804,470)(804,320)(784,320){1}
wire w33;    //: /sn:0 {0}(488,-38)(458,-38)(458,-41)(446,-41){1}
wire w48;    //: /sn:0 {0}(784,26)(799,26){1}
wire w29;    //: /sn:0 {0}(446,23)(461,23){1}
wire w47;    //: /sn:0 {0}(347,428)(334,428)(334,426)(253,426){1}
wire w107;    //: /sn:0 {0}(1011,127)(975,127)(975,256)(784,256){1}
wire w42;    //: /sn:0 {0}(69,13)(237,13){1}
wire w50;    //: /sn:0 {0}(1011,57)(920,57)(920,-6)(784,-6){1}
wire w9;    //: /sn:0 {0}(834,707)(849,707){1}
wire w39;    //: /sn:0 {0}(634,20)(654,20)(654,10)(689,10){1}
wire w26;    //: /sn:0 {0}(69,-57)(351,-57){1}
wire w55;    //: /sn:0 {0}(977,17)(1011,17){1}
//: enddecls

  //: IN g4 (CI) @(56,658) /sn:0 /w:[ 3 ]
  H74181 g8 (._A0(w26), ._A1(w25), ._A2(w24), ._A3(w23), ._B0(w22), ._B1(w21), ._B2(w20), ._B3(w19), .Cn(CI), .M(M), .S0(w115), .S1(w114), .S2(w113), .S3(w112), ._F0(w11), ._F1(w33), ._F2(w32), ._F3(w31), .AEB(w30), .CnP4(w29), ._G(w8), ._P(w4));   //: @(352, -73) /sz:(93, 240) /sn:0 /p:[ Li0>1 Li1>1 Li2>1 Li3>1 Li4>0 Li5>1 Li6>1 Li7>0 Li8>0 Li9>7 Li10>1 Li11>1 Li12>1 Li13>1 Ro0<1 Ro1<1 Ro2<1 Ro3<0 Ro4<0 Ro5<0 Ro6<1 Ro7<1 ]
  assign w100 = {w38, w58, w40, w41}; //: CONCAT g34  @(158,532) /sn:0 /w:[ 1 0 0 0 0 ] /dr:1 /tp:1 /drp:1
  //: OUT g3 (F) @(1050,62) /sn:0 /w:[ 1 ]
  assign {w76, w75, w74, w73, w72, w71, w70, w69, w38, w58, w40, w41, w19, w20, w21, w22} = B; //: CONCAT g13  @(106,553) /sn:0 /R:2 /w:[ 1 1 1 1 0 1 1 0 1 1 1 1 1 0 0 1 0 ] /dr:0 /tp:1 /drp:0
  //: IN g2 (OP) @(17,209) /sn:0 /w:[ 9 ]
  //: IN g1 (B) @(54,553) /sn:0 /w:[ 1 ]
  assign {w36, w47, w54, w82} = OP; //: CONCAT g16  @(248,421) /sn:0 /R:2 /w:[ 1 1 1 1 11 ] /dr:0 /tp:1 /drp:0
  assign {w68, w67, w66, w65, w64, w63, w62, w61, w42, w43, w44, w0, w23, w24, w25, w26} = A; //: CONCAT g11  @(64,18) /sn:0 /R:2 /w:[ 1 1 1 1 0 1 0 0 0 1 0 0 0 0 0 0 1 ] /dr:0 /tp:1 /drp:0
  assign {w35, w28, w27, w45} = w1; //: CONCAT g28  @(629,-27) /sn:0 /R:2 /w:[ 1 1 1 1 1 ] /dr:0 /tp:1 /drp:0
  H74181 g10 (._A0(w45), ._A1(w27), ._A2(w28), ._A3(w35), ._B0(w39), ._B1(w15), ._B2(w17), ._B3(w18), .Cn(w37), .M(M), .S0(w3), .S1(w83), .S2(w84), .S3(w85), ._F0(w53), ._F1(w52), ._F2(w51), ._F3(w50), .AEB(w49), .CnP4(w48), ._G(w7), ._P(w46));   //: @(690, -70) /sz:(93, 240) /sn:0 /p:[ Li0>0 Li1>0 Li2>0 Li3>0 Li4>1 Li5>1 Li6>1 Li7>1 Li8>0 Li9>3 Li10>1 Li11>1 Li12>1 Li13>1 Ro0<1 Ro1<1 Ro2<1 Ro3<1 Ro4<0 Ro5<0 Ro6<0 Ro7<0 ]
  assign {w98, w97, w96, w95} = w16; //: CONCAT g32  @(629,313) /sn:0 /R:2 /w:[ 0 0 0 0 0 ] /dr:0 /tp:1 /drp:0
  assign w1 = {w42, w43, w44, w0}; //: CONCAT g27  @(242,-2) /sn:0 /w:[ 0 1 0 1 1 ] /dr:1 /tp:1 /drp:1
  H74181 g19 (.S3(w36), .S2(w47), .S1(w54), .S0(w82), .M(M), .Cn(w12), ._B3(w72), ._B2(w71), ._B1(w70), ._B0(w69), ._A3(w64), ._A2(w63), ._A1(w62), ._A0(w61), ._P(w2), ._G(w6), .CnP4(w91), .AEB(w90), ._F3(w89), ._F2(w88), ._F1(w87), ._F0(w86));   //: @(348, 220) /sz:(93, 240) /sn:0 /p:[ Li0>0 Li1>0 Li2>0 Li3>0 Li4>11 Li5>0 Li6>1 Li7>0 Li8>0 Li9>1 Li10>1 Li11>0 Li12>1 Li13>1 Ro0<1 Ro1<1 Ro2<0 Ro3<0 Ro4<1 Ro5<1 Ro6<1 Ro7<1 ]
  //: IN g6 (M) @(12,183) /sn:0 /w:[ 9 ]
  H74182 g7 (._G0(w8), ._G1(w7), ._G2(w6), ._G3(w5), ._P0(w4), ._P1(w46), ._P2(w2), ._P3(w111), .Cn(CI), .CnPx(w37), .CnPy(w12), .CnPz(w99), ._G(w10), ._P(w9));   //: @(728, 627) /sz:(105, 160) /sn:0 /p:[ Li0>0 Li1>1 Li2>0 Li3>0 Li4>0 Li5>1 Li6>0 Li7>1 Li8>5 Ro0<1 Ro1<1 Ro2<1 Ro3<0 Ro4<0 ]
  //: joint g9 (CI) @(325, 657) /w:[ -1 1 2 4 ]
  //: joint g15 (OP) @(218, 209) /w:[ 5 6 8 10 ]
  assign w16 = {w76, w75, w74, w73}; //: CONCAT g31  @(158,614) /sn:0 /w:[ 1 0 0 0 0 ] /dr:1 /tp:1 /drp:1
  H74181 g20 (.S3(w104), .S2(w103), .S1(w102), .S0(w101), .M(M), .Cn(w99), ._B3(w98), ._B2(w97), ._B1(w96), ._B0(w95), ._A3(w94), ._A2(w93), ._A1(w92), ._A0(w81), ._P(w111), ._G(w5), .CnP4(CO), .AEB(w109), ._F3(w108), ._F2(w107), ._F1(w106), ._F0(w105));   //: @(690, 208) /sz:(93, 240) /sn:0 /p:[ Li0>1 Li1>1 Li2>1 Li3>1 Li4>0 Li5>0 Li6>1 Li7>1 Li8>1 Li9>1 Li10>1 Li11>1 Li12>1 Li13>1 Ro0<0 Ro1<1 Ro2<1 Ro3<0 Ro4<0 Ro5<1 Ro6<1 Ro7<1 ]
  assign {w55, w13, w34, w78} = w116; //: CONCAT g25  @(972,2) /sn:0 /R:2 /w:[ 0 0 1 1 1 ] /dr:0 /tp:1 /drp:0
  assign {w85, w84, w83, w3} = OP; //: CONCAT g17  @(629,130) /sn:0 /R:2 /w:[ 0 0 0 0 3 ] /dr:0 /tp:1 /drp:0
  assign w14 = {w68, w67, w66, w65}; //: CONCAT g29  @(124,78) /sn:0 /w:[ 0 0 0 0 0 ] /dr:1 /tp:1 /drp:1
  assign {w112, w113, w114, w115} = OP; //: CONCAT g14  @(243,127) /sn:0 /R:2 /w:[ 0 0 0 0 7 ] /dr:0 /tp:1 /drp:0
  //: OUT g5 (CO) @(991,307) /sn:0 /w:[ 0 ]
  assign w117 = {w89, w88, w87, w86}; //: CONCAT g24  @(486,260) /sn:0 /w:[ 0 0 0 0 0 ] /dr:1 /tp:1 /drp:1
  assign {w104, w103, w102, w101} = OP; //: CONCAT g21  @(629,411) /sn:0 /R:2 /w:[ 0 0 0 0 0 ] /dr:0 /tp:1 /drp:0
  assign {w60, w59, w57, w56} = w117; //: CONCAT g23  @(911,82) /sn:0 /R:2 /w:[ 1 1 0 0 1 ] /dr:0 /tp:1 /drp:0
  assign w116 = {w31, w32, w33, w11}; //: CONCAT g35  @(493,-33) /sn:0 /w:[ 0 1 0 0 0 ] /dr:1 /tp:1 /drp:1
  //: joint g22 (OP) @(595, 209) /w:[ -1 2 4 1 ]
  //: joint g26 (M) @(571, 183) /w:[ -1 2 4 1 ]
  //: IN g0 (A) @(12,18) /sn:0 /w:[ 0 ]
  //: joint g12 (M) @(312, 183) /w:[ 5 6 8 10 ]
  assign F = {w108, w107, w106, w105, w60, w59, w57, w56, w50, w51, w52, w53, w55, w13, w34, w78}; //: CONCAT g18  @(1016,62) /sn:0 /w:[ 0 1 0 0 0 0 0 1 1 0 0 0 0 1 1 0 0 ] /dr:1 /tp:1 /drp:1
  assign {w18, w17, w15, w39} = w100; //: CONCAT g33  @(629,35) /sn:0 /R:2 /w:[ 0 0 0 0 0 ] /dr:0 /tp:1 /drp:0
  assign {w94, w93, w92, w81} = w14; //: CONCAT g30  @(629,252) /sn:0 /R:2 /w:[ 0 0 0 0 1 ] /dr:0 /tp:1 /drp:0

endmodule
//: /netlistEnd

