//Fix cases of establishments located in different counties in different years for ind_code_num == 1301
replace ag003 = "LIVINGSTON" if obs_id == "19351301000000000138"
replace ag003_fips = 117 if obs_id=="19351301000000000138"
replace ag003_fips_cpp = "117" if obs_id=="19351301000000000138"

