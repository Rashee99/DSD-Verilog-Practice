// 1 bit comparator
// Gate Level Modeling 

module comp11( 
    input x,
    input y,
    output z); 
    
    wire xay, nx, ny, nxany ;

    and (xay, x, y); // Correcting the AND gate instantiation
    not (nx, x);
    not (ny, y);
    and (nxany, nx, ny); // Connecting nx and ny to nxany
    or (z, xay, nxany); // Correcting the OR gate instantiation

endmodule
