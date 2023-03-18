*NLZ: wrapper do file for cleaning sugar refining data
*Global variables referenced: rootDir_code, rootDir_dataBr

*Preliminaries
clear
capture log close
set more off

//cleans individual yea datasets
forvalues year_val = 1929(2)1935{
	do "$rootDir_code/`year_val'/clean_sugar_`year_val'"
}

//this appends individual year files together
forvalues year_val=1929(2)1933{
	append using "$rootDir_dataLegacy/`year_val'/sugar_`year_val'_clean"
}

//Finalize obs_id
replace obs_id = year+"131"+obs_id

save "$rootDir_dataLegacy/Complete/sugar_refining_all", replace

