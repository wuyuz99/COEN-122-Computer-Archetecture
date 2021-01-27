`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2020 02:51:56 PM
// Design Name: 
// Module Name: data_memory
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


module data_memory(clk, read, wrt, address, data_in, data_out);
//define input and output
input clk, read, wrt;
input [15:0] address;
input [31:0] data_in;
output reg [31:0] data_out;

//internal 65536 * 32 bits registers
reg [31:0] data [65535:0];
initial
begin
    data[0] = 32'd1;
    data[1] = 32'd2;
    data[2] = 32'd3;
    data[3] = 32'd4;    
    data[4] = 32'd5;  
end
//only read and write on positive edge of clock
always@(negedge clk)
begin
    if(wrt == 1)
    begin
        data[address] = data_in;
    end
    if(read == 1)
    begin
        data_out = data[address];
    end
end
endmodule
