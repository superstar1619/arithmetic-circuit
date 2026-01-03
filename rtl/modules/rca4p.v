module rca4p (cout, sum, A, B, cin);

    input [3:0] A, B;
    input cin;

    output [3:0] sum;
    output cout;

    wire [3:0] p;

    pfa pfa1 (c0, p[0], sum[0], A[0], B[0], cin);
    pfa pfa2 (c1, p[1], sum[1], A[1], B[1], c0);
    pfa pfa3 (c2, p[2], sum[2], A[2], B[2], c1);
    pfa pfa4 (c3, p[3], sum[3], A[3], B[3], c2);

    and a1 (w, p[0], p[1], p[2], p[3], cin);
    or o1 (cout, w, c3);

endmodule