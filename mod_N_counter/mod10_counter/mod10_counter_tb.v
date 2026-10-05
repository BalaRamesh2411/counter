`include "mod10_counter.v"

module tb;

    reg clk;
    reg rst;
    reg en;
    wire [3:0] q;

    // DUT
    mod10_counter dut (
        .clk(clk),
        .rst(rst),
        .en(en),
        .q(q)
    );

    // Clock generation
    initial begin
        clk = 0;

        repeat(50) begin
            #5 clk = ~clk;
        end
    end

    // Monitor
    initial begin
        $monitor("Time=%0t | clk=%b rst=%b en=%b q=%b",
                  $time, clk, rst, en, q);
    end

    // Stimulus
    initial begin
        rst = 1;
        en  = 0;

        #10;
        rst = 0;
        en  = 1;

        #200;

        en = 0;

        
    end

endmodule
