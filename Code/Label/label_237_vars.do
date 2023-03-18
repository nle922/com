//label industry specific variables for industry 237

//label output variables
local outputs "linoleum piece_plain1 piece_plain2 piece_print1 piece_print2 piece_inlaid1 piece_inlaid2 piece_cork1 linoleum_rugs piece124_1 piece124_2"

foreach output in `outputs' {
	local label_output = proper(subinstr("`output'", "_", " ",.))
	capture label var gp_v_`output' "Output: `label_output', value"
	capture label var gp_q_`output' "Output: `label_output', qt."  
 }

//label input variables
local inputs "cotton_fabric jute_fabric castor pyroxylin alcohol pigments"

local label_cotton_fabric "Cotton Fabric"
local label_jute_fabric "Jute Fabric"
local label_castor "Castor"
local label_pyroxylin "Pyroxylin"
local label_alcohol "Alcohol"
local label_pigments "Pigments"

foreach input in `inputs' {
	capture rename j_q_`input' "Inputs: `label_`input'', qt."
	capture rename j_v_`input' "Inputs: `label_`input'', value"
}
