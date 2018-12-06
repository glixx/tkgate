module top;

  reg a,b;
  wire c,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11;
  wire c12,c13,c14,c15;

  and (highz1, strong0) #2 g1(c,a,b);
  and (strong0, highz1) (c1,a,b);

  and (highz0, strong1) g2(c2,a,b), (c3,a,b);
  and (strong1, highz0) #3 (c4,a,b), g3(c5,a,b);

  and #4 (c6,a,b);
  and g4(c7,a,b);

  and (c8,a,b), g5(c9,a,b);
  and #5 g6(c10,a,b), (c11,a,b);

  or g7(c12,a);
  or g8(c13,a), (c14,b), g9(c15,a);

  initial
  begin
    $monitor($time, "\t%b, %b, c: %b %b %b %b %b %b %b %b %b %b %b %b",a,b,c,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11);
    #1 a = 1; b = 0;
  end

endmodule
