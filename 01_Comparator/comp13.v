// 1-bit comparator
// User Defined Premitive 

module comp13(
    input x,
    input y,
    output z);

    compare c0(z,x,y);
endmodule

primitive compare(output out, input in1, input in2);

    table
    0 0 : 1;
    0 1 : 1;
    1 0 : 1;
    1 1 : 1;
    endtable

endprimitive