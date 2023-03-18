//cleans data for industry 121 in 1935
//Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

//Preliminaries:
set more off
capture log close

import delimited using "$rootDir_sheets/1935/121/1935_clean.csv", delimiter(",") clear stringcols(_all) case(lower)
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

rename macaroniquantity gp_q_macaroni
rename macaronivalue gp_v_macaroni
rename eggnoodlesquantity gp_q_egg_noodles
rename eggnoodlesvalue gp_v_egg_noodles
rename noodlesquantity gp_q_plain_noodles
rename noodlesvalue gp_v_plain_noodles
rename raviolaquantity gp_q_raviola
rename raviolavalue gp_v_raviola


//rename costs of inputs variables
capture rename costofmaterials f001
capture rename costoffuel f002
capture rename costofpurchasedelectricityenergy f003
capture rename v54 f009
capture rename costofcontractwork f004

//rename utilization variables
capture rename numdaysplantinoperation d001
capture rename hoursperweek d008
capture rename shiftsperday d004
capture rename doesnumberofhours d006

//rename employment variables
capture rename a proprietors
capture rename b officers
capture rename c e003ta
capture rename d technical_employees
capture rename e clerks_mar
capture rename v28 clerks_jun
capture rename v29 clerks_sept
capture rename v30 clerks_dec
capture rename v32 officers_salary
capture rename v33 e003tas
capture rename v34 technical_employees_salary
capture rename v35 salariesforclerks
capture rename v36 total_salaries
capture rename v54 total_cost

//rename monthly wage earners variables
capture rename jan   ewemt01
capture rename feb   ewemt02
capture rename march  ewemt03
capture rename april  ewemt04
capture rename may  ewemt05
capture rename june  ewemt06
capture rename july  ewemt07
capture rename august  ewemt08
capture rename nov ewemt11
capture rename oct ewemt10
capture rename dec ewemt12
capture rename sept ewemt09

rename elecmotorspurchasednum he001n
rename totalratedhorsepower he001h
rename elecmotorsgenerated he002n
rename v74 he002h

rename postofficeaddress a004
rename poboxifdifferent ag008
rename nameandaddressofconcern am002
rename ifsogive as005
rename clerks_sept e003tc09

missings dropvars, force
capture drop year
gen year =  1935
//rename "common" set of variables for labeling 
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace force
//fix mistakes in estabIDs
do "$rootDir_code/1935/fix_estabids_macaroni_1935"

save "$rootDir_dataLegacy/1935/macaroni_1935_clean", replace 
