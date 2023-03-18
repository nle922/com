//Post collapse fixes for industry 1401
args file_name_export

do "./SES1459263 Team Folder/V2/Firm Link Updates/Post Collapse Fixes/merge_fixes_final" "`file_name_export'" "1401" "ind1401_final_fixes"

//Other fixes
//ZENITH AIRCRAFT CORPORATION		
replace firm_id = "" if obs_id=="19311401000000000006"
//EMSCO		
replace firm_id = "" if obs_id=="19291401000000000010"
//CYCLOPLANE CO, LTD		
replace firm_id = "" if obs_id=="19311401000000000007"
//COMMERCIAL AIRCRFT		
replace firm_id = "" if obs_id=="19291401000000000005"
//GRIGSON, DANIEL		
replace firm_id = "" if obs_id=="9291401000000000012"
//HACUK CROP DURTURY CO	
replace firm_id = "" if obs_id=="19311401000000000008"
//SECURITY NATIONAL AIRCRAFT CO.		
replace firm_id = "" if obs_id=="19331401000000000002"
//COURIER MONOPLANE		
replace firm_id = "" if obs_id=="19291401000000000006"
//CROWN MOTOR CARRIAGE		
replace firm_id = "" if obs_id=="19291401000000000008"
//NORTHRUP
replace firm_id = "" if obs_id=="19351401000000000006"

//Fill in missing values 
foreach type in firm{
	do "./Cleaning Scripts/General/gen_id" "1401" "`type'"
}

//LOCKHEED
preserve
keep if obs_id == "19291401000000000017"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351401000000000002"
replace firm_id = "`new_firmid'" if obs_id == "19311401000000000004"
replace firm_id = "`new_firmid'" if obs_id == "19331401000000000003"

//DOUGLASS
preserve
keep if obs_id == "19331401000000000001"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19331401000000000001"
replace firm_id = "`new_firmid'" if obs_id == "19351401000000000001"

//EMSCO	
preserve
keep if obs_id == "19291401000000000010"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311401000000000003"

//BACH AURCRAFT
preserve
keep if obs_id == "19311401000000000001"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291401000000000004"

//NORTHRUP
preserve
keep if obs_id == "19351401000000000006"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19331401000000000007"

//Chance Vought
preserve
keep if obs_id == "19291401000000000089"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311401000000000059"

//Hall Aluminum Aircraft
preserve
keep if obs_id == "19291401000000000097"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351401000000000045"

save "./Stata Files/Extracts/`file_name_export'", replace
