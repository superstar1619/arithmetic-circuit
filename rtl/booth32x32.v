module booth32x32(Z, X, Y);

    input [31:0] X, Y;

    output [63:0] Z;

    genvar i;

    wire [63:0] s [31:0];

    assign s[31][31:0] = 32'b0;

    generate
        for(i=31;i>=1;i=i-1)
        begin : genboothlayer
            booth_layer#(.n(63-i)) bl(s[i-1][(62-i):0], {{(32-i){X[31]}},X[30:0]}, Y[i], Y[i-1], s[i][(61-i):0]);            
        end
    endgenerate

    booth_layer#(.n(63)) fbl(Z[62:0], {{32{X[31]}}, X[30:0]}, Y[0], 1'b0, s[0][61:0]);

    buf b0(Z[63], Z[62]);

endmodule