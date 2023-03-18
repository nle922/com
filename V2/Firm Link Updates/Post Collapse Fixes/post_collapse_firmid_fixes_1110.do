//Post collapse fixes for industry 1110
args file_name_export
use "./Stata Files/Extracts/`file_name_export'", clear

//Antrium Steel
preserve
keep if obs_id == "19311110000000000020"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000016"

//Alan Wood Steel
preserve
keep if obs_id == "19311110000000000071"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19331110000000000064"
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000064"

//American Rolling Mill
preserve
keep if obs_id == "19351110000000000014"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000048"
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000022"

//Bethlehem
preserve
keep if obs_id == "19331110000000000065"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000027"

//CHATEAUGAY ORE AND IRON
preserve
keep if obs_id == "19311110000000000028"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000032"

//Colorado Fuel and iron
preserve
keep if obs_id == "19291110000000000012"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000007"

//Interlake Iron
preserve
keep if obs_id == "19311110000000000012"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000043"
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000016"
replace firm_id = "`new_firmid'" if obs_id == "19331110000000000037"
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000021"

//International harvester
preserve
keep if obs_id == "19331110000000000008"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000017"
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000009"
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000009"

//National Tube
preserve
keep if obs_id == "19291110000000000070"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000053"

//TENNESSEE COAL IRON AND RAILROAD
preserve
keep if obs_id == "19311110000000000005"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000004"

//Tennessee Products
preserve
keep if obs_id == "19311110000000000076"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000097"

replace firm_id = "" if obs_id=="19291110000000000098"
replace firm_id = "" if obs_id=="19351110000000000020"
replace firm_id = "" if obs_id=="19291110000000000103"
replace firm_id = "" if obs_id=="19331110000000000004"
replace firm_id = "" if obs_id=="19331110000000000052"
replace firm_id = "" if obs_id=="19291110000000000030"
replace firm_id = "" if obs_id=="19331110000000000010"
replace firm_id = "" if obs_id=="19331110000000000066"

//Fill in missing values 
foreach type in firm{
	do "./Cleaning Scripts/General/gen_id" "1110" "`type'"
}

//American Steel and Wire
preserve
keep if obs_id == "19331110000000000066"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000093"
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000066"
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000044"
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000073"
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000035"
replace firm_id = "`new_firmid'" if obs_id == "19331110000000000029"

//Columbia Steel
preserve
keep if obs_id == "19291110000000000100"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000077"
replace firm_id = "`new_firmid'" if obs_id == "19331110000000000070"
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000069"

//Illinois Steel
preserve
keep if obs_id == "19331110000000000010"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000013"
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000015"
replace firm_id = "`new_firmid'" if obs_id == "19331110000000000007"
replace firm_id = "`new_firmid'" if obs_id == "19331110000000000013"
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000014"
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000013"
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000008"
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000015"
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000020"
 
 //Minnesota Steel
preserve
keep if obs_id == "19291110000000000030"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000026"
 
 //National Tube
preserve
keep if obs_id == "19331110000000000052"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000070"
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000051"
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000036"
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000060"
replace firm_id = "`new_firmid'" if obs_id == "19331110000000000036"
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000042"

 //Tennessee Coal Iron and Railroad
preserve
keep if obs_id == "19331110000000000004"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000004"
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000005"
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000004"
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000005"
replace firm_id = "`new_firmid'" if obs_id == "19331110000000000003"
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000003"
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000009"

//Republic Steel
preserve
keep if obs_id == "19331110000000000025"
local new_firmid = firm_id in 1
restore

preserve
keep if obs_id == "19331110000000000001"
local old_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if firm_id=="`old_firmid'"

//Weirton
preserve
keep if obs_id == "19291110000000000103"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19331110000000000071"
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000071"
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000079"

//Great Lakes
preserve
keep if obs_id == "19351110000000000020"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000025"
replace firm_id = "`new_firmid'" if obs_id == "19331110000000000019"

//Hanna
preserve
keep if obs_id == "19291110000000000002"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000025"
replace firm_id = "`new_firmid'" if obs_id == "19331110000000000024"
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000030"

save "./Stata Files/Extracts/`file_name_export'", replace
