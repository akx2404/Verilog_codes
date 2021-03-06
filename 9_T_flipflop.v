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