`include"johnson_counter.v"

module tb;

reg clk;
reg rst;
reg en;

wire [3:0] q;

johnson_counter dut (
    .clk(clk),
    .rst(rst),
    .en(en),
    .q(q)
);


// Clock generation
initial begin
    clk = 0;
    repeat (10)begin
	    #5 clk = ~clk;
    end
end


// Test
initial begin

    $monitor("Time=%0t | clk=%b | rst=%b | en=%b | q=%b",
              $time, clk, rst, en, q);

    // Reset
    rst = 1;
    en  = 0;

    #10;

    rst=0;
en=1;


end

endmodule

