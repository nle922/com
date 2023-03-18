//rename variables for industry 1123 in year 1933

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename output variables
rename AR gp_q_Can_Venthole
rename AS gp_v_Can_Venthole
rename AT gp_q_Can_Sanitary
rename AU gp_v_Can_Sanitary
rename AV gp_q_Can_IceCream
rename AW gp_v_Can_IceCream
rename AX gp_q_Can_Milk
rename AY gp_v_Can_Milk
rename AZ gp_q_Can_other1
rename BA gp_v_Can_other1
rename BB gp_s_Can_other1
rename BC gp_q_Tinware_Stamped
rename BD gp_v_Tinware_Stamped 
rename BE gp_q_Tinware_Other
rename BF gp_v_Tinware_Other
rename BG gp_v_allOther1
rename BH gp_s_allOther1
rename BI g000v
