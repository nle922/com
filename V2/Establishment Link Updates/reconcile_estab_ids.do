//Create list of unique linking variables by comapring two extracts
local stable_link_vars "year industry_code_num g000v ewemt e004s e005s e009s f009"
local state_county "ag001 ag003"

//File to link and location to send to
args first_data_loc second_data_loc export_loc

//Clean up each data set a bit to improve exact links 
foreach type in first second{
	use "``type'_data_loc'", clear
	rename *, lower
	drop if establishment_id == ""
	gen establishment_id_`type' = establishment_id			//Will save each establishment_id
	foreach v in g000v ewemt e004s e005s e009s f009{
			replace `v' = "" if `v' == "."			//Helps the merge
			replace `v' = "" if `v' == "?"		
			replace `v' = "" if `v' == "??"	
	}
	foreach v in ag004 a004{
			replace `v' = trim(`v')		//Helps the merge
	}
	missings dropobs `state_county', force		//These have no information
	tempfile `type'_data
	save ``type'_data', replace
}

use `first_data', clear
do "./SES1459263 Team Folder/V2/Establishment Link Updates/duplicates_drop_v1.do"	establishment_id_first	//This should only be done on the IPUMS data
save `first_data', replace

clear
tempfile good_matches_store set_matches
save `good_matches_store', replace emptyok
save `set_matches', replace emptyok

//Individual industry merges should come first (since they get cleared out of remaining data along the way)
//Now do individual industry checks
//Joinby will blowup memory if you don't restrict to individual industries
tempfile good_matches
local industries_handcheck "1110 1301 631 122"
local years_1110 "1929 1931 1933 1935"		//Store the years with cleaning for a particular industry-year
local match_vars_1110_1929 "ewemt"		//Store the unique match vars by industry-year here
local match_vars_1110_1931 "ewemt ewemt01"		
local match_vars_1110_1933 "ewemt"		
local match_vars_1110_1935 "ewemt ag001"		
local years_1301 "1929 1935"		
local match_vars_1301_1929 "a001 ag001 ag002"		
local match_vars_1301_1935 "a001 ag001 ag002 ewemt"
local years_631 "1929 1933"		
local match_vars_631_1929 "ag001 ag003 ag002 a001"		
local match_vars_631_1933 "ag001 a001"		
local years_122 "1935"	
local match_vars_122_1935 "ag002 ewemt"		
	
foreach ind in `industries_handcheck'{
	foreach y in `years_`ind''{
		foreach type in first second{
			use ``type'_data', clear
			keep if industry_code_num == `ind' & year == "`y'"
			tempfile `type'_data_`ind'
			save ``type'_data_`ind'', replace
		}
		use `first_data_`ind'', clear
		mmerge `match_vars_`ind'_`y'' using  `second_data_`ind'', umatch(`match_vars_`ind'_`y'') type(n:n)
		foreach type in first second{
			duplicates tag establishment_id_`type' year, gen(`type'_dups)
		}	
		savesome establishment_id_first establishment_id_second year using `set_matches' if (first_dups == 0 & second_dups == 0 & _merge == 3), replace
		foreach type in first second{
			use ``type'_data', clear
			merge 1:1 establishment_id_`type' year using `set_matches', nogen keep(1)
			if "`type'" ==  "first"{				//Having the "wrong" establishment_ids messes up later merge (probably could fix this in the merge itself)	
				drop establishment_id_second
			}
			if "`type'" ==  "second"{
				drop establishment_id_first
			}
			save ``type'_data', replace
		}
		use `set_matches', clear
		append using `good_matches_store'
		save  `good_matches_store', replace
		describe using `good_matches_store', short
	}
}

//Joinby merge on the link variables and extract out the ones which match once and only once
use `first_data', clear
mmerge `stable_link_vars' using `second_data', umatch(`stable_link_vars') type(n:n)
foreach type in first second{
	duplicates tag establishment_id_`type' year, gen(`type'_dups)
}	
savesome establishment_id_first establishment_id_second year using `set_matches' if (first_dups == 0 & second_dups == 0 & _merge == 3), replace

//Update the data sets to include only those that did not match the first time
foreach type in first second{
	use ``type'_data', clear
	merge 1:1 establishment_id_`type' year using `set_matches', nogen keep(1)
	if "`type'" ==  "first"{				//Having the "wrong" establishment_ids messes up later merge (probably could fix this in the merge itself)	
		drop establishment_id_second
	}
	if "`type'" ==  "second"{
		drop establishment_id_first
	}
	save ``type'_data', replace
}
use `set_matches', clear
append using `good_matches_store'
save  `good_matches_store', replace
describe using `good_matches_store', short

//Now link on first and second set (state and county) of match variables and append new matches to the earlier set of matches
use `first_data', clear
mmerge `stable_link_vars' `state_county' using `second_data', umatch(`stable_link_vars' `state_county') type(n:n)
foreach type in first second{
	duplicates tag establishment_id_`type' year, gen(`type'_dups)
}	
tempfile append_matches
savesome establishment_id_first establishment_id_second year using `set_matches' if (first_dups == 0 & second_dups == 0 & _merge == 3), replace

//Update the data sets to include only those that did not match the first or second
foreach type in first second{
	use ``type'_data', clear
	merge 1:1 establishment_id_`type' year using `set_matches', nogen keep(1)
	if "`type'" ==  "first"{				//Having the "wrong" establishment_ids messes up later merge (probably could fix this in the merge itself)	
		drop establishment_id_second
	}
	if "`type'" ==  "second"{
		drop establishment_id_first
	}
	save ``type'_data', replace
}
use `set_matches', clear
append using `good_matches_store'
save  `good_matches_store', replace
describe using `good_matches_store', short

//Now link on first, second, and estbalishment name and append
use `first_data', clear
mmerge `stable_link_vars' `state_county' a001 using `second_data', umatch(`stable_link_vars' `state_county' a001) type(n:n)
foreach type in first second{
	duplicates tag establishment_id_`type' year, gen(`type'_dups)
}	
tempfile append_matches
savesome establishment_id_first establishment_id_second year using `set_matches' if (first_dups == 0 & second_dups == 0 & _merge == 3), replace

//Update
foreach type in first second{
	use ``type'_data', clear
	merge 1:1 establishment_id_`type' year using `set_matches', nogen keep(1)
	if "`type'" ==  "first"{				//Having the "wrong" establishment_ids messes up later merge (probably could fix this in the merge itself)	
		drop establishment_id_second
	}
	if "`type'" ==  "second"{
		drop establishment_id_first
	}
	save ``type'_data', replace
}
use `set_matches', clear
append using `good_matches_store'
save  `good_matches_store', replace
describe using `good_matches_store', short

//Now link on address only (I think this will be more robust to cleaning)
use `first_data', clear
mmerge ag004 using `second_data', umatch(ag004) type(n:n)
foreach type in first second{
	duplicates tag establishment_id_`type' year, gen(`type'_dups)
}	
savesome establishment_id_first establishment_id_second year using `set_matches' if (first_dups == 0 & second_dups == 0 & _merge == 3), replace

//Update
foreach type in first second{
	use ``type'_data', clear
	merge 1:1 establishment_id_`type' year using `set_matches', nogen keep(1)
	if "`type'" ==  "first"{				//Having the "wrong" establishment_ids messes up later merge (probably could fix this in the merge itself)	
		drop establishment_id_second
	}
	if "`type'" ==  "second"{
		drop establishment_id_first
	}
	save ``type'_data', replace
}
use `set_matches', clear
append using `good_matches_store'
save  `good_matches_store', replace
describe using `good_matches_store', short

//Export link table
use `good_matches_store'
save "`export_loc'", replace
