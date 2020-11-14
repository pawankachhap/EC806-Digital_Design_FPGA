`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2020 02:27:01 PM
// Design Name: 
// Module Name: mux4to1
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


module mux4to1(input [3:0] Xin,
               input [1:0] sel,
               output Yout);
    
    assign Yout = (sel == 2'b00) ? Xin[0] : 'bz,
           Yout = (sel == 2'b01) ? Xin[1] : 'bz,
           Yout = (sel == 2'b10) ? Xin[2] : 'bz,
           Yout = (sel == 2'b11) ? Xin[3] : 'bz;
endmodule
