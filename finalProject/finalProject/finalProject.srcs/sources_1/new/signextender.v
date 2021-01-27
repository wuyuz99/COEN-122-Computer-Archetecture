`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2020 10:10:10 AM
// Design Name: 
// Module Name: signextender
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


module signextender(in, out);
input [21:0] in;
output reg [31:0] out;
always@(in)
begin
    if(in[21] == 1)
    begin
        out = {10'b1111111111, in};
    end
    else
    begin
        out = {10'b0000000000, in};
    end
end
endmodule
