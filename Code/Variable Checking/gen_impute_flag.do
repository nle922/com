//this generates flag for whether we will impute value for variable var_to_check and allows for conditional for where
//to define flag value
//Arguments: var_to_check - check this variable, year - year for which to check
args var_to_check year 

//check if the flag for this variable exists. if doesn't create it and label it.
capture confirm variable x1_`var_to_check'
if _rc>0{
	gen x1_`var_to_check' = .
	label var x1_`var_to_check' "Flag for generated value of `var_to_check'"
}

//if missing value, then we will impute and give flag value 1
replace x1_`var_to_check' = `var_to_check'=="" | `var_to_check'=="."  if year=="`year'" 
