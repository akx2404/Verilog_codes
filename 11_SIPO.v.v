module d_ff(clk,rst,d,q);
  input d;
  input clk,rst;
  output q;
  reg q;
  always@(posedge clk)
  begin
  if(rst==1'b1)
    q<=1'b0;
  else
    q<=d;
  end
endmodule

module sipo(in,clk,rst,q);
  input in, clk, rst;
  output [2:0]q;
  wire ad,bd,cd;
  
  dff f1(.d(in),.q(q[0]),.qb(ad),.clk(clk),.reset(rst));
  dff f2(.d(q[0]),.q(q[1]),.qb(bd),.clk(clk),.reset(rst));
  dff f3(.d(q[1]),.q(q[2]),.qb(cd),.clk(clk),.reset(rst));
  
endmodule