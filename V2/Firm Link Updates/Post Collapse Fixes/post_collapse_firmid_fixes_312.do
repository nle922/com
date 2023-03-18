//Post collapse fixes for industry 312
args file_name_export
use "./Stata Files/Extracts/`file_name_export'", clear

replace firm_id = "" if obs_id == "1931312000000000018"
replace firm_id = "" if obs_id == "1935118000000000557"

//Fill in missing values
foreach type in firm{
	do "./Cleaning Scripts/General/gen_id" "312" "`type'"
}

preserve
keep if obs_id == "1931312000000000018"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929312000000000020"

//Diamond Match
preserve
keep if obs_id == "1935312000000000020"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929312000000000001"
replace firm_id = "`new_firmid'" if obs_id == "1931312000000000001"
replace firm_id = "`new_firmid'" if obs_id == "1933312000000000001"
replace firm_id = "`new_firmid'" if obs_id == "1935312000000000001"

//Chicago Book Match
preserve
keep if obs_id == "1935312000000000004"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931312000000000002"

//Union Match Company
preserve
keep if obs_id == "1929312000000000011"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933312000000000010"
replace firm_id = "`new_firmid'" if obs_id == "1935312000000000014"

save "./Stata Files/Extracts/`file_name_export'", replace
