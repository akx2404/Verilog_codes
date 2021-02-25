module ckt3(a,b,out);
  input a,b;
  output out;
  
  and g1(out, a, b);
endmodule


module ckt3_tb;
  reg x,y;
  wire o;
  
  ckt3 a1(.a(x),.b(y),.out(o));
  initial
  begin
    x=0; y=0;
    #20 x=1; y=1;
    #10 x=0; y=1;
    #30 x=1; y=0;
    #20 $stop;
    $finish;
  end
endmodule
  
