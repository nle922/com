//generate a "guess" at the total value of output in years where not in BR spreadsheet by summing all products in dataset

//Arguments: years - local of values of year for which to replace g000v with imputed sum. Default value is all years
args years

if "`year'" == ""{
	local years = "1929 1931 1933 1935"
}

tempvar temp_sum
gen `temp_sum' = 0

//get list of all products in data
foreach i of varlist gp_v_* { 
	//destring them
	capture destring `i', gen("`i'A") force
	//set to 0 if missing
	capture replace `i'A = 0 if `i'A==.
	//then generate a cumulative sum
	capture replace `temp_sum' = `temp_sum' + `i'A
	//drop the destringed versions
	capture drop `i'A
}
tostring `temp_sum', replace force

//replace revenue variable in `years'
tempvar year_var

capture confirm string variable  year
if _rc > 0 {
	tostring year, gen(`year_var') 
}
else {
	gen `year_var' = year
}

capture gen g000v = ""
foreach year in `years' {
	replace g000v = `temp_sum' if `year_var'=="`year'"
}

gen x3_g000v = "1"	//Generate flag for imputed value
label variable x3_g000v "Flag for generated value of g000v"
