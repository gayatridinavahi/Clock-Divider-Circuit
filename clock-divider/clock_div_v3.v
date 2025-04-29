module clock_div #(parameter N = 3, parameter P = 3)(clk,rst,clkout); //duty cycle=50%
  input clk,rst;
  output clkout;  
  
  reg [N-1:0] icnt;
  //reg ff1,ff2;
  reg div1,div2;
  
  
  always @(posedge clk or posedge rst)
    begin
      if (rst) icnt <= 0;
      else icnt <= (icnt== N-1) ? 0 : icnt + 1;
    end 
  
 always @(posedge clk or posedge rst)
    begin
      if (rst) div1 <= 0;
      else if (icnt==1) div1 <= ~div1;  //fixed
      else div1 <= div1;
    end 
  
  always @(negedge clk or posedge rst)
    begin
      if (rst) div2 <= 0;
      else if (icnt==P) div2 <= ~div2;              ///keep changing here for different divisions.
      else div2 <= div2;
    end 
  
  assign clkout = div1 ^ div2;
  
  
endmodule
                           ////////// Negedge clock flip flop to be changed
                                                    //for M=3, icnt==0
                                                    //for M=5, icnt==4
                                                    //for M=7, icnt==5
                                                    //for M=9, icnt==6
                                                    //for M=11, icnt==7
                                                    //for M=13, icnt==8
                                                    //and so on.
  
  
