*NLZ: Program to create and clean the 1929 malt data 
*Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import excel "$rootDir_sheets/1929/122/1929_malt_form.xlsx", sheet("Sheet1") cellrange(A4:CK32) firstrow allstring clear

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename utilization variables    
rename Numdaysplantinoperation d001
rename Hoursperday d002
rename Hoursperweek d003
rename Numberofshiftsperday d004
rename Normalnumberofhoursperweek d005
rename Doesthisnumberofhoursrefer d006

//rename identifying information variables
rename Changedlocation change_location
rename Changedname change_name
rename Changedownership change_ownership
rename IsthisIncorporated isthisincorporated
rename Isthisanewplantwhichstarte newplant 
rename Branchofsubidiary branchofsubsidiary
rename branchofsubsidiary subsidiaryofanother

//rename employment variables
rename aSalariestoprincipalofficie salaries_officers
rename bSalariestomanagers salaries_managers
rename cPaidtowageearners total_wages

//rename monthly wage earners variables
rename Jan ewemt01
rename Feb ewemt02
rename March ewemt03
rename April ewemt04
rename May ewemt05 
rename June ewemt06 
rename July ewemt07 
rename August ewemt08
rename Sept ewemt09  
rename Oct ewemt10   
rename Nov ewemt11   
rename Dec ewemt12   

//rename cost of input variables
rename Costofallmaterials f001
rename Costoffuel f002
rename Costofpurchasedcurrent f003
rename TotalValue f009

//rename output variables
rename Quantity malt_barley_quantity
rename Value malt_barley_value
rename AZ malt_rye_quantity
rename BA malt_rye_value
rename Specify gp_n_other1
rename BC gp_q_other1
rename BD gp_v_other1
rename BE gp_n_other2
rename BF gp_q_other2
rename BG gp_v_other2
rename Totalvalueofproductsmanufact total_output_value
rename total_output_value g000v

//rename motors
rename SteamEngineNumber hp001n
rename SteamEngineHorsepower hp001h
rename Steamturbinesnumber hp002n
rename Steamturbineshorsepower hp002h
rename Internalcombustionenginesnumb hp003n
rename Internalcombustionengineshors hp003h
rename Waterwheelsnumber hp004n
rename Waterwheelshorsepower hp004h
rename Electricmotorsnumber he001n
rename Electricmotorsdrivenbypurcha he001h
rename Electricmotorsdrivenbycurren he002n


         


//rename fuel variables
rename BT coal_anthracite_quantity
rename Cost coal_anthracite_value
rename BV coal_bituminous_quantity
rename BW coal_bituminous_value
rename BX coke_quantity
rename BY coke_value
rename BZ fuel_oils_quantity
rename CA fuel_oils_value
rename CB gasoline_quantity
rename CC gasoline_value
rename CD natural_gas_quantity
rename CE natural_gas_value
rename CF manufactured_gas_quantity
rename CG manufactured_gas_value
rename Totalcost ff000c

//current
rename Kilowatthours fe001k
rename CJ fe002k
rename CK fe002c

capture drop year
gen year = 1929
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//for consistency to string all variables
tostring *, replace force

save "$rootDir_dataLegacy/1929/malt_1929_clean", replace
