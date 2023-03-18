//This generates a flag for whether a schedule is a Census of Mines one for 1929. 
//Note that this code is only used for the Legacy industries. Going forward, Census of Mines schedules should be entered on a B0 sheet in the spreadsheet
//and then cleaned using the _formB code in the 1929 folder.

//This variable will be flag for whether an observation is probably from B schedule (if we haven't directly declared it already)
capture gen x4_form_B = . 
if _rc > 0 {
	destring x4_form_B, replace force
}
label var x4_form_B "Flag for Form B (in 1929, this is Census of Mines schedule)?"

//impute value based on all of the monthly employment variables are missing
tempvar tempsum
//this will hold running sum of how many of monthly employment numbers are missing
gen `tempsum' = 0

forvalues month = 1/12{
	//add 0 to month local to get right string for variable
	if `month'<10{
		local month_str = "0`month'"
	}
	else {
		local month_str = "`month'"
	}
	//check to make sure this variable is a string
	capture confirm string variable ewemt`month_str', exact
	//if not a string, then force to string
	if _rc>0{
		tostring ewemt`month_str', force
	}
	replace `tempsum'=`tempsum'+(ewemt`month_str'=="" | ewemt`month_str'==".")
}

//make sure that year is string
tempvar year_str
capture confirm string variable year 
if _rc>0{
	tostring year, force gen(`year_str')
}
else {
	gen `year_str' = year
}
	
//if all ewemt* variables are missing, then declare that this is from a Census of Mines schedule
replace x4_form_B = `tempsum'==12 if `year_str'=="1929"
