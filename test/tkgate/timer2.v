//: version "2.1"
//: property prefix = "_GG"
//: property title = "timer.v"
//: require "timer"

//: /symbolBegin: 140716048
//: /iconBegin normal 815 5 5
//: /data "#define bitmap_width 28"
//: /data "#define bitmap_height 29"
//: /data "static unsigned char bitmap_bits[] = {"
//: /data "   0x03, 0x00, 0x00, 0x00, 0x0d, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00,"
//: /data "   0xc1, 0x00, 0x00, 0x00, 0x01, 0x03, 0x00, 0x00, 0x01, 0x0c, 0x00, 0x00,"
//: /data "   0x01, 0x30, 0x00, 0x00, 0x01, 0xc0, 0x00, 0x00, 0x01, 0x00, 0x03, 0x00,"
//: /data "   0x01, 0x00, 0x0c, 0x00, 0x01, 0x00, 0x30, 0x00, 0xf1, 0x3c, 0xc0, 0x00,"
//: /data "   0x91, 0x24, 0x00, 0x03, 0x91, 0x24, 0x00, 0x0c, 0x91, 0x24, 0x00, 0x08,"
//: /data "   0x91, 0x24, 0x00, 0x0c, 0x91, 0x24, 0x00, 0x03, 0x9d, 0xe7, 0xc0, 0x00,"
//: /data "   0x01, 0x00, 0x30, 0x00, 0x01, 0x00, 0x0c, 0x00, 0x01, 0x00, 0x03, 0x00,"
//: /data "   0x01, 0xc0, 0x00, 0x00, 0x01, 0x30, 0x00, 0x00, 0x01, 0x0c, 0x00, 0x00,"
//: /data "   0x01, 0x03, 0x00, 0x00, 0xc1, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00,"
//: /data "   0x0d, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00};"
//: /iconEnd
//: /iconBegin select 815 5 5
//: /data "#define bitmap_width 28"
//: /data "#define bitmap_height 29"
//: /data "static unsigned char bitmap_bits[] = {"
//: /data "   0x03, 0x00, 0x00, 0x00, 0x0f, 0x00, 0x00, 0x00, 0x3f, 0x00, 0x00, 0x00,"
//: /data "   0xf3, 0x00, 0x00, 0x00, 0xc3, 0x03, 0x00, 0x00, 0x03, 0x0f, 0x00, 0x00,"
//: /data "   0x03, 0x3c, 0x00, 0x00, 0x03, 0xf0, 0x00, 0x00, 0x03, 0xc0, 0x03, 0x00,"
//: /data "   0x03, 0x00, 0x0f, 0x00, 0x03, 0x00, 0x3c, 0x00, 0xf3, 0x7d, 0xf0, 0x00,"
//: /data "   0xf3, 0x7d, 0xc0, 0x03, 0xb3, 0x6d, 0x00, 0x0f, 0xb3, 0x6d, 0x00, 0x0c,"
//: /data "   0xb3, 0x6d, 0x00, 0x0f, 0xb3, 0x6d, 0xc0, 0x03, 0xbf, 0xef, 0xf1, 0x00,"
//: /data "   0x9f, 0xe7, 0x3c, 0x00, 0x03, 0x00, 0x0f, 0x00, 0x03, 0xc0, 0x03, 0x00,"
//: /data "   0x03, 0xf0, 0x00, 0x00, 0x03, 0x3c, 0x00, 0x00, 0x03, 0x0f, 0x00, 0x00,"
//: /data "   0xc3, 0x03, 0x00, 0x00, 0xf3, 0x00, 0x00, 0x00, 0x3f, 0x00, 0x00, 0x00,"
//: /data "   0x0f, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00};"
//: /iconEnd
//: /port output Z @(33, 19) /r:0
//: /symbolEnd

//: /symbolBegin: 140716560
//: /iconBegin normal 815 5 5
//: /data "#define bitmap_width 28"
//: /data "#define bitmap_height 29"
//: /data "static unsigned char bitmap_bits[] = {"
//: /data "   0x03, 0x00, 0x00, 0x00, 0x0d, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00,"
//: /data "   0xc1, 0x00, 0x00, 0x00, 0x01, 0x03, 0x00, 0x00, 0x01, 0x0c, 0x00, 0x00,"
//: /data "   0x01, 0x30, 0x00, 0x00, 0x01, 0xc0, 0x00, 0x00, 0x01, 0x00, 0x03, 0x00,"
//: /data "   0x01, 0x00, 0x0c, 0x00, 0x01, 0x00, 0x30, 0x00, 0x01, 0xfc, 0xc0, 0x00,"
//: /data "   0x01, 0x04, 0x00, 0x03, 0x01, 0x04, 0x00, 0x0c, 0x01, 0x04, 0x00, 0x08,"
//: /data "   0x01, 0x04, 0x00, 0x0c, 0x01, 0x04, 0x00, 0x03, 0xf1, 0x07, 0xc0, 0x00,"
//: /data "   0x01, 0x00, 0x30, 0x00, 0x01, 0x00, 0x0c, 0x00, 0x01, 0x00, 0x03, 0x00,"
//: /data "   0x01, 0xc0, 0x00, 0x00, 0x01, 0x30, 0x00, 0x00, 0x01, 0x0c, 0x00, 0x00,"
//: /data "   0x01, 0x03, 0x00, 0x00, 0xc1, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00,"
//: /data "   0x0d, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00};"
//: /iconEnd
//: /iconBegin select 815 5 5
//: /data "#define bitmap_width 28"
//: /data "#define bitmap_height 29"
//: /data "static unsigned char bitmap_bits[] = {"
//: /data "   0x03, 0x00, 0x00, 0x00, 0x0f, 0x00, 0x00, 0x00, 0x3f, 0x00, 0x00, 0x00,"
//: /data "   0xf3, 0x00, 0x00, 0x00, 0xc3, 0x03, 0x00, 0x00, 0x03, 0x0f, 0x00, 0x00,"
//: /data "   0x03, 0x3c, 0x00, 0x00, 0x03, 0xf0, 0x00, 0x00, 0x03, 0xc0, 0x03, 0x00,"
//: /data "   0x03, 0x00, 0x0f, 0x00, 0x03, 0x00, 0x3c, 0x00, 0x03, 0xfc, 0xf1, 0x00,"
//: /data "   0x03, 0xfc, 0xc0, 0x03, 0x03, 0x0c, 0x00, 0x0f, 0x03, 0x0c, 0x00, 0x0c,"
//: /data "   0x03, 0x0c, 0x00, 0x0f, 0x03, 0x0c, 0xc0, 0x03, 0xf3, 0x0f, 0xf0, 0x00,"
//: /data "   0xf3, 0x07, 0x3c, 0x00, 0x03, 0x00, 0x0f, 0x00, 0x03, 0xc0, 0x03, 0x00,"
//: /data "   0x03, 0xf0, 0x00, 0x00, 0x03, 0x3c, 0x00, 0x00, 0x03, 0x0f, 0x00, 0x00,"
//: /data "   0xc3, 0x03, 0x00, 0x00, 0xf3, 0x00, 0x00, 0x00, 0x3f, 0x00, 0x00, 0x00,"
//: /data "   0x0f, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00};"
//: /iconEnd
//: /port input I @(4, 19) /r:2
//: /port output Z @(33, 19) /r:0
//: /symbolEnd

//: /netlistBegin main
module main;    //: root_module
supply0 w4;    //: /sn:0 {0}(463,273)(463,257)(479,257){1}
supply0 w0;    //: /sn:0 {0}(458,342)(458,326)(358,326){1}
supply0 w2;    //: /sn:0 {0}(357,271)(357,260)(343,260){1}
reg [7:0] w5;    //: /sn:0 {0}(255,203)(255,231)(303,231)(303,246){1}
wire [7:0] w7;    //: /sn:0 {0}(319,275)(319,311){1}
wire w3;    //: /sn:0 {0}(166,321)(282,321){1}
wire [7:0] w1;    //: /sn:0 {0}(319,332)(319,340){1}
//: {2}(321,342)(390,342)(390,219)(335,219)(335,246){3}
//: {4}(319,344)(319,425)(377,425)(377,412){5}
wire w8;    //: /sn:0 {0}(508,257)(580,257)(580,316)(358,316){1}
wire w9;    //: /sn:0 {0}(295,260)(280,260){1}
//: enddecls

  ONESHOT g4 (.I(w4), .Z(w8));   //: @(494, 257) /symbol:140716560 /sn:0 /w:[ 1 0 ]
  //: joint g8 (w1) @(319, 342) /w:[ 2 1 -1 4 ]
  _GGADD8 #(68, 70, 62, 64) g3 (.A(w5), .B(w1), .S(w7), .CI(w2), .CO(w9));   //: @(319,262) /sn:0 /w:[ 1 3 0 1 0 ]
  //: GROUND g2 (w0) @(458,348) /sn:0 /w:[ 0 ]
  //: GROUND g1 (w4) @(463,279) /sn:0 /w:[ 0 ]
  //: DIP g6 (w5) @(255,193) /sn:0 /w:[ 0 ] /st:1
  OSCILLATOR #(.HZ(100)) g9 (.Z(w3));   //: @(152, 321) /symbol:140716048 /sn:0 /w:[ 0 ]
  //: LED g7 (w1) @(377,405) /sn:0 /w:[ 5 ] /type:2
  //: GROUND g5 (w2) @(357,277) /sn:0 /w:[ 0 ]
  _GGREG8 #(10, 10, 20) g0 (.Q(w1), .D(w7), .EN(w0), .CLR(w8), .CK(w3));   //: @(319,321) /sn:0 /w:[ 0 1 1 1 1 ]

endmodule
//: /netlistEnd

//: /builtinBegin
module _GGREG8 #(.Dsetup(1), .Dhold(1), .Dck_q(1)) (Q, D, EN, CLR, CK);
input CK,EN,CLR;
input [7:0] D;
output [7:0] Q;
reg [7:0] Qreg;

  assign #Dck_q Q = Qreg;

  always @(posedge CK or negedge CLR)
    begin
    if (CLR === 1'b0)
      Qreg = 8'h0;
    else if (CK === 1'b1 && EN === 1'b0)
      Qreg = D;
    end

endmodule
//: /builtinEnd

//: /builtinBegin
module _GGADD8 #(.Dab_s(1), .Dab_co(1), .Dci_s(1), .Dci_co(1)) (A, B, S, CI, CO);
input CI;
output CO;
input [7:0] A,B;
output [7:0] S;

  specify
    (A,B *> S) = Dab_s;
    (A,B *> CO) = Dab_co;
    (CI *> S) = Dci_s;
    (CI *> CO) = Dci_co;
  endspecify

  assign {CO,S} = A + B + CI;

endmodule
//: /builtinEnd
