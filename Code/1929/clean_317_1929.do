//rename variables for industry 317 in year 1929

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//output variables
rename	CO	gp_q_Spirits
rename	CP	gp_v_Spirits
rename	CQ	gp_q_Rosin
rename	CR	gp_v_Rosin
rename	CS	gp_q_Dross
rename	CT	gp_v_Dross
rename	CU	gp_s_Other_Rosin
rename	CV	gp_q_Other_Rosin
rename	CW	gp_v_Other_Rosin
rename	CX	gp_u_Rabbits
rename	CY	gp_v_receipts_distilling
rename	CZ	gp_q_TurpentineForOthers
rename	DA	gp_q_RosinForOthers
rename	DR	gp_q_CrudeTurpentine
rename	DS	gp_v_CrudeTurpentine

//rename fuel variables
rename	DB	ff009q
rename	DC	ff009v

//rename inventory variables
rename	DD	inv_q_Turpentine
rename	DE	inv_q_Rosin

//rename input variables
rename	DF	j_q_cupsVirgin
rename	DG	j_q_boxesVirgin
rename	DH	j_q_totalVirgin
rename	DI	j_q_cupsYearling
rename	DJ	j_q_boxesYearling
rename	DK	j_q_totalYearling
rename	DL	j_q_cupsThirdSubsequent
rename	DM	j_q_boxesThirdSubsequent
rename	DN 	j_q_totalThirdSubsequent
rename	DO 	j_q_cupsTotal
rename	DP	j_q_boxesTotal
rename	DQ	j_q_cupBoxesTotal

//rename formB variable
rename	DT	z_formB
