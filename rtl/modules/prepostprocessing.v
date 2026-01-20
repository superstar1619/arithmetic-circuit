module prepostprocessing(g, p, sum, A, B, c);

    input [31:0] A, B;
    input [31:0] c;

    output [31:0] g, p, sum;

    wire gbar;

    genvar i;

    assign g[0] = gbar | p[0] & c[0];

    rfa rfa0(gbar, p[0], sum[0], A[0], B[0], c[0]);
    generate
        for(i=1;i<=31;i=i+1)
        begin : genrfa
            rfa g_rfa(g[i], p[i], sum[i], A[i], B[i], c[i]);
        end
    endgenerate


endmodule