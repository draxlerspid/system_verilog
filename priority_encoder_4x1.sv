`timescale 1ns/1ps

module priority_encoder_4x1 (
	output logic  [1:0] a, 
	output logic valid,
	input logic [3:0] y
	);
always_comb
	begin
		if (y[3]==1)
			begin 
				a=2'b11;
				valid =1;
			end
		
		else if (y[2]==1)
			begin 
				a=2'b10;
				valid =1;
			end
		
		else if (y[1]==1)
			begin 
				a=2'b01;
				valid =1;
			end
			
		else if (y[0]==1)
			begin
				a=2'b00;
				valid =1;
			end
			
		else 
			begin 
				a=2'b00;
				valid=1;
			end
	end
endmodule 
	
	
