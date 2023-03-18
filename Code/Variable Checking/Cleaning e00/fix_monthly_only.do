//this replaces variables that should be ewemt12. 
//NLZ: Do we want to condition on industry here or will it always be safe to replace for a whole year?
args file_to_adjust year_fix variable_fix

use "`file_to_adjust'", clear

//check if variable exists first
capture confirm variable `variable_fix'

if _rc==0{
	//check if flag exists. if not created it.
	capture confirm variable x3_`variable_fix'
	if _rc>0{
		gen x3_`variable_fix' = 1 if year == "`year_fix'" 
		label var x3_`variable_fix' "Flag for replaced `variable_fix' with ewemt12"
	}

	//replace values where appropriate
	replace `variable_fix' = ewemt12 if year == "`year_fix'" 

	save "`file_to_adjust'", replace
}
