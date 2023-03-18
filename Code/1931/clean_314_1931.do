//rename variables for industry 314 in 1931


//rename output variables
capture rename AN gp_q_doors_dwellings
capture rename AO gp_v_doors_dwellings
capture rename AP gp_q_doors_other
capture rename AQ gp_v_doors_other
capture rename AR gp_q_sash
capture rename AS gp_v_sash
capture rename AT gp_q_window_door_frames
capture rename AU gp_v_window_door_frames
capture rename AV gp_q_window_door_screens
capture rename AW gp_v_window_door_screens
capture rename AX gp_q_portable_houses
capture rename AY gp_v_portable_houses
capture rename AZ gp_q_tanks_vats
capture rename BA gp_v_tanks_vats
capture rename BB gp_q_silow_stock
capture rename BC gp_v_silow_stock
capture rename BD gp_q_dressed_lumber
capture rename BE gp_v_dressed_lumber
capture rename BF gp_q_plywood
capture rename BG gp_v_plywood
capture rename BH gp_v_moldings
capture rename BI gp_v_builtIn_furniture
capture rename BJ gp_v_battery_separators
capture rename BK gp_v_custom_planing
capture rename BL gp_v_box_wooden_lumber_noWire
capture rename BM gp_v_box_wooden_veneer_noWire
capture rename BN gp_v_box_wooden_lumber_wire
capture rename BO gp_v_other1
capture rename BP gp_s_other1
capture rename BQ gp_v_other2
capture rename BR gp_s_other2
capture rename BS gp_v_other3
capture rename BT gp_s_other3
capture rename BU g000v
rename BV f008

drop BW BX BY

