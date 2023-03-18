//this replaces missing values with 0s and generates flag for the obs on which this is done

//Arguments: file_to_adjust - file to be fixed, variable_fix - variable to be fixed
args file_to_adjust variable_fix

use "`file_to_adjust'", clear

//make sure variable and present_variable exist in the first place
capture confirm variable `variable_fix'
local flag_var = _rc==0
//if this fails, shoudl probably have this print out
capture confirm variable present_`variable_fix'
local flag_present = _rc==0

//display error message that present flag missing
if `flag_present'{
	di "Flag for present of `variable_fix' missing"
}

if `flag_var' & `flag_present'{
	//check if flag has already been created. if it hasn't, then generate it.
	capture confirm variable x2_`variable_fix'
	if _rc>0{
		gen x2_`variable_fix' = .
		label var x2_`variable_fix' "Flag for missing value replaced with 0 for `variable_fix'"
	}
	//replace the flag value here if value is misssing for the subset of observatiosn where should be present
	replace x2_`variable_fix' = `variable_fix'=="" | `variable_fix'=="." if present_`variable_fix'==1
	//replace misisng with 0
	replace `variable_fix' = "0" if (`variable_fix'=="" | `variable_fix'==".") & present_`variable_fix'==1

	save "`file_to_adjust'", replace
}
