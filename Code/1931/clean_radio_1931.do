*NLZ: Program to create and clean the 1931 radio data
//Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import excel "$rootDir_sheets/1931/1319/1931_radio_form_120813.xlsx", sheet("Sheet1") cellrange(A4:ES207) firstrow clear

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename identifying information variables
rename Changedlocation change_location
rename Changedname change_name
rename Changedownership change_ownership
rename IsthisIncorporated isthisincorporated
rename Subsidiaryofanother subsidiaryofanother

//rename cost of inputs variables
rename WagesPaid total_wages
rename Costofallmaterials f009
rename Costofcontractwork f004
rename AN f008

//rename output variables
rename Quantity socket_power_11_quantity
rename Value socket_power_11_value
rename AQ socket_power_11_18_quantity
rename AR socket_power_11_18_value
rename AS socket_power_18_30_quantity
rename AT socket_power_18_30_value
rename AU socket_power_30_45_quantity
rename AV socket_power_30_45_value
rename AW socket_power_45_65_quantity
rename AX socket_power_45_65_value
rename AY socket_power_65_quantity
rename AZ socket_power_65_value
rename BA battery_power_27_quantity
rename BB battery_power_27_value
rename BC battery_power_27_40_quantity
rename BD battery_power_27_40_value
rename BE battery_power_40_quantity
rename BF battery_power_40_value
rename BG auto_police_quantity
rename BH auto_police_value
rename BI auto_power_22_quantity
rename BJ auto_power_22_value
rename BK auto_power_22_40_quantity
rename BL auto_power_22_40_value
rename BM auto_power_40_quantity
rename BN auto_power_40_value
rename BO auto_battery_18_quantity
rename BP auto_battery_18_value
rename BQ auto_battery_18_34_quantity
rename BR auto_battery_18_34_value
rename BS auto_battery_34_quantity
rename BT auto_battery_34_value
rename BU aircraft_quantity
rename BV aircraft_value
rename BW television_under65_quantity
rename BX television_under65_value
rename BY television_over65_quantity
rename BZ television_over65_value
rename CA receivingOther_sets_quantity
rename CB receivingOther_sets_value
rename CC miscellaneous_1_quantity
rename CD miscellaneous_1_value
rename CE miscellaneous_2_quantity
rename CF miscellaneous_2_value
rename CG miscellaneous_3_quantity
rename CH miscellaneous_3_value

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
capture drop Products-ES
rename TotalValue total_output_value

rename PostOfficeAddress a004
rename Nameandaddressofconcern am002
rename IfSogiveformername as005

capture drop year
gen year = 1931
//drop any obs with missing identifier
drop if Identifier == ""
//get rid of any spaces in identifier
replace Identifier = strupper(subinstr(Identifier," ", "", .))
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace

save "$rootDir_dataLegacy/1931/radio_1931_clean", replace
