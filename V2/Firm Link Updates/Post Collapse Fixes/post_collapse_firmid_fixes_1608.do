//Post collapse fixes for industry 1608
args file_name_export
use "./Stata Files/Extracts/`file_name_export'", clear

//Combine Liggett & Meyers firm
preserve
keep if obs_id == "19311608000000000004"
local new_firmid = firm_id in 1
restore

preserve
keep if obs_id == "19351608000000000020"
local update_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if firm_id == "`update_firmid'"

preserve
keep if obs_id == "19351608000000000004"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351608000000000008"

save "./Stata Files/Extracts/`file_name_export'", replace
