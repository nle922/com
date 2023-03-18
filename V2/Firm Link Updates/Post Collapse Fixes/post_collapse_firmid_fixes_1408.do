//Post collapse fixes for industry 1408
args file_name_export
use "./Stata Files/Extracts/`file_name_export'", clear

//UTILITY TRAILER MANUFACTURING CO.		
replace firm_id = "" if obs_id == "1929AUTO000000000010"

//KIMBALL MOTOR TRUCK CORP	
replace firm_id = "" if obs_id == "1929AUTO000000000008"

//DURANT MOTOR COMPANY OF CALIFORNIA	
replace firm_id = "" if obs_id == "1929AUTO000000000002"

//Fill in missing values 
foreach type in firm{
	do "./Cleaning Scripts/General/gen_id" "1408" "`type'"
}

//Chrysler
preserve
keep if obs_id == "1931AUTO000000000040"
local new_firmid = firm_id in 1
restore	
preserve
keep if obs_id == "1933AUTO000000000047"
local old_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if firm_id=="`old_firmid'"
replace firm_id = "`new_firmid'" if obs_id == "1935AUTO000000000099"
replace firm_id = "`new_firmid'" if obs_id == "1929AUTO000000000022"
replace firm_id = "`new_firmid'" if obs_id == "1931AUTO000000000136"
replace firm_id = "`new_firmid'" if obs_id == "1933AUTO000000000102"

//THE STUDEBAKER PACIFIC CORPORATION		
preserve
keep if obs_id == "1935AUTO000000000103"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1935AUTO000000000103"

//DOAUE MOTOR TRUCK CO.		
preserve
keep if obs_id == "1929AUTO000000000017"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1933AUTO000000000104"

//FAGEOL TRUCK & COACH CO.
preserve
keep if obs_id == "1929AUTO000000000003"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1933AUTO000000000002"
replace firm_id = "`new_firmid'" if obs_id == "1935AUTO000000000101"
replace firm_id = "`new_firmid'" if obs_id == "1931AUTO000000000103"

//KEIBER MOTOR COMPANY		
preserve
keep if obs_id == "1935AUTO000000000104"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1931AUTO000000000092"
replace firm_id = "`new_firmid'" if obs_id == "1933AUTO000000000098"

//WILLYS-OVERLAND PACIFIC COMPANY		
preserve
keep if obs_id == "1935AUTO000000000102"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1931AUTO000000000111"
replace firm_id = "`new_firmid'" if obs_id == "1929AUTO000000000013"
replace firm_id = "`new_firmid'" if obs_id == "1933AUTO000000000103"

//FORD MOTOR COMPANY
preserve
keep if obs_id == "1935AUTO000000000066"
local new_firmid = firm_id in 1
restore	
preserve
keep if obs_id == "1929AUTO000000000068"
local old_firmid = firm_id in 1
restore		
replace firm_id = "`new_firmid'" if firm_id=="`old_firmid'"
replace firm_id = "`new_firmid'" if obs_id == "1929AUTO000000000007"

// GM
preserve
keep if obs_id == "1935AUTO000000000037"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id=="1931AUTO000000000087"
replace firm_id = "`new_firmid'" if obs_id=="1933AUTO000000000001"
replace firm_id = "`new_firmid'" if obs_id=="1935AUTO000000000100"
replace firm_id = "`new_firmid'" if obs_id=="1929AUTO000000000001"

preserve
keep if obs_id == "1935AUTO000000000049"
local old_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if firm_id=="`old_firmid'"
preserve
keep if obs_id == "1933AUTO000000000053"
local old_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if firm_id=="`old_firmid'"

save "./Stata Files/Extracts/`file_name_export'", replace
