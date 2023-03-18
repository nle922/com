*NLZ: Program to create and clean the 1931 cement data
*Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import delimited using "$rootDir_sheets/1931/1002/Cement_1931_Output.csv", clear stringcols(_all) case(lower) delimiters(",")

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename identyfing information variables
capture rename changedlocation change_location
capture rename changedname change_name
capture rename changedownership change_ownership

//rename utilization variables
capture rename doesthisnumberofhoursreferto days_per_week
capture rename normalnumberofhoursperweekforthe hoursperweek

//rename cost of inputs variables
capture rename wagespaid total_wages
capture rename costofallmaterials f009
capture rename costofcontractwork f004
capture rename v39 f008

//rename output variables
capture rename quantity gp_q_pc
capture rename value gp_v_pc
capture rename v42 gp_q_puc
capture rename v43 gp_v_puc
capture rename v44 gp_q_nc
capture rename v45 gp_v_nc
capture rename v46 gp_q_mc
capture rename v47 gp_v_mc
capture rename specify other_product_specify_1
capture rename v49 other_product_value_1
capture rename v50 other_product_specify_2
capture rename v51 other_product_value_2
capture rename totalvalue total_output_value

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
gen year =  1931
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace force

save "$rootDir_dataLegacy/1931/cement_1931_clean", replace

