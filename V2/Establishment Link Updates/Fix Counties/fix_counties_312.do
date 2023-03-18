//Fix cases of establishments located in different counties in different years for ind_code_num == 312
replace ag003 = "BROOKLYN" if obs_id=="1931312000000000009"
replace ag003_fips = 47 if obs_id=="1931312000000000009"
replace ag003_fips_cpp = "47" if obs_id=="1931312000000000009"
