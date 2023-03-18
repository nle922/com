//This does a limited set of checks of variables important for the inequality project

local user = "/Users/nlz0003/Dropbox (SES1459263)"
global rootDir_code = "`user'/Cleaning Scripts" //needs to be global because check_county_pairs calls it
local data_dir = "`user'/Stata Files"
local indnum = "ice" //industry to work with

//load the dataset
use "`data_dir'/Legacy/Complete/`indnum'_all", clear

//check if there are duplicate IDs within a year
qui duplicates tag establishment_ID year, gen(dup_ID)
tab dup_ID

//tab the values of state (ag001) and industry code (indCode). These should all be the same value.
foreach var_to_tab in ag001 z_indCode {
	tab `var_to_tab'
	count if `var_to_tab'==""
}

//check if all the values of the county variable (ag002) are good
qui do "$rootDir_code/Variable Checking/check_county_pairs"
bysort year: tab good_county

//now destring 
foreach var_to_destring of varlist year g000v ewemt* e00* d00* {
	qui destring `var_to_destring', replace force
}

//make sure present for all years
foreach var_to_count of varlist g000v ewemt e00* d00* {
	di "Working on `var_to_count'"
	tempvar missing
	gen `missing' = `var_to_count'==. 
	bysort year: tab `missing' //if present_`var_to_count'== 1 only do this if the variable is supposed to be there
}


