*NLZ: Program to recreate all the cigarette data (ind 1656 in 1929, 1608 in the rest)
*Global variables referenced: rootDir_code, rootDir_dataBr

*Preliminaries
clear
capture log close
set more off

//this is local value for industry and handles the issue that industry number changes for this industry from year to year
local indnum=1608

//clean individual year files
do "$rootDir_code/1929/clean_1656_1929"
forvalues year_val=1931(2)1935{
	do "$rootDir_code/`year_val'/clean_`indnum'_`year_val'"
}

//merge in the establishment IDs
do "$rootDir_code/General/merge_estabs" "`indnum'" "record" "BR"

//hardcode the small issue with 1656 in 1929
use "$rootDir_dataBR/1929/1656/1656_1929_clean", clear
capture drop year
gen year = "1929"
//append the year files	together
forvalues year_val=1931(2)1935{
	append using "$rootDir_dataBR/`year_val'/`indnum'/`indnum'_`year_val'_clean"
	replace year = "`year_val'" if year=="." | year==""
}

//rename other products consistently
do "$rootDir_code/General/rename_otherProducts"
//label variables using CK's conventions
do "$rootDir_code/Label/label_ck_vars"
//label industry specific variables
do "$rootDir_code/Label/label_1608_vars"

//merge in firmids here
gen a002_match = a002
replace a002_match = ustrtrim(a002_match)
//regularize firm names to ensure matching to firmIDs is correct
do "$rootDir_code/Matching/Regularize/regularize_namesFirm_`indnum'" "a002_match" "a001"
//single file for all owner names is located in 1929 directory
merge m:1 a002_match using "$rootDir_matching/Firms/`indnum'/match_`indnum'_firm_clean", nogen
drop a002_match

//translate existing IDs to our idiom
capture do "$rootDir_code/General/gen_ID" "1608" "firm"
capture do "$rootDir_code/General/translate_legacyIDs" "firmid_1608" "firm"

//generate output varible here. This handles problem with some BR industries where because of limits on number of variables in a spreadsheet, we do not have revenue
do "$rootDir_code/Variable Checking/generate_output_value" "1929 1931 1933"

//clean up state name variable
do "$rootDir_code/General/clean_state_name.do" "ag001" "ag001"

//Clean up the county name variable
qui do "$rootDir_code/General/clean_county_name.do" "ag003" "ag003" "ag001" "ag002"

//drop variables that are related to merging
capture drop _merge U* dummy_ID*
//make sure indCode is correct
capture drop z_indCode 
capture gen z_indCode = "1608"
//this is variable for how the estabid was created
gen estabid_generated = "BR"
gen firmid_generated = "reclink"
//make everything a string for handling appending of the data later
qui tostring *, replace force
//order the variables
aorder *

replace obs_id = year+"`indnum'"+obs_id

//for simplicity we'll just relabel this as industry `indnum' for all years even if individual years have different indnums
save "$rootDir_dataBR/Complete/`indnum'_all", replace
