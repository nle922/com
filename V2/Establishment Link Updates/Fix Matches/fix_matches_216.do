//Code to fix bad establishment matches in indnum==216
preserve
keep if obs_id == "1929216000000002890"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19331112000000000260"
replace firm_id = "`new_firmid'" if obs_id == "19331112000000000260"
replace firm_id = "`new_firmid'" if obs_id == "1931216000000002889"

preserve
keep if obs_id == "1929216000000003025"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1933216000000003006"
replace firm_id = "`new_firmid'" if obs_id == "1933216000000003006"
replace establishment_id = "`new_estabid'" if obs_id == "1935216000000003005"
replace firm_id = "`new_firmid'" if obs_id == "1935216000000003005"
replace firm_id = "`new_firmid'" if obs_id == "1931216000000003024"

//New firm and establishment IDs
replace establishment_id = "" if obs_id == "1931216000000000483"
replace firm_id = "" if obs_id == "1931216000000000483"
replace establishment_id = "" if obs_id == "1935216000000001688"
replace firm_id = "" if obs_id == "1935216000000001688"
replace establishment_id = "" if obs_id == "1933216000000002893"
replace firm_id = "" if obs_id == "1933216000000002893"

//Fill in missing values
foreach type in firm establishment{
	do "./Cleaning Scripts/General/gen_id" "216" "`type'"
}
