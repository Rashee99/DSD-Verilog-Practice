module statemachine(
    input clk,
    input reset,
    input go,
    input kill,
    output reg done);

    reg[1:0]state_reg;
    reg[6:0]count;

    // State machine parameters
    parameter idel =2'b00;
    parameter active = 2'b01;
    parameter finish = 2'b10;
    parameter abort = 2'b11;

    // State machine
    always @(posedge clk or posedge reset) begin
        if(reset) state_reg = idel;
        else
        case(state_reg)

        idel: if(go) state_reg <= active;
        
        active: if(kill) state_reg <= abort;
        else if (count == 7'd100) state_reg <= finish;

        finish: state_reg <= idel;

        abort: if(kill) state_reg <= idel;

        default: state_reg <= idel;
        
        endcase 
    end

    // Counter
    always @(posedge clk or posedge reset) begin
        if (reset) count <= 7'h00;
        else if (state_reg == finish || state_reg  == abort) count <=7'h00;
        else if (state_reg == active) count <= count + 1;

    end

    // Done register
    always @(posedge clk or posedge reset) begin
        if (reset) done <= 1'b0 ;
        else if (state_reg == finish) done = 1'b1 ;
        else done = 1'b0 ;
    end

endmodule