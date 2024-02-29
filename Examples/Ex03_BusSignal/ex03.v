// Bus signal example

module ex03 (
    input [3:0]A,
    input [3:0]B,
    input C,
    output [3:0]P);

    wire[3:0]c_bus;

    assign c_bus = {4{C}};
    assign P = (~c_bus & A) | (c_bus & B);

    
endmodule