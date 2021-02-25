module full_adder(a,b,c,sum,cout);
  input a,b,c;
  output sum, cout;
  reg sum, cout;
  always @(a or b or c)
  begin
    if (a==0 && b==0 && c==0)
      begin
        sum = 1'b0;
        cout = 1'b0;
      end
    
    else if (a==0 && b==0 && c==1)
      begin
        sum = 1'b1;
        cout = 1'b0;
      end
      
    else if (a==0 && b==1 && c==0)
      begin
        sum = 1'b1;
        cout = 1'b0;
      end
      
    else if (a==0 && b==1 && c==1)
      begin
        sum = 1'b0;
        cout = 1'b1;
      end
      
    else if (a==1 && b==0 && c==0)
      begin
        sum = 1'b1;
        cout = 1'b0;
      end
      
    else if (a==1 && b==0 && c==1)
      begin
        sum = 1'b0;
        cout = 1'b1;
      end
      
    else if (a==1 && b==1 && c==0)
      begin
        sum = 1'b0;
        cout = 1'b1;
      end
      
    else if (a==1 && b==1 && c==1)
      begin
        sum = 1'b1;
        cout = 1'b1;
      end
  end
endmodule
      
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  