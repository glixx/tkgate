//: version "2.2"
//: property encoding = "iso8859-1"
//: property locale = "en"
//: property prefix = "_GG"
//: property title = "Ocillators and One-Shots with absolute time delays"

`timescale 1ns/1ns


//: /symbolBegin: 688686768
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

//: /symbolBegin: 688686928
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
wire w0;    //: /sn:0 {0}(100,82)(115,82){1}
wire w1;    //: /sn:0 {0}(73,131)(58,131){1}
wire w2;    //: /sn:0 {0}(102,131)(117,131){1}
//: enddecls

  ONESHOT g1 (.I(w1), .Z(w2));   //: @(88, 131) /symbol:688686928 /sn:0 /w:[ 0 0 ]
  OSCILLATOR g0 (.Z(w0));   //: @(86, 82) /symbol:688686768 /sn:0 /w:[ 0 ]

endmodule
//: /netlistEnd

//: /hdlBegin OSCILLATOR
//: /symbol:688686768
//: interface  /sz:(40, 40) /bd:[ ]
//: enddecls
module OSCILLATOR #(.HZ(1000)) (Z);
  parameter HZ0 = HZ/2;
  parameter HZ1 = HZ - HZ0;
  output Z;
  reg Z;
  time t;

  initial
    t = 0;

  always
    begin
      Z = 1'b0;
      if (t == 0) t = $tkg$systime;
      t = t + HZ0;
      $tkg$waituntil(t);
      Z = 1'b1;
      t = t + HZ1;
      $tkg$waituntil(t);
    end
  

endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin ONESHOT
//: /symbol:688686928
//: interface  /sz:(40, 40) /bd:[ ]
//: enddecls
module ONESHOT #(.HZ(1000)) (I,Z);
  input I;
  output Z;
  reg Z;

  always
    begin
      wait (I == 1'b0);
      Z = 1'b0;
      $tkg$wait(HZ);
      Z = 1'b1;
      wait (I == 1'b1);
    end
  

endmodule
//: /hdlEnd


`timescale 1ns/1ns


`timescale 1ns/1ns

