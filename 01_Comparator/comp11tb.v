`timescale 1ns/1ps  
`include "comp11.v"

module comp11tb;
    reg x;
    reg y;
    wire z;

    // Instantiate the unit under test
    comp11 uut( .x(x), .y(y), .z(z));

    initial begin
        $dumpfile("dump11.vcd");
        $dumpvars;

        x=0; y=0; 
        #20 x=1; // y=0
        #20 y=1; // x=1
        #20 x=0; // y=1
        #20 y=0; // x=0
        #40;     //40ns delay 
    end
initial begin
    $monitor("time =%2d x=%d y=%d z=%d", $time,x,y,z);
end

endmodule