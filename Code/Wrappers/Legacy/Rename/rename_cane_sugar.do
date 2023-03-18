//renames variables of cane_sugar industry 
//Globals referenced: $rootDir_dataLegacy, $rootDir_code

*Preliminaries
capture log close 
set more off

//note that we will overwrite this file at the end
use "$rootDir_dataLegacy/Complete/cane_sugar_all.dta"

//tostring for consistency 
tostring *, replace force

capture drop PageNo z_PageNo

//rename capital variable
capture rename CapacityofMill z_CapacityOfMill

//rename input variables
rename cane_grown_tons j_q_cGrown
rename cane_grown_cost j_v_cGrown
rename cane_purchased_tons j_q_cPur
rename cane_purchased_cost j_v_cPur
rename cane_others_tons j_q_cOthers
rename cane_others_cost j_v_cOthers
rename cane_total_tons j_q_cTotal
rename cane_total_cost j_v_cTotal

//rename output variables
local outputs "granulated raw clarified sirup sirup_invert sirup_other molasses blackstrap_molasses bagasse"
foreach output in `outputs'{
	rename `output'_value gp_v_`output'
	rename `output'_quantity gp_q_`output'
}
rename value_other_products gp_v_other1

//rename other products consistently
do "$rootDir_code/General/rename_otherProducts"
//label these basic variables according to CK's scheme
do "$rootDir_code/Label/label_ck_vars"
//label cane sugar specific vars
do "$rootDir_code/Label/label_cane_sugar_vars.do"

//save data which we will overwrite again below
save "$rootDir_dataLegacy/Complete/cane_sugar_all.dta", replace

//drop existing cane "firm" IDs
capture drop firmID_cane 
capture drop firmID_cane_other

//merge in Estab IDs
do "$rootDir_code/General/merge_estabs_legacy" cane_sugar 130 a001 ag001 ag002 ag003
save "$rootDir_dataLegacy/Complete/cane_sugar_all.dta", replace
//merge in firm IDs
do "$rootDir_code/General/merge_firms_legacy" cane_sugar 130

//fix a few mistakes in firmids
replace firmid_cane_sugar = "5002" if year=="1931" & estabid_cane_sugar =="74"
replace firmid_cane_sugar = "83" if year=="1931" & estabid_cane_sugar =="83"
replace firmid_cane_sugar = "5001" if year=="1931" & estabid_cane_sugar =="76"
replace firmid_cane_sugar = "79" if year=="1931" & estabid_cane_sugar =="79"
replace firmid_cane_sugar = "85" if year=="1931" & estabid_cane_sugar =="85"
replace firmid_cane_sugar = "80" if year=="1931" & estabid_cane_sugar =="80"
replace firmid_cane_sugar = "5000" if year=="1931" & estabid_cane_sugar =="75"
replace firmid_cane_sugar = "77" if year=="1931" & estabid_cane_sugar =="77"
replace firmid_cane_sugar = "78" if year=="1931" & estabid_cane_sugar =="78"
replace firmid_cane_sugar = "72" if year=="1931" & estabid_cane_sugar =="72"
replace firmid_cane_sugar = "71" if year=="1931" & estabid_cane_sugar =="71"
replace firmid_cane_sugar = "82" if year=="1931" & estabid_cane_sugar =="82"
replace firmid_cane_sugar = "81" if year=="1931" & estabid_cane_sugar =="81"
replace firmid_cane_sugar = "73" if year=="1931" & estabid_cane_sugar =="73"
replace firmid_cane_sugar = "84" if year=="1931" & estabid_cane_sugar =="84"

//translate existing IDs to our idiom
local ID_establishment = "estab"
local ID_firm = "firm"
foreach type in establishment firm {
	do "$rootDir_code/General/gen_ID" "130" "`type'"
	do "$rootDir_code/General/translate_legacyIDs" "`ID_`type''id_cane_sugar" "`type'"
}

//generate flag for Census of Mines schedule. Flag will be used to make sure properly missing employment variables are left missing
do "$rootDir_code/Variable Checking/gen_mines_variable"

//clean up state name variable
do "$rootDir_code/General/clean_state_name.do" "ag001" "ag001"

//Clean up the county name variable
qui do "$rootDir_code/General/clean_county_name.do" "ag003" "ag003" "ag001" "ag002"

//make sure indCode is consistent
capture drop z_indCode
gen z_indCode = "130"
//this variable identifies how estabIDs were generated
gen estabid_generated = "LEGACY"
gen firmid_generated = "LEGACY"
//all variables to strings for ease of appending later
tostring *, replace force
aorder *

save "$rootDir_dataLegacy/Complete/cane_sugar_all.dta", replace
