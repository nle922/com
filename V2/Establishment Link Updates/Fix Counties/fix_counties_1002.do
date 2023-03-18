//Fix cases of establishments located in different counties in different years for ind_code_num == 1002
replace ag003 = "ST. CLAIR" if obs_id=="19351002000000000006"
replace ag003_fips = 115 if obs_id=="19351002000000000006"
replace ag003_fips_cpp = "115" if obs_id=="19351002000000000006"
