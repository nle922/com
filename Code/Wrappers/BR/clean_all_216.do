*NLZ: Program to recreate all the 216 industry data
*Global variables referenced: rootDir_code, rootDir_dataBR

*Preliminaries
capture log close
set more off

//set indnum 
local indnum = 216
//These data were already in Stata format from CK Lee so we will just append them together
use "$rootDir_dataBR/1929/216/1929_Ind216.dta", clear
capture drop year
gen year = 1929
forvalues year_val =1931(2)1935{
	append using "$rootDir_dataBR/`year_val'/216/`year_val'_Ind216.dta"
	replace year = `year_val' if year==.
}

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"


//tostring all variables for consistency
tostring *, replace force

//rename other products consistently
do "$rootDir_code/General/rename_otherProducts"
//label variables using CK's conventions
do "$rootDir_code/Label/label_ck_vars"
//label industry specific vars. This needs to be written for output and input products
//do "$rootDir_code/Label/label_216_vars"

//I'm pretty sure this is right with our conventions
rename a004 am000
rename ag005 a004 

//Fixes some core variables that were mislabeled in the original data
gen d008 = ""
replace d008 = d005 if year == "1935"
replace d005 = "" if year == "1935"
replace d008 = d003 if year == "1933"
replace d003 = "" if year == "1933"
replace e002t = "" if year == "1929"

//make the ff00up variable consistent with ours
gen f00up = ""
replace f00up = "Used" if f000u == "yes"
replace f00up = "Purchased" if f000p == "yes"
drop f000u f000p

//Power variables
foreach v in hp001h hp001n hp002h hp002n hp004h hp004n{		//These variables should be blank for 1935
	replace `v' = "." if year == "1935"
}
foreach v in hp003gh hp003gk hp003gn hp003h hp003n hp003ngh hp003ngn{		//003 should not be in 1935 (should be split into 005 and 006)
	replace `v' = "." if year == "1935"
}
foreach v in 001 002 004{			//Naming convention consistent with ours
	rename hp`v'ngh hp`v'oh
	rename hp`v'ngn hp`v'on
}

foreach n in 001 002 003 004 005 006 007{
	rename ff`n'c ff`n'v
}


//Fix miscoded salaries for cotton (from the ICPSR data)
//CZV Double check this (did we clean it up in the original data now?)
destring e005s, gen(e005s_num) force
destring e009s, gen(e009s_num) force
replace e005s_num = e009s_num - e005s_num 
tostring e005s_num, replace force
replace e005s = e005s_num if year == "1929" & z_indCode == "216" 
drop e005s_num e009s_num

//fixes establishment IDs for 216
rename idcode estabid_216
do "$rootDir_code/1933/fix_estabids_216_1933"
do "$rootDir_code/1935/fix_estabids_216_1935"
//This save is important here for proper merging to firmids!
save "$rootDir_dataBR/Complete/216_all", replace

//merge in firmids here
gen a002_match = a002
//regularize names to ensure correct matching back to firmIDs
do "$rootDir_code/Matching/Regularize/regularize_namesFirm_`indnum'" "a002_match" "a001"
merge m:1 a002_match using "$rootDir_matching/Firms/`indnum'/match_`indnum'_firm_clean", nogen
drop a002_match

//translate existing establishment and firm IDs to our idiom
local ID_establishment = "estab"
local ID_firm = "firm"

replace firmid_216 = round(runiform()*1000000000) if firmid_216 == .	//Blank firm ids cause errors, generate fake ones, at least within establishments these will combine later in code

foreach type in establishment firm {
	capture do "$rootDir_code/General/gen_ID" "`indnum'" "`type'"
	capture do "$rootDir_code/General/translate_legacyIDs" "`ID_`type''id_`indnum'" "`type'"
}


//clean up state name variable
do "$rootDir_code/General/clean_state_name.do" "ag001" "ag001"

//Clean up the county name variable
qui do "$rootDir_code/General/clean_county_name.do" "ag003" "ag003" "ag001" "ag002"

//drop some useless variables
drop x*
//drop variables that are related to merging
capture drop _merge U* dummy_ID*

//make sure indCode is correct
capture drop z_indCode
gen z_indCode = 216
//this is variable for how the estabid was created
gen estabid_generated = "BR"
gen firmid_generated = "reclink"
//make everything a string for handling appending of the data later
qui tostring *, replace force
//order the variables
aorder *

replace obs_id = year+"216"+obs_id

//for simplicity we'll just relabel this as industry `indnum' for all years even if individual years have different indnums
save "$rootDir_dataBR/Complete/216_all", replace
