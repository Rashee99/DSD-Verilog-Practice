module simpledflop(
    input clk,
    input a,
    input reset,
    output reg p);

    always @ (posedge clk) begin
        if(reset) p <= 1'b0 ;
        else p <= a;
    end 

endmodule