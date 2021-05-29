`timescale 1ms/1ms
`include "nand_gate.v"

module nand_gate_tb;
    reg [1:0] A;
    wire B;

    nand_gate uut(A,B);

    initial begin
        $dumpfile("nand_gate_tb.vcd");
        $dumpvars(0,nand_gate_tb);

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