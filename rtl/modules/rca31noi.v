module rca31noi(cout, sum, A, B);

    input [30:0] A, B;
    output [30:0] sum;
    output cout;

    wire [31:1] c;

    genvar i;

    ha h0 (c[1], sum[0], A[0], B[0]);

    generate
        for(i=1;i<=30;i=i+1)
        begin : genfa30
            fa f(c[i+1], sum[i], A[i], B[i], c[i]);
        end
    endgenerate

    buf b0(cout, c[31]);

endmodule