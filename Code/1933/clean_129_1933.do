//rename variables for industry 129 in year 1933

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename output variables
capture rename AT gp_q_sugar_granulated
capture rename AU gp_v_sugar_granulated
capture rename AV gp_q_sugar_unfinished
capture rename AW gp_v_sugar_unfinished
capture rename AX gp_q_molasses_sold
capture rename AY gp_v_molasses_sold
capture rename AZ gp_q_molasses_discarded
capture rename BA gp_v_molasses_discarded
capture rename BB gp_q_molasses_other
capture rename BC gp_v_molasses_other
capture rename BD gp_q_syrup
capture rename BE gp_v_syrup
capture rename BF gp_q_beet_pulp_dried
capture rename BG gp_v_beet_pulp_dried
capture rename BH gp_q_beet_pulp_moist
capture rename BI gp_v_beet_pulp_moist
capture rename BJ gp_q_beet_pulp_molasses
capture rename BK gp_v_beet_pulp_molasses
capture rename BL gp_q_other
capture rename BM gp_v_other
capture rename BN gp_s_other
capture rename BO g000v
