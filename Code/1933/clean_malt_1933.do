*NLZ: Program to create and clean the 1933 malt data, 11/29/10
//Globals referenced: rootDir_sheets, rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import excel "$rootDir_sheets/1933/122/1933_malt__form.xls", sheet("Sheet1") cellrange(A4:BB34) firstrow allstring clear

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename utilization variables
capture rename Numdaysplantinoperation d001
capture rename Numberofhoursplantwasopera d008

//rename identifying information variables
rename IsthisIncorporated isthisincorporated
rename Subsidiaryofanother subsidiaryofanother
rename Changedlocation change_location
rename Changedname change_name
rename Changedownership change_ownership

//rename employment variables
rename Officers e002t
rename Managers e003ta
rename Clerks e003tc
rename Salariesforofficers e002s
rename Salariesformanagers e003tas
rename Salariesforclerks e003tcs

//rename costs of inputs variables
rename WagesPaid total_wages
rename Costofallmaterials f009

//rename output variables
rename Quantity malt_barley_quantity
rename Value malt_barley_value
rename AR malt_rye_quantity
rename AS malt_rye_value
rename TotalValue total_output_value
rename Receiptsforcontractwork f004  
rename Specify gp_s_other1
rename AU gp_q_other1
rename AV gp_v_other1
rename AW gp_s_other2
rename AX gp_q_other2
rename AY gp_v_other2

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
capture rename Wageearners ewemt

rename PostOfficeAddress a004
rename Nameandaddressofconcern am002
rename change_location as002
rename change_name as001
rename change_ownership as003

  

capture drop year
gen year =  1933
//rename "common" set of variables for labeling 
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistency in appending
tostring *, replace force

save "$rootDir_dataLegacy/1933/malt_1933_clean", replace
