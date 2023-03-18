*NLZ: Program to create and clean the 1931 malt data
//Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

*Preliminaries
capture log close
set more off 

import excel "$rootDir_sheets/1931/122/1931_malt__form.xls", sheet("Sheet1") cellrange(A4:AU31) firstrow allstring clear

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

//rename output variables
rename Quantity malt_barley_quantity
rename Value malt_barley_value
rename AM malt_rye_quantity
rename AN malt_rye_value
rename TotalValue total_output_value
rename Specify gp_n_other1
rename AP gp_q_other1
rename AQ gp_v_other1
rename AR gp_n_other2
rename AS gp_q_other2
rename AT gp_v_other2

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

rename PostOfficeAddress a004
rename Nameandaddressofconcern am002
rename change_name as001

capture drop year
capture gen year =  1931
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace

save "$rootDir_dataLegacy/1931/malt_1931_clean", replace
