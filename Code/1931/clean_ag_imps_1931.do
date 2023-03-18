*NLZ: Program to create and clean the 1931 agricultural implements data, 11/29/10. No matching here.
//Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

*Preliminaries
capture log close
set more off

//insheet file that you want to clean here
import delimited using "$rootDir_sheets/1931/1301/1931_ag_impls_form_23082011.csv", clear delimiter(",") case(lower) stringcols(_all)

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename identifying information variables
rename industrialcode industrycode
rename changedlocation change_location
rename changedname change_name
rename natureofbusiness change_nature_bus
rename changedownership change_ownership

//rename monthly employment variables
foreach i in "jan" "feb" "march" "april" "may" "june" "july" "august" "september" "october" "november" "december" "total"{
	tostring `i', replace force
	rename `i' wage_earners_`i'
}

//rename cost of inputs variables
rename wagespaid total_wages
rename costofallmaterials f009
rename costofcontractwork f004
rename v40 f008

//Rename output variables
rename planting planting_value
rename plows plows_value
rename harrows harrows_value
rename cultivators cultivators_value
rename harvesting harvesting_value
rename haying haying_value
rename machinesforpreparing machines_preparing_value
rename allothers other_specify_1
rename value other_value_1
rename allothers1 other_specify_2
rename v51 other_value_2
rename attachments attachment_value
rename receipts custom_work_value
rename allothernonagproducts other_nonAg_specify_1
rename v55 other_nonAg_value_1
rename v56 other_nonAg_specify_2
rename v57 other_nonAg_value_2
rename morethan2allothersproduct more_than_3_products
rename totalvalue total_output_value

rename postofficeaddress a004
rename nameandaddressofconcern am002
rename ifsogive as005

capture drop year
gen year = 1931
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistency in appending later
tostring *, replace force

save "$rootDir_dataLegacy/1931/ag_imps_1931_clean", replace
