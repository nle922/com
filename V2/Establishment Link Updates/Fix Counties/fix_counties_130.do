//Fix cases of establishments located in different counties in different years for ind_code_num == 130
replace ag003 = "LAFAYETTE" if obs_id == "1935130000000000026"
replace ag003_fips = 55 if obs_id=="1935130000000000026"
replace ag003_fips_cpp = "55" if obs_id=="1935130000000000026"

replace ag003 = "LAFAYETTE" if obs_id == "1935130000000000023"
replace ag003_fips = 55 if obs_id=="1935130000000000023"
replace ag003_fips_cpp = "55" if obs_id=="1935130000000000023"

replace ag003 = "LAFAYETTE" if obs_id == "1935130000000000024"
replace ag003_fips = 55 if obs_id=="1935130000000000024"
replace ag003_fips_cpp = "55" if obs_id=="1935130000000000024"
