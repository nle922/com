//merge in firm IDs for legacy industries

//Arugments: ind_name - name of industry, ind_num - industry number. These might be different. For example, auto or radio
args ind_name ind_num

clear
gen year = .
//merge together the year files with the firm IDs
forvalues year = 1929(2)1935 {
	append using "$rootDir_matching/Firms/`ind_num'/match`year'_`ind_name'_firm"
	replace year = `year' if year==.
}
tostring *, replace force

//Merge using estabid and year to bring in firm ids. One puzzle is that this m:m shouldn't be necessary
merge m:m estabid_`ind_name' year using "$rootDir_dataLegacy/Complete/`ind_name'_all"
drop if _merge==1
drop _merge
