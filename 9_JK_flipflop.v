module jkff(j,k,q,qb,clk);
  input j,k,clk;
  output reg q, qb;
  always @(negedge clk)
  begin
    if (j==1 && k==0) begin q=1; qb=0; end
    else if (j==0 && k==1) begin q=0; qb=1; end
    else if (j==0 && k==0) begin q<=q; qb<=qb; end
    else if (j==1 && k==1) begin q<=~q; qb<=~qb; end
  end
endmodule