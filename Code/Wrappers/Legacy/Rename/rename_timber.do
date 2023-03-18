//renaming of TIMBER dataset 
//Global variables: rootDir_dataLegacy, rootDir_Code

*Preliminaries
set more off
capture log close 

use "$rootDir_dataLegacy/Complete/timber_all.dta", replace

//rename other products consistently
do "$rootDir_code/General/rename_otherProducts"
//label these basic variables according to CK's scheme
do "$rootDir_code/Label/label_ck_vars"
//label industry specific variables
do "$rootDir_code/Label/label_timber_vars"

//translate existing IDs to our approach for generating IDs
//missing firmIDs (and establishment IDs?) at this point
foreach type in establishment firm {
	capture do "$rootDir_code/General/gen_ID" "311" "`type'"
	capture do "$rootDir_code/General/translate_legacyIDs" "`type'id_311" "`type'"
}

//generate flag for Census of Mines schedule. Flag will be used to make sure properly missing employment variables are left missing
do "$rootDir_code/Variable Checking/gen_mines_variable"

//clean up state name variable
do "$rootDir_code/General/clean_state_name.do" "ag001" "ag001"

//Clean up the county name variable
qui do "$rootDir_code/General/clean_county_name.do" "ag003" "ag003" "ag001" "ag002"

//make sure indCode is correct
capture drop z_indCode
gen z_indCode = "311"
//this variable identifies how estabIDs were generated
gen estabid_generated = "LEGACY"
gen firmid_generated = "reclink"
//tostring all variables for ease of appending industry files together
tostring *, replace force

//note that we are saving over the file that was originally loaded here
save "$rootDir_dataLegacy/Complete/timber_all.dta", replace
