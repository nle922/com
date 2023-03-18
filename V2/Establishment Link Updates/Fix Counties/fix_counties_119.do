//Fix cases of establishments located in different counties in different years for ind_code_num == 119
//These are only cases where the states are common within an establishment_id

replace ag003 = "WESTMORELAND" if obs_id == "1929119000000002577"
replace ag003_fips = 129 if obs_id=="1929119000000002577"
replace ag003_fips_cpp = "129" if obs_id=="1929119000000002577"

replace ag003 = "CHENANGO" if obs_id == "1929119000000001965"
replace ag003_fips = 17 if obs_id=="1929119000000001965"
replace ag003_fips_cpp = "17" if obs_id=="1929119000000001965"

replace ag003 = "OAKLAND" if obs_id == "1933119000000001454"
replace ag003_fips = 125 if obs_id=="1933119000000001454"
replace ag003_fips_cpp = "125" if obs_id=="1933119000000001454"

replace ag003 = "PROVIDENCE" if obs_id == "1931119000000002784"
replace ag003_fips = 7 if obs_id=="1931119000000002784"
replace ag003_fips_cpp = "7" if obs_id=="1931119000000002784"

replace ag003 = "CAMP" if obs_id == "1933119000000002744"
replace ag003_fips = 63 if obs_id=="1933119000000002744"
replace ag003_fips_cpp = "63" if obs_id=="1933119000000002744"

replace ag002 = "MARIETTA" if obs_id == "1931119000000000725"
replace ag003 = "COBB" if obs_id == "1931119000000000725"
replace ag003_fips = 67 if obs_id=="1931119000000000725"
replace ag003_fips_cpp = "67" if obs_id=="1931119000000000725"

replace ag003_fips = 87 if obs_id=="1929119000000000223"
replace ag003_fips_cpp = "87" if obs_id=="1929119000000000223"

replace ag003 = "MCCURTAIN" if obs_id == "1931119000000002445"
replace ag003_fips = 89 if obs_id=="1931119000000002445"
replace ag003_fips_cpp = "89" if obs_id=="1931119000000002445"

replace ag003_fips = 111 if obs_id=="1935119000000000410"
replace ag003_fips_cpp = "111" if obs_id=="1935119000000000410"

replace ag003 = "TALLAPOOSA" if obs_id == "1935119000000000108"
replace ag003_fips = 123 if obs_id=="1935119000000000108"
replace ag003_fips_cpp = "123" if obs_id=="1935119000000000108"

replace ag003 = "BENTON" if obs_id == "1933119000000001488"
replace ag003_fips = 145 if obs_id=="1933119000000001488"
replace ag003_fips_cpp = "145" if obs_id=="1933119000000001488"

replace ag003 = "BRONX" if obs_id == "1929119000000001938"
replace ag003_fips = 5 if obs_id=="1929119000000001938"
replace ag003_fips_cpp = "5" if obs_id=="1929119000000001938"

replace ag003 = "BRONX" if obs_id == "1931119000000002081"
replace ag003_fips = 5 if obs_id=="1931119000000002081"
replace ag003_fips_cpp = "5" if obs_id=="1931119000000002081"

replace ag003_fips = 99 if obs_id=="1929119000000002075"
replace ag003_fips_cpp = "99" if obs_id=="1929119000000002075"

replace ag003_fips = 5 if obs_id=="1935119000000001988"
replace ag003_fips_cpp = "5" if obs_id=="1935119000000001988"

replace ag003_fips = 5 if obs_id=="1933119000000001961"
replace ag003_fips_cpp = "5" if obs_id=="1933119000000001961"

replace ag003 = "BRONX" if obs_id == "1935119000000002102"
replace ag003_fips =  5 if obs_id=="1935119000000002102"
replace ag003_fips_cpp = "5" if obs_id=="1935119000000002102"

replace ag003 = "BRONX" if obs_id == "1933119000000001968"
replace ag003_fips = 5 if obs_id=="1933119000000001968"
replace ag003_fips_cpp = "5" if obs_id=="1933119000000001968"

replace ag003_fips = 700 if obs_id=="1935119000000003328"
replace ag003_fips_cpp = "700" if obs_id=="1935119000000003328"

replace ag003_fips_cpp = "61" if obs_id == "1931119000000002077"
replace ag003_fips_cpp = "9" if obs_id == "1929119000000002721"
replace ag003_fips_cpp = "9" if obs_id == "1931119000000002784"

replace ag003_fips = 61 if obs_id == "1931119000000002077"
replace ag003_fips = 9 if obs_id == "1929119000000002721"
replace ag003_fips = 9 if obs_id == "1931119000000002784"

replace ag003_fips = 61 if obs_id == "1935119000000002101"
replace ag003_fips_cpp = "61" if obs_id == "1935119000000002101"

