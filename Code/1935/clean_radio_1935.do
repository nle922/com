*NLZ: Program to create and clean the 1935 radio data, 11/29/10. 
//Globals referenced: rootDir_sheets, rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import excel "$rootDir_sheets/1935/1319/1935_general_form_12082013.xls", sheet("Sheet1") cellrange(A4:FB146) firstrow clear
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename utilization variables
capture rename Numdaysplantinoperation d001
capture rename Hoursperweek d008
capture rename Shiftsperday d004
capture rename Doesnumberofhours d006

//rename costs of inputs variables
capture rename Costofmaterials f001
capture rename Costoffuel f002
capture rename Costofpurchasedelectricityen f003
capture rename BC f009
capture rename Costofcontractwork f004

//rename identifying information variables
rename Changedname change_name
rename NatureofBusiness change_nature_bus
rename Changedownership change_ownership
rename IsthisIncorporated isthisincorporated
rename Subsidiaryofanother subsidiaryofanother

//rename employment variables
rename Totalamountpaidtowageearner total_wages
rename Correspondingtotalofwagesin total_wages_1934
rename a propietors
rename b officers
rename c supervisory_employees
rename d technical_employees
rename e clerical_employees_mar
rename AB clerical_employees_jun
rename AC clerical_employees_sep
rename AD clerical_employees_dec
rename AE total_salaried_employees
rename AF officers_salary
rename AG e003tas
rename AH technical_employees_salary
rename AI clerical_employees_salary
rename Total total_salaried_employees_salary

//rename output variables
//going to have to go back and recode the products here to make consistent with product groupings for other years
rename Quantity quantity_1
rename Value value_1
rename Specify specify_1
rename BH quantity_2
rename BI value_2
rename BJ specify_2
rename BK quantity_3
rename BL value_3
rename BM specify_3
rename BN quantity_4
rename BO value_4
rename BP specify_4
rename BQ quantity_5
rename BR value_5
rename BS specify_5
rename BT quantity_6
rename BU value_6
rename BV specify_6
rename BW quantity_7
rename BX value_7
rename BY specify_7
rename BZ quantity_8
rename CA value_8
rename CB specify_8
rename CC quantity_9
rename CD value_9
rename CE specify_9
rename CF quantity_10
rename CG value_10
rename CH specify_10
rename CI quantity_11
rename CJ value_11
rename CK specify_11
rename CL value_12
rename CM specify_12
rename CN value_13
rename CO specify_13

//rename monthly employment variables
capture rename Jan ewemt01
capture rename Feb ewemt02
capture rename March ewemt03
capture rename April ewemt04
capture rename May ewemt05
capture rename June ewemt06
capture rename July ewemt07
capture rename August ewemt08
capture rename Sept ewemt09
capture rename Oct ewemt10
capture rename Nov ewemt11
capture rename Dec ewemt12
capture rename AW ewemt

//rename engine and turbine variables (not all collected for some reason
rename Number hp001gn
rename PrimemoversHP hp002gh
rename Generators hp001gk
rename CW hp002gn
rename CX gp002gh
rename CY hp002gk
rename CZ hp005gn
rename DA hp005gh
rename DB hp005gk
rename DC hp006gn
rename DD hp006gh
rename DE hp006gk
rename DF hp004gn
rename DG hp004gh
rename DH hp004gk

drop DI
drop DJ

rename ElecMotorspurchasednum he001n
rename Totalratedhorsepower he001h
rename ElecMotorsgenerated he002n
rename DN he002h

//DO-DZ are fuels used. Need to be cleaned up since have specify variable.
//eventually these shoudl be cleaned up more
drop DO-DZ
drop MorethanthreeMaterial - Classification

rename MorethanthreeProduct morethanthree
rename TotalValue total_output_value
rename Correspondingamountfor1934 total_output_value1934

rename PostOfficeAddress a004
rename Nameandaddressofconcern am002
rename Ifsogive as005
rename total_wages_1934 e005sp

capture drop year
gen year =  1935
//rename "common" set of variables for labeling 
do "$rootDir_code/General/basic_rename"
//squeeze out spaces in identifiers
replace Identifier = strupper(subinstr(Identifier," ", "", .))
//tostring all variables for consistent appending
tostring *, replace force 

save "$rootDir_dataLegacy/1935/radio_1935_clean", replace
