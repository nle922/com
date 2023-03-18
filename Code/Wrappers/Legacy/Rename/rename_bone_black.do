//renames variables of bone black industry
//Globals referenced: $rootDir_dataLegacy, $rootDir_code

*Preliminaries
capture log close 
set more off

//note that we will overwrite this file at the end
use "$rootDir_dataLegacy/Complete/bone_black_all.dta", replace

tostring *, replace force

//rename and label output variables
capture replace lampblack_quantity = lamp_black_quantity if lamp_black_quantity=="" | lamp_black_quantity=="."
capture drop lamp_black_quantity
capture replace lampblack_value = lamp_black_value if lamp_black_value=="" | lamp_black_value="."
capture drop lamp_black_value                 
rename bone_black_quantity gp_q_boneBlack
rename bone_black_value gp_v_boneBlack
rename carbon_black_quantity gp_q_carbonBlack
rename carbon_black_value gp_v_carbonBlack
rename lampblack_quantity gp_q_lampBlack
rename lampblack_value gp_v_lampBlack          
rename other_quantity gp_q_allOther1
rename other_specify gp_s_allOther1
rename other_value gp_v_allOther1

//rename general products variables
forvalues i=1/3{ 
	capture rename other`i'_quantity gp_q_general`i'
	capture label var gp_q_general`i' "Output: General Product `i', qt"
}

forvalues i = 1/3{
	capture rename other`i'_specify gp_s_general`i'
	capture label var gp_s_general`i' "Output: General Product `i', Name"
}

forvalues i = 1/3{
	capture rename other`i'_value gp_v_general`i'
	capture label var gp_v_general`i' "Output: General Product `i', value"
}

//drop some useless variables
capture drop AZ
capture drop BB
capture drop BA
capture drop morethanthree      
capture drop BC 
capture drop BD
capture drop BE

//rename other products consistently
do "$rootDir_code/General/rename_otherProducts"
//label these basic variables according to CK's scheme
do "$rootDir_code/Label/label_ck_vars"
//label bone black specific variables
do "$rootDir_code/Label/label_bone_black_vars"
//this save is important!!!
save "$rootDir_dataLegacy/Complete/bone_black_all.dta", replace

//merge in estab  IDs
do "$rootDir_code/General/merge_estabs_legacy" bone_black 606 a001 ag001 ag002 ag003
save "$rootDir_dataLegacy/Complete/bone_black_all.dta", replace
//merge firm IDs
do "$rootDir_code/General/merge_firms_legacy" bone_black 606

//translate existing IDs to our idiom
local ID_establishment = "estab"
local ID_firm = "firm"
foreach type in establishment firm {
	do "$rootDir_code/General/gen_ID" "606" "`type'"
	do "$rootDir_code/General/translate_legacyIDs" "`ID_`type''id_bone_black" "`type'"
}

//generate flag for Census of Mines schedule. Flag will be used to make sure properly missing employment variables are left missing
do "$rootDir_code/Variable Checking/gen_mines_variable"

//clean up state names
do "$rootDir_code/General/clean_state_name.do" "ag001" "ag001"

//Clean up the county name variable
qui do "$rootDir_code/General/clean_county_name.do" "ag003" "ag003" "ag001" "ag002"

//make sure indCode is consistent
capture drop z_indCode
gen z_indCode  = "606"
//this variable identifies how estabIDs were generated
gen estabid_generated = "LEGACY"
gen firmid_generated = "LEGACY"
//all variables to strings for ease of appending later
tostring *, replace force
aorder *

save "$rootDir_dataLegacy/Complete/bone_black_all.dta", replace
