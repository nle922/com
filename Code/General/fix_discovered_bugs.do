//Fixes mistakes discovered in the data when preparing the extract
//I used the FIPS to match the transcribed tables from Hornbeck etc.

replace ag001_fips = 49 if ag001 == "Utah"
replace ag001_fips = 16 if ag001 == "Idaho"
replace ag001_fips = 11 if ag003 == "District Of Columbia"
replace ag003_fips = "001" if ag001_fips == 11 & ag003 == "District Of Columbia"
replace ag003_fips = "115" if ag001_fips == 1 & ag003 == "St. Clair"
replace ag003_fips = "189" if ag001_fips == 51 & ag003 == "Warwick"
replace ag003_fips = "061" if ag001_fips == 36 & ag003 == "Man"		
replace ag003_fips = "041" if ag001_fips == 6 & ag003 == "Merin"		
replace ag003_fips = "041" if ag001_fips == 5 & ag003 == "Christ"
replace ag003_fips = "099" if ag001_fips == 17 & ag003 == "Lasalle"
replace ag003_fips = "091" if ag001_fips == 18 & ag003 == "Laporte"
replace ag003_fips = "167" if ag001_fips == 19 & ag003 == "Siuox"
replace ag003_fips = "235" if ag001_fips == 21 & ag003 == "Whiteley"
replace ag003_fips = "173" if ag001_fips == 27 & ag003 == "Yellow Med"
replace ag003_fips = "105" if ag001_fips == 28 & ag003 == "Okibbeha"
replace ag003_fips = "049" if ag001_fips == 30 & ag003 == "Lewis And Clark"
replace ag003_fips = "025" if ag001_fips == 32 & ag003 == "Ormsby"
replace ag003_fips = "023" if ag001_fips == 34 & ag003 == "Middlesex W"
replace ag003_fips = "031" if ag001_fips == 35 & ag003 == "McKinley"
replace ag003_fips = "023" if ag001_fips == 39 & ag003 == "Clarke"
replace ag003_fips = "079" if ag001_fips == 40 & ag003 == "Leflore"
replace ag003_fips = "123" if ag001_fips == 48 & ag003 == "Dewit"
replace ag003_fips = "147" if ag001_fips == 51 & ag003 == "Prince Elwood"
replace ag003_fips = "073" if ag001_fips == 54 & ag003 == "Pleasant"
replace ag003_fips = "087" if ag001_fips == 55 & ag003 == "Ontagonia"
replace ag003_fips = "027" if ag001_fips == 56 & ag003 == "Niobrora"
replace ag003_fips = "049" if ag001_fips ==  1 & ag003 == "Dekalb"
replace ag003_fips = "119" if ag001_fips ==  5 & ag003 == "Little Rock"
replace ag003_fips = "037" if ag001_fips ==  6 & ag003 == "Los Algeles"
replace ag003_fips = "041" if ag001_fips ==  8 & ag003 == "Colorado Springs"
replace ag003_fips = "001" if ag001_fips == 9 & ag003 == "Stratford"
replace ag003_fips = "003" if ag001_fips == 10 & ag003 == "N.C"
replace ag003_fips = "055" if ag001_fips == 12 & ag003 == "Highland"
replace ag003_fips = "145" if ag001_fips == 18 & ag003 == "Shelbyville"
replace ag003_fips = "155" if ag001_fips == 19 & ag003 == "Pott"
replace ag003_fips = "013" if ag001_fips == 22 & ag003 == "Arcadia"
replace ag003_fips = "017" if ag001_fips == 25 & ag003 == "Lowell"
replace ag003_fips = "027" if ag001_fips == 26 & ag003 == "Caas"
replace ag003_fips = "099" if ag001_fips == 27 & ag003 == "Austin"
replace ag003_fips = "027" if ag001_fips == 29 & ag003 == "Calloway"
replace ag003_fips = "031" if ag001_fips == 34 & ag003 == "Paterson"
replace ag003_fips = "081" if ag001_fips == 36 & ag003 == "Glendale"
replace ag003_fips = "031" if ag001_fips == 37 & ag003 == "Certetet"
replace ag003_fips = "059" if ag001_fips == 39 & ag003 == "Guernaey"
replace ag003_fips = "009" if ag001_fips == 40 & ag003 == "Becham"
replace ag003_fips = "067" if ag001_fips == 42 & ag003 == "Mifflins"
replace ag003_fips = "003" if ag001_fips == 44 & ag003 == "Warwick"
replace ag003_fips = "041" if ag001_fips == 47 & ag003 == "De Kalb"
replace ag003_fips = "037" if ag001_fips == 48 & ag003 == "McCulock"
replace ag003_fips = "053" if ag001_fips == 49 & ag003 == "Bennington"		//Former name of town of Leeds in Washington county UT
replace ag003_fips = "033" if ag001_fips == 53 & ag003 == "Seattle"
replace ag003_fips = "061" if ag001_fips == 54 & ag003 == "Monong"
replace ag003_fips = "137" if ag001_fips == 55 & ag003 == "Wautoma"
replace ag003_fips = "037" if ag001_fips == 1 & ag003 == "Birmingham"
replace ag003_fips = "001" if ag001_fips == 9 & ag003 == "Bridgeport"
replace ag003_fips = "087" if ag001_fips == 51 & ag002 == "Richmond"		//"Richmond County" is separate from the City of Richmond 
replace ag003_fips = "133" if ag001_fips == 13 & ag002 == "Greensboro"		//County miscoded
replace ag003_fips = "105" if ag001_fips == 47 & ag002 == "Lenoir City"		//County miscoded


merge m:1 ag001 ag002 ag003 using "$rootDir_code/Regional/fips_fixes.dta", gen(fips_fix_merge) keep(1 3)
replace ag001_fips = ag001_fips_correct if fips_fix_merge==3 & ag001_fips_correct  ~= .
replace ag003_fips = ag003_fips_correct if fips_fix_merge==3 & ag003_fips_correct  ~= ""
drop ag001_fips_correct ag003_fips_correct fips_fix_merge


drop if obs_id == ""		//Five completely blank observations