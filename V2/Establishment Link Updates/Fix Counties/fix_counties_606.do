//Fix cases of establishments located in different counties in different years for ind_code_num == 606
replace ag003 = "CARSON" if obs_id == "1933606000000000025"
replace ag003_fips = 65 if obs_id=="1933606000000000025"
replace ag003_fips_cpp = "65" if obs_id=="1933606000000000025"
