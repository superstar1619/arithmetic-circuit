module signed_divider32 (
    input wire clk,
    input wire reset,
    input wire start,
    input wire  [31:0] dividend,
    input wire  [31:0] divisor,
    output reg  [31:0] quotient,
    output reg   [31:0] remainder,
    output reg done,
    output reg error
);

    wire [31:0] abs_dividend = (dividend[31]) ? -dividend : dividend;
    wire [31:0] abs_divisor = (divisor[31]) ? -divisor : divisor;
    wire sign_quotient = dividend[31] ^ divisor[31];  
    wire sign_remainder = dividend[31];  
    wire [31:0] sub_result;
    reg [63:0] A;
    reg [31:0] B;
    reg [5:0] count;
    reg busy;
    reg quotient_sign_reg;
    reg remainder_sign_reg;

    assign abs_dividend = (dividend[31]) ? -dividend : dividend;
    assign abs_divisor = (divisor[31]) ? -divisor : divisor;
    assign sign_quotient = dividend[31] ^ divisor[31];  
    assign sign_remainder = dividend[31]; 
    assign sub_result = A[62:31] - B;
    
    always @(posedge clk or negedge reset) begin
        if (~reset) begin
            A <= 64'b0;
            B <= 32'b0;
            quotient <= 32'b0;
            remainder <= 32'b0;
            done <= 1'b0;
            error <= 1'b0;
            busy <= 1'b0;
            count <= 6'd0;
            quotient_sign_reg <= 1'b0;
            remainder_sign_reg <= 1'b0;
        end
        else if (start && !busy) begin
            if (divisor == 32'b0) begin
                error <= 1'b1;
                done <= 1'b1;
                busy <= 1'b0;
            end
            else begin
                quotient_sign_reg <= sign_quotient;
                remainder_sign_reg <= sign_remainder;
                A <= {32'b0, abs_dividend};
                B <= abs_divisor;
                count <= 6'd32;
                busy <= 1'b1;
                done <= 1'b0;
                error <= 1'b0;
            end
        end
        else if (busy) begin
            if (count > 0) begin
                
                if (A[62:31] >= B) 
                begin
                    A[63:1] <= {sub_result[31:0], A[30:0]};
                    A[0] <= 1'b1;
                end
                else
                    A <= A << 1;
                
                count <= count - 1;
            end
            else begin
                quotient <= quotient_sign_reg ? -A[31:0] : A[31:0];
                remainder <= remainder_sign_reg ? -A[63:32] : A[63:32];
                done <= 1'b1;
                busy <= 1'b0;
            end
        end
        else begin
            done <= 1'b0;
            error <= 1'b0;
        end
    end

endmodule