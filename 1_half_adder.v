module half_add (a,b, sum, carry);
  
  input a,b;
  output sum, carry;
  
  xor g1(sum, a, b);
  and g2(carry, a, b);
  
endmodule
