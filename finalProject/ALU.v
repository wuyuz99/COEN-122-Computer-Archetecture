`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2020 02:13:22 PM
// Design Name: 
// Module Name: ALU
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


module alu(A, B, Op, Result, N, Z);

    //define A, B, Op as inputs
    input [31:0] A;
    input [31:0] B;
    input [3:0] Op;
    
    //define Result, N, Z as outputs
    output reg [31:0] Result;
    output reg N;
    output reg Z;
    
    //define operations
    always@(A, B, Op)
    begin
        //add
        if(Op == 4'b0000)
        begin
            Result = A + B;
        end
        //increment
        if(Op == 4'b0001)
        begin
            Result = A + 32'b1;  
        end
        //negate
        if(Op == 4'b0010)
        begin
            Result = ~A + 32'b1;
        end
        //subtract
        if(Op == 4'b0011)
        begin
            Result = A + (~B + 32'b1);
        end
        //pass a
        if(Op == 4'b0100)
        begin
            Result = A;
        end
        //set Z and N flags
        if(Op != 4'b0100)
        begin
            if(Result == 0)
                Z = 1;
            else
                Z = 0;
            if(Result[31] == 1)
                N = 1;
            else
                N = 0;
            end
        end

endmodule
