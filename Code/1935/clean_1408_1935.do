//clean up 1408 in 1935. Note that this already a Stata file
//Globals referenced: rootDir_sheets, rootDir_dataBR

set more off
capture log close
use "$rootDir_sheets/1935/1408/140835A0", clear

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename costs of inputs variables
capture rename matlcost f001
capture rename fuelcost f002
capture rename eleccost f003
capture rename totlcost f009
capture rename ctrccost f004

//creates output variables by appending gp_v_ and gp_q_ to column names
foreach i of varlist pvc2dnm-trk5tvl {

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
rename gp_q_txi gp_q_taxi
rename gp_v_txi gp_v_taxi
capture rename noname17 gp_s_opb
//missing a substantial number of output variables here

//rename employment variables             
rename propnm e001t
rename soffcnm e002t
rename soffcwgs e002s
rename supvnm e003ta
rename supvwgs e003tas
rename technm e003te
rename techwgs e003tes
rename cmar e003tc03
rename cjun e003tc06
rename csep e003tc09
rename cdec e003tc12
rename cwgs e003tcs
rename nonwenm e004t
rename nonwewgs e004s
rename wewgs e005s
rename A_1934wewgs e005sp
capture rename supvnm e003c
capture rename technm e003te
capture rename soffcnm e002s
capture rename cwgs total_wages_salaries
capture rename wewgs total_wage

//rename manhours variables
capture rename j emh01
capture rename f emh02
capture rename m emh03
capture rename a emh04
capture rename m_A emh05
capture rename j_A emh06
capture rename j_B emh07
capture rename a_A emh08
capture rename s emh09
capture rename o emh10
capture rename n emh11
capture rename d emh12
capture rename totlm emht
capture rename A_1934wewgs wages_1934

//drop some variables that are not useful
capture drop xm* 
capture drop check* 
capture drop file* 
capture drop hp* 
capture drop record 
capture drop start 
capture drop indarea  
capture drop D_R 
capture drop ptdtto 
capture drop pttminf2 
capture drop pttminf1
capture drop cntynm 
capture drop empldate 
capture drop ttlhp2 
capture drop repe29 
capture drop emplnm 
capture drop propwgs
capture drop material

rename gopoaddr a004

//generate year variable
capture drop year
gen year = 1935
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace force

//merge in estabIDs
merge 1:1 a001 a002 ewemt01 ewemt02 year using "$rootDir_matching/Establishments/1935/1407_1408/match1935_1407_1408.dta", nogen keep(match master)

//fix a problem with how d variables were defined in 1935
gen d008 = ""
replace d008 = d006 
replace d006 ="" 
replace d006 = d005
replace d005 ="" 

save "$rootDir_dataBR/1935/1408/1408_1935_clean", replace
