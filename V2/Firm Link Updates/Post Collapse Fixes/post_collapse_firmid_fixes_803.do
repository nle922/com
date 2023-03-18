//Post collapse fixes for industry 803
args file_name_export

//From ind803_fixes file
do "./SES1459263 Team Folder/V2/Firm Link Updates/Post Collapse Fixes/merge_fixes_final" "`file_name_export'" "803"

//Armstrong Rubber
preserve
keep if obs_id == "1929803000000000017"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933803000000000010"

//PACIFIC RUBBER AND TIRE MANUFACTURING CO.		
replace firm_id ="" if obs_id =="1935803000000000002"
replace firm_id = "" if obs_id=="1931803000000000037"
replace firm_id = "" if obs_id=="1929803000000000002"
replace firm_id = "" if obs_id=="1931803000000000004"
replace firm_id = "" if obs_id=="1933803000000000004"
replace firm_id = "" if obs_id=="1931803000000000001"
replace firm_id = "" if obs_id=="1935803000000000006"
replace firm_id = "" if obs_id=="1931803000000000011"
replace firm_id = "" if obs_id=="1933803000000000012"

//Fill in missing values 
foreach type in firm{
	do "./Cleaning Scripts/General/gen_id" "803" "`type'"
}

//PACIFIC GOODRICH RUBBER COMPANY	
preserve
keep if obs_id == "1929803000000000009"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933803000000000006"
replace firm_id = "`new_firmid'" if obs_id == "1931803000000000005"

//THE FIRESTONE TIRE & RUBBER CO.
preserve
keep if obs_id == "1931803000000000003"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929803000000000067"
replace firm_id = "`new_firmid'" if obs_id == "1935803000000000031"
replace firm_id = "`new_firmid'" if obs_id == "1931803000000000035"
replace firm_id = "`new_firmid'" if obs_id == "1933803000000000033"

//B.F. GOODRICH CO.	
preserve
keep if obs_id == "1931803000000000037"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933803000000000035"
replace firm_id = "`new_firmid'" if obs_id == "1935803000000000033"
replace firm_id = "`new_firmid'" if obs_id == "1929803000000000069"
replace firm_id = "`new_firmid'" if obs_id == "1935803000000000004"

// GOODYEAR TIRE & RUBBER COMPANY OF CALIFORNIA	
preserve
keep if obs_id == "1931803000000000004"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929803000000000008"
replace firm_id = "`new_firmid'" if obs_id == "1935803000000000005"
replace firm_id = "`new_firmid'" if obs_id == "1933803000000000005"

//THE GOODYEAR TIRE & RUBBER CO.	
preserve
keep if obs_id == "1929803000000000002"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935803000000000034"
replace firm_id = "`new_firmid'" if obs_id == "1933803000000000036"
replace firm_id = "`new_firmid'" if obs_id == "1931803000000000038"

//THE COAST TIRE & RUBBER COMPANY	
preserve
keep if obs_id == "1931803000000000002"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933803000000000003"
replace firm_id = "`new_firmid'" if obs_id == "1929803000000000005"

//FIRESTONE TIRE & RUBBER CO. OF CALIFORNIA
preserve
keep if obs_id == "1933803000000000004"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929803000000000007"
replace firm_id = "`new_firmid'" if obs_id == "1935803000000000003"
replace firm_id = "`new_firmid'" if obs_id == "1931803000000000003"

//GOODYEAR TIRE & RUBBER CO. OF ALABAMA	
preserve
keep if obs_id == "1931803000000000001"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935803000000000001"
replace firm_id = "`new_firmid'" if obs_id == "1933803000000000002"
replace firm_id = "`new_firmid'" if obs_id == "1929803000000000003"

//SAMSON TIRE & RUBBER CORP.	
preserve
keep if obs_id == "1935803000000000006"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929803000000000011"
replace firm_id = "`new_firmid'" if obs_id == "1929803000000000010"
replace firm_id = "`new_firmid'" if obs_id == "1931803000000000006"
replace firm_id = "`new_firmid'" if obs_id == "1933803000000000007"
replace firm_id = "`new_firmid'" if obs_id == "1929803000000000010"
replace firm_id = "`new_firmid'" if obs_id == "1929803000000000011"

//US Rubber Co.
preserve
keep if obs_id == "1931803000000000011"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929803000000000034"
replace firm_id = "`new_firmid'" if obs_id == "1931803000000000018"
replace firm_id = "`new_firmid'" if obs_id == "1929803000000000023"
replace firm_id = "`new_firmid'" if obs_id == "1935803000000000017"

//UNITED STATES TIRE CO.
preserve
keep if obs_id == "1933803000000000012"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933803000000000019"

save "./Stata Files/Extracts/`file_name_export'", replace
