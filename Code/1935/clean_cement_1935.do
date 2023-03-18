*NLZ: Program to create and clean the 1935 cement data, 11/29/10
//Globals referenced: rootDir_sheets, rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import delimited using "$rootDir_sheets/1935/1002/Cement_1935_Output.csv", clear stringcols(_all) delimiter(",") case(lower)
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename utilization variables/
capture rename numdaysplantinoperation d001
capture rename hoursperweek d008
capture rename shiftsperday d004
capture rename doesnumberofhours d006

//rename identifying information variables
capture rename industrialcode industrycode
capture rename changedname change_name
capture rename natureofbusiness change_nature_bus
capture rename changedownership change_ownership

//rename costs of inputs variables
capture rename costofmaterials f001
capture rename costoffuel f002
capture rename costofpurchasedelectricityenergy f003
capture rename v67 f009
capture rename costofcontractwork f004
capture rename costofmaterials cost_materials
capture rename costoffuel cost_fuel
capture rename costofpurchasedelectricityenergy cost_purchased_current
capture rename v67 cost_materials_energy

//rename monthly employment variables
capture rename jan  ewemt01
capture rename feb  ewemt02
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
capture rename v48 ewemt

//rename manhours variables
capture rename v51 emh01
capture rename v52 emh02
capture rename v53 emh03
capture rename v54 emh04
capture rename v55 emh05
capture rename v56 emh06
capture rename v57 emh07
capture rename aug emh08
capture rename v59 emh09
capture rename v60 emh10
capture rename v61 emh11
capture rename v62 emh12
capture rename v63 emht

//rename eployment variables
capture rename a proprietors
capture rename b officers
capture rename c e003ta
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
capture rename total total_salaried_employees_salary
capture rename wage_earners_v48 wage_earners_total
capture rename totalamountpaidtowageearners total_wages
capture rename correspondingtotalofwagesin1934 total_wages_1934

//rename output variables
capture rename costofcontractwork cost_contract_work
capture rename quantity gp_q_pc
capture rename value gp_v_pc
capture rename v71 gp_q_puc
capture rename v72 gp_v_puc
capture rename v73 gp_q_nc
capture rename v74 gp_v_nc
capture rename v75 gp_q_mc
capture rename v76 gp_v_mc
capture rename v77 other_product_quantity_1
capture rename v78 other_product_value_1
capture rename specify other_product_specify_1
capture rename v80 other_product_quantity_2
capture rename v81 other_product_value_2
capture rename v82 other_product_specify_2
capture rename electricitysold electricity_sold
capture rename receiptcontractwork receipt_contract
capture rename totalvalue total_output_value
capture rename correspondingtotalvaluefor1934 total_output_value_1934

//rename engine and turbine variables
rename number hp001gn
rename movershorsepower hp001gh
rename generatorshorsepower hp001gk
rename v90 hp001on
rename horsepower hp001oh

rename v92 hp002gn
rename v93 hp002gh
rename v94 hp002gk
rename v95 hp002on
rename v96 hp002oh

rename v97 hp005gn
rename v98 hp005gh
rename v99 hp005gk
rename v100 hp005on
rename v101 hp005oh

rename v102 hp006gn
rename v103 hp006gh
rename v104 hp006gk
rename v105 hp006on
rename v106 hp006oh

rename v107 hp004gn
rename v108 hp004gh
rename v109 hp004gk
rename v110 hp004on
rename v111 hp004oh


//rename fuel and electricity variables
 rename v112 he001n
 rename v113 he001h
 rename v114 he002n
 rename v115 he002h

capture rename v116 coal_anthracite_quantity
capture rename cost coal_anthracite_cost
capture rename v118 coal_bituminous_quantity
capture rename v119 coal_bituminous_cost
capture rename v120 coke_quantity
capture rename v121 coke_cost
capture rename v122 fuel_oils_quantity
capture rename v123 fuel_oils_cost
capture rename v124 natural_gas_quantity
capture rename v125 natural_gas_cost
capture rename v126 gas_blast_quantity
capture rename v127 gas_blast_cost
capture rename v128 manufactured_gas_quantity
capture rename v129 manufactured_gas_cost
capture rename totalcost total_cost_fuel_2
capture rename kwhr electricity_generated_plant_used
capture rename v132 electricity_generated_plant_sold
capture rename v133 electricity_purchased
capture rename v134 cost_electricity_purchased

rename postofficeaddress a004
rename nameandaddressofconcern am002
rename ifsogive as005
rename total_wages_1934 e005sp

capture drop v137
capture drop year
gen year =  1935
//rename "common" set of variables for labeling 
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace force

save "$rootDir_dataLegacy/1935/cement_1935_clean", replace
