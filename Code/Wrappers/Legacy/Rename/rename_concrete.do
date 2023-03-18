//renames variables of concrete industry
//Globals referenced: $rootDir_dataLegacy, $rootDir_code

*Preliminaries
capture log close 
set more off

//load data and will overwrite later
//note that there is no clean all file since no original spreadsheets at thsi point. 
use "$rootDir_dataDeprecated/concrete_for_Ziebarth.dta", clear

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//tostring all variables for consistency
tostring *, replace force

//fix up to e003 vars
gen e003ta = ""
replace e003ta = managers if (year == "1935" | year == "1933")
replace managers = "" if (year == "1935" | year == "1933")

gen e003tas = ""
replace e003tas = salaries_managers if (year == "1935" | year == "1933")
replace salaries_managers = "" if (year == "1935" | year == "1933")

gen e001m = proprietors_male if year == "1929"
gen e001f = proprietors_female if year == "1929"
gen e003m = managers_male if year == "1929"
gen e003f = managers_female if year == "1929"
gen e002m = officers_male if year == "1929"
gen e002f = officers_female if year == "1929"


//rename some variables to be consistent with CK conventions
capture rename num_days_operation d001
capture rename hours_operation_day d002
capture rename hours_operation_week d003
capture rename shiftsperday d004
capture rename hours_per_wage_earner d005
capture rename days_per_week d006
capture rename cost_purchased_current f003
capture rename id xPlantID_concrete
capture rename filename z_imageNumber
capture rename city_original ag002

//rename and label output variables
forvalues i = 1/5{
	capture rename product_`i'_quantity gp_q_general`i'
	capture rename product_`i'_value gp_v_general`i'
	capture rename product_`i'_name gp_s_general`i'
}

capture drop development_cost 
capture drop more_than_5_products  
capture rename receipts_custom_work gp_v_custom
capture rename output_concrete_tons gp_q_concrete
capture rename output_concrete_tons_value gp_v_concrete

//Could do more of these

gen gp_q_block_tile = ""
gen gp_v_block_tile = ""
gen gp_q_culvert_pipe = ""
gen gp_v_culvert_pipe = ""
gen gp_q_cast_stone = ""
gen gp_v_cast_stone = ""
gen gp_q_vaults = ""
gen gp_v_vaults = ""
gen gp_q_block = ""
gen gp_v_block = ""
gen gp_q_irrigation_pipe = ""
gen gp_v_irrigation_pipe = ""
gen gp_q_premix_concrete = ""
gen gp_v_premix_concrete = ""


//Lazy way to do this
forvalues i = 1/5{
	foreach letter in v q{
		replace gp_`letter'_block_tile = gp_`letter'_general`i' if gp_s_general`i' == "block and tile, except roofing tile"
	}
}

forvalues i = 1/5{
	foreach letter in v q{
		replace gp_`letter'_culvert_pipe = gp_`letter'_general`i' if gp_s_general`i' == "culvert pipe"
	}
}

forvalues i = 1/5{
	foreach letter in v q{
		replace gp_`letter'_cast_stone = gp_`letter'_general`i' if gp_s_general`i' == "cast stone"
	}
}

forvalues i = 1/5{
	foreach letter in v q{
		replace gp_`letter'_vaults = gp_`letter'_general`i' if gp_s_general`i' == "vaults"
	}
}

forvalues i = 1/5{
	foreach letter in v q{
		replace gp_`letter'_block = gp_`letter'_general`i' if gp_s_general`i' == "block"
	}
}

forvalues i = 1/5{
	foreach letter in v q{
		replace gp_`letter'_irrigation_pipe = gp_`letter'_general`i' if gp_s_general`i' == "irrigation pipe"
	}
}

forvalues i = 1/5{
	foreach letter in v q{
		replace gp_`letter'_premix_concrete = gp_`letter'_general`i' if gp_s_general`i' == "premixed concrete"
	}
}




//rename input variables
capture rename consumption_cement_quantity j_q_cement
capture rename consumption_cement_cost j_v_cement
capture rename consumption_sand_quantity j_q_sand
capture rename consumption_sand_cost j_v_sand
capture rename consumption_stone_quantity j_q_stone
capture rename consumption_stone_cost j_v_stone

rename change_details as005
rename purchased_current_kilowatt fe002k

//drop some  variables
capture drop more_than_4_fuels 
capture drop products_details
capture drop materials_details 
capture drop wage_earners_dec2   
capture drop total_cost_mat_contract_work 
capture drop schedule_title 
capture drop remarks 
capture drop data_entry_notes 
capture drop handwritten_typewritten 
capture drop wage_earnes_rep_week 
capture drop remarks2 
capture drop proprietor_name 
capture drop products 
capture drop materials 
capture drop product_id 
capture drop county_fips 
capture drop clean_city 
capture drop city 
capture drop super_city 
capture drop xPlantID_concrete
capture drop state_code 
capture drop change_details 


//power variables
tostring steamengine_number- idled_generators, replace
gen hp001gn = steamengine_number if year == "1935"
gen hp001gh = steamengine_horsepower if year == "1935"
gen hp001gk = steamengine_generators if year == "1935"

gen hp002gn = steamturbines_number if year == "1935"
gen hp002gh = steamturbines_horsepower if year == "1935"
gen hp002gk = steamturbines_generators if year == "1935"

gen hp005gn = diesel_number if year == "1935"
gen hp005gh = diesel_horsepower if year == "1935"
gen hp005gk = diesel_generators if year == "1935"

gen hp006gn = oic_number if year == "1935"
gen hp006gh = oic_horsepower if year == "1935"
gen hp006gk = oic_generators if year == "1935"

gen hp004gn = hydro_number if year == "1935"
gen hp004gh = hydro_horsepower if year == "1935"
gen hp004gk = hydro_generators if year == "1935"

tostring internalcombustion_number-waterwheels_horsepower, replace
gen hp001n = steamengine_number if year == "1929"
gen hp001h = steamengine_horsepower if year == "1929"
gen hp002n = steamturbines_number if year == "1929"
gen hp002h = steamturbines_horsepower if year == "1929"
gen hp003n = internalcombustion_number if year == "1929"
gen hp003h = internalcombustion_horsepower if year == "1929"
gen hp004n = waterwheels_number if year == "1929"
gen hp004h = waterwheels_horsepower if year == "1929"

rename postofficeaddress a004
rename po_address_if_different ag008


//rename "common" set of variables
do "$rootDir_code/General/basic_rename"

//rename other products consistently
do "$rootDir_code/General/rename_otherProducts"
//label these basic variables according to CK's scheme
do "$rootDir_code/Label/label_ck_vars"
//label concreate specific variables
do "$rootDir_code/Label/label_concrete_vars"

//estabIDs already exist just need to be renamed
capture rename id_linked estabid_concrete
label var estabid_concrete "Plant ID, Concrete"
//save data and will be overwritten again at the end
save "$rootDir_dataLegacy/Complete/concrete_all.dta", replace

//merge in firm IDs
do "$rootDir_code/General/merge_firms_legacy" "concrete" 1005
label var firmid_concrete "Firm ID, Concrete"

//translate existing establishment and firm IDs to our idiom
local ID_establishment = "estab"
local ID_firm = "firm"
foreach type in establishment firm {
	do "$rootDir_code/General/gen_ID" "1005" "`type'"
	do "$rootDir_code/General/translate_legacyIDs" "`ID_`type''id_concrete" "`type'"
}


//clean up some problems in d and e variables
gen d008 = ""
replace d008 = d003 if (year == "1935" | year == "1933")
replace d003 = "" if (year == "1935" | year == "1933")

replace d005 = d003 if year == "1931"
replace d003 = "" if year == "1931"

//clean up problems with missinv value for ewemt variable by summing monthly totals
gen monthly_blank_flag = 0
replace monthly_blank_flag = 1 if ewemt01 == "." ///
	& ewemt02 == "." ///
	& ewemt03 == "." ///
	& ewemt04 == "." ///
	& ewemt05 == "." ///
	& ewemt06 == "." ///
	& ewemt07 == "." ///
	& ewemt08 == "." ///
	& ewemt09 == "." ///
	& ewemt10 == "." ///
	& ewemt11 == "." ///
	& ewemt12 == "."
	
foreach m in 01 02 03 04 05 06 07 08 09 10 11 12{
	destring ewemt`m', gen(ewemt`m'_new) force 
}
gen new_ewemt = ""
egen new_ewemt_monthly = rowtotal(ewemt01_new ewemt02_new ewemt03_new ewemt04_new ewemt05_new ewemt06_new ///
ewemt07_new ewemt08_new ewemt09_new ewemt10_new ewemt11_new ewemt12_new)
tostring new_ewemt_monthly, replace force
replace new_ewemt = new_ewemt_monthly if monthly_blank_flag == 0
drop ewemt
rename new_ewemt ewemt

//Blanks should be zero if not a general schedule
foreach m in 01 02 03 04 05 06 07 08 09 10 11 12{
	replace ewemt`m' = "0" if ewemt`m' == "." & monthly_blank_flag == 0
}



   

//drop variables created to fix these missing values
drop new_ewemt monthly_blank_flag new_ewemt_monthly ewemt01_new ewemt02_new ewemt03_new ewemt04_new ewemt05_new ewemt06_new ewemt07_new ewemt08_new ewemt09_new ewemt10_new ewemt11_new ewemt12_new

//generate flag for Census of Mines schedule. Flag will be used to make sure properly missing employment variables are left missing
do "$rootDir_code/Variable Checking/gen_mines_variable"

//clean up state variable name
do "$rootDir_code/General/clean_state_name.do" "ag001" "ag001"

//Clean up the county name variable
qui do "$rootDir_code/General/clean_county_name.do" "ag003" "ag003" "ag001" "ag002"

//make sure indCode is consistent
capture drop z_indCode
gen z_indCode = "1005"
//this variable identifies how estabIDs were generated
capture drop estabid_generated
gen estabid_generated = "LEGACY"
gen firmid_generated = "LEGACY"
//all variables to strings for ease of appending later
tostring *, replace force
//order the variables
aorder *

//Finalize obs_id
replace obs_id = year+"1005"+obs_id

save "$rootDir_dataLegacy/Complete/concrete_all.dta", replace
