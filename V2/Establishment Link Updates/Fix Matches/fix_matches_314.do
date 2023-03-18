//Code to fix bad establishment matches in indnum==314
preserve
keep if obs_id == "1931314000000000082"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore 
replace establishment_id = "`new_estabid'" if obs_id == "1929314000000000134"
replace firm_id = "`new_firmid'" if obs_id == "1929314000000000134"

preserve
keep if obs_id == "1931314000000000082"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1929314000000000134"
replace firm_id = "`new_firmid'" if obs_id == "1929314000000000134"

//New firm and establishment IDs
replace establishment_id = "" if obs_id == "1929314000000000135"
replace firm_id = "" if obs_id == "1929314000000000135"
replace establishment_id = "" if obs_id == "1931314000000000085"
replace firm_id = "" if obs_id == "1931314000000000085"
replace establishment_id = "" if obs_id == "1931314000000000083"
replace firm_id = "" if obs_id == "1931314000000000083"

//Fill in missing values
foreach type in firm establishment{
	do "./Cleaning Scripts/General/gen_id" "314" "`type'"
}
