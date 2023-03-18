//clean industry 119 for 1933
//Globals referenced: rootDir_sheets, rootDir_dataLegacy

//Preliminaries:
capture log close
set more off

import excel "$rootDir_sheets/1933/119/1933_ice_combined.xlsx", sheet("Sheet1") cellrange(A3:DD3220) firstrow allstring  clear

missings dropvars, force
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"
  
capture drop AV
//rename identifying information variables
capture rename industriescode industrycode
capture rename changedlocation change_location
capture rename changedname change_name
capture rename changedownership change_ownership
capture rename isthisanewplantwhichstartedopera newplant
capture rename issogivesuchconcern name_parent_firm
capture rename branchofsubidiary branchofsubsidiary
capture rename branchofsubsidiary subsidiaryofanother

capture rename Numplantinoperation d001
capture rename Numberofhoursplantwasopera d008

capture rename Costofallmaterials f009
capture rename Costofcontractwork f004
capture rename AV f007

capture rename male proprietors_male
capture rename female proprietors_female
capture rename AS total_wages_salaries

//rename other output variables
capture rename Quantity gp_q_other1
capture rename Unit gp_u_other1
capture rename Value gp_v_other1
capture rename Specify gp_n_other1
capture rename BA gp_q_other2
capture rename BB gp_u_other2
capture rename BC gp_v_other2
capture rename BD gp_s_other2
capture rename BE gp_q_other3
capture rename BF gp_u_other3 
capture rename BG gp_v_other3
capture rename BH gp_s_other3

//rename manhours variables
capture rename CO manhours_january
capture rename CP manhours_february
capture rename CQ manhours_march
capture rename CR manhours_april
capture rename CS manhours_may
capture rename CT manhours_june
capture rename CU manhours_july
capture rename CV manhours_august
capture rename CW manhours_september
capture rename CX manhours_october
capture rename CY manhours_november
capture rename CZ manhours_december

rename PostOfficeAddressOfGeneralO a004
rename Nameandaddressofconcern am002
rename IfSoGive as005

//drop some useless variables
capture drop BK-CK Notes Morethan3

//make sure all variable names are lower case
foreach i of varlist *{
	local new_var_name = lower("`i'")
	capture rename `i' `new_var_name'
}

//rename employment variables
foreach i in "jan" "feb" "march" "april" "may" "june" "july" "august" "september" "october" "november" "december" "total"{
	capture rename `i' wage_earners_`i'
}
capture rename asalariestoprincipalofficiers salaries_officers
capture rename bsalariestomanagers e003tas
capture rename cpaidtowageearners total_wages
capture rename managers e003ta
capture rename salariesformanagers e003tas

//rename costs of inputs variables
capture rename costofallmaterials cost_materials
capture rename costoffuel cost_fuel
capture rename costofpurchasedcurrent cost_purchased_current


//rename output variables
rename gp_q_other1 can_raw_quantity 
rename gp_v_other1 can_value
capture rename receiptsfromcoldstorage receipts_coldstorage
capture rename totalvalue total_output_value
capture rename totalvalueofproductsmanufactured total_value_manufactured

//rename electricity variables
capture rename purchased electricity_purchased
capture rename cost cost_electricity
capture rename generatedintheplant electricity_generated_plant

//rename capital variables
capture rename steamenginenumber steamengine_number
capture rename steamenginehorsepower steamengine_horsepower 
capture rename steamturbinesnumber steamturbines_number
capture rename steamturbineshorsepower steamturbines_horsepower
capture rename internalcombustionenginesnumber internalcombustion_number 
capture rename internalcombustionengineshorsepo internalcombustion_horsepower 
capture rename waterwheelsnumber waterwheels_number 
capture rename waterwheelshorsepower waterwheels_horsepower 
capture rename electricmotorsnumber motor_purchased_number 
capture rename electricmotorsdrivenbypurchasedc motor_purchased_horsepower
capture rename electricmotorsdrivenbycurrentgen motor_generated_number 
capture rename lessthan10tons compression_less_than_10
capture rename ormoretons compression_100_more
capture rename totalcapacity compression_total_capacity
capture rename horsedrawn horse_vehicles
capture rename gasoline gasoline_vehicles
capture rename electric electric_vehicles
capture rename horse_vehicles delivery_horsedrawn_number 
capture rename electric_vehicles delivery_electric_number 
capture rename gasoline_vehicles delivery_gasoline_number 

capture drop year
gen year =  1933
//rename "common" set of variables for labeling 
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace force
save "$rootDir_dataLegacy/1933/ice_1933_clean.dta", replace
