//clean the file for industry 1408 in 1929. Note that this already in Stata format.
//Globals referenced: $rootDir_sheets, $rootDir_dataBR

use "$rootDir_sheets/1929/1408/140829A1", clear

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//create variables for outputs by taking column names and appending gp_v_ or gp_q_
foreach i of varlist ordtrnm-taxinm {
	if regexm("`i'", "vl$") {
		local name = reverse(substr(reverse("`i'"),3,.))
		rename `i' gp_v_`name'
	}
	else if regexm("`i'", "nm$") {
		local name = reverse(substr(reverse("`i'"),3,.))
		rename `i' gp_q_`name'
	}

}

//rename utilization variables
capture rename totldays d001
capture rename plnthpdy d002
capture rename plnthpwk d003
capture rename sftsprdy d004
capture rename wrkrhpwk d005
capture rename wrkrdpwk d006

//rename input cost variables
capture rename matlcost f001
capture rename fuelcost f002
capture rename eleccost f003
capture rename totlcost f009

capture rename weslry e005s

//drop a number of unused or unclear variables?
capture drop D_R 
capture drop start
capture drop smmyname 
capture drop prsnt1 
capture drop prsnt3 
capture drop prsnt5 
capture drop chpcar 
capture drop matlpc
capture drop wgmth
capture drop qck29
capture drop expcar
capture drop chptrk
capture drop iq12vl 
capture drop chptrk 
capture drop cntmng 
capture drop wghr 
capture drop iq12pc
capture drop hpwe2 
capture drop wenwe 
capture drop hpv2 
capture drop A_1407us
capture drop ok
capture drop chktt
capture drop pcprm2 
capture drop pcpch2 
capture drop exptrk 
capture drop wgwk 
capture drop pcgen2 
capture drop cntmng 
capture drop wghr 
capture drop iq12pc 
capture drop hpwe2 
capture drop other 
capture drop cntmg2 
capture drop wenwe 
capture drop hpv2 
capture drop A_1407us 
capture drop vswem 
capture drop hpwh2 
capture drop A_1407cy 
capture drop ptdtfrom 
capture drop capptdtto

//label output variables
//missing a substantial number of ouptut variables in the original Stata file
rename gp_q_ordtr gp_q_rdstr
rename gp_v_ordtr gp_v_rdstr
rename gp_q_oothr gp_q_pvootr
rename gp_v_oothr  gp_v_pvootr
rename gp_q_ccp gp_q_coupe
rename gp_v_ccp gp_v_coupe
rename gp_q_c2d gp_q_pvc2d
rename gp_v_c2d gp_v_pvc2d
rename gp_q_c4d gp_q_pvc4d
rename gp_v_c4d gp_v_pvc4d
rename gp_q_cothr gp_q_pvcotr
rename gp_v_cothr gp_v_pvcotr
rename gp_q_b20 gp_q_bus20
rename gp_v_b20 gp_v_bus20
rename gp_q_b25 gp_q_bus25
rename gp_v_b25 gp_v_bus25
rename gp_q_b35 gp_q_bus35
rename gp_v_b35 gp_v_bus35

//drop some variables that are not useful
capture drop xm* 
capture drop check* 
capture drop file* 
capture drop hp* 
capture drop D_R 

capture drop year
gen year = 1929
//this will translate to CK variable naming convention if necessary
do "$rootDir_code/General/basic_rename.do"
//tostring all variables for consistency in appending later
tostring *, replace force

//merge estabIDs. Why are we doing this now?
merge 1:1 a001 a002 ewemt01 ewemt02 year using "$rootDir_matching/Establishments/1929/1407_1408/match1929_1407_1408.dta", nogen keep(match master)

save "$rootDir_dataBR/1929/1408/1408_1929_clean", replace
