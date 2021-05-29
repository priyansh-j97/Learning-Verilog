`timescale 1ms/1ms
`include "not_gate.v"

module not_gate_tb;
    reg A;
    wire B;

    not_gate uut(A,B);

    initial begin
        $dumpfile("not_gate_tb.vcd");
        $dumpvars(0,not_gate_tb);

        A=0;
        #20;

        A=1;
        #20;

        $display("Test Completed!");
    end

endmodule