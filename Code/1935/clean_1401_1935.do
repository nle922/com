//clean industry 1401 for 1935
*Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import excel "$rootDir_sheets/1935/1401/1935_1401_Complete.xls", sheet("Sheet1") cellrange(A5:GI84) allstring clear firstrow

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

drop BD //dummy column

rename AB e003tc03
rename AC e003tc06
rename AD e003tc09
rename AE e003tc12

//rename remaining variables
rename BE hp001gn
rename BF hp001gh
rename BG hp001gk
rename BH hp001on
rename BI hp001ok
rename BJ hp002gn
rename BK hp002gh
rename BL hp002gk
rename BM hp002on
rename BN hp002ok
rename BO hp003gn
rename BP hp003gh
rename BQ hp003gk
rename BR hp003on
rename BS hp003ok
rename BT hp005gn
rename BU hp005gh
rename BV hp005gk
rename BW hp005on
rename BX hp005ok
rename BY hp006gn
rename BZ hp006gh
rename CA hp006gk
rename CB hp006on
rename CC hp006ok

drop CD 
drop CE 
rename CF he001n
rename CG he001h
rename CH he002n
rename CI he002h

rename CJ ff001q
rename CK ff001v
rename CL ff002q
rename CM ff002v
rename CN ff003q
rename CO ff003v
rename CP ff004q
rename CQ ff004v
rename CR ff006q
rename CS ff006v
rename CT ff008q
rename CU ff008v
rename CV ff010q
rename CW ff010v
rename CX fe000
rename CY fe001k
rename CZ fe002k
rename DA fe002c
drop DB //Not sure what this variable is supposed to be
rename DC gp_q_airplanes_open_mono
rename DD gp_v_airplanes_open_mono
rename DE gp_q_airplanes_open_bi
rename DF gp_v_airplanes_open_bi
rename DG gp_q_airplanes_open_total
rename DH gp_v_airplanes_open_total
rename DI gp_q_airplanes_cabinS_one_mono
rename DJ gp_v_airplanes_cabinS_one_mono
rename DK gp_q_airplanes_cabinS_one_bi
rename DL gp_v_airplanes_cabinS_one_bi
rename DM gp_q_airplanes_cabinS_one_total
rename DN gp_v_airplanes_cabinS_one_total
rename DO gp_q_airplanes_cabinS_four_mono
rename DP gp_v_airplanes_cabinS_four_mono
rename DQ gp_q_airplanes_cabinS_four_bi
rename DR gp_v_airplanes_cabinS_four_bi
rename DS gp_q_airplanes_cabinS_four_total
rename DT gp_v_airplanes_cabinS_four_total
rename DU gp_q_airplanes_cabinM_mono
rename DV gp_v_airplanes_cabinM_mono
rename DW gp_q_airplanes_cabinM_bi
rename DX gp_v_airplanes_cabinM_bi
rename DY gp_q_airplanes_cabinM_total
rename DZ gp_v_airplanes_cabinM_total
rename EA gp_q_amphibians_mono
rename EB gp_v_amphibians_mono
rename EC gp_q_amphibians_bi
rename ED gp_v_amphibians_bi
rename EE gp_q_amphibians_total
rename EF gp_v_amphibians_total
rename EG gp_q_seaplanesPontoon_mono
rename EH gp_v_seaplanesPontoon_mono
rename EI gp_q_seaplanesPontoon_bi
rename EJ gp_v_seaplanesPontoon_bi
rename EK gp_q_seaplanesPontoon_total
rename EL gp_v_seaplanesPontoon_total
rename EM gp_q_seaplanesFlying_mono
rename EN gp_v_seaplanesFlying_mono
rename EO gp_q_seaplanesFlying_bi
rename EP gp_v_seaplanesFlying_bi
rename EQ gp_q_seaplanesFlying_total
rename ER gp_v_seaplanesFlying_total
rename ES gp_q_other_aircraft1_mono
rename ET gp_v_other_aircraft1_mono
rename EU gp_q_other_aircraft1_bi
rename EV gp_v_other_aircraft1_bi
rename EW gp_q_other_aircraft1_total
rename EX gp_v_other_aircraft1_total
rename EY gp_s_other_aircraft1
rename EZ gp_q_airships_total
rename FA gp_v_airships_total
rename FB gp_q_balloons_captive_total
rename FC gp_v_balloons_captive_total
rename FD gp_q_balloons_free_total
rename FE gp_v_balloons_free_total
rename FF gp_q_aircraft_construction_total
rename FG gp_v_aircraft_construction_total
rename FH gp_q_parachutes_total
rename FI gp_v_parachutes_total
rename FJ gp_q_propellers_metal_total
rename FK gp_v_propellers_metal_total
rename FL gp_q_propellers_wood_total
rename FM gp_v_propellers_wood_total
rename FN gp_q_pontoons_total
rename FO gp_v_pontoons_total
rename FP gp_v_parts
rename FQ gp_q_engines_less100hp_total
rename FR gp_v_engines_less100hp_total
rename FS gp_q_engines_100200hp_total
rename FT gp_v_engines_100200hp_total
rename FU gp_q_200400hp_total
rename FV gp_v_200400hp_total
rename FW gp_q_more400hp_total
rename FX gp_v_more400hp_total
rename FY gp_q_allOther1
rename FZ gp_v_allOther1
rename GA gp_s_allOther1
rename GB gp_q_allOther2
rename GC gp_v_allOther2
rename GD gp_s_allOther2
rename GE gp_v_experimentalWork
rename GF receipts_electric
rename GG gp_v_contract
rename GH gp_v_repair
rename GI g000v

capture drop year
gen year = 1935
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//for consistency to string all variables
tostring *, replace force

save "$rootDir_dataLegacy/1935/1401_1935_clean", replace
