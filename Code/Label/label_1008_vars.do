//label industry specific variables for industry 1008

//label output variables
local label_q = "qt."
local label_v = "value"

foreach type in q v {
	local rename_these = "" //this makes sure that if unab fails, rename_these is empty
	capture unab rename_these: gp_`type'_* 
	foreach output_var in `rename_these'  {
		local label_output = proper(subinstr(substr("`output_var'",6,.), "_", " ",.))
		capture label var `output_var' "Output: `label_output', `label_`type''"
	 }
}

//label input variables
local inputs "grinding_sand lime limestone salt_cake silica_sand soda_ash"

foreach input in `inputs' {
	local label_input = proper(subinstr("`input'", "_", " ",.))
	capture label var j_q_`input' "Inputs: `label_input', qt."
	capture label var j_v_`input' "Inputs: `label_input', value"
}

//label capital variables
local types_of_capital = "automatic furnace glass_window pressed_hand"

foreach type_of_capital in `types_of_capital' {
	local rename_these = "" //this makes sure that if unab fails, rename_these is empty
	capture unab rename_these: z_`type_of_capital'_*
	foreach capital_var in `rename_these' {
		local label_capital = proper(subinstr(substr("`capital_var'", 3, .), "_", " ", .))
		label var `capital_var' "Equipment: `label_capital'"
	}
}
