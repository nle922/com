//Fix cases of establishments located in different counties in different years for ind_code_num == 314
replace ag003 = "HUDSON" if obs_id == "1929314000000002476"
replace ag003_fips = 17 if obs_id=="1929314000000002476"
replace ag003_fips_cpp = "17" if obs_id=="1929314000000002476"

replace ag003 = "CLAYTON" if obs_id == "1929314000000001409"
replace ag003_fips = 43 if obs_id=="1929314000000001409"
replace ag003_fips_cpp = "43" if obs_id=="1929314000000001409"

replace ag003 = "HENNEPIN" if obs_id == "1929314000000002079"
replace ag003_fips = 53 if obs_id=="1929314000000002079"
replace ag003_fips_cpp = "53" if obs_id=="1929314000000002079"

replace ag003 = "TALLAPOOSA" if obs_id == "1931314000000000079"
replace ag003_fips = 123 if obs_id=="1931314000000000079"
replace ag003_fips_cpp = "123" if obs_id=="1931314000000000079"

replace ag003 = "BEDFORD" if obs_id == "1929314000000003647"
replace ag003_fips = 9 if obs_id=="1929314000000003647"
replace ag003_fips_cpp = "9" if obs_id=="1929314000000003647"

replace ag003 = "TALLAPOOSA" if obs_id == "1931314000000000080"
replace ag003_fips = 123 if obs_id=="1931314000000000080"
replace ag003_fips_cpp = "123" if obs_id=="1931314000000000080"

replace ag003 = "BERKS" if obs_id == "1931314000000002298"
replace ag003_fips = 11 if obs_id=="1931314000000002298"
replace ag003_fips_cpp = "11" if obs_id=="1931314000000002298"

replace ag003_fips_cpp = "510" if obs_id=="1935314000000001281"

replace ag003_fips_cpp = "690" if obs_id=="1931314000000002831"

replace ag003_fips_cpp = "510" if obs_id=="1931314000000001297"

replace ag003_fips_cpp = "5" if obs_id=="1931314000000001875"

replace ag003_fips_cpp = "5" if obs_id=="1931314000000001876"

replace ag003_fips_cpp = "5" if obs_id=="1931314000000001870"

replace ag003_fips_cpp = "5" if obs_id=="1931314000000001871"

replace ag003_fips_cpp = "5" if obs_id=="1931314000000001879"

replace ag003_fips_cpp = "5" if obs_id=="1931314000000001880"

replace ag003_fips_cpp = "5" if obs_id=="1931314000000001873"

replace ag003_fips_cpp = "5" if obs_id=="1933314000000001309"

replace ag003_fips_cpp = "5" if obs_id=="1929314000000002818"

replace ag003_fips_cpp = "5" if obs_id=="1931314000000001874"




replace ag003 = "BRONX" if obs_id == "1931314000000001877"
replace ag003_fips = 5 if obs_id=="1931314000000001877"
replace ag003_fips_cpp = "5" if obs_id=="1931314000000001877"

replace ag003 = "BRONX" if obs_id == "1929314000000002822"
replace ag003_fips = 5 if obs_id=="1929314000000002822"
replace ag003_fips_cpp = "5" if obs_id=="1929314000000002822"

replace ag003 = "HARRISONBURG" if obs_id == "1929314000000004480"
replace ag003_fips = 660 if obs_id=="1929314000000004480"
replace ag003_fips_cpp = "660" if obs_id=="1929314000000004480"

replace ag003 = "ROANOKE" if obs_id == "1931314000000002859"
replace ag003_fips = 770 if obs_id=="1931314000000002859"
replace ag003_fips_cpp = "770" if obs_id=="1931314000000002859"

replace ag003 = "SAINT LOUIS" if obs_id == "1933314000000000831"
replace ag003_fips = 510 if obs_id=="1933314000000000831"
replace ag003_fips_cpp = "510" if obs_id=="1933314000000000831"

replace ag003 = "SAINT LOUIS" if obs_id == "1935314000000001269"
replace ag003_fips = 510 if obs_id=="1935314000000001269"
replace ag003_fips_cpp = "510" if obs_id=="1935314000000001269"
