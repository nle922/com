//rename variables for industry 126 in year 1929

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//output variables
rename	CN	gp_u_Chickens
rename	CO	gp_q_Chickens
rename	CP	gp_v_Chickens
rename	CQ	gp_u_Duck
rename	CR	gp_q_Duck
rename	CS	gp_v_Duck
rename	CT	gp_u_Turkeys
rename	CU	gp_q_Turkeys
rename	CV	gp_v_Turkeys
rename	CW	gp_u_Dressed_Other
rename	CX	gp_q_Dressed_Other
rename	CY	gp_v_Dressed_Other
rename	CZ	gp_s_Dressed_Other
rename	DA	gp_u_Rabbits
rename	DB	gp_q_Rabbits
rename	DC	gp_v_Rabbits
rename	DD	gp_s_Rabbits
rename	DE	gp_u_Poultry_canned_whole
rename	DF	gp_q_Poultry_canned_whole
rename	DG	gp_v_Poultry_canned_whole
rename	DH	gp_s_Poultry_canned_whole
rename	DI	gp_u_Poultry_canned_parts
rename	DJ	gp_q_Poultry_canned_parts
rename	DK	gp_v_Poultry_canned_parts
rename	DL	gp_s_Poultry_canned_parts
rename	DM	gp_u_Chicken_potted
rename	DN	gp_q_Chicken_potted
rename	DO	gp_v_Chicken_potted
rename	DP	gp_u_Chicken_broth
rename	DQ	gp_q_Chicken_broth
rename	DR 	gp_v_Chicken_broth
rename	DS 	gp_u_Feathers
rename	DT	gp_q_Feathers
rename	DU	gp_v_Feathers
rename	DV	gp_u_Poultry_Other1
rename	DW	gp_q_Poultry_Other1
rename	DX	gp_v_Poultry_Other1
rename	DY	gp_s_Poultry_Other1
rename	DZ	gp_u_Poultry_Other2
rename	EA	gp_q_Poultry_Other2
rename	EB	gp_v_Poultry_Other2
rename	EC 	gp_s_Poultry_Other2
rename	ED	gp_u_Other1
rename	EE	gp_q_Other1
rename	EF	gp_v_Other1
rename	EG	gp_s_Other1
rename	EH	gp_u_Other2
rename	EI	gp_q_Other2
rename	EJ	gp_v_Other2
rename	EK	gp_s_Other2
rename 	EL 	g000v
