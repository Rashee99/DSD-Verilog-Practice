`timescale 1ns/1ps  
`include "ex03.v"

module ex03tb;
    reg [3:0]A;
    reg [3:0]B;
    reg C;
    wire [3:0]P;

    // Instantiate the unit under test
    ex03 uut(.A(A), .B(B), .C(C), .P(P));

    initial begin
        $dumpfile("dumpEx03.vcd");
        $dumpvars;

        A=4'b0000; B=4'b0000; C=0;
        #20 C=1'b1;
        A=4'b0001; B=4'b0000; C=0;
        #20 C=1'b1;
        #20
    end

initial begin
    $monitor("time =%2d A=%4b B=%4b C=%b P=%4b", $time,A,B,C,P);
end

endmodule