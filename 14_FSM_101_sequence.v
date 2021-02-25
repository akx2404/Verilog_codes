module sequence101(reset, clk, din, dout);
  input reset ,clk,din;
  output dout;
  reg dout;
  
  parameter size=2;
  parameter S0=2'b00, S1=2'b01, S2=2'b10;
  
  reg [size-1:0] state;
  
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      dout <= 1'b0;
      state <= S0;
    end
    else begin
      case(state)
        S0: begin
          if(din) begin
            state <= S1;
            dout <=1'b0;
          end
          else
            dout <=1'b0;
        end
        S1: begin
          if(~din) begin
            state <= S2;
            dout <=1'b0;
          end
          else
            dout <=1'b0;
        end
        S2: begin
          if(din) begin
            state <= S1;
            dout <=1'b1;
          end
          else begin
            state <= S1;
            dout <=1'b0;
          end
        end
      endcase
    end
  end

endmodule
            
            
  