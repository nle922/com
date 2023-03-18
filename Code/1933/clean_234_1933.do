//rename variables for industries 234c and d in 1933
//Note that this is the same exact file as clean_234_1931 since forms were exactly the same

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//next 3 lines fix 3 mistaken renames in the common renaming file for this spreadsheet
rename f009 gp_q_hosiery_cottonF_m 
rename f004 gp_v_hosiery_cottonF_m 
rename f007 gp_q_hosiery_cottonF_w 

//rename output variables
rename AR gp_v_hosiery_cottonF_w 
rename AS gp_q_hosiery_cottonF_b 
rename AT gp_v_hosiery_cottonF_b 
rename AU gp_q_hosiery_cottonF_i 
rename AV gp_v_hosiery_cottonF_i 
rename AW gp_q_hosiery_cottonS_m 
rename AX gp_v_hosiery_cottonS_m  
rename AY gp_q_hosiery_cottonS_w  
rename AZ gp_v_hosiery_cottonS_w 
rename BA gp_q_hosiery_cottonS_b 
rename BB gp_v_hosiery_cottonS_b 
rename BC gp_q_hosiery_cottonS_i 
rename BD gp_v_hosiery_cottonS_i 
rename BE gp_q_hosiery_woolF_m  
rename BF gp_v_hosiery_woolF_m  
rename BG gp_q_hosiery_woolF_w  
rename BH gp_v_hosiery_woolF_w  
rename BI gp_q_hosiery_woolF_b  
rename BJ gp_v_hosiery_woolF_b 
rename BK gp_q_hosiery_woolF_i 
rename BL gp_v_hosiery_woolF_i 
rename BM gp_q_hosiery_woolS_m   
rename BN gp_v_hosiery_woolS_m  
rename BO gp_q_hosiery_woolS_w  
rename BP gp_v_hosiery_woolS_w 
rename BQ gp_q_hosiery_woolS_b 
rename BR gp_v_hosiery_woolS_b 
rename BS gp_q_hosiery_woolS_i 
rename BT gp_v_hosiery_woolS_i 
rename BU gp_q_hosiery_threadF_m 
rename BV gp_v_hosiery_threadF_m 
rename BW gp_q_hosiery_threadF_w 
rename BX gp_v_hosiery_threadF_w 
rename BY gp_q_hosiery_threadF_b 
rename BZ gp_v_hosiery_threadF_b 
rename CA gp_q_hosiery_threadF_i 
rename CB gp_v_hosiery_threadF_i 
rename CC gp_q_hosiery_threadS_m 
rename CD gp_v_hosiery_threadS_m  
rename CE gp_q_hosiery_threadS_w 
rename CF gp_v_hosiery_threadS_w  
rename CG gp_q_hosiery_threadS_b 
rename CH gp_v_hosiery_threadS_b 
rename CI gp_q_hosiery_threadS_i 
rename CJ gp_v_hosiery_threadS_i 
rename CK gp_q_hosiery_silkF_m   
rename CL gp_v_hosiery_silkF_m  
rename CM gp_q_hosiery_silkF_w  
rename CN gp_v_hosiery_silkF_w  
rename CO gp_q_hosiery_silkF_b 
rename CP gp_v_hosiery_silkF_b  
rename CQ gp_q_hosiery_silkF_i  
rename CR gp_v_hosiery_silkF_i  
rename CS gp_q_hosiery_silkS_m 
rename CT gp_v_hosiery_silkS_m  
rename CU gp_q_hosiery_silkS_w  
rename CV gp_v_hosiery_silkS_w  
rename CW gp_q_hosiery_silkS_b  
rename CX gp_v_hosiery_silkS_b  
rename CY gp_q_hosiery_silkS_i  
rename CZ gp_v_hosiery_silkS_i  
rename DA gp_q_hosiery_rayonF_m  
rename DB gp_v_hosiery_rayonF_m   
rename DC gp_q_hosiery_rayonF_w   
rename DD gp_v_hosiery_rayonF_w   
rename DE gp_q_hosiery_rayonF_b  
rename DF gp_v_hosiery_rayonF_b  
rename DG gp_q_hosiery_rayonF_i  
rename DH gp_v_hosiery_rayonF_i  
rename DI gp_q_hosiery_rayonS_m   
rename DJ gp_v_hosiery_rayonS_m    
rename DK gp_q_hosiery_rayonS_w    
rename DL gp_v_hosiery_rayonS_w    
rename DM gp_q_hosiery_rayonS_b  
rename DN gp_v_hosiery_rayonS_b  
rename DO gp_q_hosiery_rayonS_i  
rename DP gp_v_hosiery_rayonS_i  
rename DQ gp_q_hosiery_mixRayonCottonF_m    
rename DR gp_v_hosiery_mixRayonCottonF_m     
rename DS gp_q_hosiery_mixRayonCottonF_w     
rename DT gp_v_hosiery_mixRayonCottonF_w     
rename DU gp_q_hosiery_mixRayonCottonF_b  
rename DV gp_v_hosiery_mixRayonCottonF_b  
rename DW gp_q_hosiery_mixRayonCottonF_i  
rename DX gp_v_hosiery_mixRayonCottonF_i  
rename DY gp_q_hosiery_mixRayonCottonS_m     
rename DZ gp_v_hosiery_mixRayonCottonS_m      
rename EA gp_q_hosiery_mixRayonCottonS_w      
rename EB gp_v_hosiery_mixRayonCottonS_w      
rename EC gp_q_hosiery_mixRayonCottonS_b      
rename ED gp_v_hosiery_mixRayonCottonS_b 
rename EE gp_q_hosiery_mixRayonCottonS_i  
rename EF gp_v_hosiery_mixRayonCottonS_i     
rename EG gp_q_hosiery_CttnWoolF_m 
rename EH gp_v_hosiery_CttnWoolF_m  
rename EI gp_q_hosiery_CttnWoolF_w  
rename EJ gp_v_hosiery_CttnWoolF_w   
rename EK gp_q_hosiery_CttnWoolF_b  
rename EL gp_v_hosiery_CttnWoolF_b  
rename EM gp_q_hosiery_CttnWoolF_i  
rename EN gp_v_hosiery_CttnWoolF_i  
rename EO gp_q_hosiery_CttnWoolS_m   
rename EP gp_v_hosiery_CttnWoolS_m    
rename EQ gp_q_hosiery_CttnWoolS_w    
rename ER gp_v_hosiery_CttnWoolS_w    
rename ES gp_q_hosiery_CttnWoolS_b  
rename ET gp_v_hosiery_CttnWoolS_b  
rename EU gp_q_hosiery_CttnWoolS_i  
rename EV gp_v_hosiery_CttnWoolS_i  
rename EW gp_q_hosiery_mixSilkWoolF_m  
rename EX gp_v_hosiery_mixSilkWoolF_m   
rename EY gp_q_hosiery_mixSilkWoolF_w   
rename EZ gp_v_hosiery_mixSilkWoolF_w   
rename FA gp_q_hosiery_mixSilkWoolF_b  
rename FB gp_v_hosiery_mixSilkWoolF_b  
rename FC gp_q_hosiery_mixSilkWoolF_i  
rename FD gp_v_hosiery_mixSilkWoolF_i  
rename FE gp_q_hosiery_mixSilkWoolS_m   
rename FF gp_v_hosiery_mixSilkWoolS_m   
rename FG gp_q_hosiery_mixSilkWoolS_w   
rename FH gp_v_hosiery_mixSilkWoolS_w   
rename FI gp_q_hosiery_mixSilkWoolS_b   
rename FJ gp_v_hosiery_mixSilkWoolS_b  
rename FK gp_q_hosiery_mixSilkWoolS_i  
rename FL gp_v_hosiery_mixSilkWoolS_i  
rename FM gp_q_hosiery_mixSilkCottonF_m   
rename FN gp_v_hosiery_mixSilkCottonF_m    
rename FO gp_q_hosiery_mixSilkCottonF_w    
rename FP gp_v_hosiery_mixSilkCottonF_w    
rename FQ gp_q_hosiery_mixSilkCottonF_b  
rename FR gp_v_hosiery_mixSilkCottonF_b  
rename FS gp_q_hosiery_mixSilkCottonF_i  
rename FT gp_v_hosiery_mixSilkCottonF_i  
rename FU gp_q_hosiery_mixSilkCottonS_m    
rename FV gp_v_hosiery_mixSilkCottonS_m    
rename FW gp_q_hosiery_mixSilkCottonS_w    
rename FX gp_v_hosiery_mixSilkCottonS_w    
rename FY gp_q_hosiery_mixSilkCottonS_b  
rename FZ gp_v_hosiery_mixSilkCottonS_b  
rename GA gp_q_hosiery_mixSilkCottonS_i  
rename GB gp_v_hosiery_mixSilkCottonS_i  
rename GC gp_q_hosiery_mixSilkRayonF_m   
rename GD gp_v_hosiery_mixSilkRayonF_m    
rename GE gp_q_hosiery_mixSilkRayonF_w    
rename GF gp_v_hosiery_mixSilkRayonF_w    
rename GG gp_q_hosiery_mixSilkRayonF_b  
rename GH gp_v_hosiery_mixSilkRayonF_b  
rename GI gp_q_hosiery_mixSilkRayonF_i  
rename GJ gp_v_hosiery_mixSilkRayonF_i  
rename GK gp_q_hosiery_mixSilkRayonS_m   
rename GL gp_v_hosiery_mixSilkRayonS_m    
rename GM gp_q_hosiery_mixSilkRayonS_w    
rename GN gp_v_hosiery_mixSilkRayonS_w    
rename GO gp_q_hosiery_mixSilkRayonS_b  
rename GP gp_v_hosiery_mixSilkRayonS_b  
rename GQ gp_q_hosiery_mixSilkRayonS_i  
rename GR gp_v_hosiery_mixSilkRayonS_i  
rename GS gp_q_hosiery_mixWoolRayonF_m   
rename GT gp_v_hosiery_mixWoolRayonF_m   
rename GU gp_q_hosiery_mixWoolRayonF_w    
rename GV gp_v_hosiery_mixWoolRayonF_w    
rename GW gp_q_hosiery_mixWoolRayonF_b  
rename GX gp_v_hosiery_mixWoolRayonF_b   
rename GY gp_q_hosiery_mixWoolRayonF_i  
rename GZ gp_v_hosiery_mixWoolRayonF_i  
rename HA gp_q_hosiery_mixWoolRayonS_m    
rename HB gp_v_hosiery_mixWoolRayonS_m    
rename HC gp_q_hosiery_mixWoolRayonS_w    
rename HD gp_v_hosiery_mixWoolRayonS_w    
rename HE gp_q_hosiery_mixWoolRayonS_b   
rename HF gp_v_hosiery_mixWoolRayonS_b  
rename HG gp_q_hosiery_mixWoolRayonS_i  
rename HH gp_v_hosiery_mixWoolRayonS_i  
rename HI gp_q_hosiery_mixCottonRayonF_m 
rename HJ gp_v_hosiery_mixCottonRayonF_m  
rename HK gp_q_hosiery_mixCottonRayonF_w  
rename HL gp_v_hosiery_mixCottonRayonF_w  
rename HM gp_q_hosiery_mixCottonRayonF_b  
rename HN gp_v_hosiery_mixCottonRayonF_b  
rename HO gp_q_hosiery_mixCottonRayonF_i  
rename HP gp_v_hosiery_mixCottonRayonF_i  
rename HQ gp_q_hosiery_mixCottonRayonS_m  
rename HR gp_v_hosiery_mixCottonRayonS_m  
rename HS gp_q_hosiery_mixCottonRayonS_w  
rename HT gp_v_hosiery_mixCottonRayonS_w  
rename HU gp_q_hosiery_mixCottonRayonS_b  
rename HV gp_v_hosiery_mixCottonRayonS_b  
rename HW gp_q_hosiery_mixCottonRayonS_i  
rename HX gp_v_hosiery_mixCottonRayonS_i  
rename HY gp_q_hosiery_mixTripleF_m  
rename HZ gp_v_hosiery_mixTripleF_m   
rename IA gp_q_hosiery_mixTripleF_w   
rename IB gp_v_hosiery_mixTripleF_w   
rename IC gp_q_hosiery_mixTripleF_b  
rename ID gp_v_hosiery_mixTripleF_b  
rename IE gp_q_hosiery_mixTripleF_i  
rename IF gp_v_hosiery_mixTripleF_i  
rename IG gp_q_hosiery_mixTripleS_m   
rename IH gp_v_hosiery_mixTripleS_m   
rename II gp_q_hosiery_mixTripleS_w   
rename IJ gp_v_hosiery_mixTripleS_w   
rename IK gp_q_hosiery_mixTripleS_b   
rename IL gp_v_hosiery_mixTripleS_b  
rename IM gp_q_hosiery_mixTripleS_i  
rename IN gp_v_hosiery_mixTripleS_i   
rename IO gp_q_underwear_cotton_shirt  
rename IP gp_v_underwear_cotton_shirt  
rename IQ gp_q_underwear_cotton_uSuit  
rename IR gp_v_underwear_cotton_uSuit  
rename IS gp_q_underwear_cotton_blm  
rename IT gp_v_underwear_cotton_blm  
rename IU gp_q_underwear_cotton_slip  
rename IV gp_v_underwear_cotton_slip  
rename IW gp_q_underwear_wool_shirt  
rename IX gp_v_underwear_wool_shirt  
rename IY gp_q_underwear_wool_uSuit  
rename IZ gp_v_underwear_wool_uSuit   
rename JA gp_q_underwear_wool_blm   
rename JB gp_v_underwear_wool_blm 
rename JC gp_q_underwear_wool_slip  
rename JD gp_v_underwear_wool_slip  
rename JE gp_q_underwear_CttnWool_shirt 
rename JF gp_v_underwear_CttnWool_shirt 
rename JG gp_q_underwear_CttnWool_uSuit  
rename JH gp_v_underwear_CttnWool_uSuit  
rename JI gp_q_underwear_CttnWool_blm  
rename JJ gp_v_underwear_CttnWool_blm  
rename JK gp_q_underwear_CttnWool_slip  
rename JL gp_v_underwear_CttnWool_slip  
rename JM gp_q_underwear_silkWarp_shirt  
rename JN gp_v_underwear_silkWarp_shirt  
rename JO gp_q_underwear_silkWarp_uSuit  
rename JP gp_v_underwear_silkWarp_uSuit   
rename JQ gp_q_underwear_silkWarp_blm  
rename JR gp_v_underwear_silkWarp_blm  
rename JS gp_q_underwear_silkWarp_slip   
rename JT gp_v_underwear_silkWarp_slip   
rename JU gp_q_underwear_silkCone_shirt  
rename JV gp_v_underwear_silkCone_shirt  
rename JW gp_q_underwear_silkCone_uSuit  
rename JX gp_v_underwear_silkCone_uSuit   
rename JY gp_q_underwear_silkCone_blm   
rename JZ gp_v_underwear_silkCone_blm   
rename KA gp_q_underwear_silkCone_slip   
rename KB gp_v_underwear_silkCone_slip  
rename KC gp_q_underwear_silkShtl_shirt 
rename KD gp_v_underwear_silkShtl_shirt  
rename KE gp_q_underwear_silkShtl_uSuit  
rename KF gp_v_underwear_silkShtl_uSuit  
rename KG gp_q_underwear_silkShtl_blm  
rename KH gp_v_underwear_silkShtl_blm  
rename KI gp_q_underwear_silkShtl_slip 
rename KJ gp_v_underwear_silkShtl_slip  
rename KK gp_q_underwear_rayonWarp_shirt  
rename KL gp_v_underwear_rayonWarp_shirt  
rename KM gp_q_underwear_rayonWarp_uSuit  
rename KN gp_v_underwear_rayonWarp_uSuit   
rename KO gp_q_underwear_rayonWarp_blm   
rename KP gp_v_underwear_rayonWarp_blm   
rename KQ gp_q_underwear_rayonWarp_slip   
rename KR gp_v_underwear_rayonWarp_slip   
rename KS gp_q_underwear_rayonCone_shirt  
rename KT gp_v_underwear_rayonCone_shirt   
rename KU gp_q_underwear_rayonCone_uSuit   
rename KV gp_v_underwear_rayonCone_uSuit  
rename KW gp_q_underwear_rayonCone_blm   
rename KX gp_v_underwear_rayonCone_blm   
rename KY gp_q_underwear_rayonCone_slip   
rename KZ gp_v_underwear_rayonCone_slip  
rename LA gp_q_underwear_silkRynWrp_shirt   
rename LB gp_v_underwear_silkRynWrp_shirt   
rename LC gp_q_underwear_silkRynWrp_uSuit  
rename LD gp_v_underwear_silkRynWrp_uSuit   
rename LE gp_q_underwear_silkRynWrp_blm   
rename LF gp_v_underwear_silkRynWrp_blm   
rename LG gp_q_underwear_silkRynWrp_slip   
rename LH gp_v_underwear_silkRynWrp_slip  
rename LI gp_q_underwear_silkRynCn_shirt   
rename LJ gp_v_underwear_silkRynCn_shirt   
rename LK gp_q_underwear_silkRynCn_uSuit 
rename LL gp_v_underwear_silkRynCn_uSuit 
rename LM gp_q_underwear_silkRynCn_blm 
rename LN gp_v_underwear_silkRynCn_blm 
rename LO gp_q_underwear_silkRynCn_slip 
rename LP gp_v_underwear_silkRynCn_slip 
rename LQ gp_s_underwear_other1  
rename LR gp_q_underwear_other1_shirt  
rename LS gp_v_underwear_other1_shirt  
rename LT gp_v_underwear_other1_uSuit  
rename LU gp_q_underwear_other1_uSuit  
rename LV gp_v_underwear_other1_blm  
rename LW gp_q_underwear_other1_blm  
rename LX gp_v_underwear_other1_slip  
rename LY gp_q_underwear_other1_slip  
rename LZ gp_s_underwear_other2  
rename MA gp_q_underwear_other2_shirt  
rename MB gp_v_underwear_other2_shirt  
rename MC gp_q_underwear_other2_uSuit  
rename MD gp_v_underwear_other2_uSuit  
rename ME gp_q_underwear_other2_blm  
rename MF gp_v_underwear_other2_blm  
rename MG gp_q_underwear_other2_slip 
rename MH gp_v_underwear_other2_slip  
rename MI gp_s_underwear_other3  
rename MJ gp_q_underwear_other3_shirt  
rename MK gp_v_underwear_other3_shirt  
rename ML gp_q_underwear_other3_uSuit  
rename MM gp_v_underwear_other3_uSuit  
rename MN gp_q_underwear_other3_blm  
rename MO gp_v_underwear_other3_blm  
rename MP gp_q_underwear_other3_slip  
rename MQ gp_v_underwear_other3_slip  
rename MR gp_q_outerwear_sweater 
rename MS gp_v_outerwear_sweater 
rename MT gp_q_outerwear_bathrobe  
rename MU gp_v_outerwear_bathrobe  
rename MV gp_q_outerwear_scarf  
rename MW gp_v_outerwear_scarf  
rename MX gp_q_outerwear_muffler  
rename MY gp_v_outerwear_muffler  
rename MZ gp_q_outerwear_headwear  
rename NA gp_v_outerwear_headwear  
rename NB gp_q_outerwear_necktie  
rename NC gp_v_outerwear_necktie  
rename ND gp_q_outerwear_gloveS_suede  
rename NE gp_v_outerwear_gloveS_suede  
rename NF gp_q_outerwear_gloveS_notSuede  
rename NG gp_v_outerwear_gloveS_notSuede  
rename NH gp_q_outerwear_gloveS_cone  
rename NI gp_v_outerwear_gloveS_cone  
rename NJ gp_q_outerwear_gloveS_woolen  
rename NK gp_v_outerwear_gloveS_woolen  
rename NL gp_q_outerwear_gloveS_silk  
rename NM gp_v_outerwear_gloveS_silk  
rename NN gp_s_outerwear_gloves_other1 
rename NO gp_q_outerwear_gloveS_other1  
rename NP gp_v_outerwear_gloveS_other1  
rename NQ gp_s_outerwear_gloves_other2  
rename NR gp_q_outerwear_gloveS_other2  
rename NS gp_v_outerwear_gloveS_other2  
rename NT gp_q_outerwear_mittenS_worsted 
rename NU gp_v_outerwear_mittenS_worsted   
rename NV gp_q_outerwear_mittenS_wool  
rename NW gp_v_outerwear_mittenS_wool  
rename NX gp_q_outerwear_athletic_hose  
rename NY gp_v_outerwear_athletic_hose  
rename NZ gp_q_outerwear_dresseS_suits   
rename OA gp_v_outerwear_dresseS_suits  
rename OB gp_q_outerwear_i  
rename OC gp_v_outerwear_i  
rename OD gp_s_outerwear_other1   
rename OE gp_v_outerwear_other1  
rename OF gp_s_outerwear_other2  
rename OG gp_v_outerwear_other2  
rename OH gp_q_knitCloth_wool  
rename OI gp_v_knitCloth_wool  
rename OJ gp_s_knitCloth_otherWool1 
rename OK gp_q_knitCloth_otherWool1  
rename OL gp_v_knitCloth_otherWool1  
rename OM gp_s_knitCloth_otherWool2  
rename ON gp_q_knitCloth_otherWool2  
rename OO gp_v_knitCloth_otherWool2  
rename OP gp_s_knitCloth_otherWool3  
rename OQ gp_q_knitCloth_otherWool3  
rename OR gp_v_knitCloth_otherWool3  
rename OS gp_q_knitCloth_silkJersey  
rename OT gp_v_knitCloth_silkJersey   
rename OU gp_q_knitCloth_rayonTubing  
rename OV gp_v_knitCloth_rayonTubing   
rename OW gp_q_knitCloth_otherRayon 
rename OX gp_v_knitCloth_otherRayon   
rename OY gp_v_knitCloth_glove   
rename OZ gp_q_knitCloth_cottonJersey  
rename PA gp_v_knitCloth_cottonJersey   
rename PB gp_q_knitCloth_corsetRayon 
rename PC gp_v_knitCloth_corsetRayon  
rename PD gp_s_knitCloth_corsetOther1  
rename PE gp_q_knitCloth_corsetOther1  
rename PF gp_v_knitCloth_corsetOther1  
rename PG gp_q_knitCloth_towel 
rename PH gp_v_knitCloth_towel  
rename PI gp_v_knitCloth_stockinet  
rename PJ gp_s_knitCloth_other1 
rename PK gp_v_knitCloth_other1  
rename PL gp_v_knitCloth_iUnderwear  
rename PM gp_s_knit_other1  
rename PN gp_v_knit_other1   
rename PO gp_s_knit_other2  
rename PP gp_v_knit_other2  
rename PQ gp_s_knit_other3  
rename PR gp_v_knit_other3  
rename PS gp_q_sewingThread_cotton  
rename PT gp_v_sewingThread_cotton   
rename PU gp_q_sewingThread_cottonCrochet  
rename PV gp_v_sewingThread_cottonCrochet 
rename PW gp_q_sewingThread_cottonWaste 
rename PX gp_v_sewingThread_cottonWaste 
rename PY gp_s_sewingThread_other1 
rename PZ gp_q_sewingThread_other1 
rename QA gp_v_sewingThread_other1 
rename QB gp_s_sewingThread_other2 
rename QC gp_q_sewingThread_other2  
rename QD gp_v_sewingThread_other2 
rename QE gp_s_other1 
rename QF gp_v_other1 
rename QG gp_s_other2 
rename QH gp_v_other2 
rename QI gp_s_other3 
rename QJ gp_v_other3 
rename QK gp_v_old_bagging 
rename QL f004

rename QM g000v 

//rename input variables
rename QN j_q_cotton_domestic 
rename QO j_v_cotton_domestic 
rename QP j_q_cotton_foreign  
rename QQ j_v_cotton_foreign 
rename QR j_q_wool_domestic_grease 
rename QS j_v_wool_domestic_grease 
rename QT j_q_wool_domestic_pulled 
rename QU j_v_wool_domestic_pulled 
rename QV j_q_wool_domestic_scoured 
rename QW j_v_wool_domestic_scoured 
rename QX j_q_wool_domestic_total_scoured 
rename QY j_q_wool_foreign_grease 
rename QZ j_v_wool_foreign_grease  
rename RA j_q_wool_foreign_pulled 
rename RB j_v_wool_foreign_pulled 
rename RC j_q_wool_foreign_scoured 
rename RD j_v_wool_foreign_scoured 
rename RE j_q_wool_foreign_total_scoured 
rename RF j_q_silk_raw 
rename RG j_v_silk_raw 
rename RH j_q_yarn_woolen 
rename RI j_v_yarn_woolen 
rename RJ j_q_yarn_worsted 
rename RK j_v_yarn_worsted 
rename RL j_q_yarn_mixedWoolCotton 
rename RM j_v_yarn_mixedWoolCotton 
rename RN j_q_yarn_mixedWorstedCotton 
rename RO j_v_yarn_mixedWorstedCotton 
rename RP j_q_yarn_cottonNotMercerized 
rename RQ j_v_yarn_cottonNotMercerized  
rename RR j_q_yarn_cottonMercerized 
rename RS j_v_yarn_cottonMercerized 
rename RT j_q_yarn_silk 
rename RU j_v_yarn_silk 
rename RV j_q_yarn_rayon 
rename RW j_v_yarn_rayon 
rename RX j_s_yarn_other1 
rename RY j_q_yarn_other1 
rename RZ j_v_yarn_other1 
rename SA j_q_wool_noils 
rename SB j_v_wool_noils 
rename SC j_q_silk_noils 
rename SD j_v_silk_noils 
rename SE j_q_cotton_waste 
rename SF j_v_cotton_waste 
rename SG j_q_wool_waste 
rename SH j_v_wool_waste 
rename SI j_q_silk_waste 
rename SJ j_v_silk_waste 
rename SK j_q_recovered_wool 
rename SL j_v_recovered_wool 
drop SM