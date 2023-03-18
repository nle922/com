//clean data for industry 119 in 1931
//Globals Referenced: $rootDir_sheets, $rootDir_dataLegacy

//Preliminaries
capture log close
set more off

import excel "$rootDir_sheets/1931/119/1931_ice_combined.xlsx", sheet("Sheet1") cellrange(A3:CR2981) firstrow allstring  clear
missings dropvars, force
missings dropobs, force

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

capture rename Costofallmaterials f009
capture rename Costofcontractwork f004
capture rename AO f008

//rename compression and absorption capacity
capture rename Lessthan10tons compression_less_than_10
capture rename BL compression_10_20
capture rename BM compression_20_30
capture rename BN compression_30_50
capture rename BO compression_50_100
capture rename BR absorption_less_than_10
capture rename BS absorption_10_20
capture rename BT absorption_20_30
capture rename BU absorption_30_50
capture rename BV absorption_50_100
capture rename BW absorption_100_more
capture rename BX absorption_total_capacity

capture rename Total ewemt

//rename output variables
capture rename DistilledWater can_distilled_quantity
capture rename RawWater can_raw_quantity
capture rename Platformvalue can_value
capture rename AT plate_raw_quantity
capture rename Platformvalue plate_value
capture rename BG plate_raw_quantity
capture rename PlatformValue plate_raw_value
capture rename Totalvalue total_output_value

//rename input variables
capture rename Cost j_v_calcium_chloride
capture rename Pounds j_q_calcium_chloride
capture rename BF j_q_sodium_chloride
capture rename BG j_v_sodium_chloride
capture rename BH j_q_ammonia
capture rename BI j_v_ammonia
capture rename BJ j_v_water
capture drop Quantity-CR

capture drop Note_does_this Notes Morethan3productsreported

capture rename Specify gp_s_other1
capture rename AX gp_v_other1
capture rename AY gp_s_other2
capture rename AZ gp_v_other2
capture rename BA gp_s_other3
capture rename BB gp_v_other3

//insure that all variables are totally lower case
foreach i of varlist *{
	local new_var_name = lower("`i'")
	capture rename `i' `new_var_name'
}

//rename identifying information variables
capture rename industriescode industrycode
capture rename changedlocation change_location
capture rename changedname change_name
capture rename changedownership change_ownership
capture rename isthisanewplantwhichstartedopera newplant
capture rename issogivesuchconcern name_parent_firm
capture rename branchofsubidiary branchofsubsidiary
capture rename branchofsubsidiary subsidiaryofanother

rename nameandaddressofconcern am002
rename ifsogive as005
rename postofficeaddress a004

capture rename normalnumberofhoursperweekfo hours_per_wage_earner

//rename employment variables
capture rename male proprietors_male
capture rename female proprietors_female
//rename monthly employment variables
foreach i in "jan" "feb" "march" "april" "may" "june" "july" "august" "september" "october" "november" "december" "total"{
	capture rename `i' wage_earners_`i'
}
capture rename asalariestoprincipalofficiers salaries_officers
capture rename bsalariestomanagers salaries_managers
capture rename cpaidtowageearners total_wages

capture rename costofallmaterials cost_materials
capture rename costoffuel cost_fuel
capture rename costofpurchasedcurrent cost_purchased_current

capture rename receiptsfromcoldstorage receipts_coldstorage
capture rename totalvalueofproductsmanufactured total_value_manufactured

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
capture rename generatedintheplant electricity_generated_plant
capture rename purchased electricity_purchased
capture rename ormoretons compression_100_more
capture rename totalcapacity compression_total_capacity
capture rename horsedrawn horse_vehicles
capture rename gasoline gasoline_vehicles
capture rename electric electric_vehicles
capture rename horse_vehicles delivery_horsedrawn_number 
capture rename electric_vehicles delivery_electric_number 
capture rename gasoline_vehicles delivery_gasoline_number 

capture drop year
capture gen year = 1931
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace force

save "$rootDir_dataLegacy/1931/ice_1931_clean.dta", replace
