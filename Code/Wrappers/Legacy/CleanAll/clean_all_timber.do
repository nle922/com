//NLZ: wrapper do file for cleaning timber dataset
//data here are incomplete for all years (particularly 1935). See the spreadsheet timber_collection.xlsx for what should be here

//Preliminaries
capture log close
clear
set more off

//clean up the individual year files
//currently 1935 is missing completely
do "$rootDir_code/1931/clean_timber_1931_other"
forvalues year_val=1929(2)1933{
	do "$rootDir_code/`year_val'/clean_timber_`year_val'"
}

//apppend the individual files together including the "Other" file for 1931
append using "$rootDir_dataLegacy/1931/timber_1931_clean_other"
forvalues year_val=1929(2)1931{
	append using "$rootDir_dataLegacy/`year_val'/timber_`year_val'_clean"
}

replace obs_id = year+"311"+obs_id

save "$rootDir_dataLegacy/Complete/timber_all", replace
