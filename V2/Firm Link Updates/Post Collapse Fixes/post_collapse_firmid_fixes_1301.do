//Post collapse fixes for industry 1301
args file_name_export
use "./Stata Files/Extracts/`file_name_export'", clear

//AT Ferrell
preserve
keep if obs_id == "19291301000000000135"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000110"

//New firm IDs
replace firm_id = "" if obs_id == "19291301000000000013"	
replace firm_id = "" if obs_id == "19291301000000000132"
replace firm_id = "" if obs_id == "19291301000000000133"
replace firm_id = "" if obs_id == "19311301000000000044"
replace firm_id = "" if obs_id == "19291301000000000004"
replace firm_id = "" if obs_id == "19291301000000000076"

//Fill in missing values 
foreach type in firm{
	do "./Cleaning Scripts/General/gen_id" "1301" "`type'"
}

//JUNIOR MONARCH HAY PRESS CO (A CORP)	
preserve
keep if obs_id == "19351301000000000007"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "19291301000000000012"
replace firm_id = "`new_firmid'" if obs_id == "19311301000000000002"
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000003"

//HARRIS HARVESTER COMPANY	
preserve
keep if obs_id == "19291301000000000004"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "19311301000000000007"

//JOHN CHRISTIAN MANUFACTURING CO.	
preserve
keep if obs_id == "19291301000000000007"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000005"
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000002"

//VENTURA MANUFACTURING & IMPLEMENT COMPANY
preserve
keep if obs_id == "19351301000000000006"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311301000000000013"		
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000008"			

//THE WHITAKER MFG
preserve
keep if obs_id == "19291301000000000076"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000075"
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000074"
replace firm_id = "`new_firmid'" if obs_id == "19311301000000000084"
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000034"

//KILLEFER MANUFACTURING CORPORATION, LTD.
preserve
keep if obs_id == "19291301000000000015"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311301000000000004"
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000012"
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000001"

//Internatioanl Harvester
preserve
keep if obs_id == "19291301000000000195"
local new_firmid = firm_id in 1
restore
preserve
keep if obs_id == "19351301000000000158"
local old_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if firm_id == "`old_firmid'"
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000158"
replace firm_id = "`new_firmid'" if obs_id == "19311301000000000163"
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000118"
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000121"
replace firm_id = "`new_firmid'" if obs_id == "19311301000000000049"
replace firm_id = "`new_firmid'" if obs_id == "19291301000000000092"
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000060"
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000077"
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000049"
replace firm_id = "`new_firmid'" if obs_id == "19311301000000000187"
replace firm_id = "`new_firmid'" if obs_id == "19291301000000000238"
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000147"
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000148"
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000196"
replace firm_id = "`new_firmid'" if obs_id == "19291301000000000087"
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000032"
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000061"
replace firm_id = "`new_firmid'" if obs_id == "19311301000000000015"
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000070"
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000059"
replace firm_id = "`new_firmid'" if obs_id == "19311301000000000071"
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000069"
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000076"
replace firm_id = "`new_firmid'" if obs_id == "19291301000000000105"
replace firm_id = "`new_firmid'" if obs_id == "19311301000000000098"
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000087"
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000062"
replace firm_id = "`new_firmid'" if obs_id == "19291301000000000083"
replace firm_id = "`new_firmid'" if obs_id == "19311301000000000080"
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000047"
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000066"
replace firm_id = "`new_firmid'" if obs_id == "19291301000000000089"

preserve
keep if obs_id == "19311301000000000093"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311301000000000166"

preserve
keep if obs_id == "19311301000000000004"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291301000000000015"

preserve
keep if obs_id == "19291301000000000162"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000126"

//Parker plow
preserve
keep if obs_id == "19291301000000000146"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311301000000000115"

//Port Huron Thresher
preserve
keep if obs_id == "19291301000000000137"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000111"

//Caterpillar
preserve
keep if obs_id == "19351301000000000062"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291301000000000003"

//Whitaker Mfg Co.
preserve
keep if obs_id == "19291301000000000076"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000075"
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000074"
replace firm_id = "`new_firmid'" if obs_id == "19311301000000000084"
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000034"

//Ventura
preserve
keep if obs_id == "19351301000000000006"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000008"

//Marting MFG
preserve
keep if obs_id == "19351301000000000128"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000021"

//JJ Deus
preserve
keep if obs_id == "19351301000000000177"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291301000000000216"

//Holland Celery Planter
preserve
keep if obs_id == "19311301000000000117"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000121"

//Hart Carter
preserve
keep if obs_id == "19331301000000000038"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291301000000000038"
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000095"

//David Bradley
preserve
keep if obs_id == "19311301000000000053"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000080"

//CW Hay
preserve
keep if obs_id == "19351301000000000003"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291301000000000008"

//Boggs
preserve
keep if obs_id == "19291301000000000196"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291301000000000164"

//Brennes
preserve
keep if obs_id == "19331301000000000007"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000005"

//Blizzard
preserve
keep if obs_id == "19331301000000000127"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000175"

//NORTH WAYNE TOOL CO.	
preserve
keep if obs_id == "19291301000000000133"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311301000000000111"
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000109"
replace firm_id = "`new_firmid'" if obs_id == "19331301000000000085"

//EMERSON & STEVENS MFG. CO.,	
preserve
keep if obs_id == "19291301000000000132"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311301000000000110"
replace firm_id = "`new_firmid'" if obs_id == "19351301000000000108"

save "./Stata Files/Extracts/`file_name_export'", replace
