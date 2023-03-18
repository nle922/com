//rename variables for industry 118 in year 1935

//rename output variables
rename DD gp_q_ice_cream
rename DE gp_v_ice_cream
rename DF gp_q_ices_sherbets
rename DG gp_v_ices_sherbets 
rename DH gp_q_specialties
rename DI gp_v_specialties
rename DJ gp_q_ice_cream_mix
rename DK gp_v_ice_cream_mix
rename DL gp_q_ice_sale
rename DM gp_v_ice_sale
rename DN gp_q_ice_consumed
rename DO gp_v_ice_consumed 
rename DP gp_q_butter
rename DQ gp_v_butter
rename DR gp_q_cheese
rename DS gp_v_cheese
rename DT gp_q_condensed_milk
rename DU gp_v_condensed_milk
rename DV gp_q_evaporated_milk
rename DW gp_v_evaporated_milk
rename DX gp_q_confectionery
rename DY gp_v_confectionery
rename DZ gp_q_beverages
rename EA gp_v_beverages
rename EB gp_s_other1
rename EC gp_v_other1
rename ED gp_s_other2
rename EE gp_v_other2
rename EF gp_s_other3
rename EG gp_v_other3
rename EH gp_v_other4

// Receipts for electrical, contract work, custom work.  *NOTE* that i totally invented f008 for "custom work"
rename EI fe001ks
drop EJ 
rename EK f008

rename EL g000v


//rename distribution method variables
capture rename EJ wholesale_exclusive
capture rename EK retail_exclusive
capture rename EL wholesale_and_retail

//rename input variables
capture rename EP j_q_milk_fluid
capture rename EQ j_v_milk_fluid
capture rename ER j_q_milk_powdered
capture rename ES j_v_milk_powdered
capture rename ET j_q_milk_evaporated
capture rename EU j_v_milk_evaporated
capture rename EV j_q_cream
capture rename EW j_v_cream
capture rename EX j_q_ice_cream_mix
capture rename EY j_v_ice_cream_mix
capture rename EZ j_q_creamery_butter
capture rename FA j_v_creamery_butter
capture rename FB j_q_sugar
capture rename FC j_v_sugar
capture rename FD j_v_flavors
capture rename FE j_v_eggs
capture rename FF j_q_butter_fat
capture rename FG j_v_butter_fat
capture rename FH j_s_other1
capture rename FI j_q_other1
capture rename FJ j_v_other1
capture rename FK j_s_other2
capture rename FL j_q_other2
capture rename FM j_v_other2

//rename capital variables 
capture rename FO z_vehicles_horse 
capture rename FP z_vehicles_gasoline
capture rename FQ z_vehicles_electric
drop FR FS
