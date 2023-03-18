//Fix cases of establishments located in different counties in different years for ind_code_num == 631
replace ag003 = "BERKS" if obs_id == "1931631000000000219"
replace ag003_fips = 11 if obs_id=="1931631000000000219"
replace ag003_fips_cpp = "11" if obs_id=="1931631000000000219"

replace ag003 = "BERKS" if obs_id == "1931631000000000220"
replace ag003_fips = 11 if obs_id=="1931631000000000220"
replace ag003_fips_cpp = "11" if obs_id=="1931631000000000220"

replace ag003 = "BUCKS" if obs_id == "1929631000000000235B"
replace ag003_fips = 17 if obs_id=="1929631000000000235B"
replace ag003_fips_cpp = "17" if obs_id=="1929631000000000235B"

replace ag003_fips_cpp = "510" if obs_id=="1931631000000000080"

replace ag003_fips_cpp = "27" if obs_id=="1929631000000000144B"

replace ag003_fips_cpp = "61" if obs_id=="1933631000000000183"
replace ag003_fips_cpp = "61" if obs_id=="1935631000000000194"

replace ag003_fips_cpp = "7" if obs_id=="1933631000000000214"
replace ag003_fips_cpp = "7" if obs_id=="1935631000000000222"

replace ag003 = "BROOKLYN" if obs_id == "1933631000000000144"
replace ag003_fips = 47 if obs_id=="1933631000000000144"
replace ag003_fips_cpp = "47" if obs_id=="1933631000000000144"

replace ag003 = "BROOKLYN" if obs_id == "1935631000000000150"
replace ag003_fips =  47 if obs_id=="1935631000000000150"
replace ag003_fips_cpp = "47" if obs_id=="1935631000000000150"
