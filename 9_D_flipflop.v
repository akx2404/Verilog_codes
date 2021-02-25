module dff(d,q,qb,clk);
  input d,clk;
  output reg q, qb;
  
  initial
  begin
    q <= 0;
    qb <= 1;
  end
  
  always @(negedge clk)
  begin
    if (d==0) begin q<=0; qb <= 1; end
    else if (d==1) begin q<=1; qb<=0; end
  end
endmodule