//Fix missing FIPS cases
replace ag003_fips_cpp = "31" if obs_id=="1935118000000000268"
replace ag003_fips = 31 if obs_id=="1935118000000000268"

replace ag001_fips = 11 if obs_id=="1933101000000000289"
replace ag001_fips = 11 if obs_id=="1931101000000000416"
replace ag001_fips = 11 if obs_id=="1933101000000000291"
replace ag001_fips = 11 if obs_id=="1931101000000000412"

replace ag003_fips = 1 if obs_id=="1933101000000000289"
replace ag003_fips = 1 if obs_id=="1931101000000000416"
replace ag003_fips = 1 if obs_id=="1933101000000000291"
replace ag003_fips = 1 if obs_id=="1931101000000000412"

replace ag003_fips_cpp = "1" if obs_id=="1933101000000000289"
replace ag003_fips_cpp = "1" if obs_id=="1931101000000000416"
replace ag003_fips_cpp = "1" if obs_id=="1933101000000000291"
replace ag003_fips_cpp = "1" if obs_id=="1931101000000000412"

replace ag003_fips_cpp = "510" if obs_id=="19351112000000000085"
replace ag003_fips = 510 if obs_id=="19351112000000000085"

replace ag003_fips_cpp = "31" if obs_id=="1935119000000002643"
replace ag003_fips = 31 if obs_id=="1935119000000002643"

replace ag003_fips_cpp = "109" if obs_id=="1935119000000001572"
replace ag003_fips = 109 if obs_id=="1935119000000001572"

replace ag003_fips_cpp = "51" if obs_id=="19311301000000000135"
replace ag003_fips = 51 if obs_id=="19311301000000000135"

replace ag003_fips_cpp = "1" if obs_id=="1931314000000002443"
replace ag003_fips = 1 if obs_id=="1931314000000002443"
