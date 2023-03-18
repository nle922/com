//fix e004m for 1929
//this should be name of file to adjust
args file_to_adjust

use "`file_to_adjust'", clear

//fix some locals for use later
local var_to_fix = "e004m"
local year = "1929"
local vars_in_formula = "e001m e002m e003m"

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
	gen `var_to_fix'_num = e001m_num + e002m_num + e003m_num	

	//do the replacing and flag generating here
	tostring `var_to_fix'_num, replace force
	
	//generate flag for replacing value
	qui do "$rootDir_code/Variable Checking/gen_impute_flag" "`var_to_fix'" "`year'"
	
	//check for x4_form_B variable if doesn't exist then set to 0
	capture confirm variable x4_form_B
	if _rc > 0 {
		gen x4_form_B = "0"
	}
	else {
		capture confirm string variable x4_form_B
		if _rc > 0 {
			tostring x4_form_B, replace force
		}
	}
	//do the replacing only for those that are not from Mines schedules
	replace `var_to_fix' = `var_to_fix'_num  if (`var_to_fix'=="" | `var_to_fix'==".") & year=="`year'" & x4_form_B=="0"
	drop `var_to_fix'_num
}

//drop the variables that were created
//capture here catches the case if `var_generated' is empty
capture drop `vars_generated' 
save "`file_to_adjust'", replace