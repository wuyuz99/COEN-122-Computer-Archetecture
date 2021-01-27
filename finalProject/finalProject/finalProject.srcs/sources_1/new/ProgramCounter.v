`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2020 02:56:32 PM
// Design Name: 
// Module Name: ProgramCounter
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


module ProgramCounter(clk, PC_in, PC_out);
    input clk;
    input [15:0] PC_in;
    output reg [15:0] PC_out;
    initial
    begin
        PC_out = 0;
    end
    always@(negedge clk)
    begin
        if(PC_in)
        begin
            PC_out = PC_in;
        end
    end
endmodule
