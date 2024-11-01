`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2024 08:30:51 PM
// Design Name: 
// Module Name: color_mapper
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module color_mapper (
    // Input signals
    input logic [9:0] DrawX,      // 12-bit horizontal pixel coordinate //only use lower 3
    input logic [9:0] DrawY,      // 12-bit vertical pixel coordinate //don't use 
    input logic inv_bit,    // 8-bit ROM code input, with MSB as inverse flag 
    input logic [31:0] cmd,         //lower 16 are fg/higher 16 are bkg
    input logic [7:0] font_line,     // 8-bit font ROM data output //bitstream from font rom 1 or 0 at the pixel 

    // Output signals
    output logic [3:0] Red,        // 8-bit red color output
    output logic [3:0] Green,      // 8-bit green color output
    output logic [3:0] Blue       // 8-bit blue color output
    
);

//draw x determines location  within font_line - which index is being drawn (only lower 3 bits for 8-0
//drawy does nothing 
//cmd holds 16 bit fg color and 16 bit bkg
//inv determines whether we use fg/bkg
    logic [3:0] fg_r ;   
    logic [3:0] fg_g;  
    logic [3:0] fg_b;   
    logic [3:0] bkg_r;   
    logic [3:0] bkg_g;    
    logic [3:0] bkg_b;   

always_comb  begin
    fg_r = cmd[24:21];   
    fg_g = cmd[20:17];  
    fg_b = cmd[16:13];   
    bkg_r = cmd[12:9];   
    bkg_g = cmd[8:5];    
    bkg_b = cmd[4:1];   
end
    
    logic current_pixel;
    logic [2:0] letter_idx; 
    assign letter_idx = DrawX[2:0];
    assign current_pixel = font_line[7 -letter_idx ];

    
    logic [3:0] selected_r, selected_g, selected_b;
    always_comb begin
        if (inv_bit) begin
            
            if (current_pixel) begin
                selected_r = bkg_r;
                selected_g = bkg_g;
                selected_b = bkg_b;
            end else begin
                selected_r = fg_r;
                selected_g = fg_g;
                selected_b = fg_b;
            end
        end else begin
            
            if (current_pixel) begin
                selected_r = fg_r;
                selected_g = fg_g;
                selected_b = fg_b;
            end else begin
                selected_r = bkg_r;
                selected_g = bkg_g;
                selected_b = bkg_b;
            end
        end
    end

   
    assign Red   = selected_r;
    assign Green = selected_g;
    assign Blue  = selected_b;

endmodule





