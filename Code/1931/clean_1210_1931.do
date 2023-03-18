//rename variables for industry 1210 in year 1931

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename output variables
rename AN gp_v_jewelry_platinum
rename AO gp_v_jewelry_solid_gold
rename AP gp_v_jewelry_filled_gold
rename AQ gp_v_jewelry_solid_silver
rename AR gp_v_jewelryEP_gold_plated
rename AS gp_v_jewelryEP_silver_plated
rename AT gp_v_jewelryEP_platinum_plated
rename AU gp_v_jewelryEP_other_plated
rename AV gp_s_other_jewelry_1
rename AW gp_v_other_jewelry_1
rename AX gp_s_other_jewelry_2
rename AY gp_v_other_jewelry_2
rename AZ gp_v_jewelry_findings
rename BA gp_v_jewelers_materials_stock
rename BB gp_v_jewelers_materials_platinum
rename BC gp_s_other1
rename BD gp_v_other1
rename BE gp_s_other2
rename BF gp_v_other2
rename BG gp_s_other3
rename BH gp_v_other3
rename BI gp_s_other4
rename BJ gp_v_other4
rename BK gp_s_other5
rename BL gp_v_other5
rename BM gp_s_other6
rename BN gp_v_other6
rename BO gp_v_all_other_products
rename BP gp_v_contract_work
rename BQ gp_v_custom_work
rename BR g000v

rename BS ewemt
drop BT
