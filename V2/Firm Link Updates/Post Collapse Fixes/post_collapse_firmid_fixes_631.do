//Post collapse fixes for industry 631
args file_name_export
use "./Stata Files/Extracts/`file_name_export'", clear

//?
preserve
keep if obs_id == "1933631000000000011"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931631000000000007"

//Swift & Company
preserve
keep if obs_id == "1933631000000000097"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929631000000000107B"
replace firm_id = "`new_firmid'" if obs_id == "1935631000000000086"
replace firm_id = "`new_firmid'" if obs_id == "1931631000000000097"

save "./Stata Files/Extracts/`file_name_export'", replace

//From ind803_fixes file
do "./SES1459263 Team Folder/V2/Firm Link Updates/Post Collapse Fixes/merge_fixes_final" "`file_name_export'" "631"

//Olive Oil Soap
preserve
keep if obs_id == "1931631000000000136"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935631000000000138"

//Perfect Polish
preserve
keep if obs_id == "1935631000000000162"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931631000000000158"

//Pacific Soap Co.
preserve
keep if obs_id == "1931631000000000016"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935631000000000028"
replace firm_id = "`new_firmid'" if obs_id == "1935631000000000019"
replace firm_id = "`new_firmid'" if obs_id == "1929631000000000020B"
replace firm_id = "`new_firmid'" if obs_id == "1933631000000000027"

//Proctor & Gamble
preserve
keep if obs_id == "1933631000000000084"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933631000000000011"
replace firm_id = "`new_firmid'" if obs_id == "1935631000000000007"
replace firm_id = "" if obs_id == "1929631000000000058B"

//Colgate-Palmolive
preserve
keep if obs_id == "1933631000000000228"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935631000000000003"
replace firm_id = "`new_firmid'" if obs_id == "1929631000000000003B"

//Dobbins
preserve
keep if obs_id == "1931631000000000125"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933631000000000121"
replace firm_id = "`new_firmid'" if obs_id == "1929631000000000140B"

//Citrus Soap
preserve
keep if obs_id == "1933631000000000029"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931631000000000020"
replace firm_id = "`new_firmid'" if obs_id == "1929631000000000024B"

//GR Lucy
preserve
keep if obs_id == "1933631000000000033"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1929631000000000028B"
replace firm_id="`new_firmid'" if obs_id=="1931631000000000025"

//Holly
preserve
keep if obs_id == "1933631000000000013"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1935631000000000026"

//Nassour
preserve
keep if obs_id == "1931631000000000015"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1933631000000000026"

//Wisdom
preserve
keep if obs_id == "1933631000000000021"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1935631000000000023"

//James Counts Soap
preserve
keep if obs_id == "1931631000000000115"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1935631000000000110"
replace firm_id="`new_firmid'" if obs_id=="1929631000000000127B"

//Baum Bros.
preserve
keep if obs_id == "1929631000000000035B"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1933631000000000037"

//Eaton Clark
preserve
keep if obs_id == "1933631000000000101"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1929631000000000118B"

//Cereal soaps
preserve
keep if obs_id == "1935631000000000168"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1929631000000000191B"

//New firm IDs
replace firm_id="" if obs_id=="1929631000000000007B"
replace firm_id="" if obs_id=="1929631000000000022B"
replace firm_id="" if obs_id=="1929631000000000026B"
replace firm_id="" if obs_id=="1929631000000000021B"
replace firm_id="" if obs_id=="1929631000000000017B"
replace firm_id="" if obs_id=="1929631000000000018B"
replace firm_id="" if obs_id=="1935631000000000018"
replace firm_id="" if obs_id=="1929631000000000032B"
replace firm_id="" if obs_id=="1929631000000000014B"
replace firm_id="" if obs_id=="1931631000000000010"
replace firm_id="" if obs_id=="1935631000000000008"
replace firm_id="" if obs_id=="1931631000000000013"
replace firm_id="" if obs_id=="1933631000000000031"
replace firm_id="" if obs_id=="1935631000000000016"
replace firm_id="" if obs_id=="1933631000000000012"
replace firm_id="" if obs_id=="1933631000000000025"
replace firm_id="" if obs_id=="1929631000000000013B"
replace firm_id="" if obs_id=="1933631000000000016"
replace firm_id="" if obs_id=="1929631000000000030B"
replace firm_id="" if obs_id=="1931631000000000005"
replace firm_id="" if obs_id=="1931631000000000231"

//Fill in missing values 
foreach type in firm{
	do "./Cleaning Scripts/General/gen_id" "631" "`type'"
}

//Original Bradford
preserve
keep if obs_id == "1931631000000000231"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1931631000000000228"
replace firm_id="`new_firmid'" if obs_id=="1929631000000000261B"
replace firm_id="`new_firmid'" if obs_id=="1929631000000000260B"
replace firm_id="`new_firmid'" if obs_id=="1935631000000000222"
replace firm_id="`new_firmid'" if obs_id=="1933631000000000214"

//West Coast Soap
preserve
keep if obs_id == "1931631000000000005"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1935631000000000005"
replace firm_id="`new_firmid'" if obs_id=="1933631000000000008"
replace firm_id="`new_firmid'" if obs_id=="1929631000000000004B"

//Pioneer
preserve
keep if obs_id == "1929631000000000030B"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1931631000000000027"
replace firm_id="`new_firmid'" if obs_id=="1935631000000000032"
replace firm_id="`new_firmid'" if obs_id=="1933631000000000035"

//Roxbury Chemical
preserve
keep if obs_id == "1931631000000000100"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1935631000000000001"

//Soonite
preserve
keep if obs_id == "1931631000000000028"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1933631000000000036"
replace firm_id="`new_firmid'" if obs_id=="1929631000000000031B"

//Pacific Borax
preserve
keep if obs_id == "1933631000000000016"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935631000000000027"
replace firm_id = "`new_firmid'" if obs_id == "1931631000000000018"
replace firm_id = "`new_firmid'" if obs_id == "1929631000000000016B"

//Jennings-Sherry
preserve
keep if obs_id == "1933631000000000025"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1929631000000000009B"
replace firm_id="`new_firmid'" if obs_id=="1931631000000000011"
replace firm_id="`new_firmid'" if obs_id=="1935631000000000014"

//Liberty Byproducts
preserve
keep if obs_id == "1933631000000000132"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1929631000000000144B"

//Newell-Gutradt
preserve
keep if obs_id == "1935631000000000031"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1929631000000000029B"
replace firm_id="`new_firmid'" if obs_id=="1933631000000000034"

//Larkin
preserve
keep if obs_id == "1929631000000000160B"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1935631000000000121"

//Lanman & Kemp Barclay
preserve
keep if obs_id == "1933631000000000120"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1933631000000000128"
replace firm_id="`new_firmid'" if obs_id=="1931631000000000130"

//Castillian
preserve
keep if obs_id == "1933631000000000012"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1935631000000000010"

//Los Angeles Soap Co.
preserve
keep if obs_id == "1931631000000000013"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1929631000000000010B"
replace firm_id="`new_firmid'" if obs_id=="1935631000000000015"
replace firm_id="`new_firmid'" if obs_id=="1933631000000000014"

//Bobrick
preserve
keep if obs_id == "1935631000000000008"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1929631000000000006B"
replace firm_id="`new_firmid'" if obs_id=="1931631000000000008"
replace firm_id="`new_firmid'" if obs_id=="1933631000000000023"

//Insto Co.
preserve
keep if obs_id == "1931631000000000010"
local new_firmid = firm_id in 1
restore
replace firm_id="`new_firmid'" if obs_id=="1929631000000000008B"
replace firm_id="`new_firmid'" if obs_id=="1935631000000000013"
replace firm_id="`new_firmid'" if obs_id=="1933631000000000024"

//Fishbeenck
preserve
keep if obs_id == "1933631000000000031"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id =="1929631000000000027B"
replace firm_id = "`new_firmid'" if obs_id == "1935631000000000030"
replace firm_id = "`new_firmid'" if obs_id == "1931631000000000022"

//Miller Soap
preserve
keep if obs_id == "1929631000000000234B"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id =="1929631000000000011B"
replace firm_id = "`new_firmid'" if obs_id =="1935631000000000017"
replace firm_id = "`new_firmid'" if obs_id == "1933631000000000015"

//Nassano
preserve
keep if obs_id == "1935631000000000018"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933631000000000026"

//California Soap Co.
preserve
keep if obs_id == "1929631000000000007B"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933631000000000022"
replace firm_id = "`new_firmid'" if obs_id == "1931631000000000009"
replace firm_id = "`new_firmid'" if obs_id == "1935631000000000009"

save "./Stata Files/Extracts/`file_name_export'", replace
