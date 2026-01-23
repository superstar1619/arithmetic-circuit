module array32tc(Z, X, Y);

    input [31:0] X, Y;

    output [63:0] Z;

    wire [30:0] cout [30:0];
    wire [30:0] sum [30:0];
    wire [31:1] p;

    wire [31:0] layer0;
    genvar i;

    generate
        for(i=0;i<=30;i=i+1)
        begin : genlayer0
            and a1(layer0[i], Y[0], X[i]);
        end        
    endgenerate

    nand n0(layer0[31], Y[0], X[31]);
    buf b0(Z[0], layer0[0]);

    array32tc_layer0 l0(cout[0], sum[0], {31{Y[1]}}, X[30:0], layer0[31:1]);
    buf b2(Z[1], sum[0][0]);

    generate
        for(i=1;i<=29;i=i+1)
        begin : genmfa31
            nand a(p[i], Y[i], X[31]);
            mfa31 mf(cout[i], sum[i], X[30:0], {31{Y[i+1]}}, {p[i], sum[i-1][30:1]}, cout[i-1]);
            buf b(Z[i+1], sum[i][0]);
        end
    endgenerate

    nand na0(p[30], Y[30], X[31]);
    nmfa31 nmf0(cout[30], sum[30], X[30:0], {31{Y[31]}}, {p[30], sum[29][30:1]}, cout[29]);
    buf b1(Z[31], sum[30][0]);

    and a2(p[31], Y[31], X[31]);

    array32tc_final_layer fl(Z[63], Z[62:32], {p[31], sum[30][30:1]}, cout[30]);

endmodule

module array32tc_layer0 (cout, sum, A0, B0, C);

    input [30:0] A0, B0, C;

    output [31:1] cout;
    output [30:0] sum;

    genvar i;

    generate
        for(i=0;i<=30;i=i+1)
        begin : genmmha
            mmha m(cout[i+1], sum[i], A0[i], B0[i], C[i]);
        end
    endgenerate

endmodule 

module array32tc_final_layer(cout, sum, A, B);

    input [30:0] A, B;
    output [30:0] sum;
    output cout;

    wire [31:1] c;

    genvar i;

    sha sh0 (c[1], sum[0], A[0], B[0]);

    generate
        for(i=1;i<=30;i=i+1)
        begin : genfa30
            fa f(c[i+1], sum[i], A[i], B[i], c[i]);
        end
    endgenerate

    not n0(cout, c[31]);

endmodule 