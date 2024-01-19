/************ This is top file **************/
module main
(
   //Clock / reset
   input  logic i_clk50MHz,
	input  logic i_rstn, // Reset
	
	//LED ports
	output logic [3:0]  o_led,
	
	//HyperRAM IO & external bus to get access to a Hyper RAM (must have LVCMOS)
	output logic		  o_csn0,   // a Hyper RAM chip select
	output logic        o_clk,    // CLOCK:  this is a positive clock pin for a Hyper RAM
	output logic        o_clkn,   // CLOCK#: this is a negative clock pin for a Hyper RAM
	inout			 [7:0]  io_dq,    // 8-bit's INOUT data receiving/transmitting to or from a Hyper RAM
	inout     			  io_rwds,  // an INOUT RWDS signal
	output logic        o_resetn, // output reset signal launching to a Hyper RAM
	output logic        o_csn1,      // a Hyper FLASH chip select
	
	// Kbus interface
	output logic [1:0] o_tx, // tx
	input logic  [1:0] i_rx,  // rx
	
	// lvds interface
	input i_clk_lvds,
	output logic o_lvds_tx,
	input i_lvds_rx
);



//************************************* lvds peryphery **************************************************/

/*
wire core_rst_p;
assign core_rst_p = !i_rstn;

wire core_clk;
assign core_clk = i_clk50MHz;

wire [2:0] lvds_clks;
wire lvds_locked;
wire lvds_locked_n;
assign lvds_locked_n = !lvds_locked;

lvds_pll lvds_pll_inst (
	.areset(core_rst_p),
	.inclk0(core_clk),
	.c0(lvds_clks[0]),
	.c1(lvds_clks[1]),
	.c2(lvds_clks[2]),
	.locked(lvds_locked)
);


logic [9:0] lvds_tx_in;
lvds_tx lvds_tx_inst (
	.tx_data_reset(lvds_locked_n),
	.tx_in(lvds_tx_in),
	.tx_inclock(lvds_clks[0]),
	.tx_syncclock(lvds_clks[2]),
	.tx_out(o_lvds_tx)
);


logic [9:0] lvds_rx_out;
lvds_rx lvds_rx_inst(
	.rx_data_reset(lvds_locked_n),
	.rx_in(i_lvds_rx),
	.rx_inclock(lvds_clks[0]),
	.rx_out(lvds_rx_out)
);

logic [9:0] lvds_rx_out_reg;
always_ff @(posedge lvds_clks[2], negedge i_rstn) begin 
	if(!i_rstn) begin 
		lvds_rx_out_reg <= '0;
	end else begin
		lvds_rx_out_reg <= lvds_rx_out;
	end
end


//********************************************************************
logic [31:0] counter;
always_ff @(posedge lvds_clks[2], negedge i_rstn) begin 
	if(!i_rstn) begin 
		counter <= '0;
		o_led <= '0;
		//o_lvds_tx <= '0;
		//o_lvds_rx <= '1;
		lvds_tx_in <= 10'b1010101001;
	end else begin
		counter <= counter + 32'd1;
		
		if(counter == 32'd1_000_00) begin
			counter 	<= '0;
			
			//o_lvds_tx <= !o_lvds_tx;
			//o_lvds_rx <= !o_lvds_rx;
			
			
			if(lvds_rx_out_reg == lvds_tx_in) begin
				o_led 	<= o_led + 1;
			end
			
			
		end
	end
end


//assign o_led[0] = lvds_clks[2];
//assign lvds_tx_in = 10'b1010101001;
*/

//-------------------------------------------------------------------------------------

serdes_logic serdes_inst
(
	.i_clk_serdes(i_clk50MHz),
	.i_rstn(i_rstn),
	
	.o_lvds_tx(o_lvds_tx),
	.i_lvds_rx(i_lvds_rx),
	.o_aux(o_led)
);


endmodule
/**************************************************************************/
