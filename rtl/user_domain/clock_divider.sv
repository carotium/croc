module clock_divider #(
    parameter int unsigned DIVIDE_BY = 2
) (
    input logic clk_200M_i,
    input logic rstn_i,
    output logic clk_50M_o
);
    // 4 bit counter
    logic[1:0] count = 0;

    assign clk_50M_o = count[1];

    always_ff @(posedge clk_200M_i or negedge rstn_i) begin
        if(!rstn_i) begin
            count = 0;
        end else if(count < 3) begin
            count <= count + 1;
        end else begin
            count <= 0;
        end
    end
endmodule
