module clock_divider #(
    parameter int unsigned DIVIDE_BY = 4
) (
    input logic clk_200M_i,
    input logic rstn_i,
    output logic clk_50M_o
);
    // 4 bit counter
    logic [3:0] count = 0;

    always_ff @(posedge clk_200M_i or posedge rstn_i) begin
        if(rstn_i) begin
            clk_50M_o <= 1'b0;
            count = 0;
        end else if(count == DIVIDE_BY - 1) begin
            clk_50M_o <= ~clk_50M_o;
            count <= 0;
        end else begin
            count <= count + 1;
        end
    end
endmodule
