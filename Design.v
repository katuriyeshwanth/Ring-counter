module ring_counter(clk,init,count);
input clk,init;
output reg [7:0]count;
always @(posedge clk)
if (init) count <= 8'b10000000;
else begin
count <= count<<1;
count[0] <= count[7];
end
endmodule
