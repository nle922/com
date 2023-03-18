//rename variables for industry 311 in 1931

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//clean up a few variables that are not in same columns as in rename_common_1931
//Should these be dropped?
drop f009
drop f004
drop AN 
drop AO 
rename AP f009

//rename output variables
capture rename AQ gp_q_logs_produced
capture rename AR gp_q_logs_used
capture rename AS gp_v_logs_sold
capture rename AT gp_v_all_other_timber
capture rename AU g000v
capture rename AV gp_q_balsam_fir
capture rename AW gp_v_balsam_fir
capture rename AX gp_q_cedar
capture rename AY gp_v_cedar
capture rename AZ gp_q_douglas_fir
capture rename BA gp_v_douglas_fir
capture rename BB gp_q_cypress
capture rename BC gp_v_cypress
capture rename BD gp_q_hemlock
capture rename BE gp_v_hemlock
capture rename BF gp_q_southern_pine
capture rename BG gp_v_southern_pine
capture rename BH gp_q_spruce
capture rename BI gp_v_spruce
capture rename BJ gp_q_spruce2
capture rename BK gp_v_spruce2
capture rename BL gp_q_white_pine
capture rename BM gp_v_white_pine
capture rename BN gp_q_idaho_white_pine
capture rename BO gp_v_idaho_white_pine
capture rename BP gp_q_tamarack
capture rename BQ gp_v_tamarack
capture rename BR gp_q_larch
capture rename BS gp_v_larch
capture rename BT gp_q_lodgepole_pine
capture rename BU gp_v_lodgepole_pine
capture rename BV gp_q_port_orford_cedar
capture rename BW gp_v_port_orford_cedar
capture rename BX gp_q_sugar_pine
capture rename BY gp_v_sugar_pine
capture rename BZ gp_q_western_pine
capture rename CA gp_v_western_pine
capture rename CB gp_q_white_fir
capture rename CC gp_v_white_fir
capture rename CD gp_q_alder
capture rename CE gp_v_alder
capture rename CF gp_q_ash
capture rename CG gp_v_ash
capture rename CH gp_q_basswood
capture rename CI gp_v_basswood
capture rename CJ gp_q_beech
capture rename CK gp_v_beech
capture rename CL gp_q_birch
capture rename CM gp_v_birch
capture rename CN gp_q_chestnut
capture rename CO gp_v_chestnut
capture rename CP gp_q_cottonwood
capture rename CQ gp_v_cottonwood
capture rename CR gp_q_elm
capture rename CS gp_v_elm
capture rename CT gp_q_gum
capture rename CU gp_v_gum
capture rename CV gp_q_hickory
capture rename CW gp_v_hickory
capture rename CX gp_q_maple
capture rename CY gp_v_maple
capture rename CZ gp_q_oak
capture rename DA gp_v_oak
capture rename DB gp_q_sycamore
capture rename DC gp_v_sycamore
capture rename DD gp_q_tupelo
capture rename DE gp_v_tupelo
capture rename DF gp_q_walnut
capture rename DG gp_v_walnut
capture rename DH gp_q_yellow_poplar
capture rename DI gp_v_yellow_poplar
capture rename DJ gp_q_other1
capture rename DK gp_v_other1
capture rename DL gp_s_other1
capture rename DM gp_q_other2
capture rename DN gp_v_other2
capture rename DO gp_s_other2
capture rename DP gp_q_other3
capture rename DQ gp_v_other3
capture rename DR gp_s_other3
drop DS
drop DT
