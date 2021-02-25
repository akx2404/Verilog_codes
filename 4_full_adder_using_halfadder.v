module ha(a,b,c,s);
  input a,b;
  output c,s;
  wire a,b;
  assign s = a^b;
  assign c= a&b;
endmodule

  input x,y,z;
  output sum, carry;
  wire s0, c0, c1;
  ha ha1(.a(x),.b(y),.s(s0),.c(c0));
  ha ha2(.a(s0),.b(z),.s(sum),.c(c1));
  or o1(carry,c0,c1);
endmodule
   
  
