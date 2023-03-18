*NLZ: Program to create and clean the 1931 cement data
//Globals referenced: rootDir_sheets, rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import delimited using "$rootDir_sheets/1933/131/Sugar_1933_Output.csv", clear delimiter(",") stringcols(_all) case(lower)

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename numdaysplantinoperation d001
//rename numberofhoursplantwasoperated d008

//rename employment variables
rename managers e003ta
rename changedname change_name
rename changedownership change_ownership
rename salariesforclerks salaries_clerks
rename salariesforofficers salaries_officers
rename salariesformanagers e003tas
rename wagespaid total_wages
rename v42 total_wages_salaries
rename subsidiaryofanother subsidiary 

//rename costs of inputs variables
rename costofcontractwork f004  
rename costofallmaterials f009 
rename v45 f007

//rename output variables
rename value value_refined_sugar_hard
rename quantity quantity_refined_sugar_hard
rename v48 quantity_refined_sugar_soft
rename v49 value_refined_sugar_soft
rename v50 quantity_refiner_sirup
rename v51 value_refiner_sirup
rename v52 quantity_sugar_sirup
rename v53 value_sugar_sirup
rename v54 quantity_blackstrap
rename v55 value_blackstrap
rename v57 quantity_other_product_1
rename v58 value_other_product_1
rename v59 units_other_product_1
rename specify specify_other_product_1
rename v61 total_output_value

//rename monthly employment variables
capture rename jan ewemt01
capture rename feb ewemt02
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

//rename man hours variables
rename january manhours_jan
rename february manhours_feb
rename v64 manhours_mar
rename v65 manhours_apr
rename v66 manhours_may
rename v67 manhours_jun
rename v68 manhours_jul
rename v69 manhours_aug
rename v70 manhours_sep
rename v71 manhours_oct
rename v72 manhours_nov
rename v73 manhours_dec

rename postofficeaddress a004
rename nameandaddressofconcern am002
rename changedlocation as002
rename change_name as001
rename change_ownership as003


  

capture drop year
gen year =  1933
//rename "common" set of variables for labeling 
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace force

save "$rootDir_dataLegacy/1933/sugar_1933_clean", replace
