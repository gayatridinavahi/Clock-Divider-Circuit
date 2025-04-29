module tb;
  reg clk,rst;
  wire clkout;
  parameter M = 5;
  parameter O = 4;
  
  clock_div #(.N(M),.P(O)) KABALI (clk,rst,clkout); 
  
  always #5 clk =! clk;
  
  initial
    begin
      clk=0;
      rst=0;
      #2;
      rst=1;
      #2;
      rst=0;
      #2000;
      $finish;
    end 
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
  
endmodule
