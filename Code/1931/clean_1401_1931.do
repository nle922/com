//clean industry 1401 for 1931
*Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import excel "$rootDir_sheets/1931/1401/1931_1401_Complete.xls", sheet("Sheet1") cellrange(A5:EU106) allstring clear firstrow

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

drop AN //dummy column

//rename variables for industry 1401a in year 1933
rename AO gp_q_airplanes_open_new
rename AP gp_v_airplanes_open_new
rename AQ gp_q_airplanes_open_reblt
rename AR gp_v_airplanes_open_reblt
rename AS gp_q_airplanes_open_total
rename AT gp_v_airplanes_open_total
rename AU gp_q_airplanes_cabinS_one_new
rename AV gp_v_airplanes_cabinS_one_new
rename AW gp_q_airplanes_cabinS_one_reblt
rename AX gp_v_airplanes_cabinS_one_reblt
rename AY gp_q_airplanes_cabinS_one_total
rename AZ gp_v_airplanes_cabinS_one_total
rename BA gp_q_airplanes_cabinS_four_new
rename BB gp_v_airplanes_cabinS_four_new
rename BC gp_q_airplanes_cabinS_four_reblt
rename BD gp_v_airplanes_cabinS_four_reblt
rename BE gp_q_airplanes_cabinS_four_total
rename BF gp_v_airplanes_cabinS_four_total
rename BG gp_q_airplanes_cabinM_new
rename BH gp_v_airplanes_cabinM_new
rename BI gp_q_airplanes_cabinM_reblt
rename BJ gp_v_airplanes_cabinM_reblt
rename BK gp_q_airplanes_cabinM_total
rename BL gp_v_airplanes_cabinM_total 
rename BM gp_q_amphibians_new
rename BN gp_v_amphibians_new
rename BO gp_q_amphibians_reblt
rename BP gp_v_amphibians_reblt
rename BQ gp_q_amphibians_total
rename BR gp_v_amphibians_total
rename BS gp_q_seaplanes_new
rename BT gp_v_seaplanes_new
rename BU gp_q_seaplanes_reblt
rename BV gp_v_seaplanes_reblt
rename BW gp_q_seaplanes_total
rename BX gp_v_seaplanes_total
rename BY gp_q_airships_new
rename BZ gp_v_airships_new
rename CA gp_q_airships_reblt
rename CB gp_v_airships_reblt
rename CC gp_q_airships_total
rename CD gp_v_airships_total
rename CE gp_q_balloons_captive_new
rename CF gp_v_balloons_captive_new
rename CG gp_q_balloons_captive_reblt
rename CH gp_v_balloons_captive_reblt
rename CI gp_q_balloons_captive_total
rename CJ gp_v_balloons_captive_total
rename CK gp_q_balloons_free_new
rename CL gp_v_balloons_free_new
rename CM gp_q_balloons_free_reblt
rename CN gp_v_balloons_free_reblt
rename CO gp_q_balloons_free_total
rename CP gp_v_balloons_free_total
rename CQ gp_q_other_aircraft1_new
rename CR gp_v_other_aircraft1_new
rename CS gp_q_other_aircraft1_reblt
rename CT gp_v_other_aircraft1_reblt
rename CU gp_q_other_aircraft1_total
rename CV gp_v_other_aircraft1_total
rename CW gp_s_other_aircraft1
rename CX gp_q_parachutes_new
rename CY gp_v_parachutes_new
rename CZ gp_q_parachutes_reblt
rename DA gp_v_parachutes_reblt
rename DB gp_q_parachutes_total
rename DC gp_v_parachutes_total
rename DD gp_q_propellers_metal_new
rename DE gp_v_propellers_metal_new
rename DF gp_q_propellers_metal_reblt
rename DG gp_v_propellers_metal_reblt
rename DH gp_q_propellers_metal_total
rename DI gp_v_propellers_metal_total
rename DJ gp_q_propellers_wood_new
rename DK gp_v_propellers_wood_new
rename DL gp_q_propellers_wood_reblt
rename DM gp_v_propellers_wood_reblt
rename DN gp_q_propellers_wood_total
rename DO gp_v_propellers_wood_total
rename DP gp_q_pontoons_new
rename DQ gp_v_pontoons_new
rename DR gp_q_pontoons_reblt
rename DS gp_v_pontoons_reblt
rename DT gp_q_pontoons_total
rename DU gp_v_pontoons_total
rename DV gp_v_parts
rename DW gp_q_engines_less100hp_new
rename DX gp_v_engines_less100hp_new
rename DY gp_q_engines_less100hp_reblt
rename DZ gp_v_engines_less100hp_reblt
rename EA gp_q_engines_100200hp_new
rename EB gp_v_engines_100200hp_new
rename EC gp_q_engines_100200hp_reblt
rename ED gp_v_engines_100200hp_reblt
rename EE gp_q_engines_200400hp_new
rename EF gp_v_engines_200400hp_new
rename EG gp_q_engines_200400hp_reblt
rename EH gp_v_engines_200400hp_reblt
rename EI gp_q_engines_more400hp_new
rename EJ gp_v_engines_more400hp_new
rename EK gp_q_engines_more400hp_reblt
rename EL gp_v_engines_more400hp_reblt
rename EM gp_q_allOther1
rename EN gp_v_allOther1
rename EO gp_s_allOther1
rename EP gp_q_allOther2
rename EQ gp_v_allOther2
rename ER gp_s_allOther2
rename ES gp_v_experimentalWork
rename ET gp_v_repair
rename EU g000v

capture drop year
gen year = 1931
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//for consistency to string all variables
tostring *, replace force

save "$rootDir_dataLegacy/1931/1401_1931_clean", replace
