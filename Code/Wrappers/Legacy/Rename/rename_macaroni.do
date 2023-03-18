//renames variables of macaroni industry 
//Global variables: rootDir_dataLegacy, rootDir_Code

*Preliminaries
capture log close 
set more off

//note that we will overwrite this file at the end
use "$rootDir_dataLegacy/Complete/macaroni_all.dta", replace

//tostring all variables for consistency
tostring *, replace force

//rename z variables
capture rename v1 z_imageNo
capture rename industry_ID z_indCode

//rename and fill in values of macaroni specific output variables
capture rename macaroni_q = macaroniquantity if macaroni_q=="" | macaroni_q=="."
capture drop macaroniquantity
capture rename macaroni_value = macaronivalue if macaroni_value=="" | macaroni_value=="."
capture drop macaronivalue
capture rename egg_noodles_q = eggnoodlesquantity if egg_noodles_q=="" | egg_noodles_q=="."
capture drop eggnoodlesquantity
capture rename egg_noodles_value = eggnoodlesvalue if egg_noodles_value=="" | egg_noodles_value=="."
capture drop eggnoodlesvalue
capture rename plain_noodles_q = noodlesquantity if plain_noodles_q=="" | plain_noodles_q=="."
capture drop noodlesquantity
capture rename plain_noodles_value = noodlesvalue if plain_noodles_value=="" | plain_noodles_value=="." 
capture drop noodlesvalue
capture rename raviola_q = raviolaquantity if raviola_q=="" | raviola_q=="."
capture drop raviolaquantity
capture rename raviola_value = raviolavalue if raviola_value=="" | raviola_value=="."  
capture drop raviolavalue
capture rename egg_noodles_q gp_q_egg
capture rename egg_noodles_value gp_v_egg
capture rename macaroni_q gp_q_mac
capture rename macaroni_value gp_v_mac
capture rename plain_noodles_q gp_q_plain
capture rename plain_noodles_value gp_v_plain
capture rename raviola_q gp_q_raviola
capture rename raviola_value gp_v_raviola
capture rename allotherspecifyquantity gp_q_allOther1
capture rename allotherspecifyvalue  gp_v_allOther1
capture rename v58 gp_n_allOther1
capture rename allotherproductsquantity1 gp_q_allOther2
capture rename allotherproductsvalue1 gp_v_allOther2
capture rename allotherproductsquantity gp_q_allOther3
capture rename allotherproductsvalue gp_v_allOther3

//rename input variables
capture rename eggs_q j_q_eggs
capture rename eggs_value j_v_eggs
capture rename flour_durum_q j_q_flourD
capture rename flour_durum_value j_v_flourD
capture rename flour_q j_q_flour
capture rename flour_value j_v_flour

//drop some useless variables
capture drop mismatchbetweenaddresses             
capture drop generalschedule
capture drop notes   
capture drop minesschedule

//rename other products consistently
do "$rootDir_code/General/rename_otherProducts"
//label these basic variables according to CK's scheme
do "$rootDir_code/Label/label_ck_vars"
//label macaroni specific variables
do "$rootDir_code/Label/label_macaroni_vars"

//fix up IDs. Note that these are already there. Do not need to merge them in.
capture rename firmid estabid_macaroni
label var estabid_macaroni "Establishment ID, macaroni"
gen firmid_macaroni = estabid_macaroni
label var firmid_macaroni "Firm ID, macaroni"
drop if estabid_macaroni=="."

//get rid of some strange totally blank observations in 1935
drop if year=="1935" & estabid_macaroni==""
//combine z_imageNo & z_imageNumber
replace z_imageNumber = z_imageNo if z_imageNumber==""
drop z_imageNo

//translate existing establishment and firm IDs to our idiom
local ID_establishment = "estab"
local ID_firm = "firm"
foreach type in establishment firm {
	do "$rootDir_code/General/gen_ID" "121" "`type'"
	do "$rootDir_code/General/translate_legacyIDs" "`ID_`type''id_macaroni" "`type'"
}

//generate flag for Census of Mines schedule. Flag will be used to make sure properly missing employment variables are left missing
do "$rootDir_code/Variable Checking/gen_mines_variable"

//clean up state name variable
do "$rootDir_code/General/clean_state_name.do" "ag001" "ag001"

//Clean up the county name variable
qui do "$rootDir_code/General/clean_county_name.do" "ag003" "ag003" "ag001" "ag002"

//insure indCode is right
capture drop z_indCode
gen z_indCode = "121"
//this variable identifies how estabIDs were generated
gen estabid_generated = "LEGACY"
gen firmid_generated = "LEGACY"
//all variables to strings for ease of appending later
tostring *, replace force
//order variables
aorder *

save "$rootDir_dataLegacy/Complete/macaroni_all.dta", replace
