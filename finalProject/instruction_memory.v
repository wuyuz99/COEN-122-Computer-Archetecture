`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2020 02:36:44 PM
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory(clk, address, instruction);
//define inputs and outputs
input clk;
input [15:0] address;
output reg [31:0]instruction;

//internal 256 * 32 bits registers adn put some value into it
reg [31:0] data [511:0];
initial
begin
data[0] = 32'hF0400100;
data[1] = 32'h0;
data[2] = 32'h0;
data[3] = 32'h70010400;
data[4] = 32'h30010400;
data[5] = 32'hF2800003;
data[6] = 32'hF2C0000F;
data[7] = 32'h45545400;
data[8] = 32'hE0D40000;
data[9] = 32'h55140000;
data[10] = 32'h0;
data[11] = 32'h40000C00;
data[12] = 32'h70D55000;
data[13] = 32'h0;
data[14] = 32'h0;
data[15] = 32'h900B0000;
data[16] = 32'h0;
data[17] = 32'h0;
data[18] = 32'h0;
data[19] = 32'h800A0000;
data[20] = 32'h0;
data[21] = 32'h0;
data[22] = 32'h0;
data[23] = 32'hA0010000;
data[24] = 32'h0;
data[25] = 32'h0;
data[26] = 32'h0;
data[32'h100] = 32'h80010000;
data[32'h101] = 32'h0;
data[32'h102] = 32'h0;
data[32'h103] = 32'h0;
end

//only read on positive edge of clock
always@(negedge clk)
begin
    instruction = data[address];
end
endmodule
