module Full_add(a,b,cin,sum,cout);
  output sum,cout;
  input a,b,cin;
  wire w1,w2,w3;
  xor g1(sum,cin,a,b);
  and g2(w1,a,b);
  and g3(w2,b,cin);
  and g4(w3,a,cin);
  or g5(cout,w1,w2,w3);
endmodule


module incdec_1bit(a0,b0,sum,carry,id);
  output sum,carry;
  input a0,b0,id; //b0 is always going to be 1
  wire cin;
  not g1(cin,id);
  xor g2(bnew,cin,b0);
  Full_add F1(.a(a0),.b(bnew),.cin(cin),.sum(sum),.cout(carry));
endmodule
