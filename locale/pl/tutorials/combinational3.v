//: version "2.2"
//: property encoding = "utf-8"
//: property locale = "pl"
//: property prefix = "_GG"
//: property title = "Combinational Simulation"
//: property useExtBars = 0
//: property showSwitchNets = 0
//: property discardChanges = 1
//: property timingViolationMode = 2
//: property initTime = "0 ns"

`timescale 1ns/1ns

//: /netlistBegin PAGE1
module PAGE1;    //: root_module
reg B;    //: {0}(50:140,305)(154,305){1}
//: {2}(158,305)(176,305){3}
//: {4}(180,305)(228,305){5}
//: {6}(178,303)(178,242)(223,242){7}
//: {8}(156,303)(156,293){9}
reg A;    //: {0}(223,237)(191,237){1}
//: {2}(189,235)(-86:189,217)(159,217){3}
//: {4}(157,215)(157,204){5}
//: {6}(155,217)(142,217){7}
//: {8}(189,239)(189,300)(228,300){9}
reg Cin;    //: {0}(258,202)(278,202){1}
//: {2}(280,200)(280,191){3}
//: {4}(48:280,204)(280,233){5}
//: {6}(282,235)(320,235){7}
//: {8}(280,237)(280,261){9}
wire w6;    //: /sn:0 {0}(321,303)(249,303){1}
wire w0;    //: /sn:0 {0}(321,298)(278,298)(278,282){1}
wire w1;    //: /sn:0 {0}(320,240)(277,240){1}
//: {2}(273,240)(244,240){3}
//: {4}(275,242)(275,261){5}
wire C;    //: {0}(-21:390,210)(390,301)(342,301){1}
wire S;    //: {0}(341,238)(-39:360,238)(360,210){1}
//: enddecls

  _GGXOR2 #(8) g4 (.I0(A), .I1(B), .Z(w1));   //: @(234,240) /sn:0 /w:[ 0 7 3 ]
  _GGNAND2 #(4) g8 (.I0(w0), .I1(w6), .Z(C));   //: @(332,301) /sn:0 /w:[ 0 0 1 ]
  //: SWITCH g3 (Cin) @(241,202) /sn:0 /w:[ 0 ] /st:1 /dn:0
  //: comment g13 @(10,10) /anc:1
  //: /line:"<h3>Combinational Circuit Simulation</h3> <b>(setting probes)</b>"
  //: /line:""
  //: /line:"Press the \"<img src=\"simstart.gif\"> <font color=red2>Simulate</font>\" tab again, to enter simulation mode. This time right click on a wire (e.g., the"
  //: /line:"one labeled \"S\") and slect \"Add/Delete Probe\" from the popup menu. The will set a probe on that"
  //: /line:"wire and bring up the logic analyzer window. Set probes on some more wires, then unpause the"
  //: /line:"simulator by pressing <img src=sim_go.gif bgcolor=gray>. Click on the switches to change their state and observe how the logic"
  //: /line:"analyzer is updated."
  //: /end
  _GGNAND2 #(4) g2 (.I0(A), .I1(B), .Z(w6));   //: @(239,303) /sn:0 /w:[ 9 5 1 ]
  //: SWITCH g1 (B) @(123,305) /sn:0 /w:[ 0 ] /st:1 /dn:0
  //: joint g11 (w1) @(275, 240) /w:[ 1 -1 2 4 ]
  //: joint g10 (Cin) @(280, 235) /w:[ 6 5 -1 8 ]
  //: LED g28 (A) @(157,197) /sn:0 /w:[ 5 ] /type:0
  //: joint g27 (Cin) @(280, 202) /w:[ -1 2 1 4 ]
  //: joint g6 (B) @(178, 305) /w:[ 4 6 3 -1 ]
  _GGXOR2 #(8) g7 (.I0(Cin), .I1(w1), .Z(S));   //: @(331,238) /sn:0 /w:[ 7 0 0 ]
  _GGNAND2 #(4) g9 (.I0(w1), .I1(Cin), .Z(w0));   //: @(278,272) /sn:0 /R:3 /w:[ 5 9 1 ]
  //: comment g15 @(585,254) /sn:0 /anc:1
  //: /line:"<font color=green4>Hint: Normally, TkGate will simulate"
  //: /line:"combinational circuits until all signals"
  //: /line:"have reached a steady state. You can"
  //: /line:"hit the space bar to advance the"
  //: /line:"simulator by one time unit.</font>"
  //: /end
  //: joint g31 (A) @(157, 217) /w:[ 3 4 6 -1 ]
  //: LED g25 (C) @(390,203) /sn:0 /w:[ 0 ] /type:0
  //: LED g29 (B) @(156,286) /sn:0 /w:[ 9 ] /type:0
  //: joint g5 (A) @(189, 237) /w:[ 1 2 -1 8 ]
  //: comment g14 @(583,172) /sn:0 /anc:1
  //: /line:"<font color=green4>Hint: In addition to using probes,"
  //: /line:"you can also see the value of a net"
  //: /line:"by clicking and holding the mouse"
  //: /line:"button down for a few seconds.</font>"
  //: /end
  //: SWITCH g0 (A) @(125,217) /sn:0 /w:[ 7 ] /st:0 /dn:0
  //: LED g26 (Cin) @(280,184) /sn:0 /w:[ 3 ] /type:0
  //: LED g18 (S) @(360,203) /sn:0 /w:[ 1 ] /type:0
  //: comment g12 @(10,410) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation byfile=1>"
  //: /end
  //: joint g30 (B) @(156, 305) /w:[ 2 8 1 -1 ]

endmodule
//: /netlistEnd

