//clean industry 1401 for 1933
*Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import excel "$rootDir_sheets/1933/1401/1933_1401_Complete.xls", sheet("Sheet1") cellrange(A5:EX69) allstring clear firstrow

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"


/*
//rename variables that are already have names
foreach var_to_rename of varlist * {
	local renamed_var  = `var_to_rename' in 1
	if "`renamed_var'" ~= "" {
		capture rename `var_to_rename' `renamed_var'
	}
}
*/

//rename variables for industry 1401a in year 1933
rename AR gp_q_airplanes_open_new
rename AS gp_v_airplanes_open_new
rename AT gp_q_airplanes_open_reblt
rename AU gp_v_airplanes_open_reblt
rename AV gp_q_airplanes_open_total
rename AW gp_v_airplanes_open_total
rename AX gp_q_airplanes_cabinS_one_new
rename AY gp_v_airplanes_cabinS_one_new
rename AZ gp_q_airplanes_cabinS_one_reblt
rename BA gp_v_airplanes_cabinS_one_reblt
rename BB gp_q_airplanes_cabinS_one_total
rename BC gp_v_airplanes_cabinS_one_total
rename BD gp_q_airplanes_cabinS_four_new
rename BE gp_v_airplanes_cabinS_four_new
rename BF gp_q_airplanes_cabinS_four_reblt
rename BG gp_v_airplanes_cabinS_four_reblt
rename BH gp_q_airplanes_cabinS_four_total
rename BI gp_v_airplanes_cabinS_four_total
rename BJ gp_q_airplanes_cabinM_new
rename BK gp_v_airplanes_cabinM_new
rename BL gp_q_airplanes_cabinM_reblt
rename BM gp_v_airplanes_cabinM_reblt
rename BN gp_q_airplanes_cabinM_total
rename BO gp_v_airplanes_cabinM_total 
rename BP gp_q_amphibians_new
rename BQ gp_v_amphibians_new
rename BR gp_q_amphibians_reblt
rename BS gp_v_amphibians_reblt
rename BT gp_q_amphibians_total
rename BU gp_v_amphibians_total
rename BV gp_q_seaplanes_new
rename BW gp_v_seaplanes_new
rename BX gp_q_seaplanes_reblt
rename BY gp_v_seaplanes_reblt
rename BZ gp_q_seaplanes_total
rename CA gp_v_seaplanes_total
rename CB gp_q_airships_new
rename CC gp_v_airships_new
rename CD gp_q_airships_reblt
rename CE gp_v_airships_reblt
rename CF gp_q_airships_total
rename CG gp_v_airships_total
rename CH gp_q_balloons_captive_new
rename CI gp_v_balloons_captive_new
rename CJ gp_q_balloons_captive_reblt
rename CK gp_v_balloons_captive_reblt
rename CL gp_q_balloons_captive_total
rename CM gp_v_balloons_captive_total
rename CN gp_q_balloons_free_new
rename CO gp_v_balloons_free_new
rename CP gp_q_balloons_free_reblt
rename CQ gp_v_balloons_free_reblt
rename CR gp_q_balloons_free_total
rename CS gp_v_balloons_free_total
rename CT gp_q_other_aircraft1_new
rename CU gp_v_other_aircraft1_new
rename CV gp_q_other_aircraft1_reblt
rename CW gp_v_other_aircraft1_reblt
rename CX gp_q_other_aircraft1_total
rename CY gp_v_other_aircraft1_total
rename CZ gp_s_other_aircraft1
rename DA gp_q_parachutes_new
rename DB gp_v_parachutes_new
rename DC gp_q_parachutes_reblt
rename DD gp_v_parachutes_reblt
rename DE gp_q_parachutes_total
rename DF gp_v_parachutes_total
rename DG gp_q_propellers_metal_new
rename DH gp_v_propellers_metal_new
rename DI gp_q_propellers_metal_reblt
rename DJ gp_v_propellers_metal_reblt
rename DK gp_q_propellers_metal_total
rename DL gp_v_propellers_metal_total
rename DM gp_q_propellers_wood_new
rename DN gp_v_propellers_wood_new
rename DO gp_q_propellers_wood_reblt
rename DP gp_v_propellers_wood_reblt
rename DQ gp_q_propellers_wood_total
rename DR gp_v_propellers_wood_total
rename DS gp_q_pontoons_new
rename DT gp_v_pontoons_new
rename DU gp_q_pontoons_reblt
rename DV gp_v_pontoons_reblt
rename DW gp_q_pontoons_total
rename DX gp_v_pontoons_total
rename DY gp_v_parts
rename DZ gp_q_engines_less100hp_new
rename EA gp_v_engines_less100hp_new
rename EB gp_q_engines_less100hp_total
rename EC gp_v_engines_less100hp_total
rename ED gp_q_engines_100200hp_new
rename EE gp_v_engines_100200hp_new
rename EF gp_q_engines_100200hp_total
rename EG gp_v_engines_100200hp_total
rename EH gp_q_engines_200400hp_new
rename EI gp_v_engines_200400hp_new
rename EJ gp_q_engines_200400hp_total
rename EK gp_v_engines_200400hp_total
rename EL gp_q_engines_more400hp_new
rename EM gp_v_engines_more400hp_new
rename EN gp_q_engines_more400hp_total
rename EO gp_v_engines_more400hp_total
rename EP gp_q_allOther1
rename EQ gp_v_allOther1
rename ER gp_s_allOther1
rename ES gp_q_allOther2
rename ET gp_v_allOther2
rename EU gp_s_allOther2
rename EV gp_v_experimentalWork
rename EW gp_v_repair
rename EX g000v

capture drop year
gen year = 1933
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//for consistency to string all variables
tostring *, replace force

save "$rootDir_dataLegacy/1933/1401_1933_clean", replace
