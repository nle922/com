//Code to fix bad establishment matches in indnum==312
preserve
keep if obs_id == "1931312000000000008"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1933312000000000009"
replace firm_id = "`new_firmid'" if obs_id == "1933312000000000009"
replace establishment_id = "`new_estabid'" if obs_id == "1935312000000000016"
replace firm_id = "`new_firmid'" if obs_id == "1935312000000000016"

preserve
keep if obs_id == "1935312000000000014"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1931312000000000009"
replace firm_id = "`new_firmid'" if obs_id == "1931312000000000009"
replace establishment_id = "`new_estabid'" if obs_id == "1929312000000000011"
replace firm_id = "`new_firmid'" if obs_id == "1929312000000000011"

//New firm and establishment IDs
replace establishment_id = "" if obs_id == "1929312000000000011"
replace firm_id = "" if obs_id == "1929312000000000011"
replace establishment_id = "" if obs_id == "1933312000000000009"

//Fill in missing values
foreach type in firm establishment{
	do "./Cleaning Scripts/General/gen_id" "312" "`type'"
}

preserve
keep if obs_id == "1929312000000000011"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1931312000000000009"
replace firm_id = "`new_firmid'" if obs_id == "1931312000000000009"

preserve
keep if obs_id == "1933312000000000009"
local new_estabid = establishment_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1935312000000000016"
