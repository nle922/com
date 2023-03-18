//rename variables for industry 1210 in 1933

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename output variables
rename AR gp_v_jewelry_platinum
rename AS gp_v_jewelry_solid_gold
rename AT gp_v_jewelry_filled_gold
rename AU gp_v_jewelry_sterling_silver
rename AV gp_v_jewelryEP_gold_plated
rename AW gp_v_jewelryEP_silver_plated
rename AX gp_v_jewelryEP_platinum_plated
rename AY gp_v_jewelryEP_other_plated
rename AZ gp_s_other_jewelry_1
rename BA gp_v_other_jewelry_1
rename BB gp_s_other_jewelry_2
rename BC gp_v_other_jewelry_2
rename BD gp_v_jewelry_findings
rename BE gp_v_jewelers_materials_stock
rename BF gp_v_jewelers_materials_platinum
rename BG gp_s_other_products_1
rename BH gp_v_other_products_1
rename BI gp_s_other_products_2
rename BJ gp_v_other_products_2
rename BK gp_s_other_products_3
rename BL gp_v_other_products_3
//These have special variable names
rename BM receipts_contract_work
rename BN g000v

rename BO ewemt
