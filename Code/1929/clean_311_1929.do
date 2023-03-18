//rename variables for industry 311 in year 1929

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename output variables
capture rename BL gp_q_balsam_fir
capture rename BM gp_v_balsam_fir
capture rename BN gp_q_cedar
capture rename BO gp_v_cedar
capture rename BP gp_q_douglas_fir
capture rename BQ gp_v_douglas_fir
capture rename BR gp_q_cypress
capture rename BS gp_v_cypress
capture rename BT gp_q_hemlock
capture rename BU gp_v_hemlock
capture rename BV gp_q_southern_pine
capture rename BW gp_v_southern_pine
capture rename BX gp_q_spruce
capture rename BY gp_v_spruce
capture rename BZ gp_q_white_pine
capture rename CA gp_v_white_pine
capture rename CB gp_q_learch_tamarack
capture rename CC gp_v_learch_tamarack
capture rename CD gp_q_lodgepole_pine
capture rename CE gp_v_lodgepole_pine
capture rename CF gp_q_port_orford_cedar
capture rename CG gp_v_port_orford_cedar
capture rename CH gp_q_sugar_pine
capture rename CI gp_v_sugar_pine
capture rename CJ gp_q_western_pine
capture rename CK gp_v_western_pine
capture rename CL gp_q_white_fir
capture rename CM gp_v_white_fir
capture rename CN gp_q_alder
capture rename CO gp_v_alder
capture rename CP gp_q_ash
capture rename CQ gp_v_ash
capture rename CR gp_q_basswood
capture rename CS gp_v_basswood
capture rename CT gp_q_beech
capture rename CU gp_v_beech
capture rename CV gp_q_birch
capture rename CW gp_v_birch
capture rename CX gp_q_chestnut
capture rename CY gp_v_chestnut
capture rename CZ gp_q_cottonwood
capture rename DA gp_v_cottonwood
capture rename DB gp_q_elm
capture rename DC gp_v_elm
capture rename DD gp_q_gum
capture rename DE gp_v_gum
capture rename DF gp_q_hickory
capture rename DG gp_v_hickory
capture rename DH gp_q_maple
capture rename DI gp_v_maple
capture rename DJ gp_q_oak
capture rename DK gp_v_oak
capture rename DL gp_q_sycamore
capture rename DM gp_v_sycamore
capture rename DN gp_q_tupelo
capture rename DO gp_v_tupelo
capture rename DP gp_q_walnut
capture rename DQ gp_v_walnut
capture rename DR gp_q_yellow_poplar
capture rename DS gp_v_yellow_poplar
capture rename DT gp_s_other1
capture rename DU gp_q_other1
capture rename DV gp_v_other1
capture rename DW gp_s_other2
capture rename DX gp_q_other2
capture rename DY gp_v_other2
capture rename DZ gp_s_other3
capture rename EA gp_q_other3
capture rename EB gp_v_other3
capture rename EC g000v
drop ED

