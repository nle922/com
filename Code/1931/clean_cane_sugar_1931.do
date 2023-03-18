*NLZ: Program to create and clean the 1931 Cane Sugar data, 
//Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

//Preliminaries
capture log close
set more off

import excel "$rootDir_sheets/1931/130/1931_cane_sugar__form.xls", sheet("Sheet1") cellrange(A4:BH72) firstrow allstring clear

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename identifying information variables
rename Changedlocation change_location
rename Changedname change_name
rename Changedownership change_ownership
rename IsthisIncorporated isthisincorporated
rename Subsidiaryofanother subsidiaryofanother

//rename monthly employment variables
foreach i in "Jan" "Feb" "March" "April" "May" "June" "July" "August" "September" "October" "November" "December" {
	tostring `i', replace force
	rename `i' wage_earners_`i'
}

//rename costs of inputs variables
rename WagesPaid total_wages
rename Costofallmaterials f009
rename Costofcontractwork f004

//remame output variables
rename Quantity granulated_quantity
rename Value granulated_value
rename AM clarified_quantity
rename AN clarified_value
rename AO raw_quantity
rename AP raw_value
rename AQ sirup_quantity
rename AR sirup_value
rename Quantiy molasses_quantity
rename AT molasses_value
rename AU blackstrap_molasses_quantity
rename AV blackstrap_molasses_value
rename AW bagasse_quantity
rename AX bagasse_value

/*
gen total_output_value = 0
replace total_output_value = total_output_value + granulated_value if granulated_value~=.
replace total_output_value = total_output_value + clarified_value if clarified_value~=.
replace total_output_value = total_output_value + raw_value if raw_value~=.
replace total_output_value = total_output_value + sirup_value if sirup_value~=.
replace total_output_value = total_output_value + molasses_value if molasses_value~=.
replace total_output_value = total_output_value + blackstrap_molasses_value if blackstrap_molasses_value~=.
replace total_output_value = total_output_value + bagasse_value if bagasse_value~=.
*/

//rename input variables
rename Tons cane_grown_tons
rename Cost cane_grown_cost
rename BA cane_purchased_tons
rename BB cane_purchased_cost
rename BC cane_others_tons
rename BD cane_others_cost
rename BE cane_total_tons
rename BF cane_total_cost

rename PostOfficeAddress a004
rename Nameandaddressofconcern am002

capture drop year
capture gen year =  1931
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace force

save "$rootDir_dataLegacy/1931/cane_sugar_1931_clean", replace
