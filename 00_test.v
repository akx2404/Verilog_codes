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

module sequence1010_dff(x, clk, rst, out);
  input x, clk, rst;
  output out;
  wire an,bn,cn,xn,bxorc,d1,d2,d3,ad,bd,cd,w1,w2,w3,w4,w5;
  
  not g01(cn,c);
  not g11(bn,b);
  not g12(xn,x);
  not g13(an,a);
  
  and g17(d1,b,c,xn);
  
  and g20(w1,b,cn,x);
  and g21(w2,bn,c,xn);
  or g22(d2,w1,w2);
  
  and g30(w3,an,x);
  and g31(w4,bn,x);
  or g32(d3,w3,w4);
  
  dff f1(.d(d1),.q(a),.qb(ad),.clk(clk),.reset(rst));
  dff f2(.d(d2),.q(b),.qb(bd),.clk(clk),.reset(rst));
  dff f3(.d(d3),.q(c),.qb(cd),.clk(clk),.reset(rst));
  
  and g42(out, a, x);
endmodule