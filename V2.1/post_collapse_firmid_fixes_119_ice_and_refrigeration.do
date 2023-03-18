//Incorporate outside information on firm IDs from Ice and Refrigeration trade publication

//Alabama United Ice Co.
preserve
keep if obs_id == "1929119000000001497"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000000134"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//American Ice Co.
preserve
keep if obs_id == "1929119000000000463"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000000463"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//American Utilities Co.
preserve
keep if obs_id == "1929119000000001412"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001412"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Arizona Edison Co.
preserve
keep if obs_id == "1929119000000000200"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000000200"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Arkansas General Utilities Co.
preserve
keep if obs_id == "1929119000000001412"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000000161"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Arkansas Missouri Power Co.
preserve
keep if obs_id == "1929119000000001711"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001711"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Boston Ice Co.
preserve
keep if obs_id == "1929119000000000463"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001543"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Central and Southwest Utilities Co.
preserve
keep if obs_id == "1929119000000003327"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000002975"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Central California Ice Co.
preserve
keep if obs_id == "1929119000000000356"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000000329"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Central Illinois Public Service Co.
preserve
keep if obs_id == "1929119000000003327"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000000913"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Central Indiana Power Co.
preserve
keep if obs_id == "1929119000000001137"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001137"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Central Power and Light Co.
preserve
keep if obs_id == "1929119000000003327"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000002944"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//City Ice and Fuel Co.
preserve
keep if obs_id == "1929119000000002262"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000002262"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//City Ice Company of Kansas City
preserve
keep if obs_id == "1929119000000003327"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001203"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Community Power and Light Co.
preserve
keep if obs_id == "1929119000000003095"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000003095"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Federal Ice Refrigerating Co.
preserve
keep if obs_id == "1929119000000002262"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001656"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Florida West Coast Ice Co.
preserve
keep if obs_id == "1929119000000000521"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000000521"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Fresno Consumers Ice Co.
preserve
keep if obs_id == "1929119000000000356"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000000216"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//General Power and Light Co.
preserve
keep if obs_id == "1929119000000000200"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000000200"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//General Public Utilities Co.
preserve
keep if obs_id == "1929119000000000582"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000000582"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Georgia Power and Light Co.
preserve
keep if obs_id == "1929119000000000521"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000000781"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Gulf Public Service Co.
preserve
keep if obs_id == "1929119000000000582"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001522"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Hygenic Ice Co.
preserve
keep if obs_id == "1929119000000002262"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001701"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Illinois Power and Light Corp.
preserve
keep if obs_id == "1929119000000001717"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001012"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Inland Power and Light Corp.
preserve
keep if obs_id == "1929119000000001711"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001711"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Kansas Power & Light Co.
preserve
keep if obs_id == "1929119000000001717"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001245"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Kansas Power Co.
preserve
keep if obs_id == "1929119000000001711"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001235"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Kansas Utilities Co.
preserve
keep if obs_id == "1929119000000003095"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001274"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Kentucky Utilities Co,
preserve
keep if obs_id == "1929119000000003327"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001381"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Knickerbocker Ice Co.
preserve
keep if obs_id == "1929119000000000463"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000002054"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Louisiana Ice and Coal Co., Inc.
preserve
keep if obs_id == "1929119000000001497"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001497"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Louisiana Ice and Utilities, Inc.
preserve
keep if obs_id == "1929119000000001517"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001517"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Louisiana Public Utilities Co., Inc.
preserve
keep if obs_id == "1929119000000001412"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001412"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Middle West Utilities Co.
preserve
keep if obs_id == "1929119000000003327"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000003327"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//National Ice and Cold Storage Co.
preserve
keep if obs_id == "1929119000000000326"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000000326"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//National Public Service Corp.
preserve
keep if obs_id == "1929119000000000521"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000000521"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//North American Light & Power Co.
preserve
keep if obs_id == "1929119000000001717"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001717"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Northern Indiana Power Co.
preserve
keep if obs_id == "1929119000000001137"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001137"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Pacific Ice Co.
preserve
keep if obs_id == "1929119000000000356"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000000243"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Peoples Ice Co.
preserve
keep if obs_id == "1929119000000001517"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000003060"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Public Service Co. of Oklahoma
preserve
keep if obs_id == "1929119000000003327"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000002319"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Southern United Ice Co.
preserve
keep if obs_id == "1929119000000002936"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000002936"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Southwest Utility Ice Co.
preserve
keep if obs_id == "1929119000000002411"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000002411"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Southwestern Gas & Electric Co.
preserve
keep if obs_id == "1929119000000003327"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000002975"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Southwestern Light and Power Co.
preserve
keep if obs_id == "1929119000000003327"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000002365"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Texas General Utilities
preserve
keep if obs_id == "1929119000000001412"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000003196"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Texas Utilities Co.
preserve
keep if obs_id == "1929119000000003095"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000003310"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Union Ice Co.
preserve
keep if obs_id == "1929119000000000356"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000000356"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//United Public Service Co.
preserve
keep if obs_id == "1929119000000002936"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000002936"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//United Public Utilities Co.
preserve
keep if obs_id == "1929119000000001497"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001497"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Utilities Management Co.
preserve
keep if obs_id == "1929119000000001517"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001517"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Utilities Power and Light Corp.
preserve
keep if obs_id == "1929119000000001260"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000001260"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//Virginia Public Service Co.
preserve
keep if obs_id == "1929119000000000521"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000003468"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"

//West Texas Utilities Co.
preserve
keep if obs_id == "1929119000000003125"
local firm_id_parent = firm_id in 1
restore	
preserve
keep if obs_id == "1929119000000003125"
local firm_id_subsidiary = firm_id in 1
restore	
replace firm_id = "`firm_id_parent'" if firm_id == "`firm_id_subsidiary'"
