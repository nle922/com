*NLZ: Program to recreate all the 1112 industry data
*Global variables referenced: rootDir_code, rootDir_dataBr

*Preliminaries
clear
capture log close
set more off

//this is local value for industry and handles the issue that industry number changes for this industry from year to year
local indnum=1112

//clean individual year files
forvalues year_val = 1929(2)1935{
	do "$rootDir_code/`year_val'/clean_`indnum'_`year_val'"
}

//append the year files together
use "$rootDir_dataBR/1929/`indnum'/`indnum'_1929_clean", clear
forvalues year_val=1931(2)1935{
	append using "$rootDir_dataBR/`year_val'/`indnum'/`indnum'_`year_val'_clean"
}

//rename other products consistently
do "$rootDir_code/General/rename_otherProducts"
//label variables using CK's conventions
do "$rootDir_code/Label/label_ck_vars"
//label industry specific variables
do "$rootDir_code/Label/label_1112_vars"

//This is just an "extra" entry for when a firm got the wrong form and the right one
drop if record == "sma167" & year == "1933"

//generate output variable here. This handles problem with some BR industries where because of limits on number of variables in a spreadsheet, we do not have revenue
do "$rootDir_code/Variable Checking/generate_output_value" "1929 1931 1935"

//Fix up existing estabids and translate to our type of identifiers
rename tempid estabid_`indnum'
do "$rootDir_code/Industry/fix_estabids_1112.do"
rename firm_code firmid_`indnum'

do "$rootDir_code/Industry/fix_firmids_1112.do"

//translate existing establishment and firm IDs to our idiom
local ID_establishment = "estab"
local ID_firm = "firm"
foreach type in establishment firm {
	capture do "$rootDir_code/General/gen_ID" "`indnum'" "`type'"
	capture do "$rootDir_code/General/translate_legacyIDs" "`ID_`type''id_`indnum'" "`type'"
}

//clean up state name variable
do "$rootDir_code/General/clean_state_name.do" "ag001" "ag001"

//Clean up the county name variable
qui do "$rootDir_code/General/clean_county_name.do" "ag003" "ag003" "ag001" "ag002"

//drop variables that are related to merging
capture drop _merge U* dummy_ID*
//make sure indCode is correct
capture drop z_indCode
gen z_indCode = "1112"
//this is variable for how the estabid was created
gen estabid_generated = "BR"
gen firmid_generated = "BR"
//make everything a string for handling appending of the data later
qui tostring *, replace force
//order the variables
aorder *

//Finalize obs_id
replace obs_id = year+"`indnum'"+obs_id

//for simplicity we'll just relabel this as industry `indnum' for all years even if individual years have different indnums
save "$rootDir_dataBR/Complete/`indnum'_all", replace

