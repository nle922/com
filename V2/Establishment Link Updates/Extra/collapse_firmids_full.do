//Collapse firmids as function
args rerun num_firms

//Default values
if "`rerun'" == ""{
	local rerun = 0
}
if "`num_firms'" == ""{
	local num_firms = 1
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

while `num_firms' < _N{
	local keep_going = 1
	local one_more = `num_firms' + 1
 	while `keep_going'{
		local num_obs = _N
 		forvalues i = `one_more'(1)`num_obs'{
			local curr_estabs = estab_matches in `num_firms'
			foreach estabid_temp of varlist establishment_id*{
				local curr_estab = `estabid_temp' in `i' 
				if "`curr_estab'"==""{ //If gone through estabs, break 
					local match = 0
					continue, break
				}	
				local match = ustrregexm("`curr_estabs'", "`curr_estab'") //check if curr_estab appears in list
				if `match'{	//if match, combine with current firm & delete the row
					local new_matches = estab_matches in `i' 
					qui replace estab_matches = estab_matches + "`new_matches'" in `num_firms'
					local curr_firm = firm_id in `i'
					qui replace firm_matches = firm_matches + " `curr_firm'" in `num_firms'
					drop in `i'
					continue, break
				}
			}
			if `match' { //if found match, break. Otw go to next estab
				continue, break
			}
			if `i' == _N{
				local keep_going = 0 
				local ++num_firms
			}
 		}	
 	}
}	
