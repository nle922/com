//Fix cases of establishments located in different counties in different years for ind_code_num == 1112
replace ag003 = "ARMSTRONG" if obs_id=="19331112000000000037"
replace ag003_fips = 129 if obs_id=="19331112000000000037"
replace ag003_fips_cpp = "129" if obs_id=="19331112000000000037"

replace ag003 = "ARMSTRONG" if obs_id=="19351112000000000306"
replace ag003_fips = 129 if obs_id=="19351112000000000306"
replace ag003_fips_cpp = "129" if obs_id=="19351112000000000306"

replace ag003 = "MAHONING" if obs_id=="19291112000000000250"
replace ag003_fips = 99 if obs_id=="19291112000000000250"
replace ag003_fips_cpp = "99" if obs_id=="19291112000000000250"

replace ag003 = "HUDSON" if obs_id=="19291112000000000151"
replace ag003_fips = 17 if obs_id=="19291112000000000151"
replace ag003_fips_cpp = "17" if obs_id=="19291112000000000151"

replace ag003 = "MONTOUR" if obs_id=="19291112000000000336"
replace ag003_fips = 93 if obs_id=="19291112000000000336"
replace ag003_fips_cpp = "93" if obs_id=="19291112000000000336"

replace ag003_fips_cpp = "510" if obs_id=="19351112000000000379"

replace ag003_fips_cpp = "760" if obs_id=="19311112000000000212"

replace ag003_fips = 129 if obs_id=="19291112000000000324"
replace ag003_fips_cpp = "129" if obs_id=="19291112000000000324"

replace ag003_fips = 129 if obs_id=="19311112000000000107"
replace ag003_fips_cpp = "129" if obs_id=="19311112000000000107"

replace ag003_fips_cpp = "5" if obs_id=="19311112000000000351"
replace ag003_fips_cpp = "5" if obs_id=="19291112000000000107"

replace ag003 = "COOK" if obs_id=="19331112000000000204"
replace ag003_fips = 75 if obs_id=="19331112000000000204"
replace ag003_fips_cpp = "75" if obs_id=="19331112000000000204"

replace ag003 = "BALTIMORE" if obs_id=="19351112000000000379"
replace ag003_fips = 5 if obs_id=="19351112000000000379"
replace ag003_fips_cpp = "5" if obs_id=="19351112000000000379"
