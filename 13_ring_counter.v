module dff(d,q,clk);
  input d,clk;
  output reg q;
  initial
  begin
    q = 0;
  end
  
  always @(negedge clk)
  begin
    if (d==0) begin q=0; end
    else if (d==1) begin q=1; end
  end
endmodule

module ring_counter(clk, out);
  input clk;
  output [3:0]out;
  
  dff d1(.d(out[3]),.q(out[0]),.clk(clk));
  dff d2(.d(out[0]),.q(out[1]),.clk(clk));
  dff d3(.d(out[1]),.q(out[2]),.clk(clk));
  dff d4(.d(out[2]),.q(out[3]),.clk(clk));
  
endmodule

