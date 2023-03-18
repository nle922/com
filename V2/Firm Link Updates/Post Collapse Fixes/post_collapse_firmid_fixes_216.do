//Post collapse fixes for industry 216
args file_name_export
use "./Stata Files/Extracts/`file_name_export'", clear

preserve
keep if obs_id == "1933216000000000496"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935216000000000495"
replace firm_id = "`new_firmid'" if obs_id == "1933216000000001948"

//Globe Cotton Mills
replace firm_id = "" if obs_id == "1933216000000000496"
//Arlington Cotton Mills
replace firm_id = "" if obs_id == "1929216000000001913"

preserve
keep if obs_id == "1935216000000001537"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id=="1929216000000001536"

replace establishment_id = "" if obs_id=="1931216000000000483"
replace establishment_id = "" if obs_id=="1935216000000001688"

//Fill in missing values 
foreach type in firm establishment{
	do "./Cleaning Scripts/General/gen_id" "216" "`type'"
}

preserve
keep if obs_id == "1933216000000000496"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935216000000000495"
replace firm_id = "`new_firmid'" if obs_id == "1931216000000000494"
replace firm_id = "`new_firmid'" if obs_id == "1929216000000000497"

save "./Stata Files/Extracts/`file_name_export'", replace

//Load other 216 fixes
do "./SES1459263 Team Folder/V2/Firm Link Updates/Post Collapse Fixes/merge_fixes_final" "`file_name_export'" "216"

//Final fixes
do "./SES1459263 Team Folder/V2/Firm Link Updates/Post Collapse Fixes/merge_fixes_final" "`file_name_export'" "216" "ind216_final_fixes"

save "./Stata Files/Extracts/`file_name_export'", replace
