module or_gate(input [1:0] A, output B);
    or(B,A[1],A[0]);
endmodule