`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2020 02:05:38 PM
// Design Name: 
// Module Name: decoder2to4_tb
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


module decoder2to4_tb();
    reg [1:0] x;
    reg en;
    wire [3:0] y;
    
    decoder2to4 DUT(x,en,y);   //decoder module instantiation
    
    integer i;    // integer for looping purpose
    initial
      begin
        for(i=0;i<8;i=i+1)
          begin
            {en,x} = i;
            #10;
          end
        $finish;
      end

endmodule
