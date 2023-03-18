*NLZ: Program to create and clean the 1929 sugar data
*Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import delimited using "$rootDir_sheets/1929/131/Sugar_1929_Output.csv", case(lower) stringcols(_all) clear delimiters(",")

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename utilization variables
capture rename numdaysplantinoperation d001
capture rename hoursperday d002
capture rename hoursperweek d003
capture rename numberofshiftsperday d004
capture rename normalnumberofhoursperweekforthe d005
capture rename doesthisnumberofhoursreferto d006

//rename identifying variables
rename changedlocation change_location
rename changedname change_name
rename changedownership change_ownership
rename isthisanewplantwhichstartedopera newplant
rename ifsogive name_parent_firm
rename branchofsubidiary subsidiaryofanother

//rename employment and salary variables
rename male e001m
rename female e001f
rename v28 e002m
rename v29 e002f 
rename v30 e003m
rename v31 e003f
rename asalariestoprincipalofficiers salaries_officers
rename bsalariestomanagers salaries_managers
rename cpaidtowageearners total_wages
rename v48 total_wages_salaries

//rename cost of inputs variables
rename costofallmaterials f001
rename costoffuel f002
rename costofpurchasedcurrent f003

//rename output variables
rename totalvalue f009
rename value value_refined_sugar_hard
rename quantity quantity_refined_sugar_hard
rename units units_refined_sugar_hard
rename v57 quantity_refined_sugar_soft
rename v58 value_refined_sugar_soft
rename v59 units_refined_sugar_soft
rename v60 quantity_refiner_sirup
rename v61 value_refiner_sirup
rename v62 units_refiner_sirup
rename v63 quantity_blackstrap
rename v64 value_blackstrap
rename v65 units_blackstrap
rename v66 quantity_other_product_1
rename v67 value_other_product_1
rename v68 units_other_product_1
rename v69 specify_other_product_1
rename v70 quantity_other_product_2
rename v71 value_other_product_2
rename v72 units_other_product_2
rename v73 specify_other_product_2
rename v74 total_output_value
rename total_output_value g000v
rename totalvalueofproductsmanufactured g001v

//rename engine and turbine variables
rename steamenginenumber hp001n
rename steamenginehorsepower hp001h 
rename steamturbinesnumber hp002n
rename steamturbineshorsepower hp002h
rename internalcombustionenginesnumber hp003n 
rename internalcombustionengineshorsepo hp003h 
rename waterwheelsnumber hp004n 
rename waterwheelshorsepower hp004h 





//rename input variables  
rename v92 quantity_raw_sugar_US
rename v93 value_raw_sugar_US
rename v94 quantity_raw_sugar_hawaii
rename v95 value_raw_sugar_hawaii
rename v96 quantity_raw_sugar_PR
rename v97 value_raw_sugar_PR
rename v98 quantity_raw_sugar_VI_1
rename v99 value_raw_sugar_VI_1
rename v100 specify_raw_sugar_VI_2
rename v101 quantity_raw_sugar_VI_2
rename v102 value_raw_sugar_VI_2
rename v103 quantity_raw_sugar_cuba
rename v104 value_raw_sugar_cuba
rename v105 quantity_raw_sugar_phil
rename v106 value_raw_sugar_phil
rename v107 quantity_other_raw_sugar
rename v108 value_other_raw_sugar
rename v109 specify_other_raw_sugar

//rename distribution variables
rename asalestowholesaleestablishmentsn sales_wholesale_not_owned
rename bsalestowholesaleestablishmentso sales_wholesale_owned
rename dsalestoretailestablishmentsowne sales_retail_owned
rename csalestoretailestablishmentsnoto sales_retail_not_owned
rename fsalesdirecttohomeconsumer sales_home
rename esalesdirecttoindividualsandothe sales_industrial
rename gtotalsales total_sales

//rename monthly wage earners variables
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


capture drop year
gen year = 1929
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistency with appending
tostring *, replace force

save "$rootDir_dataLegacy/1929/sugar_1929_clean", replace
