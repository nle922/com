//Pseudo-code for fixng a particular varibale and year. 
//This code will not run as is!!!!!!!!!!!

//Args: file_to_adjust-name of file to fix up 
args file_to_adjust

use "`file_to_adjust'", clear

//fix some locals for use later
local var_to_fix = //put name of variable to fix here
local year = //put year this applies to here
local vars_in_formula = //put set of variables used in formula for replacing here

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
	
	//generate variable for replacing. this should be unique to the variable being fixed and year
	gen `var_to_fix'_num = //put the formula for calculating the imputed variable here

	//do the replacing and flag generating here
	tostring `var_to_fix'_num, replace force
	
	//generate flag for replacing value
	qui do "$rootDir_code/Variable Checking/gen_impute_flag" "`var_to_fix'" "`year'"
	//do the replacing here with values from the formula if the original variable is missing
	replace `var_to_fix' = `var_to_fix'_num  if (`var_to_fix'=="" | `var_to_fix'==".") & year=="`year'" 
	
	//drop the variable used for imputing
	drop `var_to_fix'_num
}

//drop the variables that were created for calculating the formula
//capture here catches teh problem if `vars_generated' is blank
capture drop `vars_generated' 
//save the adjusted file note that if a certain variable used in the formula is missing, this will save the same data as was loaded
save "`file_to_adjust'", replace
