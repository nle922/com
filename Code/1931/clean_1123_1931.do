//rename variables for industry 1123 in year 1931

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename output variables
rename AN gp_q_Can_Venthole
rename AO gp_v_Can_Venthole
rename AP gp_q_Can_Sanitary
rename AQ gp_v_Can_Sanitary
rename AR gp_q_Can_IceCream
rename AS gp_v_Can_IceCream
rename AT gp_q_Can_Milk
rename AU gp_v_Can_Milk
rename AV gp_s_Can_Other1
rename AW gp_q_Can_Other1
rename AX gp_v_Can_Other1
rename AY gp_q_Tinware_Stamped
rename AZ gp_v_Tinware_Stamped
rename BA gp_q_Tinware_Other
rename BB gp_v_Tinware_Other
rename BC gp_s_other1
rename BC gp_q_other1
rename BC gp_v_other1
rename BD g000v
