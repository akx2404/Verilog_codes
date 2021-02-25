module decoder38(inp,Data_out,enable);
    input [2:0] inp;
    input enable;
    output [7:0] Data_out;
    reg [7:0] Data_out;

    
    always @(inp or enable)
    if(enable==1)   
      case (inp)   
        3'b000 : Data_out = 8'b01111111;
        3'b001 : Data_out = 8'b10111111;
        3'b010 : Data_out = 8'b11011111;
        3'b011 : Data_out = 8'b11101111;
        3'b100 : Data_out = 8'b11110111;
        3'b101 : Data_out = 8'b11111011;
        3'b110 : Data_out = 8'b11111101;
        3'b111 : Data_out = 8'b11111110;
      endcase
    else if(enable ==0)
      Data_out = 8'b11111111; 
      
endmodule



module task4(o,i);
input [3:0]i;
output o;
wire [7:0]w,k;
decoder3to8 a1(i[2:0],w[7:0],~i[3]);
decoder3to8 a2(i[2:0],k[7:0],i[3]);
and g1(o,w[1],w[2],w[4],w[5],k[1],k[2],k[4],k[5]);


endmodule
