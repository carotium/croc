module vga(
    input wire clk_i_50M,
    input wire rstn_i,
    input wire [15:0] pcolor_i, //RGB565 format
    output wire hsync_o,
    output wire vsync_o
)