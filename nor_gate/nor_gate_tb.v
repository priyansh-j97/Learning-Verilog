`timescale 1ms/1ms
`include "nor_gate.v"

module nor_gate_tb;
    reg [1:0] A;
    wire B;

    nor_gate uut(A,B);

    initial begin
        $dumpfile("nor_gate_tb.vcd");
        $dumpvars(0,nor_gate_tb);

        A=2'b00;
        #20;

        A=2'b01;
        #20;

        A=2'b10;
        #20;

        A=2'b11;
        #20;

        $display("Test Successful!");
    end

endmodule