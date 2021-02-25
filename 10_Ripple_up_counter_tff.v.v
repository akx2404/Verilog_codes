module t_ff(t,clk,rst,q,qb);
  input t,clk, rst;
  output reg q, qb;
  always @(posedge clk)
  begin
    if (rst == 0)
      begin
        q <= 0;
        qb <= 1;
      end
    else
      if (t==0) begin q<=q; qb<=qb; end
      else if (t==1) begin q<=~q; qb<=~qb; end
  end
endmodule


module async_up_counter(tin, clk, rst, q, qb);
  input tin, clk, rst;
  output [3:0]q;
  output qb;
  wire clk1, clk2, clk3;
  
  t_ff x1(.t(tin),.clk(clk),.rst(rst),.q(q[0]),.qb(clk1));
  t_ff x2(.t(tin),.clk(clk1),.rst(rst),.q(q[1]),.qb(clk2));
  t_ff x3(.t(tin),.clk(clk2),.rst(rst),.q(q[2]),.qb(clk3));
  t_ff x4(.t(tin),.clk(clk3),.rst(rst),.q(q[3]),.qb(qb));
  
endmodule