module stalling_unit(
	input logic [4:0] opcode,
	output stalling_signal
);

initial begin
	stalling_signal = 1'b0;
	end
assign stalling_signal = (opcode == 5'b00000)?1:0;
endmodule
