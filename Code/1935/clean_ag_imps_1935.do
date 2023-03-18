*NLZ: Program to create and clean the 1935 agricultural implements data, 11/29/10
//Globals referneced: rootDir_sheets, rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import delimited using "$rootDir_sheets/1935/1301/1935_ag_impls_form_23082011.csv", clear delimiter(",") stringcols(_all) case(lower)
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename utilization variables
capture rename numdaysplantinoperation d001
capture rename hoursperweek d008
capture rename shiftsperday d004
capture rename doesnumberofhours d006

//rename identyfing information variables
rename changedname change_name
rename natureofbusiness change_nature_bus
rename changedownership change_ownership
rename industrialcode industrycode

//rename costs of input variables
rename costofmaterials f001
rename costoffuel f002
rename costofpurchasedelectricityenergy f003
//check for consistency here
rename v55 f009

//rename employment variables
foreach i in "jan" "feb" "march" "april" "may" "june" "july" "august" "sept" "oct" "nov" "dec" "v49"{
	tostring `i', replace force
	rename `i' wage_earners_`i'
}
rename wage_earners_v49 wage_earners_total
rename totalamountpaidtowageearners total_wages
rename correspondingtotalofwagesin1934 total_wages_1934
rename a propietors
rename b officers
rename c supervisory_employees
rename d technical_employees
rename e clerical_employees_mar
rename v28 clerical_employees_jun
rename v29 clerical_employees_sep
rename v30 clerical_employees_dec
rename total total_salaried_employees
rename v32 officers_salary
rename v33 e003tas
rename v34 technical_employees_salary
rename v35 clerical_employees_salary
rename v36 total_salaried_employees_salary
rename costofcontractwork cost_contract_work

//rename output variables
rename plantingmachinery planting_value
rename plows plows_value
rename harrows harrows_value
rename cultivation cultivators_value
rename harvesting harvesting_value
rename haying haying_value
rename machinesforpreparing machines_preparing_value
rename allothersspecify other_specify_1
rename value other_value_1
rename v66 other_specify_2
rename v67 other_value_2
rename attachmentsandparts attachments_value
rename allotherexclusive other_nonAg_specify_1
rename v70 other_nonAg_value_1
rename allotherexclusive1 other_nonAg_specify_2
rename v72 other_nonAg_value_2
rename ifmorethanallotherproducts more_than_3_products
rename totalvalue total_output_value
rename correspondingamountfor1934 total_output_value_1934

//The engine and power variables are a mess, rename and then run speciality code for them
rename number steamenginenumber
rename primemovershp steamenginehorsepower
rename generators hp001gk
rename v79 steamturbinesnumber
rename v80 steamturbineshorsepower
rename v81 hp002gk
rename v82 diesselandsemidieselengines
rename v83 diesselandsemidieselengineshp
rename v84 hp005gk
rename v85 internalcombustionenginesnumb
rename v86 internalcombustionengineshors
rename v87 hp006gk
rename v88 waterwheelsnumber
rename v89 waterwheelshorsepower
rename v90 hp004gk
do "$rootDir/Cleaning Scripts/1935/fix_power_1935"

rename elecmotorspurchasednum he001n
rename totalratedhorsepower he001h
rename elecmotorsgenerated he002n
rename v96 he002h

//rename fuel variables
capture rename quantity coal_anthracite_quantity
capture rename v98 coal_anthracite_cost
capture rename v99 coal_bituminous_quantity
capture rename v100 coal_bituminous_cost
capture rename v101 coke_quantity
capture rename v102 coke_cost
capture rename v103 fuel_oils_quantity
capture rename v104 fuel_oils_cost
capture rename v105 natural_gas_quantity
capture rename v106 natural_gas_cost
capture rename v107 gas_blast_quantity
capture rename v108 gas_blast_cost
capture rename v109 manufactured_gas_quantity
capture rename v110 manufactured_gas_cost

rename postofficeaddress a004
rename nameandaddressofconcern am002
rename ifsogive as005
rename total_wages_1934 e005sp

capture drop year
gen year = 1935
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace force

save "$rootDir_dataLegacy/1935/ag_imps_1935_clean", replace
