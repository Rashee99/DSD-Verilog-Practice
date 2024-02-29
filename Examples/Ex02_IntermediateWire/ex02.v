// Intermediate wire example

module ex02(
    input A,
    input B,
    input C,
    output P,
    output Q);

    wire in; // Intermediate Wire 

    assign in = A & B;
    assign P = in & C;
    assign Q = in + C;

endmodule