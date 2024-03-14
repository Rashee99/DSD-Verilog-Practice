module simpledflop(
    input clk,
    input a,
    output reg p);

    always @ (posedge clk) begin
        p <= a;
    end 

endmodule