//label variables for industry 118 in year 1929


//label output variables
capture rename CM gp_q_ice_cream
capture rename CN gp_v_ice_cream
capture rename CO gp_q_ices_sherbets
capture rename CP gp_v_ices_sherbets
capture rename CQ gp_q_specialties
capture rename CR gp_v_specialties
capture rename CS gp_q_ice_cream_mix
capture rename CT gp_v_ice_cream_mix
capture rename CU gp_q_ice_sale
capture rename CV gp_v_ice_sale
capture rename CW gp_q_ice_consumed
capture rename CX gp_q_butter
capture rename CY gp_v_butter
capture rename CZ gp_q_confectionery
capture rename DA gp_v_confectionery
capture rename DB gp_s_other1
capture rename DC gp_v_other1
capture rename DD contract_work
capture rename DE g000v

//Have never seen the following three variables before, so just made up a name for them.
capture rename DF wholesale_exclusive
capture rename DG retail_exclusive
capture rename DH wholesale_and_retail

//label input variables
capture rename DI j_q_milk_fluid
capture rename DJ j_v_milk_fluid
capture rename DK j_q_milk_powdered
capture rename DL j_v_milk_powdered
capture rename DM j_q_milk_evaporated
capture rename DN j_v_milk_evaporated
capture rename DO j_q_cream
capture rename DP j_v_cream
capture rename DQ j_q_sugar
capture rename DR j_v_sugar
capture rename DS j_q_eggs
capture rename DT j_v_eggs
drop DU		//redundant

//rename capital measures
capture rename DV z_vehicles_horse 
capture rename DW z_vehicles_gasoline
capture rename DX z_vehicles_electric
