module xnor_gate(input [1:0] A, output B);
    xnor(B,A[1],A[0]);
endmodule