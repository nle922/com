*NLZ: Program to create and clean the 1931 bone black data, 
//Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import excel "$rootDir_sheets/1931/606/1931_bone_black_form.xls", sheet("Sheet1") cellrange(A4:BB59) firstrow allstring clear

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename identifying information variables
rename Changedlocation change_location
rename Changedname change_name
rename Changedownership change_ownership
rename IsthisIncorporated isthisincorporated
rename Subsidiaryofanother subsidiaryofanother

//rename monthly wage earners variables
foreach i in "Jan" "Feb" "March" "April" "May" "June" "July" "August" "September" "October" "November" "December" "Total"{
	tostring `i', replace force
	rename `i' wage_earners_`i'
}

//rename cost of inputs variables
rename WagesPaid total_wages
rename Costofallmaterials f009
rename Costofcontractwork f004
rename AM f008

//rename output variables
rename Quantity bone_black_quantity
rename Value bone_black_value
rename AP carbon_black_quantity
rename AQ carbon_black_value
rename AR lampblack_quantity
rename AS lampblack_value
rename Specify other_specify
rename AU other_value
rename AV other2_specify
rename AW other2_value
rename AX other3_specify
rename AY other3_value
rename TotalValue total_output_value

drop IfMorethanThreeProducts Note

rename PostOfficeAddress a004
rename Nameandaddressofconcern am002
rename change_location as002
rename change_name as001
rename change_ownership as003
rename IfSogiven as005
   

capture drop year
capture gen year = 1931
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace force

save "$rootDir_dataLegacy/1931/bone_black_1931_clean", replace

