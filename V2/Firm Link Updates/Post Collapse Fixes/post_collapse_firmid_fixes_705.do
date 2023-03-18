//Post collapse fixes for 705
args file_name_export
use "./Stata Files/Extracts/`file_name_export'", clear

//Standard Oil of California
preserve
keep if obs_id == "1931705000000000013"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id=="1935705000000000020"
replace firm_id = "`new_firmid'" if obs_id=="1929705000000000027"
replace firm_id = "`new_firmid'" if obs_id=="1935705000000000018"
replace firm_id = "`new_firmid'" if obs_id=="1933705000000000013"
replace firm_id = "`new_firmid'" if obs_id=="1931705000000000021"
replace firm_id = "`new_firmid'" if obs_id=="1929705000000000019"
replace firm_id = "`new_firmid'" if obs_id=="1933705000000000024"
replace firm_id = "`new_firmid'" if obs_id=="1929705000000000017"
replace firm_id = "`new_firmid'" if obs_id=="1933705000000000016"
replace firm_id = "`new_firmid'" if obs_id=="1933705000000000022"
replace firm_id = "`new_firmid'" if obs_id=="1935705000000000010"
replace firm_id = "`new_firmid'" if obs_id=="1931705000000000013"
replace firm_id = "`new_firmid'" if obs_id=="1931705000000000015"

//Standard Oil of Indiana
preserve
keep if obs_id == "1931705000000000358"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id=="1931705000000000360"
replace firm_id = "`new_firmid'" if obs_id=="1933705000000000374"
replace firm_id = "`new_firmid'" if obs_id=="1933705000000000371"
replace firm_id = "`new_firmid'" if obs_id=="1929705000000000376"
replace firm_id = "`new_firmid'" if obs_id=="1929705000000000372"

save "./Stata Files/Extracts/`file_name_export'", replace

//Load in other 705 fixes
do "./SES1459263 Team Folder/V2/Firm Link Updates/Post Collapse Fixes/merge_fixes_final" "`file_name_export'" "705"

//New firm ID
replace firm_id = "" if obs_id=="1933705000000000072"
replace firm_id = "" if obs_id=="1935705000000000157"
replace firm_id = "" if obs_id=="1929705000000000119"
replace firm_id = "" if obs_id=="1931705000000000367"
replace firm_id = "" if obs_id=="1935705000000000135"
replace firm_id = "" if obs_id=="1933705000000000262"
replace firm_id = "" if obs_id=="1931705000000000117"
replace firm_id = "" if obs_id=="1935705000000000158"
replace firm_id = "" if obs_id=="1935705000000000298"
replace firm_id = "" if obs_id=="1935705000000000229"
replace firm_id = "" if obs_id=="1929705000000000140"
replace firm_id = "" if obs_id=="1931705000000000160"
replace firm_id = "" if obs_id=="1931705000000000032"
replace firm_id = "" if obs_id=="1929705000000000034"
replace firm_id = "" if obs_id=="1929705000000000035"
replace firm_id = "" if obs_id=="1929705000000000084"
replace firm_id = "" if obs_id=="1929705000000000039"
replace firm_id = "" if obs_id=="1931705000000000125"
replace firm_id = "" if obs_id=="1931705000000000302"
replace firm_id = "" if obs_id=="1929705000000000136"
replace firm_id = "" if obs_id=="1935705000000000038"
replace firm_id = "" if obs_id=="1929705000000000154"
replace firm_id = "" if obs_id=="1933705000000000290"
replace firm_id = "" if obs_id=="1935705000000000114"
replace firm_id = "" if obs_id=="1933705000000000181"
replace firm_id = "" if obs_id=="1929705000000000012"
replace firm_id = "" if obs_id=="1935705000000000207"
replace firm_id = "" if obs_id=="1931705000000000350"
replace firm_id = "" if obs_id=="1929705000000000074"
replace firm_id = "" if obs_id=="1929705000000000205"

//Fill in missing values 
foreach type in firm{
	do "./Cleaning Scripts/General/gen_id" "705" "`type'"
}

//CALIFORNIA PETROLEUM
preserve
keep if obs_id == "1933705000000000378"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000369"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000383"

//INDIAN REFINING
preserve
keep if obs_id == "1933705000000000072"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000077"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000076"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000075"

//INTERNATIONAL REFINING	
preserve
keep if obs_id == "1935705000000000157"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000146"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000148"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000150"

//ASSOCIATED OIL COMPANY  
preserve
keep if obs_id == "1935705000000000048"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000050"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000014"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000010"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000010"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000007"

//General Oil
preserve
keep if obs_id == "1931705000000000017"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000059"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000058"

//General Supply
preserve
keep if obs_id == "1929705000000000043"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000045"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000039"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000044"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000047"

//Gilmore Oil
preserve
keep if obs_id == "1933705000000000053"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000030"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000029"

//Gulf Refining
preserve
keep if obs_id == "1931705000000000172"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000183"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000235"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000178"

//Indepdent Oil
preserve
keep if obs_id == "1935705000000000109"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000220"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000211"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000094"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000102"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000206"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000220"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000102"

//Macmillan Refining
preserve
keep if obs_id == "1935705000000000041"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000315"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000008"

//Magnolia
preserve
keep if obs_id == "1933705000000000341"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000305"

//Pennsylvania Refining
preserve
keep if obs_id == "1931705000000000238"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000244"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000239"

//Richfield
preserve
keep if obs_id == "1929705000000000020"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000022"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000051"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000030"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000033"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000027"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000049"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000051"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000027"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000045"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000021"

//Rio Grande
preserve
keep if obs_id == "1933705000000000041"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000284"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000026"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000025"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000043"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000299"

//Shell
preserve
keep if obs_id == "1933705000000000125"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000011"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000018"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000052"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000011"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000014"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000014"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000015"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000011"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000050"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000049"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000053"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000008"

//Sinclair Refining
preserve
keep if obs_id == "1935705000000000295"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000283"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000309"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000375"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000183"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000111"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000102"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000086"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000345"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000230"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000246"

//Sinclair Refining of Maine
preserve
keep if obs_id == "1931705000000000235"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000096"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000104"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000103"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000290"

//Texas
preserve
keep if obs_id == "1931705000000000220"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000063"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000049"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000052"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000060"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000062"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000054"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000051"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000047"

//Texas Pacific and Coal
preserve
keep if obs_id == "1933705000000000339"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000327"

//Tide Water
preserve
keep if obs_id == "1933705000000000198"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000169"

//Union Oil
preserve
keep if obs_id == "1929705000000000016"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000044"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000064"

//Wilshire Oil
preserve
keep if obs_id == "1935705000000000033"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000057"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000048"

//Yale Oil
preserve
keep if obs_id == "1933705000000000156"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000213"

//Empire Oil
preserve
keep if obs_id == "1933705000000000286"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000215"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000081"

//Eastern Oil
preserve
keep if obs_id == "1929705000000000154"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000158"

//Crown Central
preserve
keep if obs_id == "1935705000000000306"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000305"

//Derby Oil
preserve
keep if obs_id == "1931705000000000092"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000107"

preserve
keep if obs_id == "1929705000000000231"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000189"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000232"

//Barnsdall
preserve
keep if obs_id == "1929705000000000209"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000098"

//PHOENIX REFINERY CO	
preserve
keep if obs_id == "1933705000000000290"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000309"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000278"

//SIMMS OIL	
preserve
keep if obs_id == "1929705000000000012"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000280"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000288"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000009"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000008"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000012"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000296"

//Henry Cross 
preserve
keep if obs_id == "1929705000000000080"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000011"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000083"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000082"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000132"

//VACUUM OIL CO
preserve
keep if obs_id == "1933705000000000178"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000080"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000130"

//UTAH OIL REFINING COMPANY	
preserve
keep if obs_id == "1931705000000000350"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000366"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000364"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000363"

//STANDARD OIL CO. (KANSAS)
preserve
keep if obs_id == "1931705000000000104"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000101"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000104"

//MEXICAN PETROLEUM CORPORATION OF LA.
preserve
keep if obs_id == "1933705000000000124"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000124"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000122"

//MEXICAN PETROLEUM CORP OF MAINE	
preserve
keep if obs_id == "1931705000000000125"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000126"

//AETNA OIL SERVICE, INC.,	
preserve
keep if obs_id == "1935705000000000114"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000108"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000109"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000107"

//EDINGTON OIL AND REFINING CO., LTD.	
preserve
keep if obs_id == "1935705000000000038"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000025"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000028"

//CANFIELD OIL COMPANY	
preserve
keep if obs_id == "1933705000000000181"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000232"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000189"

//SNOW CAP OIL COMPANY	
preserve
keep if obs_id == "1935705000000000158"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000151"

//White Eagle
preserve
keep if obs_id == "1931705000000000367"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000377"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000086"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000089"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000339"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000381"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000098"	

//STANOLIND OIL AND GAS COMPANY	
preserve
keep if obs_id == "1931705000000000117"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000121"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000126"

//Vacuum Oil
preserve
keep if obs_id == "1929705000000000155"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000388"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000137"

//CITIES SERVICE REFINING	(& Crew Leveck)
preserve
keep if obs_id == "1935705000000000135"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000128"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000131"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000153"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000158"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000240"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000249"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000151"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000166"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000243"

//LOUISIANA OIL REFINING
preserve
keep if obs_id == "1933705000000000116"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000120"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000118"

//WARNER QUINLAN CO   
preserve
keep if obs_id == "1931705000000000160"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000165"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000174"

//CUSHING REFINING AND GASOLINE CORPORATION
preserve
keep if obs_id == "1935705000000000207"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000388"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000223"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000207"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000195"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000209"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000199"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000214"

//LINCOLN OIL REFINING COMPANY	
preserve
keep if obs_id == "1929705000000000074"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000071"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000076"

//TRANSCONTINENTAL OIL
preserve
keep if obs_id == "1929705000000000205"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000191"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000338"

save "./Stata Files/Extracts/`file_name_export'", replace
