`include "up_down_counter.v"

module tb;

    reg clk;
    reg rst;
    reg en;
    reg up_down;
    wire [3:0] q;

    // DUT
    up_down_counter dut (
        .clk(clk),
        .rst(rst),
        .en(en),
        .up_down(up_down),
        .q(q)
    );

    // Clock generation
    initial begin
        clk = 0;

        repeat(20) begin
            #5 clk = ~clk;
        end
    end

    // Monitor
    initial begin
        $monitor("Time=%0t | clk=%b rst=%b en=%b up_down=%b q=%b",
                  $time, clk, rst, en, up_down, q);
    end

    // Stimulus
    initial begin
        rst = 1;
        en  = 0;
        up_down = 1;

        #10;
        rst = 0;
        en  = 1;

        // UP counting
        up_down = 1;

        #50;

        // DOWN counting
        up_down = 0;

        
    end

endmodule
