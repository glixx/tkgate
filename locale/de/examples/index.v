//: version "2.2"
//: property encoding = "utf-8"
//: property locale = "de"
//: property prefix = "_GG"
//: property title = "Example page"
//: property showSwitchNets = 0
//: property timingViolationMode = 2
//: property initTime = "0 ns"

`timescale 1ns/1ns

//: /netlistBegin main
module main;    //: root_module
//: enddecls

  //: comment g4 @(553,317) /sn:0 /anc:1
  //: /line:"<a href=\"ex6/coke.v\"><img src=example_coke.gif>"
  //: /line:"<h3>Cola-Automat</h3></a>"
  //: /line:"Dieses Beispiel nutzt TkGate's Virtual"
  //: /line:"Peripheral Devices (VPD) um einen inter-"
  //: /line:"aktiven \"Cola-Automaten\" zu erzeugen, der"
  //: /line:"durch eine Benutzerschaltung gesteuert werden"
  //: /line:"kann. Nur das Gerät selbst ist enthalten."
  //: /line:"Kannst Du eine Steuerung dafür entwerfen?"
  //: /line:""
  //: /end
  //: comment g3 @(32,317) /sn:0 /anc:1
  //: /line:"<a href=\"ex4/trff.v\"><img src=\"example_trff.gif\">"
  //: /line:"<h3>Transistor-Level Flipflop</h3></a>"
  //: /line:"Ein Flipflop, implementiert mit"
  //: /line:"NMOS and PMOS Transistoren."
  //: /line:""
  //: /end
  //: comment g2 @(551,30) /sn:0 /anc:1
  //: /line:"<a href=\"ex3/counter.v\"><img src=\"example_counter.gif\">"
  //: /line:"<h3>8-Bit Zähler</h3></a>"
  //: /line:"Ein Zähler, der mit Register- und"
  //: /line:"Addierer-Bausteinen entworfen ist."
  //: /end
  //: comment g1 @(299,30) /sn:0 /anc:1
  //: /line:"<a href=\"ex2/flipflop.v\"><img src=\"example_flipflop.gif\">"
  //: /line:"<h3>4-Bit Zähler</h3></a>"
  //: /line:"Ein 4-Bit-Zähler, der mit 4"
  //: /line:"einzelnen D-Flipflops implementert ist."
  //: /end
  //: comment g6 @(20,552) /sn:0
  //: /line:"<font size=5><a href=\"@T/welcome.v\">Zurück zur TkGate Hauptseite</a></font>"
  //: /end
  //: comment g7 @(787,27) /sn:0
  //: /line:"<a href=\"ex7/stdlogic.v\"><img src=\"example_counter.gif\">"
  //: /line:"<h3>Microcircuits 74xx</h3></a>"
  //: /line:"A few examples of circuits"
  //: /line:"using the standard"
  //: /line:"74 series"
  //: /line:"logic circuit library."
  //: /end
  //: comment g5 @(301,317) /sn:0 /anc:1
  //: /line:"<a href=\"ex5/menagerie.v\"><img src=\"example_menagerie.gif\">"
  //: /line:"<h3>Menagerie CPU</h3></a>"
  //: /line:"Eine einfache, Microcode-basierte CPU"
  //: /line:"die das \"Animals\" Spiel auf einem"
  //: /line:"TTY Baustein bei der Simulation ausführt."
  //: /end
  //: comment g0 @(32,30) /sn:0 /anc:1
  //: /line:"<a href=\"ex1/combinational.v\"><img src=\"example_combinational.gif\">"
  //: /line:"<h3>Schaltnetz</h3></a>"
  //: /line:"Ein einfacher 3-Bit Addierer."
  //: /line:"Drücke den Abspielknopf und"
  //: /line:"Klicke auf die Schalter und"
  //: /line:"beobachte, wie sich die LEDs ändern."
  //: /line:""
  //: /end

endmodule
//: /netlistEnd


`timescale 1ns/1ns

