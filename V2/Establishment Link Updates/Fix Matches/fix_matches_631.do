//Code to fix bad establishment matches in indnum==631
preserve
keep if obs_id == "1931631000000000228"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929631000000000260B"

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

preserve
keep if obs_id == "1931631000000000182"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929631000000000206B"

//New firm and establishment IDs
replace establishment_id = "" if obs_id == "1931216000000000483"
replace firm_id = "" if obs_id == "1931216000000000483"
replace establishment_id = "" if obs_id == "1935216000000001688"
replace firm_id = "" if obs_id == "1935216000000001688"
replace establishment_id = "" if obs_id == "1929631000000000144B"
replace establishment_id = "" if obs_id == "1935631000000000194"
replace firm_id = "" if obs_id == "1933631000000000183"
replace establishment_id = "" if obs_id == "1933631000000000214"
replace firm_id = "" if obs_id == "1933631000000000214"

//Fill in missing values
foreach type in firm establishment{
	do "./Cleaning Scripts/General/gen_id" "631" "`type'"
}

preserve
keep  if obs_id == "1933631000000000183"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933631000000000183"
replace establishment_id = "`new_estabid'" if obs_id == "1933631000000000183"

preserve
keep  if obs_id == "1933631000000000214"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935631000000000222"
replace establishment_id = "`new_estabid'" if obs_id == "1935631000000000222"
