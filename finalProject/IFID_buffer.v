`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2020 02:34:47 PM
// Design Name: 
// Module Name: IFID_buffer
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


module IFID_buffer(clock, IM_in, PC_in, IM_out, PC_out);
    input clock;
    
    input [31:0] IM_in;
    input [7:0] PC_in;
    
    output reg [31:0] IM_out;
    output reg [7:0] PC_out;
    
    always@(posedge clock)
    begin
        IM_out = IM_in;
        PC_out = PC_in;
    end
endmodule
