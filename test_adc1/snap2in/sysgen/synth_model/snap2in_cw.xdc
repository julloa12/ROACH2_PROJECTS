

# Global period constraint
create_clock -name clk -period 8.3333 [get_ports clk]
# LOC constraints
set_property LOC d7hack [get_ports clk]
