`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2020 03:34:09 PM
// Design Name: 
// Module Name: and2
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


module and2(A, B, out);
    input A, B;
    output reg out;
    always@(A, B)
    begin
        out = A & B;
    end
endmodule
