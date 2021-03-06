module Full_adder(a,b,cin,sum,cout);
  output sum,cout;
  input a,b,cin;
  wire c,d,e;
  xor x1(sum,cin,a,b);
  and x2(c,a,b);
  and x3(d,b,cin);
  and x4(e,a,cin);
  or x5(cout,c,d,e);
endmodule

module Inc_Dec_4bit(a0,a1,a2,a3,b0,b1,b2,b3,s0,s1,s2,s3,cout,m);
  output s0,s1,s2,s3,cout;
  input a0,a1,a2,a3,b0,b1,b2,b3,m;
  wire c0,c1,c2,cin,bin0,bin1,bin2,bin3;
  not g(cin,m);
  xor g0(bin0, cin , b0);
  xor g1(bin1, cin , b1);
  xor g2(bin2, cin , b2);
  xor g3(bin3, cin , b3);
  Full_adder F1(.a(a0),.b(bin0),.cin(cin),.sum(s0),.cout(c0));
  Full_adder F2(.a(a1),.b(bin1),.cin(c0),.sum(s1),.cout(c1));
  Full_adder F3(.a(a2),.b(bin2),.cin(c1),.sum(s2),.cout(c2));
  Full_adder F4(.a(a3),.b(bin3),.cin(c2),.sum(s3),.cout(cout));
endmodule