*NLZ: Program to create and clean the 1929 cane sugar data 
*Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

*Preliminaries
capture log close
set more off

//insheet file that you want to clean here
import excel "$rootDir_sheets/1929/130/1929_cane_sugar_form.xlsx", sheet("Sheet1") cellrange(A4:CY74) firstrow allstring clear

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename utilization variables
capture rename Numdaysplantinoperation d001
capture rename Hoursperday d002
capture rename Hoursperweek d003
capture rename Numberofshiftsperday d004
capture rename Normalnumberofhoursperweek d005
capture rename Doesthisnumberofhoursrefer d006

//rename identifying information variables
rename Changedlocation change_location
rename Changedname change_name
rename Changedownership change_ownership
rename IsthisIncorporated isthisincorporated
rename Isthisanewplantwhichstarte newplant
rename Branchofsubidiary branchofsubsidiary
rename branchofsubsidiary subsidiaryofanother

//place holder to cleanup began and end variables
//rename employment variables
rename aSalariestoprincipalofficie salaries_officers
rename bSalariestomanagers salaries_managers
rename cPaidtowageearners total_wages

//rename monthly employment variables
foreach i in "Jan" "Feb" "March" "April" "May" "June" "July" "August" "September" "October" "November" "December"{
	tostring `i', replace force
	rename `i' wage_earners_`i'
}

//rename cost of inputs variables
rename Costofallmaterials f001
rename Costoffuel f002
rename Costofpurchasedcurrent f003
rename TotalValue f009

//rename output variables
rename Quantity granulated_quantity
rename Value granulated_value
rename AZ clarified_quantity
rename BA clarified_value
rename BB raw_quantity
rename BC raw_value
rename BD sirup_quantity
rename BE sirup_value
rename Quantiy molasses_quantity
rename BG molasses_value
rename BH blackstrap_molasses_quantity
rename BI blackstrap_molasses_value
rename BJ bagasse_quantity
rename BK bagasse_value
rename Allotherproductsvalue value_other_products
rename Totalvalueofproductsmanufact total_output_value



//rename input variables
rename Tons cane_grown_tons
rename Cost cane_grown_cost
rename CS cane_purchased_tons
rename CT cane_purchased_cost
rename CU cane_others_tons
rename CV cane_others_cost
rename CW cane_total_tons
rename CX cane_total_cost

capture drop year
gen year = 1929
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistency in appending later
tostring *, replace force

save "$rootDir_dataLegacy/1929/cane_sugar_1929_clean", replace
