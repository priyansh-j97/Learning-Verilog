`timescale 1ms/1ms
`include "xor_gate.v"

module xor_gate_tb;
    reg [1:0] A;
    wire B;

    xor_gate uut(A,B);

    initial begin
        $dumpfile("xor_gate_tb.vcd");
        $dumpvars(0,xor_gate_tb);

        A=2'b00;
        #20;

        A=2'b01;
        #20;

        A=2'b10;
        #20;

        A=2'b11;
        #20;

        $display("Test Complete!");
    end
endmodule