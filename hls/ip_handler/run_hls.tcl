open_project ip_handler_prj

set_top ip_handler

add_files ip_handler.cpp
add_files -tb test_ip_handler.cpp

open_solution "solution1"
set_part {xc7vx690tffg1761-2}
create_clock -period 6.4 -name default

#csim_design  -clean
csynth_design
#cosim_design -tool xsim -rtl verilog -trace_level none 
export_design -format ip_catalog -display_name "IP Handler for 10G TCP Offload Engine" -vendor "ethz.systems" -version "1.2"

exit

