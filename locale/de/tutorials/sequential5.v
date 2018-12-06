//: version "2.1-a2"
//: property encoding = "utf-8"
//: property locale = "de"
//: property prefix = "_GG"
//: property title = "seqsim_tut.v"
//: property discardChanges = 1

`timescale 1ns/1ns

//: /netlistBegin PAGE1
module PAGE1;    //: root_module
reg [7:0] w7;    //: /sn:0 {0}(#:199,201)(199,227){1}
supply0 w3;    //: /sn:0 {0}(252,251)(252,241)(239,241){1}
supply0 w0;    //: /sn:0 {0}(254,296)(274,296)(274,307){1}
reg clr;    //: {0}(32:254,286)(285,286){1}
wire [7:0] w2;    //: /sn:0 {0}(#:215,281)(215,256){1}
wire ck;    //: {0}(50:178,291)(113,291){1}
wire [7:0] reg_out;    //: {0}(#:215,302)(215,328)(273,328){1}
//: {2}(277,328)(333,328)(52:333,215)(231,215)(231,227){3}
//: {4}(275,330)(275,338){5}
wire w9;    //: /sn:0 {0}(191,241)(181,241){1}
//: enddecls

  //: joint g8 (reg_out) @(275, 328) /w:[ 2 -1 1 4 ]
  //: GROUND g4 (w0) @(274,313) /sn:0 /w:[ 1 ]
  //: comment g13 @(14,12)
  //: /line:"<h3>Simulation von Schaltwerken</h3> <b>(Skripte)</b>"
  //: /line:""
  //: /line:"Neben interaktiver Simulatorsteuerung können auch Simulatorskripte geschrieben werden."
  //: /line:"Simulator-Skriptdateien haben die Endung \".vs\" und werden in Verilog-Syntax geschrieben."
  //: /line:"Drücke bei aktivem Simulator <img src=sim_script.gif bgcolor=gray>, um die Skriptdatei in den Simulator zu laden."
  //: /line:"Man kann eine Skriptdatei benutzen, um Tastköpfe zu setzen und zu löschen, die Simulationszeit vorrücken zu lassen,"
  //: /line:"Signalwerte zu setzen und Meldungen im TkGate log (<img src=log.gif bgcolor=gray>) Fenster anzuzeigen.  Details"
  //: /line:"zum Schreiben von Simulatorskipten sehe man in der TkGate 2.0 Dokumentation nach."
  //: /end
  _GGREG8 #(10, 10, 20) g2 (.Q(reg_out), .D(w2), .EN(w0), .CLR(clr), .CK(ck));   //: @(215,291) /sn:0 /w:[ 0 0 0 0 0 ]
  //: comment g1 @(10,410) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation byfile=1>"
  //: /end
  //: comment g10 @(495,118) /sn:0 /R:14 /anc:1
  //: /line:"Simulator Skript Beispiel:"
  //: /line:"<font face=courier>"
  //: /line:"initial"
  //: /line:"  begin"
  //: /line:"    $display(\"%t: Start des Skripts\",$time);"
  //: /line:"    $tkg$probe(ck, reg_out, clr);"
  //: /line:"    $display(\"%t: Tastkoepfe setzen\",$time);"
  //: /line:"    clr = 1'b0;"
  //: /line:"    #200;"
  //: /line:"    clr = 1'b1;"
  //: /line:"    $display(\"%t: Ende mit Reset\",$time);"
  //: /line:"    #500;"
  //: /line:"    $stop();"
  //: /line:"  end"
  //: /line:"</font>"
  //: /end
  //: DIP g6 (w7) @(199,191) /sn:0 /w:[ 0 ] /st:1
  //: GROUND g9 (w3) @(252,257) /sn:0 /w:[ 0 ]
  //: LED g7 (reg_out) @(275,345) /sn:0 /R:2 /w:[ 5 ] /type:2
  _GGADD8 #(68, 70, 62, 64) g5 (.A(w7), .B(reg_out), .S(w2), .CI(w3), .CO(w9));   //: @(215,243) /sn:0 /w:[ 1 3 1 1 0 ]
  _GGCLOCK_P100_0_50 g0 (.Z(ck));   //: @(100,291) /sn:0 /w:[ 1 ] /omega:100 /phi:0 /duty:50
  //: SWITCH reset (clr) @(303,286) /R:2 /w:[ 1 ] /st:1

endmodule
//: /netlistEnd


`timescale 1ns/1ns


//: /builtinBegin
module _GGREG8 #(.Dsetup(1), .Dhold(1), .Dck_q(1)) (Q, D, EN, CLR, CK);
  input CK,EN,CLR;
  input  [7:0] D;
  output  [7:0] Q;
  reg 	  [7:0] Qreg;
 
 // specify
   // $setup(D,posedge CK, Dsetup);
//    $hold(posedge CK,D, Dhold);
//  endspecify

  assign #Dck_q Q = Qreg;

  always @(posedge CK or negedge CLR)
    if (CLR === 1'b0)
      Qreg = 8'b0;
    else if (CK === 1'b1 && EN === 1'b0)
      Qreg = D;

endmodule
//: /builtinEnd


//: /builtinBegin
module _GGADD8 #(.Dab_s(1), .Dab_co(1), .Dci_s(1), .Dci_co(1)) (A, B, S, CI, CO);
   input  CI;
   output CO;
   input   [7:0] A,B;
   output  [7:0] S;
   wire    [7:0] _S;
   wire   _CO;
   
   specify
      (A,B *> S) = Dab_s;
      (A,B *> CO) = Dab_co;
      (CI *> S) = Dci_s;
      (CI *> CO) = Dci_co;
   endspecify

   assign {_CO,_S} = A + B + CI;

   assign CO =  _CO;
   assign S =  _S;

endmodule
//: /builtinEnd


//: /builtinBegin
module _GGCLOCK_P100_0_50 (Z);
   output Z;
   reg 	  Z =  1'b0;

   initial #50
     forever
       begin
	  Z =  1'b1;
	  #50;
	  Z =  1'b0;
	  #50;
       end
   
endmodule // clock
//: /builtinEnd

