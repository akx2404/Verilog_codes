module Prob(output F, input A, B, C, D);
assign F = (~A&~B&~C&~D) | (~A&~B&~C&D) | (~A&~B&C&~D) | (~A&B&~C&~D) | (~A&B&~C&D) |(~A&B&C&~D)
 | (A&~B&~C&~D) | (A&~B&~C&D) | (A&~B&C&~D) | (A&~B&C&D) | (A&B&~C&D) |
(A&B&C&~D) | (A&B&C&D);
endmodule;

module tprob ();
wire F_a;
reg A, B, C, D;
integer k;
Prob M0 (F_a, A, B, C, D);
initial #200 $finish;
initial begin
k = 0;
#10 repeat (15) begin {A, B, C, D} = k; #10 k = k + 1; end
end
endmodule

