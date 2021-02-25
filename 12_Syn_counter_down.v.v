module down_count (clk, reset, out);
input clk, reset;
output[3:0] out;
reg [3:0] counter_up;

// up counter
always @(posedge clk)
begin
if(reset)
 counter_up <= 4'd15;
else
 counter_up <= counter_up - 4'd1;
end 
assign out = counter_up;
endmodule

module downcount_testbench();
reg clk, reset;
wire [3:0] out;

down_count dut(clk, reset, out);
initial begin 
clk=0;
forever #5 clk=~clk;
end
initial begin
reset=1;
#20;
reset=0;
end
endmodule

