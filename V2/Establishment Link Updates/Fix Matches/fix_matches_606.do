//Code to fix bad establishment matches in indnum==606
preserve
keep if obs_id == "1931606000000000048"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1935606000000000046"
replace firm_id = "`new_firmid'" if obs_id == "1935606000000000046"

preserve
keep if obs_id == "1933606000000000045"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1935606000000000046"
replace firm_id = "`new_firmid'" if obs_id == "1935606000000000046"
