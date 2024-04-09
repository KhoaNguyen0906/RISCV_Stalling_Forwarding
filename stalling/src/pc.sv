/* verilator lint_off EOFNEWLINE */
/* verilator lint_off VARHIDDEN */
module pc(
	input logic [12:0] nxt_pc,
	output logic [12:0] pc_o,
	input logic clk,
	input stalling_signal
	
);
integer counter;
initial 
	begin
		counter = 0;
	end
always @(posedge clk)
begin 
	if(stalling_signal)
		begin
		pc_o <= pc_o;
		counter <= counter + 1;
		if(counter == 1)
			begin
				pc_o <= nxt_pc;
				counter <= 0;
			end
		end
	else
		begin
		pc_o <= nxt_pc;
		end
end
endmodule

		
