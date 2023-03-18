*NLZ: Program to create and clean the 1933 bone black data, 11/29/10
//Globals referenced: rootDir_sheets, rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import excel "$rootDir_sheets/1933/606/1933_bone_black_form.xls", sheet("Sheet1") cellrange(A4:BK52) firstrow allstring clear

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename identyfing information variables
rename IsthisIncorporated isthisincorporated
rename Subsidiaryofanother subsidiary
rename subsidiary subsidiaryofanother
rename Changedlocation change_location
rename Changedname change_name
rename Changedownership change_ownership

//rename monthly employment variables
foreach i in "Jan" "Feb" "March" "April" "May" "June" "July" "August" "September" "October" "November" "December" "Total"{
	tostring `i', replace
	rename `i' wage_earners_`i'
}
rename wage_earners_Jan ewemt01
rename wage_earners_Feb ewemt02
rename wage_earners_March ewemt03
rename wage_earners_April ewemt04
rename wage_earners_May ewemt05
rename wage_earners_June ewemt06
rename wage_earners_July ewemt07
rename wage_earners_August ewemt08
rename wage_earners_September ewemt09
rename wage_earners_October ewemt10
rename wage_earners_November ewemt11
rename wage_earners_December ewemt12
rename wage_earners_Total ewemt

//rename employment variables
rename Proprietors e001t
rename Officers e002t
rename Salariesforofficers e002s
rename Salariesformanagers e003tas
rename Salariesforclerks salariesforclerks
rename WagesPaid total_wages
rename AP total_wages_salaries

rename Costofallmaterials f009
rename AS f007


//generate some output variables by looking at specify
gen lamp_black_quantity = Quantity if regexm(Specify, "Lamp")==1
replace Quantity = "" if lamp_black_quantity~=""
gen lamp_black_value = Value if regexm(Specify, "Lamp")==1
replace Value = "" if lamp_black_value~=""
gen bone_black_quantity = Quantity if regexm(Specify, "Bone")==1
replace Quantity = "" if bone_black_quantity~=""
gen bone_black_value = Value if regexm(Specify, "Bone")==1
replace Value = "" if bone_black_value~=""

rename Quantity carbon_black_quantity
rename Value carbon_black_value
destring carbon_black_value carbon_black_quantity AX AY, replace force 
replace carbon_black_value = carbon_black_value + AY if regexm(AW, "Carbon")
replace carbon_black_quantity = carbon_black_quantity + AX if regexm(AW, "Carbon")


//rename remaining output variables
rename AX other_quantity
rename AY other_value
rename TotalValue totalvalue
rename totalvalue total_output_value
rename Costofcontractwork f004  

rename PostOfficeAddress a004
rename Nameandaddressofconcern am002
rename IfSoGive as005

capture drop year
gen year =  1933
//rename "common" set of variables for labeling 
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistency with appending later
tostring *, replace force

save "$rootDir_dataLegacy/1933/bone_black_1933_clean", replace
