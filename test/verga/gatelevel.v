module top;

    reg a,b;
    tri c,trash;

    SN7401 g1(a,a,a,a, b,b,b,b, c,trash,trash,trash);

    initial
      begin
        $monitor("%d\t%b %b %b",$time,a,b,c);
        a = 0; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
      end

endmodule

module SN7401(A1, A2, A3, A4, B1, B2, B3, B4, Y1, Y2, Y3, Y4);

  input  A1, A2, A3, A4, B1, B2, B3, B4;
  output Y1, Y2, Y3, Y4;

  nand (highz1,strong0) #1 g1(Y1, A1, B1);
  nand (highz1,strong0) #1 g2(Y2, A2, B2);
  nand (highz1,strong0) #1 g3(Y3, A3, B3);
  nand (highz1,strong0) #1 g4(Y4, A4, B4);

endmodule
