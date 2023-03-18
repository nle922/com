//this runs all checks and fixes for variable subsets listed in variables_subset
//Note that this can only be run for complete industry files

//industry to be run on and type allows the code to look in different subdirectory. useful for BR and Legacy industries
args indnum type

//now do some variable checking. This writes out a text file that lists whether variables in `variables_subset' is there for all years and non-missing
//list of sets of variables to check.  
local variables_subset `""" _e00 _f00"'

//first build core variables list from spreadsheet
do "$rootDir_code/Variable Checking/build_core_variables"

foreach variable_subset in `variables_subset'{
	//this checks whether core variables are present as defined by variable_subset
	noisily di "Checking whether core variables for group `variable_subset'"
	do "$rootDir_code/Variable Checking/check_core_variables" "`variable_subset'" "`indnum'" "`type'"
		
	//merge in whether `base_var' variables are present
	di "merging in present flags for group `variable_subset'"
	//generate flags for whether a particular variable should exist in a particular year
	use "$rootDir_code/Variable Checking/Core Variables/core_variables_list`variable_subset'", clear
	//generate wide version of core_variables list
	qui reshape long present_, i(var_br_code) j(year)
	label var present_ "Present?"
	qui reshape wide present_, i(year) j(var_br_code) string
	foreach var_to_relabel of varlist present_*{
		local var_label = subinstr("`var_to_relabel'", "present_", "Is ", .)
		label var `var_to_relabel' "`var_label' present on original schedules?"
	}
	tostring year, replace 
	tempfile core_variables_list`variable_subset'_wide
	save "`core_variables_list`variable_subset'_wide'", replace
	
	//generates flags for whether a particular variable should be present in a particular year
	use "$rootDir_dataStata/`type'/Complete/`indnum'_all", clear
	capture confirm string variable year, exact
	if _rc>0 {
		tostring year, replace force
	}
	qui merge m:1 year using "`core_variables_list`variable_subset'_wide'", nogenerate
	save "$rootDir_dataStata/`type'/Complete/`indnum'_all", replace
}
	
di "On to filling in missing values"
///now do some filling in of missing values by replacing with formula for value or replacing missing values with 0s
local variables_subset_cleaning "e00 f00 fe00"
foreach variable_subset_cleaning in `variables_subset_cleaning'{
	do "$rootDir_code/Variable Checking/Cleaning `variable_subset_cleaning'/fixing_`variable_subset_cleaning'_wrapper" "`indnum'" "`type'"
}

/*
//This will add in the industry specific flags to present (such as for when variable is on schedules but not collected)
merge m:1 z_indCode year  using "$rootDir_code/Variable Checking/Industry Flags/industry_flags.dta", keep(1 3) nogen
unab present_list : present*
foreach v of local present_list{
	destring `v', replace force
	local remainder_var = substr("`v'",9,.)
	local flag_var = "temp_flag_`remainder_var'"
	capture replace `v' = `flag_var' if `flag_var' ~= .			//Capture in case the variable checking spreadsheet missing a variable (which it really shouldn't be)
}
drop temp_flag*
*/

save "$rootDir_dataStata/`type'/Complete/`indnum'_all", replace

