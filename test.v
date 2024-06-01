module test
(
	 input CLOCK_50,
	 
    output VGA_HS,
    output VGA_VS,
    output [7:0] VGA_R,
    output [7:0] VGA_G,    
    output [7:0] VGA_B,    
    output VGA_BLANK_N,
    output VGA_SYNC_N,
    output VGA_CLK,  
		
	 output LED_config_finished,	
    input ov7670_pclk,
    output ov7670_xclk,
    input ov7670_vsync,
	 input ov7670_href,
    input [7:0] ov7670_data,
    output ov7670_sioc, 
    inout ov7670_siod, 
    
    output [12:0] DRAM_ADDR, 
    output DRAM_BA_0, 
    output DRAM_BA_1, 
    output DRAM_CAS_N, 
    output DRAM_CKE,
    output DRAM_CLK, 
    output DRAM_CS_N, 
    inout [15:0] DRAM_DQ, 
    output DRAM_LDQM, 
    output DRAM_UDQM, 
    output DRAM_RAS_N, 
    output DRAM_WE_N, 
	 
	 input [9:0] SW,
	 output [9:0] LEDR,
	 
	 output [11:0] test,
	 output test_clk
	 
);

assign LEDR[7:0] = test[7:0];
assign LEDR[9] = test_clk;

top_level top
(
	 .slide_sw_RESET(SW[2]),
	 .slide_sw_resend_reg_values(SW[3]),
	 .test_clk(test_clk),
	 .btn_take_snapshot(SW[0]),
	 .btn_display_snapshot(SW[1]),
	 .test(test),
	 .clk_50(CLOCK_50),
	 
	 .vga_hsync(VGA_HS),
    .vga_vsync(VGA_VS),
    .vga_r(VGA_R),   
    .vga_g(VGA_G),   
    .vga_b(VGA_B),    
    .vga_blank_N(VGA_BLANK_N),
    .vga_sync_N(VGA_SYNC_N),
    .vga_CLK(VGA_CLK),    
	 
	 
	 .LED_config_finished(LED_config_finished),
    .ov7670_pclk(ov7670_pclk),  
    .ov7670_xclk(ov7670_xclk),
    .ov7670_vsync(ov7670_vsync),
    .ov7670_href(ov7670_href),  
    .ov7670_data(ov7670_data), 
    .ov7670_sioc(ov7670_sioc), 
    .ov7670_siod(ov7670_siod), 
   
    .DRAM_ADDR(DRAM_ADDR),
    .DRAM_BA_0(DRAM_BA_0),
    .DRAM_BA_1(DRAM_BA_1),
    .DRAM_CAS_N(DRAM_CAS_N),
    .DRAM_CKE(DRAM_CKE),
    .DRAM_CLK(DRAM_CLK),
    .DRAM_CS_N(DRAM_CS_N),
    .DRAM_DQ(DRAM_DQ),
    .DRAM_LDQM(DRAM_LDQM),
    .DRAM_UDQM(DRAM_UDQM),
    .DRAM_RAS_N(DRAM_RAS_N),
    .DRAM_WE_N(DRAM_WE_N)
);

endmodule