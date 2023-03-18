*Program to create and clean the 1931 sugar data
//Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import delimited "$rootDir_sheets/1931/131/Sugar_1931_Output.csv", clear case(lower) delimiters(",") stringcols(_all)

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename identifying information variables
rename changedlocation change_location
rename changedname change_name
rename changedownership change_ownership

//rename cost of inputs variables
rename wagespaid total_wages
rename costofallmaterials f009
rename costofcontractwork f004
rename v38 f008

//rename output variables
rename value value_refined_sugar_hard
rename quantity quantity_refined_sugar_hard
rename v41 quantity_refined_sugar_soft
rename v42 value_refined_sugar_soft
rename v43 quantity_refiner_sirup
rename v44 value_refiner_sirup
rename v45 quantity_sugar_sirup
rename v46 value_sugar_sirup
rename v47 quantity_blackstrap
rename v48 value_blackstrap
rename v50 quantity_other_product_1
rename v51 value_other_product_1
rename v52 units_other_product_1
rename specify specify_other_product_1
rename totalvalue total_output_value

//rename input variables
rename v55 quantity_raw_sugar_US
rename v56 value_raw_sugar_US
rename v57 quantity_raw_sugar_hawaii
rename v58 value_raw_sugar_hawaii
rename v59 quantity_raw_sugar_PR
rename v60 value_raw_sugar_PR
rename v61 quantity_raw_sugar_VI_1
rename v62 value_raw_sugar_VI_1
rename v63 quantity_raw_sugar_cuba
rename v64 value_raw_sugar_cuba
rename v65 quantity_raw_sugar_phil
rename v66 value_raw_sugar_phil
rename v67 quantity_other_raw_sugar
rename v68 value_other_raw_sugar
rename v69 specify_other_raw_sugar

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

rename postofficeaddress a004
rename nameandaddressofconcern am002
rename change_location as002
rename change_name as001
rename change_ownership as003
  
capture drop year
gen year = 1931
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace force

save "$rootDir_dataLegacy/1931/sugar_1931_clean", replace
