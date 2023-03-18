*NLZ: Program to create and clean the 1933 agricultural implements data, 11/29/10
//Globals referenced: rootDir_sheets, rootDir_dataLegacy

*Preliminaries
capture log close
set more off

//insheet file that you want to clean here
import delimited using "$rootDir_sheets/1933/1301/1933_ag_impls_form_23082011.csv", delimiter(",") clear stringcols(_all) case(lower)

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename costs of inputs variables
capture rename costofallmaterials f009
capture rename costofcontractwork f004
capture rename v48 f007

rename numdaysplantinoperation d001
rename numberofhoursplantwasoperated d008

//rename identfying information
rename changedlocation change_location
rename changedname change_name
rename changedownership change_ownership

//rename employment variables
foreach i in "jan" "feb" "march" "april" "may" "june" "july" "august" "september" "october" "november" "december" "total"{
	tostring `i', replace
	rename `i' wage_earners_`i'
}
rename v45 total_wages_salaries
rename wagespaid total_wages
rename totalvalue total_output_value
rename salariesforclerks salaries_clerks
rename salariesforofficers salaries_officers
rename salariesformanagers e003tas
rename subsidiaryofanother subsidiary 
rename managers e003ta

//rename output variables
rename quantity quantity_1
rename value value_1
rename units units_1
rename specify specify_1

//need to first rename all v`i' variables to more meaningful prefixes
local j = 1
local h = 2
forvalues i = 53(1)88{

	if(`j'==1){
		rename v`i' quantity_`h'
	}
	if(`j'==2){
		rename v`i' value_`h'
	}
	if(`j'==3){
		rename v`i' units_`h'
	}
	if(`j'==4){
		rename v`i' specify_`h'
	}
	local j = `j' + 1
	//when `j'>4, then we need to wrap back to the beginning
	if(`j'>4){
		local j = 1
		local h = `h'+1 //this is counter of what product number we're on
	}
}

rename postofficeaddress a004
rename nameandaddressofconcern am002
rename ifsogive as005

//We are missing code to place the values in value_`h' into variables like gp_v_haying, etc.

capture drop year
gen year =  1933
//rename "common" set of variables for labeling 
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace force

save "$rootDir_dataLegacy/1933/ag_imps_1933_clean", replace
