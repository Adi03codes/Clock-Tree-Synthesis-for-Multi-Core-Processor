read_verilog ../src/cts_output.v
link_design top

create_clock -name core_clk -period 0.333 [get_ports clk]
report_clock_skew > ../reports/skew_report.rpt
report_timing > ../reports/timing.rpt
