module RSff(r,s,q,qb,clk);
  input r,s,clk;
  output reg q, qb;
  always @(negedge clk)
  begin
    if (s==1) begin q=1; qb=0; end
    else if (r==1) begin q=0; qb=1; end
    else if (s==0 && r==0) begin q<=q; qb<=qb; end
  end
endmodule


