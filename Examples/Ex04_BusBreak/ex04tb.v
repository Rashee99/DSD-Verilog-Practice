`timescale 1ns/1ps  
`include "ex04.v"

module ex04tb;
    reg [3:0]A;
    reg [3:0]B;
    reg C;
    wire [3:0]P;

    // Instantiate the unit under test
    ex04 uut(.A(A), .B(B), .C(C), .P(P));

    initial begin
        $dumpfile("dumpEx04.vcd");
        $dumpvars;

        A=4'b0000; B=4'b0000; 
        #20 A=4'b0001;
        B=4'b0001; 
        #20 
    end

initial begin
    $monitor("time =%2d A=%2b B=%2b P=%2b", $time,A,B,P);
end

endmodule