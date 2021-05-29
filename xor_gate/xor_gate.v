module xor_gate(input [1:0] A, output B);
    xor(B,A[1],A[0]);
endmodule