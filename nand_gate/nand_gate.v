module nand_gate(input [1:0] A, output B);
    nand(B,A[1],A[0]);
endmodule