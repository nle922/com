//clean up e009s in 1933 
//this should be name of file to adjust
args file_to_adjust 

use "`file_to_adjust'", clear

//locals used later. These are specific to the do file
local var_to_fix = "e009s"
local year = "1933"
local vars_in_formula = "e004s e005s"

local vars_generated =""
local continue_generating = 1

foreach var_in_formula in `vars_in_formula'{
	capture confirm variable `var_in_formula'
	if _rc==0{
		destring `var_in_formula', gen(`var_in_formula'_num) force
		replace `var_in_formula'_num = 0 if `var_in_formula'_num == .
		local vars_generated ="`vars_generated' `var_in_formula'_num"
	}
	else{
		local continue_generating = 0
		continue, break
	}
}

if `continue_generating'{
//if variable doesn't exist, generate it and make it missing
	capture confirm variable `var_to_fix'
	if _rc>0{
		gen `var_to_fix' = ""
	}
	
	//generate the values for imputing
	gen `var_to_fix'_num = e004s_num + e005s_num 

	//do the replacing and flag generating here
	tostring `var_to_fix'_num, replace force
	
	//generate flag for replacing value
	qui do "$rootDir_code/Variable Checking/gen_impute_flag" "`var_to_fix'" "`year'"
	//do the replacing
	replace `var_to_fix' = `var_to_fix'_num  if (`var_to_fix'=="" | `var_to_fix'==".") & year=="`year'" 
	drop `var_to_fix'_num
}

//drop the variables that were created
//capture catches the problem if `vars_generated' is blank
capture drop `vars_generated' 
save "`file_to_adjust'", replace
