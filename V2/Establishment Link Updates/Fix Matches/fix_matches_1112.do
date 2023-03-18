//Code to fix bad establishment matches in indnum==1112
preserve
keep if obs_id == "19291112000000000103"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19331112000000000260"
replace firm_id = "`new_firmid'" if obs_id == "19331112000000000260"
replace establishment_id = "`new_estabid'" if obs_id == "19311112000000000346"
replace firm_id = "`new_firmid'" if obs_id == "19311112000000000346"

//New firm and establishment IDs
replace establishment_id = "" if obs_id == "19351112000000000002"
replace firm_id = "" if obs_id == "19351112000000000002"
replace establishment_id = "" if obs_id == "19291112000000000102"
replace firm_id = "" if obs_id == "19291112000000000102"
replace establishment_id = "" if obs_id == "19351112000000000002"
replace firm_id = "" if obs_id == "19351112000000000002"

//Fill in missing values
foreach type in firm establishment{
	do "./Cleaning Scripts/General/gen_id" "1112" "`type'"
}
