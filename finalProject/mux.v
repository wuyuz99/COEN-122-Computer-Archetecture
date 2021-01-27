`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2020 02:32:59 PM
// Design Name: 
// Module Name: mux
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


module mux(d0, d1, d2, d3, select, out);
    input [31:0] d0;
    input [31:0] d1;
    input [31:0] d2;
    input [31:0] d3;
    input [1:0] select;
    output reg [31:0] out;
    always@(d0, d1, d2, d3, select)
    begin
        if(select == 2'b00)
        begin
            out = d0;
        end
        if(select == 2'b01)
        begin
            out = d1;
        end
        if(select == 2'b10)
        begin
            out = d2;
        end
        if(select == 2'b11)
        begin
            out = d3;
        end
    end
endmodule


