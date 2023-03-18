//Fix cases of establishments located in different counties in different years for ind_code_num == 101
replace ag003 = "CLARKE" if obs_id=="1933101000000000750"
replace ag003_fips = 39 if obs_id=="1933101000000000750"
replace ag003_fips_cpp = "39" if obs_id=="1933101000000000750"

replace ag003 = "HALIFAX" if obs_id=="1933101000000001894"
replace ag003_fips = 83 if obs_id=="1933101000000001894"
replace ag003_fips_cpp = "83" if obs_id=="1933101000000001894"

replace ag003 = "HALIFAX" if obs_id=="1935101000000001521"
replace ag003_fips = 83 if obs_id=="1935101000000001521"
replace ag003_fips_cpp = "83" if obs_id=="1935101000000001521"

replace ag003 = "HOT SPRINGS" if obs_id=="1929101000000000133"
replace ag003_fips = 51 if obs_id=="1929101000000000133"
replace ag003_fips_cpp = "51" if obs_id=="1929101000000000133"

replace ag003 = "KITTITAS" if obs_id=="1931101000000004005"
replace ag003_fips = 37 if obs_id=="1931101000000004005"
replace ag003_fips_cpp = "37" if obs_id=="1931101000000004005"

replace ag003 = "ROANOKE" if obs_id=="1931101000000003961"
replace ag003_fips = 770 if obs_id=="1931101000000003961"
replace ag003_fips_cpp = "770" if obs_id=="1931101000000003961"

replace ag003 = "BALTIMORE CITY" if obs_id=="1929101000000001445"
replace ag003_fips = 510 if obs_id=="1929101000000001445"
replace ag003_fips_cpp = "510" if obs_id=="1929101000000001445"

replace ag003 = "BRONX" if obs_id=="1931101000000002797"
replace ag003_fips = 5 if obs_id=="1931101000000002797"
replace ag003_fips_cpp = "5" if obs_id=="1931101000000002797"

replace ag003 = "BRONX" if obs_id=="1933101000000001585"
replace ag003_fips = 5 if obs_id=="1933101000000001585"
replace ag003_fips_cpp = "5" if obs_id=="1933101000000001585"

replace ag003 = "ROANOKE" if obs_id=="1931101000000003962"
replace ag003_fips = 770 if obs_id=="1931101000000003962"
replace ag003_fips_cpp = "770" if obs_id=="1931101000000003962"

replace ag003 = "ROANOKE" if obs_id=="1931101000000003963"
replace ag003_fips = 770 if obs_id=="1931101000000003963"
replace ag003_fips_cpp = "770" if obs_id=="1931101000000003963"

replace ag003 = "BRONX" if obs_id=="1929101000000004192"
replace ag003_fips = 5 if obs_id=="1929101000000004192"
replace ag003_fips_cpp = "5" if obs_id=="1929101000000004192"

replace ag003 = "BRONX" if obs_id=="1933101000000001578"
replace ag003_fips = 5 if obs_id=="1933101000000001578"
replace ag003_fips_cpp = "5" if obs_id=="1933101000000001578"

replace ag003 = "PETERSBURG" if obs_id=="1931101000000003914"
replace ag003_fips = 730 if obs_id=="1931101000000003914"
replace ag003_fips_cpp = "730" if obs_id=="1931101000000003914"

replace ag003 = "WINCHESTER" if obs_id=="1935101000000002435"
replace ag003_fips = 840 if obs_id=="1935101000000002435"
replace ag003_fips_cpp = "840" if obs_id=="1935101000000002435"

replace ag003 = "ATLANTA" if obs_id=="1935101000000000486"
replace ag003_fips = 89 if obs_id=="1935101000000000486"
replace ag003_fips_cpp = "89" if obs_id=="1935101000000000486"

replace ag003 = "BRONX" if obs_id=="1933101000000001583"
replace ag003_fips = 5 if obs_id=="1933101000000001583"
replace ag003_fips_cpp = "5" if obs_id=="1933101000000001583"

replace ag003 = "BRONX" if obs_id=="1931101000000002798"
replace ag003_fips = 5 if obs_id=="1931101000000002798"
replace ag003_fips_cpp = "5" if obs_id=="1931101000000002798"

replace ag003 = "BRONX" if obs_id=="1933101000000001586"
replace ag003_fips = 5 if obs_id=="1933101000000001586"
replace ag003_fips_cpp = "5" if obs_id=="1933101000000001586"

replace ag003 = "BALTIMORE" if obs_id=="1929101000000001427"
replace ag003_fips = 510 if obs_id=="1929101000000001427"
replace ag003_fips_cpp = "510" if obs_id=="1929101000000001427"

replace ag003 = "BALTIMORE CITY" if obs_id=="1929101000000001442"
replace ag003_fips = 510 if obs_id=="1929101000000001442"
replace ag003_fips_cpp = "510" if obs_id=="1929101000000001442"

replace ag003 = "BALTIMORE CITY" if obs_id=="1931101000000001347"
replace ag003_fips = 510 if obs_id=="1931101000000001347"
replace ag003_fips_cpp = "510" if obs_id=="1931101000000001347"

replace ag003 = "BRONX" if obs_id=="1931101000000002789"
replace ag003_fips = 5 if obs_id=="1931101000000002789"
replace ag003_fips_cpp = "5" if obs_id=="1931101000000002789"

replace ag003 = "BRONX" if obs_id=="1933101000000001579"
replace ag003_fips = 5 if obs_id=="1933101000000001579"
replace ag003_fips_cpp = "5" if obs_id=="1933101000000001579"

replace ag003 = "BRONX" if obs_id=="1935101000000001322"
replace ag003_fips = 5 if obs_id=="1935101000000001322"
replace ag003_fips_cpp = "5" if obs_id=="1935101000000001322"

replace ag003 = "BRONX" if obs_id=="1929101000000004189"
replace ag003_fips = 5 if obs_id=="1929101000000004189"
replace ag003_fips_cpp = "5" if obs_id=="1929101000000004189"

replace ag003 = "BRONX" if obs_id=="1931101000000002785"
replace ag003_fips = 5 if obs_id=="1931101000000002785"
replace ag003_fips_cpp = "5" if obs_id=="1931101000000002785"

replace ag003 = "BRONX" if obs_id=="1935101000000001319"
replace ag003_fips = 5 if obs_id=="1935101000000001319"
replace ag003_fips_cpp = "5" if obs_id=="1935101000000001319"

replace ag003 = "BRONX" if obs_id=="1935101000000001330"
replace ag003_fips = 5 if obs_id=="1935101000000001330"
replace ag003_fips_cpp = "5" if obs_id=="1935101000000001330"

replace ag003_fips = 37 if obs_id=="1931101000000003774"
replace ag003_fips_cpp = "37" if obs_id=="1931101000000003774"

replace ag003 = "JEFFERSON" if obs_id=="1931101000000000923"
replace ag003_fips = 101 if obs_id=="1931101000000000923"
replace ag003_fips_cpp = "101" if obs_id=="1931101000000000923"

replace ag003 = "JEFFERSON" if obs_id=="1933101000000000768"
replace ag003_fips = 101 if obs_id=="1933101000000000768"
replace ag003_fips_cpp = "101" if obs_id=="1933101000000000768"

replace ag003 = "JEFFERSON" if obs_id=="1935101000000000837"
replace ag003_fips = 101 if obs_id=="1935101000000000837"
replace ag003_fips_cpp = "101" if obs_id=="1935101000000000837"

replace ag003 = "BRONX" if obs_id=="1933101000000001587"
replace ag003_fips = 5 if obs_id=="1933101000000001587"
replace ag003_fips_cpp = "5" if obs_id=="1933101000000001587"
