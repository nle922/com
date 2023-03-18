//label industry specific variables for industry 705

//label output variables
local label_q = "qt."
local label_v = "value"
local label_u = "units"

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
