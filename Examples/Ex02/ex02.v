module ex02(
    input A,
    input B,
    input C,
    output P,
    output Q);

    assign P = (A & B & C);
    assign Q = ((A & B) + C);

endmodule