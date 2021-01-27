`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2020 03:09:57 PM
// Design Name: 
// Module Name: EXWB_buffer
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


module EXWB_buffer(clock, N_in, Z_in, RegWrt_in, MemToReg_in, PCtoReg_in, Branch_Neg_in, Branch_Zero_in, 
                   Jump_in, JumpMem_in, rsrt_in, DM_in, rd_in, PCSE_in, N_out, Z_out, RegWrt_out, 
                   MemToReg_out, PCtoReg_out, Branch_Neg_out, Branch_Zero_out, Jump_out, JumpMem_out, 
                   rsrt_out, DM_out, rd_out, PCSE_out);
input clock;

input N_in, Z_in, RegWrt_in, MemToReg_in, PCtoReg_in, Branch_Neg_in, Branch_Zero_in, Jump_in, JumpMem_in;
input[31:0] rsrt_in, DM_in, PCSE_in;
input[5:0] rd_in;

output reg N_out, Z_out, RegWrt_out, MemToReg_out, PCtoReg_out, Branch_Neg_out, Branch_Zero_out, Jump_out, JumpMem_out;
output reg[31:0] rsrt_out, DM_out, PCSE_out;
output reg[5:0] rd_out;
always@(posedge clock)
begin
    N_out = N_in;
    Z_out = Z_in;
    RegWrt_out = RegWrt_in;
    MemToReg_out = MemToReg_in;
    PCtoReg_out = PCtoReg_in;
    Branch_Neg_out = Branch_Neg_in;
    Branch_Zero_out = Branch_Zero_in;
    Jump_out = Jump_in;
    JumpMem_out = JumpMem_in;
    rsrt_out = rsrt_in;
    DM_out = DM_in;
    PCSE_out = PCSE_in;
    rd_out = rd_in;
end
endmodule
