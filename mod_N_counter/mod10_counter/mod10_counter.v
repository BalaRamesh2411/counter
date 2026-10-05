module mod10_counter (
    input clk,
    input rst,
    input en,
    output reg [3:0] q
);

always @(posedge clk) begin

    if (rst)
        q <= 4'b0000;

    else if (en) begin
        if (q == 4'b1001)
            q <= 4'b0000;
        else
            q <= q + 1'b1;
    end

end

endmodule
