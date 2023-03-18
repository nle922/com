//clean industry 129 for year 1931

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename output variables
capture rename AO gp_q_sugar_granulated
capture rename AP gp_v_sugar_granulated
capture rename AQ gp_q_sugar_unfinished
capture rename AR gp_v_sugar_unfinished
capture rename AS gp_q_molasses_sold
capture rename AT gp_v_molasses_sold
capture rename AU gp_q_molasses_discarded
capture rename AV gp_v_molasses_discarded
capture rename AW gp_q_molasses_other
capture rename AX gp_v_molasses_other
capture rename AY gp_q_syrup
capture rename AZ gp_v_syrup
capture rename BA gp_q_beet_pulp_dried
capture rename BB gp_v_beet_pulp_dried
capture rename BC gp_q_beet_pulp_moist
capture rename BD gp_v_beet_pulp_moist
capture rename BE gp_q_beet_pulp_molasses
capture rename BF gp_v_beet_pulp_molasses
capture rename BG gp_q_other
capture rename BH gp_v_other
capture rename BI gp_s_other
capture rename BJ g000v

//rename input varibales 
capture rename BK j_factory_planted
capture rename BL j_factory_harvested
capture rename BM j_factory_beets_received
capture rename BN j_factory_beets_sliced
capture rename BO j_factory_cost_beets_received
capture rename BP j_tenants_planted
capture rename BQ j_tenants_harvested
capture rename BR j_tenants_beets_received 
capture rename BS j_tenants_beets_sliced
capture rename BT j_tenants_cost_beets_received
capture rename BU j_contract_planted
capture rename BV j_contract_harvested
capture rename BW j_contract_beets_received
capture rename BX j_contract_beets_sliced
capture rename BY j_contract_cost_beets_received
capture rename BZ j_purchased_beets_received
capture rename CA j_purchased_beets_sliced
capture rename CB j_purchased_cost_beets_received
capture rename CC j_other_beets_received
capture rename CD j_other_beets_sliced
capture rename CE j_other_cost_beets_received
capture rename CF j_q_transferred
capture rename CG j_v_transferred
capture rename CH j_location_received
capture rename CI j_location_transferred
capture rename CJ j_sucrose_percent
capture rename CK j_purity_coefficient
capture rename CL j_recovery_specify
