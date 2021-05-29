module nor_gate(input [1:0] A, output B);
    nor(B,A[1],A[0]);
endmodule