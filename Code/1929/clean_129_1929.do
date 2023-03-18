//rename variables for industry 129 in 1929

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//output variables
rename	CN	gp_q_sugar_granulated
rename	CO	gp_v_sugar_granulated
rename	CP	gp_q_sugar_unfinished
rename	CQ	gp_v_sugar_unfinished
rename	CR	gp_q_molasses_sold
rename	CS	gp_v_molasses_sold
rename	CT	gp_q_molasses_discarded
rename	CU	gp_v_molasses_discarded
rename	CV	gp_q_molasses_other
rename	CW	gp_v_molasses_other
rename	CX	gp_q_syrup
rename	CY	gp_v_syrup
rename	CZ	gp_q_beet_pulp_dried
rename	DA	gp_v_beet_pulp_dried
rename	DB	gp_q_beet_pulp_moist
rename	DC	gp_v_beet_pulp_moist
rename	DD	gp_q_beet_pulp_molasses
rename	DE	gp_v_beet_pulp_molasses
rename	DF	gp_s_otherProducts1
rename	DG	gp_q_otherProducts1
rename	DH	gp_v_otherProducts2
rename	DI	gp_s_otherProducts2
rename	DJ	gp_q_otherProducts2
rename	DK	gp_v_otherProducts1
rename 	DL 	g000v

//input variables
rename	DM	j_factory_planted
rename	DN	j_factory_harvested
rename	DO	j_factory_beets_received
rename	DP	j_factory_beets_sliced
rename	DQ	j_factory_cost_beets_received
rename	DR	j_tenants_planted
rename	DS	j_tenants_harvested
rename	DT	j_tenants_beets_received
rename	DU	j_tenants_beets_sliced
rename	DV	j_tenants_cost_beets_received
rename	DW	j_contract_planted
rename	DX	j_contract_harvested
rename	DY	j_contract_beets_received
rename	DZ	j_contract_beets_sliced
rename	EA	j_contract_cost_beets_received
rename	EB	j_purchased_beets_received
rename	EC	j_purchased_beets_sliced
rename	ED	j_purchased_cost_beets_received
rename	EE	j_other_beets_received
rename	EF	j_other_beets_sliced
rename	EG	j_other_cost_beets_received
rename	EH	j_q_transferred
rename	EI	j_v_transferred
rename	EJ	j_location_received
rename	EK	j_location_transferred
rename	EL	j_sucrose_percent
rename	EM	j_purity_coefficient
rename	EN	j_recovery_specify
rename	EO	e0009s
