//: version "2.0-b10"
//: property encoding = "utf-8"
//: property locale = "ru"
//: property prefix = "_GG"
//: property title = "create_tut.v"
//: property useExtBars = 0
//: property showSwitchNets = 0
//: property discardChanges = 1
//: property timingViolationMode = 2
//: property initTime = "0 ns"

`timescale 1ns/1ns

//: /netlistBegin PAGE1
module PAGE1;    //: root_module
reg w3;    //: /sn:0 {0}(219,137)(154,137){1}
reg w9;    //: /sn:0 {0}(314,237)(213,237){1}
//: {2}(211,235)(211,142)(219,142){3}
//: {4}(209,237)(154,237){5}
wire w8;    //: /sn:0 {0}(314,232)(294,232)(294,140)(240,140){1}
wire w10;    //: /sn:0 {0}(335,235)(345,235){1}
//: enddecls

  //: comment g8 @(313,208)
  //: /line:"Вентиль ИЛИ"
  //: /end
  //: joint g13 (w9) @(211, 237) /w:[ 1 2 4 -1 ]
  //: comment g1 @(10,310) /sn:0 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end
  _GGAND2 #(6) g11 (.I0(w3), .I1(w9), .Z(w8));   //: @(230,140) /sn:0 /w:[ 0 3 1 ]
  //: comment g6 @(115,104)
  //: /line:"Переключатели"
  //: /end
  //: comment g9 @(10,10) /anc:1
  //: /line:"<h3>Создание простой схемы</h3>"
  //: /line:""
  //: /line:"В этом разделе вы выполните шаги для построения простой схемы, приведенной ниже."
  //: /end
  //: comment g7 @(208,112)
  //: /line:"Вентиль И"
  //: /end
  //: SWITCH g14 (w3) @(137,137) /sn:0 /w:[ 1 ] /st:0 /dn:0
  _GGOR2 #(6) g0 (.I0(w8), .I1(w9), .Z(w10));   //: @(325,235) /sn:0 /w:[ 0 0 0 ]
  //: SWITCH g12 (w9) @(137,237) /sn:0 /w:[ 5 ] /st:0 /dn:0

endmodule
//: /netlistEnd

//: /netlistBegin PAGE6
module PAGE6();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
reg w6;    //: /sn:0 {0}(154,237)(309,237){1}
reg w2;    //: /sn:0 {0}(219,137)(186,137)(186,137)(154,137){1}
wire w7;    //: /sn:0 {0}(330,235)(340,235){1}
wire w0;    //: /sn:0 {0}(204,142)(219,142){1}
wire w5;    //: /sn:0 {0}(309,232)(289,232)(289,140)(240,140){1}
//: enddecls

  _GGOR2 #(6) g4 (.I0(w5), .I1(w6), .Z(w7));   //: @(320,235) /sn:0 /w:[ 0 1 0 ]
  _GGAND2 #(6) g3 (.I0(w2), .I1(w0), .Z(w5));   //: @(230,140) /sn:0 /w:[ 0 1 1 ]
  //: SWITCH g2 (w6) @(137,237) /sn:0 /w:[ 0 ] /st:0 /dn:0
  //: comment g10 @(10,310) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end
  //: comment g6 @(537,46) /sn:0 /anc:1
  //: /line:"<img src=\"makejoint_example.gif\">"
  //: /end
  //: comment g7 @(537,126) /sn:0 /anc:1
  //: /line:"<font color=green4>Hint: Joints are formed any"
  //: /line:"time the soldering iron is"
  //: /line:"active and you release the"
  //: /line:"wire in the middle of another"
  //: /line:"wire.</font>"
  //: /end
  //: comment g9 @(10,10) /anc:1
  //: /line:"<h3>Создание простой схемы</h3>"
  //: /line:""
  //: /line:"Теперь создадим последние соединения. Захватите конец"
  //: /line:"нижнего входа верхнего вентиля И, перетащите его и"
  //: /line:"отпустите посередине провода, соединяющего нижний"
  //: /line:"переключатель и нижний вентиль И, чтобы создать"
  //: /line:"соединение."
  //: /line:""
  //: /end
  //: SWITCH g5 (w2) @(137,137) /sn:0 /w:[ 1 ] /st:0 /dn:0

endmodule
//: /netlistEnd

//: /netlistBegin PAGE3
module PAGE3();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
wire w0;    //: /sn:0 {0}(204,137)(219,137){1}
wire w1;    //: /sn:0 {0}(204,142)(219,142){1}
wire w2;    //: /sn:0 {0}(240,140)(255,140){1}
//: enddecls

  _GGAND2 #(6) g2 (.I0(w0), .I1(w1), .Z(w2));   //: @(230,140) /sn:0 /w:[ 1 1 0 ]
  //: frame g1 @(283,202) /sn:0 /wi:78 /ht:46 /tx:""
  //: comment g10 @(10,310) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end
  //: comment g9 @(10,10) /anc:1
  //: /line:"<h3>Создание простой схемы</h3>"
  //: /line:""
  //: /line:"Теперь создайте вентиль ИЛИ. Щелкните правой кнопкой внутри пунктирной рамки и выберите"
  //: /line:"<font color=red2>Компоненты &rarr; Вентиль &rarr; ИЛИ</font> из контекстного меню."
  //: /end
  //: comment g0 @(532,85) /sn:0 /anc:1
  //: /line:"<font color=green4>Подсказка: Вы также можете использовать"
  //: /line:"клавиатурные комбинации. Выберите"
  //: /line:"позицию щелчком левой кнопкой и нажмите \"o\" для"
  //: /line:"создания вентиля ИЛИ.</font>"
  //: /end

endmodule
//: /netlistEnd

//: /netlistBegin PAGE5
module PAGE5();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
reg w6;    //: /sn:0 {0}(154,237)(169,237){1}
reg w2;    //: /sn:0 {0}(154,137)(169,137){1}
wire w7;    //: /sn:0 {0}(240,140)(255,140){1}
wire w4;    //: /sn:0 {0}(204,137)(219,137){1}
wire w0;    //: /sn:0 {0}(299,232)(314,232){1}
wire w3;    //: /sn:0 {0}(335,235)(350,235){1}
wire w1;    //: /sn:0 {0}(299,237)(314,237){1}
wire w5;    //: /sn:0 {0}(204,142)(219,142){1}
//: enddecls

  //: SWITCH g4 (w2) @(137,137) /sn:0 /anc:1 /w:[ 0 ] /st:0 /dn:0
  _GGAND2 #(6) g3 (.I0(w4), .I1(w5), .Z(w7));   //: @(230,140) /sn:0 /anc:1 /w:[ 1 1 0 ]
  //: SWITCH g2 (w6) @(137,237) /sn:0 /anc:1 /w:[ 0 ] /st:0 /dn:0
  _GGOR2 #(6) g1 (.I0(w0), .I1(w1), .Z(w3));   //: @(325,235) /sn:0 /anc:1 /w:[ 1 1 0 ]
  //: comment g10 @(10,310) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end
  //: comment g6 @(578,122) /sn:0 /anc:1
  //: /line:"<font color=green4>Подсказка: Когда Вы выбираете конец"
  //: /line:"проводника, который можно соединить с другим,"
  //: /line:"отображается курсор в виде паяльника.</font>"
  //: /end
  //: comment g9 @(10,10) /anc:1
  //: /line:"<h3>Создание простой схемы</h3>"
  //: /line:""
  //: /line:"Наконец, соедините элементы проводниками. Начните с того, что захватите конец провода,"
  //: /line:"идущего из верхнего переключателя левой кнопкой мыши и, удерживая левую кнопку, перетащите"
  //: /line:"его к концу провода, ведущего к верхнему входу верхнего вентиля И, после чего отпустите"
  //: /line:"левую кнопку мыши."
  //: /end
  //: comment g0 @(579,61) /sn:0 /anc:1
  //: /line:"<img src=\"connect_example.gif\">"
  //: /end

endmodule
//: /netlistEnd

//: /netlistBegin PAGE4
module PAGE4();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
wire w4;    //: /sn:0 {0}(306,241)(321,241){1}
wire w0;    //: /sn:0 {0}(204,137)(219,137){1}
wire w3;    //: /sn:0 {0}(240,140)(255,140){1}
wire w1;    //: /sn:0 {0}(204,142)(219,142){1}
wire w2;    //: /sn:0 {0}(306,236)(321,236){1}
wire w5;    //: /sn:0 {0}(342,239)(357,239){1}
//: enddecls

  //: frame g8 @(109,215) /sn:0 /anc:1 /wi:76 /ht:43 /tx:""
  _GGAND2 #(6) g3 (.I0(w0), .I1(w1), .Z(w3));   //: @(230,140) /sn:0 /anc:1 /w:[ 1 1 0 ]
  _GGOR2 #(6) g2 (.I0(w2), .I1(w4), .Z(w5));   //: @(332,239) /sn:0 /w:[ 1 1 0 ]
  //: frame g1 @(109,121) /sn:0 /anc:1 /wi:76 /ht:43 /tx:""
  //: comment g10 @(10,310) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end
  //: comment g9 @(10,10) /anc:1
  //: /line:"<h3>Создание простой схемы</h3>"
  //: /line:""
  //: /line:"Далее создайте два переключателя. Последовательно щелкните правой кнопкой мыши в"
  //: /line:"пунктирных рамках и выберите <font color=red2>Компоненты &rarr; Ввод-вывод &rarr; Переключатель</font>"
  //: /line:"из контекстного меню."
  //: /end
  //: comment g0 @(532,86) /sn:0 /anc:1
  //: /line:"<font color=green4>Подсказка: Вы также можете использовать"
  //: /line:"клавиатурные комбинации. Выберите"
  //: /line:"позицию щелчком левой кнопкой и нажмите \"s\" для"
  //: /line:"создания вентиля ИЛИ.</font>"
  //: /end

endmodule
//: /netlistEnd

//: /netlistBegin PAGE2
module PAGE2();
//: interface  /sz:(40, 40) /bd:[ ] /pd: 0 /pi: 0 /pe: 0 /pp: 1
//: enddecls

  //: comment g2 @(531,86) /sn:0 /anc:1
  //: /line:"<font color=green4>Подсказка: Вы также можете использовать"
  //: /line:"клавиатурные комбинации. Выберите"
  //: /line:"позицию щелчком левой кнопкой и нажмите"
  //: /line:"\"a\" для создания вентиля И.</font>"
  //: /end
  //: frame g1 @(208,124) /sn:0 /wi:76 /ht:43 /tx:""
  //: comment g9 @(10,10) /anc:1
  //: /line:"<h3>Создание простой схемы</h3>"
  //: /line:""
  //: /line:"Начните с создания вентиля И. Щелкните правой кнопкой по пунктирному"
  //: /line:"прямоугольнику и выберите <font color=red2>Компоненты &rarr; Вентиль &rarr; И</font>"
  //: /line:"из контекстного меню."
  //: /end
  //: comment g0 @(10,310) /sn:0 /R:14 /anc:1
  //: /line:"<tutorial-navigation>"
  //: /end

endmodule
//: /netlistEnd

