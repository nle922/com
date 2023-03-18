//Post collapse fixes for industry 1008
args file_name_export
use "./Stata Files/Extracts/`file_name_export'", clear

//Libbey Owens Ford
preserve
keep if obs_id == "19311008000000000053"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000093"

//Long Beach Glass
preserve
keep if obs_id == "19291008000000000011"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000009"

//Owens Illinois
preserve
keep if obs_id == "19351008000000000026"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000083"
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000128"
replace firm_id = "`new_firmid'" if obs_id == "19351008000000000195"
replace establishment_id = "" if obs_id == "19331008000000000178"

//Pittsburgh Plate Glass
preserve
keep if obs_id == "19291008000000000158"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000190"
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000153"

//AH Fargar
preserve
keep if obs_id == "19351008000000000010"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000006"

//Crystalite
preserve
keep if obs_id == "19351008000000000009"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000005"

//Jeanette Shade & Novelty Co.
preserve
keep if obs_id == "19311008000000000178"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000202"

//Ford Motor
preserve
keep if obs_id == "19311008000000000063"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000062"
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000073"
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000127"
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000154"

//New firm ID
replace firm_id = "" if obs_id == "19331008000000000062"
replace firm_id = "" if obs_id == "19291008000000000242"
replace firm_id = "" if obs_id == "19331008000000000011"
replace firm_id = "" if obs_id == "19351008000000000015"
replace firm_id = "" if obs_id == "19311008000000000081"
replace firm_id = "" if obs_id == "19351008000000000107"
replace firm_id = "" if obs_id == "19291008000000000112"
replace firm_id = "" if obs_id == "19351008000000000126"
replace firm_id = "" if obs_id == "19351008000000000211"

//Fill in missing values 
foreach type in firm establishment{
	do "./Cleaning Scripts/General/gen_id" "1008" "`type'"
}

//Universal Glass
preserve
keep if obs_id == "19351008000000000211"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000228"
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000262"
replace firm_id = "`new_firmid'" if obs_id == "19331008000000000191"

//Lancaster Lens
preserve
keep if obs_id == "19291008000000000112"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000092"
replace firm_id = "`new_firmid'" if obs_id == "19331008000000000079"

//Salem Glass Works
preserve
keep if obs_id == "19331008000000000062"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000072"
replace firm_id = "`new_firmid'" if obs_id == "19351008000000000064"
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000086"

//Fostoria Glass Works
preserve
keep if obs_id == "19291008000000000242"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351008000000000197"
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000212"
replace firm_id = "`new_firmid'" if obs_id == "19331008000000000182"

//Franklin Glass
preserve
keep if obs_id == "19351008000000000126"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19331008000000000152"

//LATCHFORD GLSS COMPANY
preserve
keep if obs_id == "19331008000000000011"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000008"
replace firm_id = "`new_firmid'" if obs_id == "19351008000000000007"
replace firm_id = "`new_firmid'" if obs_id == "19351008000000000012"

//MCLAUGHLIN GLASS COMPANY
preserve
keep if obs_id == "19331008000000000012"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000017"

//OWENS-ILLINOIS PACIFIC COAST COMPANY
preserve
keep if obs_id == "19291008000000000020"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351008000000000014"
replace firm_id = "`new_firmid'" if obs_id == "19331008000000000008"
replace firm_id = "`new_firmid'" if obs_id == "19351008000000000018"
replace firm_id = "`new_firmid'" if obs_id == "19331008000000000010"

//TECHNICAL GLASS CO., INC.	
preserve
keep if obs_id == "19351008000000000015"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19331008000000000007"
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000011"
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000015"

//Hazel Atlas
preserve
keep if obs_id == "19311008000000000167"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19331008000000000004"
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000003"
replace firm_id = "`new_firmid'" if obs_id == "19351008000000000006"

//HAZEL ATLAS GLASS CO OF OKLAHOMA
preserve
keep if obs_id == "19351008000000000107"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000118"
replace firm_id = "`new_firmid'" if obs_id == "19331008000000000100"
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000112"
replace firm_id = "`new_firmid'" if obs_id == "19331008000000000098"
replace firm_id = "`new_firmid'" if obs_id == "19351008000000000101"
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000136"
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000131"

//KEARNS GORSUCH BOTTLE
preserve
keep if obs_id == "19311008000000000106"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000125"
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000124"

//	HAZEL ATLAS OF NEW YORK
preserve
keep if obs_id == "19311008000000000081"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351008000000000067"
replace firm_id = "`new_firmid'" if obs_id == "19331008000000000067"

save "./Stata Files/Extracts/`file_name_export'", replace
