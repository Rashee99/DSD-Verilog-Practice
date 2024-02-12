`timescale 1ps/1ps
`include "ex01.v"

module ex01tb;
    reg A;
    reg B;
    reg C;
    wire P;
    wire Q;

    ex01 uut  (.A(A), .B(B), .C(C), .P(P), .Q(Q));

    initial begin
        $dumpfile("DumpEx01.vcd");
        $dumpvars();

        A = 0; B = 0; C = 0; 
        #20 C = 1;
        #20 C = 0; B=1;
        #20 C = 1;
        #20 C = 0; B=0; A=1;
        #20 C = 1;
        #20 C = 0; B=1;
        #20 C = 1;
    end

    initial begin
    $monitor("time =%2d A=%b B=%b C=%b P=%b Q=%b", $time,A,B,C,P,Q);
end

endmodule