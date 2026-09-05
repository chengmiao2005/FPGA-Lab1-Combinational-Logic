module compare(
    input  wire A,   
    input  wire B,  
    output wire LED1, 
    output wire LED2, 
    output wire LED3  
);

assign LED1 = (A < B) ? 1'b1 : 1'b0;
assign LED2 = (A == B) ? 1'b1 : 1'b0;
assign LED3 = (A > B) ? 1'b1 : 1'b0;

endmodule
    
