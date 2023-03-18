//Read in the industry specific flags
//global rootDir_code "E:\Dropbox (SES1459263)\Cleaning Scripts\"	//location of cleaning scripts

capture erase "$rootDir_code/Variable Checking/Industry Flags/industry_flags.dta"
forvalues y = 1929(2)1935{
	clear
	capture{					//Capture block for if these haven't been collected yet
		import excel "$rootDir_code/Variable Checking/Industry Flags/variables_`y'_check.xlsx", sheet("Sheet1") firstrow allstring clear
		gen year = "`y'"
	}
	capture append using "$rootDir_code/Variable Checking/Industry Flags/industry_flags.dta"
	save "$rootDir_code/Variable Checking/Industry Flags/industry_flags.dta", replace
}

label define extra_info_flags 1 "Not collected" 2 "Collected but all entries blank"
  
//particular flags
describe, varlist
local list_flagged_vars `r(varlist)'
foreach v in `list_flagged_vars'{
	gen x4_`v' = .
	label var x4_`v' "Flag for more info on variable `v'"
	replace x4_`v' = 1 if `v' == "not collected"
	replace x4_`v' = 2 if `v' == "verified collected but all entries blank"
	label values x4_`v' extra_info_flags
} 

keep year industry_code_num x4_*
drop x4_year x4_industry_code_num 

rename industry_code_num z_indCode
missings dropvars, force 	//Only want to create flags for variables which actually have extra information

save "$rootDir_code/Variable Checking/Industry Flags/industry_flags.dta", replace
