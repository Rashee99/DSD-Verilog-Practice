// 1 bit comparator
// Behavioural Modeling 

module comp12(
    input x,
    input y,
    output reg z);

    always @(x or y) begin
        if (x==y)begin
            assign z=1;
        end
        else begin
            assign z=0;
        end
    end
endmodule