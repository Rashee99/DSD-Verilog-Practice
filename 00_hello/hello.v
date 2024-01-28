// The first verilog code
module hello;

    // init 
    initial begin
        $monitor("Hello, World");
        $finish;
    end

endmodule