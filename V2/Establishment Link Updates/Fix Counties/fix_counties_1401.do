//Fix cases of establishments located in different counties in different years for ind_code_num == 1401
replace ag002 = "WITCHITA" if obs_id == "19291401000000000046"
replace ag003 = "SEDGWICK" if obs_id == "19291401000000000046"
replace ag003_fips = 173 if obs_id=="19291401000000000046"
replace ag003_fips_cpp = "173" if obs_id=="19291401000000000046"

replace ag002 = "WITCHITA" if obs_id == "19351401000000000019"
replace ag003 = "SEDGWICK" if obs_id == "19351401000000000019"
replace ag003_fips = 173 if obs_id=="19351401000000000019"
replace ag003_fips_cpp = "173" if obs_id=="19351401000000000019"

replace ag002 = "SEYMOUR" if obs_id == "19351401000000000018"
replace ag003 = "JACKSON" if obs_id == "19351401000000000018"
replace ag003_fips = 71 if obs_id=="19351401000000000018"
replace ag003_fips_cpp = "71" if obs_id=="19351401000000000018"

replace ag002 = "BRADFORD" if obs_id == "19291401000000000126"
replace ag003 = "MCKEAN" if obs_id == "19291401000000000126"
replace ag003_fips = 83 if obs_id=="19291401000000000126"
replace ag003_fips_cpp = "83" if obs_id=="19291401000000000126"

replace ag002 = "BRADFORD" if obs_id == "19351401000000000074"
replace ag003 = "MCKEAN" if obs_id == "19351401000000000074"
replace ag003_fips = 83 if obs_id=="19351401000000000074"
replace ag003_fips_cpp = "83" if obs_id=="19351401000000000074"

replace ag002 = "WITCHITA" if obs_id == "19291401000000000047"
replace ag003 = "SEDGWICK" if obs_id == "19291401000000000047"
replace ag003_fips = 173 if obs_id=="19291401000000000047"
replace ag003_fips_cpp = "173" if obs_id=="19291401000000000047"

replace ag002 = "WITCHITA" if obs_id == "19291401000000000048"
replace ag003 = "SEDGWICK" if obs_id == "19291401000000000048"
replace ag003_fips = 173 if obs_id=="19291401000000000048"
replace ag003_fips_cpp = "173" if obs_id=="19291401000000000048"

replace ag003 = "ST LOUIS" if obs_id=="19291401000000000076"
replace ag003_fips = 510  if obs_id=="19291401000000000076"
replace ag003_fips_cpp = "510" if obs_id=="19291401000000000076"

replace ag003 = "ST LOUIS" if obs_id=="19351401000000000031"
replace ag003_fips = 510 if obs_id=="19351401000000000031"
replace ag003_fips_cpp = "510" if obs_id=="19351401000000000031"

replace ag003 = "BALTIMORE" if obs_id=="19351401000000000023"
replace ag003_fips = 5  if obs_id=="19351401000000000023"
replace ag003_fips_cpp = "5" if obs_id=="19351401000000000023"

replace ag003 = "BALTIMORE" if obs_id=="19291401000000000056"
replace ag003_fips = 5  if obs_id=="19291401000000000056"
replace ag003_fips_cpp = "5" if obs_id=="19291401000000000056"

replace ag003 = "HARTFORD" if obs_id=="19311401000000000090"
replace ag003_fips = 3 if obs_id=="19311401000000000090"
replace ag003_fips_cpp = "3" if obs_id=="19311401000000000090"

replace ag003 = "ST LOUIS" if obs_id=="19311401000000000047"
replace ag003_fips = 510 if obs_id=="19311401000000000047"
replace ag003_fips_cpp = "510" if obs_id=="19311401000000000047"

replace ag003 = "ST LOUIS" if obs_id=="19331401000000000027"
replace ag003_fips = 510 if obs_id=="19331401000000000027"
replace ag003_fips_cpp = "510" if obs_id=="19331401000000000027"

replace ag003 = "BALTIMORE" if obs_id=="19311401000000000034"
replace ag003_fips = 510 if obs_id=="19311401000000000034"
replace ag003_fips_cpp = "510" if obs_id=="19311401000000000034"

replace ag003_fips = 87 if obs_id=="19311401000000000087"
replace ag003_fips_cpp = "87" if obs_id=="19311401000000000087"

replace ag003_fips = 59 if obs_id=="19331401000000000043"
replace ag003_fips_cpp = "59" if obs_id=="19331401000000000043"

replace ag003_fips = 510 if obs_id=="19331401000000000021"
replace ag003_fips_cpp = "510" if obs_id=="19331401000000000021"
