//: version "1.8.3"
//: property useExtBars = 0
//: property discardChanges = 1

module main;    //: root_module
supply0 w14;    //: /sn:0 {0}(654,415)(654,436)(603,436){1}
//: {2}(599,436)(566,436)(566,415){3}
//: {4}(601,438)(601,455){5}
supply1 w17;    //: /sn:0 {0}(620,315)(620,292){1}
supply1 w12;    //: /sn:0 {0}(625,86)(625,63){1}
supply0 w13;    //: /sn:0 {0}(650,191)(650,213)(608,213){1}
//: {2}(604,213)(571,213)(571,191){3}
//: {4}(606,215)(606,231){5}
wire w6;    //: /sn:0 {0}(625,119)(625,103){1}
wire w16;    //: /sn:0 {0}(620,345)(620,332){1}
wire Q;    //: {0}(765,383)(656,383){1}
//: {2}(654,381)(654,273)(532,273)(532,184){3}
//: {4}(534,182)(557,182){5}
//: {6}(532,180)(532,127)(611,127){7}
//: {8}(652,383)(622,383){9}
//: {10}(620,381)(620,362){11}
//: {12}(618,383)(566,383)(566,398){13}
//: {14}(654,385)(654,398){15}
wire _Q;    //: /dp:1 {0}(759,159)(694,159){1}
//: {2}(690,159)(652,159){3}
//: {4}(648,159)(627,159){5}
//: {6}(625,157)(625,136){7}
//: {8}(623,159)(571,159)(571,174){9}
//: {10}(650,161)(650,174){11}
//: {12}(692,161)(692,252)(584,252)(584,321){13}
//: {14}(586,323)(606,323){15}
//: {16}(584,325)(584,406)(640,406){17}
wire R;    //: /dp:7 {0}(606,353)(535,353){1}
//: {2}(531,353)(503,353){3}
//: {4}(501,351)(501,336){5}
//: {6}(499,353)(442,353){7}
//: {8}(533,355)(533,406)(552,406){9}
wire S;    //: /dp:7 {0}(611,94)(591,94){1}
//: {2}(587,94)(505,94){3}
//: {4}(503,92)(503,81){5}
//: {6}(501,94)(436,94){7}
//: {8}(589,96)(589,182)(636,182){9}
//: enddecls

  //: supply1 g4 (w12) @(636,63) /sn:0 /anc:1 /w:[ 1 ]
  //: joint g8 (w13) @(606, 213) /anc:1 /w:[ 1 -1 2 4 ]
  //: joint g34 (S) @(503, 94) /w:[ 3 4 6 -1 ]
  pmos g3 (.Z(w12), .S0(w6), .G0(S));   //: @(619,94) /sn:0 /anc:1 /w:[ 0 1 0 ]
  nmos g13 (.Z(w14), .S0(Q), .G0(_Q));   //: @(648,406) /sn:0 /anc:1 /w:[ 0 15 17 ]
  pmos g2 (.Z(w6), .S0(_Q), .G0(Q));   //: @(619,127) /sn:0 /anc:1 /w:[ 0 7 7 ]
  nmos g1 (.Z(w13), .S0(_Q), .G0(S));   //: @(644,182) /sn:0 /anc:1 /w:[ 0 11 9 ]
  //: joint g11 (S) @(589, 94) /anc:1 /w:[ 1 -1 2 8 ]
  //: supply1 g16 (w17) @(631,292) /sn:0 /anc:1 /w:[ 1 ]
  //: comment g28 /dolink:0 /link:"" @(26,299) /anc:1
  //: /line:"3) Rimetti l'interruttore \"S\" in posizione \"off\""
  //: /line:"e inserisci di nuovo 10 .. 20 spazi.  "
  //: /line:"\"Q\" e \"_Q\" mantengono il loro valore."
  //: /end
  //: joint g10 (Q) @(654, 383) /anc:1 /w:[ 1 2 8 14 ]
  led g32 (.I(Q));   //: @(772,383) /sn:0 /R:3 /w:[ 0 ] /type:0
  //: switch g19 (R) @(425,353) /sn:0 /anc:1 /w:[ 7 ] /st:0
  //: comment g27 /dolink:0 /link:"" @(25,193) /anc:1
  //: /line:"2) Inserisci da 10 a 20 spazi per far avanzare"
  //: /line:"la simulazione."
  //: /line:"Osserva che sia \"Q\" che \"_Q\" hanno valore"
  //: /line:"sconosciuto."
  //: /line:"Ora clicca sull'interruttore \"S\" e inserisci "
  //: /line:"di nuovo fra 10 e 20 spazi. "
  //: /line:"\"Q\" passa al livello alto e \"_Q\" a quello basso."
  //: /end
  //: switch g6 (S) @(419,94) /sn:0 /anc:1 /w:[ 7 ] /st:0
  //: joint g9 (_Q) @(692, 159) /anc:1 /w:[ 1 -1 2 12 ]
  //: joint g7 (Q) @(620, 383) /anc:1 /w:[ 9 10 12 -1 ]
  led g31 (.I(_Q));   //: @(766,159) /sn:0 /R:3 /w:[ 0 ] /type:0
  pmos g15 (.Z(w17), .S0(w16), .G0(_Q));   //: @(614,323) /sn:0 /anc:1 /w:[ 0 1 15 ]
  //: joint g20 (w14) @(601, 436) /anc:1 /w:[ 1 -1 2 4 ]
  //: comment g29 /dolink:0 /link:"" @(26,355) /anc:1
  //: /line:"4) Ora metti \"R\" il posizione \"on\" (click)"
  //: /line:"e inserisci ancora 10 .. 20 spazi."
  //: /line:"\"_Q\" commuta allo stato alto mentre \"Q\""
  //: /line:"a quello basso."
  //: /end
  //: supply0 g17 (w14) @(601,461) /sn:0 /anc:1 /w:[ 5 ]
  //: comment g25 /dolink:0 /link:"" @(35,22) /anc:1
  //: /line:"Questo circuito � un semplice flip-flop realizzato "
  //: /line:"a livello di transistor con due porte NOR in tecnica CMOS."
  //: /line:""
  //: /end
  //: supply0 g5 (w13) @(606,237) /sn:0 /anc:1 /w:[ 5 ]
  pmos g14 (.Z(w16), .S0(Q), .G0(R));   //: @(614,353) /sn:0 /anc:1 /w:[ 0 11 0 ]
  //: joint g36 (R) @(501, 353) /w:[ 3 4 6 -1 ]
  //: joint g24 (_Q) @(625, 159) /anc:1 /w:[ 5 6 8 -1 ]
  //: joint g21 (Q) @(532, 182) /anc:1 /w:[ 4 6 -1 3 ]
  //: joint g23 (_Q) @(650, 159) /anc:1 /w:[ 3 -1 4 10 ]
  led g35 (.I(R));   //: @(501,329) /sn:0 /w:[ 5 ] /type:0
  nmos g0 (.Z(w13), .S0(_Q), .G0(Q));   //: @(565,182) /sn:0 /anc:1 /w:[ 3 9 5 ]
  //: joint g22 (R) @(533, 353) /anc:1 /w:[ 1 -1 2 8 ]
  //: comment g26 /dolink:0 /link:"" @(26,101) /anc:1
  //: /line:"1) Attiva la simulazione e aggancia"
  //: /line:"delle sonde ai segnali \"S\", \"R\", \"Q\" e \"_Q\"."
  //: /line:"Il segnale \"_Q\" � \"Q\" sopralineato."
  //: /line:""
  //: /end
  nmos g12 (.Z(w14), .S0(Q), .G0(R));   //: @(560,406) /sn:0 /anc:1 /w:[ 3 13 9 ]
  //: joint g18 (_Q) @(584, 323) /anc:1 /w:[ 14 13 -1 16 ]
  led g33 (.I(S));   //: @(503,74) /sn:0 /w:[ 5 ] /type:0
  //: comment g30 /dolink:0 /link:"" @(23,420) /anc:1
  //: /line:"5) Ritorna con \"R\" in posizione \"off\""
  //: /line:"e inserisci 10 .. 20 spazi."
  //: /line:"\"Q\" e \"_Q\" mantengono il loro valore."
  //: /end

endmodule
