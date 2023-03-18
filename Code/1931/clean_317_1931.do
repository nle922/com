//rename variables for industry 317 in 1931

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename output variables
rename AN gp_q_Spirits
rename AO gp_v_Spirits 
rename AP gp_q_Rosin
rename AQ gp_v_Rosin
rename AR gp_q_Dross
rename AS gp_v_Dross
rename AT gp_s_Other_Rosin 
rename AU gp_q_Other_Rosin 
rename AV gp_v_Other_Rosin
rename AW gp_v_receipts_distilling 
rename AX g000v
rename AY gp_q_TurpentineForOthers
rename AZ gp_q_RosinForOthers
rename BO gp_q_CrudeTurpentine

//rename inventory variables
rename BA inv_q_Turpentine
rename BB inv_q_Rosin

//rename input variables
rename BC j_q_cupsVirgin
rename BD j_q_boxesVirgin
rename BE j_q_totalVirgin
rename BF j_q_cupsYearling
rename BG j_q_boxesYearling
rename BH j_q_totalYearling
rename BI j_q_cupsThirdSubsequent
rename BJ j_q_boxesThirdSubsequent
rename BK j_q_totalThirdSubsequent
rename BL j_q_cupsTotal
rename BM j_q_boxesTotal
rename BN j_q_cupBoxesTotal

drop BP
