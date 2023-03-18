//Treated as a "legacy" because data from C.K. Lee and Paul Rhode

*Preliminaries
clear
capture log close
set more off

//cleans individual yea datasets
forvalues year_val = 1929(2)1935{
	do "$rootDir_code/`year_val'/clean_1401_`year_val'"
}

//this appends individual year files together
forvalues year_val=1929(2)1933{
	append using "$rootDir_dataLegacy/`year_val'/1401_`year_val'_clean"
}

//Finalize obs_id
replace obs_id = year+"1401"+obs_id

save "$rootDir_dataLegacy/Complete/1401_all", replace