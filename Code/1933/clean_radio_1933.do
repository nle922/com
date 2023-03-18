*NLZ: Program to create and clean the 1933 radio data, 11/29/10
//Globals referenced: rootDir_sheets, rootDir_dataLegacy

*Preliminaries
capture log close
set more off

//insheet file that you want to clean here
import excel "$rootDir_sheets/1933/1319/1933_identifiersClean.xlsx", sheet("Sheet1") cellrange(A4:CQ121) firstrow clear

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename identifying information variables
capture rename IsthisIncorporated isthisincorporated
capture rename Subsidiaryofanother subsidiaryofanother
capture rename Changedlocation change_location
capture rename Changedname change_name
capture rename Changedownership change_ownership

//rename utilization variables
capture rename Numdaysplantinoperation d001
capture rename Numberofhoursplantwasopera d008

//rename employment variables
capture rename Salariesforofficers salariesforofficers
capture rename Salariesformanagers e003tas
capture rename Salariesforclerks salariesforclerks
capture rename WagesPaid total_wages

//rename costs of inputs variables
capture rename AR total_wages_salaries
capture rename Costofallmaterials f009
capture rename AU f007

//rename output variables
capture rename Quantity socket_power_11_quantity
capture rename Value socket_power_11_value
capture rename AX socket_power_11_30_quantity
capture rename AY socket_power_11_30_value
capture rename AZ socket_power_30_65_quantity
capture rename BA socket_power_30_65_value
capture rename BB socket_power_65_quantity
capture rename BC socket_power_65_value
capture rename BD battery_power_27_quantity
capture rename BE battery_power_27_value
capture rename BF battery_power_27_40_quantity
capture rename BG battery_power_27_40_value
capture rename BH battery_power_40_quantity
capture rename BI battery_power_40_value
capture rename BJ auto_police_quantity
capture rename BK auto_police_value
capture rename BL auto_power_22_quantity
capture rename BM auto_power_22_value
capture rename BN auto_power_22_40_quantity
capture rename BO auto_power_22_40_value
capture rename BP auto_power_40_quantity
capture rename BQ auto_power_40_value
capture rename BR auto_battery_18_quantity
capture rename BS auto_battery_18_value
capture rename BT auto_battery_18_34_quantity
capture rename BU auto_battery_18_34_value
capture rename BV auto_battery_34_quantity
capture rename BW auto_battery_34_value
capture rename BX aircraft_quantity
capture rename BY aircraft_value
capture rename BZ television_under65_quantity
capture rename CA television_under65_value
capture rename CB television_over65_quantity
capture rename CC television_over65_value
capture rename CD receivingOther_sets_quantity
capture rename CE receivingOther_sets_value
capture rename CF miscellaneous_1_quantity
capture rename CG miscellaneous_1_value
capture rename CH miscellaneous_2_quantity
capture rename CI miscellaneous_2_value
capture rename CJ miscellaneous_3_quantity
capture rename CK miscellaneous_3_value
capture rename CL miscellaneous_4_quantity
capture rename CM miscellaneous_4_value
capture rename CO totalvalue
capture rename totalvalue total_output_value
capture rename Costofcontractwork f004  

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
capture rename October ewemt10
capture rename November ewemt11
capture rename December ewemt12
capture rename Total ewemt

rename PostOfficeAddress a004
rename Nameandaddressofconcern am002
rename IfSogiveformer as005

capture drop year
gen year =  1933
//rename "common" set of variables for labeling 
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace
//sqeeuze out any spaces in identifiers
replace Identifier = strupper(subinstr(Identifier," ", "", .))
//fix some mistakes in estabids
do "$rootDir_code/1933/fix_estabids_radio_1933.do"

save "$rootDir_dataLegacy/1933/radio_1933_clean", replace
