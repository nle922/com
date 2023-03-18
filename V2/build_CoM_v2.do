//Build CoM v2
local file_name = "v2_temp" //Needs to be separate to diagnose errors
local file_name_export = "CoM_v2"		//Name of new file to generate
local ipums_varkeep = "g000v"		//list of variables to keep from IPUMS extract
local varlist_extract "gp_v_coke_ip gp_v_coke_fs gp_v_charcoal_ip gp_v_charcoal_fs"		//Need these to fix 1935 blast funrnaces (1110)

//Prepare CPP data for town merging. Only needs to be once. 
//do "./SES1459263 Team Folder/V2/Geography Updates/prepare_CPP_data.do"
 
//Create extract of original data
do "./Cleaning Scripts/General/create_extract" "/Users/nlz/Dropbox/Grants/One Time/2015/NSF SES1459263" "`file_name'" 1 "`varlist_extract'"

//Update g000v variable for 1935 in industry 1110 (blast furnaces)
use "./stata files/Extracts/`file_name'", clear
destring gp_v_charcoal_fs gp_v_charcoal_ip gp_v_coke_fs gp_v_coke_ip, replace
egen g000v_replace = rowtotal(gp_v_charcoal_fs gp_v_charcoal_ip gp_v_coke_fs gp_v_coke_ip)
tostring g000v_replace, replace
replace g000v = g000v_replace if year == "1935" & industry_code_num == 1110
drop g000v_replace gp_v_charcoal_fs gp_v_charcoal_ip gp_v_coke_fs gp_v_coke_ip
save "./stata files/Extracts/`file_name'", replace

//Save dropped obs for later
tempfile obs_to_add_back
savesome  if obs_id=="1931118000000002510"  |   obs_id=="1931118000000001589"  | obs_id=="1935121000000000287" | obs_id=="19311005000000002985"  | obs_id=="19311005000000003305" | obs_id=="1931118000000002510" | obs_id=="19311005000000003305" | obs_id=="19311005000000002985"  | obs_id=="1931118000000001589"  using `obs_to_add_back'

//Build link table between ICPSR and new extract 
do "./SES1459263 Team Folder/V2/Establishment Link Updates/reconcile_estab_ids"  "./SES1459263 Team Folder/ICPSR/37114-0001-Data.dta" "./stata files/Extracts/`file_name'"  "./SES1459263 Team Folder/V2/Establishment Link Updates/establishment_linktable.dta"

//Merge links to original ICPSR file
use  "./SES1459263 Team Folder/ICPSR/37114-0001-Data.dta", replace
rename *, lower
mmerge establishment_id year using "./SES1459263 Team Folder/V2/Establishment Link Updates/establishment_linktable.dta", umatch(establishment_id_first year)
drop if _merge ~= 3
keep establishment_id year establishment_id_second `ipums_varkeep'
mmerge establishment_id_second year using "./stata files/Extracts/`file_name'.dta", umatch(establishment_id year) 
drop if _merge ~= 3
drop _merge 
rename *, lower

//Add back in incorrect drops
append using `obs_to_add_back'

//Save original firm and establishment IDs
gen firm_id_v1 = firm_id
gen establishment_id_v1 = establishment_id

//Update geographies for CA
qui do "./SES1459263 Team Folder/V2/Geography Updates/update_geographies_CA.do"

//Fixed some problems with geographies identified when matching to Fed districts
do "./SES1459263 Team Folder/V2/Geography Updates/update_geographies.do" 

//Update firm links
//Clean all firm names
do "./SES1459263 Team Folder/V2/Firm Link Updates/clean_firm_names.do"

//Update firm links from Gaeto
do "./SES1459263 Team Folder/V2/Firm Link Updates/update_firm_links_Gaeto.do"

//Update firm links in CA
do "./SES1459263 Team Folder/V2/Firm Link Updates/update_firm_links_CA.do"

//Update establishment links
do "./SES1459263 Team Folder/V2/Establishment Link Updates/update_establishment_links_CA.do"

//Clean city names based on CPP's clean_city_names.py	
do "./SES1459263 Team Folder/V2/Geography Updates/clean_city_name" 

//Match to CPP 
do "./SES1459263 Team Folder/V2/Geography Updates/match_CPP"

//Few region observations got lost, so re-generate them
drop region new_england mid_atlantic east_north_central west_north_central south_atlantic east_south_central west_south_central mountain pacific
do "./Cleaning Scripts/Regional/generate_region"

//Cleanup
drop loctype notes _merge Uag002 matchscore establishment_id_second
tostring *, replace force
foreach var of varlist *{
	replace `var' = upper(`var')
}
drop if industry_code_num == "" | year == ""
rename *, lower

//Flag for imputed revenue in ind. 1110
replace x3_g000v = "1" if industry_code_num=="1110" & year == "1935"
replace x3_g000v = "0" if industry_code_num=="1110" & year ~= "1935"

//Couple random missing states
replace ag001 = "WEST VIRGINIA" if ag001 == "" & a004 == "KENOVA, W. VA."
replace south_atlantic = "1" if ag001 == "WEST VIRGINIA" & a004 == "KENOVA, W. VA."
replace ag001 = "MISSISSIPPI" if ag001 == "" & a004 == "JACKSON MS"
replace east_south_central = "1" if ag001 == "MISSISSIPPI" & a004 == "JACKSON MS"

destring ag003_fips ag001_fips, replace force

//Fix missing FIPS codes
do "./SES1459263 Team Folder/V2/Geography Updates/fix_missing_fips"

//Fix cases of ``wandering" establishments located in different counties in different years
//Bad geographies
foreach indnum in 101 118 119 121 130 216 312 314 606 631 705 803 1002 1005 1008 1112 1301 1401 99999 {
	do "./SES1459263 Team Folder/V2/Establishment Link Updates/Fix Counties/fix_counties_`indnum'"
}

//Bad establishment links
gen obsno = _n
foreach indnum in 119 101 118 121 131 216 1608 1401 606 631 1008 1301 1112 314 99999 312 705               {	
	qui do "./SES1459263 Team Folder/V2/Establishment Link Updates/Fix Matches/fix_matches_`indnum'"
}
save "./Stata Files/Extracts/`file_name_export'", replace

//Fix estabs that wander between firms
do "./SES1459263 Team Folder/V2/Establishment Link Updates/collapse_firmids_byInd" "`file_name_export'"
save "./Stata Files/Extracts/`file_name_export'", replace

//Hardcode fixes of firm IDs after collapsing
foreach ind in 101 118 119 121 122 130 131 216 237 312 314 606 631 705 803 1002 1005 1008 1401 1112 1110 1408 1608 99999{
	qui do "./SES1459263 Team Folder/V2/Firm Link Updates/Post Collapse Fixes/post_collapse_firmid_fixes_`ind'" "`file_name_export'"
}

//Fix few bad counties in MS
replace ag003 = "YAZOO" if ag001=="MISSISSIPPI" & ag002 == "YAZOO CITY"
replace ag003 = "HINDS" if ag001=="MISSISSIPPI" & ag002 == "JACKSON"
replace ag003 = "WARREN" if ag001=="MISSISSIPPI" & ag002 == "VICKSBURG"
replace ag003 = "NEWTON" if ag001=="MISSISSIPPI" & ag002 == "NEWTON"

//Fix discrepancies between the two county variables
tostring ag003_fips_cpp ag003_fips, replace force
replace ag003_fips = ag003_fips_cpp if ag003_fips ~= ag003_fips_cpp & ag003_fips_cpp ~=""

//Fill in missing values of x* variables
foreach x_var of varlist x*{
	replace `x_var' = "." if `x_var' == ""
}

//Fill in missing values of present* vars
foreach present_var of varlist present_*{	
	destring `present_var', replace force
	forvalues year = 1929(2)1935{
		qui sum `present_var' if year =="`year'"
		if `r(min)'==`r(max)'{
			replace `present_var' = `r(min)' if year =="`year'"
		}			
	}
}

//Fill in missing SIC codes
replace sic_code = "2111" if industry_code_num=="1608" //Cigarette 
replace sic_code = "2895" if industry_code_num=="606" //Carbon Black
replace sic_code = "3663" if industry_code_num=="99999" //Radio

//Final cleanup
label define cpp_match 0 "No Match" 1 "Exact Match on County and Town" 2 "Fuzzy Match to Town and Exact on County" 3 "Fuzzy Match to Town and Exact on State" 4 "Fuzzy Match to Town and County" 
destring match_cpp, replace force
label values match_cpp cpp_match
label var ag003 "County"
label var ag002 "Place"
label var obs_id "Persistent Observation ID"
label var ag003_fips_cpp "County FIPS (CPP)"
label var ag003_fips "County FIPS"
label var establishment_id  "Establishment ID"
label var obs_id  "Observation ID"
label var lat_cpp "Latitude of place (CPP)"
label var lon_cpp "Longitude of place (CPP)"
label var match_cpp "Match to CPP"
label var sic_code "4-digit Industry SIC code"

foreach var_to_drop in dup_firm_id dup_establishment_id obsno firm_id_orig{
	capture drop `var_to_drop'
}

//Generate flags to identify which establishment and firm IDs were actually changed.
gen x5_firm_id = firm_id_v1 == firm_id
label var x5_firm_id "Updated firm ID from V1"
gen x5_establishment_id = establishment_id_v1 == establishment_id
label var x5_establishment_id "Updated establishment ID from V1" 
label var firm_id_v1 "Firm ID from V1"

aorder *
tostring *, replace force
compress
datasignature set, reset

save "./Stata Files/Extracts/`file_name_export'", replace
rm "./Stata Files/Extracts/`file_name'.dta"
