module csea4 (cout, sum, A, B, cin);

    input [3:0] A, B;
    input cin;

    output [3:0] sum;
    output cout;

    wire [3:0] sum0, sum1;

    rca4 r1 (c0, sum0, A, B, 1'b0);
    rca4 r2 (c1, sum1, A, B, 1'b1);

    mux21x4 m1(sum, sum0, sum1, cin);

    and a1 (w0, c1, cin);
    or o1 (cout, w0, c0);

endmodule