//: version "2.1-a2"
//: property encoding = "utf-8"
//: property locale = "ru"
//: property prefix = "_GG"
//: property title = "Редактирование вентилей"
//: property useExtBars = 0
//: property showSwitchNets = 0
//: property discardChanges = 1
//: property timingViolationMode = 2
//: property initTime = "0 ns"

`timescale 1ns/1ns

//: /netlistBegin PAGE1
module PAGE1;    //: root_module
//: enddecls

  //: comment g2 @(10,10) /anc:1
  //: /line:"<h3>Редактирование вентилей</h3>"
  //: /line:""
  //: /line:"В этом разделе рассматриваются некоторые средства редактирования"
  //: /line:"схем в TkGate."
  //: /end
  //: comment g10 @(10,310) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end
  //: comment g0 @(144,69) /sn:0 /anc:1
  //: /line:"<img src=bigdetails.gif>"
  //: /end

endmodule
//: /netlistEnd

//: /netlistBegin PAGE6
module PAGE6();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
wire w4;    //: /sn:0 {0}(256,171)(271,171){1}
wire w3;    //: /sn:0 {0}(256,166)(271,166){1}
wire w0;    //: /sn:0 {0}(94,171)(109,171){1}
wire w1;    //: /sn:0 {0}(94,176)(109,176){1}
wire w2;    //: /sn:0 {0}(130,174)(145,174){1}
wire w5;    //: /sn:0 {0}(292,169)(307,169){1}
//: enddecls

  //: comment g4 @(247,195) /sn:0 /anc:1
  //: /line:"Привязанный вентиль"
  //: /end
  _GGOR2 #(6) g3 (.I0(w3), .I1(w4), .Z(w5));   //: @(282,169) /sn:0 /anc:1 /w:[ 1 1 0 ]
  //: comment g2 @(10,10) /anc:1
  //: /line:"<h3>Редактирование вентилей</h3> <b>(Привязка)</b>"
  //: /line:""
  //: /line:"Предотвратить случайное изменение положения вентиля можно, используя"
  //: /line:"кнопку <img src=anchor.gif bgcolor=gray> для установления привязки. Кнопкой <img src=unanchor.gif bgcolor=gray> удалить привязку."
  //: /line:"Привязанные вентили (например, вентиль или внизу) не могут быть перемещены,"
  //: /line:"пока Вы не удалите привязку. Попробуйте переместить вентили внизу."
  //: /line:""
  //: /end
  _GGAND2 #(6) g1 (.I0(w0), .I1(w1), .Z(w2));   //: @(120,174) /sn:0 /w:[ 1 1 0 ]
  //: comment g6 @(587,112) /sn:0 /anc:1
  //: /line:"<font color=green4>Подсказка: Альтернативный"
  //: /line:"способ изменить привязку вентиля заключается"
  //: /line:"в использовании флага в контекстном меню.</font>"
  //: /end
  //: comment g5 @(81,195) /sn:0 /anc:1
  //: /line:"Свободный вентиль"
  //: /end
  //: comment g0 @(10,310) /sn:0 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end

endmodule
//: /netlistEnd

//: /netlistBegin PAGE3
module PAGE3();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
reg c0;    //: {0}(18:118,113)(224,113)(224,155){1}
//: {2}(226,157)(249,157){3}
//: {4}(224,159)(224,169){5}
reg a0;    //: {0}(40:118,149)(162,149){1}
//: {2}(166,149)(174,149){3}
//: {4}(164,151)(164,205)(181,205){5}
reg b0;    //: {0}(50:118,184)(156,184){1}
//: {2}(158,182)(158,154)(174,154){3}
//: {4}(158,186)(158,210)(181,210){5}
wire w7;    //: /sn:0 {0}(202,208)(217,208)(217,220){1}
wire s0;    //: {0}(36:270,155)(300,155){1}
wire w4;    //: /sn:0 {0}(222,190)(222,220){1}
wire c1;    //: {0}(99:220,241)(220,260){1}
wire w9;    //: /sn:0 {0}(249,152)(221,152){1}
//: {2}(217,152)(195,152){3}
//: {4}(219,154)(219,169){5}
//: enddecls

  //: LED g37 (s0) @(307,155) /sn:0 /R:3 /w:[ 1 ] /type:0
  //: comment g2 @(11,10) /anc:1
  //: /line:"<h3>Редактирование вентилей</h3> <b>(Перемещение)</b>"
  //: /line:""
  //: /line:"Для перемещения вентиля захватите его инструментом <img src=\"mov_curs.gif\" bgcolor=gray>"
  //: /line:"и переместите его в новую позицию. Потренируйтесь на схеме снизу."
  //: /line:""
  //: /end
  _GGNAND2 #(4) g1 (.I0(w7), .I1(w4), .Z(c1));   //: @(220,231) /sn:0 /R:3 /w:[ 1 1 0 ]
  _GGNAND2 #(4) g28 (.I0(a0), .I1(b0), .Z(w7));   //: @(192,208) /sn:0 /w:[ 5 5 0 ]
  //: SWITCH g27 (c0) @(101,113) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g32 (w9) @(219, 152) /w:[ 1 -1 2 4 ]
  _GGNAND2 #(4) g31 (.I0(w9), .I1(c0), .Z(w4));   //: @(222,180) /sn:0 /R:3 /w:[ 5 5 0 ]
  //: SWITCH g25 (a0) @(101,149) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g29 (a0) @(164, 149) /w:[ 2 -1 1 4 ]
  _GGXOR2 #(8) g24 (.I0(w9), .I1(c0), .Z(s0));   //: @(260,155) /sn:0 /w:[ 0 3 0 ]
  _GGXOR2 #(8) g23 (.I0(a0), .I1(b0), .Z(w9));   //: @(185,152) /sn:0 /w:[ 3 3 3 ]
  //: comment g0 @(10,310) /sn:0 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end
  //: SWITCH g26 (b0) @(101,184) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g30 (b0) @(158, 184) /w:[ -1 2 1 4 ]
  //: joint g33 (c0) @(224, 157) /w:[ 2 1 -1 4 ]

endmodule
//: /netlistEnd

//: /netlistBegin PAGE8
module PAGE8();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
wire w6;    //: /sn:0 {0}(39,221)(54,221){1}
wire w7;    //: /sn:0 {0}(41,265)(56,265){1}
wire w14;    //: /sn:0 {0}(169,222)(154,222){1}
wire w16;    //: /sn:0 {0}(154,267)(169,267){1}
wire w4;    //: /sn:0 {0}(39,218)(54,218){1}
wire w15;    //: /sn:0 {0}(154,262)(169,262){1}
wire w19;    //: /sn:0 {0}(169,277)(154,277){1}
wire w3;    //: /sn:0 {0}(39,214)(54,214){1}
wire w0;    //: /sn:0 {0}(37,166)(52,166){1}
wire w21;    //: /sn:0 {0}(152,167)(167,167){1}
wire w23;    //: /sn:0 {0}(188,169)(203,169){1}
wire w20;    //: /sn:0 {0}(41,274)(56,274){1}
wire w1;    //: /sn:0 {0}(37,171)(52,171){1}
wire w8;    //: /sn:0 {0}(41,268)(56,268){1}
wire w18;    //: /sn:0 {0}(190,269)(205,269){1}
wire w22;    //: /sn:0 {0}(152,172)(167,172){1}
wire w17;    //: /sn:0 {0}(169,272)(154,272){1}
wire w2;    //: /sn:0 {0}(73,169)(88,169){1}
wire w11;    //: /sn:0 {0}(154,212)(169,212){1}
wire w12;    //: /sn:0 {0}(154,217)(169,217){1}
wire w10;    //: /sn:0 {0}(41,271)(56,271){1}
wire w13;    //: /sn:0 {0}(190,217)(205,217){1}
wire w5;    //: /sn:0 {0}(75,218)(90,218){1}
wire w9;    //: /sn:0 {0}(77,270)(92,270){1}
//: enddecls

  //: comment g8 @(149,126) /sn:0 /anc:1
  //: /line:"вентили с расширительными"
  //: /line:"панелями"
  //: /end
  _GGAND4 #(10) g4 (.I0(w7), .I1(w8), .I2(w10), .I3(w20), .Z(w9));   //: @(67,270) /sn:0 /w:[ 1 1 1 1 0 ]
  _GGAND3 #(8) g3 (.I0(w3), .I1(w4), .I2(w6), .Z(w5));   //: @(65,218) /sn:0 /w:[ 1 1 1 0 ]
  //: comment g2 @(11,13) /anc:1
  //: /line:"<h3>Редактирование вентилей</h3> <b>(Добавление вентилей)</b>"
  //: /line:""
  //: /line:"Некоторые вентили (например И) могут иметь переменное число входов и выходов. Для добавления входов"
  //: /line:"(или выходов) к такому вентилю, выделите его и нажмите кнопку <img src=addport.gif bgcolor=gray>."
  //: /line:"Кроме того, многие вентили имеют различные стили добавления и отображения портов, доступные"
  //: /line:"из диалога свойств вентиля. Попробуйте изменить число портов у вентилей внизу, а также у вновь"
  //: /line:"создаваемых вентилей."
  //: /end
  _GGAND2 #(6) g1 (.I0(w0), .I1(w1), .Z(w2));   //: @(63,169) /sn:0 /w:[ 1 1 0 ]
  _GGAND4 #(10) g6 (.I0(w15), .I1(w16), .I2(w17), .I3(w19), .Z(w18));   //: @(180,269) /sn:0 /w:[ 1 1 0 0 0 ] /eb:1
  _GGAND2 #(6) g9 (.I0(w21), .I1(w22), .Z(w23));   //: @(178,169) /sn:0 /w:[ 1 1 0 ] /eb:1
  //: comment g7 @(26,127) /sn:0 /anc:1
  //: /line:"вентили без расши-"
  //: /line:"рительных панелей"
  //: /end
  _GGAND3 #(8) g5 (.I0(w11), .I1(w12), .I2(w14), .Z(w13));   //: @(180,217) /sn:0 /w:[ 1 1 0 0 ] /eb:1
  //: comment g0 @(10,310) /sn:0 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end

endmodule
//: /netlistEnd

//: /netlistBegin PAGE7
module PAGE7();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
//: enddecls

  //: frame g3 @(306,228) /sn:0 /wi:167 /ht:69 /tx:"Это рамка"
  //: comment g2 @(10,10) /anc:1
  //: /line:"<h3>Редактирование вентилей</h3> <b>(Комментарии и рамки)</b>"
  //: /line:""
  //: /line:"Существует два специальных вида \"вентилей\", которые можно использовать для описания Ваших схем: комментарии и рамки."
  //: /line:"Ни один из этих \"вентилей\" не оказывает влияния на результаты симуляции."
  //: /line:""
  //: /line:"Комментарии - это блоки гипертекста, такие как те, из которых составлено данное руководство. Чтобы создать комментарий"
  //: /line:"нажмите правой кнопкой мыши на схеме и выберите <font color=red2>Компоненты &rarr; Комментарий</font> из меню."
  //: /line:"Когда Вы создаете комментарий, сразу же появляется диалог свойств, позволяющий ввести текст. Комментарии могут содержать"
  //: /line:"ограниченный набор html тэгов, включая ссылки на другие файлы схем или определённые части текущей схемы."
  //: /line:""
  //: /line:"Рамки позволяют логически группировать связанные наборы вентилей без необходимости создавать модуль. Дважды щёлкните"
  //: /line:"по ребру рамки, чтобы открыть диалог свойств и выбрать текст подписи. Щёлкните и перетащите угол рамки для изменения"
  //: /line:"размера."
  //: /line:""
  //: /end
  //: comment g1 @(70,240) /sn:0
  //: /line:"<h2>Это комментарий</h2>"
  //: /line:"<p>Он использует <b>html</b> разметку.</p>"
  //: /end
  //: comment g0 @(10,310) /sn:0 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end

endmodule
//: /netlistEnd

//: /netlistBegin PAGE5
module PAGE5();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
wire w0;    //: /sn:0 {0}(118,149)(133,149){1}
wire w1;    //: /sn:0 {0}(118,154)(133,154){1}
wire w2;    //: /sn:0 {0}(154,152)(169,152){1}
//: enddecls

  //: comment g2 @(10,10) /anc:1
  //: /line:"<h3>Редактирование вентилей</h3> <b>(Поворот)</b>"
  //: /line:""
  //: /line:"Ориентацию вентиля можно изменить, выбрав его и нажав кнопку <img src=\"edit_rotate.gif\" bgcolor=gray>"
  //: /line:"(или клавишу <font color=red2>Tab</font>), для того, чтобы повернуть его против часовой стрелки,"
  //: /line:"и кнопку <img src=\"edit_brotate.gif\" bgcolor=gray> (или клавиши <font color=red2>Shift-Tab</font>) для"
  //: /line:"вращения по часовой стрелке. Потренируйтесь на вентиле И внизу."
  //: /end
  _GGAND2 #(6) g1 (.I0(w0), .I1(w1), .Z(w2));   //: @(144,152) /sn:0 /w:[ 1 1 0 ]
  //: comment g6 @(567,92) /sn:0 /anc:1
  //: /line:"<font color=green4>Подсказка: Вы можете использовать"
  //: /line:"кнопку <img src=\"rotation0.gif\" bgcolor=gray> для установки"
  //: /line:"ориентации по умолчанию для"
  //: /line:"вновь создаваемых вентилей.</font>"
  //: /end
  //: comment g0 @(10,310) /sn:0 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end

endmodule
//: /netlistEnd

//: /netlistBegin PAGE4
module PAGE4();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
reg c0;    //: {0}(18:125,126)(231,126)(231,168){1}
//: {2}(233,170)(256,170){3}
//: {4}(231,172)(231,183){5}
reg a0;    //: {0}(40:125,162)(169,162){1}
//: {2}(173,162)(181,162){3}
//: {4}(171,164)(171,218)(188,218){5}
reg b0;    //: {0}(50:125,197)(163,197){1}
//: {2}(165,195)(165,167)(181,167){3}
//: {4}(165,199)(165,223)(188,223){5}
wire w7;    //: /sn:0 {0}(209,221)(224,221)(224,233){1}
wire s0;    //: {0}(36:277,168)(307,168){1}
wire w4;    //: /sn:0 {0}(229,204)(229,233){1}
wire c1;    //: {0}(99:227,254)(227,273){1}
wire w9;    //: /sn:0 {0}(256,165)(228,165){1}
//: {2}(224,165)(202,165){3}
//: {4}(226,167)(226,183){5}
//: enddecls

  //: LED g37 (s0) @(314,168) /sn:0 /R:3 /w:[ 1 ] /type:0
  //: comment g2 @(10,10) /anc:1
  //: /line:"<h3>Редактирование вентилей</h3> <b>(Удаление)</b>"
  //: /line:""
  //: /line:"Для удаления вентиля щёлкните его инструментом <img src=\"mov_curs.gif\" bgcolor=gray> и нажмите клавишу <font color=red2>Delete</font>. Попробуйте на схеме внизу."
  //: /end
  _GGNAND2 #(4) g1 (.I0(w7), .I1(w4), .Z(c1));   //: @(227,244) /sn:0 /R:3 /w:[ 1 1 0 ]
  //: comment g10 @(10,310) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end
  _GGNAND2 #(4) g28 (.I0(a0), .I1(b0), .Z(w7));   //: @(199,221) /sn:0 /w:[ 5 5 0 ]
  //: SWITCH g27 (c0) @(108,126) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g32 (w9) @(226, 165) /w:[ 1 -1 2 4 ]
  _GGNAND2 #(4) g31 (.I0(w9), .I1(c0), .Z(w4));   //: @(229,194) /sn:0 /R:3 /w:[ 5 5 0 ]
  //: SWITCH g25 (a0) @(108,162) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g29 (a0) @(171, 162) /w:[ 2 -1 1 4 ]
  _GGXOR2 #(8) g24 (.I0(w9), .I1(c0), .Z(s0));   //: @(267,168) /sn:0 /w:[ 0 3 0 ]
  _GGXOR2 #(8) g23 (.I0(a0), .I1(b0), .Z(w9));   //: @(192,165) /sn:0 /w:[ 3 3 3 ]
  //: SWITCH g26 (b0) @(108,197) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g30 (b0) @(165, 197) /w:[ -1 2 1 4 ]
  //: joint g33 (c0) @(231, 170) /w:[ 2 1 -1 4 ]

endmodule
//: /netlistEnd

//: /netlistBegin PAGE2
module PAGE2();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
reg c0;    //: {0}(18:125,126)(231,126)(231,168){1}
//: {2}(233,170)(256,170){3}
//: {4}(231,172)(231,183){5}
reg a0;    //: {0}(40:125,162)(169,162){1}
//: {2}(173,162)(181,162){3}
//: {4}(171,164)(171,218)(188,218){5}
reg b0;    //: {0}(50:124,196)(143,196)(143,197)(163,197){1}
//: {2}(165,195)(165,167)(181,167){3}
//: {4}(165,199)(165,223)(188,223){5}
wire w7;    //: /sn:0 {0}(209,221)(224,221)(224,233){1}
wire s0;    //: {0}(36:277,168)(307,168){1}
wire w4;    //: /sn:0 {0}(229,204)(229,233){1}
wire c1;    //: {0}(99:227,254)(227,273){1}
wire w9;    //: /sn:0 {0}(256,165)(228,165){1}
//: {2}(224,165)(202,165){3}
//: {4}(226,167)(226,183){5}
//: enddecls

  //: LED g37 (s0) @(314,168) /sn:0 /R:3 /w:[ 1 ] /type:0
  //: comment g2 @(10,10) /anc:1
  //: /line:"<h3>Редактирование вентилей</h3> <b>(Свойства)</b>"
  //: /line:""
  //: /line:"Диалог редактирования свойств вентиля можно вызвать, выбрав пункт <b>Свойства экземпляра</b>"
  //: /line:"контекстного меню, вызываемого щелчком правой кнопки мыши на вентиле."
  //: /line:"Также этот диалог можно открыть дважды щёлкнув на вентиле. Используя данный диалог,"
  //: /line:"попробуйте изменить подписи под вентилями на схеме и изменить их режим отображения/сокрытия."
  //: /end
  _GGNAND2 #(4) g1 (.I0(w7), .I1(w4), .Z(c1));   //: @(227,244) /sn:0 /R:3 /w:[ 1 1 0 ]
  _GGNAND2 #(4) g28 (.I0(a0), .I1(b0), .Z(w7));   //: @(199,221) /sn:0 /w:[ 5 5 0 ]
  //: SWITCH g27 (c0) @(108,126) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g32 (w9) @(226, 165) /w:[ 1 -1 2 4 ]
  //: comment g6 @(548,104) /sn:0 /anc:1
  //: /line:"<font color=green4>Подсказка: Многие свойства являются"
  //: /line:"специфическими для конкретных вентилей."
  //: /line:"Попробуйте открыть диалоги свойств для"
  //: /line:"различных типов вентилей, чтобы увидеть"
  //: /line:"отличия.</font>"
  //: /end
  _GGNAND2 #(4) g31 (.I0(w9), .I1(c0), .Z(w4));   //: @(229,194) /sn:0 /R:3 /w:[ 5 5 0 ]
  //: SWITCH g25 (a0) @(108,162) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g29 (a0) @(171, 162) /w:[ 2 -1 1 4 ]
  _GGXOR2 #(8) g24 (.I0(w9), .I1(c0), .Z(s0));   //: @(267,168) /sn:0 /w:[ 0 3 0 ]
  _GGXOR2 #(8) g23 (.I0(a0), .I1(b0), .Z(w9));   //: @(192,165) /sn:0 /w:[ 3 3 3 ]
  //: comment g0 @(10,310) /sn:0 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end
  //: SWITCH g26 (b0) @(107,196) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: joint g30 (b0) @(165, 197) /w:[ -1 2 1 4 ]
  //: joint g33 (c0) @(231, 170) /w:[ 2 1 -1 4 ]

endmodule
//: /netlistEnd

