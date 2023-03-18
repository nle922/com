//Post collapse fixes for industry 1112
args file_name_export
use "./Stata Files/Extracts/`file_name_export'", replace

//From ind1112_fixes file
do "./SES1459263 Team Folder/V2/Firm Link Updates/Post Collapse Fixes/merge_fixes_final" "`file_name_export'" "1112"

//Final fixes
do "./SES1459263 Team Folder/V2/Firm Link Updates/Post Collapse Fixes/merge_fixes_final" "`file_name_export'" "1112" "ind1112_final_fixes"

preserve
keep if obs_id=="19331112000000000186"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id=="19331112000000000142"

save "./Stata Files/Extracts/`file_name_export'", replace
