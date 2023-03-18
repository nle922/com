//Post collapse fixes for industry 119
args file_name_export
use "./Stata Files/Extracts/`file_name_export'", clear

//Atlantic Ice Mfg
preserve
keep if obs_id == "1931119000000001955"
local new_firmid = firm_id in 1
restore
replace firm_id = "`firm_id'" if obs_id=="1931119000000002036"
replace firm_id = "`firm_id'" if obs_id=="1931119000000001990"
replace firm_id = "`firm_id'" if obs_id=="1929119000000001585"
replace firm_id = "`firm_id'" if obs_id=="1935119000000001861"
replace firm_id = "`firm_id'" if obs_id=="1933119000000002413"
replace firm_id = "`firm_id'" if obs_id=="1931119000000002625"
replace firm_id = "`firm_id'" if obs_id=="1929119000000001584"
replace firm_id = "`firm_id'" if obs_id=="1931119000000001973"
replace firm_id = "`firm_id'" if obs_id=="1929119000000002611"
replace firm_id = "`firm_id'" if obs_id=="1935119000000002591"
replace firm_id = "`firm_id'" if obs_id=="1931119000000001594"
replace firm_id = "`firm_id'" if obs_id=="1933119000000002373"
replace firm_id = "`firm_id'" if obs_id=="1929119000000002691"
replace firm_id = "`firm_id'" if obs_id=="1931119000000002550"
replace firm_id = "`firm_id'" if obs_id=="1931119000000002672"
replace firm_id = "`firm_id'" if obs_id=="1935119000000002541"
replace firm_id = "`firm_id'" if obs_id=="1929119000000002501"
replace firm_id = "`firm_id'" if obs_id=="1931119000000002551"
replace firm_id = "`firm_id'" if obs_id=="1931119000000001595"
replace firm_id = "`firm_id'" if obs_id=="1929119000000002692"
replace firm_id = "`firm_id'" if obs_id=="1933119000000002369"
replace firm_id = "`firm_id'" if obs_id=="1929119000000002693"
replace firm_id = "`firm_id'" if obs_id=="1929119000000002694"
replace firm_id = "`firm_id'" if obs_id=="1933119000000001792"
replace firm_id = "`firm_id'" if obs_id=="1933119000000002359"
replace firm_id = "`firm_id'" if obs_id=="1935119000000002545"
replace firm_id = "`firm_id'" if obs_id=="1931119000000002553"
replace firm_id = "`firm_id'" if obs_id=="1935119000000001900"
replace firm_id = "`firm_id'" if obs_id=="1933119000000000472"
replace firm_id = "`firm_id'" if obs_id=="1931119000000001974"
replace firm_id = "`firm_id'" if obs_id=="1931119000000002774"
replace firm_id = "`firm_id'" if obs_id=="1929119000000002686"
replace firm_id = "`firm_id'" if obs_id=="1929119000000002688"
replace firm_id = "`firm_id'" if obs_id=="1935119000000001902"
replace firm_id = "`firm_id'" if obs_id=="1929119000000002671"
replace firm_id = "`firm_id'" if obs_id=="1935119000000002544"
replace firm_id = "`firm_id'" if obs_id=="1935119000000002526"
replace firm_id = "`firm_id'" if obs_id=="1933119000000002378"
replace firm_id = "`firm_id'" if obs_id=="1933119000000002374"
replace firm_id = "`firm_id'" if obs_id=="1931119000000000549"
replace firm_id = "`firm_id'" if obs_id=="1933119000000001404"
replace firm_id = "`firm_id'" if obs_id=="1931119000000002549"
replace firm_id = "`firm_id'" if obs_id=="1935119000000002546"
replace firm_id = "`firm_id'" if obs_id=="1931119000000001956"
replace firm_id = "`firm_id'" if obs_id=="1933119000000001807"
replace firm_id = "`firm_id'" if obs_id=="1935119000000001882"
replace firm_id = "`firm_id'" if obs_id=="1933119000000001840"
replace firm_id = "`firm_id'" if obs_id=="1929119000000002685"
replace firm_id = "`firm_id'" if obs_id=="1931119000000000544"
replace firm_id = "`firm_id'" if obs_id=="1935119000000001863"
replace firm_id = "`firm_id'" if obs_id=="1933119000000002368"
replace firm_id = "`firm_id'" if obs_id=="1935119000000001939"
replace firm_id = "`firm_id'" if obs_id=="1931119000000002554"
replace firm_id = "`firm_id'" if obs_id=="1935119000000001868"
replace firm_id = "`firm_id'" if obs_id=="1931119000000001951"
replace firm_id = "`firm_id'" if obs_id=="1935119000000002540"
replace firm_id = "`firm_id'" if obs_id=="1933119000000001778"
replace firm_id = "`firm_id'" if obs_id=="1931119000000002556"
replace firm_id = "`firm_id'" if obs_id=="1935119000000002680"
replace firm_id = "`firm_id'" if obs_id=="1931119000000000546"
replace firm_id = "`firm_id'" if obs_id=="1933119000000000473"
replace firm_id = "`firm_id'" if obs_id=="1933119000000002412"
replace firm_id = "`firm_id'" if obs_id=="1931119000000002626"
replace firm_id = "`firm_id'" if obs_id=="1933119000000002375"
replace firm_id = "`firm_id'" if obs_id=="1931119000000002555"
replace firm_id = "`firm_id'" if obs_id=="1931119000000001992"
replace firm_id = "`firm_id'" if obs_id=="1929119000000002500"
replace firm_id = "`firm_id'" if obs_id=="1935119000000002597"

//Kentucky Utilities
preserve
keep if obs_id == "1929119000000001320"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "11929119000000001364"
replace firm_id = "`new_firmid'" if obs_id == "11931119000000001322"
replace firm_id = "`new_firmid'" if obs_id == "11929119000000003448"
replace firm_id = "`new_firmid'" if obs_id == "11929119000000001387"
replace firm_id = "`new_firmid'" if obs_id == "11931119000000001324"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001187"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001312"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001385"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001160"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001179"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001226"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001159"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001261"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001378"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001396"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001195"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001399"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001183"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001155"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001351"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001388"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001349"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001342"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001321"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001254"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001242"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001391"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001378"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001136"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001191"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001207"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001148"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001323"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001374"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001248"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001196"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001251"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001218"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001252"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001186"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001258"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001339"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001389"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001333"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001381"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001224"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001377"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001188"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001137"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001193"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001328"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001390"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001332"

//Consumers Ice
preserve
keep if obs_id == "1931119000000000026"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000932"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000814"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000807"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000940"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000791"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000791"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000933"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001089"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000788"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000933"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000792"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000780"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000936"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000943"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001032"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000947"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000922"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000790"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000801"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000944"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000782"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000890"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000904"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000942"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000916"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000802"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000905"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000784"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000937"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000892"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000946"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000938"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000804"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000785"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000766"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000810"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000777"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000812"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000803"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000781"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000787"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000806"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000932"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000945"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000818"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000930"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000779"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000786"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001033"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000924"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000811"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000809"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000783"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000935"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000931"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000813"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001000"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000927"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000939"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000999"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000815"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000858"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000948"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000934"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000805"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000920"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000925"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000926"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000928"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000929"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000934"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001090"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000921"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000923"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000963"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001184"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002390"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003203"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002565"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003101"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002719"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002905"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002579"

//Southwest Utility
preserve
keep if obs_id == "1929119000000002351"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002410"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001264"

//Southwest Utility Dairy Products
preserve
keep if obs_id == "1929119000000003266"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002407"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002423"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001266"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002456"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002488"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001239"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002478"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002466"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001240"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002414"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002411"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002440"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001315"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002433"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002426"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002476"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002429"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002473"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001245"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001294"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002392"

//Southeastern Ice Utilities
preserve
keep if obs_id == "1929119000000001755"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002780"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003493"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001855"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002805"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003481"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001758"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002741"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001810"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001796"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001812"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001856"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001802"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002864"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001843"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001847"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001795"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002854"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001880"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001843"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000749"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000049"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000107"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000110"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000109"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000108"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000053"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000052"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000031"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000030"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000050"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000038"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000541"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000552"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000656"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000642"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000552"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000568"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000658"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000553"

//Crystal Ice and Cold Storage
preserve
keep if obs_id == "1931119000000000251"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "11935119000000000012"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000613"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001971"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002477"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002031"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001895"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002098"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001314"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002712"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002960"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002358"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003448"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002418"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000517"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001702"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001709"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003069"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000019"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001089"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003199"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001790"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002284"

//Kansas Power and Light // Kansas Power Co
preserve
keep if obs_id == "1929119000000001245"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001235"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001233"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001197"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001304"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001279"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001131"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001306"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001125"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001165"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001094"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001099"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001262"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001211"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001209"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001255"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001282"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001290"

//Western Ice
preserve
keep if obs_id == "1929119000000002394"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002398"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002389"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002323"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000958"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000985"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002353"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000835"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000830"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002333"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002396"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002332"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000836"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000861"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002362"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000720"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001561"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001555"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001095"

//CAROLINA GEORGIA SERVICE
preserve
keep if obs_id == "1929119000000002769"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002829"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002795"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002847"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002824"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000800"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000806"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000767"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002836"

//Excelsior Ice / Creamiers
preserve
keep if obs_id == "1931119000000000411"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000631"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001593"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001719"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001509"

//Southwest Ice / Southwest Utility Ice
preserve
keep if obs_id == "1929119000000002424"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003211"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001208"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001191"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003217"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001301"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001100"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000631"

//Polar Ice
preserve
keep if obs_id == "1933119000000003183"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000379"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003423"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001888"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001866"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001971"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002060"

//Granite City Ice and Fuel
preserve
keep if obs_id == "1931119000000001026"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001552"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001424"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001540"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001358"

//City Ice Co of KC
preserve
keep if obs_id == "1931119000000001741"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001554"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001743"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001203"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001554"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001617"

//Crystal Ice
preserve
keep if obs_id == "1935119000000001880"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002266"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000457"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002115"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003205"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002826"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003199"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002084"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002971"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002771"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002735"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002667"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001535"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002369"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000565"

//HYGEIA ICE AND STORAGE CO
preserve
keep if obs_id == "1929119000000003138"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002476"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002599"

//CATARACT ICE
preserve
keep if obs_id == "1931119000000002146"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002064"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002062"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001920"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002146"

//Crystal Ice and Cold Storage
preserve
keep if obs_id == "1929119000000002477"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002252"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000074"

//THOMASTON ICE CO
replace firm_id = "" if obs_id == "1931119000000000818"

//Middle West
replace firm_id = "" if obs_id == "1935119000000001192"

//Borin Brother's
replace firm_id = "" if obs_id == "1931119000000001652"

//Railway Ice
replace firm_id = "" if obs_id == "1933119000000001502"

//American Service
replace firm_id = "" if obs_id == "1929119000000003453"

//Atlantic Ice and Coal
replace firm_id = "" if obs_id == "1933119000000000664"

//PITTMANS AND DEAN	
replace firm_id = "" if obs_id == "1931119000000001674"

//DETROIT CITY ICE AND FUEL / DETROIT CITY SERVICE
replace firm_id = "" if obs_id == "1933119000000001473"

//ARKANSAS MISSOURI POWER
replace firm_id = "" if obs_id == "1933119000000000138"

//Long Island Ice
replace firm_id = "" if obs_id == "1933119000000001946"

//Missouri Gas and Electric
replace firm_id = "" if obs_id == "1935119000000001635"

//W S BEASLEY AND A M COCHRAN
replace firm_id = "" if obs_id == "1929119000000002902"

//Pullman Ice
replace firm_id = "" if obs_id == "1929119000000000972"

//QUATTLEBAUM ICE & FUEL CO.
replace firm_id = "" if obs_id == "1933119000000002579"

//BIEDERWOLF COAL & ICE CO.
replace firm_id = "" if obs_id == "1929119000000001093"

//Elliot Ice and Coal Co
replace firm_id = "" if obs_id == "1933119000000003038"

//Stroh Products
replace firm_id = "" if obs_id == "1929119000000001687"

//BARROW COUNTY ICE & COAL CO
replace firm_id = "" if obs_id == "1935119000000000612"

//Pure Ice and Coal
replace firm_id = "" if obs_id == "1931119000000001379"

//Lancaster Ice Mfg
replace firm_id = "" if obs_id == "1935119000000002594"

//City Ice Co
replace firm_id = "" if obs_id == "1935119000000001817"

replace firm_id = "" if obs_id == "1929119000000002052"

//Fill in missing values 
foreach type in firm{
	do "./Cleaning Scripts/General/gen_id" "119" "`type'"
}

//City Ice Co
preserve
keep if obs_id == "1935119000000001817"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001738"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001897"

//Lancastr Ice Mfg
preserve
keep if obs_id == "1935119000000002594"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002411"

//Pure Ice and Coal
preserve
keep if obs_id == "1931119000000001379"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001365"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001209"

//BARROW COUNTY ICE & COAL CO
preserve
keep if obs_id == "1935119000000000612"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000701"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000609"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000716"

//Stroh Products
preserve
keep if obs_id == "1929119000000001687"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001677"

//Elliot Ice and Coal Co
preserve
keep if obs_id == "1933119000000003038"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003455"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003317"

//BIEDERWOLF COAL & ICE CO.
preserve
keep if obs_id == "1929119000000001093"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001202"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001041"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001013"

//Midwest Ice and Cold Storage
preserve
keep if obs_id == "1933119000000001096"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001297"

//THOMASTON ICE CO
preserve
keep if obs_id == "1931119000000000818"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000685"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000700"

//QUATTLEBAUM ICE & FUEL CO.
preserve
keep if obs_id == "1933119000000002579"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002816"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002748"

//Pullman Ice
preserve
keep if obs_id == "1929119000000000972"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000825"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000948"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000816"

//Middle West
preserve
keep if obs_id == "1935119000000001192"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001624"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003327"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000155"

//W S BEASLEY AND A M COCHRAN
preserve
keep if obs_id == "1929119000000002902"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002841"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002825"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002857"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002809"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002822"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002612"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002659"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002600"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002922"

//Missouri Gas and Electric
preserve
keep if obs_id == "1935119000000001635"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001540"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001758"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001710"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001568"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001719"

//Long Island Ice
preserve
keep if obs_id == "1933119000000001946"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001942"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001944"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002186"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002090"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002190"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002188"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001940"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002184"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002089"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002085"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002187"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002092"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001943"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002087"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002133"

//ARKANSAS MISSOURI POWER
preserve
keep if obs_id == "1933119000000000138"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000128"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001598"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000180"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001704"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000148"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001654"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000170"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001779"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000157"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001536"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000181"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000141"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001724"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001546"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001577"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000183"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001582"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000137"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000136"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000155"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000158"

//DETROIT CITY ICE AND FUEL / DETROIT CITY SERVICE
preserve
keep if obs_id == "1933119000000001473"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001473"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001470"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001477"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001469"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001466"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001452"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001468"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001547"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001471"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001531"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001550"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001532"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001549"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001559"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001552"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001548"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001472"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001467"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001551"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001453"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001465"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001639"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001640"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001671"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001665"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001688"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001666"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001672"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001669"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001673"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001668"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001670"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001664"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001650"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001666"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001679"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001651"

//Borin Brother's
preserve
keep if obs_id == "1931119000000001652"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001533"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001664"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001454"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001462"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001545"

//People's Ice
preserve
keep if obs_id == "1933119000000002173"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001272"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003365"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001131"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001236"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001127"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003060"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001213"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001217"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001222"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001122"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003187"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001116"

//Southland
preserve
keep if obs_id == "1929119000000002954"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003149"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003227"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002984"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003469"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003484"

//PITTMANS AND DEAN	
preserve
keep if obs_id == "1931119000000001674"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001560"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001672"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001557"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001670"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001680"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001675"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001671"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001558"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001554"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001676"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001556"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001555"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001673"

//American service
preserve
keep if obs_id == "1929119000000003453"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001737"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001306"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001864"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000097"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001114"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003020"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002843"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001835"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003191"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002418"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001225"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003452"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003320"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001248"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001784"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002621"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001824"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001486"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001203"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002610"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000071"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000728"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001569"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000755"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000698"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000055"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001798"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001656"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001227"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000752"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001201"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000155"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003341"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002995"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000121"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001118"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001700"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003224"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003240"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001316"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001659"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003431"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003016"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001252"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001200"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000684"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001218"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003142"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002901"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001187"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000805"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000049"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001199"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001418"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001867"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002875"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002626"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002994"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001053"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001822"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001751"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001694"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001514"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003024"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003202"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002941"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003201"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001092"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002807"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001628"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002930"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000791"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000010"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001349"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002815"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002854"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001740"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000734"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001831"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000128"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002964"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000699"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000038"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001292"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002425"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003200"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001205"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003335"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001261"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000121"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002825"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001829"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002843"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001635"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002703"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001135"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000684"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003581"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001281"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003006"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000869"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001230"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001225"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000825"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002959"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001742"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003190"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001437"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000672"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000683"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003102"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003220"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001291"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000690"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000700"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000702"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002967"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001133"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003358"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000725"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000089"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003429"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000729"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001826"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002818"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000644"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001732"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003311"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003129"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000659"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001687"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000817"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001786"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001098"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000650"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003094"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002912"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001696"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002811"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002602"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001198"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000726"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001229"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001292"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001223"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002883"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001293"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001730"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002834"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001704"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001864"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001610"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003582"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000665"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001817"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003314"

//Atlantic Ice and Coal
preserve
keep if obs_id == "1933119000000000664"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000736"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000740"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000792"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000747"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000685"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002934"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003048"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002738"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000488"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001788"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000618"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003340"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000547"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000665"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002836"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000586"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000750"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000661"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000811"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000658"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000751"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000656"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000666"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000792"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000753"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000777"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000650"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000793"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000686"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000677"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000733"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000707"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002844"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000008"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000789"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002935"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002847"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000537"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000660"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000760"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003352"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002872"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001710"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001746"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000663"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000685"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001697"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002574"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000730"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000523"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000676"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003328"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002799"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000634"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000692"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000778"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000653"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000518"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000626"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000754"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001661"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000694"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003330"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000665"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000798"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001687"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000706"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000595"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000735"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002604"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002625"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000095"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002546"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002958"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003079"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000700"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000701"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000738"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002603"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000745"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001682"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001783"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003050"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000715"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000749"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000634"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000748"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001668"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000611"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000807"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001669"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000726"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000054"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000651"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000544"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000635"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000602"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002619"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000687"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000674"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001700"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002566"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003073"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000756"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000702"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000658"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000654"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001722"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000645"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001664"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003049"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003334"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003342"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000742"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003070"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000682"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000698"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000499"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001723"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000538"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000645"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000616"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001757"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002788"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002816"

//Railway Ice
preserve
keep if obs_id == "1933119000000001502"
local new_firmid = firm_id in 1
restore		
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001893"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001696"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000960"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002510"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002080"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001190"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002271"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002881"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002200"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002260"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002272"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001181"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001189"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002882"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002450"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000831"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002654"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001576"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001087"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000862"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001098"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001855"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002449"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001726"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001299"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001206"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001285"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002284"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002909"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001207"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002331"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002348"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002052"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000986"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002934"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002509"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002409"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001300"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001189"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002933"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002330"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002910"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000001902"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001862"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002062"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001099"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002653"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002292"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001973"

save "./Stata Files/Extracts/`file_name_export'", replace

//Load in other ice fixes
do "./SES1459263 Team Folder/V2/Firm Link Updates/Post Collapse Fixes/merge_fixes_final" "`file_name_export'" "119"

//Final fixes
do "./SES1459263 Team Folder/V2/Firm Link Updates/Post Collapse Fixes/merge_fixes_final" "`file_name_export'" "119" "ind119_final_fixes"

//Fill in missing values
foreach type in establishment{
	do "./Cleaning Scripts/General/gen_id" "119" "`type'"
}

save "./Stata Files/Extracts/`file_name_export'", replace
