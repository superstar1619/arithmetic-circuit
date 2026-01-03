module mux21x4 (Z, A, B, S);

    input [3:0] A, B;
    input S;

    output [3:0] Z;

    mux21 mux1 (Z[0], A[0], B[0], S);
    mux21 mux2 (Z[1], A[1], B[1], S);
    mux21 mux3 (Z[2], A[2], B[2], S);
    mux21 mux4 (Z[3], A[3], B[3], S);

endmodule