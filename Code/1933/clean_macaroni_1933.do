*NLZ: Program to create and clean the 1933 macaroni
//Globals referenced: rootDir_sheets, rootDir_dataLegacy

*Preliminaries
capture log close
set more off

//insheet file that you want to clean here
import delimited using "$rootDir_sheets/1933/121/1933_clean.csv", delimiter(",")  case(lower) stringcols(_all) clear

missings dropvars, force
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename costs of inputs variables
capture rename costofallmaterials f009
capture rename costofcontractwork f004

//rename utilization variables
capture rename numdaysplantinoperation d001
capture rename numberofhoursplantwasoperated d008

//rename output variables
rename quantity gp_q_general1
rename value gp_v_general1
rename specify gp_s_general1
rename v50 gp_q_general2
rename v51 gp_v_general2
rename v52 gp_s_general2
rename v53 gp_q_general3
rename v54 gp_v_general3
rename v55 gp_s_general3
rename allotherspecifyquantity gp_q_other1
rename allotherspecifyvalue gp_v_other1
rename v58 gp_s_other1
rename allotherspecifyquantity1 gp_q_other2
rename allotherspecifyvalue2 gp_v_other2
rename v61 gp_s_other2

//these are lists of words to search for in "Specify" that identifies what kind of product it is
local search_word_macaroni = "Macaroni"
local search_word_egg_noodles = "Egg"
local search_word_raviola = "Ravio"
local search_word_plain_noodles = "Noodl"

//list of specify variables
local check_vars = "gp_s_general1 gp_s_general2 gp_s_general3 gp_s_other1 gp_s_other2"
//list of quantity variables
local q_vars = "gp_q_general1 gp_q_general2 gp_q_general3 gp_q_other1 gp_q_other2"
//list of price variables
local v_vars = "gp_v_general1 gp_v_general2 gp_v_general3 gp_v_other1 gp_v_other2"
//list of inputs
local inputs ="macaroni egg_noodles raviola plain_noodles"

foreach input_type in `inputs' {
	local counter = 1
	local word_length = length("`search_word_`input_type''")
	foreach var_to_check in `check_vars' { 
		//generate a flag for what type of input is
		gen flag`counter' = (substr(trim(`var_to_check'),1,`word_length') == "`search_word_`input_type''")
		replace `var_to_check' = "" if flag`counter'==1
		local ++counter
	}

	foreach var_letter in v q {
		//generate qt. and cost of inputs
		gen gp_`var_letter'_`input_type' = "" 
		local counter = 1
		foreach var_to_check in ``var_letter'_vars'{
			//fill in values of this variable using the flags generated
			replace gp_`var_letter'_`input_type' = `var_to_check' if flag`counter' == 1
			local ++counter
		}
	}
	drop flag*
}


foreach input_type in `inputs'{
	foreach l in v q{
    replace gp_`l'_`input_type' = subinstr(gp_`l'_`input_type',"Lbs.","",.)
	replace gp_`l'_`input_type' = subinstr(gp_`l'_`input_type',"lbs.","",.)
	replace gp_`l'_`input_type' = subinstr(gp_`l'_`input_type',"Lbs","",.)
	replace gp_`l'_`input_type' = subinstr(gp_`l'_`input_type',"lbs","",.)
	replace gp_`l'_`input_type' = trim(gp_`l'_`input_type')
	}
}

replace gp_v_plain_noodles = "" if gp_v_plain_noodles == gp_v_egg_noodles	//Don't want egg noodles caught by the word search above
replace gp_q_plain_noodles = "" if gp_q_plain_noodles == gp_q_egg_noodles	

//rename employment variables
rename managers e003ta
rename salariesformanagers e003tas

//rename monthly employment variables
capture rename jan ewemt01
capture rename feb ewemt02
capture rename march ewemt03
capture rename april ewemt04
capture rename may ewemt05
capture rename june ewemt06
capture rename july ewemt07
capture rename august ewemt08
capture rename november ewemt11
capture rename october ewemt10
capture rename december ewemt12
capture rename september ewemt09

rename postofficeaddress a004
rename nameandaddressofconcern am002
rename ifsogive as005

//fix some typos in estabIDs
do "$rootDir_code/1933/fix_estabids_macaroni_1933"

capture drop year
gen year =  1933
//rename "common" set of variables for labeling 
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace force

save "$rootDir_dataLegacy/1933/macaroni_1933_clean", replace 
