//This checks set of variables in variables_subset for whether they exist in the dataset and 
//whether they do not have all non-missing values. Basically like the check_core_variables do file but here can specify certain set to look at.

local filepath "E:/Dropbox (SES1459263)"
local set_checked d00 //check this set of variables
local legacy_complete 1401 ag_imps bone_black cane_sugar cement concrete ice macaroni malt radio sugar_refining //list of legacy industries
local br_complete 216 237 312 631 705 803 1008 1110 1112 1407_1408 1608 // list of BR industries
local new_complete 118 //list of new complete industries

//file where to write results of checking
capture file close output_file
file open output_file using "`filepath'//Cleaning Scripts/Variable Checking/Cleaning `set_checked'.csv", write replace

clear
quietly{
	forvalues year = 1929(2)1935{
		noisily di "ON YEAR `year'"
		//Get list of core variables which should be present for the year
		use "`filepath'/Cleaning Scripts/Variable Checking/Cleaning `set_checked'/core_variables_list_`set_checked'.dta", clear
		keep var_br_code present_`year'
		keep if present_`year' == 1
		levelsof var_br_code, local(var_list_`year') clean
		foreach industry of local legacy_complete{
			noisily di "ON INDUSTRY `industry'"
			//Load each industry and keep the right year
			clear
			use "`filepath'/Stata Files/Legacy/Complete/`industry'_all.dta"
			capture tostring year, replace
			keep if year == "`year'"	
			//Breaks out if the file is empty for that year
			describe
			if (`r(N)' > 0){
				qui ds
				local vars_in_industry = "`r(varlist)'"
				//Loop over the variables that should be there
				foreach var_to_check of local var_list_`year'{
					//this checks that variable exists
					local check_element : list posof "`var_to_check'" in vars_in_industry
					local check_count = 0
					if `check_element'>0 {
						local check_element = 1
						//check that variable has non-missing values
						tempvar `var_to_check'_str
						tostring `var_to_check', gen("``var_to_check'_str'") 
						qui count if "`var_to_check'_str'"~=""	
						local check_count = `r(N)'
					}
					capture file write output_file "`year'" "," "`industry'" "," "`var_to_check'" "," "`check_element'" "," "`check_count'" _n
				}
			}
		}
	
		foreach industry of local br_complete{
			noisily di "ON INDUSTRY `industry'"
			//Load each industry and keep the right year
			clear
			use "`filepath'/Stata Files/BR/Complete/`industry'_all.dta"
			capture tostring year, replace
			keep if year == "`year'"	
			//Breaks out if the file is empty for that year
			describe
			if (`r(N)' > 0){
				qui ds
				local vars_in_industry = "`r(varlist)'"
				//Loop over the variables that should be there
				foreach var_to_check of local var_list_`year'{
					//this checks that variable exists
					local check_element : list posof "`var_to_check'" in vars_in_industry
					local check_count = 0
					if `check_element'>0 {
						local check_element = 1
						//check that variable has non-missing values
						tempvar `var_to_check'_str
						tostring `var_to_check', gen("``var_to_check'_str'") 
						qui count if "`var_to_check'_str'"~=""	
						local check_count = `r(N)'
					}
					capture file write output_file "`year'" "," "`industry'" "," "`var_to_check'" "," "`check_element'" "," "`check_count'" _n
				}
			}
		}
	
		foreach industry of local new_complete{
			noisily di "ON INDUSTRY `industry'"
			//Load each industry and keep the right year
			clear
			use "`filepath'/Stata Files/Complete/`industry'_all.dta"
			capture tostring year, replace
			keep if year == "`year'"	
			//Breaks out if the file is empty for that year
			describe
			if (`r(N)' > 0){
				qui ds
				local vars_in_industry = "`r(varlist)'"
				//Loop over the variables that should be there
				foreach var_to_check of local var_list_`year'{
					//this checks that variable exists
					local check_element : list posof "`var_to_check'" in vars_in_industry
					local check_count = 0
					if `check_element'>0 {
						local check_element = 1
						//check that variable has non-missing values
						tempvar `var_to_check'_str
						tostring `var_to_check', gen("``var_to_check'_str'") 
						qui count if "`var_to_check'_str'"~=""	
						local check_count = `r(N)'
					}
					capture file write output_file "`year'" "," "`industry'" "," "`var_to_check'" "," "`check_element'" "," "`check_count'" _n
				}
			}
		}
	
	}
}

file close output_file
