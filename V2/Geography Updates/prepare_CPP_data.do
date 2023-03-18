//Create file for matching raw town names to CPP towns
use "./SES1459263 Team Folder/Contributions/census_place_project-main/all_raw_place_data.dta", clear

//Hard code fix for Kansas City, Kansas (misclassified as MO)
replace lat = 39.1155 if potential_match == "kansas city" & orig_state_abb == "ks"
replace lon = -94.6268 if potential_match == "kansas city" & orig_state_abb == "ks"
replace state_fips = 20 if potential_match == "kansas city" & orig_state_abb == "ks"
replace county_fips = 209 if potential_match == "kansas city" & orig_state_abb == "ks"

//Drop unneeded variables
drop temp numobs indexcollapse enumdist id_base cid x_cent y_cent LSAD ALAND AWATER match_type orig_state_abb fullstate city stcounty mcd statefip countyicp stateicp county supdist GEOID COUNTYNS NAME AFFGEOID

//Rename for shaping to long format
local counter = 1
foreach var_to_rename of varlist township-US1940B_0074{
	rename `var_to_rename' town`counter'
	local ++counter
}
keep if year == 1930 | year == 1940
gen id = _n
reshape long town, i(id) j(counter)
drop if town==""

collapse (first) potential_match lat lon, by(town state_fips county_fips)

rename potential place_CPP
rename state_fips_geomatch ag001_fips
rename county_fips_geomatch ag003_fips_CPP
rename lat lat_CPP
rename lon lon_CPP
rename town ag002
recast str2045 ag002, force
gen idusing = _n
save "./SES1459263 Team Folder/V2/Geography Updates/CPP_towns", replace
