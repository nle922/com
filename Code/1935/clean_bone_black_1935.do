*NLZ: Program to create and clean the 1935 bone black  data, 11/29/10. No matching here.
//Globals referenced: rootDir_sheets, rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import excel "$rootDir_sheets/1935/606/1935_bone_black_form.xls", sheet("Sheet1") cellrange(A4:EJ59) firstrow allstring clear
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename costs of inputs variables
capture rename Costofmaterials f001
capture rename Costoffuel f002
capture rename Costofpurchasedelectricityen f003
capture rename BP f009
capture rename Costofcontractwork f004
rename Totalamountpaidtowageearner total_wages
rename Correspondingtotalofwagesin total_wages_1934

//rename utilziation variables
capture rename Numdaysplantinoperation d001
capture rename Hoursperweek d008
capture rename Shiftsperday d004
capture rename Doesnumberofhours d006

//rename identifying information variables
rename Changedname change_name
rename NatureofBusiness change_nature_bus
rename Changedownership change_ownership
rename IsthisIncorporated isthisincorporated
rename Subsidiaryofanother subsidiaryofanother

rename Ifsogive as005

//rename monthly employment variables
foreach i in "Jan" "Feb" "March" "April" "May" "June" "July" "August" "Sept" "Oct" "Nov" "Dec" "AW"{
	tostring `i', replace force
	rename `i' wage_earners_`i'
}
rename wage_earners_AW wage_earners_total

//rename employment variables
rename a proprietors
rename b officers
rename c supervisory_employees
rename d technical_employees
rename e clerical_employees_mar
rename AB clerical_employees_jun
rename AC clerical_employees_sep
rename AD clerical_employees_dec
rename Total total_salaried_employees
rename AF officers_salary
rename AG e003tas
rename AH technical_employees_salary
rename AI clerical_employees_salary
rename AJ total_salaried_employees_salary

drop AZ-BL

//rename output variables
rename Quantity bone_black_quantity
rename Value bone_black_value
rename BT carbon_black_quantity
rename BU carbon_black_value
rename BV lampblack_quantity
rename BW lampblack_value
rename BX other_quantity
rename BY other_value
rename Specify other_specify
rename CA other2_quantity
rename CB other2_value
rename CC other2_specify
rename CD other3_quantity
rename CE other3_value
rename CF other3_specify
rename IfMoreThenThreeProducts morethanthree
rename Totalvalue total_output_value
rename Correspondingtotalvaluefor19 total_output_value1934

rename Number hp001gn
rename MoversHorsepower hp001gh
rename GeneratorsHorsepower hp001gk
rename CO hp001on
rename Horsepower hp001ok
rename CQ hp002gn
rename CR hp002gh
rename CS hp002gk
rename CT hp002on
rename CU hp002ok
rename CV hp005gn
rename CW hp005gh
rename CX hp005gk
rename CY hp005on
rename CZ hp005ok
rename DA hp006gn
rename DB hp006gh
rename DC hp006gk
rename DD hp006on
rename DE hp006ok
rename DF hp004gn
rename DG hp004gh
rename DH hp004gk
rename DI hp004on
rename DJ hp004ok
rename DK he001n
rename DL he001h
rename DM he002n
rename DN he002h
rename DO ff001q
rename Cost ff001c
rename DQ ff002q
rename DR ff002c
rename DS ff003q
rename DT ff003c
rename DU ff004q
rename DV ff004c
rename DW ff005q
rename DX ff005c
rename DY ff006q
rename DZ ff006c
rename EA ff007q
rename EB ff007c
rename Totalcost ff000c
rename Kwhr fe001k
rename EF fe002k
rename EG fe002c

drop EE 
drop Began End

rename PostOfficeAddress a004
rename POAddressifDifferent ag008
rename Nameandaddressofconcern am002
rename change_name as001
rename ChangedLocation as002
rename change_nature_bus as004
rename total_wages_1934 e005sp

capture drop year
gen year = 1935
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace force

save "$rootDir_dataLegacy/1935/bone_black_1935_clean", replace
