//rename variables for industry 1307 in year 1931

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename output variables
rename AN gp_q_bendingMachine
rename AO gp_v_bendingMachine 
rename AP gp_q_boringHorizontal 
rename AQ gp_v_boringHorizontal 
rename AR gp_q_boringVert_general 
rename AS gp_v_boringVert_general
rename AT gp_q_boringVert_heavy  
rename AU gp_v_boringVert_heavy  
rename AV gp_q_boring_special
rename AW gp_v_boring_special 
rename AX gp_q_boring_special_turning 
rename AY gp_v_boring_special_turning 
rename AZ gp_s_boring_other1 
rename BA gp_q_boring_other1 
rename BB gp_v_boring_other1 
rename BC gp_s_boring_other2 
rename BD gp_q_boring_other2 
rename BE gp_v_boring_other2 
rename BF gp_q_broaching
rename BG gp_v_broaching 
rename BH gp_q_cutting_off_auto 
rename BI gp_v_cutting_off_auto 
rename BJ gp_q_cutting_off_band 
rename BK gp_v_cutting_off_band 
rename BL gp_q_cutting_off_coldsaw 
rename BM gp_v_cutting_off_coldsaw 
rename BN gp_q_cutting_off_hacksaw 
rename BO gp_v_cutting_off_hacksaw
rename BP gp_q_drilling_auto 
rename BQ gp_v_drilling_auto 
rename BR gp_q_drilling_bench 
rename BS gp_v_drilling_bench
rename BT gp_q_drilling_horizSingle 
rename BU gp_v_drilling_horizSingle 
rename BV gp_q_drilling_horizMult 
rename BW gp_v_drilling_horizMult
rename BX gp_q_drilling_vertMult
rename BY gp_v_drilling_vertMult 
rename BZ gp_q_drilling_vertUniv 
rename CA gp_v_drilling_vertUniv 
rename CB gp_q_drilling_vertStd
rename CC gp_v_drilling_vertStd 
rename CD gp_q_drilling_sensitiveSing
rename CE gp_v_drilling_sensitiveSing
rename CF gp_q_drilling_sensitiveMult
rename CG gp_v_drilling_sensitiveMult 
rename CH gp_q_drilling_radialPlain 
rename CI gp_v_drilling_radialPlain 
rename CJ gp_q_drilling_radialUniv 
rename CK gp_v_drilling_radialUniv
rename CL gp_q_drilling_combined 
rename CM gp_v_drilling_combined 
rename CN gp_v_drilling_other 
rename CO gp_q_honing 
rename CP gp_v_honing
rename CQ gp_q_forging_bulldozer
rename CR gp_v_forging_bulldozer 
rename CS gp_q_forging_bolt 
rename CT gp_v_forging_bolt 
rename CU gp_s_forging_other 
rename CV gp_v_forging_other 
rename CW gp_q_gearCutting_hobbing 
rename CX gp_v_gearCutting_hobbing 
rename CY gp_q_gearCutting_spur 
rename CZ gp_v_gearCutting_spur 
rename DA gp_q_gearCutting_bevel 
rename DB gp_v_gearCutting_bevel 
rename DC gp_q_gearCutting_generator 
rename DD gp_v_gearCutting_generator 
rename DE gp_q_grinding_cutter
rename DF gp_v_grinding_cutter
rename DG gp_q_grinding_drill 
rename DH gp_v_grinding_drill
rename DI gp_q_grinding_disk 
rename DJ gp_v_grinding_disk 
rename DK gp_q_grinding_externalPl
rename DL gp_v_grinding_externalPl 
rename DM gp_q_grinding_externalUniv
rename DN gp_v_grinding_externalUniv  
rename DO gp_q_grinding_internal  
rename DP gp_v_grinding_internal
rename DQ gp_q_grinding_sufaceHoriz  
rename DR gp_v_grinding_sufaceHoriz  
rename DS gp_q_grinding_sufaceVert  
rename DT gp_v_grinding_sufaceVert 
rename DU gp_q_grinding_wet 
rename DV gp_v_grinding_wet 
rename DW gp_s_grinding_other1 
rename DX gp_q_grinding_other1 
rename DY gp_v_grinding_other1 
rename DZ gp_s_grinding_other2 
rename EA gp_q_grinding_other2 
rename EB gp_v_grinding_other2 
rename EC gp_q_hammers_steamSingle 
rename ED gp_v_hammers_steamSingle 
rename EE gp_q_hammers_steamDouble 
rename EF gp_v_hammers_steamDouble 
rename EG gp_q_hammers_air 
rename EH gp_v_hammers_air 
rename EI gp_q_hammers_drop 
rename EJ gp_v_hammers_drop 
rename EK gp_q_hammers_power
rename EL gp_v_hammers_power 
rename EM gp_s_hammers_other 
rename EN gp_q_hammers_other 
rename EO gp_v_hammers_other 
rename EP gp_q_keyseaters 
rename EQ gp_v_keyseaters 
rename ER gp_q_lathes_bench 
rename ES gp_v_lathes_bench 
rename ET gp_q_lathes_engine
rename EU gp_v_lathes_engine 
rename EV gp_q_lathes_engine_under16
rename EW gp_v_lathes_engine_under16 
rename EX gp_q_lathes_engine_16_22 
rename EY gp_v_lathes_engine_16_22
rename EZ gp_q_lathes_engine_22_36
rename FA gp_v_lathes_engine_22_36
rename FB gp_q_lathes_heavy
rename FC gp_v_lathes_heavy 
rename FD gp_q_lathes_gap 
rename FE gp_v_lathes_gap 
rename FF gp_q_lathes_hand 
rename FG gp_v_lathes_hand 
rename FH gp_q_lathes_polishing 
rename FI gp_v_lathes_polishing
rename FJ gp_q_lathes_automaticSingle_bar
rename FK gp_v_lathes_automaticSingle_bar 
rename FL gp_q_lathes_automaticSingle_chucking 
rename FM gp_v_lathes_automaticSingle_chucking 
rename FN gp_q_lathes_automaticMult_bar 
rename FO gp_v_lathes_automaticMult_bar 
rename FP gp_q_lathes_automaticMult_chucking 
rename FQ gp_v_lathes_automaticMult_chucking  
rename FR gp_q_lathes_turret_horizRam 
rename FS gp_v_lathes_turret_horizRam 
rename FT gp_q_lathes_turret_horizSaddle_std 
rename FU gp_v_lathes_turret_horizSaddle_std  
rename FV gp_q_lathes_turret_horizSaddle_heavy
rename FW gp_v_lathes_turret_horizSaddle_heavy 
rename FX gp_q_lathes_turret_vert_hand 
rename FY gp_v_lathes_turret_vert_hand 
rename FZ gp_q_lathes_turret_vert_auto 
rename GA gp_v_lathes_turret_vert_auto 
rename GB gp_q_milling_hand 
rename GC gp_v_milling_hand 
rename GD gp_q_milling_power_auto 
rename GE gp_v_milling_power_auto 
rename GF gp_q_milling_power_plain
rename GG gp_v_milling_power_plain 
rename GH gp_q_milling_power_univ 
rename GI gp_v_milling_power_univ 
rename GJ gp_q_milling_power_vert 
rename GK gp_v_milling_power_vert 
rename GL gp_q_milling_power_lincoln 
rename GM gp_v_milling_power_lincoln 
rename GN gp_q_milling_power_planer 
rename GO gp_v_milling_power_planer 
rename GP gp_s_milling_power_other1
rename GQ gp_q_milling_power_other1
rename GR gp_v_milling_power_other1
rename GS gp_s_milling_power_other2
rename GT gp_q_milling_power_other2
rename GU gp_v_milling_power_other2
rename GV gp_s_milling_power_other3
rename GW gp_q_milling_power_other3
rename GX gp_v_milling_power_other3 
rename GY gp_q_planer_under36 
rename GZ gp_v_planer_under36 
rename HA gp_q_planer_over36
rename HB gp_v_planer_over36 
rename HC gp_q_planer_openSide 
rename HD gp_v_planer_openSide 
rename HE gp_s_planer_special1 
rename HF gp_q_planer_special1
rename HG gp_v_planer_special1 
rename HH gp_s_planer_special2 
rename HI gp_q_planer_special2 
rename HJ gp_v_planer_special2 
rename HK gp_q_pipecutting_single 
rename HL gp_v_pipecutting_single 
rename HM gp_q_pipecutting_mult 
rename HN gp_v_pipecutting_mult 
rename HO gp_q_portable_drill_elec
rename HP gp_v_portable_drill_elec 
rename HQ gp_q_portable_drill_pneu 
rename HR gp_v_portable_drill_pneu
rename HS gp_q_portable_grinder_elec 
rename HT gp_v_portable_grinder_elec 
rename HU gp_q_portable_grinder_pneu 
rename HV gp_v_portable_grinder_pneu 
rename HW gp_q_portable_hammer_elec 
rename HX gp_v_portable_hammer_elec 
rename HY gp_q_portable_hammer_pneu 
rename HZ gp_v_portable_hammer_pneu 
rename IA gp_q_portable_woodworking_elec 
rename IB gp_v_portable_woodworking_elec 
rename IC gp_s_portable_woodworking_other1 
rename ID gp_q_portable_woodworking_other1 
rename IE gp_v_portable_woodworking_other1 
rename IF gp_s_portable_woodworking_other2 
rename IG gp_q_portable_woodworking_other2 
rename IH gp_v_portable_woodworking_other2
rename II gp_s_portable_other1
rename IJ gp_q_portable_other1 
rename IK gp_v_portable_other1
rename IL gp_s_portable_other2 
rename IM gp_q_portable_other2 
rename IN gp_v_portable_other2 
rename IO gp_q_portable_flexShaft
rename IP gp_v_portable_flexShaft 
rename IQ gp_q_press_arbor 
rename IR gp_v_press_arbor 
rename IS gp_q_press_forming
rename IT gp_v_press_forming 
rename IU gp_q_press_hand
rename IV gp_v_press_hand
rename IW gp_q_press_hydraulic 
rename IX gp_v_press_hydraulic
rename IY gp_q_press_stampingFoot 
rename IZ gp_v_press_stampingFoot 
rename JA gp_q_press_stampingPower 
rename JB gp_v_press_stampingPower 
rename JC gp_q_press_punch 
rename JD gp_v_press_punch
rename JE gp_q_press_other 
rename JF gp_v_press_other 
rename JG gp_q_punching_notPortable
rename JH gp_v_punching_notPortable 
rename JI gp_q_riveting_light
rename JJ gp_v_riveting_light
rename JK gp_q_riveting_heavy
rename JL gp_v_riveting_heavy 
rename JM gp_q_sharper_vert 
rename JN gp_v_sharper_vert 
rename JO gp_q_sharper_horizUnder20 
rename JP gp_v_sharper_horizUnder20 
rename JQ gp_q_sharper_horizOver20
rename JR gp_v_sharper_horizOver20 
rename JS gp_q_sharper_horizOver28 
rename JT gp_v_sharper_horizOver28 
rename JU gp_q_shears_alligator
rename JV gp_v_shears_alligator 
rename JW gp_q_shears_comboPunch 
rename JX gp_v_shears_comboPunch 
rename JY gp_q_shears_rotary 
rename JZ gp_v_shears_rotary 
rename KA gp_q_shears_straight 
rename KB gp_v_shears_straight 
rename KC gp_s_shears_other1 
rename KD gp_q_shears_other1 
rename KE gp_v_shears_other1 
rename KF gp_q_slotters 
rename KG gp_v_slotters 
rename KH gp_q_threading_die 
rename KI gp_v_threading_die 
rename KJ gp_q_threading_milling
rename KK gp_v_threading_milling
rename KL gp_q_threading_rolling 
rename KM gp_v_threading_rolling 
rename KN gp_q_threading_tapping 
rename KO gp_v_threading_tapping 
rename KP gp_s_machineTool_other1 
rename KQ gp_q_machineTool_other1 
rename KR gp_v_machineTool_other1 
rename KS gp_s_replacement1
rename KT gp_q_replacement1 
rename KU gp_v_replacement1 
rename KV gp_s_replacement2 
rename KW gp_q_replacement2 
rename KX gp_v_replacement2 
rename KY gp_s_replacement3 
rename KZ gp_q_replacement3 
rename LA gp_v_replacement3 
rename LB gp_s_replacement4 
rename LC gp_q_replacement4 
rename LD gp_v_replacement4 
rename LE gp_s_replacement5 
rename LF gp_q_replacement5 
rename LG gp_v_replacement5 
rename LH gp_v_attachment_chucksDrills 
rename LI gp_v_attachment_chucksLathes 
rename LJ gp_v_attachment_chucksMagnetic
rename LK gp_v_attachment_vises
rename LL gp_v_attachment_boring
rename LM gp_v_attachment_drilling
rename LN gp_v_attachment_lathe
rename LO gp_v_attachment_milling
rename LP gp_v_attachment_other 
rename LQ gp_v_special_jigs 
rename LR gp_v_special_subpresses 
rename LS gp_v_special_diecasting 
rename LT gp_v_special_tools_screw
rename LU gp_v_special_tools_designed 
rename LV gp_v_special_machinery 
rename LW gp_s_special_other1
rename LX gp_v_special_other1 
rename LY gp_s_special_other2 
rename LZ gp_v_special_other2 
rename MA gp_s_special_other3 
rename MB gp_v_special_other3 
rename MC gp_s_special_other4 
rename MD gp_v_special_other4 
rename ME gp_s_special_other5 
rename MF gp_v_special_other5 
rename MG gp_s_special_other6 
rename MH gp_v_special_other6 
rename MI gp_v_smallTools_arbors
rename MJ gp_v_smallTools_collets
rename MK gp_v_smallTools_counterbores 
rename ML gp_v_smallTools_countersinks
rename MM gp_v_smallTools_drills_carbon
rename MN gp_v_smallTools_drills_HS
rename MO gp_v_smallTools_hobbingCutters_carbon 
rename MP gp_v_smallTools_hobbingCutters_HS
rename MQ gp_v_smallTools_lathes_tools_carbon 
rename MR gp_v_smallTools_lathes_tools_HS 
rename MS gp_v_smallTools_milling_solid_carbon 
rename MT gp_v_smallTools_milling_solid_HS
rename MU gp_v_smallTools_milling_insertedTeeth 
rename MV gp_v_smallTools_reamer_carbon
rename MW gp_v_smallTools_reamer_HS
rename MX gp_v_smallTools_sawBlade_hack_carbon
rename MY gp_v_smallTools_sawBlade_hack_HS 
rename MZ gp_v_smallTools_sawBlade_band_carbon
rename NA gp_v_smallTools_sawBlade_band_HS 
rename NB gp_v_smallTools_sawBlade_cold_carbon
rename NC gp_v_smallTools_sawBlade_cold_HS
rename ND gp_v_smallTools_taps_carbon 
rename NE gp_v_smallTools_taps_HS
rename NF gp_v_smallTools_dies_carbon
rename NG gp_v_smallTools_dies_HS 
rename NH gp_v_smallTools_taps_chasers
rename NI gp_v_smallTools_pipe_threadingTaps 
rename NJ gp_v_smallTools_pipe_threadingDie
rename NK gp_v_smallTools_pipe_threadingPipe
rename NL gp_v_smallTools_otherCutting 
rename NM gp_v_smallTools_precisionMeasuring
rename NN gp_v_smallTools_gauges
rename NO gp_v_smallTools_otherMeasuring 
rename NP gp_u_foundry_ironCastings 
rename NQ gp_v_foundry_ironCastings 
rename NR gp_u_foundry_greyCastings_sand 
rename NS gp_v_foundry_greyCastings_sand 
rename NT gp_u_foundry_greyCastings_metal 
rename NU gp_v_foundry_greyCastings_metal 
rename NV gp_u_foundry_alCastings 
rename NW gp_v_foundry_alCastings 
rename NX gp_u_foundry_nonFerrousCastings
rename NY gp_v_foundry_nonFerrousCastings 
rename NZ gp_u_foundry_stampings 
rename OA gp_v_foundry_stampings
rename OB gp_s_other1  
rename OC gp_q_other1  
rename OD gp_v_other1  
rename OE gp_s_other2  
rename OF gp_q_other2  
rename OG gp_v_other2  
rename OH gp_s_other3  
rename OI gp_q_other3  
rename OJ gp_v_other3  
rename OK gp_s_other4  
rename OL gp_q_other4  
rename OM gp_v_other4  
rename ON gp_s_other5  
rename OO gp_q_other5  
rename OP gp_v_other5  
rename OQ gp_s_other6  
rename OR gp_q_other6  
rename OS gp_v_other6  
rename OT gp_s_other7  
rename OU gp_q_other7  
rename OV gp_v_other7  
rename OW gp_s_other8  
rename OX gp_q_other8  
rename OY gp_v_other8  
rename OZ gp_s_other9  
rename PA gp_q_other9  
rename PB gp_v_other9  
rename PC gp_s_other10 
rename PD gp_q_other10 
rename PE gp_v_other10
rename PF contract_work
rename PG custom_work
rename PH g000v

//rename capital variables
rename PI z_motors_n
rename PJ z_motors_c
rename PK z_motors_v
rename PL z_control_apparatus_n
rename PM z_control_apparatus_v

//remame manhours variables
rename PN ewemh01
rename PO ewemh02
rename PP ewemh03
rename PQ ewemh04
rename PR ewemh05
rename PS ewemh06
rename PT ewemh07
rename PU ewemh08
rename PV ewemh09
rename PW ewemh10
rename PX ewemh11
rename PY ewemh12