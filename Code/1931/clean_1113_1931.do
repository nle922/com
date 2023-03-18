//rename variables for industry 1113 in 1931

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename output variables
rename AN gp_q_cutNails
rename AO gp_v_cutNails
rename AP gp_q_wireNails_bright
rename AQ gp_v_wireNails_bright
rename AR gp_q_wireNails_galvanized
rename AS gp_v_wireNails_galvanized
rename AT gp_q_wireNails_cement
rename AU gp_q_wireNails_cement
rename AV gp_s_wireNails_other
rename AW gp_q_wireNails_other
rename AX gp_q_wireNails_other
rename AY gp_q_cutTacks
rename AZ gp_v_cutTacks
rename BA gp_q_wireTacks
rename BB gp_v_wireTacks
rename BC gp_q_horseshoeNails
rename BD gp_v_horseshoeNails
rename BE gp_q_railroadSpikes
rename BF gp_v_railroadSpikes
rename BG gp_q_staples
rename BH gp_v_staples
rename BI gp_q_copperNails
rename BJ gp_v_copperNails
rename BK gp_s_other1
rename BL gp_q_other1
rename BM gp_v_other1
rename BN gp_s_other2
rename BO gp_q_other2
rename BP gp_v_other2
rename BQ gp_s_other3
rename BR gp_q_other3
rename BS gp_v_other3
rename BT gp_s_other4
rename BU gp_q_other4
rename BV gp_v_other4
rename BW g000v

//rename input variables
rename BX j_s_wireNail_Machines
rename BY j_q_wireNail_Machines
