//renames variables of 1401 industry to be consistent with CK Lee naming convention
//this is basically done already since cleaned up by CK in the file he sent
//Globals referenced: $rootDir_dataLegacy, $rootDir_code

*Preliminaries
capture log close 
set more off

//local for indnum of the industry
local indnum = 1401


//CZV 8/2/2022 Why are we doing this and not just using the "all" file?
/*
//note that there is no clean all file since no original spreadsheets at this point. 
//place to stash the running dataset consisting of individula year files
tempfile full_data

//cleaning and appending of individual year files. this is pretty minor since files were more or less clenaed before.
forvalues year=1929(2)1935{
	//use this when new sheets have been cleaned
	use "$rootDir_dataLegacy/`year'/1401_`year'_clean", clear
	capture rename idcode estabid_1401
	capture rename indc z_indCode
	label var estabid_1401 "Plant ID, 1401"
	capture drop year
	gen year = "`year'"
	save "$rootDir_dataLegacy/`year'/1401_`year'", replace
	
	if `year'>1929{
		append using "`full_data'"
	}
	save "`full_data'", replace
}

//load temp file and do some additional cleaning
use "`full_data'", clear
*/

use "$rootDir_dataLegacy/Complete/1401_all", clear

//rename other products consistently
do "$rootDir_code/General/rename_otherProducts"

//rename "basic" set of variables 
do "$rootDir_code/General/basic_rename"
//label these basic variables according to CK's scheme
do "$rootDir_code/Label/label_ck_vars"
//label industry specific variables
do "$rootDir_code/Label/label_1401_vars"

//fix mistaken estabIDs and one state
replace estabid_1401 = "il1001b" if year=="1931" & a001=="States Airoraft Corporation"
replace estabid_1401 = "ny5003b" if year=="1935" & a001=="argonaut aircraft"
replace estabid_1401 = "newid1" if year == "1929" & estabid_1401 == "ny002"
replace estabid_1401 = "newid2" if year == "1931" & estabid_1401 == "ny002"
replace estabid_1401 = "newid3" if year == "1929" & estabid_1401 == "ny005"
replace ag001 = "Connecticut" if year == "1931" & estabid_1401 == "ny005"
replace estabid_1401 = "newid4" if year == "1935" & estabid_1401 == "ny006"
replace estabid_1401 = "newid5" if year == "1935" & estabid_1401 == "ny1013"
replace estabid_1401 = "newid6" if year == "1935" & estabid_1401 == "ny1007"
replace estabid_1401 = "newid7" if year == "" & estabid_1401 == "pa002"

//merge in firmids here
gen a002_match = a002
//regularize firm names to ensure matching to firmIDs is correct
do "$rootDir_code/Matching/Regularize/regularize_namesFirm_`indnum'" "a002_match" "a001"

//single file for all owner names is located in 1929 directory
merge m:1 a002_match using "$rootDir_matching/Firms/`indnum'/match_`indnum'_firm_clean", nogen
drop a002_match

//translate existing IDs to our idiom
local ID_establishment = "estab"
local ID_firm = "firm"
foreach type in establishment firm {
	capture do "$rootDir_code/General/gen_ID" "1401" "`type'" 
	capture do "$rootDir_code/General/translate_legacyIDs" "`ID_`type''id_1401" "`type'"
}

//tostring all variables for consistency
tostring *, replace force

//generate flag for Census of Mines schedule. Flag will be used to make sure properly missing employment variables are left missing
do "$rootDir_code/Variable Checking/gen_mines_variable"

//clean up state names
do "$rootDir_code/General/clean_state_name.do" "ag001" "ag001"

//Clean up the county name variable
qui do "$rootDir_code/General/clean_county_name.do" "ag003" "ag003" "ag001" "ag002"

//make sure indCode is consistent
capture drop z_indCode
gen z_indCode = "1401"
//this variable identifies how estabIDs were generated
gen estabid_generated = "LEGACY"
gen firmid_generated = "LEGACY"
//all variables to strings for ease of appending later
tostring *, replace force
//order variables
aorder *

save "$rootDir_dataLegacy/Complete/1401_all.dta", replace
