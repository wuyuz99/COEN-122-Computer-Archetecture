`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 05/07/2020 03:10:35 PM
// Design Name:
// Module Name: control
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


module control(clock, control_in, RegWrt, MemtoReg, PCtoReg, Branch_Neg, Branch_Zero, Jump, JumpMem, ALUOP, MemRead, MemWrt);
input clock;
input [3:0] control_in;
output reg RegWrt, MemtoReg, PCtoReg, Branch_Neg, Branch_Zero, Jump, JumpMem, MemRead, MemWrt;
output reg [3:0] ALUOP;

always @(negedge clock)
    begin
        case(control_in)
            4'b0000:    begin
                        RegWrt = 0;
                        MemtoReg = 0;
                        PCtoReg = 0;
                        Branch_Neg = 0;
                        Branch_Zero = 0;
                        Jump = 0;
                        JumpMem = 0;
                        MemRead = 0;
                        MemWrt = 0;
                        ALUOP = 4'b0100;
                        end
            4'b1111:    begin
                        RegWrt = 1;
                        MemtoReg = 0;
                        PCtoReg = 1;
                        Branch_Neg = 0;
                        Branch_Zero = 0;
                        Jump = 0;
                        JumpMem = 0;
                        MemRead = 0;
                        MemWrt = 0;
                        ALUOP = 4'b0100;
                        end
            4'b1110:    begin
                        RegWrt = 1;
                        MemtoReg = 1;
                        PCtoReg = 0;
                        Branch_Neg = 0;
                        Branch_Zero = 0;
                        Jump = 0;
                        JumpMem = 0;
                        MemRead = 1;
                        MemWrt = 0;
                        ALUOP = 4'b0100;
                        end
            4'b0011:    begin
                        RegWrt = 0;
                        MemtoReg = 0;
                        PCtoReg = 0;
                        Branch_Neg = 0;
                        Branch_Zero = 0;
                        Jump = 0;
                        JumpMem = 0;
                        MemRead = 0;
                        MemWrt = 1;
                        ALUOP = 4'b0100;
                        end
            4'b0100:    begin
                        RegWrt = 1;
                        MemtoReg = 0;
                        PCtoReg = 0;
                        Branch_Neg = 0;
                        Branch_Zero = 0;
                        Jump = 0;
                        JumpMem = 0;
                        MemRead = 0;
                        MemWrt = 0;
                        ALUOP = 4'b0000;
                        end
            4'b0101:    begin
                        RegWrt = 1;
                        MemtoReg = 0;
                        PCtoReg = 0;
                        Branch_Neg = 0;
                        Branch_Zero = 0;
                        Jump = 0;
                        JumpMem = 0;
                        MemRead = 0;
                        MemWrt = 0;
                        ALUOP = 4'b0001;
                        end
            4'b0110:    begin
                        RegWrt = 1;
                        MemtoReg = 0;
                        PCtoReg = 0;
                        Branch_Neg = 0;
                        Branch_Zero = 0;
                        Jump = 0;
                        JumpMem = 0;
                        MemRead = 0;
                        MemWrt = 0;
                        ALUOP = 4'b0010;
                        end
            4'b0111:    begin
                        RegWrt = 1;
                        MemtoReg = 0;
                        PCtoReg = 0;
                        Branch_Neg = 0;
                        Branch_Zero = 0;
                        Jump = 0;
                        JumpMem = 0;
                        MemRead = 0;
                        MemWrt = 0;
                        ALUOP = 4'b0011;
                        end
            4'b1000:    begin
                        RegWrt = 0;
                        MemtoReg = 0;
                        PCtoReg = 0;
                        Branch_Neg = 0;
                        Branch_Zero = 0;
                        Jump = 1;
                        JumpMem = 0;
                        MemRead = 0;
                        MemWrt = 0;
                        ALUOP = 4'b0100;
                        end
            4'b1001:    begin
                        RegWrt = 0;
                        MemtoReg = 0;
                        PCtoReg = 0;
                        Branch_Neg = 0;
                        Branch_Zero = 1;
                        Jump = 0;
                        JumpMem = 0;
                        MemRead = 0;
                        MemWrt = 0;
                        ALUOP = 4'b0100;
                        end
            4'b1010:    begin
                        RegWrt = 0;
                        MemtoReg = 0;
                        PCtoReg = 0;
                        Branch_Neg = 0;
                        Branch_Zero = 0;
                        Jump = 0;
                        JumpMem = 1;
                        MemRead = 1;
                        MemWrt = 0;
                        ALUOP = 4'b0100;
                        end
            4'b1011:    begin
                        RegWrt = 0;
                        MemtoReg = 0;
                        PCtoReg = 0;
                        Branch_Neg = 1;
                        Branch_Zero = 0;
                        Jump = 0;
                        JumpMem = 0;
                        MemRead = 0;
                        MemWrt = 0;
                        ALUOP = 4'b0100;
                        end
            4'b0001:    begin
                        RegWrt = 1;
                        MemtoReg = 1;
                        PCtoReg = 0;
                        Branch_Neg = 0;
                        Branch_Zero = 0;
                        Jump = 0;
                        JumpMem = 0;
                        MemRead = 1;
                        MemWrt = 0;
                        ALUOP = 4'b0000;
                        end
        endcase
    end
endmodule
