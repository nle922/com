//merge in establishment IDs for legacy industries

//this will be list of variables that uniquely ID an establishment that we can use to merge in the IDs
local list_matching
local count = 1

//this extracts list of variables from string passed in as argument
foreach var of local 0{
	//ind_name - name of industry, ind_num - industry number, which might be different than ind_name. For example, AUTO and 1407 or 1408.
	if `count'==1 {
		local ind_name = "`1'"
	}
	else if `count'==2{
		local ind_num ="`2'"	
	}
	//skip the first two arguments which are ind_name and ind_num
	else {
		local list_matching `list_matching' `var'
	}
	local count = `count'+1
}

//default value for list_matching is imageNumber
if "`list_matching'" ==""{
	local list_matching = "z_imageNumber"
}

//append all of the individual year files with estabids together
clear
gen year = .
forvalues year = 1929(2)1935 {
	append using "$rootDir_matching/Establishments/`year'/`ind_num'/match`year'_`ind_name'"
	replace year = `year' if year==.
}

tostring *, replace force

//force uniqueness in the case of ice. This really shouldn't be necessary
if "`ind_name'"=="ice" {
	gen g000v_merge = g000v
	replace g000v_merge = "" if g000v == "."
	destring g000v_merge, gen(g000v_num) force
	replace g000v_num = round(g000v_num)
	tostring g000v_num, replace	
	replace g000v_num = "" if g000v_num == "."
	replace g000v_merge = g000v_num if g000v_merge ~=  g000v_num
	drop g000v_num
	foreach v in ag001 ag002 ag003 ag004 a001{
		gen `v'_merge = trim(`v')	
	}
	duplicates drop `list_matching', force
}

//merge uniquely on list_matching, year to bring in establishment IDs
merge 1:1 `list_matching' year using "$rootDir_dataLegacy/Complete/`ind_name'_all"


drop if _merge==1
drop _merge
