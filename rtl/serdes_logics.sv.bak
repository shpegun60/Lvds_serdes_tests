/**************************lvds serdes main logics*************************/
module serdes_logic
(
	input 			i_clk_serdes,
	input 			i_rstn,
	
	output 			o_lvds_tx,
	input 			i_lvds_rx,
	output [3:0] 	o_aux
);

// tx instance ----------------------------------
logic [9:0] lvds_tx_in;
logic tx_inclock;
//assign lvds_tx_in = 10'b1010111001;

lvds_tx lvds_tx_inst (
	.tx_in(lvds_tx_in),
	.tx_inclock(i_clk_serdes),
	.tx_coreclock(tx_inclock),
	.tx_out(o_lvds_tx)
);


// rx instance ----------------------------------
logic rx_data_align;
logic	  rx_outclock;
logic [9:0] lvds_rx_out;
lvds_rx lvds_rx_inst (
	.rx_data_align(rx_data_align),
	.rx_in(i_lvds_rx),
	.rx_inclock(i_clk_serdes),
	.rx_out(lvds_rx_out),
	.rx_outclock(rx_outclock)
);


// ---------------------------- rx calibration logic ---------------------------------------------------
localparam WAIT_CNT 			= 4;
localparam MAX_ERROR_CNT 	= 32;
localparam WAIT_LATCH_BIT 	= $clog2(WAIT_CNT);
localparam ERROR_LATCH_BIT = $clog2(MAX_ERROR_CNT);

enum logic [2:0] {
	R_IDLE										= 3'd0,
	R_PULSE										= 3'd1,
	R_WAIT										= 3'd2,
	R_COMPAIRE									= 3'd3,
	R_READY										= 3'd4,
	R_ERROR										= 3'd5
} state = R_IDLE, next_state = R_IDLE;

logic [WAIT_LATCH_BIT:0] r_wait_cnt;
logic [WAIT_LATCH_BIT:0] r_wait_cnt_next;

logic [ERROR_LATCH_BIT:0] r_error_counter;

logic pulse;

// Sequential state transition
always_ff @(posedge rx_outclock, negedge i_rstn) begin
	if(~i_rstn)  	state <= R_IDLE;
	else 				state <= next_state;
end

// Combinational next state logic
always_comb begin
	next_state 					<= R_IDLE;
	pulse 						<= '0;
	r_wait_cnt_next			<= '0;
	
	unique case(state)
		
		R_IDLE: 			next_state <= R_PULSE;
		
		R_PULSE: begin
			pulse 		<= '1;
			next_state 	<= R_WAIT;
		end
		
		R_WAIT: begin
			r_wait_cnt_next 	<= r_wait_cnt + 1'b1;
			next_state 			<= r_wait_cnt[WAIT_LATCH_BIT] ? R_COMPAIRE : R_WAIT;
		end
		
		R_COMPAIRE:	next_state <= (lvds_rx_out == lvds_tx_in) ? R_READY : R_ERROR;
		
		R_READY: 	next_state <= R_READY;
		
		R_ERROR:		next_state <= r_error_counter[ERROR_LATCH_BIT] ? R_ERROR : R_PULSE;
		
	endcase
	
end


logic succes_i;
logic error_i;

//assign o_aux = {r_error_counter[1:0], error_i, succes_i};

// state handler
always_ff @(posedge rx_outclock, negedge i_rstn) begin
	if(~i_rstn) begin
		rx_data_align 		<= '0;
		r_wait_cnt 			<= '0;
		r_error_counter 	<= '0;
		error_i <= '0;
		succes_i <= '0;
		
	end else begin
		rx_data_align 		<= pulse;
		r_wait_cnt 			<= r_wait_cnt_next;
		
		r_error_counter 	<= (state == R_PULSE) ? (r_error_counter + 1'b1) : r_error_counter;
		
		error_i  <= (state == R_ERROR);
		succes_i <= (state == R_READY);
	end
end


// tranceiver/receiver test -------------------------------------------------------------------------
localparam logic[9:0] TRAINING_PATTERN = 10'b1010111001;
logic[9:0] tx_data_gate;
logic[9:0] tx_data;
assign tx_data_gate = succes_i ? tx_data : TRAINING_PATTERN;

// latch data--------------------------------------------------
always_ff @(posedge tx_inclock, negedge i_rstn) begin
	if(~i_rstn)  	lvds_tx_in <= '0;
	else 				lvds_tx_in <= tx_data_gate;
end



enum logic [1:0] {
	TX_TEST_IDLE										= 2'd0,
	TX_TEST_PROCEED									= 2'd1
} tx_test_state = TX_TEST_IDLE, tx_test_state_next = TX_TEST_IDLE;

logic[15:0] test_error_counter;

always_ff @(posedge rx_outclock, negedge i_rstn) begin
	if(~i_rstn)  	tx_test_state <= TX_TEST_IDLE;
	else 				tx_test_state <= tx_test_state_next;
end

always_comb begin
	tx_test_state_next <= TX_TEST_IDLE;
	
	unique case(tx_test_state)
		TX_TEST_IDLE: 		tx_test_state_next <= succes_i ? TX_TEST_PROCEED : TX_TEST_IDLE;
		TX_TEST_PROCEED: 	tx_test_state_next <= TX_TEST_PROCEED;
	endcase
	
end


logic[9:0] tx_data_last1;
logic[9:0] tx_data_last2;
logic[9:0] tx_data_last3;
logic[9:0] tx_data_last4;
always_ff @(posedge tx_inclock, negedge i_rstn) begin
	if(~i_rstn) begin
		tx_data 					<= TRAINING_PATTERN + 1;
		tx_data_last1 			<= '0;
		tx_data_last2			<= '0;
		tx_data_last3			<= '0;
		tx_data_last4 			<= '0;
		test_error_counter 	<= '0;
	end else begin
		
		tx_data <= tx_data + 1'b1;
		tx_data_last1 <= tx_data;
		tx_data_last2 <= tx_data_last1;
		tx_data_last3 <= tx_data_last2;
		tx_data_last4 <= tx_data_last3;
		
	
		if(tx_test_state == TX_TEST_PROCEED) begin
			test_error_counter <= (tx_data_last4 != lvds_rx_out) ? (test_error_counter + 1'b1) : test_error_counter;
		end
	end
end

assign o_aux = test_error_counter[3:0];



endmodule
/**************************************************************************/