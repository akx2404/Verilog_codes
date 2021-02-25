module TFF_bh(T,Q,Q0,Ck);
  input T,Ck;
  output reg Q,Q0;
  
  initial
  begin
    Q=0;
    Q0=1;
  end
  always @(posedge Ck)
  begin
    if(T==0)
      begin
      Q <= Q;
      Q0 <= Q0;
      end
      
    else if(T==1)
    begin
      Q <= ~Q;
      Q0 <= ~Q0;
    end
    
  end
endmodule

module sequence1001(clk,x,y);
input clk,x;
output y;
wire x0,a,a0,b,b0,TA,TB,p,q,r,s,t;

TFF_bh t1(.T(TA),.Q(a),.Q0(a0),.Ck(clk));
TFF_bh t2(.T(TB),.Q(b),.Q0(b0),.Ck(clk));

not g1(x0,x);
and g2(p,a,x);
and g3(q,x0,b);
and g4(r,a,b0);
and g5(s,x,b0);
and g6(t,b,x0);
or g7(TA,p,q);
or g8(TB,r,s,t);
and g9(y,a,b,x);

endmodule
