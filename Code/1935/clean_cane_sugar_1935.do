*NLZ: Program to create and clean the 1935 Cane sugar data, 11/29/10. No matching here.
//Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import excel "$rootDir_sheets/1935/130/1935_cane__sugar_form.xls", sheet("Sheet1") cellrange(A4:EI88) firstrow clear
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename identifying information variables
rename Changedname change_name
rename NatureofBusiness change_nature_bus
rename Changedownership change_ownership
rename IsthisIncorporated isthisincorporated
rename Subsidiaryofanother subsidiaryofanother
drop Ifsogive

//rename utilization variables
capture rename Numdaysplantinoperation d001
capture rename Hoursperweek d008
capture rename Shiftsperday d004
capture rename Doesnumberofhours d006

//reanem costs of inputs variables
capture rename Costofmaterials f001
capture rename Costoffuel f002
capture rename Costofpurchasedelectricityen f003
capture rename Total f009
capture rename Costofcontractwork f004

//rename monthly employment variables
foreach i in "Jan" "Feb" "March" "April" "May" "June" "July" "August" "Sept" "Oct" "Nov" "Dec" {
	tostring `i', replace force
	rename `i' wage_earners_`i'
}

//rename manhours variables
rename AU emh01
rename AV emh02
rename AW emh03
rename AX emh04
rename AY emh05
rename AZ emh06
rename BA emh07
rename Aug emh08
rename BC emh09
rename BD emh10
rename BE emh11
rename BF emh12

//rename employment variables
rename Totalamountpaidtowageearner e005s
rename Correspondingtotalofwagesin e005sp
rename a proprietors
rename b officers
rename c supervisory_employees
rename d technical_employees
rename e clerical_employees_mar
rename Z clerical_employees_jun
rename AA clerical_employees_sep
rename AB clerical_employees_dec
rename AC officers_salary
rename AD e003tas
rename AE technical_employees_salary
rename AF clerical_employees_salary

//rename output variables
rename Quantity granulated_quantity
rename Value granulated_value
rename BN clarified_quantity
rename BO clarified_value
rename BP raw_quantity
rename BQ raw_value
rename BR sirup_quantity
rename BS sirup_value
rename Quantiy sirup_invert_quantity
rename BU sirup_invert_value
rename BV sirup_other_quantity
rename BW sirup_other_value
rename BX molasses_quantity
rename BY molasses_value
rename BZ blackstrap_molasses_quantity
rename CA blackstrap_molasses_value
rename CB bagasse_quantity
rename CC bagasse_value
rename Totalvalue total_output_value
rename Correspondingtotalvaluefor19 total_output_value1934

//rename input variables
rename Tons cane_grown_tons
rename Cost cane_grown_cost
rename CJ cane_purchased_tons
rename CK cane_purchased_cost
rename CL cane_others_tons
rename CM cane_others_cost
rename CN cane_total_tons
rename CO cane_total_cost

rename DP he001n
rename DQ he001h
rename DR he002n
rename DS he002h

drop if PageNo==""

rename Number hp001gn
rename MoversHorsepower hp001gh
rename GeneratorsHorsepower hp001gk
rename CT hp001on
rename Horsepower hp001oh

rename CV hp002gn
rename CW hp002gh
rename CX hp002gk
rename CY hp002on
rename CZ hp002oh

rename DA hp005gn
rename DB hp005gh
rename DC hp005gk
rename DD hp005on
rename DE hp005oh

rename DF hp006gn
rename DG hp006gh
rename DH hp006gk
rename DI hp006on
rename DJ hp006oh

rename DK hp004gn
rename DL hp004gh
rename DM hp004gk
rename DN hp004on
rename DO hp004oh

rename PostOfficeAddress a004
rename Nameandaddressofconcern am002



capture drop year
gen year =  1935
//rename "common" set of variables for labeling 
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace force

save "$rootDir_dataLegacy/1935/cane_sugar_1935_clean", replace
