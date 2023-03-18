//Fix cases of establishments located in different counties in different years for ind_code_num == 705
replace ag003 = "NORFOLK" if obs_id == "705GQJTMQVMTR"
replace ag003_fips = 21 if obs_id=="705GQJTMQVMTR"
replace ag003_fips_cpp = "21" if obs_id=="705GQJTMQVMTR"

replace ag003 = "DENVER" if obs_id == "1931705000000000067"
replace ag003_fips = 31 if obs_id=="1931705000000000067"
replace ag003_fips_cpp = "31" if obs_id=="1931705000000000067"

replace ag003 = "WILBARGER" if obs_id == "1931705000000000344"
replace ag003_fips = 487 if obs_id=="1931705000000000344"
replace ag003_fips_cpp = "487" if obs_id=="1931705000000000344"

replace ag003 = "EAST BATON ROUGE" if obs_id == "1935705000000000127"
replace ag003_fips = 33 if obs_id=="1935705000000000127"
replace ag003_fips_cpp = "33" if obs_id=="1935705000000000127"

replace ag003_fips = 21 if obs_id=="1935705000000000135"
replace ag003_fips_cpp = "21" if obs_id=="1935705000000000135"

replace ag003 = "BALTIMORE" if obs_id == "1929705000000000128"
replace ag003_fips = 510 if obs_id=="1929705000000000128"
replace ag003_fips_cpp = "510" if obs_id=="1929705000000000128"
