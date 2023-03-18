//fix e004t for 1935 by replacing missing values
//this should be name of file to adjust
args file_to_adjust 

use "`file_to_adjust'", clear

//locals fixed for later use
local var_to_fix = "e004t"
local year = "1935" 
local vars_in_formula = "e002s e003tas e003te e003tc12"

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
	
	//define the variable for imputing	
	gen `var_to_fix'_num = e002s_num + e003tas_num + e003te_num + e003tc12_num
	//do the replacing and flag generating here
	tostring `var_to_fix'_num, replace force
	
	//generate flag for replacing value
	qui do "$rootDir_code/Variable Checking/gen_impute_flag" "`var_to_fix'" "`year'"
	//do the replacing
	replace `var_to_fix' = `var_to_fix'_num  if (`var_to_fix'=="" | `var_to_fix'==".") & year=="`year'" 
	drop `var_to_fix'_num
}

//drop the variables that were created
capture drop `vars_generated' 
save "`file_to_adjust'", replace