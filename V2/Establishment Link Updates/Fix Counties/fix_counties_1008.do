//Fix cases of establishments located in different counties in different years for ind_code_num == 1008
replace ag003 = "TYLER" if obs_id=="19291008000000000256"
replace ag003_fips = 95 if obs_id=="19291008000000000256"
replace ag003_fips_cpp = "95" if obs_id=="19291008000000000256"

replace ag003 = "BALTIMORE CITY" if obs_id == "19331008000000000049"
replace ag003_fips  =  510 if obs_id=="19331008000000000049"
replace ag003_fips_cpp = "510" if obs_id=="19331008000000000049"

replace ag003_fips  =  91 if obs_id=="19291008000000000175"
replace ag003_fips_cpp = "91" if obs_id=="19291008000000000175"

replace ag003_fips  =  81 if obs_id=="19291008000000000100"
replace ag003_fips_cpp = "81" if obs_id=="19291008000000000100"
