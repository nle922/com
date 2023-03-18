//Cleaning script for BR spreadsheet: 1407, 1408. The original files are already in Stata format.
//These don't really clean up the car product output variables
*Global variables referenced: rootDir_code, rootDir_dataBr

*Preliminaries
clear
capture log close
set more off

//clean individual years for 1408
forvalues year =1929(2)1935{
	do "$rootDir_code/`year'/clean_1408_`year'"
}
//clean the single year for 1407
do "$rootDir_code/1929/clean_1407_1929"
capture drop year 
gen year = 1929

//append the year files	together
//right now just append data for 1408 not 1407
use "$rootDir_dataBR/1929/1408/1408_1929_clean", clear
capture drop year
gen year = "1929"
forvalues year_val=1931(2)1935{
	append using "$rootDir_dataBR/`year_val'/1408/1408_`year_val'_clean"
	replace year = "`year_val'" if year=="." | year==""
}

//rename other products consistently
do "$rootDir_code/General/rename_otherProducts"
//label variables using CK's conventions
do "$rootDir_code/Label/label_ck_vars"
//label industry specific vars
do "$rootDir_code/Label/label_auto_vars"

//this code tries to generate revenue based on adding up revenue of individual products. 
do "$rootDir_code/Variable Checking/generate_output_value"

//merge in firmids here
gen a002_match = a002
//regularize firm names to ensure matching to firmIDs is correct
do "$rootDir_code/Matching/Regularize/regularize_namesFirm_AUTO" "a002_match" "a001"
//single file for all owner names is located in 1929 directory
local indnum = "1407_1408"
merge m:1 a002_match using "$rootDir_matching/Firms/`indnum'/match_`indnum'_firm_clean", nogen
drop a002_match

//translate existing estabids to our type of ID
local ID_firm  = "firm"
local ID_establishmet  = "plant"
foreach type in establishment firm {
	capture do "$rootDir_code/General/gen_ID" "AUTO" "`type'"
	capture do "$rootDir_code/General/translate_legacyIDs" "`ID_`type''id_1407_1408" "`type'"
}

//clean up state name variable
do "$rootDir_code/General/clean_state_name.do" "ag001" "ag001"

//Clean up the county name variable
qui do "$rootDir_code/General/clean_county_name.do" "ag003" "ag003" "ag001" "ag002"

//drop variables that are related to merging
capture drop _merge U* dummy_ID*
//make sure indCode is correct
capture drop z_indCode
gen z_indCode = "AUTO"
//this is variable for how the estabid was created
gen estabid_generated = "BR"
gen firmid_generated = "reclink"
//make everything a string for handling appending of the data later
qui tostring *, replace force
//order the variables
aorder *

//Finalize obs_id
replace obs_id = year+"AUTO"+obs_id

//for simplicity we'll just relabel this as industry `indnum' for all years even if individual years have different indnums
save "$rootDir_dataBR/Complete/1407_1408_all", replace
