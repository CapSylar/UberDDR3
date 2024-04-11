
set sim_top sim:/ddr3_dimm_micron_sim
set ddr3_top ${sim_top}/ddr3_top
set ddr3_phy ${ddr3_top}/ddr3_phy_inst

add wave -divider {CONTROLLER}
add wave ${ddr3_top}/i_controller_clk;
add wave ${ddr3_top}/i_ddr3_clk;
add wave ${ddr3_top}/i_ref_clk;
add wave ${ddr3_top}/i_ddr3_clk_90;
add wave ${ddr3_top}/i_rst_n;

add wave -radix ascii -color gold ${sim_top}/command_used;
add wave -color gold ${ddr3_top}/o_ddr3_cs_n;

add wave -divider {WISHBONE INTERFACE}
add wave ${ddr3_top}/i_wb_cyc;
add wave ${ddr3_top}/i_wb_stb;
add wave ${ddr3_top}/i_wb_we;
add wave ${ddr3_top}/i_wb_addr;
add wave ${ddr3_top}/i_wb_data;
add wave ${ddr3_top}/i_wb_sel;

add wave ${ddr3_top}/o_wb_stall;
add wave ${ddr3_top}/o_wb_ack;
add wave ${ddr3_top}/o_wb_data;

add wave -divider {DDR3 I/O INTERFACE}
add wave ${ddr3_top}/o_ddr3_clk_p;
add wave ${ddr3_top}/o_ddr3_clk_n;
add wave ${ddr3_top}/o_ddr3_reset_n;
add wave ${ddr3_top}/o_ddr3_cke;
add wave ${ddr3_top}/o_ddr3_cs_n;
add wave ${ddr3_top}/o_ddr3_ras_n;
add wave ${ddr3_top}/o_ddr3_cas_n;
add wave ${ddr3_top}/o_ddr3_we_n;
add wave ${ddr3_top}/o_ddr3_addr;
add wave ${ddr3_top}/o_ddr3_ba_addr;
add wave ${ddr3_top}/io_ddr3_dq;
add wave ${ddr3_top}/io_ddr3_dqs;
add wave ${ddr3_top}/io_ddr3_dqs_n;
add wave ${ddr3_top}/o_ddr3_dm;
add wave ${ddr3_top}/o_ddr3_odt;

transcript off
run -all