//Match to CPP place data. Assume that CoM data is already loaded. 
destring ag003_fips ag001_fips , replace force	

//Drop old versions of match_CPP.do related variables
foreach var_to_drop in ag003_fips_CPP match_CPP ag003_fips_cpp match_cpp store_ag002 idmaster dup_tag lat_cpp lat_CPP lon_cpp lon_CPP place_cpp place_CPP{
	capture drop `var_to_drop'
}

gen ag003_fips_CPP = ag003_fips		//To match to the CPP need to use historical FIPS codes
do "./SES1459263 Team Folder/V2/Geography Updates/update_city_fips"		//Fix FIPS for a set of cities (mostly in Virginia)

//Will just hard code in the town for Washington DC but revert it back after the merge
gen store_ag002 = ag002
replace ag002 = "WASHINGTON" if ag001_fips == 11
	
preserve 
	tempfile exact_matches fuzzy_matches exact_nocounty_matches

	//Prepare CoM data for matching to CPP data
	keep ag003_fips_CPP ag002 ag001_fips	
	duplicates drop ag001_fips ag002 ag003_fips_CPP, force
	
	//Exact match on state, county, and town
	merge 1:1 ag001_fips ag002 ag003_fips_CPP using "./SES1459263 Team Folder/V2/Geography Updates/CPP_towns", keep(1 3)  
	gen match_CPP = _merge == 3
	savesome if _merge==3 using `exact_matches'	
	
	//For those that don't match, reclink to CPP files (exact link on counties)
	keep if _merge == 1
	gen idmaster = _n
	keep idmaster ag003_fips_CPP ag002 ag001_fips
	reclink2 ag002 ag003_fips_CPP ag001_fips using "./SES1459263 Team Folder/V2/Geography Updates/CPP_towns", idmaster(idmaster) idusing(idusing) gen(matchscore)  minscore(.8) required(ag003_fips_CPP ag001_fips) manytoone npairs(1)
	drop if ag002==""
	gen match_CPP = 2 if _merge == 3
	replace match_CPP = 0 if _merge == 1
	savesome ag003_fips_CPP ag002 ag001_fips Uag002 matchscore place_CPP lat_CPP lon_CPP match_CPP if match_CPP == 2 using `fuzzy_matches', replace
	
	//For those that don't match, link exactly on name within state (but do not link on county)
	keep if match_CPP == 0 
	drop _merge
	mmerge ag001_fips ag002 using "./SES1459263 Team Folder/V2/Geography Updates/CPP_towns", type(n:n)		//Joinby merge
	duplicates tag ag001_fips ag002, gen(dups_merge)
	replace match_CPP = 3 if _merge == 3 & dups_merge == 0		//Require unique merges
	savesome ag003_fips_CPP ag002 ag001_fips Uag002 matchscore place_CPP lat_CPP lon_CPP match_CPP if match_CPP == 3 & _merge==3 using `exact_nocounty_matches', replace
	
	//For those that don't match at first 2 steps, fuzzy match within a state but require higher match score
	keep if match_CPP == 0 
	keep idmaster ag003_fips_CPP ag002 ag001_fips
	drop idmaster			//Need new ID for reclink since is no longer unique after above step
	gen idmaster = _n
	reclink2 ag002 ag001_fips using "./SES1459263 Team Folder/V2/Geography Updates/CPP_towns", idmaster(idmaster) idusing(idusing) gen(matchscore)  minscore(.95) required(ag001_fips) manytoone npairs(1)
	drop if ag002==""
	gen match_CPP = 4 if _merge == 3
	replace match_CPP = 0 if _merge == 1
	keep ag003_fips_CPP ag002 ag001_fips Uag002 matchscore place_CPP lat_CPP lon_CPP match_CPP
	append using `fuzzy_matches'
	append using `exact_matches'
	append using `exact_nocounty_matches'
	drop _merge idusing
	
	//Clean up duplicates. 
	//Drop cases where multiple matches but all end up in 
	duplicates drop place_CPP ag002 ag003_fips_CPP ag001_fips, force
	//Drop duplicates which are cases of multiple fuzzy matches
	duplicates tag ag002 ag003_fips_CPP ag001_fips, gen(dup_tag)
	drop if dup_tag > 0 
	drop dup_tag
	save "./SES1459263 Team Folder/V2/Geography Updates/CPP_links", replace
	tab match_CPP
	
	//Do not use merges from fuzzy match wihtout county
	//If we use these, then need to update the ag003_fips_CPP code
	drop if match_CPP == 3 | match_CPP == 4
	save "./SES1459263 Team Folder/V2/Geography Updates/CPP_links_nocounty", replace
restore

//These will have town names imputed for the link, the "E" is a transcription error
sort establishment_id year
replace ag002 = ag002[_n-1] if ag002 == "E" & year == "1935" & establishment_id == establishment_id[_n-1]
replace ag002 = ag002[_n-1] if ag002 == "?"  & establishment_id == establishment_id[_n-1]	//This gets three observations
	
//Merge geo links back in to original dataset
*merge m:1 ag001_fips ag002 ag003_fips_CPP using "./SES1459263 Team Folder/Geography Updates/CPP_links_nocounty"
merge m:1 ag001_fips ag002 ag003_fips_CPP using "./SES1459263 Team Folder/V2/Geography Updates/CPP_links"

//Revert back DC town name
replace ag002 = store_ag002 if ag001_fips == 11
drop store_ag002

replace match_CPP = 0 if match_CPP == .
tab match_CPP
label var lat_CPP "Latitude of Place (Source: CPP)"
label var lon_CPP "Longitude of Place (Source: CPP)"
label var place_CPP "Longitude of Place (Source: CPP)"
label var match_CPP "Geographic Match to CPP"

//Cleanup
drop if establishment_id == ""		//Not sure where these blanks are coming from
rm "./SES1459263 Team Folder/V2/Geography Updates/CPP_links_nocounty.dta"
rm "./SES1459263 Team Folder/V2/Geography Updates/CPP_links.dta"
