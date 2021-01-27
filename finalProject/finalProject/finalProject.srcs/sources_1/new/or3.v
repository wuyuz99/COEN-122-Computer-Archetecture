`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2020 03:46:15 PM
// Design Name: 
// Module Name: or3
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


module or3(A, B, C, out);
    input A, B, C;
    output reg out;
    always@(A, B, C)
    begin
        out = A | B | C;
    end
endmodule
