// 1 bit comparator 

module comp10(
        input x,
        input y,
        output z);

    assign z = (~x & ~y) | (x & y);

endmodule