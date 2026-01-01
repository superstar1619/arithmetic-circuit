module rca4s (cout, sum, A, B, subtract);

    input [3:0] A, B;
    input subtract;

    output [3:0] sum;
    output cout;

    xor x1 (w0, B[0], subtract);
    fa fa1 (c0, sum[0], A[0], w0, subtract);
    xor x2 (w1, B[1], subtract);
    fa fa2 (c1, sum[1], A[1], w1, c0);
    xor x3 (w2, B[2], subtract);
    fa fa3 (c2, sum[2], A[2], w2, c1);
    xor x4 (w3, B[3], subtract);
    fa fa4 (cout, sum[3], A[3], w3, c2);

endmodule