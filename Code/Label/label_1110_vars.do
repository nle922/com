//label industry specific variables for industry 1110

//label output variables
foreach type in q u v {
	local rename_these = "" //this makes sure that if unab fails, rename_these is empty
	capture unab rename_these: gp_`type'_* 
	foreach output_var in `rename_these'  {
		local label_output = proper(subinstr(substr("`output_var'",6,.), "_", " ",.))
		capture label var `output_var' "Output: `label_output', `label_`type''"
	 }
}

//label input variables
foreach type in q u v {
	local rename_these = "" //this makes sure that if unab fails, rename_these is empty
	capture unab rename_these: j_`type'_*
	foreach input_var in `rename_these'  {
		local label_input = proper(subinstr(substr("`input_var'",5,.), "_", " ",.))
		capture label var `input_var' "Input: `label_input', `label_`type''"
	 }
}

//label z variables
local types_of_capital "stack furnace sintering"

foreach type_of_capital in `types_of_capital' {
	local rename_these = "" //this makes sure that if unab fails, rename_these is empty
	capture unab rename_these: z_`type_of_capital'_*
	foreach capital_var in `rename_these' {
		local capital_label = proper(subinstr(substr("`capital_var'", 3, .), "_", " ", .))
		capture label var `capital_var' "Equipment: `capital_label'"
	}
}
