module dff(d,q,qb,clk,reset); 
  input d, clk, reset; 
  output reg q, qb; 
  always@(posedge clk) 
  begin
    if(reset == 1)
      begin
        q <= 0;
        qb <= 1;
      end
    else
      begin
        q <= d; 
        qb <= !d;
      end 
  end 
endmodule



module sequence101_dff(x, clk, z, rst);
  input x, clk, rst;
  output z;
  wire a,b,bd,ad,bx,xx;
  not g0(xx,x);
  and g1(bx,b,xx);
  
  dff f2(.d(x),.q(b),.qb(bd),.clk(clk),.reset(rst));
  dff f1(.d(bx),.q(a),.qb(ad),.clk(clk),.reset(rst));
  
  and g2(z,a,x);
  
endmodule