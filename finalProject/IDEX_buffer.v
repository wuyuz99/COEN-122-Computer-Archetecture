`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2020 02:46:53 PM
// Design Name: 
// Module Name: IDEX_buffer
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


module IDEX_buffer(clock, RegWrt_in, MemToReg_in, PCtoReg_in, Branch_Neg_in, Branch_Zero_in, Jump_in, 
                   JumpMem_in, ALUOP_in, MemRead_in, MemWrt_in, rs_in, rt_in, rd_in, PCSE_in, RegWrt_out,
                   MemToReg_out, PCtoReg_out, Branch_Neg_out, Branch_Zero_out, Jump_out, JumpMem_out,
                   ALUOP_out, MemRead_out, MemWrt_out, rs_out, rt_out, rd_out, PCSE_out);
input clock;

input RegWrt_in, MemToReg_in, PCtoReg_in, Branch_Neg_in, Branch_Zero_in, Jump_in, JumpMem_in, MemRead_in, MemWrt_in;
input [3:0] ALUOP_in;
input [31:0] rs_in, rt_in, PCSE_in;
input [5:0] rd_in;

output reg RegWrt_out, MemToReg_out, PCtoReg_out, Branch_Neg_out, Branch_Zero_out, Jump_out, JumpMem_out, MemRead_out, MemWrt_out;
output reg [3:0] ALUOP_out;
output reg [31:0] rs_out, rt_out, PCSE_out;
output reg [5:0] rd_out;

always@(posedge clock)
begin
    RegWrt_out = RegWrt_in;
    MemToReg_out = MemToReg_in;
    PCtoReg_out = PCtoReg_in;
    Branch_Neg_out = Branch_Neg_in;
    Branch_Zero_out = Branch_Zero_in;
    Jump_out = Jump_in;
    JumpMem_out = JumpMem_in;
    MemRead_out = MemRead_in;
    MemWrt_out = MemWrt_in;
    ALUOP_out = ALUOP_in;
    rs_out = rs_in;
    rt_out = rt_in;
    PCSE_out = PCSE_in;
    rd_out = rd_in;
end
endmodule
