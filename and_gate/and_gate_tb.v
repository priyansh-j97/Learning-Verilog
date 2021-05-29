`timescale 1ms/1ms
`include "and_gate.v"

module and_gate_tb;
    reg A;
    reg B;
    wire C;

    and_gate uut(A,B,C);

    initial begin
        $dumpfile("and_gate_tb.vcd");
        $dumpvars(0,and_gate_tb);

        A=0;
        B=0;
        #20;

        A=0;
        B=1;
        #20;

        A=1;
        B=0;
        #20;

        A=1;
        B=1;
        #20;

        $display("Test Successful!");

    end
endmodule