`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2020 03:02:15 PM
// Design Name: 
// Module Name: register_file
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


module register_file(clk, wrt, Rd, Rs, Rt, data_in, Rs_out, Rt_out);
//define inputs and outputs
input clk, wrt;
input [5:0] Rd;
input [5:0] Rs;
input [5:0] Rt;
input [31:0] data_in;
output reg [31:0] Rs_out;
output reg [31:0] Rt_out;

//internal 64 * 32 bits registers
reg [31:0] data [63:0];
initial
begin
    data[20] = 32'd0;
    data[21] = 32'd5;
end
//only read and write on positive edge of clock
always@(negedge clk)
begin
    if(wrt == 1)
    begin
        data[Rd] = data_in;
    end
    Rs_out = data[Rs];
    Rt_out = data[Rt];
end
endmodule
