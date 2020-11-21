`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2020 04:08:25 PM
// Design Name: 
// Module Name: dec_2to4_bv
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


module dec_2to4_bv(input [1:0] Xin,
                   input _en,
                   output reg [3:0] Yout);
                       
    always @(Xin, _en) begin
        if( !_en)
            case(Xin)
              2'b00: Yout = 4'b1110;
              2'b01: Yout = 4'b1101;
              2'b10: Yout = 4'b1011;
              2'b11: Yout = 4'b0111;
            endcase
        else Yout = 4'b1111;
    end
endmodule
