`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2020 02:52:58 PM
// Design Name: 
// Module Name: testbench
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


module testbench();
    reg clk;
    wire [31:0] PCM0;
    wire [1:0] PCMS;
    wire [15:0] PC_in;
    wire [15:0] PC_out;
    wire [31:0] inst;
    wire [31:0] inst_id;
    wire [15:0] PCB_out;
    wire [7:0] PC_id;
    
    wire RegWrt_id, MemToReg_id, PCToReg_id, Branch_Neg_id, Branch_Zero_id, Jump_id, JumpMem_id, MemRead_id, MemWrt_id;
    wire [3:0] ALUOP_id;
    wire [31:0] rs_id, rt_id, se_out, sea_id;
    
    wire RegWrt_ex, MemToReg_ex, PCtoReg_ex, Branch_Neg_ex, Branch_Zero_ex, Jump_ex, JumpMem_ex, MemRead_ex, MemWrt_ex;
    wire N_ex, Z_ex;
    wire [3:0] ALUOP_ex;
    wire [5:0] rd_ex;
    wire [31:0] rs_ex, rt_ex, sea_ex;
    wire [31:0] dmo_ex, aluo_ex;
    
    wire N_wb, Z_wb, RegWrt_wb, Branch_Neg_wb, Branch_Zero_wb, Jump_wb;
    wire [1:0] wbmuxs;
    wire [5:0] rd_wb;
    wire [31:0] aluo_wb, dmo_wb, sea_wb, wbmux_out;
    wire bz_out, bn_out, jp_out;
    
    mux PC_mux(PCM0, aluo_wb, dmo_wb, , PCMS, PC_in);
    ProgramCounter PC(clk, PC_in, PC_out);
    PC_adder PC_add(PC_out, PCM0);
    instruction_memory IM(clk, PC_out, inst);
    ProgramCounter PC_buff(clk, PC_out, PCB_out);
    IFID_buffer IFID_buff(clk, inst, PCB_out[7:0], inst_id, PC_id);
    
    control ctrl(clk, inst_id[31:28], RegWrt_id, MemToReg_id, PCToReg_id, Branch_Neg_id, Branch_Zero_id, Jump_id, JumpMem_id, ALUOP_id, MemRead_id, MemWrt_id);
    register_file RF(clk, RegWrt_wb, rd_wb, inst_id[21:16], inst_id[15:10], wbmux_out, rs_id, rt_id);
    signextender se(inst_id[21:0], se_out);
    signextender_adder sea(se_out, PC_id, sea_id);
    IDEX_buffer IDEX_buff(clk, RegWrt_id, MemToReg_id, PCToReg_id, Branch_Neg_id, Branch_Zero_id, Jump_id, 
                       JumpMem_id, ALUOP_id, MemRead_id, MemWrt_id, rs_id, rt_id, inst_id[27:22], sea_id, RegWrt_ex,
                       MemToReg_ex, PCtoReg_ex, Branch_Neg_ex, Branch_Zero_ex, Jump_ex, JumpMem_ex,
                       ALUOP_ex, MemRead_ex, MemWrt_ex, rs_ex, rt_ex, rd_ex, sea_ex);
    
    data_memory DM(clk, MemRead_ex, MemWrt_ex, rs_ex[15:0], rt_ex, dmo_ex);            
    alu malu(rs_ex, rt_ex, ALUOP_ex, aluo_ex, N_ex, Z_ex);
    EXWB_buffer EXWB_buff(clk, N_ex, Z_ex, RegWrt_ex, MemToReg_ex, PCtoReg_ex, Branch_Neg_ex, Branch_Zero_ex, 
                   Jump_ex, JumpMem_ex, aluo_ex, dmo_ex, rd_ex, sea_ex, N_wb, Z_wb, RegWrt_wb, 
                   wbmuxs[0], wbmuxs[1], Branch_Neg_wb, Branch_Zero_wb, Jump_wb, PCMS[1], 
                   aluo_wb, dmo_wb, rd_wb, sea_wb);
                   
    mux wbmux(aluo_wb, dmo_wb, sea_wb, , wbmuxs, wbmux_out);
    and2 bz(Z_wb, Branch_Zero_wb, bz_out);
    and2 bn(N_wb, Branch_Neg_wb, bn_out);
    or3 jp(bz_out, bn_out, Jump_wb, PCMS[0]);
    
    
    initial 
    begin
        //set the clock
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial 
    begin
    #1000
    $finish;
    end
endmodule
