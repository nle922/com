*NLZ: Program to create and clean the 1929 ice data.
//Really a big mess that should be rewritten. 7/25/17
//Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import excel "$rootDir_sheets/1929/119/1929_ice_combined.xlsx", sheet("Sheet1") cellrange(A4:DT3616) firstrow allstring clear
missings dropvars, force

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename costs of input variables
capture rename Costofallmaterials  f001
capture rename Costoffuel  f002
capture rename Costofpurchasedcurrent f003  
capture rename BB total_cost_materials

//rename utilization variables
capture rename Numdaysplantinoperation d001
capture rename Hoursperday d002
capture rename Hoursperweek d003
capture rename Numberofshiftsperday d004
capture rename Normalnumberofhoursperweek d005
capture rename Doesthisnumberofhoursrefer d006

//rename employment variables
capture rename AA e001m
rename Female e001f
rename Male e002m
capture rename AD e002f
capture rename AE e003m
capture rename AF e003f

rename aSalariestoprincipalofficie e002s
rename bSalariestomanagers e003s
rename cPaidtowageearners e005s

  
//rename distribution variables
capture rename a sales_wholesale_not_owned
capture rename b sales_wholesale_owned
capture rename d sales_retail_owned
capture rename c sales_retail_not_owned
capture rename f sales_home

//rename compressor and absorber variables
capture rename CO compression_less_than_10
capture rename CP compression_10_20
capture rename CQ compression_20_30
capture rename CR compression_30_50
capture rename CS compression_50_100
capture rename CV absorption_less_than_10
capture rename CW absorption_10_20
capture rename CX absorption_20_30
capture rename CY absorption_30_50
capture rename CZ absorption_50_100
capture rename DA absorption_100_more
capture rename DB absorption_total_capacity

capture rename BG plate_raw_quantity
capture rename PlatformValue plate_raw_value

//rename other product variables
capture rename BJ gp_s_other1
capture rename BK gp_v_other1
capture rename BL gp_s_other2
capture rename BM gp_v_other2
capture rename BN gp_s_other3
capture rename BO gp_v_other3
capture drop Morethanthree

//make sure all variables are lower case
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

capture rename normalnumberofhoursperweekfo hours_per_wage_earner

//rename employment variables
capture rename male proprietors_male
capture rename female proprietors_female
capture rename asalariestoprincipalofficiers salaries_officers
capture rename bsalariestomanagers salaries_managers
capture rename cpaidtowageearners total_wages
capture rename v48 total_wages_salaries

//rename monthly employment variables
foreach i in "jan" "feb" "march" "april" "may" "june" "july" "august" "september" "october" "november" "december" "total"{
	capture rename `i' wage_earners_`i'
}

//rename input cost variables
capture rename costofallmaterials f001
capture rename costoffuel f002
capture rename Cost j_v_water
capture rename cl j_v_calcium_chloride
capture rename cm j_v_sodium_chloride
capture rename cn j_v_ammonia
capture rename costofpurchasedcurrent f003

//rename output variables
capture rename distilledwater can_distilled_quantity
capture rename rawwater can_raw_quantity
capture rename platformvalue can_value
capture rename receiptsfromcoldstorage receipts_coldstorage
capture rename totalvalue total_output_value
capture rename totalvalueofproductsmanufactured total_value_manufactured

//rename engine and turbine variables
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

//rename electricity variables
rename generatedintheplant fe001k
rename purchased fe002k
rename cost fe002c


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

//these are distribution variables which should realy be renamed 
capture drop e g h i 
drop do notes

rename motor_purchased_number he001n
rename electricmotorsdrivenbypurcha he001h
rename electricmotorsdrivenbycurren he002n
rename cg he002h


   
capture drop year
gen year = 1929
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistency in appending later
tostring *, replace force

save "$rootDir_dataLegacy/1929/ice_1929_clean.dta", replace
