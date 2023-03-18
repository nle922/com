//Post collapse fixes for industry 101
args file_name_export

//Slightly different format of fixes here so code slightly different from other industries
import excel "./SES1459263 Team Folder/V2/Firm Link Updates/Post Collapse Fixes/ind101_fixes.xlsx", sheet("Sheet1") allstring clear
rename A obs_id_new
rename B obs_id
gen obs_id_merge = obs_id_new
replace obs_id_merge = obs_id if obs_id_merge == ""
rename C firm_id_orig
keep obs_id obs_id_merge obs_id_new firm_id_orig
tempfile fixes
save `fixes'

//Get list of non-new firms
preserve
	keep obs_id_new
	duplicates drop obs_id_new, force
	rename obs_id_new obs_id_merge
	drop if obs_id_merge == ""
	tempfile non_new_firms
	save `non_new_firms'
restore

//Reset firm IDs for update cases
keep if obs_id_new == "" | obs_id_new == obs_id
gen firm_id = ""
foreach type in firm {
	do "./Cleaning Scripts/General/gen_id" "101" "`type'"
}
keep obs_id firm_id
rename obs_id obs_id_merge
merge 1:m obs_id_merge using `fixes', nogen
//Identify the non-new firms
merge m:1 obs_id_merge using `non_new_firms'
gen new_firm = _merge == 1
keep obs_id firm_id new_firm firm_id_orig
save `fixes', replace

use "./Stata Files/Extracts/`file_name_export'", clear
//Update the firm IDs
merge 1:1 obs_id using `fixes', update replace
drop if _merge == 2 //Handful don't line up

//Update firm IDs for new firms
replace firm_id = "" if new_firm == 1 & industry_code_num=="101"
foreach type in firm {
	do "./Cleaning Scripts/General/gen_id" "101" "`type'"
}
capture drop seq
bysort establishment_id: egen seq = seq()
replace firm_id = "" if seq>1 & new_firm == 1 & industry_code_num == "101"
sort establishment_id seq
by establishment_id (seq): carryforward firm_id, replace
drop _merge seq new_firm

//Other Fixes

//New firm IDs
replace firm_id = "" if obs_id=="1931101000000003950"
replace firm_id = "" if obs_id=="1929101000000003570"

//Fill in missing values 
foreach type in firm{
	do "./Cleaning Scripts/General/gen_id" "101" "`type'"
}

//MEYER BOTTLING COMPANY
preserve
keep if obs_id == "1935101000000000203"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933101000000000183"
replace firm_id = "`new_firmid'" if obs_id == "1935101000000000176"		
replace firm_id = "`new_firmid'" if obs_id == "1933101000000000158"	

//NORFOLK COCA COLA BOTTLING WKS. INC.
preserve
keep if obs_id == "1933101000000002718"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929101000000003639"		
replace firm_id = "`new_firmid'" if obs_id == "1935101000000002411"		
replace firm_id = "`new_firmid'" if obs_id == "1931101000000003943"		

//EXMORE COCA COLA BOTTLING WKS.
preserve
keep if obs_id == "1931101000000003950"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1935101000000002368"		
replace firm_id = "`new_firmid'" if obs_id == "1933101000000002726"		

save "./Stata Files/Extracts/`file_name_export'", replace
