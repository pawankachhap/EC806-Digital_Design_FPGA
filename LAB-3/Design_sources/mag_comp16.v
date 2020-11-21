`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2020 10:44:34 AM
// Design Name: 
// Module Name: mag_comp16
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


module mag_comp16(input [15:0] A,
                  input [15:0] B,
                  output reg AeqB, AgtB, AltB);// AgtB=(A>B) and AltB=(A<B) and AeqB=(A==B)

    always @(A,B) begin
      AeqB <= (A == B)?1'b1:1'b0;
      AgtB <= (A > B)?1'b1:1'b0;
      AltB <= (A < B)?1'b1:1'b0;
    end
endmodule
