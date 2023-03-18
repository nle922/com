//clean industry 1401 for 1929
*Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import excel "$rootDir_sheets/1929/1401/1929_1401_Complete.xls", sheet("Sheet1") cellrange(A5:GE140) allstring clear firstrow
drop in 1 //drop this row now


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

drop if indc == ""

rename AR ff00up //doesnt this have a CK name? Cant find it

rename AW gp_q_airplanes_open_new
rename AX gp_v_airplanes_open_new
rename AY gp_q_airplanes_open_reblt
rename AZ gp_v_airplanes_open_reblt
rename BA gp_v_airplanes_open_total
rename BB gp_q_airplanes_transport_new
rename BC gp_v_airplanes_transport_new
rename BD gp_q_airplanes_transport_reblt
rename BE gp_v_airplanes_transport_reblt
rename BF gp_v_airplanes_transport_total
rename BG gp_q_airplanes_cabinS_new
rename BH gp_v_airplanes_cabinS_new
rename BI gp_q_airplanes_cabinS_reblt
rename BJ gp_v_airplanes_cabinS_reblt
rename BK gp_v_airplanes_cabinS_total
rename BL gp_q_airplanes_cabinM_new
rename BM gp_v_airplanes_cabinM_new
rename BN gp_q_airplanes_cabinM_reblt
rename BO gp_v_airplanes_cabinM_reblt
rename BP gp_v_airplanes_cabinM_total
rename BQ gp_q_amphibians_new
rename BR gp_v_amphibians_new
rename BS gp_q_amphibians_reblt
rename BT gp_v_amphibians_reblt
rename BU gp_v_amphibians_total
rename BV gp_q_seaplanes_new
rename BW gp_v_seaplanes_new
rename BX gp_q_seaplanes_reblt
rename BY gp_v_seaplanes_reblt
rename BZ gp_v_seaplanes_total
rename CA gp_q_airships_new
rename CB gp_v_airships_new
rename CC gp_q_airships_reblt
rename CD gp_v_airships_reblt
rename CE gp_v_airships_total
rename CF gp_q_balloons_captive_new
rename CG gp_v_balloons_captive_new
rename CH gp_q_balloons_captive_reblt
rename CI gp_v_balloons_captive_reblt
rename CJ gp_v_balloons_captive_total
rename CK gp_q_balloons_free_new
rename CL gp_v_balloons_free_new
rename CM gp_q_balloons_free_reblt
rename CN gp_v_balloons_free_reblt
rename CO gp_v_balloons_free_total
rename CP gp_q_balloons_kite_new
rename CQ gp_v_balloons_kite_new
rename CR gp_q_balloons_kite_reblt
rename CS gp_v_balloons_kite_reblt
rename CT gp_v_balloons_kite
rename CU gp_q_parachutes_new
rename CV gp_v_parachutes_new
rename CW gp_q_parachutes_reblt
rename CX gp_v_parachutes_reblt
rename CY gp_v_parachutes_total
rename CZ gp_q_other_aircraft1_new
rename DA gp_v_other_aircraft1_new
rename DB gp_q_other_aircraft1_reblt
rename DC gp_v_other_aircraft1_reblt
rename DD gp_v_other_aircraft1_total
rename DE gp_s_other_aircraft1
rename DF gp_q_other_aircraft2_new
rename DG gp_v_other_aircraft2_new
rename DH gp_q_other_aircraft2_reblt
rename DI gp_v_other_aircraft2_reblt
rename DJ gp_v_other_aircraft2_total
rename DK gp_s_other_aircraft2
rename DL gp_q_propellers_new
rename DM gp_v_propellers_new
rename DN gp_q_propellers_reblt
rename DO gp_v_propellers_reblt
rename DP gp_v_propellers_total
rename DQ gp_q_engines_sold
rename DR gp_v_engines_sold
drop DS //This is just repated of FD. 
rename DT gp_q_engines_installed
rename DU gp_v_parts
rename DV gp_v_allOther1
rename DW gp_v_allOther2
rename DX gp_v_repairs
rename DY g000v

//rename variables for industry 1401a in year 1933
rename DZ hp001n
rename EA hp001h
rename EB hp002n
rename EC hp002h
rename ED hp003n
rename EE hp003h
rename EF hp004n
rename EG hp004h
rename EH he001n
rename EI he001h
rename EJ he002n
rename EK he002h

rename EL ff001q
rename EM ff001v
rename EN ff002q
rename EO ff002v
rename EP ff003q
rename EQ ff003v
rename ER ff004q
rename ES ff004v
rename ET ff005q
rename EU ff005v
rename EV ff006q
rename EW ff006v
rename EX ff007q
rename EY ff007v
rename EZ ff000c

rename FA fe001k
rename FB fe002k
rename FC fe002c

rename FD j_q_softwood_lumber
rename FE j_v_softwood_lumber
rename FF j_q_hardwood_lumber
rename FG j_v_hardwood_lumber
rename FH j_q_plywoods
rename FI j_v_plywoods
rename FJ j_q_leather
rename FK j_v_leather
rename FL j_q_airplane_cloth
rename FM j_v_airplane_cloth
rename FN j_q_instruments
rename FO j_v_instruments
rename FP j_q_aluminum
rename FQ j_v_aluminum
rename FR j_q_copper_brass_bronze
rename FS j_v_copper_brass_bronze
rename FT j_q_iron_steel
rename FU j_v_iron_steel
rename FV j_q_gasoline_engines
rename FW j_v_gasoline_engines

rename FX k001
rename FY k002
rename FZ k003
rename GA k004
rename GB k005
rename GC k006
rename GD k007
rename GE k008

capture drop year
gen year = 1929
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//for consistency to string all variables
tostring *, replace force

rename idcode estabid_1401	//Not sure how this got renamed

//leave this in the sheets directory
save "$rootDir_dataLegacy/1929/1401_1929_clean", replace