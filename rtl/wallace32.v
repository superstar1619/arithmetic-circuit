module wallace32(Z, X, Y);

    input [31:0] X, Y;

    output [63:0] Z;

    genvar i, k;
    genvar l, m, n, t;
    wire [63:0] sum [32:3];
    wire [64:0] cout [32:3];
    wire [63:0] current [31:0];
    // buf(current[0][63], 0);
    // buf(current[1][62], 0);
    // buf(current[1][63], 0);   
    generate
        for (i=62; i>=31; i=i-1)
        begin : gencurrent
            localparam j = 62-i;
            for(l=0;l<=31-j;l=l+1)
            begin : gena4
                and a4 (current[j][l+j], X[l], Y[j]);
            end
            for(l=j+1;l<=31;l=l+1)
            begin : gena5
                and a5 (current[j][l+31-j], X[l], Y[31-j]);
            end
        end
    endgenerate

    buf b0(sum[3][62], current[0][62]);
    buf b1(sum[3][0], current[0][0]);
    ha h0(cout[3][62], sum[3][61], current[0][61], current[1][61]);
    ha h1(cout[3][2], sum[3][1], current[0][1], current[1][1]);
    generate
        for(m=60;m>=2;m=m-1)
        begin : genf0
            fa f0(cout[3][m+1], sum[3][m], current[0][m], current[1][m], current[2][m]);
        end
    endgenerate

    buf b2(sum[3][63], 0);
    buf b3(cout[3][63], 0);
    buf b4(Z[0], sum[3][0]);
    buf b5(Z[1], sum[3][1]);
    generate
        for(n=59;n>=31;n=n-1)
        begin : genmain
            localparam t = 62-n;
            for(l=63;l>n;l=l-1)
            begin : genh_0
                ha h_0(cout[t+1][l+1], sum[t+1][l], sum[t][l], cout[t][l]);
            end
            for(l=n;l>=t;l=l-1)
            begin : genf_0
                fa f_0(cout[t+1][l+1], sum[t+1][l], sum[t][l], cout[t][l], current[t][l]);
            end
            ha h_1(cout[t+1][t], Z[t-1], sum[t][t-1], cout[t][t-1]);
        end
    endgenerate

    rca33noi rca(.sum(Z[63:31]), .A(cout[32][63:31]), .B(sum[32][63:31]));

endmodule