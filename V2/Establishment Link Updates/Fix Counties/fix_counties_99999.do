//Fix cases of wandering establishments due to incorrect counties
replace ag003_fips = 123  if obs_id=="1933RADIO000000000063"
replace ag003_fips_cpp = "123" if obs_id=="1933RADIO000000000063"

replace ag003_fips =  25 if obs_id=="1933RADIO000000000057"
replace ag003_fips_cpp = "25" if obs_id=="1933RADIO000000000057"

replace ag003_fips =  17 if obs_id=="1931RADIO000000000108"
replace ag003_fips_cpp = "17" if obs_id=="1931RADIO000000000108"

replace ag003_fips =  25 if obs_id=="1929RADIO000000000122"
replace ag003_fips_cpp = "25" if obs_id=="1929RADIO000000000122"

replace ag003_fips =  101 if obs_id=="1929RADIO000000000312"
replace ag003_fips_cpp = "191" if obs_id=="1929RADIO000000000312"

replace ag003_fips =  47 if obs_id=="1933RADIO000000000100"
replace ag003_fips_cpp = "47" if obs_id=="1933RADIO000000000100"

replace ag003_fips =  101 if obs_id=="1929RADIO000000000313"
replace ag003_fips_cpp = "101" if obs_id=="1929RADIO000000000313"
