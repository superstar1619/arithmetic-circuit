module csam32(Z, X, Y);

    input [31:0] X, Y;

    output [63:0] Z;

    wire [30:0] cout [30:0];
    wire [30:0] sum [30:0];
    wire [31:1] p;

    genvar i;

    mha31 mh0 (cout[0], sum[0], X[31:1], {31{Y[0]}}, X[30:0], {31{Y[1]}});
    and a0(Z[0], X[0], Y[0]);
    buf b0(Z[1], sum[0][0]);
    //assign p = Y & {31{X[31]}};
    generate
        for(i=1;i<=30;i=i+1)
        begin : genmfa31
            and a(p[i], Y[i], X[31]);
            mfa31 mf(cout[i], sum[i], X[30:0], {31{Y[i+1]}}, {p[i], sum[i-1][30:1]}, cout[i-1]);
            buf b(Z[i+1], sum[i][0]);
        end
    endgenerate

    and a1(p[31], Y[31], X[31]);

    rca31noi rca(Z[63], Z[62:32], {p[31], sum[30][30:1]}, cout[30]);

endmodule