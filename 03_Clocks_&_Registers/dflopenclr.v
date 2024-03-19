module simpledflop(
    input clk,
    input a,
    input reset,
    input clear,
    input enable, 
    output reg p);

    always @ (posedge clk) begin
        if(reset) p <= 1'b0;
        else if (clear==1'b0) p <= 1'b0;
        else if (enable) p <= a;
    end 

endmodule