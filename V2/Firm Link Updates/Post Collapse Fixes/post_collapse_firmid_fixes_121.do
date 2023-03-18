//Post collapse fixes for industry 121
args file_name_export
use "./Stata Files/Extracts/`file_name_export'", clear

replace firm_id = "" if obs_id == "1933121000000000012"
replace firm_id = "" if obs_id == "1929121000000000032"
replace firm_id = "" if obs_id == "1931121000000000029"
replace firm_id = "" if obs_id == "1929121000000000019"
replace firm_id = "" if obs_id == "1931121000000000048"
replace firm_id = "" if obs_id == "1931121000000000032"
replace firm_id = "" if obs_id == "1935121000000000010"
replace firm_id = "" if obs_id == "1929121000000000017"
replace firm_id = "" if obs_id == "1935121000000000035"
replace firm_id = "" if obs_id == "1935121000000000015"
replace firm_id = "" if obs_id == "1931121000000000024"

//Fill in missing values 
foreach type in firm {
	do "./Cleaning Scripts/General/gen_id" "121" "`type'"
}

//California Vulcan Macaroni
preserve
keep if obs_id == "1933121000000000012"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935121000000000028"
replace firm_id = "`new_firmid'" if obs_id == "1935121000000000028"

//California Macaroni Co.
preserve
keep if obs_id == "1929121000000000032"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931121000000000044"

//GRAGNANO PRODUCTS INC.	
preserve
keep if obs_id == "1931121000000000029"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1933121000000000015"
replace firm_id = "`new_firmid'" if obs_id == "1929121000000000039"

//GOLDEN GATE MACARONI & PASTE FACTORY
preserve
keep if obs_id == "1933121000000000014"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929121000000000038"
replace firm_id = "`new_firmid'" if obs_id == "1931121000000000028"

//GENOA MACARONI FACTORY
preserve
keep if obs_id == "1933121000000000043"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1935121000000000033"

//FONTANA FOOD PRODUCTS CO.
preserve
keep if obs_id == "1935121000000000050"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931121000000000041"
replace firm_id = "`new_firmid'" if obs_id == "1933121000000000020"

//POMPEI MACARONI FCTY. INC.
preserve
keep if obs_id == "1933121000000000018"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1935121000000000041"
replace firm_id = "`new_firmid'" if obs_id == "1931121000000000035"

//SANDIEGO MACARONI MFG CO.
preserve
keep if obs_id == "1935121000000000025"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1931121000000000021"
replace firm_id = "`new_firmid'" if obs_id == "1929121000000000028"

//SAN FRANCISCO ITALIAN PAST CO
preserve
keep if obs_id == "1933121000000000019"
local new_firmid = firm_id in 1
restore			
replace firm_id = "`new_firmid'" if obs_id == "1931121000000000045"

//ROMA MACARONI FACTORY
preserve
keep if obs_id == "1935121000000000043"
local new_firmid = firm_id in 1
restore		
replace firm_id = "`new_firmid'" if obs_id == "1931121000000000038"
replace firm_id = "`new_firmid'" if obs_id == "1933121000000000028"

//ANTHONY MACARONI & PRETZEL CO., INC.	
preserve
keep if obs_id == "1935121000000000008"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1933121000000000006"

//PANAMA CANEL RAVIOLI FACTORY
preserve
keep if obs_id == "1935121000000000040"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1933121000000000030"
replace firm_id = "`new_firmid'" if obs_id == "1931121000000000034"

//ITALIAN MACARONI FACTORY
preserve
keep if obs_id == "1929121000000000006"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935121000000000002"

//ITALIAN-AMERICAN PASTE CO. INC	
preserve
keep if obs_id == "1929121000000000040"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935121000000000037"
replace firm_id = "`new_firmid'" if obs_id == "1933121000000000016"
replace firm_id = "`new_firmid'" if obs_id == "1931121000000000031"				

// FLORENCE MACARONI CO
preserve
keep if obs_id == "1935121000000000011"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931121000000000011"
replace firm_id = "`new_firmid'" if obs_id == "1933121000000000038"

//FRESNO MACARONI MFG. CO.
preserve
keep if obs_id == "1933121000000000004"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935121000000000006"
replace firm_id = "`new_firmid'" if obs_id == "1929121000000000010"
replace firm_id = "`new_firmid'" if obs_id == "1931121000000000008"
replace firm_id = "`new_firmid'" if obs_id == "1929121000000000009"
replace firm_id = "`new_firmid'" if obs_id == "1935121000000000005"
replace firm_id = "`new_firmid'" if obs_id == "1933121000000000032"
replace firm_id = "`new_firmid'" if obs_id == "1931121000000000007"

//Superior Macaroni
preserve
keep if obs_id == "1935121000000000018"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933121000000000007"

//Antonio
preserve
keep if obs_id == "1929121000000000239"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931121000000000233"
replace firm_id = "`new_firmid'" if obs_id == "1929121000000000146"

//Kuertz 
preserve
keep if obs_id == "1935121000000000277"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935121000000000276"

//Cafferate and Zenga
preserve
keep if obs_id == "1929121000000000031"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933121000000000042"
replace firm_id = "`new_firmid'" if obs_id == "1931121000000000026"

//Salvatore Nunziato
preserve
keep if obs_id == "1935121000000000021"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929121000000000015"

//Peking
preserve
keep if obs_id == "1935121000000000017"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933121000000000036"
replace firm_id = "`new_firmid'" if obs_id == "1931121000000000017"

//Vincent Fava
preserve
keep if obs_id == "1935121000000000136"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929121000000000096"

//Western Macaroni
preserve
keep if obs_id == "1931121000000000083"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933121000000000285"

save "./Stata Files/Extracts/`file_name_export'", replace
