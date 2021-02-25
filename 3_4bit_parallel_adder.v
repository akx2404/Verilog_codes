module FA(a,b,cin,sum,cout);
  output sum,cout;
  input a,b,cin;
  wire c,d,e;
  xor g1(sum,cin,a,b);
  and g2(c,a,b);
  and g3(d,b,cin);
  and g4(e,a,cin);
  or g5(cout,c,d,e);
endmodule

module paralleladder(a0,a1,a2,a3,b0,b1,b2,b3,s0,s1,s2,s3,cout,cin);
  output s0,s1,s2,s3,cout;
  input a0,a1,a2,a3,b0,b1,b2,b3,cin;
  wire c0,c1,c2;
  FA FA1(.a(a0),.b(b0),.cin(cin),.sum(s0),.cout(c0));
  FA FA2(.a(a1),.b(b1),.cin(c0),.sum(s1),.cout(c1));
  FA FA3(.a(a2),.b(b2),.cin(c1),.sum(s2),.cout(c2));
  FA FA4(.a(a3),.b(b3),.cin(c2),.sum(s3),.cout(cout));
endmodule
