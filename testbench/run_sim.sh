qrun -64 +acc -sv ddr3_module.sv ddr3_dimm_micron_sim.sv ddr3.sv  -reflib /home/robin/workdir/xilinx_sims/unisims_ver ../rtl/* \
-reflib /home/robin/workdir/xilinx_sims/secureip -reflib /home/robin/workdir/xilinx_sims/unifast_ver \
-reflib /home/robin/workdir/xilinx_sims/simprims_ver -reflib /home/robin/workdir/xilinx_sims/unimacro_ver \
/home/robin/Tools/Xilinx/Vivado/2023.1/data/verilog/src/glbl.v -top glbl \
 -top ddr3_dimm_micron_sim -gui=interactive -do run.tcl -timescale "1ps/1ps"