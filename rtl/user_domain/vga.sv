module vga(
    // Genesys2 clk is 200 MHz
    // Need to divide to 50 Mhz for 800 x 600 @ 72Hz
    // with 50 MHz pixel clock
    input wire clk_i_200M,
    input wire rstn_i,
    input wire [15:0] pcolor_i, //RGB565 format
    output wire hsync_o,
    output wire vsync_o
)