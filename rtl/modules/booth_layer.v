module booth_layer(sout, A, B, B_1, sin);

    parameter n = 32;

    input [n-1:0] A;
    input [n-1:1] sin;
    input B, B_1;

    output [n-1:0] sout;

    wire D, H;
    wire [n:1] cout;
    ctrl c(H, D, B, B_1);

    genvar i;

    cas c0(.cout(cout[1]), .sout(sout[0]), .D(D), .H(H), .a(A[0]), .b(1'b0), .cin(1'b0));

    generate
        for(i=1;i<=n-1;i=i+1)
        begin : gencas
            cas cn(.cout(cout[i+1]), .sout(sout[i]), .D(D), .H(H), .a(A[i]), .b(sin[i]), .cin(cout[i]));
        end

    endgenerate

endmodule