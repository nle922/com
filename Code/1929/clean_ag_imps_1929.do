*NLZ: Program to create and clean the 1929 agricultural implements data 
//Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import delimited using "$rootDir_sheets/1929/1301/1929_ag_impls_form_23082011.csv", clear case(lower) stringcols(_all) delimiters(",")

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename cost of inputs variables
capture rename costofallmaterials f001
capture rename costoffuel f002
capture rename costofpurchasedcurrent f003

//rename utilization variables   
capture rename numdaysplantinoperation d001
capture rename hoursperday d002
capture rename hoursperweek d003
capture rename numberofshiftsperday d004
capture rename normalnumberofhoursperweekforthe d005
capture rename doesthisnumberofhoursreferto d006

//rename identifying information varaiables
rename industriescode industrycode
rename changedlocation change_location
rename changedname change_name
rename changedownership change_ownership
rename isthisanewplantwhichstartedopera newplant
rename ifsogive name_parent_firm
rename branchofsubidiary branchofsubsidiary
rename branchofsubsidiary subsidiaryofanother
rename specify as005

//rename employment variables
rename male e001m
rename female e001f
rename v29 e002m
rename v30 e002f
rename v31 e003m
rename v32 e003f
foreach i in "jan" "feb" "march" "april" "may" "june" "july" "august" "september" "october" "november" "december" "total"{
	tostring `i', replace force
	rename `i' wage_earners_`i'
}
rename asalariestoprincipalofficiers e002s
rename bsalariestomanagers salaries_managers
rename cpaidtowageearners total_wages
rename v49 total_wages_salaries
rename  totalvalue f009

//rename output variables
rename planting planting_value
rename plows plows_value
rename harrows harrows_value
rename cultivators cultivators_value
rename harvesting harvesting_value
rename haying haying_value
rename machinesforpreparing machines_preparing_value
rename allothersproductsspecify other_specify_1
rename value other_value_1
rename v64 other_specify_2
rename v65 other_value_2
rename attachmentsandpartsspecify attachment_specify
rename attachmentsandpartsvalue attachement_value
rename customwork custom_work_value
rename allothersnonagriculturalspecify other_nonAg_specify_1
rename v70 other_nonAg_value_1
rename allothersnonagriculturalspecify1 other_nonAg_specify_2
rename v72 other_nonAg_value_2
rename morethanallotherproducts more_than_3_products
rename v74 total_output_value
rename valueadd total_value_added

//rename engine and turbine variables
rename steamenginenumber steamengine_number
rename steamenginehorsepower steamengine_horsepower 
rename steamturbinesnumber steamturbines_number
rename steamturbineshorsepower steamturbines_horsepower
rename internalcombustionenginesnumber internalcombustion_number 
rename internalcombustionengineshorsepo internalcombustion_horsepower 
rename waterwheelsnumber waterwheels_number 
rename waterwheelshorsepower waterwheels_horsepower 
rename electricmotorsnumber he001n 
rename electricmotorsdrivenbypurchasedc he001h
rename electricmotorsdrivenbycurrentgen he002n 
rename v87 he002h

//rename electricity variables
rename generatedinplant fe001k
rename purchased fe002k
rename v91 fe002c

//rename input variables
rename quantity j_q_pig_iron
rename v93 j_v_pig_iron
rename v94 j_q_scrap_iron
rename v95 j_v_scrap_iron
rename v96 j_q_iron_steel
rename v97 j_v_iron_steel
rename v98 j_q_hardwood
rename v99 j_v_hardwood
rename v100 j_q_softwood
rename v101 j_v_softwood
rename allother j_s_other1
rename v103 j_q_other1
rename v104 j_v_other1

rename usedorpurchased f00up

//rename distribution variables
rename a sales_wholesale_not_owned
rename b sales_wholesale_owned
rename d sales_retail_owned
rename c sales_retail_not_owned
rename f sales_home
//these distribution variable should really be renamed and not dropped
drop e g h

capture drop year
gen year = 1929
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistency in appending later
tostring *, replace force

save "$rootDir_dataLegacy/1929/ag_imps_1929_clean", replace
