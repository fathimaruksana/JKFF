`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2023 15:14:49
// Design Name: 
// Module Name: JKFF_tb
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


module JKFF_tb( );
reg j,k,clk;
wire q,qbar;
 JKFF jkff_1 (j,k,clk,q,qbar);

initial begin
  clk=1'b0;
  #100
  $finish;
end 
always
begin
#10
clk=~clk;
end

initial begin
  j = 1'b0; k = 1'b0;
   #20
  j = 1'b0; k= 1'b1; 
  #20; 
  j = 1'b0; k = 1'b0; 
  #20; 
  j= 1'b1; k= 1'b0; 
  #20; 
 j = 1'b0; k= 1'b0;
   #20; 
  j= 1'b1; k = 1'b1;
   #20; 
  j = 1'b0; k= 1'b0; 
end
endmodule
