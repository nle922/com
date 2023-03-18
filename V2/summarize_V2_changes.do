//Summarize updates in CoM V2
use "./Stata Files/Extracts/CoM_v2", replace

//Tests of firm and establishment ID and geographic variables

//Uniqueness
duplicates report establishment_id year
duplicates report obs_id

//Nonmissing
foreach type in firm obs establishment{
	count if `type'_id==""
}
count if industry_code_num==""

//Formatting: obs_id start with Year
gen bad_format = 1
forvalues year =1929(2)1935{
	replace bad_format = 0 if substr(obs_id,1,4)=="`year'"
}
tab bad_format

//Formatting: establishment_id start with industry
//Note firm_id might not start with industry for cases where firm that span multiple industries
gen bad_format_estab = 1
tostring industry_code_num, gen(industry_code)
replace bad_format_estab = 0 if (substr(establishment_id,1,4)==industry_code | substr(establishment_id,1,3)==industry_code | substr(establishment_id,1,5)==industry_code)
tab bad_format_estab

//Check regions
count if region==""

//Regions form a partition?
destring mid_atlantic mountain new_england pacific east_north_central east_south_central south_atlantic west_north_central west_south_central, replace force
gen check = mid_atlantic + mountain + new_england +  pacific + east_north_central + east_south_central +south_atlantic + west_north_central + west_south_central
count if check ~= 1

//Destring some variables for analysis
destring x5_establishment_id x5_firm_id match_cpp g000v, replace force
gen round_g000v = round(g000v)

//Firm and establishment link update rates

//Overall rates and weighted by revenue
sum x5_establishment_id x5_firm_id
sum x5_establishment_id x5_firm_id [fw=round_g000v]

//By industry
bysort industry_code_num: sum x5_establishment_id
bysort industry_code_num: sum x5_firm_id

//By year
bysort year: sum x5_establishment_id
bysort year: sum x5_firm_id

//By state
bysort ag001: sum x5_establishment_id
bysort ag001: sum x5_firm_id

//Number of establishments in firm that is in multiple industries
foreach ind_var in industry_code_num{
	destring `ind_var', replace force
	foreach op in min max{
		bysort firm_id: egen `op'_`ind_var' = `op'(`ind_var')
	}
	count if min_`ind_var' ~= max_`ind_var'
	bysort industry_code_num: count if min_`ind_var' ~= max_`ind_var'
}
gen mixed = min_industry_code_num ~= max_industry_code_num

//Number of Wandering establishments between firms 
foreach type in firm_id{ 
	egen g_`type' = group(`type')
	foreach op in min max{
		bysort establishment_id: egen `op'_`type' = `op'(g_`type') 
	}
	count if max_`type'  ~= min_`type' 
	count if max_`type'  ~= min_`type' & mixed == 1
	gen diff_`type' = max_`type'  ~= min_`type'
	bysort industry_code_num: sum  diff_`type'
	drop g_`type' *_`type' diff_`type'
}

//Compare size of firms based on new and original firm IDs
foreach type in firm_id firm_id_v1{
	bysort `type': egen count_`type' = count(1==1)
	bysort `type': egen seq_`type' = seq()
	sum count_`type' if seq_`type' == 1, detail
}

//Geographic match rates
tab match_cpp
tab match_cpp [fw=round_g000v]
bysort year: tab match_cpp
bysort ag001: tab match_cpp

//Match rates at place level
preserve
	duplicates drop ag003 ag002 ag001_fips, force
	tab match_cpp
restore

//Number of counties updated 
gen county_update = ag003_fips~=ag003_fips_cpp
sum county_update
sum county_update [fw=round_g000v]

//Number of Missing values for Geography variables and "Wandering" Establishments between Counties by Industry 
foreach geo_var in ag003_fips ag003_fips_cpp{
	destring `geo_var', replace force
	di "Num. Missing County"
	count if `geo_var' == .
 	foreach op in min max{
 		bysort establishment_id: egen `op'_`geo_var' = `op'(`geo_var')
 	}
	di "Num. of Wandering Establishments"
	count  if min_`geo_var' ~= max_`geo_var'
	edit if min_`geo_var' ~= max_`geo_var'
	bysort industry_code_num: count if min_`geo_var' ~= max_`geo_var'
	drop  *_`geo_var'
}

//Count missing values in present variables
foreach present_var of varlist present_*{
	count if `present_var'==""
	if `r(N)'>0{
		di "Present var  = `present_var'"
		bysort year: count if `present_var'=="" 
	}
}

//Comparison to original ICPSR dataset

//Indicator for new version of data
gen V2 = 1
rename industry_code_num INDUSTRY_CODE_NUM
rename year YEAR
rename g000v G000V
tostring G000V, replace force
destring INDUSTRY_CODE_NUM , replace force

//Append original ICPSR file
append using "./SES1459263 Team Folder/ICPSR/37114-0001-Data"
replace V2 = 0 if V2==.
destring G000V, replace force

//Overall change in sample size
bysort V2: count

//Reshape for industry-year analysis
gen count = 1
collapse (sum) count G000V, by(V2 INDUSTRY_CODE_NUM YEAR)
egen group = group(INDUSTRY_CODE_NUM YEAR)
reshape wide count G000V, i(group) j(V2)
gen ratio_G000V = G000V1/G000V0
gen ratio_count = count1/count0
edit INDUSTRY_CODE_NUM YEAR ratio_*
