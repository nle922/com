//this builds "core" variables from spreadsheet

import excel "$rootDir_team/variables_censusData.xls", sheet("Sheet1") clear
drop in 1/5
drop if A == ""
rename A var_br_code
rename C present_1929
rename D present_1931
rename E present_1933
rename F present_1935
drop  B G

forvalues y = 1929(2)1935{
		replace present_`y' = "1" if present_`y' == "x"
		destring present_`y', replace force
		replace present_`y' = 0 if present_`y' == .
}

save "$rootDir_code/Variable Checking/Core Variables/core_variables_list.dta", replace
