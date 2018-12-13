//: version "2.1"
//: property encoding = "utf-8"
//: property locale = "ru"
//: property prefix = "_GG"
//: property title = "Последовательная симуляция"
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
  //: /line:"<h3>Симуляция последовательных схем</h3> <b>(точки остановки)</b>"
  //: /line:""
  //: /line:"Точки остановки позволяют продолжать симуляцию до выполнения некоторого условия. Чтобы"
  //: /line:"добавить точку остановки выберите вкладку <img src=sim_break.gif bgcolor=gray> в информационном блоке снизу от области"
  //: /line:"редактирования и нажмите кнопку <font color=red2>Добавить...</font>. Введите точку остановки, как выражение <b>Verilog</b>."
  //: /line:"Запустите симулятор и попробуйте выражение <b>reg_out == 8'h42</b> как показано на рисунке справа."
  //: /line:"Это вызовет остановку симулятора, как только сигнал <b>reg_out</b> получит значение 42 (16-ричное)."
  //: /line:"Не забудьте снова нажать кнопку <img src=sim_go.gif bgcolor=gray> после достижения точки остановки."
  //: /end
  //: SWITCH g3 (w4) @(307,295) /sn:0 /R:2 /w:[ 1 ] /st:1 /dn:0
  _GGREG8 #(10, 10, 20) g2 (.Q(reg_out), .D(w2), .EN(w0), .CLR(w4), .CK(ck));   //: @(229,312) /sn:0 /w:[ 0 0 0 0 0 ]
  //: comment g1 @(10,410) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation byfile=1>"
  //: /end
  //: comment g10 @(565,96) /sn:0 /anc:1
  //: /line:"<img src=breakp_example.gif>"
  //: /line:""
  //: /line:"<b>Пример ввода точки остановки.</b>"
  //: /end
  //: DIP g6 (w7) @(213,212) /sn:0 /w:[ 0 ] /st:1 /dn:0
  //: LED g7 (reg_out) @(289,366) /sn:0 /R:2 /w:[ 5 ] /type:2
  //: GROUND g9 (w3) @(266,278) /sn:0 /w:[ 0 ]
  _GGADD8 #(68, 70, 62, 64) g5 (.A(w7), .B(reg_out), .S(w2), .CI(w3), .CO(w9));   //: @(229,264) /sn:0 /w:[ 1 3 1 1 0 ]
  _GGCLOCK_P100_0_50 g0 (.Z(ck));   //: @(114,312) /sn:0 /w:[ 1 ] /omega:100 /phi:0 /duty:50

endmodule
//: /netlistEnd

