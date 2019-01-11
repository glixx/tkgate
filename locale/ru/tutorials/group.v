//: version "2.2"
//: property encoding = "utf-8"
//: property locale = "ru"
//: property prefix = "_GG"
//: property title = "Средства редактирования групп"
//: property useExtBars = 0
//: property showSwitchNets = 0
//: property discardChanges = 1
//: property timingViolationMode = 2
//: property initTime = "0 ns"

`timescale 1ns/1ns

//: /netlistBegin PAGE1
module PAGE1;    //: root_module
//: enddecls

  //: comment g1 @(140,67) /sn:0 /anc:1
  //: /line:"<img src=bigcircuit.gif>"
  //: /end
  //: comment g5 @(10,10) /anc:1
  //: /line:"<h3>Средства редактирования групп</h3>"
  //: /line:""
  //: /line:"В данном разделе рассматриваются операции по редактированию групп вентилей в TkGate."
  //: /end
  //: comment g0 @(10,310) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end

endmodule
//: /netlistEnd

//: /netlistBegin PAGE3
module PAGE3();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
reg c0;    //: {0}(18:166,147)(283,147)(283,189){1}
//: {2}(285,191)(314,191){3}
//: {4}(283,193)(283,208){5}
reg a0;    //: {0}(40:166,183)(210,183){1}
//: {2}(214,183)(222,183){3}
//: {4}(212,185)(212,239)(229,239){5}
reg b0;    //: {0}(50:166,218)(204,218){1}
//: {2}(206,216)(206,188)(222,188){3}
//: {4}(206,220)(206,244)(229,244){5}
wire w7;    //: /sn:0 {0}(250,242)(276,242)(276,253){1}
wire s0;    //: {0}(36:335,189)(365,189){1}
wire w4;    //: /sn:0 {0}(281,229)(281,253){1}
wire c1;    //: {0}(99:279,274)(279,293){1}
wire w9;    //: /sn:0 {0}(314,186)(280,186){1}
//: {2}(276,186)(243,186){3}
//: {4}(278,188)(278,208){5}
//: enddecls

  //: LED g37 (s0) @(372,189) /sn:0 /R:3 /w:[ 1 ] /type:0
  _GGNAND2 #(4) g1 (.I0(w7), .I1(w4), .Z(c1));   //: @(279,264) /sn:0 /R:3 /w:[ 1 1 0 ]
  _GGNAND2 #(4) g28 (.I0(a0), .I1(b0), .Z(w7));   //: @(240,242) /sn:0 /w:[ 5 5 0 ]
  //: SWITCH g27 (c0) @(149,147) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g32 (w9) @(278, 186) /w:[ 1 -1 2 4 ]
  _GGNAND2 #(4) g31 (.I0(w9), .I1(c0), .Z(w4));   //: @(281,219) /sn:0 /R:3 /w:[ 5 5 0 ]
  //: SWITCH g25 (a0) @(149,183) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g29 (a0) @(212, 183) /w:[ 2 -1 1 4 ]
  //: comment g5 @(10,10) /anc:1
  //: /line:"<h3>Средства редактирования групп</h3> <b>(инкрементное выделение)</b>"
  //: /line:""
  //: /line:"Можно добавлять или удалять вентили к текущей выделенной группе, удерживая клавишу <font color=red2>Control</font>"
  //: /line:"во время выделения вентилей."
  //: /end
  _GGXOR2 #(8) g24 (.I0(w9), .I1(c0), .Z(s0));   //: @(325,189) /sn:0 /w:[ 0 3 0 ]
  _GGXOR2 #(8) g23 (.I0(a0), .I1(b0), .Z(w9));   //: @(233,186) /sn:0 /w:[ 3 3 3 ]
  //: SWITCH g26 (b0) @(149,218) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: comment g0 @(10,310) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end
  //: joint g30 (b0) @(206, 218) /w:[ -1 2 1 4 ]
  //: joint g33 (c0) @(283, 191) /w:[ 2 1 -1 4 ]

endmodule
//: /netlistEnd

//: /netlistBegin PAGE5
module PAGE5();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
reg c0;    //: {0}(18:167,153)(273,153)(273,195){1}
//: {2}(275,197)(298,197){3}
//: {4}(273,199)(273,216){5}
reg a0;    //: {0}(40:167,189)(189,189)(189,189)(211,189){1}
//: {2}(215,189)(223,189){3}
//: {4}(213,191)(213,245)(230,245){5}
reg b0;    //: {0}(50:167,224)(186,224)(186,224)(205,224){1}
//: {2}(207,222)(207,194)(223,194){3}
//: {4}(207,226)(207,250)(230,250){5}
wire w7;    //: /sn:0 {0}(251,248)(266,248)(266,260){1}
wire s0;    //: {0}(36:319,195)(349,195){1}
wire w4;    //: /sn:0 {0}(271,237)(271,260){1}
wire c1;    //: {0}(99:269,281)(269,300){1}
wire w9;    //: /sn:0 {0}(298,192)(270,192){1}
//: {2}(266,192)(244,192){3}
//: {4}(268,194)(268,216){5}
//: enddecls

  //: LED g37 (s0) @(356,195) /sn:0 /R:3 /w:[ 1 ] /type:0
  //: comment g2 @(570,113) /sn:0 /anc:1
  //: /line:"<font color=green4>Подсказка: Если выделение содержит"
  //: /line:"привязанные вентили, то всё выделение"
  //: /line:"поведёт себя как привязанное.</font>"
  //: /end
  _GGNAND2 #(4) g1 (.I0(w7), .I1(w4), .Z(c1));   //: @(269,271) /sn:0 /R:3 /w:[ 1 1 0 ]
  _GGNAND2 #(4) g28 (.I0(a0), .I1(b0), .Z(w7));   //: @(241,248) /sn:0 /w:[ 5 5 0 ]
  //: SWITCH g27 (c0) @(150,153) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g32 (w9) @(268, 192) /w:[ 1 -1 2 4 ]
  _GGNAND2 #(4) g31 (.I0(w9), .I1(c0), .Z(w4));   //: @(271,227) /sn:0 /R:3 /w:[ 5 5 0 ]
  //: SWITCH g25 (a0) @(150,189) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g29 (a0) @(213, 189) /w:[ 2 -1 1 4 ]
  //: comment g5 @(10,10) /anc:1
  //: /line:"<h3>Средства редактирования групп</h3> <b>(вращение и привязка)</b>"
  //: /line:""
  //: /line:"Вы можете поворачивать (при помощи <img src=edit_rotate.gif bgcolor=gray> и <img src=edit_brotate.gif bgcolor=gray>) и привязывать"
  //: /line:"(при помощи <img src=anchor.gif bgcolor=gray> и <img src=unanchor.gif bgcolor=gray>) группы точно также, как и отдельные"
  //: /line:"вентили (см. раздел <a href=gates.v>Редактирование вентилей</a>). Попробуйте"
  //: /line:"на схеме снизу."
  //: /end
  _GGXOR2 #(8) g24 (.I0(w9), .I1(c0), .Z(s0));   //: @(309,195) /sn:0 /w:[ 0 3 0 ]
  _GGXOR2 #(8) g23 (.I0(a0), .I1(b0), .Z(w9));   //: @(234,192) /sn:0 /w:[ 3 3 3 ]
  //: comment g0 @(10,310) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end
  //: SWITCH g26 (b0) @(150,224) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g30 (b0) @(207, 224) /w:[ -1 2 1 4 ]
  //: joint g33 (c0) @(273, 197) /w:[ 2 1 -1 4 ]

endmodule
//: /netlistEnd

//: /netlistBegin PAGE4
module PAGE4();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
reg c0;    //: {0}(18:174,160)(280,160)(280,202){1}
//: {2}(282,204)(305,204){3}
//: {4}(280,206)(280,223){5}
reg a0;    //: {0}(40:174,196)(196,196)(196,196)(218,196){1}
//: {2}(222,196)(230,196){3}
//: {4}(220,198)(220,252)(237,252){5}
reg b0;    //: {0}(50:174,231)(193,231)(193,231)(212,231){1}
//: {2}(214,229)(214,201)(230,201){3}
//: {4}(214,233)(214,257)(237,257){5}
wire w7;    //: /sn:0 {0}(258,255)(273,255)(273,267){1}
wire s0;    //: {0}(36:326,202)(356,202){1}
wire w4;    //: /sn:0 {0}(278,244)(278,267){1}
wire c1;    //: {0}(99:276,288)(276,307){1}
wire w9;    //: /sn:0 {0}(305,199)(277,199){1}
//: {2}(273,199)(251,199){3}
//: {4}(275,201)(275,223){5}
//: enddecls

  //: LED g37 (s0) @(363,202) /sn:0 /R:3 /w:[ 1 ] /type:0
  //: comment g2 @(548,117) /sn:0 /anc:1
  //: /line:"<font color=green4>Подсказка: Нажатие клавиши <font color=red2>Delete</font>"
  //: /line:"удалит все выделенные вентили"
  //: /line:"без перемещения их в буфер обмена.</font>"
  //: /end
  _GGNAND2 #(4) g1 (.I0(w7), .I1(w4), .Z(c1));   //: @(276,278) /sn:0 /R:3 /w:[ 1 1 0 ]
  _GGNAND2 #(4) g28 (.I0(a0), .I1(b0), .Z(w7));   //: @(248,255) /sn:0 /w:[ 5 5 0 ]
  //: SWITCH g27 (c0) @(157,160) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g32 (w9) @(275, 199) /w:[ 1 -1 2 4 ]
  _GGNAND2 #(4) g31 (.I0(w9), .I1(c0), .Z(w4));   //: @(278,234) /sn:0 /R:3 /w:[ 5 5 0 ]
  //: SWITCH g25 (a0) @(157,196) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g29 (a0) @(220, 196) /w:[ 2 -1 1 4 ]
  //: comment g5 @(10,10) /anc:1
  //: /line:"<h3>Средства редактирования групп</h3> <b>(операции с буфером обмена)</b>"
  //: /line:""
  //: /line:"Вы можете использовать операции копирования и вырезания групп вентилей в буфер обмена"
  //: /line:"с тем, чтобы вставить их где-нибудь в другом месте. Выделите группу вентилей, затем нажмите"
  //: /line:"кнопку <img src=edit_cut.gif bgcolor=gray> для вырезания или <img src=edit_copy.gif bgcolor=gray> для копирования выделенных вентилей в буфер обмена."
  //: /line:"Для вставки содержимого буфера сначала установите курсор <img src=mark.gif> в нужную позицию с помощью"
  //: /line:"левой кнопки мыши, затем нажмите кнопку <img src=edit_paste.gif bgcolor=gray> для вставки содержимого в данную позицию."
  //: /line:""
  //: /end
  _GGXOR2 #(8) g24 (.I0(w9), .I1(c0), .Z(s0));   //: @(316,202) /sn:0 /w:[ 0 3 0 ]
  _GGXOR2 #(8) g23 (.I0(a0), .I1(b0), .Z(w9));   //: @(241,199) /sn:0 /w:[ 3 3 3 ]
  //: comment g0 @(10,310) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end
  //: SWITCH g26 (b0) @(157,231) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g30 (b0) @(214, 231) /w:[ -1 2 1 4 ]
  //: joint g33 (c0) @(280, 204) /w:[ 2 1 -1 4 ]

endmodule
//: /netlistEnd

//: /netlistBegin PAGE2
module PAGE2();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
reg c0;    //: {0}(18:166,149)(288,149)(288,191){1}
//: {2}(290,193)(313,193){3}
//: {4}(288,195)(288,212){5}
reg a0;    //: {0}(40:166,185)(226,185){1}
//: {2}(230,185)(238,185){3}
//: {4}(228,187)(228,241)(245,241){5}
reg b0;    //: {0}(50:166,220)(220,220){1}
//: {2}(222,218)(222,190)(238,190){3}
//: {4}(222,222)(222,246)(245,246){5}
wire w7;    //: /sn:0 {0}(266,244)(281,244)(281,256){1}
wire s0;    //: {0}(36:334,191)(364,191){1}
wire w4;    //: /sn:0 {0}(286,233)(286,256){1}
wire c1;    //: {0}(99:284,277)(284,296){1}
wire w9;    //: /sn:0 {0}(313,188)(285,188){1}
//: {2}(281,188)(259,188){3}
//: {4}(283,190)(283,212){5}
//: enddecls

  //: LED g37 (s0) @(371,191) /sn:0 /R:3 /w:[ 1 ] /type:0
  //: comment g2 @(609,113) /sn:0 /anc:1
  //: /line:"<font color=green4>Подсказка: Щёлкните по пустому"
  //: /line:"месту, чтобы убрать групповое выделение."
  //: /line:""
  //: /end
  _GGNAND2 #(4) g1 (.I0(w7), .I1(w4), .Z(c1));   //: @(284,267) /sn:0 /R:3 /w:[ 1 1 0 ]
  _GGNAND2 #(4) g28 (.I0(a0), .I1(b0), .Z(w7));   //: @(256,244) /sn:0 /w:[ 5 5 0 ]
  //: SWITCH g27 (c0) @(149,149) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g32 (w9) @(283, 188) /w:[ 1 -1 2 4 ]
  _GGNAND2 #(4) g31 (.I0(w9), .I1(c0), .Z(w4));   //: @(286,223) /sn:0 /R:3 /w:[ 5 5 0 ]
  //: SWITCH g25 (a0) @(149,185) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g29 (a0) @(228, 185) /w:[ 2 -1 1 4 ]
  //: comment g5 @(10,10) /anc:1
  //: /line:"<h3>Средства редактирования групп</h3> <b>(выделение и перемещение)</b>"
  //: /line:""
  //: /line:"Чтобы выделить группу вентилей, нажмите и удерживайте левую кнопку мыши выше и левее группы,"
  //: /line:"затем перемещайте курсор ниже и правее, чтобы завершить выделение."
  //: /line:"Отпустите кнопку мыши, когда рамка выделения охватит все необходимые вентили. Перемещайте"
  //: /line:"любой вентиль в группе, чтобы переместить всю группу. Попробуйте на схеме внизу."
  //: /end
  _GGXOR2 #(8) g24 (.I0(w9), .I1(c0), .Z(s0));   //: @(324,191) /sn:0 /w:[ 0 3 0 ]
  _GGXOR2 #(8) g23 (.I0(a0), .I1(b0), .Z(w9));   //: @(249,188) /sn:0 /w:[ 3 3 3 ]
  //: comment g0 @(10,310) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end
  //: SWITCH g26 (b0) @(149,220) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g30 (b0) @(222, 220) /w:[ -1 2 1 4 ]
  //: joint g33 (c0) @(288, 193) /w:[ 2 1 -1 4 ]

endmodule
//: /netlistEnd

