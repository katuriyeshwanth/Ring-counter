module test;
reg clk,init;
wire [7:0]count;
ring_counter dut(clk,init,count);
initial clk=0;
always #5 clk=~clk;
initial
begin
$monitor($time,"clk=%b,init=%b,count=%b",clk,init,count);
init=1;
#10 init=0;
#100 $stop;
end
endmodule
