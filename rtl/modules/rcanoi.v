module rcanoi(cout, sum, A, B);

    parameter n = 32;
    input [n-1:0] A, B;
    output [n-1:0] sum;
    output cout;

    wire [n:1] c;

    genvar i;

    ha h0 (c[1], sum[0], A[0], B[0]);

    generate
        for(i=1;i<=n;i=i+1)
        begin : genfa
            fa f(c[i+1], sum[i], A[i], B[i], c[i]);
        end
    endgenerate

    buf b0(cout, c[n]);

endmodule