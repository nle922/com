//renames the file for ind 1407 in 1929. Note that this is already in Stata format
//Globals referenced: $rootDir_sheets, $rootDir_dataBR

use "$rootDir_sheets/1929/1407/140729A1", clear

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//create output variables based on names of variables by appending gp_v_ and gp_q_
foreach i of varlist bdyordnm-rlbrngvl{

	if regexm("`i'", "vl$") {
		local name = reverse(substr(reverse("`i'"),3,.))
		rename `i' gp_v_`name'
	}
	else if regexm("`i'", "nm$") {
		local name = reverse(substr(reverse("`i'"),3,.))
		rename `i' gp_q_`name'
	}
}
capture rename bdyotrd1 gp_s_bdyotr

//rename utilziation variables
capture rename totldays d001
capture rename plnthpdy d002
capture rename plnthpwk d003
capture rename sftsprdy d004
capture rename wrkrhpwk d005
capture rename wrkrdpwk d006

//rename costs of inputs?
capture rename matlcost f001
capture rename fuelcost f002
capture rename eleccost f003
capture rename totlcost f009

capture drop D_R //why?

capture drop year
capture gen year = 1929
//this will translate to CK variable naming convention if necessary
do "$rootDir_code/General/basic_rename.do"
//tostring all variables to make sure consistent appending later
tostring *, replace force

save "$rootDir_dataBR/1929/1407/1407_1929_clean", replace
