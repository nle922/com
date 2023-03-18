//Fix cases of establishments located in different counties in different years for ind_code_num == 1005
replace ag003_fips = 41 if obs_id=="19351005000000004684"
replace ag003_fips_cpp = "41" if obs_id=="19351005000000004684"

replace ag003_fips_cpp = "770" if obs_id=="19351005000000004695"

replace ag003_fips_cpp = "5" if obs_id=="19331005000000004298"
replace ag003_fips_cpp = "5" if obs_id=="19311005000000003262"

replace ag003_fips_cpp = "5" if obs_id=="19311005000000003256"
replace ag003_fips_cpp = "5" if obs_id=="19331005000000004293"

replace ag003_fips_cpp = "5" if obs_id=="19311005000000003266"

replace ag003_fips_cpp = "5" if obs_id=="19291005000000001060"
replace ag003_fips_cpp = "5" if obs_id=="19351005000000005199"
replace ag003_fips_cpp = "5" if obs_id=="19331005000000004296"

replace ag003_fips_cpp = "510" if obs_id=="19351005000000005030"

replace ag003_fips_cpp = "5" if obs_id=="19291005000000001052"

replace ag003_fips_cpp = "5" if obs_id=="19311005000000003255"

replace ag003_fips_cpp = "139" if obs_id=="19311005000000002752"

replace ag003_fips_cpp = "5" if obs_id=="19311005000000003259"

replace ag003_fips_cpp = "5" if obs_id=="19311005000000003222"

replace ag003_fips_cpp = "5" if obs_id=="19311005000000003264"

replace ag003_fips_cpp = "5" if obs_id=="19311005000000003263"

replace ag003_fips_cpp = "510" if obs_id=="19311005000000003068"

replace ag003_fips_cpp = "510" if obs_id=="19311005000000002855"
