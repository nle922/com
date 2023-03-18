//Post collapse fixes for industry 1002
args file_name_export
use "./Stata Files/Extracts/`file_name_export'", clear

//New firm IDs
replace firm_id = "" if obs_id=="19331002000000000077"
replace firm_id = "" if obs_id=="19331002000000000093"
replace firm_id = "" if obs_id=="19311002000000000078"
replace firm_id = "" if obs_id=="19331002000000000135"
replace firm_id = "" if obs_id=="19351002000000000139"

//Fill in missing values 
foreach type in firm{
	do "./Cleaning Scripts/General/gen_id" "1002" "`type'"
}

//MONOLITH PORTLAND CEMENT COMPANY
preserve
keep if obs_id == "19291002000000000011"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000153"
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000010"

//COWELL PORTLAND CEMENT CO
preserve
keep if obs_id == "19331002000000000002"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "19291002000000000010"

//COLORADO PORTLAND CEMENT	
preserve
keep if obs_id == "19331002000000000093"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000018"
replace firm_id = "`new_firmid'" if obs_id == "19291002000000000021"
replace firm_id = "`new_firmid'" if obs_id == "19331002000000000092"
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000019"

//NEBRASKA CEMENT CO.
preserve
keep if obs_id == "19311002000000000078"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "19331002000000000137"
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000069"
replace firm_id = "`new_firmid'" if obs_id == "19291002000000000082"

//THREE FORKS PORTLAND CEMENT	
preserve
keep if obs_id == "19331002000000000135"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "19311002000000000076"
replace firm_id = "`new_firmid'" if obs_id == "19311002000000000075"
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000067"

//UNION PORTLAND CEMENT
preserve
keep if obs_id == "19351002000000000139"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "19331002000000000064"
replace firm_id = "`new_firmid'" if obs_id == "19291002000000000160"

//SOUTHERN CEMENT COMPANY		
preserve
keep if obs_id == "19331002000000000077"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000002"
replace firm_id = "`new_firmid'" if obs_id == "19311002000000000003"
replace firm_id = "`new_firmid'" if obs_id == "19291002000000000001"

//Blue Diamond
preserve
keep if obs_id == "19351002000000000011"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "19331002000000000076"
replace firm_id = "`new_firmid'" if obs_id == "19291002000000000012"
replace firm_id = "`new_firmid'" if obs_id == "19311002000000000012"

//Universal Atlas
preserve
keep if obs_id == "19331002000000000129"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "19311002000000000068"
replace firm_id = "`new_firmid'" if obs_id == "19311002000000000005"
replace firm_id = "`new_firmid'" if obs_id == "19331002000000000032"
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000003"
replace firm_id = "`new_firmid'" if obs_id == "19291002000000000086"
replace firm_id = "`new_firmid'" if obs_id == "19331002000000000046"
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000119"
replace firm_id = "`new_firmid'" if obs_id == "19311002000000000126"
replace firm_id = "`new_firmid'" if obs_id == "19311002000000000147"
replace firm_id = "`new_firmid'" if obs_id == "19331002000000000062"
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000137"
replace firm_id = "`new_firmid'" if obs_id == "19331002000000000025"
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000099"

//Monolith
preserve
keep if obs_id == "19291002000000000011"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "19331002000000000065"
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000153"

//Pacific Portland Cement
preserve
keep if obs_id == "19351002000000000016"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "19291002000000000015"

//Southwestern Portland Cement
preserve
keep if obs_id == "19331002000000000059"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000015"
replace firm_id = "`new_firmid'" if obs_id == "19311002000000000095"
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000085"
replace firm_id = "`new_firmid'" if obs_id == "19331002000000000089"
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000134"
replace firm_id = "`new_firmid'" if obs_id == "19311002000000000016"
replace firm_id = "`new_firmid'" if obs_id == "19311002000000000144"
replace firm_id = "`new_firmid'" if obs_id == "19331002000000000011"

//Superior Cement
preserve
keep if obs_id == "19351002000000000146"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000089"
replace firm_id = "`new_firmid'" if obs_id == "19331002000000000015"

//US Steel (take firm ID from 1112 to be consistent)
preserve
keep if obs_id == "19351112000000000366"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == ""
replace firm_id = "`new_firmid'" if obs_id == "19331002000000000112"
replace firm_id = "`new_firmid'" if obs_id == "19311002000000000037"
replace firm_id = "`new_firmid'" if obs_id == "19331002000000000129"
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000137"
replace firm_id = "`new_firmid'" if obs_id == "19311002000000000147"
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000034"
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000072"
replace firm_id = "`new_firmid'" if obs_id == "19311002000000000068"
replace firm_id = "`new_firmid'" if obs_id == "19331002000000000046"
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000061"
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000061"
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000064"
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000074"
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000046"
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000119"
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000048"
replace firm_id = "`new_firmid'" if obs_id == "19331002000000000102"
replace firm_id = "`new_firmid'" if obs_id == "19331002000000000132"
replace firm_id = "`new_firmid'" if obs_id == "19331110000000000050"
replace firm_id = "`new_firmid'" if obs_id == "19311002000000000122"
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000047"
replace firm_id = "`new_firmid'" if obs_id == "19331110000000000034"
replace firm_id = "`new_firmid'" if obs_id == "19311002000000000005"
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000068"
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000087"
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000003"
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000066"
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000067"
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000051"
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000053"
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000068"
replace firm_id = "`new_firmid'" if obs_id == "19331110000000000038"
replace firm_id = "`new_firmid'" if obs_id == "19291002000000000035"
replace firm_id = "`new_firmid'" if obs_id == "19331002000000000032"
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000050"
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000001"
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000049"
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000058"
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000040"
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000040"
replace firm_id = "`new_firmid'" if obs_id == "19331110000000000055"
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000071"
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000036"
replace firm_id = "`new_firmid'" if obs_id == "19331002000000000140"
replace firm_id = "`new_firmid'" if obs_id == "19331002000000000025"
replace firm_id = "`new_firmid'" if obs_id == "19331002000000000062"
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000054"
replace firm_id = "`new_firmid'" if obs_id == "19331110000000000051"
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000058"
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000055"
replace firm_id = "`new_firmid'" if obs_id == "19311002000000000044"
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000008"
replace firm_id = "`new_firmid'" if obs_id == "19331110000000000049"
replace firm_id = "`new_firmid'" if obs_id == "19311002000000000072"
replace firm_id = "`new_firmid'" if obs_id == "19331110000000000048"
replace firm_id = "`new_firmid'" if obs_id == "19311002000000000126"
replace firm_id = "`new_firmid'" if obs_id == "19331110000000000047"
replace firm_id = "`new_firmid'" if obs_id == "19331110000000000062"
replace firm_id = "`new_firmid'" if obs_id == "19311002000000000082"
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000099"
replace firm_id = "`new_firmid'" if obs_id == "19351110000000000062"
replace firm_id = "`new_firmid'" if obs_id == "19291110000000000069"
replace firm_id = "`new_firmid'" if obs_id == "19311112000000000265"
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000069"
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000059"
replace firm_id = "`new_firmid'" if obs_id == "19291002000000000086"
replace firm_id = "`new_firmid'" if obs_id == "19351002000000000042"
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000057"
replace firm_id = "`new_firmid'" if obs_id == "19291002000000000073"
replace firm_id = "`new_firmid'" if obs_id == "19311110000000000056"

save "./Stata Files/Extracts/`file_name_export'", replace
