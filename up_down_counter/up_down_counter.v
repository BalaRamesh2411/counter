module up_down_counter (
    input clk,
    input rst,
    input en,
    input up_down,
    output reg [3:0] q
);

always @(posedge clk) begin

    if (rst)
        q <= 4'b0000;

    else if (en) begin
        if (up_down)
            q <= q + 1'b1;   // UP
        else
            q <= q - 1'b1;   // DOWN
    end

end

endmodule
