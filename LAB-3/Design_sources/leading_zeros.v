`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2020 05:51:35 PM
// Design Name: 
// Module Name: leading_zeros
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


module leading_zeros(input [7:0] num,
                     output reg [3:0] zeros);
                     
    always @(num) begin
      casex(num)
        8'b00000000 : zeros = 4'b1000;
        8'b00000001 : zeros = 4'b0111;
        8'b0000001? : zeros = 4'b0110;
        8'b000001?? : zeros = 4'b0101;
        8'b00001??? : zeros = 4'b0100;
        8'b0001???? : zeros = 4'b0011;
        8'b001????? : zeros = 4'b0010;
        8'b01?????? : zeros = 4'b0001;
        8'b1??????? : zeros = 4'b0;
      endcase
    end
endmodule
