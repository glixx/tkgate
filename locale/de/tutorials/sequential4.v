//: version "2.1-a2"
//: property encoding = "utf-8"
//: property locale = "de"
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
  //: /line:"<h3>Simulation von Schaltwerken</h3> <b>(Haltepunkte)</b>"
  //: /line:""
  //: /line:"Haltepunkte können verwendet werden, um eine Schaltung so lange zu simulieren, bis eine Bedingung erfüllt ist."
  //: /line:"Um einen Haltepunkt zu setzen klicke auf die <img src=sim_break.gif bgcolor=gray> Taste auf der Informationsbox"
  //: /line:"unterhalb der Arbeitsfläche und drücke den <font color=red2>Hinzufügen...</font> Knopf. Gib den Haltepunkt"
  //: /line:"als Verilog-Ausdruck an. Starte den Simulator und versuche es mit dem Ausdruck \"reg_out == 8'h42\" wie"
  //: /line:"im Beispiel auf der rechten Seite. Das führt zum Halt des Simulators, wenn das reg_out Signal den hexadezimalen Wert 42 hat."
  //: /line:"Vergiß nicht, nach der Eingabe des Haltepunkts <img src=sim_go.gif bgcolor=gray> zu drücken."
  //: /end
  //: SWITCH g3 (w4) @(307,295) /sn:0 /R:2 /w:[ 1 ] /st:1 /dn:0
  _GGREG8 #(10, 10, 20) g2 (.Q(reg_out), .D(w2), .EN(w0), .CLR(w4), .CK(ck));   //: @(229,312) /sn:0 /w:[ 0 0 0 0 0 ]
  //: comment g1 @(10,410) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation byfile=1>"
  //: /end
  //: comment g10 @(565,96) /sn:0 /anc:1
  //: /line:"<img src=breakp_example.gif>"
  //: /line:""
  //: /line:"<b>Beispiel zur Haltepunkteingabe.</b>"
  //: /end
  //: DIP g6 (w7) @(213,212) /sn:0 /w:[ 0 ] /st:1 /dn:0
  //: LED g7 (reg_out) @(289,366) /sn:0 /R:2 /w:[ 5 ] /type:2
  //: GROUND g9 (w3) @(266,278) /sn:0 /w:[ 0 ]
  _GGADD8 #(68, 70, 62, 64) g5 (.A(w7), .B(reg_out), .S(w2), .CI(w3), .CO(w9));   //: @(229,264) /sn:0 /w:[ 1 3 1 1 0 ]
  _GGCLOCK_P100_0_50 g0 (.Z(ck));   //: @(114,312) /sn:0 /w:[ 1 ] /omega:100 /phi:0 /duty:50

endmodule
//: /netlistEnd

