module up_count_syn(clk,reset,out);
  input clk, reset;
  output[3:0]out;
  reg [3:0]temp;
  always@(posedge clk)
  begin
    if(reset)
      temp <= 4'd0;
    else
      temp <= temp +4'd1;
  end
  assign out = temp;
endmodule

module upcount_testbench();
  reg clk, reset;
  wire [3:0] out;

  up_count_syn dut(clk, reset, out);
  initial begin 
  clk=0;
  forever #5 clk=~clk;
  end
  initial begin
    reset=1;
    #20;
    reset=0;
  end
  initial
  begin
    x=0; y=0;
    #20 x=1; y=1;
    #10 x=0; y=1;
    #30 x=1; y=0;
    #20 $stop;
    $finish;
  end
endmodule 
