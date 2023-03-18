*NLZ: Program to create and clean the 1929 cement data
//Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import delimited using "$rootDir_sheets/1929/1002/Cement_1929_Output.csv", clear case(lower) delimiters(",") stringcols(_all)

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename utilization variables
capture rename numdaysplantinoperation d001
capture rename hoursperday d002
capture rename hoursperweek d003
capture rename numberofshiftsperday d004
capture rename normalnumberofhoursperweekforthe d005
capture rename doesthisnumberofhoursreferto d006
capture rename normalnumberofhoursperweekfo hours_per_wage_earner
capture rename hoursperday hours_operation_day
capture rename hoursperweek hours_operation_week

//rename identifying information variables
capture rename industrialcode industrycode
capture rename changedlocation change_location
capture rename changedname change_name
capture rename changedownership change_ownership
capture rename isthisanewplantwhichstartedopera newplant
capture rename ifsogive name_parent_firm
capture rename branchofsubidiary branchofsubsidiary
capture rename branchofsubsidiary subsidiaryofanother


//rename employment variables
rename male e001m
rename female e001f
capture rename v28 e002m
capture rename v29 e002f 
capture rename v30 e003m
capture rename v31 e003f
capture rename asalariestoprincipalofficiers salaries_officers
capture rename bsalariestomanagers salaries_managers
capture rename cpaidtowageearners total_wages
capture rename v48 total_wages_salaries

rename usedorpurchased f00up

//rename cost of inputs variables
capture rename costofallmaterials f001
capture rename costoffuel f002
capture rename costofpurchasedcurrent f003
capture rename totalvalue f009


//rename output variables
capture rename kind kind_cement_1
capture rename quantity quantity_cement_1
capture rename v56 value_cement_1
capture rename v57 kind_cement_2
capture rename v58 quantity_cement_2
capture rename v59 value_cement_2
capture rename v60 other_product1_specify
capture rename v61 other_product1_quantity
capture rename v62 other_product1_value
capture rename v63 other_product2_specify
capture rename v64 other_product2_quantity
capture rename v65 other_product2_value

//rename engine and turbine variables
capture rename totalvalueofproduct total_output_value
capture rename valueofproductsmanufactured total_value_manufactured
capture rename totalvalueadd total_value_added
capture rename steamenginenumber steamengine_number
capture rename steamenginehorsepower steamengine_horsepower 
capture rename steamturbinesnumber steamturbines_number
capture rename steamturbineshorsepower steamturbines_horsepower
capture rename internalcombustionenginesnumber internalcombustion_number 
capture rename internalcombustionengineshorsepo internalcombustion_horsepower 
capture rename waterwheelsnumber waterwheels_number 
capture rename waterwheelshorsepower waterwheels_horsepower 
capture rename electricmotorsnumber he001n 
capture rename electricmotorsdrivenbypurchasedc he001h
capture rename electricmotorsdrivenbycurrentgen he002n 

//rename fuel variables
capture rename v80 he002h
capture rename v81 ff001q
capture rename cost ff001v
capture rename v83 ff002q
capture rename v84 ff002v
capture rename v85 ff003q
capture rename v86 ff003v
capture rename v87 ff004q
capture rename v88 ff004v
capture rename v89 ff005q
capture rename v90 ff005v
capture rename v91 ff006q
capture rename v92 ff006v
capture rename v93 ff007q
capture rename v94 ff007v
capture rename totalcost ff000c
capture rename kilowatt fe001k
capture rename v97 fe002k
capture rename v98 fe002c
capture rename v99 consumption_cement_rock

//rename distribution variables
capture rename a sales_wholesale_not_owned
capture rename b sales_wholesale_owned
capture rename d sales_retail_owned
capture rename c sales_retail_not_owned
capture rename f sales_home
capture rename e sales_industrial
capture rename g total_sales

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



capture drop year
gen year = 1929
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistency of appending
tostring *, replace force

save "$rootDir_dataLegacy/1929/cement_1929_clean", replace
