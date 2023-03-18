//rename variables for industry 110 in 1931

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename output variables
rename AN gp_q_coffee 
rename AO gp_v_coffee 
rename AP gp_q_spices
rename AQ gp_v_spices
rename AR gp_q_flavoringExtracts
rename AS gp_v_flavoringExtracts
rename AT gp_q_flavoringSirups
rename AU gp_v_flavoringSirups
rename AV gp_q_gelatine
rename AW gp_v_gelatine
rename AX gp_v_mayonnaise
rename AY gp_q_pancake
rename AZ gp_v_pancake
rename BA gp_q_mustard
rename BB gp_v_mustard
rename BC gp_q_peanuts
rename BD gp_v_peanuts
rename BE gp_q_peanutButter
rename BF gp_v_peanutButter
rename BG gp_q_preserves
rename BH gp_v_preserves
rename BI gp_s_other1
rename BJ gp_q_other1
rename BK gp_v_other1
rename BL gp_s_other2
rename BM gp_q_other2
rename BN gp_v_other2
rename BO gp_s_other3
rename BP gp_q_other3
rename BQ gp_v_other3
rename BR gp_s_other4
rename BS gp_q_other4
rename BT gp_v_other4
rename BU gp_s_other5
rename BV gp_q_other5
rename BW gp_v_other5
rename BX gp_v_roasting
rename BY g000v
