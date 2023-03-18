//Code to fix bad establishment matches in indnum==1301
preserve
keep if obs_id == "19311301000000000075"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19351301000000000061"
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000061"
replace establishment_id = "" if obs_id == "19291301000000000134"
replace firm_id = "" if obs_id == "19291301000000000134"

preserve
keep if obs_id == "19291301000000000077"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`establishment_id'" if obs_id == "19351301000000000061"
replace firm_id = "`firm_id'" if obs_id == "19351301000000000061"

//Fill in missing values
foreach type in firm establishment{
	do "./Cleaning Scripts/General/gen_id" "1301" "`type'"
}
