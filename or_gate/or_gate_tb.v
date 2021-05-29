`timescale 1ms/1ms
`include "or_gate.v"

module or_gate_tb;
    reg [1:0] A;
    wire B;

    or_gate uut(A,B);

    initial begin
        $dumpfile("or_gate_tb.vcd");
        $dumpvars(0,or_gate_tb);

        A=2'b00;
        #20;

        A=2'b01;
        #20;

        A=2'b10;
        #20

        A=2'b11;
        #20;

        $display("Test Completed!");
    end

endmodule