module rca62noi(cout, sum, A, B);

    input [61:0] A, B;
    output [61:0] sum;
    output cout;

    wire [62:1] c;

    genvar i;

    ha h0 (c[1], sum[0], A[0], B[0]);

    generate
        for(i=1;i<=61;i=i+1)
        begin : genfa
            fa f(c[i+1], sum[i], A[i], B[i], c[i]);
        end
    endgenerate

    buf b0(cout, c[62]);

endmodule