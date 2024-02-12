`timescale 1ns/1ps  
`include "comp20.v"

module comp20tb;
    reg [1:0]x;
    reg [1:0]y;
    wire z;

    // Instantiate the unit under test
    comp20 uut( .x(x), .y(y), .z(z));

    initial begin
        $dumpfile("dumpCom20.vcd");
        $dumpvars;

        x=2'b00; y=2'b00;
        #20 y=2'b01;
        #20 y=2'b10;
        #20 y=2'b11;

        #20 x=2'b01; y=2'b00;
        #20 y=2'b01;
        #20 y=2'b10;
        #20 y=2'b11;

        #20 x=2'b10; y=2'b00;
        #20 y=2'b01;
        #20 y=2'b10;
        #20 y=2'b11;

        #20 x=2'b11; y=2'b00;
        #20 y=2'b01;
        #20 y=2'b10;
        #20 y=2'b11;

    end

initial begin
    $monitor("time =%2d x=%2b y=%2b z=%b", $time,x,y,z);
end

endmodule