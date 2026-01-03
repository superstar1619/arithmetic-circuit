module csa32 (cout, sum, A, B, cin);

    input [31:0] A, B;
    input cin;

    output [31:0] sum;
    output cout;

    rca4 rca3_0 (c3, sum[3:0], A[3:0], B[3:0], cin);
    csa4 csa7_4 (c7, sum[7:4], A[7:4], B[7:4], c3);
    csa4 csa11_8 (c11, sum[11:8], A[11:8], B[11:8], c7);
    csa4 csa15_12 (c15, sum[15:12], A[15:12], B[15:12], c11);
    csa4 csa19_16 (c19, sum[19:16], A[19:16], B[19:16], c15);
    csa4 csa23_20 (c23, sum[23:20], A[23:20], B[23:20], c19);
    csa4 csa27_24 (c27, sum[27:24], A[27:24], B[27:24], c23);
    csa4 csa31_28 (cout, sum[31:28], A[31:28], B[31:28], c27);
    
endmodule