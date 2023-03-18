//rename variables for industry 318 in year 1933

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename output variables
rename AR gp_q_Spirits
rename AS gp_v_Spirits 
rename AT gp_q_Rosin
rename AU gp_v_Rosin
rename AV gp_q_Dross
rename AW gp_v_Dross
rename AX gp_s_Other_Rosin 
rename AY gp_q_Other_Rosin 
rename AZ gp_v_Other_Rosin
rename BA gp_v_receipts_distilling 
rename BB g000v
rename BC gp_q_TurpentineForOthers
rename BD gp_q_RosinForOthers

//rename inventory variables
rename BE inv_q_Turpentine
rename BF inv_q_Rosin

rename BG jp_v_CrudeTurpentine //NLZ: I think an input?

drop BH
rename BI ewemt
