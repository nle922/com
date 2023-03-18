//rename variables for industry 126 in year 1931

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename output variables
rename AN gp_u_Chickens
rename AO gp_q_Chickens
rename AP gp_v_Chickens
rename AQ gp_u_Ducks
rename AR gp_q_Ducks
rename AS gp_v_Ducks
rename AT gp_u_Geese			
rename AU gp_q_Geese			
rename AV gp_v_Geese			
rename AW gp_u_Turkeys
rename AX gp_q_Turkeys
rename AY gp_v_Turkeys
rename AZ gp_s_Dressed_Other
rename BA gp_u_Dressed_Other
rename BB gp_q_Dressed_Other
rename BC gp_v_Dressed_Other
rename BD gp_s_Poultry_canned_whole
rename BE gp_u_Poultry_canned_whole
rename BF gp_q_Poultry_canned_whole
rename BG gp_v_Poultry_canned_whole
rename BH gp_u_Poultry_canned_parts
rename BI gp_s_Poultry_canned_parts
rename BJ gp_q_Poultry_canned_parts
rename BK gp_v_Poultry_canned_parts
rename BL gp_u_Chicken_potted
rename BM gp_q_Chicken_potted
rename BN gp_v_Chicken_potted
rename BO gp_u_Chicken_broth
rename BP gp_q_Chicken_broth
rename BQ gp_v_Chicken_broth
rename BR gp_u_Feathers
rename BS gp_q_Feathers
rename BT gp_v_Feathers
rename BU gp_s_Rabbits
rename BV gp_u_Rabbits
rename BW gp_q_Rabbits
rename BX gp_v_Rabbits
rename BY gp_s_Poultry_Other1
rename BZ gp_v_Poultry_Other1
rename CA gp_s_Poultry_Other2
rename CB gp_v_Poultry_Other2
rename CC gp_s_Poultry_Other3
rename CD gp_v_Poultry_Other3
rename CE gp_v_all_other
rename CF gp_v_contract_work
rename CG g000v
