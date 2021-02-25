module siso(in,clock,out);
  input in, clock;
  output out;
  reg q0,q1,q2,q3;
  assign out = q3;
  always @(posedge clock)begin
    q3<=q2;
    q2<=q1;
    q1<=q0;
    q0<=in;
  end
endmodule
