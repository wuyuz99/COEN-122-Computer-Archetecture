`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2020 02:38:33 PM
// Design Name: 
// Module Name: signextender_adder
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


module signextender_adder(A, B, out);
input [31:0] A;
input [7:0] B;
output reg [31:0] out;
always@(A, B)
begin
    out = A + {24'b0000_0000_0000_0000_0000_0000, B};
end
endmodule
