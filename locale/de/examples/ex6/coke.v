//: version "2.1"
//: property encoding = "utf-8"
//: property locale = "de"
//: property prefix = "_GG"
//: property title = "Willkommen zu TkGate"
//: property showSwitchNets = 0
//: property timingViolationMode = 2
//: property initTime = "0 ns"
//: require "coke"

`timescale 1ns/1ns

//: /netlistBegin main
module main;    //: root_module
reg [5:0] w6;    //: /sn:0 {0}(#:97,119)(116,119)(116,129)(145,129){1}
reg BILLT;    //: /sn:0 {0}(145,225)(51,225){1}
reg [7:0] w0;    //: /sn:0 {0}(#:90,333)(129,333)(129,305)(145,305){1}
reg RETINS;    //: /sn:0 {0}(145,273)(90,273){1}
reg CHGD;    //: /sn:0 {0}(145,161)(51,161){1}
reg INSACK;    //: /sn:0 {0}(145,289)(51,289){1}
reg [5:0] w20;    //: /sn:0 {0}(#:97,80)(126,80)(126,113)(145,113){1}
reg BILLOUT;    //: /sn:0 {0}(145,241)(90,241){1}
reg BILLIN;    //: /sn:0 {0}(145,209)(90,209){1}
reg w1;    //: /sn:0 {0}(238,387)(238,370){1}
reg CHGQ;    //: /sn:0 {0}(145,145)(90,145){1}
reg CHGCOM;    //: /sn:0 {0}(145,257)(51,257){1}
reg NOCHG;    //: /sn:0 {0}(145,193)(51,193){1}
reg CHGN;    //: /sn:0 {0}(145,177)(90,177){1}
wire w38;    //: /sn:0 {0}(328,337)(360,337){1}
wire w37;    //: /sn:0 {0}(328,321)(360,321){1}
wire w34;    //: /sn:0 {0}(328,273)(360,273){1}
wire [2:0] w21;    //: /sn:0 {0}(#:360,209)(328,209){1}
wire w31;    //: /sn:0 {0}(328,257)(360,257){1}
wire w23;    //: /sn:0 {0}(328,145)(360,145){1}
wire w24;    //: /sn:0 {0}(328,161)(360,161){1}
wire w36;    //: /sn:0 {0}(328,305)(360,305){1}
wire [5:0] w18;    //: /sn:0 {0}(#:328,129)(356,129){1}
wire INSN;    //: /sn:0 {0}(360,177)(328,177){1}
wire w30;    //: /sn:0 {0}(328,241)(360,241){1}
wire [5:0] w17;    //: /sn:0 {0}(#:328,113)(356,113){1}
wire [2:0] w29;    //: /sn:0 {0}(#:328,225)(360,225){1}
wire BILLACK;    //: /sn:0 {0}(360,289)(328,289){1}
wire [2:0] w26;    //: /sn:0 {0}(#:328,193)(360,193){1}
//: enddecls

  //: SWITCH g4 (CHGN) @(73,177) /sn:0 /w:[ 1 ] /st:0 /dn:0
  //: SWITCH g8 (BILLOUT) @(73,241) /sn:0 /w:[ 1 ] /st:0 /dn:0
  //: SWITCH g3 (CHGD) @(34,161) /sn:0 /w:[ 1 ] /st:0 /dn:0
  //: LED g13 (INSN) @(367,177) /sn:0 /R:3 /w:[ 0 ] /type:0
  //: SWITCH g2 (CHGQ) @(73,145) /sn:0 /w:[ 1 ] /st:0 /dn:0
  //: DIP g1 (w20) @(59,80) /sn:0 /R:1 /w:[ 0 ] /st:0 /dn:0
  //: LED g16 (w21) @(367,209) /sn:0 /R:3 /w:[ 0 ] /type:1
  //: DIP g11 (w6) @(59,119) /sn:0 /R:1 /w:[ 0 ] /st:0 /dn:0
  //: LED g10 (w23) @(367,145) /sn:0 /R:3 /w:[ 1 ] /type:0
  //: LED g28 (w37) @(367,321) /sn:0 /R:3 /w:[ 1 ] /type:0
  //: LED g19 (w31) @(367,257) /sn:0 /R:3 /w:[ 1 ] /type:0
  //: SWITCH g27 (INSACK) @(34,289) /sn:0 /w:[ 1 ] /st:0 /dn:0
  //: SWITCH g6 (BILLIN) @(73,209) /sn:0 /w:[ 1 ] /st:0 /dn:0
  //: SWITCH g7 (BILLT) @(34,225) /sn:0 /w:[ 1 ] /st:0 /dn:0
  //: LED g9 (w17) @(363,113) /sn:0 /R:3 /w:[ 1 ] /type:1
  //: LED g15 (w18) @(363,129) /sn:0 /R:3 /w:[ 1 ] /type:1
  //: LED g20 (w34) @(367,273) /sn:0 /R:3 /w:[ 1 ] /type:0
  //: comment g31 @(19,-4) /sn:0
  //: /line:"<h1 color=red>Cola-Automat:"
  //: /line:"Aufgabe</h1>"
  //: /end
  //: comment g39 @(20,438) /sn:0
  //: /line:"<a href=\"../index.v\">[ZURÜCK]</a>"
  //: /end
  //: LED g17 (w29) @(367,225) /sn:0 /R:3 /w:[ 1 ] /type:1
  //: LED g25 (BILLACK) @(367,289) /sn:0 /R:3 /w:[ 0 ] /type:0
  //: LED g29 (w38) @(367,337) /sn:0 /R:3 /w:[ 1 ] /type:0
  //: SWITCH g5 (NOCHG) @(34,193) /sn:0 /w:[ 1 ] /st:0 /dn:0
  //: LED g14 (w26) @(367,193) /sn:0 /R:3 /w:[ 1 ] /type:1
  //: LED g24 (w36) @(367,305) /sn:0 /R:3 /w:[ 1 ] /type:0
  cokemachine g21 (.COST(w0), .INSACK(INSACK), .RETINS(RETINS), .CHGCOM(CHGCOM), .BILLOUT(BILLOUT), .BILLLT(BILLT), .BILLIN(BILLIN), .NOCHG(NOCHG), .CHGN(CHGN), .CHGD(CHGD), .CHGQ(CHGQ), .ELIGHT(w6), .DISP(w20), ._RESET(w1), .BILLNG(w38), .DISPACK(w37), .CHGACK(w36), .BILLACK(BILLACK), .CNRET(w34), .BILLOK(w31), .BILLSNS(w30), .NUMN(w29), .NUMD(w21), .NUMQ(w26), .INSN(INSN), .INSD(w24), .INSQ(w23), .EMPTY(w18), .PRESS(w17));   //: @(146, 97) /sz:(181, 272) /sn:0 /p:[ Li0>1 Li1>0 Li2>0 Li3>0 Li4>0 Li5>0 Li6>0 Li7>0 Li8>0 Li9>0 Li10>0 Li11>1 Li12>1 Bi0>1 Ro0<0 Ro1<0 Ro2<0 Ro3<1 Ro4<0 Ro5<0 Ro6<0 Ro7<0 Ro8<1 Ro9<0 Ro10<1 Ro11<0 Ro12<0 Ro13<0 Ro14<0 ]
  //: SWITCH g23 (RETINS) @(73,273) /sn:0 /w:[ 1 ] /st:0 /dn:0
  //: SWITCH g22 (CHGCOM) @(34,257) /sn:0 /w:[ 1 ] /st:0 /dn:0
  //: comment g0 @(418,56) /sn:0
  //: /line:"Das Modul links ist die Schnittstelle zu einem \"Cola\"-Automaten."
  //: /line:"Wenn Du in den Simulationsmodus umschaltest und den \"Abspielen\""
  //: /line:"Knopf drückst, wird ein Fenster angezeigt, das eine externe und"
  //: /line:"eine interne Sicht des Cola-Automaten aufzeigt. Du kannst dann"
  //: /line:"Münzen einwerfen und Banknoten in den Schlitz ziehen, drücke"
  //: /line:"die Getränkeknöpfe oder die Geldrückgabe. Diese Aktionen"
  //: /line:"erzeugen Signale, die an Deine Schaltung gesendet werden."
  //: /line:"Eingänge der Steuerung können zur Beleuchtung und/oder für"
  //: /line:"den Getränkespender oder das Wechselgeld benutzt werden."
  //: /line:""
  //: /line:"Aufgaben:"
  //: /line:""
  //: /line:"1) Entwirf eine Steuerung für den obigen Cola-Automaten"
  //: /line:"mit der gegebenen Schnittstelle."
  //: /line:""
  //: /line:"2) Ändere den Entwurf so, daß nur einer der beiden \"Cola\""
  //: /line:"knöpfe jeweils benutzt werden kann, falls mindestens eine Cola im"
  //: /line:"Automaten ist."
  //: /line:""
  //: /end
  //: DIP g26 (w0) @(52,333) /sn:0 /R:1 /w:[ 0 ] /st:15 /dn:0
  //: LED g12 (w24) @(367,161) /sn:0 /R:3 /w:[ 1 ] /type:0
  //: LED g18 (w30) @(367,241) /sn:0 /R:3 /w:[ 1 ] /type:0
  //: SWITCH g30 (w1) @(238,401) /sn:0 /R:1 /w:[ 0 ] /st:1 /dn:0

endmodule
//: /netlistEnd

