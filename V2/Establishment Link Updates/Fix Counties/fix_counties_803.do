//Fix cases of establishments located in different counties in different years for ind_code_num == 803
replace ag003_fips_cpp = "5" if obs_id=="1931803000000000015"
replace ag003_fips_cpp = "5" if obs_id=="1933803000000000016"
