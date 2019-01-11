//: version "2.2"
//: property encoding = "utf-8"
//: property locale = "it"
//: property prefix = "_GG"
//: property title = "Sequential Simulation"
//: property showSwitchNets = 0
//: property discardChanges = 1
//: property timingViolationMode = 2
//: property initTime = "0 ns"
//: require "timer"

`timescale 1ns/1ns

//: /netlistBegin PAGE1
module PAGE1;    //: root_module
reg [7:0] w7;    //: /sn:0 {0}(#:213,222)(213,248){1}
reg w4;    //: /sn:0 {0}(268,307)(279,307)(279,295)(289,295){1}
supply0 w0;    //: /sn:0 {0}(268,317)(288,317)(288,328){1}
supply0 w3;    //: /sn:0 {0}(266,272)(266,262)(253,262){1}
wire [7:0] w2;    //: /sn:0 {0}(#:229,302)(229,277){1}
wire ck;    //: {0}(50:192,312)(127,312){1}
wire [7:0] reg_out;    //: {0}(#:229,323)(229,349)(287,349){1}
//: {2}(291,349)(347,349)(52:347,236)(245,236)(245,248){3}
//: {4}(289,351)(289,359){5}
wire w9;    //: /sn:0 {0}(205,262)(195,262){1}
//: enddecls

  //: GROUND g4 (w0) @(288,334) /sn:0 /w:[ 1 ]
  //: joint g8 (reg_out) @(289, 349) /w:[ 2 -1 1 4 ]
  //: comment g13 @(14,12) /anc:1
  //: /line:"<h3>Sequential Simulation</h3> <b>(breakpoints)</b>"
  //: /line:""
  //: /line:"You can use breakpoints to simulate a circuit until some condition holds. To add a"
  //: /line:"breakpoint click on the <img src=sim_break.gif bgcolor=gray> tab on the information box below the canvas, and press"
  //: /line:"the <font color=red2>Add...</font> button. Enter the breakpoint as a Verilog expression. Start the simulator"
  //: /line:"and try it with the expresion \"reg_out == 8'h42\" as shown in the example on the right."
  //: /line:"This will cause the simulator to stop when the reg_out signal has the value 42 hexidecimal."
  //: /line:"Be sure to press <img src=sim_go.gif bgcolor=gray> after entering the breakpoint."
  //: /end
  //: SWITCH g3 (w4) @(307,295) /sn:0 /R:2 /w:[ 1 ] /st:1 /dn:0
  _GGREG8 #(10, 10, 20) g2 (.Q(reg_out), .D(w2), .EN(w0), .CLR(w4), .CK(ck));   //: @(229,312) /sn:0 /w:[ 0 0 0 0 0 ]
  //: comment g1 @(10,410) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation byfile=1>"
  //: /end
  //: comment g10 @(565,96) /sn:0 /anc:1
  //: /line:"<img src=breakp_example.gif>"
  //: /line:""
  //: /line:"<b>Breakpoint Entry Example.</b>"
  //: /end
  //: DIP g6 (w7) @(213,212) /sn:0 /w:[ 0 ] /st:1 /dn:0
  //: LED g7 (reg_out) @(289,366) /sn:0 /R:2 /w:[ 5 ] /type:2
  //: GROUND g9 (w3) @(266,278) /sn:0 /w:[ 0 ]
  _GGADD8 #(68, 70, 62, 64) g5 (.A(w7), .B(reg_out), .S(w2), .CI(w3), .CO(w9));   //: @(229,264) /sn:0 /w:[ 1 3 1 1 0 ]
  _GGCLOCK_P100_0_50 g0 (.Z(ck));   //: @(114,312) /sn:0 /w:[ 1 ] /omega:100 /phi:0 /duty:50

endmodule
//: /netlistEnd

