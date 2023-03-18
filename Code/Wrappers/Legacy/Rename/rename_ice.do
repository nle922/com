//renaming of ice industry variables
//Globals referenced: $rootDir_dataLegacy, $rootDir_code

*Preliminaries
capture log close 
set more off

//load data and will overwrite later
use "$rootDir_dataLegacy/Complete/ice_all.dta", clear

//tostring all variables for consistency
tostring *, replace force

//rename and label ice specific variables for machinery and delivery vechicles
local hp_ranges "10_20 20_30 30_50 50_100 100_more less_than_10 total_capacity"
foreach i in `hp_ranges'{
	capture rename absorption_`i' z_absorption_`i'
	capture rename compression_`i' z_compression_`i'
}

local types "electric gasoline horsedrawn"
foreach i in `types'{
	capture rename delivery_`i'_number z_delivery_`i'_number
}

local inputs "electric horsedrawn gasoline"
foreach i in `inputs'{
	capture replace delivery_`i'_capacity = capacity_`i'_number if delivery_`i'_capacity==""
	capture drop capacity_`i'_number
	capture rename delivery_`i'_capacity z_delivery_`i'_capacity
}

//rename and label output variables
forvalues i =1/3{
	capture rename other_revenue_`i'_specify gp_n_general`i'
	capture rename other_revenue_`i'_value gp_v_general`i'
}

//This attempts to fill in "right" produt by looking at the product specified
//what to do about those with products not in this list?
capture replace can_distilled_quantity = output_quantity_1 if output_specify_1=="Can Ice (Distilled Water)"  | output_specify_1=="Distilled Water Ice"
capture replace can_raw_quantity = output_quantity_1 if output_specify_1=="Can Ice (Raw Water)"
capture replace can_distilled_value = output_value_1 if output_specify_1=="Can Ice (Distilled Water)"
capture replace can_raw_value = output_value_1 if output_specify_1=="Can Ice (Raw Water)"
capture drop output_*_1
capture replace receipts_coldstorage = output_value_2 if regexm(output_specify_2, "Cold Storage")  
capture replace receipts_coldstorage = output_value_3 if regexm(output_specify_3, "Cold Storage")  
capture replace can_raw_value = output_value_2 if output_specify_2=="Can Ice (Raw Water)"
capture replace can_raw_quantity = output_quantity_2 if output_specify_2=="Can Ice (Raw Water)"
capture replace can_distilled_value = output_value_1 if output_specify_1=="Can Ice (Distilled Water)"
capture replace can_raw_value = output_value_1 if output_specify_1=="Can Ice (Raw Water)"
capture drop output_*_2 output_*_3

local outputs "can_distilled can_raw plate_raw plate_distilled"
foreach i in `outputs'{
	capture  rename `i'_quantity gp_q_`i'
	capture  rename `i'_value gp_v_`i'
 }
 
capture rename receipts_coldstorage  gp_v_coldstorage
capture rename plate_value gp_v_plate
capture rename can_value gp_v_can

//rename input variables
capture replace cost_ammonia = input_value_1 if input_specify_1=="Ammonia"
capture replace cost_ammonia = input_value_2 if input_specify_2=="Ammonia"
capture replace cost_ammonia = input_value_3 if input_specify_3=="Ammonia"

capture replace pounds_ammonia = input_quantity_1 if input_specify_1=="Ammonia"
capture replace pounds_ammonia = input_quantity_2 if input_specify_2=="Ammonia"
capture replace pounds_ammonia = input_quantity_3 if input_specify_3=="Ammonia"

capture replace cost_calcium_chloride = input_value_1 if regexm(input_specify_1, "Calcium Chloride")
capture replace cost_calcium_chloride = input_value_2 if regexm(input_specify_2, "Calcium Chloride")
capture replace cost_calcium_chloride = input_value_3 if regexm(input_specify_3, "Calcium Chloride")

capture replace pounds_calcium_chloride = input_quantity_1 if regexm(input_specify_1, "Calcium Chloride")
capture replace pounds_calcium_chloride = input_quantity_2 if regexm(input_specify_2, "Calcium Chloride")
capture replace pounds_calcium_chloride = input_quantity_3 if regexm(input_specify_3, "Calcium Chloride")

capture replace cost_sodium_chloride = input_value_1 if regexm(input_specify_1, "Sodium Chloride") | regexm(input_specify_1, "Sodiums Chloride")
capture replace cost_sodium_chloride = input_value_2 if regexm(input_specify_2, "Sodium Chloride") | regexm(input_specify_2, "Sodiums Chloride")
capture replace cost_sodium_chloride = input_value_3 if regexm(input_specify_3, "Sodium Chloride")

capture replace pounds_sodium_chloride = input_quantity_1 if regexm(input_specify_1, "Sodium Chloride") | regexm(input_specify_1, "Sodiums Chloride")
capture replace pounds_sodium_chloride = input_quantity_2 if regexm(input_specify_2, "Sodium Chloride") | regexm(input_specify_2, "Sodiums Chloride")
capture replace pounds_sodium_chloride = input_quantity_3 if regexm(input_specify_3, "Sodium Chloride")

capture replace cost_water = input_value_1 if input_specify_1=="Water"
capture replace cost_water = input_value_2 if input_specify_2=="Water"
capture replace cost_water = input_value_3 if input_specify_3=="Water"

capture drop input_*_*

local inputs "ammonia calcium_chloride sodium_chloride"
foreach i in `inputs'{
	capture rename cost_`i' j_v_`i'
	capture rename pounds_`i' j_q_`i'
}
capture rename cost_water j_v_water

//rename other products consistently
do "$rootDir_code/General/rename_otherProducts"
//label these basic variables according to CK's scheme
do "$rootDir_code/Label/label_ck_vars"
//label ice specific variables
do "$rootDir_code/Label/label_ice_vars"

//drop some useless variables
capture drop average_num_wage_earners year_began year_end valueaddvalue notes_inquiry morethanthree months_operation month_end month_began

//drop "pure" duplicates. Not sure why this is strictly necessary
duplicates drop g000v ag004 ag001 a001 ag003 ag002 year, force

//save updated version of data and will overwrite again below
save "$rootDir_dataLegacy/Complete/ice_all.dta", replace


//Merge Establishment ID Variables: something is still weird here because don't get a perfect merge
//16 from matches don't have a correspondence in actual data and about 426 in the other direction
do "$rootDir_code/General/merge_estabs_legacy" ice 119 g000v_merge ag001_merge ag002_merge ag003_merge ag004_merge a001_merge   


drop if substr(estabid_ice,1,1) == "9" &  ag001 == "New Mexico" & year == "1929"		//These were accidentally transcribed twice
drop if substr(estabid_ice,1,1) == "9" &  ag001 == "North Dakota" & year == "1929"		//These were accidentally transcribed twice
drop if substr(estabid_ice,1,2) == "12" &  ag001 == "North Dakota" & year == "1933"		//These were accidentally transcribed twice


//this is a hack to fix the problem of bad matches
gen create_ID = estabid_ice==""
forval n = 1/10 { 
	ralpha new_draw, upp 
	replace estabid_ice = estabid_ice + new_draw if create_ID
	drop new_draw 
} 
drop create_ID
capture label var estabid_ice "Estab ID, Ice" 
save "$rootDir_dataLegacy/Complete/ice_all.dta", replace

//"New style" firmids
gen a002_match = a002
do "$rootDir_code/Matching/Regularize/regularize_namesFirm_119" "a002_match" "a001"
merge m:1 a002_match using "$rootDir_matching/Firms/119/match_119_firm_clean.dta", nogen

//translate existing establishment and firm IDs to our idiom
local ID_establishment = "estab"
local ID_firm = "firm"
foreach type in establishment firm {
	do "$rootDir_code/General/gen_ID" "119" "`type'"
	do "$rootDir_code/General/translate_legacyIDs" "`ID_`type''id_ice" "`type'"
}

//generate flag for Census of Mines schedule. Flag will be used to make sure properly missing employment variables are left missing
do "$rootDir_code/Variable Checking/gen_mines_variable"

//clean up state variable name
do "$rootDir_code/General/clean_state_name.do" "ag001" "ag001"

//Clean up the county name variable
qui do "$rootDir_code/General/clean_county_name.do" "ag003" "ag003" "ag001" "ag002"

//make sure indCode is consistent
capture drop z_indCode
gen z_indCode = "119"
//this variable identifies how estabIDs were generated
gen estabid_generated = "LEGACY"
gen firmid_generated = "LEGACY"
//all variables to strings for ease of appending later
tostring *, replace force
//order variables
aorder *

save "$rootDir_dataLegacy/Complete/ice_all.dta", replace
