//Post collapse fixes for industry 131
args file_name_export
use "./Stata Files/Extracts/`file_name_export'", clear

replace firm_id = "" if obs_id == "1929131000000000009"

//Fill in missing values 
foreach type in firm {
	do "./Cleaning Scripts/General/gen_id" "131" "`type'"
}

//Revere Sugar Refinery
preserve
keep if obs_id == "1929131000000000009"
local new_firmid = firm_id in 1
local new_estabid = establishment_id in 1
restore		
replace firm_id = "`new_firmid'" if obs_id == "1935131000000000009"
replace firm_id = "`new_firmid'" if obs_id == "1933131000000000009"
replace firm_id = "`new_firmid'" if obs_id == "1931131000000000009"

//National Sugar Refinery
preserve
keep if obs_id == "1933131000000000014"
local new_firmid = firm_id in 1
local new_estabid = establishment_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1935131000000000014"

save "./Stata Files/Extracts/`file_name_export'", replace
