//NLZ: wrapper do file for cleaning ice data
*Global variables referenced: rootDir_code, rootDir_dataLegacy, rootDir_dataDeprecated

*Preliminaries
capture log close
set more off

//does Mississippi part of the ice industry
use "$rootDir_dataDeprecated/MS_data_all_years.dta", clear
keep if industrycode=="119"
drop average_wage_* d_* enter exit local_industry missing_labor_data morethan3inputs morethan3products p_* st_louis_fed
tostring *, replace
save "$rootDir_dataLegacy/1929/ice_data_MS", replace

//cleans up individual year files
clear
forvalues year_val=1929(2)1935{
	do "$rootDir_code/`year_val'/clean_ice_`year_val'"
}

//append individual year files together
forvalues year_val=1929(2)1933{
	append using "$rootDir_dataLegacy/`year_val'/ice_`year_val'_clean"
}

gen g000v_merge = g000v
replace g000v_merge = "" if g000v == "."
destring g000v_merge, gen(g000v_num) force
replace g000v_num = round(g000v_num)
tostring g000v_num, replace	
replace g000v_num = "" if g000v_num == "."
replace g000v_merge = g000v_num if g000v ~=  g000v_num
drop g000v_num
foreach v in ag001 ag002 ag003 ag004 a001{
	gen `v'_merge = trim(`v')	
}


//Finalize obs_id
replace obs_id = year+"119"+obs_id

save "$rootDir_dataLegacy/Complete/ice_all.dta", replace
