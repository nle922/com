//Post collapse fixes for industry 130
args file_name_export
use "./Stata Files/Extracts/`file_name_export'", clear

//Split
replace firm_id = "" if obs_id=="1935130000000000074"
replace firm_id = "" if obs_id=="1929130000000000026"
replace firm_id = "" if obs_id=="1929130000000000030"
replace firm_id = "" if obs_id=="1935130000000000031"
replace firm_id = "" if obs_id=="1933130000000000056"

//Fill in missing values 
foreach type in firm {
	do "./Cleaning Scripts/General/gen_id" "130" "`type'"
}

//STANDARD SUGARS CO
preserve
keep if obs_id == "1929130000000000026"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931130000000000032"
replace firm_id = "`new_firmid'" if obs_id == "1933130000000000035"

//Miles Planting
preserve
keep if obs_id == "1929130000000000030"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931130000000000036"
replace firm_id = "`new_firmid'" if obs_id == "1933130000000000039"

//Realty Operators
preserve
keep if obs_id == "1935130000000000031"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935130000000000039"
replace firm_id = "`new_firmid'" if obs_id == "1935130000000000061"

//ANGELO AND JAMES E CHAMPAGNE
preserve
keep if obs_id == "1935130000000000041"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933130000000000042"
replace firm_id = "`new_firmid'" if obs_id == "1931130000000000040"
replace firm_id = "`new_firmid'" if obs_id == "1929130000000000037"

//Catherine Sugar
preserve
keep if obs_id == "1929130000000000067"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929130000000000067"
replace firm_id = "`new_firmid'" if obs_id == "1931130000000000067"

//JOHN M COFFERY OPERATOR
preserve
keep if obs_id == "1935130000000000054"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929130000000000049"

//City of New Orleans
preserve
keep if obs_id == "1933130000000000040"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935130000000000006"

//Forest Home
preserve
keep if obs_id == "1931130000000000045"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935130000000000052"

//Glenwood
preserve
keep if obs_id == "1931130000000000042"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935130000000000043"

//Myrte Grove
preserve
keep if obs_id == "1933130000000000055"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935130000000000022"
replace firm_id = "`new_firmid'" if obs_id == "1929130000000000056"

//Blanchard Planting
preserve
keep if obs_id == "1933130000000000009"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929130000000000002"
replace firm_id = "`new_firmid'" if obs_id == "1935130000000000046"

//James J Mary
preserve
keep if obs_id == "1931130000000000026"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929130000000000019"

//LEON KESSLER AND EMILE STERNFELS
preserve
keep if obs_id == "1929130000000000033"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933130000000000003"

save "./Stata Files/Extracts/`file_name_export'", replace
