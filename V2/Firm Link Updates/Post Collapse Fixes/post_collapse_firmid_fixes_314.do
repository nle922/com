//Post collapse fixes for industry 314
args file_name_export
use "./Stata Files/Extracts/`file_name_export'", clear

//Final fixes
do "./SES1459263 Team Folder/V2/Firm Link Updates/Post Collapse Fixes/merge_fixes_final" "`file_name_export'" "314" "ind314_final_fixes"

save "./Stata Files/Extracts/`file_name_export'", replace
