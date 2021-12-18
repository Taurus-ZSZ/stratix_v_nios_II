// mysystem.v

// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module mysystem (
		input  wire       clk_clk,                   //                clk.clk
		input  wire       i2c_idt_i2c_serial_sda_in, // i2c_idt_i2c_serial.sda_in
		input  wire       i2c_idt_i2c_serial_scl_in, //                   .scl_in
		output wire       i2c_idt_i2c_serial_sda_oe, //                   .sda_oe
		output wire       i2c_idt_i2c_serial_scl_oe, //                   .scl_oe
		input  wire [1:0] pio_intr_export,           //           pio_intr.export
		inout  wire [7:0] pio_led_export,            //            pio_led.export
		input  wire       reset_reset_n              //              reset.reset_n
	);

	wire  [31:0] nios2_data_master_readdata;                                // mm_interconnect_0:nios2_data_master_readdata -> nios2:d_readdata
	wire         nios2_data_master_waitrequest;                             // mm_interconnect_0:nios2_data_master_waitrequest -> nios2:d_waitrequest
	wire         nios2_data_master_debugaccess;                             // nios2:debug_mem_slave_debugaccess_to_roms -> mm_interconnect_0:nios2_data_master_debugaccess
	wire  [17:0] nios2_data_master_address;                                 // nios2:d_address -> mm_interconnect_0:nios2_data_master_address
	wire   [3:0] nios2_data_master_byteenable;                              // nios2:d_byteenable -> mm_interconnect_0:nios2_data_master_byteenable
	wire         nios2_data_master_read;                                    // nios2:d_read -> mm_interconnect_0:nios2_data_master_read
	wire         nios2_data_master_readdatavalid;                           // mm_interconnect_0:nios2_data_master_readdatavalid -> nios2:d_readdatavalid
	wire         nios2_data_master_write;                                   // nios2:d_write -> mm_interconnect_0:nios2_data_master_write
	wire  [31:0] nios2_data_master_writedata;                               // nios2:d_writedata -> mm_interconnect_0:nios2_data_master_writedata
	wire  [31:0] nios2_instruction_master_readdata;                         // mm_interconnect_0:nios2_instruction_master_readdata -> nios2:i_readdata
	wire         nios2_instruction_master_waitrequest;                      // mm_interconnect_0:nios2_instruction_master_waitrequest -> nios2:i_waitrequest
	wire  [17:0] nios2_instruction_master_address;                          // nios2:i_address -> mm_interconnect_0:nios2_instruction_master_address
	wire         nios2_instruction_master_read;                             // nios2:i_read -> mm_interconnect_0:nios2_instruction_master_read
	wire         nios2_instruction_master_readdatavalid;                    // mm_interconnect_0:nios2_instruction_master_readdatavalid -> nios2:i_readdatavalid
	wire         mm_interconnect_0_jtag_uart_avalon_jtag_slave_chipselect;  // mm_interconnect_0:jtag_uart_avalon_jtag_slave_chipselect -> jtag_uart:av_chipselect
	wire  [31:0] mm_interconnect_0_jtag_uart_avalon_jtag_slave_readdata;    // jtag_uart:av_readdata -> mm_interconnect_0:jtag_uart_avalon_jtag_slave_readdata
	wire         mm_interconnect_0_jtag_uart_avalon_jtag_slave_waitrequest; // jtag_uart:av_waitrequest -> mm_interconnect_0:jtag_uart_avalon_jtag_slave_waitrequest
	wire   [0:0] mm_interconnect_0_jtag_uart_avalon_jtag_slave_address;     // mm_interconnect_0:jtag_uart_avalon_jtag_slave_address -> jtag_uart:av_address
	wire         mm_interconnect_0_jtag_uart_avalon_jtag_slave_read;        // mm_interconnect_0:jtag_uart_avalon_jtag_slave_read -> jtag_uart:av_read_n
	wire         mm_interconnect_0_jtag_uart_avalon_jtag_slave_write;       // mm_interconnect_0:jtag_uart_avalon_jtag_slave_write -> jtag_uart:av_write_n
	wire  [31:0] mm_interconnect_0_jtag_uart_avalon_jtag_slave_writedata;   // mm_interconnect_0:jtag_uart_avalon_jtag_slave_writedata -> jtag_uart:av_writedata
	wire  [31:0] mm_interconnect_0_sysid_control_slave_readdata;            // sysid:readdata -> mm_interconnect_0:sysid_control_slave_readdata
	wire   [0:0] mm_interconnect_0_sysid_control_slave_address;             // mm_interconnect_0:sysid_control_slave_address -> sysid:address
	wire  [31:0] mm_interconnect_0_i2c_idt_csr_readdata;                    // i2c_idt:readdata -> mm_interconnect_0:i2c_idt_csr_readdata
	wire   [3:0] mm_interconnect_0_i2c_idt_csr_address;                     // mm_interconnect_0:i2c_idt_csr_address -> i2c_idt:addr
	wire         mm_interconnect_0_i2c_idt_csr_read;                        // mm_interconnect_0:i2c_idt_csr_read -> i2c_idt:read
	wire         mm_interconnect_0_i2c_idt_csr_write;                       // mm_interconnect_0:i2c_idt_csr_write -> i2c_idt:write
	wire  [31:0] mm_interconnect_0_i2c_idt_csr_writedata;                   // mm_interconnect_0:i2c_idt_csr_writedata -> i2c_idt:writedata
	wire  [31:0] mm_interconnect_0_nios2_debug_mem_slave_readdata;          // nios2:debug_mem_slave_readdata -> mm_interconnect_0:nios2_debug_mem_slave_readdata
	wire         mm_interconnect_0_nios2_debug_mem_slave_waitrequest;       // nios2:debug_mem_slave_waitrequest -> mm_interconnect_0:nios2_debug_mem_slave_waitrequest
	wire         mm_interconnect_0_nios2_debug_mem_slave_debugaccess;       // mm_interconnect_0:nios2_debug_mem_slave_debugaccess -> nios2:debug_mem_slave_debugaccess
	wire   [8:0] mm_interconnect_0_nios2_debug_mem_slave_address;           // mm_interconnect_0:nios2_debug_mem_slave_address -> nios2:debug_mem_slave_address
	wire         mm_interconnect_0_nios2_debug_mem_slave_read;              // mm_interconnect_0:nios2_debug_mem_slave_read -> nios2:debug_mem_slave_read
	wire   [3:0] mm_interconnect_0_nios2_debug_mem_slave_byteenable;        // mm_interconnect_0:nios2_debug_mem_slave_byteenable -> nios2:debug_mem_slave_byteenable
	wire         mm_interconnect_0_nios2_debug_mem_slave_write;             // mm_interconnect_0:nios2_debug_mem_slave_write -> nios2:debug_mem_slave_write
	wire  [31:0] mm_interconnect_0_nios2_debug_mem_slave_writedata;         // mm_interconnect_0:nios2_debug_mem_slave_writedata -> nios2:debug_mem_slave_writedata
	wire         mm_interconnect_0_onchip_ram_s1_chipselect;                // mm_interconnect_0:onchip_ram_s1_chipselect -> onchip_ram:chipselect
	wire  [31:0] mm_interconnect_0_onchip_ram_s1_readdata;                  // onchip_ram:readdata -> mm_interconnect_0:onchip_ram_s1_readdata
	wire  [13:0] mm_interconnect_0_onchip_ram_s1_address;                   // mm_interconnect_0:onchip_ram_s1_address -> onchip_ram:address
	wire   [3:0] mm_interconnect_0_onchip_ram_s1_byteenable;                // mm_interconnect_0:onchip_ram_s1_byteenable -> onchip_ram:byteenable
	wire         mm_interconnect_0_onchip_ram_s1_write;                     // mm_interconnect_0:onchip_ram_s1_write -> onchip_ram:write
	wire  [31:0] mm_interconnect_0_onchip_ram_s1_writedata;                 // mm_interconnect_0:onchip_ram_s1_writedata -> onchip_ram:writedata
	wire         mm_interconnect_0_onchip_ram_s1_clken;                     // mm_interconnect_0:onchip_ram_s1_clken -> onchip_ram:clken
	wire         mm_interconnect_0_onchip_rom_s1_chipselect;                // mm_interconnect_0:onchip_rom_s1_chipselect -> onchip_rom:chipselect
	wire  [31:0] mm_interconnect_0_onchip_rom_s1_readdata;                  // onchip_rom:readdata -> mm_interconnect_0:onchip_rom_s1_readdata
	wire         mm_interconnect_0_onchip_rom_s1_debugaccess;               // mm_interconnect_0:onchip_rom_s1_debugaccess -> onchip_rom:debugaccess
	wire  [13:0] mm_interconnect_0_onchip_rom_s1_address;                   // mm_interconnect_0:onchip_rom_s1_address -> onchip_rom:address
	wire   [3:0] mm_interconnect_0_onchip_rom_s1_byteenable;                // mm_interconnect_0:onchip_rom_s1_byteenable -> onchip_rom:byteenable
	wire         mm_interconnect_0_onchip_rom_s1_write;                     // mm_interconnect_0:onchip_rom_s1_write -> onchip_rom:write
	wire  [31:0] mm_interconnect_0_onchip_rom_s1_writedata;                 // mm_interconnect_0:onchip_rom_s1_writedata -> onchip_rom:writedata
	wire         mm_interconnect_0_onchip_rom_s1_clken;                     // mm_interconnect_0:onchip_rom_s1_clken -> onchip_rom:clken
	wire         mm_interconnect_0_pio_led_s1_chipselect;                   // mm_interconnect_0:pio_led_s1_chipselect -> pio_led:chipselect
	wire  [31:0] mm_interconnect_0_pio_led_s1_readdata;                     // pio_led:readdata -> mm_interconnect_0:pio_led_s1_readdata
	wire   [2:0] mm_interconnect_0_pio_led_s1_address;                      // mm_interconnect_0:pio_led_s1_address -> pio_led:address
	wire         mm_interconnect_0_pio_led_s1_write;                        // mm_interconnect_0:pio_led_s1_write -> pio_led:write_n
	wire  [31:0] mm_interconnect_0_pio_led_s1_writedata;                    // mm_interconnect_0:pio_led_s1_writedata -> pio_led:writedata
	wire         mm_interconnect_0_pio_intr_s1_chipselect;                  // mm_interconnect_0:pio_intr_s1_chipselect -> pio_intr:chipselect
	wire  [31:0] mm_interconnect_0_pio_intr_s1_readdata;                    // pio_intr:readdata -> mm_interconnect_0:pio_intr_s1_readdata
	wire   [1:0] mm_interconnect_0_pio_intr_s1_address;                     // mm_interconnect_0:pio_intr_s1_address -> pio_intr:address
	wire         mm_interconnect_0_pio_intr_s1_write;                       // mm_interconnect_0:pio_intr_s1_write -> pio_intr:write_n
	wire  [31:0] mm_interconnect_0_pio_intr_s1_writedata;                   // mm_interconnect_0:pio_intr_s1_writedata -> pio_intr:writedata
	wire         irq_mapper_receiver0_irq;                                  // i2c_idt:intr -> irq_mapper:receiver0_irq
	wire         irq_mapper_receiver1_irq;                                  // pio_led:irq -> irq_mapper:receiver1_irq
	wire         irq_mapper_receiver2_irq;                                  // pio_intr:irq -> irq_mapper:receiver2_irq
	wire         irq_mapper_receiver3_irq;                                  // jtag_uart:av_irq -> irq_mapper:receiver3_irq
	wire  [31:0] nios2_irq_irq;                                             // irq_mapper:sender_irq -> nios2:irq
	wire         rst_controller_reset_out_reset;                            // rst_controller:reset_out -> [i2c_idt:rst_n, irq_mapper:reset, jtag_uart:rst_n, mm_interconnect_0:nios2_reset_reset_bridge_in_reset_reset, nios2:reset_n, onchip_ram:reset, onchip_rom:reset, pio_intr:reset_n, pio_led:reset_n, rst_translator:in_reset, sysid:reset_n]
	wire         rst_controller_reset_out_reset_req;                        // rst_controller:reset_req -> [nios2:reset_req, onchip_ram:reset_req, onchip_rom:reset_req, rst_translator:reset_req_in]
	wire         nios2_debug_reset_request_reset;                           // nios2:debug_reset_request -> rst_controller:reset_in1

	altera_avalon_i2c #(
		.USE_AV_ST       (0),
		.FIFO_DEPTH      (4),
		.FIFO_DEPTH_LOG2 (2)
	) i2c_idt (
		.clk       (clk_clk),                                 //            clock.clk
		.rst_n     (~rst_controller_reset_out_reset),         //       reset_sink.reset_n
		.intr      (irq_mapper_receiver0_irq),                // interrupt_sender.irq
		.addr      (mm_interconnect_0_i2c_idt_csr_address),   //              csr.address
		.read      (mm_interconnect_0_i2c_idt_csr_read),      //                 .read
		.write     (mm_interconnect_0_i2c_idt_csr_write),     //                 .write
		.writedata (mm_interconnect_0_i2c_idt_csr_writedata), //                 .writedata
		.readdata  (mm_interconnect_0_i2c_idt_csr_readdata),  //                 .readdata
		.sda_in    (i2c_idt_i2c_serial_sda_in),               //       i2c_serial.sda_in
		.scl_in    (i2c_idt_i2c_serial_scl_in),               //                 .scl_in
		.sda_oe    (i2c_idt_i2c_serial_sda_oe),               //                 .sda_oe
		.scl_oe    (i2c_idt_i2c_serial_scl_oe),               //                 .scl_oe
		.src_data  (),                                        //      (terminated)
		.src_valid (),                                        //      (terminated)
		.src_ready (1'b0),                                    //      (terminated)
		.snk_data  (16'b0000000000000000),                    //      (terminated)
		.snk_valid (1'b0),                                    //      (terminated)
		.snk_ready ()                                         //      (terminated)
	);

	mysystem_jtag_uart jtag_uart (
		.clk            (clk_clk),                                                   //               clk.clk
		.rst_n          (~rst_controller_reset_out_reset),                           //             reset.reset_n
		.av_chipselect  (mm_interconnect_0_jtag_uart_avalon_jtag_slave_chipselect),  // avalon_jtag_slave.chipselect
		.av_address     (mm_interconnect_0_jtag_uart_avalon_jtag_slave_address),     //                  .address
		.av_read_n      (~mm_interconnect_0_jtag_uart_avalon_jtag_slave_read),       //                  .read_n
		.av_readdata    (mm_interconnect_0_jtag_uart_avalon_jtag_slave_readdata),    //                  .readdata
		.av_write_n     (~mm_interconnect_0_jtag_uart_avalon_jtag_slave_write),      //                  .write_n
		.av_writedata   (mm_interconnect_0_jtag_uart_avalon_jtag_slave_writedata),   //                  .writedata
		.av_waitrequest (mm_interconnect_0_jtag_uart_avalon_jtag_slave_waitrequest), //                  .waitrequest
		.av_irq         (irq_mapper_receiver3_irq)                                   //               irq.irq
	);

	mysystem_nios2 nios2 (
		.clk                                 (clk_clk),                                             //                       clk.clk
		.reset_n                             (~rst_controller_reset_out_reset),                     //                     reset.reset_n
		.reset_req                           (rst_controller_reset_out_reset_req),                  //                          .reset_req
		.d_address                           (nios2_data_master_address),                           //               data_master.address
		.d_byteenable                        (nios2_data_master_byteenable),                        //                          .byteenable
		.d_read                              (nios2_data_master_read),                              //                          .read
		.d_readdata                          (nios2_data_master_readdata),                          //                          .readdata
		.d_waitrequest                       (nios2_data_master_waitrequest),                       //                          .waitrequest
		.d_write                             (nios2_data_master_write),                             //                          .write
		.d_writedata                         (nios2_data_master_writedata),                         //                          .writedata
		.d_readdatavalid                     (nios2_data_master_readdatavalid),                     //                          .readdatavalid
		.debug_mem_slave_debugaccess_to_roms (nios2_data_master_debugaccess),                       //                          .debugaccess
		.i_address                           (nios2_instruction_master_address),                    //        instruction_master.address
		.i_read                              (nios2_instruction_master_read),                       //                          .read
		.i_readdata                          (nios2_instruction_master_readdata),                   //                          .readdata
		.i_waitrequest                       (nios2_instruction_master_waitrequest),                //                          .waitrequest
		.i_readdatavalid                     (nios2_instruction_master_readdatavalid),              //                          .readdatavalid
		.irq                                 (nios2_irq_irq),                                       //                       irq.irq
		.debug_reset_request                 (nios2_debug_reset_request_reset),                     //       debug_reset_request.reset
		.debug_mem_slave_address             (mm_interconnect_0_nios2_debug_mem_slave_address),     //           debug_mem_slave.address
		.debug_mem_slave_byteenable          (mm_interconnect_0_nios2_debug_mem_slave_byteenable),  //                          .byteenable
		.debug_mem_slave_debugaccess         (mm_interconnect_0_nios2_debug_mem_slave_debugaccess), //                          .debugaccess
		.debug_mem_slave_read                (mm_interconnect_0_nios2_debug_mem_slave_read),        //                          .read
		.debug_mem_slave_readdata            (mm_interconnect_0_nios2_debug_mem_slave_readdata),    //                          .readdata
		.debug_mem_slave_waitrequest         (mm_interconnect_0_nios2_debug_mem_slave_waitrequest), //                          .waitrequest
		.debug_mem_slave_write               (mm_interconnect_0_nios2_debug_mem_slave_write),       //                          .write
		.debug_mem_slave_writedata           (mm_interconnect_0_nios2_debug_mem_slave_writedata),   //                          .writedata
		.dummy_ci_port                       ()                                                     // custom_instruction_master.readra
	);

	mysystem_onchip_ram onchip_ram (
		.clk        (clk_clk),                                    //   clk1.clk
		.address    (mm_interconnect_0_onchip_ram_s1_address),    //     s1.address
		.clken      (mm_interconnect_0_onchip_ram_s1_clken),      //       .clken
		.chipselect (mm_interconnect_0_onchip_ram_s1_chipselect), //       .chipselect
		.write      (mm_interconnect_0_onchip_ram_s1_write),      //       .write
		.readdata   (mm_interconnect_0_onchip_ram_s1_readdata),   //       .readdata
		.writedata  (mm_interconnect_0_onchip_ram_s1_writedata),  //       .writedata
		.byteenable (mm_interconnect_0_onchip_ram_s1_byteenable), //       .byteenable
		.reset      (rst_controller_reset_out_reset),             // reset1.reset
		.reset_req  (rst_controller_reset_out_reset_req),         //       .reset_req
		.freeze     (1'b0)                                        // (terminated)
	);

	mysystem_onchip_rom onchip_rom (
		.clk         (clk_clk),                                     //   clk1.clk
		.address     (mm_interconnect_0_onchip_rom_s1_address),     //     s1.address
		.debugaccess (mm_interconnect_0_onchip_rom_s1_debugaccess), //       .debugaccess
		.clken       (mm_interconnect_0_onchip_rom_s1_clken),       //       .clken
		.chipselect  (mm_interconnect_0_onchip_rom_s1_chipselect),  //       .chipselect
		.write       (mm_interconnect_0_onchip_rom_s1_write),       //       .write
		.readdata    (mm_interconnect_0_onchip_rom_s1_readdata),    //       .readdata
		.writedata   (mm_interconnect_0_onchip_rom_s1_writedata),   //       .writedata
		.byteenable  (mm_interconnect_0_onchip_rom_s1_byteenable),  //       .byteenable
		.reset       (rst_controller_reset_out_reset),              // reset1.reset
		.reset_req   (rst_controller_reset_out_reset_req),          //       .reset_req
		.freeze      (1'b0)                                         // (terminated)
	);

	mysystem_pio_intr pio_intr (
		.clk        (clk_clk),                                  //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),          //               reset.reset_n
		.address    (mm_interconnect_0_pio_intr_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_pio_intr_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_pio_intr_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_pio_intr_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_pio_intr_s1_readdata),   //                    .readdata
		.in_port    (pio_intr_export),                          // external_connection.export
		.irq        (irq_mapper_receiver2_irq)                  //                 irq.irq
	);

	mysystem_pio_led pio_led (
		.clk        (clk_clk),                                 //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),         //               reset.reset_n
		.address    (mm_interconnect_0_pio_led_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_pio_led_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_pio_led_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_pio_led_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_pio_led_s1_readdata),   //                    .readdata
		.bidir_port (pio_led_export),                          // external_connection.export
		.irq        (irq_mapper_receiver1_irq)                 //                 irq.irq
	);

	mysystem_sysid sysid (
		.clock    (clk_clk),                                        //           clk.clk
		.reset_n  (~rst_controller_reset_out_reset),                //         reset.reset_n
		.readdata (mm_interconnect_0_sysid_control_slave_readdata), // control_slave.readdata
		.address  (mm_interconnect_0_sysid_control_slave_address)   //              .address
	);

	mysystem_mm_interconnect_0 mm_interconnect_0 (
		.clk_0_clk_clk                           (clk_clk),                                                   //                         clk_0_clk.clk
		.nios2_reset_reset_bridge_in_reset_reset (rst_controller_reset_out_reset),                            // nios2_reset_reset_bridge_in_reset.reset
		.nios2_data_master_address               (nios2_data_master_address),                                 //                 nios2_data_master.address
		.nios2_data_master_waitrequest           (nios2_data_master_waitrequest),                             //                                  .waitrequest
		.nios2_data_master_byteenable            (nios2_data_master_byteenable),                              //                                  .byteenable
		.nios2_data_master_read                  (nios2_data_master_read),                                    //                                  .read
		.nios2_data_master_readdata              (nios2_data_master_readdata),                                //                                  .readdata
		.nios2_data_master_readdatavalid         (nios2_data_master_readdatavalid),                           //                                  .readdatavalid
		.nios2_data_master_write                 (nios2_data_master_write),                                   //                                  .write
		.nios2_data_master_writedata             (nios2_data_master_writedata),                               //                                  .writedata
		.nios2_data_master_debugaccess           (nios2_data_master_debugaccess),                             //                                  .debugaccess
		.nios2_instruction_master_address        (nios2_instruction_master_address),                          //          nios2_instruction_master.address
		.nios2_instruction_master_waitrequest    (nios2_instruction_master_waitrequest),                      //                                  .waitrequest
		.nios2_instruction_master_read           (nios2_instruction_master_read),                             //                                  .read
		.nios2_instruction_master_readdata       (nios2_instruction_master_readdata),                         //                                  .readdata
		.nios2_instruction_master_readdatavalid  (nios2_instruction_master_readdatavalid),                    //                                  .readdatavalid
		.i2c_idt_csr_address                     (mm_interconnect_0_i2c_idt_csr_address),                     //                       i2c_idt_csr.address
		.i2c_idt_csr_write                       (mm_interconnect_0_i2c_idt_csr_write),                       //                                  .write
		.i2c_idt_csr_read                        (mm_interconnect_0_i2c_idt_csr_read),                        //                                  .read
		.i2c_idt_csr_readdata                    (mm_interconnect_0_i2c_idt_csr_readdata),                    //                                  .readdata
		.i2c_idt_csr_writedata                   (mm_interconnect_0_i2c_idt_csr_writedata),                   //                                  .writedata
		.jtag_uart_avalon_jtag_slave_address     (mm_interconnect_0_jtag_uart_avalon_jtag_slave_address),     //       jtag_uart_avalon_jtag_slave.address
		.jtag_uart_avalon_jtag_slave_write       (mm_interconnect_0_jtag_uart_avalon_jtag_slave_write),       //                                  .write
		.jtag_uart_avalon_jtag_slave_read        (mm_interconnect_0_jtag_uart_avalon_jtag_slave_read),        //                                  .read
		.jtag_uart_avalon_jtag_slave_readdata    (mm_interconnect_0_jtag_uart_avalon_jtag_slave_readdata),    //                                  .readdata
		.jtag_uart_avalon_jtag_slave_writedata   (mm_interconnect_0_jtag_uart_avalon_jtag_slave_writedata),   //                                  .writedata
		.jtag_uart_avalon_jtag_slave_waitrequest (mm_interconnect_0_jtag_uart_avalon_jtag_slave_waitrequest), //                                  .waitrequest
		.jtag_uart_avalon_jtag_slave_chipselect  (mm_interconnect_0_jtag_uart_avalon_jtag_slave_chipselect),  //                                  .chipselect
		.nios2_debug_mem_slave_address           (mm_interconnect_0_nios2_debug_mem_slave_address),           //             nios2_debug_mem_slave.address
		.nios2_debug_mem_slave_write             (mm_interconnect_0_nios2_debug_mem_slave_write),             //                                  .write
		.nios2_debug_mem_slave_read              (mm_interconnect_0_nios2_debug_mem_slave_read),              //                                  .read
		.nios2_debug_mem_slave_readdata          (mm_interconnect_0_nios2_debug_mem_slave_readdata),          //                                  .readdata
		.nios2_debug_mem_slave_writedata         (mm_interconnect_0_nios2_debug_mem_slave_writedata),         //                                  .writedata
		.nios2_debug_mem_slave_byteenable        (mm_interconnect_0_nios2_debug_mem_slave_byteenable),        //                                  .byteenable
		.nios2_debug_mem_slave_waitrequest       (mm_interconnect_0_nios2_debug_mem_slave_waitrequest),       //                                  .waitrequest
		.nios2_debug_mem_slave_debugaccess       (mm_interconnect_0_nios2_debug_mem_slave_debugaccess),       //                                  .debugaccess
		.onchip_ram_s1_address                   (mm_interconnect_0_onchip_ram_s1_address),                   //                     onchip_ram_s1.address
		.onchip_ram_s1_write                     (mm_interconnect_0_onchip_ram_s1_write),                     //                                  .write
		.onchip_ram_s1_readdata                  (mm_interconnect_0_onchip_ram_s1_readdata),                  //                                  .readdata
		.onchip_ram_s1_writedata                 (mm_interconnect_0_onchip_ram_s1_writedata),                 //                                  .writedata
		.onchip_ram_s1_byteenable                (mm_interconnect_0_onchip_ram_s1_byteenable),                //                                  .byteenable
		.onchip_ram_s1_chipselect                (mm_interconnect_0_onchip_ram_s1_chipselect),                //                                  .chipselect
		.onchip_ram_s1_clken                     (mm_interconnect_0_onchip_ram_s1_clken),                     //                                  .clken
		.onchip_rom_s1_address                   (mm_interconnect_0_onchip_rom_s1_address),                   //                     onchip_rom_s1.address
		.onchip_rom_s1_write                     (mm_interconnect_0_onchip_rom_s1_write),                     //                                  .write
		.onchip_rom_s1_readdata                  (mm_interconnect_0_onchip_rom_s1_readdata),                  //                                  .readdata
		.onchip_rom_s1_writedata                 (mm_interconnect_0_onchip_rom_s1_writedata),                 //                                  .writedata
		.onchip_rom_s1_byteenable                (mm_interconnect_0_onchip_rom_s1_byteenable),                //                                  .byteenable
		.onchip_rom_s1_chipselect                (mm_interconnect_0_onchip_rom_s1_chipselect),                //                                  .chipselect
		.onchip_rom_s1_clken                     (mm_interconnect_0_onchip_rom_s1_clken),                     //                                  .clken
		.onchip_rom_s1_debugaccess               (mm_interconnect_0_onchip_rom_s1_debugaccess),               //                                  .debugaccess
		.pio_intr_s1_address                     (mm_interconnect_0_pio_intr_s1_address),                     //                       pio_intr_s1.address
		.pio_intr_s1_write                       (mm_interconnect_0_pio_intr_s1_write),                       //                                  .write
		.pio_intr_s1_readdata                    (mm_interconnect_0_pio_intr_s1_readdata),                    //                                  .readdata
		.pio_intr_s1_writedata                   (mm_interconnect_0_pio_intr_s1_writedata),                   //                                  .writedata
		.pio_intr_s1_chipselect                  (mm_interconnect_0_pio_intr_s1_chipselect),                  //                                  .chipselect
		.pio_led_s1_address                      (mm_interconnect_0_pio_led_s1_address),                      //                        pio_led_s1.address
		.pio_led_s1_write                        (mm_interconnect_0_pio_led_s1_write),                        //                                  .write
		.pio_led_s1_readdata                     (mm_interconnect_0_pio_led_s1_readdata),                     //                                  .readdata
		.pio_led_s1_writedata                    (mm_interconnect_0_pio_led_s1_writedata),                    //                                  .writedata
		.pio_led_s1_chipselect                   (mm_interconnect_0_pio_led_s1_chipselect),                   //                                  .chipselect
		.sysid_control_slave_address             (mm_interconnect_0_sysid_control_slave_address),             //               sysid_control_slave.address
		.sysid_control_slave_readdata            (mm_interconnect_0_sysid_control_slave_readdata)             //                                  .readdata
	);

	mysystem_irq_mapper irq_mapper (
		.clk           (clk_clk),                        //       clk.clk
		.reset         (rst_controller_reset_out_reset), // clk_reset.reset
		.receiver0_irq (irq_mapper_receiver0_irq),       // receiver0.irq
		.receiver1_irq (irq_mapper_receiver1_irq),       // receiver1.irq
		.receiver2_irq (irq_mapper_receiver2_irq),       // receiver2.irq
		.receiver3_irq (irq_mapper_receiver3_irq),       // receiver3.irq
		.sender_irq    (nios2_irq_irq)                   //    sender.irq
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (2),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (1),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                     // reset_in0.reset
		.reset_in1      (nios2_debug_reset_request_reset),    // reset_in1.reset
		.clk            (clk_clk),                            //       clk.clk
		.reset_out      (rst_controller_reset_out_reset),     // reset_out.reset
		.reset_req      (rst_controller_reset_out_reset_req), //          .reset_req
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

endmodule
