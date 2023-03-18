*NLZ: Program to create and clean the 1935 malt data, 11/29/10. 
//Globals referenced: rootDir_sheets, rootDir_dataLegacy 

*Preliminaries
capture log close
set more off

import excel "$rootDir_sheets/1935/122/1935_malt__form.xls", sheet("Sheet1") cellrange(A4:DU50) firstrow allstring clear
    //Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename costs of inputs variables
capture rename Costofmaterials f001
capture rename Costoffuel f002
capture rename Costofpurchasedelectricityen f003
capture rename Total f009
capture rename Costofcontractwork f004
rename Totalamountpaidtowageearner total_wages
rename Correspondingtotalofwagesin e005sp

//rename utilization variables
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

//rename output variables
rename Quantity malt_barley_quantity
rename Value malt_barley_value
rename BN malt_rye_quantity
rename BO malt_rye_value
rename BP malt_wheat_quantity
rename BQ malt_wheat_value
rename Totalvalue total_output_value 
rename Correspondingtotalvaluefor1 total_output_value1934
capture rename BR gp_q_other1
capture rename BS gp_v_other1
capture rename Specify gp_s_other1

//rename employment variables
capture rename a proprietors
capture rename b officers
capture rename c supervisory_employees
capture rename d technical_employees
rename e e003tc03
rename Z e003tc06
rename AA e003tc09
rename AB e003tc12
capture rename AC officers_salary
capture rename AD e003tas
capture rename AE technical_employees_salary
capture rename AF salariesforclerks
capture rename AT e005sp

//rename monthly employment variables
foreach i in "Jan" "Feb" "March" "April" "May" "June" "July" "August" "Sept" "Oct" "Nov" "Dec"{
	capture rename `i' wage_earners_`i'
}

//rename man hours variables
capture rename AU emh01
capture rename AV emh02
capture rename AW emh03
capture rename AX emh04
capture rename AY emh05
capture rename AZ emh06
capture rename BA emh07
capture rename Aug emh08
capture rename BC emh09
capture rename BD emh10
capture rename BE emh11
capture rename BF emh12

rename Number hp001gn
rename MoversHorsepower hp001gh
rename GeneratorsHorsepower hp001gk
rename CF hp001on
rename Horsepower hp001ok

rename CH hp002gn
rename CI hp002gh
rename CJ hp002gk
rename CK hp002on
rename CL hp002oh

rename CM hp005gn
rename CN hp005gh
rename CO hp005gk
rename CP hp005on
rename CQ hp005oh

rename CR hp006gn
rename CS hp006gh
rename CT hp006gk
rename CU hp006on
rename CV hp006oh

rename CW hp004gn
rename CX hp004gh
rename CY hp004gk
rename CZ hp004on
rename DA hp004oh

rename DB he001n
rename DC he001h
rename DD he002n
rename DE he002h

//rename fuel variables
capture rename DF coal_anthracite_quantity
capture rename Cost coal_anthracite_value
capture rename DH coal_bituminous_quantity
capture rename DI coal_bituminous_value
capture rename DJ coke_quantity
capture rename DK coke_value
capture rename DL fuel_oils_quantity
capture rename DM fuel_oils_value
capture rename DN natural_gas_quantity
capture rename DO natural_gas_value
capture rename DP blast_furnace_gas_quantity
capture rename DQ blast_furnace_gas_value
capture rename DR other_gas_quantity
capture rename DS other_gas_value

drop DU Totalcost

//rename input variables
capture rename Barley j_v_barley
capture rename Rye j_v_rye
capture rename Wheat j_v_wheat

rename PostOfficeAddress a004
rename Nameandaddressofconcern am002
rename Ifsogive as005

capture drop year
gen year =  1935
//rename "common" set of variables for labeling 
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistency in appending later
tostring *, replace force

save "$rootDir_dataLegacy/1935/malt_1935_clean", replace
