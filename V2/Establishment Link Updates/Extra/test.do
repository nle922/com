local file_name_export = "CoM_v2_test"		//Needs to be separate to diagnose errors
use "./Stata Files/Extracts/`file_name_export'", replace
do "./SES1459263 Team Folder/V2/Establishment Link Updates/Extra/collapse_firmids_byInd_test" "`file_name_export'"

egen g_industry_code_num = group(industry_code_num)
foreach op in max min{
	bysort firm_id: egen `op'_ind = `op'(g_industry_code_num)
}
gen mixed = max_ind ~= min_ind

bysort industry_code_num: count if missing_firm_id 

foreach type in firm_id{ 
	egen g_`type' = group(`type')
	foreach op in min max{
		bysort establishment_id: egen `op'_`type' = `op'(g_`type') 
	}
	count if max_`type'  ~= min_`type' 
	gen diff_`type' = max_`type'  ~= min_`type'
//	bysort industry_code_num: sum  diff_`type' if mixed == 0
	bysort industry_code_num: sum  diff_`type'
	drop g_`type' *_`type' diff_`type'
}

