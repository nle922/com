//clean data for industry 121 in 1931
//Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

import delimited using "$rootDir_sheets/1931/121/1931_clean.csv", delimiters(",") case(lower) stringcols(_all) clear

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

missings dropvars, force
gen censusyear = 1931

rename macaroniquantity gp_q_macaroni
rename macaronivalue gp_v_macaroni
rename eggnoodlesquantity gp_q_egg_noodles
rename eggnoodlesvalue gp_v_egg_noodles
rename noodlesquantity gp_q_plain_noodles
rename noodlesvalue gp_v_plain_noodles
rename raviolaquantity gp_q_raviola
rename raviolavalue gp_v_raviola

//rename all other output variables
capture rename allotherproductsquantity1 gp_q_other1
capture rename allotherproductsvalue1 gp_v_other1

//rename costs of inputs variables
capture rename bcostofmaterials f009
capture rename ccostofcontractwork f004
capture rename total f008

//rename monthly employment variables
capture rename jan   ewemt01
capture rename feb   ewemt02
capture rename march  ewemt03
capture rename april  ewemt04
capture rename may  ewemt05
capture rename june  ewemt06
capture rename july  ewemt07
capture rename august  ewemt08
capture rename november ewemt11
capture rename october ewemt10
capture rename december ewemt12
capture rename september ewemt09
capture rename specify gp_s_other3
capture rename allotherproductsquantity2 gp_q_other3
capture rename allotherproductsvalue2 gp_v_other3

drop v57

rename nameandaddressofconcern am002
rename postofficeaddress a004
rename ifsogive as005

capture drop year
capture gen year =  1931
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace force

save "$rootDir_dataLegacy/1931/macaroni_1931_clean", replace
