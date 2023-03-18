//Post collapse fixes for industry 99999
args file_name_export
use "./Stata Files/Extracts/`file_name_export'", clear

//New firms
replace firm_id = "" if obs_id == "1933RADIO000000000018"
replace firm_id = "" if obs_id == "1935RADIO000000000014"
replace firm_id = "" if obs_id == "1929RADIO000000000158"
replace firm_id = "" if obs_id == "1929RADIO000000000190"
replace firm_id = "" if obs_id == "1931RADIO000000000120"
replace firm_id = "" if obs_id == "1929RADIO000000000197"
replace firm_id = "" if obs_id == "1933RADIO000000000012"

//Fill in missing values 
foreach type in firm{
	do "./Cleaning Scripts/General/gen_id" "99999" "`type'"
}

//REMLER CO. LTD.		
preserve
keep if obs_id == "1933RADIO000000000012"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1935RADIO000000000013"
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000016"

//DE FOREST RADIO CO.	
preserve
keep if obs_id == "1929RADIO000000000197"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000183"
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000111"

//RCA RADIOTRON CO. 
preserve
keep if obs_id == "1931RADIO000000000120"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000170"
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000105"
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000073"
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000071"
replace firm_id = "`new_firmid'" if obs_id == "1935RADIO000000000091"

//HEINTZ AND KAUFMAN LTD.		
preserve
keep if obs_id == "1935RADIO000000000015"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000017"

//INSULINE CORPORATION OF AMERICA			
preserve
keep if obs_id == "1933RADIO000000000082"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000240"
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000020"
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000137"

//MELBURN RADIO MFG. CO.	
preserve
keep if obs_id == "1935RADIO000000000023"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000003"

//MISSION BELL RADIO MFG. COMPANY, INC. 	
preserve
keep if obs_id == "1933RADIO000000000016"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000016"

//VICTORY SPEAKERS, INC.			
preserve
keep if obs_id == "1933RADIO000000000011"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000019"

//R. C. A. VICTOR CO.
preserve
keep if obs_id == "1933RADIO000000000015"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000071"
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000113"
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000067"
replace firm_id = "`new_firmid'" if obs_id == "1935RADIO000000000140"

//GENERAL ELECTRIC CO.
preserve
keep if obs_id == "1929RADIO000000000271"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000295"
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000097"
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000085"
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000111"
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000206"
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000180"
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000157"
replace firm_id = "`new_firmid'" if obs_id == "1935RADIO000000000127"

//KEN RAD CORPORATION
preserve
keep if obs_id == "1933RADIO000000000048"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000097"

//AH Grebe
preserve
keep if obs_id == "1931RADIO000000000149"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000257"

//Air King Product
preserve
keep if obs_id == "1929RADIO000000000215"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1935RADIO000000000128"

//American Bosch
preserve
keep if obs_id == "1929RADIO000000000130"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000101"

//Arcturus
preserve
keep if obs_id == "1929RADIO000000000179"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000163"

//Automatic Radio
preserve
keep if obs_id == "1933RADIO000000000057"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1935RADIO000000000082"
replace firm_id = "`new_firmid'" if obs_id == "1935RADIO000000000076"

//Baltimore Radio
preserve
keep if obs_id == "1933RADIO000000000102"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000126"

//Baritone Radio
preserve
keep if obs_id == "1931RADIO000000000056"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1935RADIO000000000056"
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000039"

//Belmont Radio
preserve
keep if obs_id == "1933RADIO000000000040"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000022"

//Best Manufacturing
preserve
keep if obs_id == "1931RADIO000000000110"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000200"

//Bremer-Tully
preserve
keep if obs_id == "1929RADIO000000000023"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000089"

//Bud Radio
preserve
keep if obs_id == "1933RADIO000000000104"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000287"

//CF Cannon
preserve
keep if obs_id == "1933RADIO000000000095"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000155"

//Champion Radio Works
preserve
keep if obs_id == "1935RADIO000000000070"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000127"

//Westinghouse
preserve
keep if obs_id == "1933RADIO000000000053"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000083"
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000131"

//Collin B. Kennedy
preserve
keep if obs_id == "1931RADIO000000000066"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000081"

//Detrola
preserve
keep if obs_id == "1935RADIO000000000081"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000090"

//Federal Telegraph
preserve
keep if obs_id == "1935RADIO000000000099"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000018"

//Gates Radio
preserve
keep if obs_id == "1933RADIO000000000033"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000053"

//General Household Utilities
preserve
keep if obs_id == "1935RADIO000000000064"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000046"

//General Motors
preserve
keep if obs_id == "1931RADIO000000000166"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000286"

//Boehme
preserve
keep if obs_id == "1929RADIO000000000181"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000230"

//Howard Radio
preserve
keep if obs_id == "1931RADIO000000000092"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000061"
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000136"

//Hyttron Radio
preserve
keep if obs_id == "1935RADIO000000000072"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000082"

//Jensen Radio
preserve
keep if obs_id == "1931RADIO000000000002"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000006"

//Kar Radio
preserve
keep if obs_id == "1931RADIO000000000094"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000156"
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000063"
replace firm_id = "`new_firmid'" if obs_id == "1935RADIO000000000083"

//Kellogg 
preserve
keep if obs_id == "1931RADIO000000000055"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000047"

//Lansing
preserve
keep if obs_id == "1933RADIO000000000002"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1935RADIO000000000022"

//Lincoln
preserve
keep if obs_id == "1935RADIO000000000122"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000092"

//Midwest Radio
preserve
keep if obs_id == "1935RADIO000000000137"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000165"
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000279"

//Mission Bell
preserve
keep if obs_id == "1935RADIO000000000002"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000016"

//National Carbon
preserve
keep if obs_id == "1929RADIO000000000299"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "11929RADIO000000000273"

//National Union Radio
preserve
keep if obs_id == "1931RADIO000000000108"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1935RADIO000000000100"

//Ozarka
preserve
keep if obs_id == "1929RADIO000000000056"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000003"

//Philadelphia
preserve
keep if obs_id == "1935RADIO000000000142"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000115"

//Pilot
preserve
keep if obs_id == "1931RADIO000000000079"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000222"

//Radio Receptor
preserve
keep if obs_id == "1935RADIO000000000117"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000249"

//Royal Radio
preserve
keep if obs_id == "1935RADIO000000000008"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000005"

//Samson
preserve
keep if obs_id == "1929RADIO000000000114"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000069"
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000113"

//Sprague
preserve
keep if obs_id == "1931RADIO000000000074"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000116"

//Stewart Works
preserve
keep if obs_id == "1929RADIO000000000065"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000041"

//Stewart Works
preserve
keep if obs_id == "1935RADIO000000000136"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1935RADIO000000000065"
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000176"
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000175"
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000109"

preserve
keep if obs_id == "1931RADIO000000000146"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000253"

//Utah Radio
preserve
keep if obs_id == "1929RADIO000000000325"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000187"
replace firm_id = "`new_firmid'" if obs_id == "1935RADIO000000000049"
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000068"
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000327"
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000031"
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000045"

save "./Stata Files/Extracts/`file_name_export'", replace
