`timescale 1ns/1ps

module encoder_tb_4_1();

		logic [1:0] a;
		logic [3:0] y;
		logic valid;
		

priority_encoder_4x1 uut(
				.y(y),
				.a(a),
				.valid(valid)
				);

initial 
	begin 
		y=4'b0000;
		#10;

		y=4'b0001;
		#10;

		y=4'b0010;
		#10;

		y=4'b0100;
		#10;

		y=4'b1000;
		#10;

		y=4'b1011;
		#10;

		$finish;
		$stop;
	end

endmodule



