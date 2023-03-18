*NLZ: Program to create and clean the 1935 sugar data, 11/29/10
*Globals referenced: rootDir_sheets, rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import delimited using "$rootDir_sheets/1935/131/Sugar_1935_Output.csv", clear delimiter(",") stringcols(_all) case(lower)
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename utilization variables
capture rename numdaysplantinoperation d001
capture rename hoursperweek d008
capture rename shiftsperday d004
capture rename doesnumberofhours d006

//rename identyfing information variables
capture rename changedname change_name
capture rename natureofbusiness change_nature_bus
capture rename changedownership change_ownership

//rename costs of inputs variables
capture rename costofmaterials f001
capture rename costoffuel f002
capture rename costofpurchasedelectricityenergy f003
capture rename v67 f009
capture rename costofcontractwork f004
capture rename totalamountpaidtowageearners total_wages
capture rename correspondingtotalofwagesin1934 total_wages_1934
capture rename costofmaterials cost_materials
capture rename costoffuel cost_fuel
capture rename costofpurchasedelectricityenergy cost_purchased_current

//rename employment variables
capture rename manhours_v51 manhours_jan
capture rename manhours_v52 manhours_feb
capture rename manhours_v53 manhours_mar
capture rename manhours_v54 manhours_apr
capture rename manhours_v55 manhours_may
capture rename manhours_v56 manhours_jun
capture rename manhours_v57 manhours_jul
capture rename manhours_v59 manhours_sep
capture rename manhours_v60 manhours_oct
capture rename manhours_v61 manhours_nov
capture rename manhours_v62 manhours_dec
capture rename manhours_v63 manhours_total
capture rename a propietors
capture rename b officers
capture rename c supervisory_employees
capture rename d technical_employees
capture rename e clerical_employees_mar
capture rename v27 clerical_employees_jun
capture rename v28 clerical_employees_sep
capture rename v29 clerical_employees_dec
capture rename v30 total_salaried_employees
capture rename v31 officers_salary
capture rename v32 e003tas
capture rename v33 technical_employees_salary
capture rename v34 clerical_employees_salary
capture rename v35 total_salaried_employees_salary

//rename output variables
capture rename costofcontractwork cost_contract_work
capture rename v67 cost_materials_energy
capture rename value value_refined_sugar_hard
capture rename quantity quantity_refined_sugar_hard
capture rename v71 quantity_refined_sugar_soft
capture rename v72 value_refined_sugar_soft
capture rename v73 quantity_refiner_sirup_edible
capture rename v74 value_refiner_sirup_edible
capture rename v75 quantity_refiner_sirup_invert
capture rename v76 value_refiner_sirup_invert
capture rename v77 quantity_refiner_sirup_other
capture rename v78 value_refiner_sirup_other
capture rename v79 quantity_blackstrap
capture rename v80 value_blackstrap
capture rename v81 quantity_other_product_1
capture rename v82 value_other_product_1
capture rename units units_other_product_1
capture rename specify specify_other_product_1
capture rename v85 quantity_other_product_2
capture rename v86 value_other_product_2
capture rename v87 units_other_product_2
capture rename v88 specify_other_product_2
capture rename v89 quantity_other_product_3
capture rename v90 value_other_product_3
capture rename v91 units_other_product_3
capture rename v92 specify_other_product_3
capture rename totalvalue total_output_value
capture rename amountofprocessingtaxes value_processing_taxes
capture rename correspondingamountfor1934 total_output_value_1934

//rename input variables
capture rename v96 quantity_raw_sugar_US
capture rename v97 value_raw_sugar_US
capture rename v98 quantity_raw_sugar_hawaii
capture rename v99 value_raw_sugar_hawaii
capture rename v100 quantity_raw_sugar_PR
capture rename v101 value_raw_sugar_PR
capture rename v102 quantity_raw_sugar_VI_1
capture rename v103 value_raw_sugar_VI_1
capture rename v104 quantity_raw_sugar_cuba
capture rename v105 value_raw_sugar_cuba
capture rename v106 quantity_raw_sugar_phil
capture rename v107 value_raw_sugar_phil
capture rename v108 quantity_other_raw_sugar_1
capture rename v109 value_other_raw_sugar_1
capture rename v110 specify_other_raw_sugar_1
capture rename v111 quantity_other_raw_sugar_2
capture rename v112 value_other_raw_sugar_2
capture rename v113 specify_other_raw_sugar_2
capture rename v114 quantity_other_raw_sugar_3
capture rename v115 value_other_raw_sugar_3
capture rename v116 specify_other_raw_sugar_3


//rename engines and turbines variables
 rename number hp001gn
 rename primemovershp hp001gh
 rename generators hp001gk
 rename v120 hp001on
 rename horsepower hp001oh
 
 rename v122 hp002gn
 rename v123 hp002gh
 rename v124 hp002gk
 rename v125 hp002on
 rename v126 hp002oh
 
 rename v127 hp005gn
 rename v128 hp005gh
 rename v129 hp005gk
 rename v130 hp005on
 rename v131 hp005oh
 
 rename v132 hp006gn
 rename v133 hp006gh
 rename v134 hp006gk
 rename v135 hp006on
 rename v136 hp006oh
 
 rename v137 hp004gn
 rename v138 hp004gh
 rename v139 hp004gk
 rename v140 hp004on
 rename v141 hp004oh
 
 rename elecmotorspurchasednum he001n
 rename totalratedhorsepower he001h
 rename elecmotorsgenerated he002n
 rename v149 he002h

//rename fuels variables
capture rename v150 coal_anthracite_quantity
capture rename cost coal_anthracite_cost
capture rename v152 coal_bituminous_quantity
capture rename v153 coal_bituminous_cost
capture rename v154 coke_quantity
capture rename v155 coke_cost
capture rename v156 fuel_oils_quantity
capture rename v157 fuel_oils_cost
capture rename v158 natural_gas_quantity
capture rename v159 natural_gas_cost
capture rename v160 gas_blast_quantity
capture rename v161 gas_blast_cost
capture rename v162 manufactured_gas_quantity
capture rename v163 manufactured_gas_cost

//rename electricity variables
capture rename totalcostoffuels total_cost_fuel_2
capture rename used electricity_generated_plant_used
capture rename sold electricity_generated_plant_sold
capture rename v167 electricity_purchased
capture rename v168 cost_electricity_purchased
capture rename v142 prime_movers_idled
capture rename v143 generators_idled

//rename monthly employment variab,es
capture rename jan ewemt01
capture rename feb ewemt02
capture rename march ewemt03
capture rename april ewemt04
capture rename may ewemt05
capture rename june ewemt06
capture rename july ewemt07
capture rename august ewemt08
capture rename sept ewemt09
capture rename oct ewemt10
capture rename nov ewemt11
capture rename dec ewemt12
capture rename total ewemt

//rename man hours variables
capture rename v51 emh01
capture rename v52 emh02
capture rename v53 emh03
capture rename v54 emh04
capture rename v55 emh05
capture rename v56 emh06
capture rename v57 emh07
capture rename v58 emh08
capture rename v59 emh09
capture rename v60 emh10
capture rename v61 emh11
capture rename v62 emh12
capture rename v63 emht

rename nameandaddressofconcern am002
rename total_wages_1934 e005sp
rename postofficeaddress a004

capture drop year
gen year =  1935
//rename "common" set of variables for labeling 
do "$rootDir_code/General/basic_rename"
tostring *, replace force

save "$rootDir_dataLegacy/1935/sugar_1935_clean", replace
