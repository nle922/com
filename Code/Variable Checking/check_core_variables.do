//This checks set of variables in variables_subset for whether they exist in the dataset and 
//whethey they do not have all non-missing values. Outputs a csv file that can be examined

//specify set of variables to look for and industry in adddition, type allows the code to look in different subdirectory. useful for BR and Legacy industries
args variables_subset industry type

//file where to write results of checking
//try closing the file if it's already open
capture file close output_file
file open output_file using "$rootDir_code/Variable Checking/Logs/variables_check_`industry'_`c(current_date)'`variables_subset'.csv", write replace

quietly{
	forvalues year = 1929(2)1935{
		//Get list of core variables which should be present for the year
		use "$rootDir_code/Variable Checking/Core Variables/core_variables_list`variables_subset'.dta", clear
		keep var_br_code present_`year'
		keep if present_`year' == 1
		levelsof var_br_code, local(var_list_`year') clean

		//load the industry data 
		use "$rootDir_dataStata/`type'/Complete/`industry'_all.dta", clear
		capture tostring year, replace
		keep if year == "`year'"
				
		//Breaks out if the file is empty for that year
		if (_N > 0){
			//get list of variables in dataset
			ds
			local vars_in_industry = "`r(varlist)'"
			//Loop over the variables that should be there
			foreach var_to_check of local var_list_`year'{
				//this checks that variable exists
				local check_element : list posof "`var_to_check'" in vars_in_industry
				local check_count = 0
				if `check_element'>0 {
					local check_element = 1
					//check that variable has non-missing variable
					tempvar `var_to_check'_str
					tostring `var_to_check', gen("``var_to_check'_str'") 
					qui count if "`var_to_check'_str'"~=""	
					local check_count = `r(N)'
				}
				//write the results for this variable out to file
				capture file write output_file "`year'" "," "`industry'" "," "`var_to_check'" "," "`check_element'" "," "`check_count'", _n
			}
		}
	}
}

file close output_file
