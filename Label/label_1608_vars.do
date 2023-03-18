//label industry specific variables for industry 1608

//label output variables
local label_q = "qt."
local label_v = "value"
local outputs "snuff tobacco cigarettes cir"

foreach type in q v {
	foreach output in `outputs' {
		local label_output = proper("`output'")
		capture label var gp_`type'_`output' "Output: `label_output', `label_`type''"
	 }
}
