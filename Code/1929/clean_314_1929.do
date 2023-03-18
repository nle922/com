//rename variables for 1929, industry 314


//What are these variables?
drop CM
drop CN

//rename input variables
capture rename CO j_q_softwood
capture rename CP j_v_softwood
capture rename CQ j_q_hardwood
capture rename CR j_v_hardwood

//rename output variables
capture rename CS gp_q_doors
capture rename CT gp_v_doors
capture rename CU gp_q_sash
capture rename CV gp_v_sash
capture rename CW gp_q_window_door_frames
capture rename CX gp_v_window_door_frames
capture rename CY gp_q_window_door_screens
capture rename CZ gp_v_window_door_screens
capture rename DA gp_q_portable_houses
capture rename DB gp_v_portable_houses
capture rename DC gp_q_tanks_vats
capture rename DD gp_v_tanks_vats
capture rename DE gp_q_silow_stock
capture rename DF gp_v_silow_stock
capture rename DG gp_q_dressed_lumber
capture rename DH gp_v_dressed_lumber
capture rename DI gp_q_plywood
capture rename DJ gp_v_plywood
capture rename DK gp_v_moldings
capture rename DL gp_v_custom_planing
capture rename DM gp_v_box_wooden_lumber_noWire
capture rename DN gp_v_box_wooden_veneer_noWire
capture rename DO gp_v_box_wooden_lumber_wire
capture rename DP gp_v_other1
capture rename DQ g000v

//drop unused variables
drop DR
