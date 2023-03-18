//Collapse firmids as function
args n num_firms rerun

//Default values
if "`n'" == "" | "`n'" == "1" {
	local n = 2
}
if "`num_firms'" == ""{
	local num_firms = 1
}
if "`rerun'" == ""{
	local rerun = 0
}

//If new run, then reshape wide and prepare variables with firm and establishment matches
if `rerun'==0{
	reshape wide establishment_id, i(firm_id) j(counter) 

	//Define lists of establishments and firms matched
	capture gen estab_matches = ""
	gen fill_in = estab_matches == ""
	foreach estabid_temp of varlist establishment_id*{
		replace estab_matches = estab_matches +" "+ `estabid_temp' if fill_in
	}
	drop fill_in

	capture gen firm_matches = ""
	gen fill_in = firm_matches == ""
	replace firm_matches  = firm_id if fill_in
	drop fill_in
}

//Sort within firm and non-firm groups on length of estab_matches
capture drop len_estab
gen len_estab = -length(estab_matches)
//Save firms
tempfile firms
savesome using `firms' if _n <= `num_firms' 	
//sort non-firms
keep if _n > `num_firms' 
tempfile non_firms
sort len_estab, stable
savesome using `non_firms', replace
//sort firms
use `firms', replace
sort len_estab, stable
append using `non_firms'

while `num_firms' < _N{
	local match = 0	
	forvalues i = 1(1)`num_firms'{
		local curr_estabs = estab_matches in `i' 
		foreach estabid_temp of varlist establishment_id*{
			local curr_estab = `estabid_temp' in `n' 
			if "`curr_estab'"==""{ //If gone through estabs, break 
				local match = 0 
				continue, break
			}	
			local match = ustrregexm("`curr_estabs'", "`curr_estab'") //check if curr_estab appears in list
			if `match'{	//if match, combine with current firm & delete the row
				local new_matches = estab_matches in `n' 
				qui replace estab_matches = estab_matches + "`new_matches'" in `i'
				local curr_firm = firm_id in `n'
				qui replace firm_matches = firm_matches + " `curr_firm'" in `i'
				drop in `n'
				continue, break
			}
		}
		if `match' { //if found match, break. Otw go to next estab
			continue, break
		}
	}
	if `match' == 0{ //if no match, add firm to list of firms and increment row
		local ++num_firms
		local ++n
		//Sort within firms on length of estab_matches
		tempfile non_firms
		savesome using `non_firms' if _n > `num_firms' 	
		keep if _n <= `num_firms' 
		replace len_estab = -length(estab_matches)
		gsort - len_estab
		append using `non_firms'
	}	
}
