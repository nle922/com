*NLZ: Program to create and clean the 1931 cement data
//Globals referenced: rootDir_sheets, rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import delimited using "$rootDir_sheets/1933/1002/Cement_1933_Output.csv", clear delimiter(",") case(lower) stringcols(_all)

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename identifying information variables
capture rename changedlocation change_location
capture rename changedname change_name
capture rename changedownership change_ownership
capture rename subsidiaryofanother subsidiary 

//rename employment variables
capture rename salariesforclerks salaries_clerks
capture rename salariesforofficers salaries_officers
capture rename salariesformanagers e003tas
capture rename wagespaid total_wages
capture rename v42 total_wages_salaries
capture rename managers e003ta

//rename cost of inputs variables
capture rename costofcontractwork f004  
capture rename costofallmaterials f009 


//rename utilization variables
capture rename numdaysplantinoperation d001
capture rename numberofhoursplantwasoperated d008
 
 
//rename output variables
capture rename v45 f007
capture rename kind kind_cement_1
capture rename quantity quantity_cement_1
capture rename value value_cement_1
capture rename v49 kind_cement_2
capture rename v50 quantity_cement_2
capture rename v51 value_cement_2
capture rename v52 kind_cement_3
capture rename v53 quantity_cement_3
capture rename v54 value_cement_3
capture rename v55 kind_cement_4
capture rename v56 quantity_cement_4
capture rename v57 value_cement_4
capture rename v58 other_product1_specify
capture rename v59 other_product1_quantity
capture rename v60 other_product1_value
capture rename v61 total_output_value

//rename monthly employment variables
capture rename jan  ewemt01
capture rename feb  ewemt02
capture rename march ewemt03     
capture rename april ewemt04     
capture rename may ewemt05       
capture rename june ewemt06      
capture rename july ewemt07      
capture rename august ewemt08    
capture rename september ewemt09
capture rename october ewemt10
capture rename november ewemt11
capture rename december ewemt12
capture rename total ewemt

rename postofficeaddress a004
rename nameandaddressofconcern am002
rename ifsogive as005

capture drop year
gen year =  1933
//rename "common" set of variables for labeling 
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace force

save "$rootDir_dataLegacy/1933/cement_1933_clean", replace
