//rename variables for industry 311 in year 1935
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//NLZ: need to rename these energy variables properly
drop energy_sold
drop energy_purchased_q
drop energy_purchased_v
drop DD

//rename output variables
rename DE gp_q_logs_produced 
rename DF gp_q_logs_used 
rename DG gp_q_logs_sold 
rename DH gp_v_logs_sold 
rename DI gp_v_all_other_timber 
rename DJ gp_v_contract_logging 
rename DK gp_q_rough_lumber_produced 
rename DL gp_q_rough_lumber_used 
rename DM gp_q_rough_lumber_sold 
rename DN gp_v_rough_lumber_sold
rename DO gp_q_shingles 
rename DP gp_v_shingles 
rename DQ gp_q_lath 
rename DR gp_v_lath 
rename DS gp_v_veneers 
rename DT gp_v_slack_cooperage 
rename DU gp_v_tight_cooperage 
rename DV gp_v_other_sawmill_products
rename DW gp_v_custom_sawing
rename DX gp_q_doors_construction_pine 
rename DY gp_v_doors_construction_pine  
rename DZ gp_q_doors_construction_fir 
rename EA gp_v_doors_construction_fir 
rename EB gp_q_doors_construction_hardwood 
rename EC gp_v_doors_construction_hardwood 
rename ED gp_q_doors_construction_other
rename EE gp_v_doors_construction_other 
rename EF gp_q_doors_garage 
rename EG gp_v_doors_garage 
rename EH gp_s_doors_other1 
rename EI gp_q_doors_other1 
rename EJ gp_v_doors_other1 
rename EK gp_s_doors_other2 
rename EL gp_q_doors_other2 
rename EM gp_v_doors_other2 
rename EN gp_s_doors_other3 
rename EO gp_q_doors_other3 
rename EP gp_v_doors_other3 
rename EQ gp_q_sash 
rename ER gp_v_sash
rename ES gp_q_window_door_frames
rename ET gp_v_window_door_frames 
rename EU gp_q_window_door_screens 
rename EV gp_v_window_door_screens 
rename EW gp_q_portable_houses 
rename EX gp_v_portable_houses 
rename EY gp_q_tanks_vats 
rename EZ gp_v_tanks_vats 
rename FA gp_q_venetian_blinds
rename FB gp_v_venetian_blinds
rename FC gp_q_silow_stock 
rename FD gp_v_silow_stock 
rename FE gp_q_dressed_lumber
rename FF gp_v_dressed_lumber 
rename FG gp_q_plywood_utility 
rename FH gp_v_plywood_utility 
rename FI gp_q_plywood_plain 
rename FJ gp_v_plywood_plain 
rename FK gp_v_builtIn_furniture 
rename FL gp_v_battery_separators 
rename FM gp_v_moldings 
rename FN gp_v_custom_planing 
rename FO gp_v_box_wdn_lmbr_noWire_FV  
rename FP gp_v_box_wdn_lmbr_noWire_ind
rename FQ gp_v_box_wdn_lmbr_noWire 
rename FR gp_v_box_wdn_lmbr_wire_FV
rename FS gp_v_box_wdn_lmbr_wire_ind
rename FT gp_v_box_wdn_lmbr_wire
rename FU gp_v_box_wdn_vnr_noWire_FV
rename FV gp_v_box_wdn_vnr_noWire_ind 
rename FW gp_v_box_wdn_vnr_noWire 
rename FX gp_v_box_wdn_vnr_wire_FV 
rename FY gp_v_box_wdn_vnr_wire_ind 
rename FZ gp_v_box_wdn_vnr_wire 
rename GA gp_v_box_wooden_combo_FV 
rename GB gp_v_box_wooden_combo_ind 
rename GC gp_v_box_wooden_combo 
rename GD gp_v_baskets_veneer_FV 
rename GE gp_v_baskets_veneer_ind 
rename GF gp_v_baskets_veneer 
rename GG gp_v_baskets_reed_FV 
rename GH gp_v_baskets_reed_ind
rename GI gp_v_baskets_reed 
rename GJ gp_v_baskets_other_FV 
rename GK gp_v_baskets_other_ind 
rename GL gp_v_baskets_other 
rename GM gp_s_other1 
rename GN gp_v_other1 
rename GO gp_s_other2
rename GP gp_v_other2 
rename GQ gp_s_other3
rename GR gp_v_other3 
rename GS gp_s_other4 
rename GT gp_v_other4 
drop GU 
rename GV g000v 
rename GW g001v 

//rename capital variables
rename GX z_s_sawmills 
rename GY z_q_sawmills 
rename GZ z_inventory_lumber_beginning 
rename HA z_inventory_lumber_end 
