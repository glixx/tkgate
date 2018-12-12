//: version "2.1-a2"
//: property encoding = "utf-8"
//: property locale = "uk"
//: property prefix = "_GG"
//: property title = "Редагування дротів"
//: property useExtBars = 0
//: property showSwitchNets = 0
//: property discardChanges = 1
//: property timingViolationMode = 2
//: property initTime = "0 ns"

`timescale 1ns/1ns

//: /netlistBegin PAGE1
module PAGE1;    //: root_module
//: enddecls

  //: comment g10 @(10,310) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end
  //: comment g0 @(185,114) /sn:0 /anc:1
  //: /line:"<img src=netprops.gif>"
  //: /end
  //: comment MAIN_TEXT1 @(10,10) /anc:1
  //: /line:"<h3>Editing Wires</h3>"
  //: /line:""
  //: /line:"This chapter will introduce the basic wire editing features of TkGate."
  //: /end

endmodule
//: /netlistEnd

//: /netlistBegin PAGE3
module PAGE3();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
reg c0;    //: {0}(18:118,113)(224,113)(224,155){1}
//: {2}(226,157)(249,157){3}
//: {4}(224,159)(224,169){5}
reg a0;    //: {0}(40:118,149)(162,149){1}
//: {2}(166,149)(174,149){3}
//: {4}(164,151)(164,205)(181,205){5}
reg b0;    //: {0}(50:118,184)(156,184){1}
//: {2}(158,182)(158,154)(174,154){3}
//: {4}(158,186)(158,210)(181,210){5}
wire w7;    //: /sn:0 {0}(202,208)(217,208)(217,220){1}
wire s0;    //: {0}(36:270,155)(300,155){1}
wire w4;    //: /sn:0 {0}(222,190)(222,220){1}
wire c1;    //: {0}(99:220,241)(220,260){1}
wire w9;    //: /sn:0 {0}(249,152)(221,152){1}
//: {2}(217,152)(195,152){3}
//: {4}(219,154)(219,169){5}
//: enddecls

  //: LED g37 (s0) @(307,155) /sn:0 /R:3 /w:[ 1 ] /type:0
  //: comment g2 @(9,10) /anc:1
  //: /line:"<h3>Editing Wires</h3> <b>(I/O inverters)</b>"
  //: /line:""
  //: /line:"To place or remove an inverter on a gate input or output, select the <img src=\"inv_curs.gif\" bgcolor=gray> tool"
  //: /line:"and click on the port at which you want to place or remove an inveter. Try"
  //: /line:"using the inverter tool to place and remove inverters in the circuit below."
  //: /end
  _GGNAND2 #(6) g1 (.I0(!w7), .I1(w4), .Z(c1));   //: @(220,231) /sn:0 /R:3 /w:[ 1 1 0 ]
  //: comment g10 @(10,310) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end
  _GGAND2 #(6) g28 (.I0(a0), .I1(b0), .Z(w7));   //: @(192,208) /sn:0 /w:[ 5 5 0 ]
  //: SWITCH g27 (c0) @(101,113) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g32 (w9) @(219, 152) /w:[ 1 -1 2 4 ]
  _GGAND2 #(6) g31 (.I0(w9), .I1(c0), .Z(w4));   //: @(222,180) /sn:0 /R:3 /w:[ 5 5 0 ]
  //: SWITCH g25 (a0) @(101,149) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g29 (a0) @(164, 149) /w:[ 2 -1 1 4 ]
  _GGNXOR2 #(8) g24 (.I0(!w9), .I1(c0), .Z(s0));   //: @(260,155) /sn:0 /w:[ 0 3 0 ]
  _GGNXOR2 #(6) g23 (.I0(a0), .I1(b0), .Z(w9));   //: @(185,152) /sn:0 /w:[ 3 3 3 ]
  //: SWITCH g26 (b0) @(101,184) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g30 (b0) @(158, 184) /w:[ -1 2 1 4 ]
  //: joint g33 (c0) @(224, 157) /w:[ 2 1 -1 4 ]

endmodule
//: /netlistEnd

//: /netlistBegin PAGE5
module PAGE5();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
reg c0;    //: {0}(9:155,153)(54:261,153)(261,195){1}
//: {2}(263,197)(286,197){3}
//: {4}(261,199)(261,209){5}
reg a0;    //: {0}(20:155,189)(199,189){1}
//: {2}(203,189)(211,189){3}
//: {4}(201,191)(201,245)(218,245){5}
reg b0;    //: {0}(50:155,224)(193,224){1}
//: {2}(195,222)(195,194)(211,194){3}
//: {4}(195,226)(195,250)(218,250){5}
wire w7;    //: /sn:0 {0}(239,248)(254,248)(254,260){1}
wire s0;    //: {0}(36:307,195)(337,195){1}
wire w4;    //: /sn:0 {0}(259,230)(259,260){1}
wire c1;    //: {0}(99:257,281)(257,300){1}
wire w9;    //: /sn:0 {0}(286,192)(258,192){1}
//: {2}(254,192)(232,192){3}
//: {4}(256,194)(256,209){5}
//: enddecls

  //: LED g37 (s0) @(344,195) /sn:0 /R:3 /w:[ 1 ] /type:0
  //: comment g2 @(7,10)
  //: /line:"<h3>Editing Wires</h3> <b>(wire labels)</b>"
  //: /line:""
  //: /line:"Wire label editing is performed with the <img src=mov_curs.gif bgcolor=gray> tool. Select this tool if it is not already selected. Existing"
  //: /line:"wire labels can be moved by left clicking and dragging the label to a new position. Wire labels can only"
  //: /line:"be moved to a different locations on the wire from which it was grabbed. If you drop the label too far from"
  //: /line:"its wire, the label will be discarded. To display a new label right click on the wire and choose the <font color=red2>Show"
  //: /line:"Label</font> option. You can also hide a specific label (<font color=red2>Hide Label</font>) or hide all labels for a wire (<font color=red2>Hide All Labels</font>)."
  //: /end
  _GGNAND2 #(4) g1 (.I0(w7), .I1(w4), .Z(c1));   //: @(257,271) /sn:0 /R:3 /w:[ 1 1 0 ]
  _GGNAND2 #(4) g28 (.I0(a0), .I1(b0), .Z(w7));   //: @(229,248) /sn:0 /w:[ 5 5 0 ]
  //: SWITCH g27 (c0) @(138,153) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g32 (w9) @(256, 192) /w:[ 1 -1 2 4 ]
  _GGNAND2 #(4) g31 (.I0(w9), .I1(c0), .Z(w4));   //: @(259,220) /sn:0 /R:3 /w:[ 5 5 0 ]
  //: SWITCH g25 (a0) @(138,190) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g29 (a0) @(201, 189) /w:[ 2 -1 1 4 ]
  _GGXOR2 #(8) g24 (.I0(w9), .I1(c0), .Z(s0));   //: @(297,195) /sn:0 /w:[ 0 3 0 ]
  _GGXOR2 #(8) g23 (.I0(a0), .I1(b0), .Z(w9));   //: @(222,192) /sn:0 /w:[ 3 3 3 ]
  //: SWITCH g26 (b0) @(138,224) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: comment g0 @(10,310) /sn:0 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end
  //: joint g30 (b0) @(195, 224) /w:[ -1 2 1 4 ]
  //: joint g33 (c0) @(261, 197) /w:[ 2 1 -1 4 ]

endmodule
//: /netlistEnd

//: /netlistBegin PAGE2
module PAGE2();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
reg c0;    //: {0}(18:118,113)(224,113)(224,155){1}
//: {2}(226,157)(249,157){3}
//: {4}(224,159)(224,169){5}
reg a0;    //: {0}(40:118,149)(162,149){1}
//: {2}(166,149)(174,149){3}
//: {4}(164,151)(164,205)(181,205){5}
reg b0;    //: {0}(50:118,184)(156,184){1}
//: {2}(158,182)(158,154)(174,154){3}
//: {4}(158,186)(158,210)(181,210){5}
wire w7;    //: /sn:0 {0}(202,208)(217,208)(217,220){1}
wire s0;    //: {0}(36:270,155)(300,155){1}
wire w4;    //: /sn:0 {0}(222,190)(222,220){1}
wire c1;    //: {0}(99:220,241)(220,260){1}
wire w9;    //: /sn:0 {0}(249,152)(221,152){1}
//: {2}(217,152)(195,152){3}
//: {4}(219,154)(219,169){5}
//: enddecls

  //: LED g37 (s0) @(307,155) /sn:0 /R:3 /w:[ 1 ] /type:0
  //: comment g2 @(9,10) /anc:1
  //: /line:"<h3>Editing Wires</h3> <b>(cutting)</b>"
  //: /line:""
  //: /line:"To cut a wire, select the <img src=\"cut_curs.gif\" bgcolor=gray> tool and click on a wire at the point you wish to cut. Try"
  //: /line:"using the wire cutter tool to cut some of the wires in the circuit below."
  //: /end
  _GGNAND2 #(4) g1 (.I0(w7), .I1(w4), .Z(c1));   //: @(220,231) /sn:0 /R:3 /w:[ 1 1 0 ]
  _GGNAND2 #(4) g28 (.I0(a0), .I1(b0), .Z(w7));   //: @(192,208) /sn:0 /w:[ 5 5 0 ]
  //: comment g10 @(10,310) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end
  //: SWITCH g27 (c0) @(101,113) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g32 (w9) @(219, 152) /w:[ 1 -1 2 4 ]
  _GGNAND2 #(4) g31 (.I0(w9), .I1(c0), .Z(w4));   //: @(222,180) /sn:0 /R:3 /w:[ 5 5 0 ]
  //: SWITCH g25 (a0) @(101,149) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g29 (a0) @(164, 149) /w:[ 2 -1 1 4 ]
  _GGXOR2 #(8) g24 (.I0(w9), .I1(c0), .Z(s0));   //: @(260,155) /sn:0 /w:[ 0 3 0 ]
  _GGXOR2 #(8) g23 (.I0(a0), .I1(b0), .Z(w9));   //: @(185,152) /sn:0 /w:[ 3 3 3 ]
  //: SWITCH g26 (b0) @(101,184) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g30 (b0) @(158, 184) /w:[ -1 2 1 4 ]
  //: joint g33 (c0) @(224, 157) /w:[ 2 1 -1 4 ]

endmodule
//: /netlistEnd

//: /netlistBegin PAGE4
module PAGE4();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
supply1 w7;    //: /sn:0 {0}(320,176)(335,176)(335,158){1}
reg [15:0] w3;    //: /sn:0 {0}(#:184,170)(184,208)(212,208)(212,224){1}
supply0 w8;    //: /sn:0 {0}(271,250)(271,238)(252,238){1}
supply0 w5;    //: /sn:0 {0}(339,207)(339,186)(320,186){1}
wire [15:0] w6;    //: /sn:0 {0}(281,171)(281,146)(371,146)(371,268)(#:228,268)(#:228,253){1}
wire w4;    //: /sn:0 {0}(204,238)(189,238){1}
wire [15:0] w1;    //: /sn:0 {0}(244,224)(244,211)(#:281,211)(#:281,192){1}
wire w2;    //: /sn:0 {0}(85,181)(244,181){1}
//: enddecls

  //: DIP g8 (w3) @(184,160) /sn:0 /w:[ 0 ] /st:66 /dn:0
  //: GROUND g4 (w5) @(339,213) /sn:0 /w:[ 0 ]
  //: comment g2 @(9,10) /anc:1
  //: /line:"<h3>Editing Wires</h3> <b>(bit widths)</b>"
  //: /line:""
  //: /line:"To change the bit size of one or more wires, first enter the desired bit size in the"
  //: /line:"bit size selector <img src=\"size_example.gif\">. Next, choose the <img src=\"size_curs.gif\" bgcolor=gray> tool, and click on each wire"
  //: /line:"to be changed to that size. Try changing the 8-bit wires in the circuit below to 16-bit wires."
  //: /line:""
  //: /end
  _GGREG16 #(10, 10, 20) g1 (.Q(w1), .D(w6), .EN(w5), .CLR(w7), .CK(w2));   //: @(281,181) /sn:0 /w:[ 1 0 1 0 1 ]
  //: comment g10 @(10,310) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end
  _GGCLOCK_P100_0_50 g6 (.Z(w2));   //: @(72,181) /sn:0 /w:[ 0 ] /omega:100 /phi:0 /duty:50
  //: GROUND g7 (w8) @(271,256) /sn:0 /w:[ 0 ]
  //: VDD g5 (w7) @(346,158) /sn:0 /w:[ 1 ]
  _GGADD16 #(132, 134, 126, 128) g0 (.A(w3), .B(w1), .S(w6), .CI(w8), .CO(w4));   //: @(228,240) /sn:0 /w:[ 1 0 1 1 0 ]

endmodule
//: /netlistEnd

