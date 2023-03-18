//renaming of agricultural implements dataset
//Globals referenced: $rootDir_dataLegacy, $rootDir_code

*Preliminaries
capture log close 
set more off

//note that we will overwrite this file at the end
use "$rootDir_dataLegacy/Complete/ag_imps_all.dta", replace

//tostring all variables for consistency
tostring *, replace force

//rename and label output variables
//attachment_specify what to do with this variable?
capture replace attachment_value =  attachments_value if attachment_value=="." | attachement_value==""
capture replace attachment_value =  attachement_value if attachment_value=="." | attachement_value==""
capture rename attachment_value gp_v_attachment
capture rename attachment_specify gp_s_attachment
capture drop attachement_value attachments_value
capture rename cultivators_quantity gp_q_cultivators
capture rename cultivators_value gp_v_cultivators
capture rename harrows_quantity gp_q_harrows
capture rename harrows_value gp_v_harrows
capture rename harvesting_quantity gp_q_harvesting
capture rename harvesting_value gp_v_harvesting
capture rename haying_quantity gp_q_haying
capture rename haying_value gp_v_haying
capture rename planting_quantity gp_q_planting
capture rename planting_value gp_v_planting
capture rename plows_quantity gp_q_plows
capture rename plows_value gp_v_plows
capture rename machines_preparing_value gp_v_preparing
capture rename machines_preparing_quantity gp_q_preparing
capture rename custom_work_value gp_v_custom

//rename other products    
forvalues i =1/2 {
	capture rename other_value_`i' gp_v_allOther`i'
	capture rename other_specify_`i' gp_s_allOther`i'
}
forvalues i =1/2 {
	local j = `i'+2
	capture rename other_nonAg_value_`i' gp_v_allOther`j'
	capture rename other_nonAg_specify_`i' gp_s_allOther`j'
}

//rename general output products
forvalues i=1/10{
	capture rename units_`i' gp_u_general`i'
	capture rename quantity_`i' gp_q_general`i'
	capture rename specify_`i' gp_s_general`i'
	capture rename value_`i' gp_v_general`i'
}

//drop some useless variables
capture drop morethan10products
capture drop oneormoreother  
capture drop usedorpurchased
capture drop more_than_3_products
capture drop notes
capture drop industrialcode

//rename other products consistently
do "$rootDir_code/General/rename_otherProducts"
//label these basic variables according to CK's scheme
do "$rootDir_code/Label/label_ck_vars"
//label ag. imps. specific variables
do "$rootDir_code/Label/label_ag_imps_vars"

//clean up variables for name, state, and county. Important for merging correctly with estab IDs
replace a001 = ustrtrim(a001)
replace ag001 = ustrtrim(ag001)
replace ag002 = ustrtrim(ag002)
replace ag003 = ustrtrim(ag003)
replace ag004 = ustrtrim(ag004)
replace g000v = "." if g000v == ""

//this save is important
save "$rootDir_dataLegacy/Complete/ag_imps_all.dta", replace

//merge in establishment and firm ID variables
do "$rootDir_code/General/merge_estabs_legacy" ag_imps 1301 ag002 ag003 a001 ag001 ag004 g000v
save "$rootDir_dataLegacy/Complete/ag_imps_all.dta", replace
do "$rootDir_code/General/merge_firms_legacy" ag_imps 1301
 
//fix some mistakes in the estabIDs
forvalues year = 1929(2)1935 {
	do "$rootDir_code/`year'/fix_estabids_ag_imps_`year'.do"
}


//translate existing IDs to our idiom
local ID_establishment = "estab"
local ID_firm = "firm"
foreach type in establishment firm {
	do "$rootDir_code/General/gen_ID" "1301" "`type'"
	do "$rootDir_code/General/translate_legacyIDs" "`ID_`type''id_ag_imps" "`type'"
}



//generate flag for Census of Mines schedule. Flag will be used to make sure properly missing employment variables are left missing
do "$rootDir_code/Variable Checking/gen_mines_variable"

//clean up state name variable
do "$rootDir_code/General/clean_state_name.do" "ag001" "ag001"

//Clean up the county name variable
qui do "$rootDir_code/General/clean_county_name.do" "ag003" "ag003" "ag001" "ag002"

//make sure indCode is consistent
capture drop z_indCode
gen z_indCode = "1301"
//this variable identifies how estabIDs were generated
gen estabid_generated = "LEGACY"
gen firmid_generated = "LEGACY"
//all variables to strings for ease of appending later
tostring *, replace force
//order variables
aorder *

save "$rootDir_dataLegacy/Complete/ag_imps_all.dta", replace

