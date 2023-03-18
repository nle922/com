//renaming of sugar refining industry
//Global variables: rootDir_dataLegacy, rootDir_Code

*Preliminaries
clear
capture log close 

//load data. Note that we will overwrite this data
use "$rootDir_dataLegacy/Complete/sugar_refining_all.dta", replace
tostring *, replace force
 
//rename some variables and drop some unused ones
capture rename gas_blast_cost blast_furnace_gas_cost
capture rename gas_blast_quantity blast_furnace_gas_quantity
capture rename total_materials_contract costofcontractwork
capture rename begin c001
capture rename hvolumeofabovesalesmadethroughma k007
capture rename value_processing_taxes z_value_processing_taxes 
capture replace z_value_processing_taxes = amountofproce if zvalue_processing_taxes=="" | zvalue_processing_taxes=="."
capture drop amountofproce
capture drop notes 
capture drop diesel_* steam_* other_* water_* units specify
capture drop doesthisnumberofhoursreferto usedorpurchased electricity_generated_kwhr cost_electricity ifsogive cost_electricity_purchased electricity_generated_plant_sold generators_idled prime_movers_idled v145 v144 generators_idled

//rename output variables
foreach i in refiner_sirup refiner_sirup_edible refiner_sirup_invert refiner_sirup_other refined_sugar_hard refined_sugar_soft sugar_sirup blackstrap{
	capture rename value_`i' gp_v_`i'
	capture rename quantity_`i' gp_q_`i'
	capture rename units_`i' gp_u_`i'
}
 
//rename other output product variables
forvalues i =1/3{
	capture rename value_other_product_`i' g_v_otherProduct`i'
	capture rename quantity_other_product_`i' g_q_otherProduct`i'
	capture rename specify_other_product_`i' g_s_otherProduct`i'
	capture rename units_other_product_`i' g_u_otherProduct`i'
 }
 
//rename input variables
foreach i in PR US VI_1 VI_2 hawaii phil cuba{
	capture rename value_raw_sugar_`i' j_v_rawSugar_`i'
	capture rename quantity_raw_sugar_`i' j_q_rawSugar_`i'
}

capture rename value_other_raw_sugar value_other_raw_sugar_4
capture rename specify_other_raw_sugar specify_other_raw_sugar_4
capture rename quantity_other_raw_sugar quantity_other_raw_sugar_4
 
 forvalues i =1/4{
	capture rename value_other_raw_sugar_`i' j_v_otherRawSugar`i'
	capture rename quantity_other_raw_sugar_`i' j_q_otherRawSugar`i'
	capture rename specify_other_raw_sugar_`i' j_n_otherRawSugar`i'

 }
rename specify_raw_sugar_VI_2 j_n_rawSugar_VI_2 

//rename other products consistently
do "$rootDir_code/General/rename_otherProducts"
//label these basic variables according to CK's scheme
do "$rootDir_code/Label/label_ck_vars"
//label sugar refining specific variables
do "$rootDir_code/Label/label_sugar_refining_vars"

//save file since we will need to load ID data and then merge with this
save "$rootDir_dataLegacy/Complete/sugar_refining_all.dta", replace
//merge in firm and industry estabIDs
do "$rootDir_code/General/merge_estabs_legacy" "sugar_refining" 131 "z_imageNumber"
//this save is important
save "$rootDir_dataLegacy/Complete/sugar_refining_all.dta", replace
do "$rootDir_code/General/merge_firms_legacy" "sugar_refining" 131

//translate existing establishment and firm IDs to our idiom
local ID_establishment = "estab"
local ID_firm = "firm"
foreach type in establishment firm {
	do "$rootDir_code/General/gen_ID" "131" "`type'"
	do "$rootDir_code/General/translate_legacyIDs" "`ID_`type''id_sugar_refining" "`type'"
}

//generate flag for Census of Mines schedule. Flag will be used to make sure properly missing employment variables are left missing
do "$rootDir_code/Variable Checking/gen_mines_variable"

//clean up state names
do "$rootDir_code/General/clean_state_name.do" "ag001" "ag001"

//Clean up the county name variable
qui do "$rootDir_code/General/clean_county_name.do" "ag003" "ag003" "ag001" "ag002"

//insure indCode is correct
capture drop z_indCode
gen z_indCode = "131"
//this variable identifies how estabIDs were generated
gen estabid_generated = "LEGACY"
gen firmid_generated = "LEGACY"
//all variables to strings for ease of appending later
tostring *, replace force
//order variables 
aorder *

save "$rootDir_dataLegacy/Complete/sugar_refining_all.dta", replace
