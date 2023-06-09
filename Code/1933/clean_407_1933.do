//rename variables for industry 407 in 1933

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename output variables
capture rename AR gp_q_newsprint_rolls_A 
capture rename AS gp_v_newsprint_rolls_A  
capture rename AT gp_q_newsprint_rolls_B 
capture rename AU gp_v_newsprint_rolls_B  
capture rename AV gp_q_newsprint_rolls_C  
capture rename AW gp_v_newsprint_rolls_C  
capture rename AX gp_q_newsprint_sheets_A   
capture rename AY gp_v_newsprint_sheets_A    
capture rename AZ gp_q_newsprint_sheets_B    
capture rename BA gp_v_newsprint_sheets_B    
capture rename BB gp_q_newsprint_sheets_C    
capture rename BC gp_v_newsprint_sheets_C    
capture rename BD gp_q_paper_hanging_A    
capture rename BE gp_v_paper_hanging_A     
capture rename BF gp_q_paper_hanging_B     
capture rename BG gp_v_paper_hanging_B     
capture rename BH gp_q_paper_hanging_C     
capture rename BI gp_v_paper_hanging_C     
capture rename BJ gp_q_paper_catalogue_A 
capture rename BK gp_v_paper_catalogue_A      
capture rename BL gp_q_paper_catalogue_B      
capture rename BM gp_v_paper_catalogue_B      
capture rename BN gp_q_paper_catalogue_C      
capture rename BO gp_v_paper_catalogue_C      
capture rename BP gp_q_paper_poster_A      
capture rename BQ gp_v_paper_poster_A       
capture rename BR gp_q_paper_poster_B       
capture rename BS gp_v_paper_poster_B       
capture rename BT gp_q_paper_poster_C       
capture rename BU gp_v_paper_poster_C       
capture rename BV gp_q_book_paper_A 
capture rename BW gp_v_book_paper_A  
capture rename BX gp_q_book_paper_B  
capture rename BY gp_v_book_paper_B  
capture rename BZ gp_q_book_paper_C  
capture rename CA gp_v_book_paper_C  
capture rename CB gp_q_body_stock_A  
capture rename CC gp_v_body_stock_A   
capture rename CD gp_q_body_stock_B   
capture rename CE gp_v_body_stock_B   
capture rename CF gp_q_body_stock_C   
capture rename CG gp_v_body_stock_C   
capture rename CH gp_q_lithograph_A   
capture rename CI gp_v_lithograph_A    
capture rename CJ gp_q_lithograph_B    
capture rename CK gp_v_lithograph_B    
capture rename CL gp_q_lithograph_C    
capture rename CM gp_v_lithograph_C   
capture rename CN gp_q_paper_offset_A    
capture rename CO gp_v_paper_offset_A     
capture rename CP gp_q_paper_offset_B     
capture rename CQ gp_v_paper_offset_B     
capture rename CR gp_q_paper_offset_C     
capture rename CS gp_v_paper_offset_C     
capture rename CT gp_q_text_paper_A     
capture rename CU gp_v_text_paper_A      
capture rename CV gp_q_text_paper_B      
capture rename CW gp_v_text_paper_B      
capture rename CX gp_q_text_paper_C      
capture rename CY gp_v_text_paper_C      
capture rename CZ gp_s_other_book_paper_1  
capture rename DA gp_q_other_book_paper_1_A   
capture rename DB gp_v_other_book_paper_1_A   
capture rename DC gp_q_other_book_paper_1_B   
capture rename DD gp_v_other_book_paper_1_B   
capture rename DE gp_q_other_book_paper_1_C   
capture rename DF gp_v_other_book_paper_1_C   
capture rename DG gp_s_other_book_paper_2   
capture rename DH gp_q_other_book_paper_2_A   
capture rename DI gp_v_other_book_paper_2_A   
capture rename DJ gp_q_other_book_paper_2_B   
capture rename DK gp_v_other_book_paper_2_B   
capture rename DL gp_q_other_book_paper_2_C   
capture rename DM gp_v_other_book_paper_2_C   
capture rename DN gp_q_cover_paper_A 
capture rename DO gp_v_cover_paper_A  
capture rename DP gp_q_cover_paper_B  
capture rename DQ gp_v_cover_paper_B  
capture rename DR gp_q_cover_paper_C  
capture rename DS gp_v_cover_paper_C  
capture rename DT gp_q_writing_paper_rag_A  
capture rename DU gp_v_writing_paper_rag_A   
capture rename DV gp_q_writing_paper_rag_B   
capture rename DW gp_v_writing_paper_rag_B   
capture rename DX gp_q_writing_paper_rag_C   
capture rename DY gp_v_writing_paper_rag_C   
capture rename DZ gp_q_writing_paper_rag_less100_A  
capture rename EA gp_v_writing_paper_rag_less100_A   
capture rename EB gp_q_writing_paper_rag_less100_B   
capture rename EC gp_v_writing_paper_rag_less100_B   
capture rename ED gp_q_writing_paper_rag_less100_C   
capture rename EE gp_v_writing_paper_rag_less100_C   
capture rename EF gp_q_paper_sulphite_A 
capture rename EG gp_v_paper_sulphite_A   
capture rename EH gp_q_paper_sulphite_B   
capture rename EI gp_v_paper_sulphite_B   
capture rename EJ gp_q_paper_sulphite_C   
capture rename EK gp_v_paper_sulphite_C   
capture rename EL gp_q_wrapping_paper_sulphite_A  
capture rename EM gp_v_wrapping_paper_sulphite_A   
capture rename EN gp_q_wrapping_paper_sulphite_B   
capture rename EO gp_v_wrapping_paper_sulphite_B   
capture rename EP gp_q_wrapping_paper_sulphite_C   
capture rename EQ gp_v_wrapping_paper_sulphite_C   
capture rename ER gp_q_wrapping_paper_sulphate_A   
capture rename ES gp_v_wrapping_paper_sulphate_A    
capture rename ET gp_q_wrapping_paper_sulphate_B    
capture rename EU gp_v_wrapping_paper_sulphate_B    
capture rename EV gp_q_wrapping_paper_sulphate_C    
capture rename EW gp_v_wrapping_paper_sulphate_C    
capture rename EX gp_q_wrapping_paper_greasepf_A    
capture rename EY gp_v_wrapping_paper_greasepf_A     
capture rename EZ gp_q_wrapping_paper_greasepf_B     
capture rename FA gp_v_wrapping_paper_greasepf_B     
capture rename FB gp_q_wrapping_paper_greasepf_C     
capture rename FC gp_v_wrapping_paper_greasepf_C     
capture rename FD gp_q_wrapping_paper_glassine_A     
capture rename FE gp_v_wrapping_paper_glassine_A      
capture rename FF gp_q_wrapping_paper_glassine_B      
capture rename FG gp_v_wrapping_paper_glassine_B      
capture rename FH gp_q_wrapping_paper_glassine_C      
capture rename FI gp_v_wrapping_paper_glassine_C      
capture rename FJ gp_q_wrapping_paper_vegetable_A      
capture rename FK gp_v_wrapping_paper_vegetable_A       
capture rename FL gp_q_wrapping_paper_vegetable_B       
capture rename FM gp_v_wrapping_paper_vegetable_B       
capture rename FN gp_q_wrapping_paper_vegetable_C       
capture rename FO gp_v_wrapping_paper_vegetable_C       
capture rename FP gp_s_wrapping_paper_other_1  
capture rename FQ gp_q_wrapping_paper_other_1_A   
capture rename FR gp_v_wrapping_paper_other_1_A   
capture rename FS gp_q_wrapping_paper_other_1_B   
capture rename FT gp_v_wrapping_paper_other_1_B   
capture rename FU gp_q_wrapping_paper_other_1_C   
capture rename FV gp_v_wrapping_paper_other_1_C   
capture rename FW gp_s_wrapping_paper_other_2    
capture rename FX gp_q_wrapping_paper_other_2_A   
capture rename FY gp_v_wrapping_paper_other_2_A   
capture rename FZ gp_q_wrapping_paper_other_2_B   
capture rename GA gp_v_wrapping_paper_other_2_B   
capture rename GB gp_q_wrapping_paper_other_2_C  
capture rename GC gp_v_wrapping_paper_other_2_C  
capture rename GD gp_q_board_container_A  
capture rename GE gp_v_board_container_A   
capture rename GF gp_q_board_container_B   
capture rename GG gp_v_board_container_B   
capture rename GH gp_q_board_container_C   
capture rename GI gp_v_board_container_C   
capture rename GJ gp_q_board_folding_A   
capture rename GK gp_v_board_folding_A    
capture rename GL gp_q_board_folding_B    
capture rename GM gp_v_board_folding_B    
capture rename GN gp_q_board_folding_C    
capture rename GO gp_v_board_folding_C    
capture rename GP gp_q_board_setup_A    
capture rename GQ gp_v_board_setup_A     
capture rename GR gp_q_board_setup_B     
capture rename GS gp_v_board_setup_B     
capture rename GT gp_q_board_setup_C     
capture rename GU gp_v_board_setup_C     
//DON'T KNOW WHAT GV IS SUPPOSED TO BE
capture rename GW gp_q_board_buildings_A     
capture rename GX gp_v_board_buildings_A      
capture rename GY gp_q_board_buildings_B      
capture rename GZ gp_v_board_buildings_B      
capture rename HA gp_q_board_buildings_C      
capture rename HB gp_v_board_buildings_C      
capture rename HC gp_q_board_binders_A      
capture rename HD gp_v_board_binders_A       
capture rename HE gp_q_board_binders_B       
capture rename HF gp_v_board_binders_B       
capture rename HG gp_q_board_binders_C       
capture rename HH gp_v_board_binders_C       
capture rename HI gp_q_board_cardboard_A       
capture rename HJ gp_v_board_cardboard_A        
capture rename HK gp_q_board_cardboard_B        
capture rename HL gp_v_board_cardboard_B        
capture rename HM gp_q_board_cardboard_C        
capture rename HN gp_v_board_cardboard_C        
capture rename HO gp_q_cardboard_leather_A        
capture rename HP gp_v_cardboard_leather_A         
capture rename HQ gp_q_cardboard_leather_B         
capture rename HR gp_v_cardboard_leather_B         
capture rename HS gp_q_cardboard_leather_C         
capture rename HT gp_v_cardboard_leather_C         
capture rename HU gp_q_cardboard_press_A         
capture rename HV gp_v_cardboard_press_A          
capture rename HW gp_q_cardboard_press_B          
capture rename HX gp_v_cardboard_press_B          
capture rename HY gp_q_cardboard_press_C          
capture rename HZ gp_v_cardboard_press_C          
capture rename IA gp_s_board_paper_other_1 
capture rename IB gp_q_board_paper_other_1_A           
capture rename IC gp_v_board_paper_other_1_A            
capture rename ID gp_q_board_paper_other_1_B            
capture rename IE gp_v_board_paper_other_1_B            
capture rename IF gp_q_board_paper_other_1_C            
capture rename IG gp_v_board_paper_other_1_C            
capture rename IH gp_s_board_paper_other_2 
capture rename II gp_q_board_paper_other_2_A           
capture rename IJ gp_v_board_paper_other_2_A            
capture rename IK gp_q_board_paper_other_2_B            
capture rename IL gp_v_board_paper_other_2_B            
capture rename IM gp_q_board_paper_other_2_C            
capture rename IN gp_v_board_paper_other_2_C            
capture rename IO gp_q_tissue_paper_toilet_A        
capture rename IP gp_v_tissue_paper_toilet_A         
capture rename IQ gp_q_tissue_paper_toilet_B         
capture rename IR gp_v_tissue_paper_toilet_B         
capture rename IS gp_q_tissue_paper_toilet_C         
capture rename IT gp_v_tissue_paper_toilet_C         
capture rename IU gp_s_tissue_paper_other1 
capture rename IV gp_q_tissue_paper_other1_A           
capture rename IW gp_v_tissue_paper_other1_A            
capture rename IX gp_q_tissue_paper_other1_B            
capture rename IY gp_v_tissue_paper_other1_B            
capture rename IZ gp_q_tissue_paper_other1_C            
capture rename JA gp_v_tissue_paper_other1_C            
capture rename JB gp_s_tissue_paper_other2 
capture rename JC gp_q_tissue_paper_other2_A           
capture rename JD gp_v_tissue_paper_other2_A            
capture rename JE gp_q_tissue_paper_other2_B            
capture rename JF gp_v_tissue_paper_other2_B            
capture rename JG gp_q_tissue_paper_other2_C            
capture rename JH gp_v_tissue_paper_other2_C           
capture rename JI gp_q_absorbent_paper_blotting_A                 
capture rename JJ gp_v_absorbent_paper_blotting_A                 
capture rename JK gp_q_absorbent_paper_blotting_B                 
capture rename JL gp_v_absorbent_paper_blotting_B                 
capture rename JM gp_q_absorbent_paper_blotting_C                 
capture rename JN gp_v_absorbent_paper_blotting_C                 
capture rename JO gp_s_absorbent_paper_other_1                  
capture rename JP gp_q_absorbent_paper_other_1_A                  
capture rename JQ gp_v_absorbent_paper_other_1_A                  
capture rename JR gp_q_absorbent_paper_other_1_B                  
capture rename JS gp_v_absorbent_paper_other_1_B                  
capture rename JT gp_q_absorbent_paper_other_1_C                  
capture rename JU gp_v_absorbent_paper_other_1_C                  
capture rename JV gp_s_absorbent_paper_other_2                   
capture rename JW gp_q_absorbent_paper_other_2_A                   
capture rename JX gp_v_absorbent_paper_other_2_A                   
capture rename JY gp_q_absorbent_paper_other_2_B                   
capture rename JZ gp_v_absorbent_paper_other_2_B                   
capture rename KA gp_q_absorbent_paper_other_2_C                   
capture rename KB gp_v_absorbent_paper_other_2_C                  
capture rename KC gp_s_absorbent_paper_other_3                   
capture rename KD gp_q_absorbent_paper_other_3_A                   
capture rename KE gp_v_absorbent_paper_other_3_A                   
capture rename KF gp_q_absorbent_paper_other_3_B                   
capture rename KG gp_v_absorbent_paper_other_3_B                   
capture rename KH gp_q_absorbent_paper_other_3_C                   
capture rename KI gp_v_absorbent_paper_other_3_C                  
capture rename KJ gp_q_building_paper_sheathing_A  
capture rename KK gp_v_building_paper_sheathing_A   
capture rename KL gp_q_building_paper_sheathing_B   
capture rename KM gp_v_building_paper_sheathing_B   
capture rename KN gp_q_building_paper_sheathing_C   
capture rename KO gp_v_building_paper_sheathing_C   
capture rename KP gp_s_building_paper_other_1     
capture rename KQ gp_q_building_paper_other_1_A      
capture rename KR gp_v_building_paper_other_1_A      
capture rename KS gp_q_building_paper_other_1_B      
capture rename KT gp_v_building_paper_other_1_B      
capture rename KU gp_q_building_paper_other_1_C      
capture rename KV gp_v_building_paper_other_1_C      
capture rename KW gp_s_building_paper_other_2       
capture rename KX gp_q_building_paper_other_2_A      
capture rename KY gp_v_building_paper_other_2_A 
capture rename KZ gp_q_building_paper_other_2_B      
capture rename LA gp_v_building_paper_other_2_B      
capture rename LB gp_q_building_paper_other_2_C      
capture rename LC gp_v_building_paper_other_2_C      
capture rename LD gp_s_other_paper_1      
capture rename LE gp_q_other_paper_1_A  
capture rename LF gp_v_other_paper_1_A  
capture rename LG gp_q_other_paper_1_B  
capture rename LH gp_v_other_paper_1_B  
capture rename LI gp_q_other_paper_1_C  
capture rename LJ gp_v_other_paper_1_C  
capture rename LK gp_s_other_paper_2  
capture rename LL gp_q_other_paper_2_A  
capture rename LM gp_v_other_paper_2_A  
capture rename LN gp_q_other_paper_2_B  
capture rename LO gp_v_other_paper_2_B  
capture rename LP gp_q_other_paper_2_C  
capture rename LQ gp_v_other_paper_2_C  
capture rename LR gp_q_total_paper_A  
capture rename LS gp_v_total_paper_A   
capture rename LT gp_q_total_paper_B   
capture rename LU gp_v_total_paper_B   
capture rename LV gp_q_total_paper_C   
capture rename LW gp_v_total_paper_C   
capture rename LX gp_v_converted_paper_kraft  
capture rename LY gp_v_converted_paper_other  
capture rename LZ gp_s_boxes1  
capture rename MA gp_v_boxes1  
capture rename MB gp_s_boxes2  
capture rename MC gp_v_boxes2  
capture rename MD gp_s_boxes3 
capture rename ME gp_v_boxes3 
capture rename MF gp_v_carboard_paper_converted  
capture rename MG gp_v_cigarette_paper   
capture rename MH gp_v_coated_book_paper  
capture rename MI gp_v_crepe_paper 
capture rename MJ gp_v_glazed_paper 
capture rename MK gp_v_napkins  
capture rename ML gp_v_papeleries 
capture rename MM gp_v_tablets_other_1  
capture rename MN gp_v_toilet_paper  
capture rename MO gp_v_towels  
capture rename MP gp_v_twister_paper  
capture rename MQ gp_v_waterproof_wrapping  
capture rename MR gp_v_waxed_paper  
capture rename MS gp_s_converted_paper_other_1   
capture rename MT gp_v_converted_paper_other_1   
capture rename MU gp_s_converted_paper_other_2   
capture rename MV gp_v_converted_paper_other_2   
capture rename MW gp_v_cardboard_paper_converted   
capture rename MX gp_s_other1
capture rename MY gp_v_other1
capture rename MZ gp_s_other2
capture rename NA gp_v_other2
capture rename NB g000v

//total capacity?
capture rename NC z_equipment_capacity

//rename man hours variables
capture rename ND emh01
capture rename NE emh02
capture rename NF emh03
capture rename NG emh04
capture rename NH emh05
capture rename NI emh06
capture rename NJ emh07
capture rename NK emh08
capture rename NL emh09
capture rename NM emh10
capture rename NN emh11
capture rename NO emh12
drop NP
