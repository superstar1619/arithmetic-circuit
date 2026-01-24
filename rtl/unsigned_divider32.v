module unsigned_divider32 (
    input wire clk,
    input wire reset,
    input wire start,
    input wire [31:0] dividend,
    input wire [31:0] divisor,
    output reg [31:0] quotient,
    output reg [31:0] remainder,
    output reg done,
    output reg error  
);

    reg [63:0] A;     
    reg [31:0] B;     
    reg [5:0] count;   
    reg busy;
    wire [31:0] sub_result;
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
        end
        else if (start && !busy) begin
            if (divisor == 32'b0) begin
                error <= 1'b1;
                done <= 1'b1;
                busy <= 1'b0;
            end
            else begin
                A <= {32'b0, dividend};
                B <= divisor;
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
                quotient <= A[31:0];
                remainder <= A[63:32];
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