//renaming of radio industry data
//Global variables: rootDir_dataLegacy, rootDir_Code

*Preliminaries
capture log close 
set more off

//load data which we will overwrite in the end
use "$rootDir_dataLegacy/Complete/radio_all.dta", replace

//for consistency, tostring everything
tostring *, replace force

//first do some renaming of slightly inconsistent value and quantity variables
capture replace receiving_sets_value = receiver_set_value if receiving_sets_value=="." | receiving_sets_value==""
capture drop receiver_set_value
capture rename RadioDryBatteries RadioDryBatteries_value
capture rename RadioDryBatteriesNo RadioDryBatteries_quantity
capture rename RadioStorageBatteries RadioStorageBatteries_value
capture rename RadioStorageBatteriesNo RadioStorageBatteries_quantity
capture replace Components_revenue = components_value if Components_revenue=="." | Components_revenue ==""
capture drop components_value
capture rename Components_output Components_quantity
capture rename Components_revenue Components_value 
capture rename Receivers_output Receivers_quantity
capture rename Receivers_revenue Receivers_value  
capture rename Tubes_output Tubes_quantity
capture rename Tubes_revenue Tubes_value
capture rename Wetbatteries Wetbatteries_value
capture rename WetbatteriesNo Wetbatteries_quantity

local outputs "RadioDryBatteries RadioStorageBatteries Components Receivers Tubes Wetbatteries aircraft auto_battery_18_34 auto_battery_18 auto_police auto_power_22 auto_power_22_40 auto_power_40 battery_power_40 battery_power_27 battery_power_27_40 receivingOther_sets socket_power_11_18 socket_power_11 socket_power_18_30 socket_power_11_30 socket_power_30_45 socket_power_30_65 socket_power_45_65 socket_power_65 television_over65 television_under65"
local temp_outputs "radio_batteries receiving_sets transformers transmitting_sets tubes_550 tubes  tubes_over50 tubes_under5 loud_speakers"

//rename number to quantity
foreach i in `temp_outputs'{
	capture rename `i'_number `i'_quantity
}
 
//now rename all variables in outputs and temp_outputs into gp_ variables
foreach i in `outputs' `temp_outputs'{
	  capture rename `i'_quantity gp_q_`i'
	  capture rename `i'_value gp_v_`i'
 }
capture rename auto_battery_34_value gp_v_auto_battery_34
capture rename auto_battery_34_quantity gp_q_auto_battery_34
  
//rename general products
forvalues i=1/13{
	capture rename quantity_`i' gp_q_general`i'
	capture rename specify_`i' gp_s_general`i'
	capture rename value_`i' gp_v_general`i'
}

//rename miscellaneous. The first 4 of these are actually "general" products and the last 4 actually miscellaneous
forvalues j=1/4{
	local i =`j'+13
	capture rename miscellaneous_`i'_quantity gp_q_general`i'
	capture rename miscellaneous_`i'_value gp_v_general`i'
}

forvalues i=1/4{
	capture rename miscellaneous_`i'_quantity gp_q_miscellaneous`i'
	capture rename miscellaneous_`i'_value gp_v_miscellaneous`i'
}
capture rename Other_output gp_q_miscellaneous5
capture rename Other_revenue gp_v_miscellaneous5  

//drop some useless variables
capture drop other_value
capture drop miscellaneous_value
capture drop Subtotal_reve
capture drop Sumof3Products
capture drop morethanthree
capture drop Note Notes MorethanThree
  
//rename other products consistently
do "$rootDir_code/General/rename_otherProducts"
//label these basic variables according to CK's scheme
do "$rootDir_code/Label/label_ck_vars"
//label radio specific variables
do "$rootDir_code/Label/label_radio_vars"

rename Identifier estabid_radio
save "$rootDir_dataLegacy/Complete/radio_all.dta", replace
do "$rootDir_code/General/merge_firms_legacy" "radio" 1303

//fixes some problems in the IDs. Big chunk of estabs in OH doesn't have firm IDs attached. 
//Also fixes one typo in estabID
replace estabid_radio = "WISC5" if estabid_radio=="WISC8" & year=="1933"
replace firmid_radio = estabid_radio if firmid_radio == "" 

//translate existing IDs to our idiom
local ID_establishment = "estab"
local ID_firm = "firm"
foreach type in establishment firm {
	do "$rootDir_code/General/gen_ID" "RADIO" "`type'"
	do "$rootDir_code/General/translate_legacyIDs" "`ID_`type''id_radio" "`type'"
}

//generate flag for Census of Mines schedule. Flag will be used to make sure properly missing employment variables are left missing
do "$rootDir_code/Variable Checking/gen_mines_variable"

//clean up state names
do "$rootDir_code/General/clean_state_name.do" "ag001" "ag001"

//Clean up the county name variable
qui do "$rootDir_code/General/clean_county_name.do" "ag003" "ag003" "ag001" "ag002"

//make sure indCode is consistent
capture drop z_indCode
gen z_indCode = "RADIO"
//this variable identifies how estabIDs were generated
gen estabid_generated = "LEGACY"
gen firmid_generated = "LEGACY"
//tostring everything for consistency when appending later
tostring *, replace force
//order variables
aorder *

save "$rootDir_dataLegacy/Complete/radio_all.dta", replace
