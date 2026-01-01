module rca4 (cout, sum, A, B, cin);

    input [3:0] A, B;
    input cin;

    output [3:0] sum;
    output cout;

    fa fa1 (c0, sum[0], A[0], B[0], cin);
    fa fa2 (c1, sum[1], A[1], B[1], c0);
    fa fa3 (c2, sum[2], A[2], B[2], c1);
    fa fa4 (cout, sum[3], A[3], B[3], c2);

endmodule