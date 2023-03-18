//Merge fixes from file ind`ind_num'_fixes, which should contain obs_id and obs_id_new. 
//obs_id should either be obs_id to update firm ID with, blank, or "Seed".
args file_name_export ind_num file_of_fixes

if "`file_of_fixes'"==""{
	local file_of_fixes = "ind`ind_num'_fixes.xlsx"
}

//File with all updates
//Should be unique on obs_id
import excel "./SES1459263 Team Folder/V2/Firm Link Updates/Post Collapse Fixes/`file_of_fixes'", sheet("Sheet1") allstring clear firstrow
gen orig_data = substr(obs_id_new, 1,1) == "z"
replace obs_id_new = subinstr(obs_id_new, "z", "", .)
replace obs_id = subinstr(obs_id, "z", "", .)
gen new_firm = obs_id_new == ""
gen seed = obs_id_new == "Seed"
replace obs_id_new = obs_id if new_firm | seed
keep new_firm seed obs_id_new obs_id  orig_data
tempfile updates
savesome obs_id obs_id_new new_firm using `updates'

//File with new firm IDs for new firms and seeds
//Should be unique on obs_id_new
keep if new_firm | seed
foreach type in firm {
	qui do "./Cleaning Scripts/General/gen_id" "`ind_num'" "`type'"
}
tempfile new_firmids
keep obs_id_new firm_id 
rename obs_id_new obs_id
save `new_firmids', replace

//Update extract file with new firm IDs for seed | new_firm cases
use "./Stata Files/Extracts/`file_name_export'", replace
merge 1:1 obs_id using `new_firmids', replace update
keep firm_id obs_id
rename obs_id obs_id_new
tempfile extract_updates
save `extract_updates', replace

//Attach new firm_ids to updates file
use `updates', replace
merge m:1 obs_id_new using `extract_updates'
keep if _merge == 3
tempfile updates_update
savesome obs_id firm_id new_firm using `updates_update'

//Merge with original file to update 
use "./Stata Files/Extracts/`file_name_export'", replace
merge 1:1 obs_id using `updates_update', update replace
drop if _merge == 2 //Shouldn't be necessary

//For new firms, enforce consistent firms within an establishment
capture drop seq
bysort establishment_id: egen seq =  rank(new_firm), unique
bysort establishment_id (new_firm): carryforward new_firm, replace
replace firm_id = "" if new_firm == 1 & industry_code_num == "`ind_num'" & (seq > 1 | seq == .)
sort establishment_id seq
by establishment_id (seq): carryforward firm_id, replace

//Cleanup
foreach var_to_drop in _merge seq new_firm dropped_firmid{
	capture drop `var_to_drop'
}

save "./Stata Files/Extracts/`file_name_export'", replace
