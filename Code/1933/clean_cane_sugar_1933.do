*NLZ: Program to create and clean the 1933 cane sugar data, 11/29/10
//Globals referenced: rootDir_sheets, rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import excel "$rootDir_sheets/1933/130/1933_cane_sugar__form.xls", sheet("Sheet1") cellrange(A4:AY76) firstrow clear

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename identifying information variables
rename IsthisIncorporated isthisincorporated
rename Subsidiaryofanother subsidiary
rename subsidiary subsidiaryofanother
rename Changedlocation change_location
rename Changedname change_name
rename Changedownership change_ownership

rename Numdaysplantinoperation d001
rename Normalnumberofhoursperweek d008

//rename the monthly employment variables
foreach i in "Jan" "Feb" "March" "April" "May" "June" "July" "August" "September" "October" "November" "December" {
	tostring `i', replace
	rename `i' wage_earners_`i'
}

rename WagesPaid total_wages
rename Costofallmaterials f009

//rename output variables
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
rename Vaule bagasse_value
rename Costofcontractwork f004  


rename PostOfficeAddress a004
rename Nameandaddressofconcern am002

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

drop if ImageNumber=="" //drop those with missing imagenumber since we will use to merge

capture drop year
gen year =  1933
//rename "common" set of variables for labeling 
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistency when appending later
tostring *, replace force

save "$rootDir_dataLegacy/1933/cane_sugar_1933_clean", replace
