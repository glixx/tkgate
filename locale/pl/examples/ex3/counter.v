//: version "2.2"
//: property encoding = "utf-8"
//: property locale = "pl"
//: property prefix = "_GG"
//: property title = "Licznik 8-bitowy"
//: property showSwitchNets = 0
//: property discardChanges = 1
//: property timingViolationMode = 2
//: property initTime = "0 ns"

`timescale 1ns/1ns

//: /netlistBegin main
module main;    //: root_module
reg [7:0] w4;    //: /sn:0 {0}(#:208,114)(208,167){1}
reg w8;    //: /sn:0 {0}(263,269)(325,269)(325,283){1}
supply0 w11;    //: /sn:0 {0}(269,197)(269,181)(248,181){1}
reg w9;    //: /sn:0 {0}(263,259)(324,259)(324,245){1}
wire w12;    //: /sn:0 {0}(200,181)(190,181){1}
wire ck;    //: {0}(50:187,264)(56,264){1}
wire [7:0] w5;    //: /sn:0 {0}(#:224,196)(224,254){1}
wire [7:0] reg_out;    //: {0}(#:50:224,275)(224,332)(297,332)(297,173){1}
//: {2}(299,171)(379,171){3}
//: {4}(297,169)(297,125)(240,125)(240,167){5}
//: enddecls

  _GGCLOCK_P100_0_50 g4 (.Z(ck));   //: @(43,264) /sn:0 /w:[ 1 ] /omega:100 /phi:0 /duty:50
  //: comment g8 @(41,205)
  //: /line:"2) Place a probe"
  //: /line:"on the clock line by"
  //: /line:"double-clicking on it."
  //: /end
  //: DIP g3 (w4) @(208,104) /sn:0 /w:[ 0 ] /st:1 /dn:0
  //: comment g13 @(23,412)
  //: /line:"7) Now hit a tab to advance one clock cycle."
  //: /line:"Since the clear line is asserted low, the"
  //: /line:"register will be cleared. Next set the clear"
  //: /line:"line to \"on\" and continue pressing the \"tab\""
  //: /line:"key. Observe the value of the register counting"
  //: /line:"up with each clock cycle."
  //: /end
  _GGADD8 #(68, 70, 62, 64) g2 (.A(w4), .B(reg_out), .S(w5), .CI(w11), .CO(w12));   //: @(224,183) /sn:0 /w:[ 1 5 0 1 0 ]
  //: SWITCH g1 (w8) @(325,297) /sn:0 /R:1 /w:[ 1 ] /st:0 /dn:0
  //: comment g11 @(348,218)
  //: /line:"5) Make sure the clear"
  //: /line:"line CLR is off to clear"
  //: /line:"the register."
  //: /end
  //: comment g10 @(255,56)
  //: /line:"4) Set the dip switch to 1"
  //: /line:"by clicking on it, entering"
  //: /line:"a \"1\" in the dialog box that"
  //: /line:"appears and pressing \"Apply\"."
  //: /end
  //: GROUND g6 (w11) @(269,203) /sn:0 /w:[ 0 ]
  //: SWITCH g7 (w9) @(324,232) /sn:0 /R:3 /w:[ 1 ] /st:0 /dn:0
  //: comment g9 @(198,355)
  //: /line:"3) Place a probe on the"
  //: /line:"register output by"
  //: /line:"double-clicking on it."
  //: /end
  //: comment g39 @(20,12) /sn:0
  //: /line:"<a href=\"../index.v\">[Wstecz]</a>"
  //: /end
  //: LED g17 (reg_out) @(386,171) /sn:0 /R:3 /w:[ 3 ] /type:2
  //: comment g5 @(14,33)
  //: /line:"8-Bit Counter Example"
  //: /line:""
  //: /line:"1) Start simulation by typing \"Ctl-S b\""
  //: /line:""
  //: /end
  //: joint g14 (reg_out) @(297, 171) /w:[ 2 4 -1 1 ]
  _GGREG8 #(10, 10, 20) g0 (.Q(reg_out), .D(w5), .EN(w8), .CLR(w9), .CK(ck));   //: @(224,264) /sn:0 /w:[ 0 1 0 0 0 ]
  //: comment g12 @(309,316)
  //: /line:"6) Make sure the enable"
  //: /line:"line EN is off"
  //: /end

endmodule
//: /netlistEnd

