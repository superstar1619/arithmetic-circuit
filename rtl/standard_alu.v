module adder (Cout, Sum, A, B, Cin);

    input [31:0] A, B;
    input Cin;

    output [31:0] Sum;
    output Cout;

    assign {Cout, Sum} = A + B + Cin;
    
endmodule

module subtractor (Cout, Sum, A, B, Subtract);

    input [31:0] A, B;
    input Subtract;

    output [31:0] Sum;
    output Cout;

    wire [31:0] w;
    assign w = ~B;
    assign {Cout, Sum} = A + w + 32'd1;

endmodule