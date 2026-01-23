module booth32x32(Z, X, Y);

    input [31:0] X, Y;

    output [63:0] Z;

    genvar i;

    wire [63:0] s [31:0];

    assign s[31][32:0] = 33'b0;

    generate
        for(i=31;i>=1;i=i-1)
        begin : genboothlayer
            booth_layer#(.n(64-i)) bl(s[i-1][(63-i):0], {{(33-i){X[31]}},X[30:0]}, Y[i], Y[i-1], s[i][(62-i):0]);            
        end
    endgenerate

    booth_layer#(.n(64)) fbl(Z, {{33{X[31]}}, X[30:0]}, Y[0], 1'b0, s[0][62:0]);

endmodule