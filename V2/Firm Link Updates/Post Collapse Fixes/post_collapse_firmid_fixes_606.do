//Post collapse fixes for industry 606
args file_name_export

//From ind606_fixes file
do "./SES1459263 Team Folder/V2/Firm Link Updates/Post Collapse Fixes/merge_fixes_final" "`file_name_export'" "606"

//United Carbon Co
preserve
keep if obs_id == "1931606000000000007"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935606000000000039"

//JM Huber
preserve
keep if obs_id == "1931606000000000012"
local new_firmid = firm_id in 1
local new_estabid = establishment_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933606000000000024"
replace firm_id = "`new_firmid'" if obs_id == "1935606000000000018"

//Western Carbon
replace firm_id = "" if obs_id == "1931606000000000042"

//Fill in missing values 
foreach type in firm {
	do "./Cleaning Scripts/General/gen_id" "606" "`type'"
}

preserve
keep if obs_id == "1931606000000000042"
local new_firmid = firm_id in 1
local new_estabid = establishment_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931606000000000033"
replace firm_id = "`new_firmid'" if obs_id == "1931606000000000050"

save "./Stata Files/Extracts/`file_name_export'", replace
