module ex03 (
    input [3:0]A,
    input [3:0]B,
    output [5:0]P);

 assign P = {B[3:2], B[1] & A[3], B[0] & A[2], A[1:0]};
 
 endmodule