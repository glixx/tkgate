//: version "2.2"
//: property encoding = "utf-8"
//: property locale = "ja"
//: property prefix = "_GG"
//: property title = "Textual Verilog"
//: property showSwitchNets = 0
//: property discardChanges = 1
//: property timingViolationMode = 2
//: property initTime = "0 ns"

`timescale 1ns/1ns

//: /netlistBegin PAGE1
module PAGE1;    //: root_module
//: enddecls

  //: comment g7 @(10,310) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end
  //: comment g9 @(8,9) /anc:1
  //: /line:"<font color=purple>Textual Verilog</font>"
  //: /line:""
  //: /line:"The TkGate simulator is based on the Verilog hardware description language. As such, any"
  //: /line:"modules you design using the graphical editor are translated into Verilog before being simulated."
  //: /line:"You can also write modules directly in Verilog. Note that this chapter is not designed to teach"
  //: /line:"Verilog, but rather to teach how to include Verilog modules in TkGate."
  //: /end
  //: comment g0 @(145,107) /sn:0 /anc:1
  //: /line:"<img src=bigtextedit.gif>"
  //: /end

endmodule
//: /netlistEnd

//: /hdlBegin foo
//: interface  /sz:(55, 80) /bd:[ Li0>d(64/80) Li1>c(48/80) Li2>b(32/80) Li3>a(16/80) Ro0<z(40/80) ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
//: enddecls
//
// This is an example of a textual verilog module.  Instances of textual
// modules can be used in both graphical and textual modules, and textual
// modules can include instances of both graphical and textual modules.
//
// To return to the top level module, right click and select "Close".
//
module foo(z,a,b,c,d);
output z;
input a,b,c,d;
reg z;
reg q;

  // On the rising edge of d, assign a&b|c to the register q
  always @ (posedge d)
    q = a&b | c;
  
  // On the rising edge of d, assign q^c to the register and output z.
  always @ (posedge d)
    z = q ^ c; 

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /netlistBegin PAGE2
module PAGE2();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
reg w6;    //: /sn:0 {0}(164,145)(124,145)(124,136)(108,136){1}
reg w7;    //: /sn:0 {0}(164,161)(124,161)(124,169)(108,169){1}
reg w5;    //: /sn:0 {0}(108,101)(144,101)(144,129)(164,129){1}
wire w4;    //: /sn:0 {0}(221,153)(246,153)(246,138){1}
wire w8;    //: /sn:0 {0}(102,205)(146,205)(146,177)(164,177){1}
//: enddecls

  _GGCLOCK_P100_0_50 g4 (.Z(w8));   //: @(89,205) /sn:0 /w:[ 0 ] /omega:100 /phi:0 /duty:50
  //: SWITCH g3 (w7) @(91,169) /sn:0 /w:[ 1 ] /st:0 /dn:0
  //: SWITCH g2 (w6) @(91,136) /sn:0 /w:[ 1 ] /st:1 /dn:0
  //: SWITCH g1 (w5) @(91,101) /sn:0 /w:[ 0 ] /st:1 /dn:0
  //: comment g6 @(49,232) /anc:1
  //: /line:"2) To create a new textual verilog modules, press <img src=\"blk_new.gif\">"
  //: /line:"and set the type to HDL."
  //: /end
  //: comment g9 @(8,9) /anc:1
  //: /line:"<font color=purple>Textual Verilog</font>"
  //: /line:""
  //: /line:"1) Right click on the module below and select <font color=blue>Open</blue>."
  //: /end
  //: comment g7 @(10,310) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end
  //: LED g5 (w4) @(246,131) /sn:0 /w:[ 1 ] /type:0
  foo g0 (.a(w5), .b(w6), .c(w7), .d(w8), .z(w4));   //: @(165, 113) /sz:(55, 80) /sn:0 /p:[ Li0>1 Li1>0 Li2>0 Li3>1 Ro0<0 ]

endmodule
//: /netlistEnd

