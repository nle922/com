//rename variables for industry 1408 in 1933. Note that this is already a Stata file.

//Preliminaries
capture log close
set more off

use "$rootDir_sheets/1933/1408/140833A0", clear

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename costs of inputs variables
capture rename mcfecost f009
capture rename ctrccost f004
capture rename totlcost f007

//generate output variables by using variable names and appending gp_v_ and gp_q_
foreach i of varlist coupenm-trcfrmvl {

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
rename noname84 gp_s_opb
rename noname97 gp_s_othrcm
rename noname08 gp_s_fyrotr
drop noname13 
rename noname16 gp_s_othrmv

rename gopoaddr a004
rename bschngyn as004
//missing product information: Tractors -industrial as well as Chassis, Bodies, Tops, Parts and Accessories, All other roducts, Receipts for custom work

//rename employment variables
rename totldays d001
rename wrkrhpwk d008
rename propnm e001t 
rename offcrnm e002t
rename mangrnm e003ta
rename clerknm e003tc 
rename offcrwgs e002s 
rename mangrwgs e003tas 
rename clerkwgs e003tcs 
rename wewgs e005s 
rename totlwgs e009s 

//drop some useless variables
capture drop inq3cmt1 
capture drop inq3cmt2 
capture drop inq4date 
capture drop D_R 
capture drop xm* 
capture drop check* 
capture drop file* 

capture drop year
gen year =  1933
//rename "common" set of variables for labeling 
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace force

//merge in estabIDs
merge 1:1 a001 a002 ewemt01 ewemt02 year using "$rootDir_matching/Establishments/1933/1407_1408/match1933_1407_1408.dta", nogen keep(match master)

save "$rootDir_dataBR/1933/1408/1408_1933_clean", replace
