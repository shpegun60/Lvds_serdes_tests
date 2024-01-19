// stp.v

// Generated using ACDS version 22.1 915

`timescale 1 ps / 1 ps
module stp (
		input  wire       acq_clk,        // acq_clk.clk
		input  wire [4:0] acq_data_in,    //     tap.acq_data_in
		input  wire [0:0] acq_trigger_in  //        .acq_trigger_in
	);

	sld_signaltap #(
		.sld_data_bits               (5),
		.sld_sample_depth            (512),
		.sld_ram_block_type          ("AUTO"),
		.sld_storage_qualifier_mode  ("OFF"),
		.sld_trigger_bits            (1),
		.sld_trigger_level           (1),
		.sld_trigger_in_enabled      (0),
		.sld_enable_advanced_trigger (0),
		.sld_trigger_level_pipeline  (1),
		.sld_trigger_pipeline        (0),
		.sld_ram_pipeline            (0),
		.sld_counter_pipeline        (0),
		.sld_node_info               (806383104),
		.sld_incremental_routing     (0),
		.sld_node_crc_bits           (32),
		.sld_node_crc_hiword         (2003),
		.sld_node_crc_loword         (56114)
	) signaltap_ii_logic_analyzer_0 (
		.acq_data_in    (acq_data_in),    //     tap.acq_data_in
		.acq_trigger_in (acq_trigger_in), //        .acq_trigger_in
		.acq_clk        (acq_clk)         // acq_clk.clk
	);

endmodule
