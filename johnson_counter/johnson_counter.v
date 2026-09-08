module johnson_counter (
    input clk,
    input rst,
    input en,
    output reg [3:0] q
);

always @(posedge clk) begin
    if (rst)
        q <= 4'b0000;
    else if (en)
        q <= {q[2:0], ~q[3]};
end

endmodule
