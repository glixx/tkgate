// From http://www.see.ed.ac.uk/~gerard/Teach/Verilog/manual

module triDriver(bus, drive, value);
  inout [3:0] bus;
  input       drive;
  input [3:0] value;

  assign #2 bus = (drive == 1) ? value : 4'bz;

endmodule // triDriver

module myTest;
  wire [3:0] bus;
  reg drive0, drive1, drive2;

  integer    i;

  triDriver mod1 (bus, drive0, i[3:0]);
  triDriver mod2 (bus, drive1, 4'hf);
  triDriver mod3 (bus, drive2, 4'h0);

  initial
    begin
      for (i = 0; i < 12; i = i + 1) begin
        #5 {drive2, drive1, drive0} = i;
        #5 $display ($time,"  %b %b %d", i[2:0], bus, bus);
      end
      $finish;
    end // initial begin

endmodule // myTest
