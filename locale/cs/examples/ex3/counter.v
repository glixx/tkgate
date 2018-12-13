//: version "2.1"
//: property encoding = "utf-8"
//: property locale = "cs"
//: property prefix = "_GG"
//: property title = "8-Bit Counter"
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
  //: /line:"2) Dvojitím kliknutím"
  //: /line:"na vodič s hodinovým"
  //: /line:"signálem umístěte sondu."
  //: /end
  //: DIP g3 (w4) @(208,104) /sn:0 /w:[ 0 ] /st:1 /dn:0
  //: comment g13 @(23,412)
  //: /line:"7) Nyní stiskněte tabelátor a postupte o 1 hodinový cyklus."
  //: /line:"Protože nulovací vodič je na úrovni log. 0, všechny"
  //: /line:"registry budou vynulovány. Potom nastavte nulovací spínač"
  //: /line:"do pozice \"on\" a dále stláčejte tabelátor. Pozorujte,"
  //: /line:"jak hodnota registru narůstá s každým hodinovým cyklem."
  //: /end
  _GGADD8 #(68, 70, 62, 64) g2 (.A(w4), .B(reg_out), .S(w5), .CI(w11), .CO(w12));   //: @(224,183) /sn:0 /w:[ 1 5 0 1 0 ]
  //: SWITCH g1 (w8) @(325,297) /sn:0 /R:1 /w:[ 1 ] /st:0 /dn:0
  //: comment g11 @(348,218)
  //: /line:"5) Ujistěte se, že nulovací"
  //: /line:"vodič CLR je v pozici \"off\""
  //: /line:"aby mohl být registr smazán."
  //: /end
  //: comment g10 @(255,56)
  //: /line:"4) Kliknutím na dip spínač, vložením"
  //: /line:"hodnoty \"1\" do dialogu, který se"
  //: /line:"objeví a stiskutím \"OK\" se spínač"
  //: /line:"nastaví na hodnotu 1."
  //: /end
  //: GROUND g6 (w11) @(269,203) /sn:0 /w:[ 0 ]
  //: SWITCH g7 (w9) @(324,232) /sn:0 /R:3 /w:[ 1 ] /st:0 /dn:0
  //: comment g9 @(198,355)
  //: /line:"3) Dvojitým kliknutím na"
  //: /line:"výstup registru na něj"
  //: /line:"umístěte sondu."
  //: /end
  //: comment g39 @(20,12) /sn:0
  //: /line:"<a href=\"../index.v\">[BACK]</a>"
  //: /end
  //: LED g17 (reg_out) @(386,171) /sn:0 /R:3 /w:[ 3 ] /type:2
  //: comment g5 @(14,33)
  //: /line:"Příklad: 8-Bitový čítač"
  //: /line:""
  //: /line:"1) Spustěte simulaci klávesovou"
  //: /line:"zkratkou \"Ctl-S b\""
  //: /line:""
  //: /end
  //: joint g14 (reg_out) @(297, 171) /w:[ 2 4 -1 1 ]
  _GGREG8 #(10, 10, 20) g0 (.Q(reg_out), .D(w5), .EN(w8), .CLR(w9), .CK(ck));   //: @(224,264) /sn:0 /w:[ 0 1 0 0 0 ]
  //: comment g12 @(309,316)
  //: /line:"6) Ujistěte se, že \"Enable\""
  //: /line:"vodič je ve stavu off"
  //: /end

endmodule
//: /netlistEnd

