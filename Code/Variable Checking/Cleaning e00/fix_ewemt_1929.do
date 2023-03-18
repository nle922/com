//fix ewemt for 1929
//this should be the file name for a particular complete industry data file
args file_to_adjust

use "`file_to_adjust'", clear

//fix some locals for use later
local var_to_fix = "ewemt" //put name of variable to fix here
local year = 1929 //put year this applies to here
local vars_in_formula = "ewemt01 ewemt02 ewemt03 ewemt04 ewemt05 ewemt06 ewemt07 ewemt08 ewemt09 ewemt10 ewemt11 ewemt12" //put set of variables used in formula for replacing here

local vars_generated = ""
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
	gen `var_to_fix'_num = ewemt01_num + ewemt02_num + ewemt03_num + ewemt04_num + ewemt05_num + ewemt06_num + ewemt07_num + ewemt08_num + ewemt09_num + ewemt10_num + ewemt11_num + ewemt12_num //put the formula for calculating the imputed variable here

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
	
	//do the replacing here with values from the formula if the original variable is missing and for 1929, make sure this is not a Mines schedule where this should be left blank
	replace `var_to_fix' = `var_to_fix'_num  if (`var_to_fix'=="" | `var_to_fix'==".") & year=="`year'" & x4_form_B=="0"
	
	//drop the variable used for imputing
	drop `var_to_fix'_num
}

//drop the variables that were created for calculating the formula
//capture here catches teh problem if `vars_generated' is blank
capture drop `vars_generated' 
//save the adjusted file note that if a certain variable used in the formula is missing, this will save the same data as was loaded
save "`file_to_adjust'", replace
