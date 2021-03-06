module h_sub (a,b, diff, borrow);
  
  input a,b;
  wire s;
  output diff, borrow;  
  
  xor g1(diff, a, b);
  not g2(s,a);
  and g3(borrow, s, b);
  
endmodule
  
