module tb_divider();
    
    parameter CLK_LENGTH = 10;

    reg clk, reset;
    reg start;

    integer i,j;
    integer random_seed = 0;

    reg [31:0] X, Y;

    wire [31:0] s_Q, s_R, Q, R;
    wire done, error;

    /*
        input wire clk,
        input wire reset,
        input wire start,
        input wire  [31:0] dividend,
        input wire  [31:0] divisor,
        output reg  [31:0] quotient,
        output reg   [31:0] remainder,
        output reg done,
        output reg error
    */
    signed_divider32 test_divider(.clk(clk), .reset(reset), .start(start), .dividend(X), .divisor(Y), .quotient(Q), .remainder(R), .done(done), .error(error));
    s_divider standard_multiplier(s_Q, s_R, X, Y);

    initial 
    begin
        clk = 1'b0;
        reset = 1'b1;

        #(CLK_LENGTH * 2)
        reset = 1'b0;

        #(CLK_LENGTH * 2)
        reset = 1'b1;

        for(i=1000;i>=1;i=i-1)
        begin
            #(CLK_LENGTH+2)
            get_rand();
            #(CLK_LENGTH)
            start = 1'b1;
            #(CLK_LENGTH)
            start = 1'b0;
            #(CLK_LENGTH/2)
            wait(done);
            check();
        end
        $display("Pass all test!");
        $display("Congratulation!");
        $finish();
    end

    always #(CLK_LENGTH/2) clk = ~clk;

    task get_rand; 
        begin
            for(j=31;j>=0;j=j-1)
            begin
                X[j] = {$random(random_seed)} % 2;
                Y[j] = {$random(random_seed)} % 2;
            end
        end
    endtask

    task check;
        begin
            if(s_Q != Q || s_R != R)
            begin
                $display("Fail in X = %h Y = %h", X, Y);
                $display("required Q = %h, R = %h", s_Q, s_R);
                $display("Now Q = %h, R = %h", Q, R);
                $finish();
            end 
        end
    endtask

endmodule

