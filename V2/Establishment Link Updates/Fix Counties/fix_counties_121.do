//Fix cases of establishments located in different counties in different years for ind_code_num == 121
replace ag003_fips = 81 if obs_id=="1935121000000000050"
replace ag003_fips_cpp = "81" if obs_id=="1935121000000000050"

replace ag003 = "COOK" if obs_id == "1933121000000000093"
replace ag003_fips = 31 if obs_id=="1933121000000000093"
replace ag003_fips_cpp = "31" if obs_id=="1933121000000000093"

replace ag003 = "COOK" if obs_id == "1935121000000000082"
replace ag003_fips = 31 if obs_id=="1935121000000000082"
replace ag003_fips_cpp = "31" if obs_id=="1935121000000000082"

replace ag001 = "WISCONSIN" if obs_id == "1935121000000000338"
replace ag002 = "MILWAUKEE" if obs_id == "1935121000000000338"
replace ag003_fips = 79 if obs_id=="1935121000000000338"
replace ag003_fips_cpp = "79" if obs_id=="1935121000000000338"

replace ag002 = "ALLIANCE" if obs_id == "1929121000000000254"
replace ag003 = "STARK" if obs_id == "1929121000000000254"
replace ag003_fips = 151 if obs_id=="1929121000000000254"
replace ag003_fips_cpp = "151" if obs_id=="1929121000000000254"

replace ag003_fips_cpp = "510" if obs_id=="1931121000000000123"
replace ag003_fips_cpp = "47" if obs_id=="1929121000000000238"
replace ag003_fips = 47 if obs_id=="1929121000000000238"
replace ag003_fips_cpp = "5" if obs_id=="1929121000000000169"

replace ag003_fips_cpp = "510" if obs_id=="1935121000000000136"

replace ag003 = "BRONX" if obs_id=="1931121000000000167"
replace ag003_fips = 5 if obs_id=="1931121000000000167"
replace ag003_fips_cpp = "5" if obs_id=="1931121000000000167"

replace ag003 = "BRONX" if obs_id=="1933121000000000202"
replace ag003_fips = 5 if obs_id=="1933121000000000202"
replace ag003_fips_cpp = "5" if obs_id=="1933121000000000202"
