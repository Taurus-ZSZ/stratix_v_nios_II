module fpga_top(

    input   wire        CLK_125M     ,
    //input   wire        rst_n       ,
    inout  wire [7:0]  leds     

);
wire rst_n;
wire [1:0] intr;

wire txd, rxd;

global_reset#(
    .rst_num     (8'd10),
    .rst_type    (1'd0 )                 //复位模式 0：低有效  1：高有效
)global_reset_inst
(
	.clk    (CLK_125M   ),
	.locked (1'b1       ),
	.g_rst  (rst_n      )
);


	 
    mysystem u0 (
        .clk_clk        (CLK_125M   ),  //  clk.clk
        .reset_reset_n  (rst_n      ),  //  reset.reset_n
        .pio_led_export (leds       ),  //  pio_led.export
		  .pio_intr_export (intr      ),	 //  pio_intr.export 
		  .uart_0_rxd      (txd			),      //   uart_0.rxd
        .uart_0_txd      (rxd			)       //         .txd
	);
	
	const_ip	const_ip_inst (
	.result ( intr )
	);

	uart_control #
	(
		. BAUD_SET_COUNTER (1085)   //100M, 9600 计算方式BAUD_SET_COUNTER = 时钟频率/波特率取整即可
	)uart_control_inst
	(
		.clk	(clk	 ),//input		wire 	
		.rst_n(rst_n ),//input		wire	
		.rxd	(rxd   ),//input		wire	
		.txd	(txd   ) //output	wire	
	);

	
    
    
endmodule
