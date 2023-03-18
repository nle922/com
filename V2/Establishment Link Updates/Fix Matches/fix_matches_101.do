//Code to fix bad establishment matches in indnum==101
preserve
keep if obs_id == "1931101000000003708"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1935101000000002194"
replace firm_id = "`new_firmid'" if obs_id == "1935101000000002194"

preserve
keep if obs_id == "1931101000000003302"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1929101000000002914"
replace firm_id = "`new_firmid'" if obs_id == "1929101000000002914"

//New firm and establishment IDs
replace establishment_id = "" if obs_id == "1929101000000003441"
replace firm_id = "" if obs_id == "1929101000000003441"
replace establishment_id = "" if obs_id == "1935101000000001437"
replace firm_id = "" if obs_id == "1935101000000001437"

//Fill in missing values
foreach type in firm establishment{
	do "./Cleaning Scripts/General/gen_id" "101" "`type'"
}
