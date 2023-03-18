//Post collapse fixes for industry 122

//Froedtert Grain and Malting
preserve
keep if obs_id == "1931122000000000023"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id=="1935122000000000014"
replace firm_id = "`new_firmid'" if obs_id=="1929122000000000006"
replace firm_id = "`new_firmid'" if obs_id=="1931122000000000013"
replace firm_id = "`new_firmid'" if obs_id=="1935122000000000008"
replace firm_id = "`new_firmid'" if obs_id=="1933122000000000023"
replace firm_id = "`new_firmid'" if obs_id=="1933122000000000028"
replace firm_id = "`new_firmid'" if obs_id=="1935122000000000036"

//Interior Malt and Graining
preserve
keep if obs_id == "1933122000000000027"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id=="1931122000000000006"
replace firm_id = "`new_firmid'" if obs_id=="1929122000000000022"
replace firm_id = "`new_firmid'" if obs_id=="1933122000000000016"
replace firm_id = "`new_firmid'" if obs_id=="1935122000000000046"

//Bauer Schweitzer
preserve
keep if obs_id == "1933122000000000014"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id=="1931122000000000001"
replace firm_id = "`new_firmid'" if obs_id=="1929122000000000001"

replace firm_id = "" if obs_id=="1935122000000000044"

//Fill in missing values 
foreach type in firm{
	do "./Cleaning Scripts/General/gen_id" "130" "`type'"
}

