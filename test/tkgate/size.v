//: version "2.2"
//: property prefix = "_GG"
//: property title = "size.v"

//: /netlistBegin main
module main;    //: root_module
wire [7:0] w6;    //: /sn:0 {0}#(693,390)(693,405){1}
wire w7;    //: /sn:0 {0}(374,112)(389,112){1}
wire w14;    //: /sn:0 {0}#(498,77)(483,77){1}
wire w4;    //: /sn:0 {0}(409,529)(424,529){1}
wire w15;    //: /sn:0 {0}#(392,82)(407,82){1}
wire w0;    //: /sn:0 {0}(140,135)(155,135){1}
wire w1;    //: /sn:0 {0}(140,140)(155,140){1}
wire [7:0] w8;    //: /sn:0 {0}#(677,434)(677,449){1}
wire w2;    //: /sn:0 {0}(338,109)(353,109){1}
wire [7:0] w11;    //: /sn:0 {0}#(444,93)#(444,185)#(500,185)(500,244)(432,244)(432,323)(487,323){1}
//: {2}(491,323)(542,323)#(542,369)(661,369)(661,405){3}
//: {4}#(489,325)#(489,419)(385,419){5}
wire [7:0] w12;    //: /sn:0 {0}#(444,57)(444,72){1}
wire w10;    //: /sn:0 {0}#(653,419)(638,419){1}
wire w13;    //: /sn:0 {0}#(498,87)(483,87){1}
wire w5;    //: /sn:0 {0}(445,527)(460,527){1}
wire w9;    //: /sn:0 {0}#(716,419)(701,419){1}
wire FOOBAR;    //: /dp:(1,2,0) {0}(424,524)(293,524)(293,384)(187,384)(187,304){1}
//: {2}(189,302)(234,302)(234,114)(353,114){3}
//: {4}(185,302)(175,302)(175,153)(186,153)(186,138)(176,138){5}
//: enddecls

  _GGADD8 #(68, 70, 62, 64) g4 (.A(w11), .B(w6), .S(w8), .CI(w9), .CO(w10));   //: @(677,421) /sn:0 /w:[ 3 1 0 1 0 ]
  //: joint g3 (FOOBAR) @(187, 302) /w:[ 2 -1 4 1 ]
  _GGAND2 #(6) g2 (.I0(w2), .I1(FOOBAR), .Z(w7));   //: @(364,112) /sn:0 /w:[ 1 3 0 ]
  _GGAND2 #(6) g1 (.I0(FOOBAR), .I1(w4), .Z(w5));   //: @(435,527) /sn:0 /w:[ 0 1 0 ]
  //: joint g6 (w11) @(489, 323) /w:[ 2 -1 1 4 ]
  _GGREG8 #(10, 10, 20) g5 (.Q(w11), .D(w12), .EN(w13), .CLR(w14), .CK(w15));   //: @(444,82) /sn:0 /w:[ 0 1 1 1 1 ]
  _GGAND2 #(6) g0 (.I0(w0), .I1(w1), .Z(FOOBAR));   //: @(166,138) /sn:0 /w:[ 1 1 5 ]

endmodule
//: /netlistEnd
