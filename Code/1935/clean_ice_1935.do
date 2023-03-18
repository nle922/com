//rename industry 119 for 1935
//Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

//Preliminaries
capture log close
set more off

import excel "$rootDir_sheets/1935/119/1935_ice_combined.xlsx", sheet("Sheet1") cellrange(A4:EO3455) firstrow allstring clear
missings dropvars, force //drop any blank variables
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename costs of inputs variables
capture rename Costofmaterials f001
capture rename Costoffuel f002
capture rename Costofpurchasedelectricityen f003
capture rename BS f009
capture rename Costofcontractwork f004
  
//rename utilization variables
capture rename Numdaysplantinoperation d001
capture rename Hoursperweek d008
capture rename Shiftsperday d004
capture rename Doesnumberofhours d006

//rename monthly wage earners variables
foreach i in "Jan" "Feb" "March" "April" "May" "June" "July" "August" "Sept" "Oct" "Nov" "Dec"{
	capture rename `i' wage_earners_`i'
}

//rename output variables
capture rename BX plate_distilled_quantity
capture rename BY plate_raw_quantity
capture rename PlatformValue plate_value
capture rename Specify gp_n_other1
capture rename CC gp_v_other1
capture rename CD gp_s_other2
capture rename CE gp_v_other2
capture rename CF gp_s_other3
capture rename CG gp_v_other3

//rename employment variables
capture rename BS total_wages_salaries
capture rename AZ wage_earners_total
capture rename AE clerks_june
capture rename AF clerks_sept
capture rename AG clerks_dec
capture rename Total total_salaried_employees
capture rename AI officers_salary
capture rename AJ e003tas
capture rename AK technical_employees_salary
capture rename AL salariesforclerks
capture rename AM total_salaried_employees_salary
capture rename AZ ewemt

//rename capital variables
capture rename Lessthan10tons compression_less_than_10
capture rename DG compression_10_20
capture rename DH compression_20_30
capture rename DI compression_30_50
capture rename DJ compression_50_100
capture rename DM absorption_less_than_10
capture rename DN absorption_10_20
capture rename DO absorption_20_30
capture rename DP absorption_30_50
capture rename DQ absorption_50_100
capture rename DR absorption_100_more
capture rename DS absorption_total_capacity
capture rename EB DiesselandSemiDieselEnginesHP  

//rename input variables
capture rename Pounds j_q_calcium_chloride
capture rename Cost j_v_calcium_chloride
capture rename DA j_q_sodium_chloride
capture rename DB j_v_sodium_chloride
capture rename DC j_q_ammonia
capture rename DD j_v_ammonia
capture rename DE j_v_water

//rename man hours variables
local counter = 1
foreach i of varlist BC-Sep {
	capture rename `i' emh0`counter'
	local counter = `counter'+1
}
capture rename BL emh10
capture rename BM emh11
capture rename BN emh12
capture rename BO emht

capture drop Notes
capture drop Morethanthree

//make sure all variables are lower case
foreach i of varlist *{
	local lower_case = lower("`i'")
	capture rename `i' `lower_case'
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

capture rename normalnumberofhoursperweekfo hours_per_wage_earner

//rename employment variables
capture rename male proprietors_male
capture rename female proprietors_female
capture rename asalariestoprincipalofficiers salaries_officers
capture rename bsalariestomanagers salaries_managers
capture rename cpaidtowageearners total_wages

//rename costs of inputs variables
capture rename costofallmaterials cost_materials
capture rename costoffuel cost_fuel
capture rename costofpurchasedcurrent cost_purchased_current

//rename output variables
capture rename distilledwater can_distilled_quantity
capture rename rawwater can_raw_quantity
capture rename platformvalue can_value
capture rename receiptsfromcoldstorage receipts_coldstorage
capture rename totalvalue total_output_value
capture rename totalvalueofproductsmanufactured total_value_manufactured


//rename engine variables
do "$rootDir/Cleaning Scripts/1935/fix_power_1935"

//rename electricity variables
rename electricmotorsnumber he001n
rename electricmotorsdrivenbypurcha he001h
rename electricmotorsdrivenbycurren he002n
rename ej he002h

//rename electricity variables
capture rename purchased electricity_purchased
capture rename cost cost_electricity


 

//rename capital variables
capture rename lessthan10tons compression_less_than_10
capture rename ormoretons compression_100_more
capture rename totalcapacity compression_total_capacity
capture rename horsedrawn horse_vehicles
capture rename gasoline gasoline_vehicles
capture rename electric electric_vehicles
capture rename horse_vehicles delivery_horsedrawn_number 
capture rename electric_vehicles delivery_electric_number 
capture rename gasoline_vehicles delivery_gasoline_number 

//rename employment variables
capture rename totalamountpaidtowageearner total_wages
capture rename salariesforclerks salaries_clerks
capture rename a proprietors
capture rename b officers
capture rename c supervisory_employees
capture rename d technical_employees
capture rename e clerks_mar

capture rename correspondingtotalvalueofpro total_value_1934
capture rename correspondingtotalofwagesin total_wages_1934

rename change_location as002
rename postofficeaddress a004
rename nameandaddressofconcern am002
rename ifsogive as005
rename clerks_sept e003tc09
rename total_wages_1934 e005sp

capture drop year
gen year =  1935
//rename "common" set of variables for labeling 
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistency in appending later
tostring *, replace force

save "$rootDir_dataLegacy/1935/ice_1935_clean.dta", replace
