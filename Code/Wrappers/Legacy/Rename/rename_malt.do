//renames variables of malt industry 
//Globals referenced: $rootDir_dataLegacy, $rootDir_code

*Preliminaries
capture log close 
set more off

//note that we will overwrite this file at the end
use "$rootDir_dataLegacy/Complete/malt_all.dta", replace

//tostring all variables for consistency
tostring *, replace force
//drop useless variable
capture drop A 

//rename output variables
capture rename malt_barley_quantity gp_q_barley
capture rename malt_barley_value gp_v_barley
capture rename malt_rye_quantity gp_q_rye
capture rename malt_rye_value gp_v_rye
capture rename malt_wheat_quantity gp_q_wheat
capture rename malt_wheat_value gp_v_wheat
capture replace gp_v_barley = Barley if gp_v_barley=="." | gp_v_barley==""
capture drop Barley
capture replace gp_v_rye = Rye if gp_v_rye=="." | gp_v_rye==""
capture drop Rye
capture replace gp_v_wheat = Wheat if gp_v_wheat=="" | gp_v_wheat=="."
capture drop Wheat

//rename and label input variables
capture rename sprouts_malt_quantity j_q_sprouts
capture rename sprouts_malt_value j_v_sprouts
capture rename screening_barley_quantity j_q_barley
capture rename screening_barley_value j_v_barley
capture rename CapacityofMalthouse z_Capacity_Malthouse

//rename other products consistently
do "$rootDir_code/General/rename_otherProducts"
//label these basic variables according to CK's scheme
do "$rootDir_code/Label/label_ck_vars"
//label malt specific variables
do "$rootDir_code/Label/label_malt_vars"

//save updated version of data and will overwrite again below
save "$rootDir_dataLegacy/Complete/malt_all.dta", replace

//clean up a few typos in the revenue variable
tostring g000v, replace
replace g000v = subinstr(g000v,".","",.)

//merge in establishment and firm IDs 
do "$rootDir_code/General/merge_estabs_legacy" malt 122 a001 ag001 ag002 ag003 g000v
capture label var estabid_malt "Estab ID, Malt" 
//fix some mistakes in IDs
do "$rootDir_code/1929/fix_estabids_malt_1929"
//this save is important
save "$rootDir_dataLegacy/Complete/malt_all.dta", replace
do "$rootDir_code/General/merge_firms_legacy" malt 122
capture label var firmid_malt "Firm ID, Malt" 

//fix a couple firmIDs
replace firmid_malt = "60" if year=="1935" & estabid_malt=="60"
replace firmid_malt = "35" if year=="1933" & estabid_malt=="35"

//translate existing IDs to our idiom
local ID_establishment = "estab"
local ID_firm = "firm"
foreach type in establishment firm {
	do "$rootDir_code/General/gen_ID" "122" "`type'"
	do "$rootDir_code/General/translate_legacyIDs" "`ID_`type''id_malt" "`type'"
}

//generate flag for Census of Mines schedule. Flag will be used to make sure properly missing employment variables are left missing
do "$rootDir_code/Variable Checking/gen_mines_variable"

//clean up state name variable
do "$rootDir_code/General/clean_state_name.do" "ag001" "ag001"

//Clean up the county name variable
qui do "$rootDir_code/General/clean_county_name.do" "ag003" "ag003" "ag001" "ag002"

//make sure indCode is consistent
capture drop z_indCode
gen z_indCode = "122"
//this variable identifies how estabIDs were generated
gen estabid_generated = "LEGACY"
gen firmid_generated = "LEGACY"
//all variables to strings for ease of appending later
tostring *, replace force
//order variables
aorder *

save "$rootDir_dataLegacy/Complete/malt_all.dta", replace
 
