//Code to fix bad establishment matches in indnum==1401
preserve
keep if obs_id == "19311401000000000062"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19331401000000000036"

preserve
keep if obs_id == "19331401000000000029"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311401000000000049"

//New firms and establishments
replace establishment_id = "" if obs_id == "19351401000000000045"
replace firm_id = "" if obs_id == "19351401000000000045"
replace establishment_id = "" if obs_id == "19291401000000000092"
replace firm_id = "" if obs_id == "19291401000000000092"
replace establishment_id = "" if obs_id == "19351401000000000032"
replace firm_id = "" if obs_id == "19351401000000000032"
replace establishment_id = "" if obs_id == "19311401000000000052"
replace firm_id = "" if obs_id == "19311401000000000052"

//Fill in missing values
foreach type in firm establishment{
	do "./Cleaning Scripts/General/gen_id" "1401" "`type'"
}
