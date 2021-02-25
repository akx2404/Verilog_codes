module tff(t,clk,rst,q,qb);
  input t,clk, rst;
  output reg q, qb;
  always @(posedge clk)
  begin
    if (rst == 0)
      q <=0;
    else
      if (t==0) begin q<=q; qb<=qb; end
      else if (t==1) begin q<=~q; qb<=~qb; end
  end
endmodule
  
  
module fat(e, clk, rst, y);
  input e, clk, rst;
  output y;
  wire clk, q1, q2, q4, q8, qb1, qb2, qb4, qb8, p, q;
  
  and g1(e2, q1, qb8, e);
  and g2(e3, q1, q2, e);
  and g3(p, q8, q1, e);
  and g4(q, q1, q4, q2, e);
  or g5(e4, q, p);
    
  t_ff x1(.t(e),.clk(clk),.rst(rst),.q(q1),.qb(qb1));
  t_ff x2(.t(e2),.clk(clk),.rst(rst),.q(q2),.qb(qb2));
  t_ff x3(.t(e3),.clk(clk),.rst(rst),.q(q4),.qb(qb4));
  t_ff x4(.t(e4),.clk(clk),.rst(rst),.q(q8),.qb(qb8));
  
  and g6(y, q1, q8);
  
endmodule