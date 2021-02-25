module greyToBinary(a0,a1,a2,a3,g0,g1,g2,g3);
  output a0,a1,a2,a3;
  input g0,g1,g2,g3;
  
  assign a0=g0;
  assign a1=a0^g1;
  assign a2=a1^g2;
  assign a3=a2^g3;
  
endmodule
