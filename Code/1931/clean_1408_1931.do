//clean up industry 1408  for 1931. Note that this is already a Stata file. 
//Globals referenced: $rootDir_sheets, $rootDir_dataBR

//Preliminaries
capture log close
set more off

use "$rootDir_sheets/1931/1408/140831A0", clear
  
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"
  
//rename cost of inputs variables
capture rename mfecost f009
capture rename ctrccost f004
capture rename totlcost f008
capture rename weslry e005s

capture rename totldays d001
capture rename wrkrhpwk d005
capture rename wrkrdpwk d006


rename gopoaddr a004

//create output variables based on column names by appending gp_q_ and gp_v_
foreach i of varlist coupenm-bodyvl{
	if regexm("`i'", "vl$") {
		local name = reverse(substr(reverse("`i'"),3,.))
		di "`name'"
		rename `i' gp_v_`name'
	}
	else if regexm("`i'", "nm$") {
		local name = reverse(substr(reverse("`i'"),3,.))
		rename `i' gp_q_`name'
	}
}

//rename output variables and label
capture drop D_R
capture rename noname74 gp_s_opb
capture rename noname87 gp_s_othrcm
capture rename noname96 gp_s_fyotr
capture rename noname04 gp_s_otrgvt
capture rename noname01 gp_s_pvootr
capture rename tops gp_q_tops
capture drop bodies
rename gp_q_fryen gp_q_fyren
rename gp_s_fyotr gp_s_fyrotr

//drop some useless variables
capture drop inq3cmt1 
capture drop inq3cmt2 
capture drop inq4date 
capture drop D_R 
capture drop xm* 
capture drop check* 
capture drop file* 

//missing value of tops, parts and accessories, all other products, and receipts for custom work.

capture drop year
gen year = 1931
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistency in appending later
tostring *, replace force

//merge in establishment IDs
merge 1:1 a001 a002 ewemt01 ewemt02 year using "$rootDir_matching/Establishments/1931/1407_1408/match1931_1407_1408.dta", nogen keep(match master)

save "$rootDir_dataBR/1931/1408/1408_1931_clean", replace
