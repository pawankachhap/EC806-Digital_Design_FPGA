`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2020 04:49:40 PM
// Design Name: 
// Module Name: dec_2to4_bv_tb
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


module dec_2to4_bv_tb();
reg [1:0] din;
reg _en;
wire [3:0] dout;

    dec_2to4_bv DUT(.Xin(din),._en(_en),.Yout(dout));
    integer i;
    initial begin      
        for(i=0;i<8;i=i+1) begin
            {_en,din} <= i;
            #50;
        end
    $finish;
    end
endmodule
