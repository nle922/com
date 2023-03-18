//rename variables for industry 407 in year 1929

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename employment variable
rename CO ewemt

//rename fuel variable
rename CP f009

//rename output variables
rename CQ gp_q_newsprint_rolls_A 
rename CR gp_v_newsprint_rolls_A  
rename CS gp_q_newsprint_rolls_B 
rename CT gp_v_newsprint_rolls_B  
rename CU gp_q_newsprint_rolls_C  
rename CV gp_v_newsprint_rolls_C  
rename CW gp_q_newsprint_sheets_A   
rename CX gp_v_newsprint_sheets_A    
rename CY gp_q_newsprint_sheets_B    
rename CZ gp_v_newsprint_sheets_B    
rename DA gp_q_newsprint_sheets_C    
rename DB gp_v_newsprint_sheets_C    
rename DC gp_q_paper_hanging_A    
rename DD gp_v_paper_hanging_A     
rename DE gp_q_paper_hanging_B     
rename DF gp_v_paper_hanging_B     
rename DG gp_q_paper_hanging_C     
rename DH gp_v_paper_hanging_C     
rename DI gp_q_paper_catalogue_A 
rename DJ gp_v_paper_catalogue_A      
rename DK gp_q_paper_catalogue_B      
rename DL gp_v_paper_catalogue_B      
rename DM gp_q_paper_catalogue_C      
rename DN gp_v_paper_catalogue_C      
rename DO gp_q_paper_poster_A      
rename DP gp_v_paper_poster_A       
rename DQ gp_q_paper_poster_B       
rename DR gp_v_paper_poster_B       
rename DS gp_q_paper_poster_C       
rename DT gp_v_paper_poster_C       
rename DU gp_q_book_paper_A 
rename DV gp_v_book_paper_A  
rename DW gp_q_book_paper_B  
rename DX gp_v_book_paper_B  
rename DY gp_q_book_paper_C  
rename DZ gp_v_book_paper_C  
rename EA gp_q_body_stock_A  
rename EB gp_v_body_stock_A   
rename EC gp_q_body_stock_B   
rename ED gp_v_body_stock_B   
rename EE gp_q_body_stock_C   
rename EF gp_v_body_stock_C   
rename EG gp_q_lithograph_A   
rename EH gp_v_lithograph_A    
rename EI gp_q_lithograph_B    
rename EJ gp_v_lithograph_B    
rename EK gp_q_lithograph_C    
rename EL gp_v_lithograph_C   
rename EM gp_q_paper_offset_A    
rename EN gp_v_paper_offset_A     
rename EO gp_q_paper_offset_B     
rename EP gp_v_paper_offset_B     
rename EQ gp_q_paper_offset_C     
rename ER gp_v_paper_offset_C     
rename ES gp_q_text_paper_A     
rename ET gp_v_text_paper_A      
rename EU gp_q_text_paper_B      
rename EV gp_v_text_paper_B      
rename EW gp_q_text_paper_C      
rename EX gp_v_text_paper_C      
rename EY gp_s_other_book_paper_1  
rename EZ gp_q_other_book_paper_1_A   
rename FA gp_v_other_book_paper_1_A   
rename FB gp_q_other_book_paper_1_B   
rename FC gp_v_other_book_paper_1_B   
rename FD gp_q_other_book_paper_1_C   
rename FE gp_v_other_book_paper_1_C   
rename FF gp_s_other_book_paper_2   
rename FG gp_q_other_book_paper_2_A   
rename FH gp_v_other_book_paper_2_A   
rename FI gp_q_other_book_paper_2_B   
rename FJ gp_v_other_book_paper_2_B   
rename FK gp_q_other_book_paper_2_C   
rename FL gp_v_other_book_paper_2_C   
rename FM gp_q_cover_paper_A 
rename FN gp_v_cover_paper_A  
rename FO gp_q_cover_paper_B  
rename FP gp_v_cover_paper_B  
rename FQ gp_q_cover_paper_C  
rename FR gp_v_cover_paper_C  
rename FS gp_q_writing_paper_rag_A  
rename FT gp_v_writing_paper_rag_A   
rename FU gp_q_writing_paper_rag_B   
rename FV gp_v_writing_paper_rag_B   
rename FW gp_q_writing_paper_rag_C   
rename FX gp_v_writing_paper_rag_C   
rename FY gp_q_writing_paper_rag_less100_A  
rename FZ gp_v_writing_paper_rag_less100_A   
rename GA gp_q_writing_paper_rag_less100_B   
rename GB gp_v_writing_paper_rag_less100_B   
rename GC gp_q_writing_paper_rag_less100_C   
rename GD gp_v_writing_paper_rag_less100_C   
rename GE gp_q_writing_paper_rag_less50_A   
rename GF gp_v_writing_paper_rag_less50_A    
rename GG gp_q_writing_paper_rag_less50_B    
rename GH gp_v_writing_paper_rag_less50_B    
rename GI gp_q_writing_paper_rag_less50_C    
rename GJ gp_v_writing_paper_rag_less50_C    
rename GK gp_q_paper_sulphite_A 
rename GL gp_v_paper_sulphite_A   
rename GM gp_q_paper_sulphite_B   
rename GN gp_v_paper_sulphite_B   
rename GO gp_q_paper_sulphite_C   
rename GP gp_v_paper_sulphite_C   
rename GQ gp_q_paper_other_chemical_A  
rename GR gp_v_paper_other_chemical_A   
rename GS gp_q_paper_other_chemical_B   
rename GT gp_v_paper_other_chemical_B   
rename GU gp_q_paper_other_chemical_C   
rename GV gp_v_paper_other_chemical_C   
rename GW gp_q_paper_sulphiteBags_A
rename GX gp_v_paper_sulphiteBags_A
rename GY gp_q_paper_sulphiteBags_B
rename GZ gp_v_paper_sulphiteBags_B
rename HA gp_q_paper_sulphiteBags_C
rename HB gp_v_paper_sulphiteBags_C
rename HC gp_q_paper_sulphateBags_A
rename HD gp_v_paper_sulphateBags_A
rename HE gp_q_paper_sulphateBags_B
rename HF gp_v_paper_sulphateBags_B
rename HG gp_q_paper_sulphateBags_C
rename HH gp_v_paper_sulphateBags_C
rename HI gp_q_wrapping_paper_unbleached_A  
rename HJ gp_v_wrapping_paper_unbleached_A   
rename HK gp_q_wrapping_paper_unbleached_B   
rename HL gp_v_wrapping_paper_unbleached_B   
rename HM gp_q_wrapping_paper_unbleached_C   
rename HN gp_v_wrapping_paper_unbleached_C   
rename HO gp_q_wrapping_paper_bleached_A   
rename HP gp_v_wrapping_paper_bleached_A    
rename HQ gp_q_wrapping_paper_bleached_B    
rename HR gp_v_wrapping_paper_bleached_B    
rename HS gp_q_wrapping_paper_bleached_C    
rename HT gp_v_wrapping_paper_bleached_C    
rename HU gp_q_wrapping_paper_bogus_A  
rename HV gp_v_wrapping_paper_bogus_A   
rename HW gp_q_wrapping_paper_bogus_B   
rename HX gp_v_wrapping_paper_bogus_B   
rename HY gp_q_wrapping_paper_bogus_C   
rename HZ gp_v_wrapping_paper_bogus_C   
rename IA gp_q_wrapping_paper_greasepf_A   
rename IB gp_v_wrapping_paper_greasepf_A    
rename IC gp_q_wrapping_paper_greasepf_B    
rename ID gp_v_wrapping_paper_greasepf_B    
rename IE gp_q_wrapping_paper_greasepf_C    
rename IF gp_v_wrapping_paper_greasepf_C    
rename IG gp_q_wrapping_paper_glassine_A    
rename IH gp_v_wrapping_paper_glassine_A     
rename II gp_q_wrapping_paper_glassine_B     
rename IJ gp_v_wrapping_paper_glassine_B     
rename IK gp_q_wrapping_paper_glassine_C     
rename IL gp_v_wrapping_paper_glassine_C  
rename IM gp_q_wrapping_paper_heavy_A     
rename IN gp_v_wrapping_paper_heavy_A      
rename IO gp_q_wrapping_paper_heavy_B      
rename IP gp_v_wrapping_paper_heavy_B      
rename IQ gp_q_wrapping_paper_heavy_C      
rename IR gp_v_wrapping_paper_heavy_C  
rename IS gp_q_wrapping_paper_kraft_nor_A     
rename IT gp_v_wrapping_paper_kraft_nor_A      
rename IU gp_q_wrapping_paper_kraft_nor_B      
rename IV gp_v_wrapping_paper_kraft_nor_B      
rename IW gp_q_wrapping_paper_kraft_nor_C      
rename IX gp_v_wrapping_paper_kraft_nor_C      
rename IY gp_q_wrapping_paper_kraft_sot_A      
rename IZ gp_v_wrapping_paper_kraft_sot_A       
rename JA gp_q_wrapping_paper_kraft_sot_B       
rename JB gp_v_wrapping_paper_kraft_sot_B       
rename JC gp_q_wrapping_paper_kraft_sot_C       
rename JD gp_v_wrapping_paper_kraft_sot_C 
rename JE gp_q_wrapping_paper_kraft_pac_A      
rename JF gp_v_wrapping_paper_kraft_pac_A       
rename JG gp_q_wrapping_paper_kraft_pac_B       
rename JH gp_v_wrapping_paper_kraft_pac_B       
rename JI gp_q_wrapping_paper_kraft_pac_C       
rename JJ gp_v_wrapping_paper_kraft_pac_C 
rename JK gp_q_wrapping_paper_rope_A      
rename JL gp_v_wrapping_paper_rope_A       
rename JM gp_q_wrapping_paper_rope_B       
rename JN gp_v_wrapping_paper_rope_B       
rename JO gp_q_wrapping_paper_rope_C       
rename JP gp_v_wrapping_paper_rope_C       
rename JQ gp_q_wrapping_paper_groundwood_A       
rename JR gp_v_wrapping_paper_groundwood_A        
rename JS gp_q_wrapping_paper_groundwood_B        
rename JT gp_v_wrapping_paper_groundwood_B        
rename JU gp_q_wrapping_paper_groundwood_C        
rename JV gp_v_wrapping_paper_groundwood_C 
rename JW gp_q_wrapping_paper_tag_A        
rename JX gp_v_wrapping_paper_tag_A         
rename JY gp_q_wrapping_paper_tag_B         
rename JZ gp_v_wrapping_paper_tag_B         
rename KA gp_q_wrapping_paper_tag_C         
rename KB gp_v_wrapping_paper_tag_C  
rename KC gp_q_wrapping_paper_vegetable_A         
rename KD gp_v_wrapping_paper_vegetable_A          
rename KE gp_q_wrapping_paper_vegetable_B          
rename KF gp_v_wrapping_paper_vegetable_B          
rename KG gp_q_wrapping_paper_vegetable_C          
rename KH gp_v_wrapping_paper_vegetable_C          
rename KI gp_s_wrapping_paper_other_1  
rename KJ gp_q_wrapping_paper_other_1_A   
rename KK gp_v_wrapping_paper_other_1_A   
rename KL gp_q_wrapping_paper_other_1_B   
rename KM gp_v_wrapping_paper_other_1_B   
rename KN gp_q_wrapping_paper_other_1_C   
rename KO gp_v_wrapping_paper_other_1_C   
rename KP gp_s_wrapping_paper_other_2    
rename KQ gp_q_wrapping_paper_other_2_A   
rename KR gp_v_wrapping_paper_other_2_A   
rename KS gp_q_wrapping_paper_other_2_B   
rename KT gp_v_wrapping_paper_other_2_B   
rename KU gp_q_wrapping_paper_other_2_B  
rename KV gp_v_wrapping_paper_other_2_C 
rename KW gp_q_board_paper_liner_A    
rename KX gp_v_board_paper_liner_A     
rename KY gp_q_board_paper_liner_B     
rename KZ gp_v_board_paper_liner_B     
rename LA gp_q_board_paper_liner_C     
rename LB gp_v_board_paper_liner_C 
rename LC gp_q_board_paper_chip_A    
rename LD gp_v_board_paper_chip_A     
rename LE gp_q_board_paper_chip_B     
rename LF gp_v_board_paper_chip_B     
rename LG gp_q_board_paper_chip_C     
rename LH gp_v_board_paper_chip_C 
rename LI gp_q_board_paper_straw_A     
rename LJ gp_v_board_paper_straw_A      
rename LK gp_q_board_paper_straw_B      
rename LL gp_v_board_paper_straw_B      
rename LM gp_q_board_paper_straw_C      
rename LN gp_v_board_paper_straw_C 
rename LO gp_q_board_paper_folding_A      
rename LP gp_v_board_paper_folding_A       
rename LQ gp_q_board_paper_folding_B       
rename LR gp_v_board_paper_folding_B       
rename LS gp_q_board_paper_folding_C       
rename LT gp_v_board_paper_folding_C       
rename LU gp_q_board_paper_patent_A       
rename LV gp_v_board_paper_patent_A        
rename LW gp_q_board_paper_patent_B        
rename LX gp_v_board_paper_patent_B        
rename LY gp_q_board_paper_patent_C        
rename LZ gp_v_board_paper_patent_C        
rename MA gp_q_board_paper_other_folding_A        
rename MB gp_v_board_paper_other_folding_A         
rename MC gp_q_board_paper_other_folding_B         
rename MD gp_v_board_paper_other_folding_B         
rename ME gp_q_board_paper_other_folding_C         
rename MF gp_v_board_paper_other_folding_C   
rename MG gp_q_board_paper_setup_box_A         
rename MH gp_v_board_paper_setup_box_A          
rename MI gp_q_board_paper_setup_box_B          
rename MJ gp_v_board_paper_setup_box_B          
rename MK gp_q_board_paper_setup_box_C          
rename ML gp_v_board_paper_setup_box_C          
rename MM gp_q_board_paper_news_A          
rename MN gp_v_board_paper_news_A           
rename MO gp_q_board_paper_news_B           
rename MP gp_v_board_paper_news_B           
rename MQ gp_q_board_paper_news_C           
rename MR gp_v_board_paper_news_C           
rename MS gp_q_board_paper_other_A           
rename MT gp_v_board_paper_other_A            
rename MU gp_q_board_paper_other_B            
rename MV gp_v_board_paper_other_B            
rename MW gp_q_board_paper_other_C            
rename MX gp_v_board_paper_other_C            
rename MY gp_q_board_paper_wall_A            
rename MZ gp_v_board_paper_wall_A             
rename NA gp_q_board_paper_wall_B             
rename NB gp_v_board_paper_wall_B             
rename NC gp_q_board_paper_wall_C             
rename ND gp_v_board_paper_wall_C             
rename NE gp_q_board_paper_insulating_A             
rename NF gp_v_board_paper_insulating_A              
rename NG gp_q_board_paper_insulating_B              
rename NH gp_v_board_paper_insulating_B              
rename NI gp_q_board_paper_insulating_C              
rename NJ gp_v_board_paper_insulating_C              
rename NK gp_s_board_paper_other_1               
rename NL gp_q_board_paper_other_1_A               
rename NM gp_v_board_paper_other_1_A               
rename NN gp_q_board_paper_other_1_B               
rename NO gp_v_board_paper_other_1_B               
rename NP gp_q_board_paper_other_1_C               
rename NQ gp_v_board_paper_other_1_C                 
rename NR gp_q_board_paper_binders_A                
rename NS gp_v_board_paper_binders_A                 
rename NT gp_q_board_paper_binders_B                 
rename NU gp_v_board_paper_binders_B                 
rename NV gp_q_board_paper_binders_C                 
rename NW gp_v_board_paper_binders_C             
rename NX gp_q_cardboard_bristol_A 
rename NY gp_v_cardboard_bristol_A  
rename NZ gp_q_cardboard_bristol_B  
rename OA gp_v_cardboard_bristol_B  
rename OB gp_q_cardboard_bristol_C  
rename OC gp_v_cardboard_bristol_C   
rename OD gp_q_cardboard_leather_A   
rename OE gp_v_cardboard_leather_A    
rename OF gp_q_cardboard_leather_B    
rename OG gp_v_cardboard_leather_B    
rename OH gp_q_cardboard_leather_C    
rename OI gp_v_cardboard_leather_C    
rename OJ gp_q_cardboard_press_A    
rename OK gp_v_cardboard_press_A     
rename OL gp_q_cardboard_press_B     
rename OM gp_v_cardboard_press_B     
rename ON gp_q_cardboard_press_C     
rename OO gp_v_cardboard_press_C 
rename OP gp_s_cardboard_other_1  
rename OQ gp_q_cardboard_other_1_A  
rename OR gp_v_cardboard_other_1_A  
rename OS gp_q_cardboard_other_1_B  
rename OT gp_v_cardboard_other_1_B  
rename OU gp_q_cardboard_other_1_C  
rename OV gp_v_cardboard_other_1_C  
rename OW gp_s_cardboard_other_2   
rename OX gp_q_cardboard_other_2_A   
rename OY gp_v_cardboard_other_2_A   
rename OZ gp_q_cardboard_other_2_B   
rename PA gp_v_cardboard_other_2_B   
rename PB gp_q_cardboard_other_2_C   
rename PC gp_v_cardboard_other_2_C
rename PD gp_q_tissue_paper_high_A    
rename PE gp_v_tissue_paper_high_A     
rename PF gp_q_tissue_paper_high_B     
rename PG gp_v_tissue_paper_high_B     
rename PH gp_q_tissue_paper_high_C     
rename PI gp_v_tissue_paper_high_C     
rename PJ gp_q_tissue_paper_manila_A      
rename PK gp_v_tissue_paper_manila_A       
rename PL gp_q_tissue_paper_manila_B       
rename PM gp_v_tissue_paper_manila_B       
rename PM gp_q_tissue_paper_manila_C       
rename PO gp_v_tissue_paper_manila_C       
rename PP gp_q_tissue_paper_napkin_A       
rename PQ gp_v_tissue_paper_napkin_A        
rename PR gp_q_tissue_paper_napkin_B        
rename PS gp_v_tissue_paper_napkin_B        
rename PT gp_q_tissue_paper_napkin_C        
rename PU gp_v_tissue_paper_napkin_C        
rename PV gp_q_tissue_paper_toilet_A        
rename PV gp_v_tissue_paper_toilet_A         
rename PX gp_q_tissue_paper_toilet_B         
rename PY gp_v_tissue_paper_toilet_B         
rename PZ gp_q_tissue_paper_toilet_C         
rename QA gp_v_tissue_paper_toilet_C         
rename QB gp_q_tissue_paper_towel_A         
rename QC gp_v_tissue_paper_towel_A          
rename QD gp_q_tissue_paper_towel_B          
rename QE gp_v_tissue_paper_towel_B          
rename QF gp_q_tissue_paper_towel_C          
rename QG gp_v_tissue_paper_towel_C          
rename QH gp_q_tissue_paper_waxing_A          
rename QI gp_v_tissue_paper_waxing_A           
rename QJ gp_q_tissue_paper_waxing_B           
rename QK gp_v_tissue_paper_waxing_B           
rename QL gp_q_tissue_paper_waxing_C           
rename QM gp_v_tissue_paper_waxing_C   
rename QN gp_q_absorbent_paper_blotting_A           
rename QO gp_v_absorbent_paper_blotting_A            
rename QP gp_q_absorbent_paper_blotting_B            
rename QQ gp_v_absorbent_paper_blotting_B            
rename QR gp_q_absorbent_paper_blotting_C            
rename QS gp_v_absorbent_paper_blotting_C            
rename QT gp_q_absorbent_paper_filter_A            
rename QU gp_v_absorbent_paper_filter_A             
rename QV gp_q_absorbent_paper_filter_B             
rename QW gp_v_absorbent_paper_filter_B             
rename QX gp_q_absorbent_paper_filter_C             
rename QY gp_v_absorbent_paper_filter_C             
rename QZ gp_q_absorbent_paper_matrix_A             
rename RA gp_v_absorbent_paper_matrix_A              
rename RB gp_q_absorbent_paper_matrix_B              
rename RC gp_v_absorbent_paper_matrix_B              
rename RD gp_q_absorbent_paper_matrix_C              
rename RE gp_v_absorbent_paper_matrix_C   
rename RF gp_q_absrbent_ppr_vlcn_A              
rename RG gp_v_absrbent_ppr_vlcn_A               
rename RH gp_q_absrbent_ppr_vlcn_B               
rename RI gp_v_absrbent_ppr_vlcn_B               
rename RJ gp_q_absrbent_ppr_vlcn_C               
rename RK gp_v_absrbent_ppr_vlcn_C               
rename RL gp_q_absorbent_paper_celluloid_A               
rename RM gp_v_absorbent_paper_celluloid_A                
rename RN gp_q_absorbent_paper_celluloid_B                
rename RO gp_v_absorbent_paper_celluloid_B                
rename RP gp_q_absorbent_paper_celluloid_C                
rename RQ gp_v_absorbent_paper_celluloid_C                
rename RR gp_q_absorbent_paper_parchmenting_A                
rename RS gp_v_absorbent_paper_parchmenting_A                 
rename RT gp_q_absorbent_paper_parchmenting_B                 
rename RU gp_v_absorbent_paper_parchmenting_B                 
rename RV gp_q_absorbent_paper_parchmenting_C                 
rename RW gp_v_absorbent_paper_parchmenting_C  
rename RX gp_s_absorbent_paper_other_1                
rename RY gp_q_absorbent_paper_other_1_A                 
rename RZ gp_v_absorbent_paper_other_1_A                 
rename SA gp_q_absorbent_paper_other_1_B                 
rename SB gp_v_absorbent_paper_other_1_B                 
rename SC gp_q_absorbent_paper_other_1_C                 
rename SD gp_v_absorbent_paper_other_1_C                 
rename SE gp_s_absorbent_paper_other_2                  
rename SF gp_q_absorbent_paper_other_2_A                  
rename SG gp_v_absorbent_paper_other_2_A                  
rename SH gp_q_absorbent_paper_other_2_B                  
rename SI gp_v_absorbent_paper_other_2_B                  
rename SJ gp_q_absorbent_paper_other_2_C                  
rename SK gp_v_absorbent_paper_other_2_C                  
rename SL gp_s_absorbent_paper_other_3                   
rename SM gp_q_absorbent_paper_other_3_A                   
rename SN gp_v_absorbent_paper_other_3_A                   
rename SO gp_q_absorbent_paper_other_3_B                   
rename SP gp_v_absorbent_paper_other_3_B                   
rename SQ gp_q_absorbent_paper_other_3_C                   
rename SR gp_v_absorbent_paper_other_3_C                   
rename SS gp_q_building_paper_sheathing_A  
rename ST gp_v_building_paper_sheathing_A   
rename SU gp_q_building_paper_sheathing_B   
rename SV gp_v_building_paper_sheathing_B   
rename SW gp_q_building_paper_sheathing_C   
rename SX gp_v_building_paper_sheathing_C 	
rename SY gp_q_building_paper_felt_A   
rename SZ gp_v_building_paper_felt_A    
rename TA gp_q_building_paper_felt_B    
rename TB gp_v_building_paper_felt_B    
rename TC gp_q_building_paper_felt_C    
rename TD gp_v_building_paper_felt_C    
rename TE gp_q_building_paper_asbestos_A    
rename TF gp_v_building_paper_asbestos_A     
rename TG gp_q_building_paper_asbestos_B     
rename TH gp_v_building_paper_asbestos_B     
rename TI gp_q_building_paper_asbestos_C     
rename TJ gp_v_building_paper_asbestos_C     
rename TK gp_s_building_paper_other_1     
rename TL gp_q_building_paper_other_1_A      
rename TM gp_v_building_paper_other_1_A      
rename TN gp_q_building_paper_other_1_B      
rename TO gp_v_building_paper_other_1_B      
rename TP gp_q_building_paper_other_1_C      
rename TQ gp_v_building_paper_other_1_C      
rename TR gp_s_building_paper_other_2       
rename TS gp_q_building_paper_other_2_A      
rename TT gp_v_building_paper_other_2_A 
rename TU gp_q_building_paper_other_2_B      
rename TV gp_v_building_paper_other_2_B      
rename TW gp_q_building_paper_other_2_C      
rename TX gp_v_building_paper_other_2_C      
rename TY gp_s_other_paper_1      
rename TZ gp_q_other_paper_1_A  
rename UA gp_v_other_paper_1_A  
rename UB gp_q_other_paper_1_B  
rename UC gp_v_other_paper_1_B  
rename UD gp_q_other_paper_1_C  
rename UE gp_v_other_paper_1_C  
rename UF gp_s_other_paper_2  
rename UG gp_q_other_paper_2_A  
rename UH gp_v_other_paper_2_A  
rename UI gp_q_other_paper_2_B  
rename UJ gp_v_other_paper_2_B  
rename UK gp_q_other_paper_2_C  
rename UL gp_v_other_paper_2_C  
rename UM gp_q_total_paper_A  
rename UN gp_v_total_paper_A   
rename UO gp_q_total_paper_B   
rename UP gp_v_total_paper_B   
rename UQ gp_q_total_paper_C   
rename UR gp_v_total_paper_C  
rename US gp_q_converted_paper_kraft 
rename UT gp_v_converted_paper_kraft  
rename UU gp_q_converted_paper_other  
rename UV gp_v_converted_paper_other  
rename UW gp_q_boxes_corregated  
rename UX gp_v_boxes_corregated  
rename UY gp_q_boxes_solid  
rename UZ gp_v_boxes_solid 
rename VA gp_q_cartons  
rename VB gp_v_cartons  
rename VC gp_q_setup_paper  
rename VD gp_v_setup_paper  
rename VE gp_q_paper_cans  
rename VF gp_v_paper_cans  
rename VG gp_q_decorated_paper  
rename VH gp_v_decorated_paper  
rename VI gp_s_converted_paper_other_1  
rename VJ gp_q_converted_paper_other_1  
rename VK gp_v_converted_paper_other_1  
rename VL gp_s_converted_paper_other_2   
rename VM gp_q_converted_paper_other_2
rename VN gp_v_converted_paper_other_2   
rename VO gp_v_cardboard_paper_converted  
rename VP gp_q_cardboard_paper_converted   
rename VQ gp_q_cigarette_paper  
rename VR gp_v_cigarette_paper   
rename VS gp_q_coated_book_paper 
rename VT gp_v_coated_book_paper  
rename VU gp_q_crepe_paper  
rename VV gp_v_crepe_paper 
rename VW gp_q_glazed_paper  
rename VX gp_v_glazed_paper 
//all variables below need labels attached to them
rename	VY	gp_q_napkins
rename	VZ	gp_v_napkins
rename	WA	gp_q_papeleries
rename	WB	gp_v_papeleries
rename	WC	gp_q_roofing_paper
rename	WD	gp_v_roofing_paper
rename	WE	gp_q_tablets_book
rename	WF	gp_v_tablets_book
rename	WG	gp_q_tablets_news
rename	WH	gp_v_tablets_news
rename	WI	gp_q_tablets_writing
rename	WJ	gp_v_tablets_writing
rename	WK	gp_s_tablets_other1
rename	WL	gp_q_tablets_other1
rename	WM	gp_v_tablets_other1
rename	WN	gp_s_tablets_other2
rename	WO 	gp_q_tablets_other2
rename	WP	gp_v_tablets_other2
rename	WQ	gp_q_toilet_paper
rename	WR	gp_v_toilet_paper
rename	WS	gp_q_towels
rename	WT	gp_v_towels
rename	WU	gp_q_twisted_paper
rename	WV	gp_v_twister_paper
rename	WW	gp_q_waterproof_wrapping_paper
rename	WX	gp_v_waterproof_wrapping_paper
rename	WY	gp_q_waxed_paper
rename	WZ	gp_v_waxed_paper
rename	XA	gp_s_converted_other1
rename	XB	gp_q_converted_other1
rename	XC	gp_v_converted_other1
rename	XD	gp_s_converted_other2
rename	XE	gp_q_converted_other2
rename	XF	gp_v_converted_other2
rename	XG	gp_v_tptalConverted
rename	XH	gp_s_other1
rename	XI	gp_v_other1
rename	XJ	gp_s_other2
rename	XK	gp_v_other2
rename	XL	g000v

//rename engine and turbine variables
rename	XM	hp0010q
rename	XN	hp0010v

//rename input variables
rename	XO	jp_q_woodpulp_purc
rename	XP	jp_v_woodpulp_purc
rename	XQ	jp_q_woodpulp_prod
rename	XR	jp_v_woodpulp_prod
rename	XS	jp_q_rags
rename	XT	jp_v_rags
rename	XU	jp_q_paper_stock
rename	XV	jp_v_paper_stock
rename	XW	jp_q_manila_stock
rename	XX	jp_v_manila_stock
rename	XY	jp_q_straw
rename	XZ	jp_v_straw
rename	YA	jp_q_rosin
rename	YB	jp_v_rosin
rename	YC	jp_q_rosin_sizing
rename	YD	jp_v_rosin_sizing
rename	YE	jp_q_cassein
rename	YF	jp_v_cassein
rename	YG	jp_q_clay
rename	YH	jp_v_clay

//rename equipment variables
rename	YI	z_equipment_newsprint_fourdr_num
rename	YJ	z_equipment_newsprint_fourdr_cap
rename	YK	z_equipment_newsprint_cyl_num
rename	YL	z_equipment_newsprint_cyl_cap
rename	YM	z_equipment_bookpaper_fourdr_num
rename	YN	z_equipment_bookpaper_fourdr_cap
rename	YO	z_equipment_bookpaper_cyl_num
rename	YP	z_equipment_bookpaper_cyl_cap
rename	YQ	z_equipment_coverppr_fourdr_num
rename	YR	z_equipment_coverppr_fourdr_cap
rename	YS	z_equipment_coverppr_cyl_num
rename	YT	z_equipment_coverppr_cyl_cap
rename	YU	z_equipment_wrtngppr_fourdr_num
rename	YV	z_equipment_wrtngppr_fourdr_cap
rename	YW	z_equipment_wrtngppr_cyl_num
rename	YX	z_equipment_wrtngppr_cyl_cap
rename	YY	z_equipment_wrppngppr_fourdr_num
rename	YZ	z_equipment_wrppngppr_fourdr_cap
rename	ZA	z_equipment_wrppngppr_cyl_num
rename	ZB	z_equipment_wrppngppr_cyl_cap
rename	ZC	z_equipment_boards_fourdr_num
rename	ZD	z_equipment_boards_fourdr_cap
rename	ZE	z_equipment_boards_cyl_num
rename	ZF	z_equipment_boards_cyl_cap
rename	ZG	z_equipment_tissueppr_fourdr_num
rename	ZH	z_equipment_tissueppr_fourdr_cap
rename	ZI	z_equipment_tissueppr_cyl_num
rename	ZJ	z_equipment_tissueppr_cyl_cap
rename	ZK	z_equipment_absrbppr_fourdr_num
rename	ZL	z_equipment_absrbppr_fourdr_cap
rename	ZM	z_equipment_absrbppr_cyl_num
rename	ZN	z_equipment_absrbppr_cyl_cap
rename	ZO	z_equipment_bldppr_fourdr_numb
rename	ZP	z_equipment_bldppr_fourdr_cap
rename	ZQ	z_equipment_bldppr_cyl_num
rename	ZR	z_equipment_bldppr_cyl_cap
rename	ZS	z_equipment_otherpaper1
rename	ZT	z_equipment_otherppr1_fourdr_num
rename	ZU	z_equipment_otherppr1_fourdr_cap
rename	ZV	z_equipment_otherppr1_cyl_num
rename	ZW	z_equipment_otherppr1_cyl_num
rename	ZX	z_equipment_otherpaper2
rename	ZY	z_equipment_otherppr2_fourdr_num
rename	ZZ	z_equipment_otherppr2_fourdr_cap
rename	AAA	z_equipment_otherppr2_cyl_num
rename	AAB	z_equipment_otherppr2_cyl_cap
rename	AAC	z_ratedCapacity_paper