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

module sequence1111_dff(x, clk, rst, out);
  input x, clk, rst;
  output out;
  wire an,bn,cn,bxorc,d1,d2,d3,ad,bd,cd,w1,w2;
  
  not g01(cn,c);
  
  not g11(bn,b);
  and g12(w1,a,cn,x);
  and g13(w2,b,c,x);
  or g14(d1,w1,w2);
  
  xor g21(bxorc,b,c);
  and g22(d2,x,bxorc);
  
  not g31(an,a);
  and g32(d3,an,cn,x);
  
  dff f1(.d(d1),.q(a),.qb(ad),.clk(clk),.reset(rst));
  dff f2(.d(d2),.q(b),.qb(bd),.clk(clk),.reset(rst));
  dff f3(.d(d3),.q(c),.qb(cd),.clk(clk),.reset(rst));
  
  not g41(an,a);
  and g42(out, a, bn);
endmodule
  
  
