read_verilog ../src/top.v
link_design top

create_clock -name core_clk -period 0.333 [get_ports clk] ;# 3 GHz clock
set_input_delay 0.05 -clock core_clk [all_inputs]
set_output_delay 0.05 -clock core_clk [all_outputs]

cts
write_verilog ../src/cts_output.v
