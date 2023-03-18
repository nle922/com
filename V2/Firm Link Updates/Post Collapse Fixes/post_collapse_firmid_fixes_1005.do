//Post collapse fixes for industry 1005
args file_name_export
use "./Stata Files/Extracts/`file_name_export'", clear

//New firm
replace firm_id = "" if obs_id=="19331005000000004059"
replace firm_id = "" if obs_id=="19291005000000001454"
replace firm_id = "" if obs_id=="19351005000000005372"
replace firm_id = "" if obs_id=="19291005000000001311"
replace firm_id = "" if obs_id=="19291005000000001611"
replace firm_id = "" if obs_id=="19351005000000005460"
replace firm_id = "" if obs_id=="19331005000000004316"
replace firm_id = "" if obs_id=="19351005000000005325"
replace firm_id = "" if obs_id=="19291005000000002022"
replace firm_id = "" if obs_id=="19351005000000005482"
replace firm_id = "" if obs_id=="19291005000000001677"	
replace firm_id = "" if obs_id=="19311005000000002470"
replace firm_id = "" if obs_id=="19351005000000005494"
replace firm_id = "" if obs_id=="19311005000000002498"
replace firm_id = "" if obs_id=="19351005000000004678"
replace firm_id = "" if obs_id=="19351005000000005367"
replace firm_id = "" if obs_id=="19291005000000001624"		
replace firm_id = "" if obs_id=="19291005000000002352"			
replace firm_id = "" if obs_id=="19291005000000001669"	

//Fill in missing values 
foreach type in firm{
	do "./Cleaning Scripts/General/gen_id" "1005" "`type'"
}

//Abbot Bros
preserve
keep if obs_id == "19331005000000004214"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291005000000000372"

//Acme Stone Company
preserve
keep if obs_id == "19311005000000003015"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19331005000000004101"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000004962"

//Algonite 
preserve
keep if obs_id == "19351005000000005021"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003502"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001292"

//American Concrete and Steel Pipe
preserve
keep if obs_id == "19311005000000002525"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002451"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002461"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000003913"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000003879"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000003902"

//American Concrete Pipe
preserve
keep if obs_id == "19291005000000001533"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002503"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003783"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001596"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003722"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000000073"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000000152"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001684"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001651"

//Architectural Cast stone
preserve
keep if obs_id == "19291005000000001084"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005655"

//Art Stone
preserve
keep if obs_id == "19291005000000000954"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003305"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002592"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000002101"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005147"

//Arundel Books
preserve
keep if obs_id == "19331005000000004064"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351005000000004831"

//Atlas Cement
preserve
keep if obs_id == "19331005000000004096"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003028"

//Automatic Sealing Vault
preserve
keep if obs_id == "19291005000000002419"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005022"

//Avril
preserve
keep if obs_id == "19331005000000004340"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003436"

//ART CONCRETE WORKS	
preserve
keep if obs_id == "19311005000000002498"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005451"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000003900"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005481"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002462"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000003880"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000002343"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000002395"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000002339"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001647"

//BARCELONA SPANISH TILE CO. INC.	
preserve
keep if obs_id == "19311005000000002478"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001619"	

//BB Concrete
preserve
keep if obs_id == "19351005000000004643"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19331005000000004453"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003692"

//Babcock Concrete
preserve
keep if obs_id == "19291005000000001879"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002688"

//Balljoint
preserve
keep if obs_id == "19331005000000004476"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003743"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000004670"

//Bellinghman
preserve
keep if obs_id == "19351005000000004725"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003801"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000004510"

//Biltwell
preserve
keep if obs_id == "19351005000000005467"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002479"

//Birmingham Slag
preserve
keep if obs_id == "19291005000000001573"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002433"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002445"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000003871"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000003866"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001027"

//Brown and Grady
preserve
keep if obs_id == "19351005000000005109"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003184"

//CB Scott Duntile

preserve
keep if obs_id == "19291005000000001397"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003579"

//California Concrete Products
preserve
keep if obs_id == "19311005000000002551"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002546"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000003923"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002463"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005522"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001708"

//Cambridge Cement Stone Co.
preserve
keep if obs_id == "19331005000000004200"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351005000000004878"

//Cement Products
preserve
keep if obs_id == "19351005000000005436"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291005000000002429"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001113"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003493"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000000351"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005299"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000002001"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002850"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001582"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000003874"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005446"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001481"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003627"

//Central Builders Supply
preserve
keep if obs_id == "19351005000000005409"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003636"

//Certified Concrete
preserve
keep if obs_id == "19291005000000000896"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003020"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000004978"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000004761"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000004115"

//Chaqqua Duntile
preserve
keep if obs_id == "19311005000000003333"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19331005000000004288"

//Chicago Granite

preserve
keep if obs_id == "19311005000000002564"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19331005000000003979"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005660"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002643"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001954"

//Cinder Block
preserve
keep if obs_id == "19311005000000002774"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005694"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005721"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002733"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000004030"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000004014"

//Cinder Block of MO
preserve
keep if obs_id == "19331005000000004128"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001727"

//Cinder Concrete Units
preserve
keep if obs_id == "19311005000000002890"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19331005000000004188"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000004867"

preserve
keep if obs_id == "19351005000000005600"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005601"

//Clovis Concrete
preserve
keep if obs_id == "19331005000000003883"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001604"

//Con-lite Burial Vault
preserve
keep if obs_id == "19311005000000002707"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19331005000000004258"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000003991"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000000930"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000000950"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001865"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005145"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005266"


//CLOYD C. RAY	
preserve
keep if obs_id == "19311005000000002522"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001676"

//CONCRETE PRODUCTS COMPANY INC.	
preserve
keep if obs_id == "19331005000000004059"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "19351005000000004818"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000004632"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003683"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000000083"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001813"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000004706"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000000745"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001911"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002695"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001590"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000004797"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003189"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000000385"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000000289"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000002043"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000000251"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000004059"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000004818"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005722"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002775"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000004031"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005702"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002744"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005368"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003590"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000004407"

//CONCRETE PIPE CO.	
preserve
keep if obs_id == "19291005000000001311"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001818"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000004374"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005603"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003511"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003772"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000000140"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000004496"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000003967"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000000330"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005322"

//CHAUTAUQUA CINDER BLOCK INCORPORATED
preserve
keep if obs_id == "19331005000000004243"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005125"

//WATKINS COMPANY, LTD.	
preserve
keep if obs_id == "19311005000000002504"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19331005000000003903"

//WILL & HOUSTON	
preserve
keep if obs_id == "19291005000000002112"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002495"	

//NATIONAL CEMENT PIPE CO.	
preserve
keep if obs_id == "19351005000000005494"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19331005000000003905"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001663"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002510"

//PALM SPRING BUILDING SUPPLY CO.	
preserve
keep if obs_id == "19311005000000002514"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005497"	
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001666"

//POLLARD BROS., LTD.	
preserve
keep if obs_id == "19311005000000002470"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005457"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005458"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000003885"

//TRANSIT MIXED CONCRETE CO.
preserve
keep if obs_id == "19351005000000005482"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005563"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000004694"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000004690"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003445"

//READYMIX CONCRETE CO.	
preserve
keep if obs_id == "19351005000000005325"
local new_firmid = firm_id in 1
restore		
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003513"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005513"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001694"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001316"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002537"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000003918"

//MIXED CONCRETE CORPORATION	 
preserve
keep if obs_id == "19291005000000001768"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005261"

//NORTH DAKOTA CONCRETE PRODUCTS CO.
preserve
keep if obs_id == "19331005000000004316"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003401"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005229"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003402"

//ENSLEY ROBBINS
preserve
keep if obs_id == "19311005000000002524"
local new_firmid = firm_id in 1
restore		
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002524"

//FOWLER AND MYERS	
preserve
keep if obs_id == "19331005000000003901"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005483"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002502"

//GOLDEN GATE ATLAS MATERIALS COMPANY	
preserve
keep if obs_id == "19291005000000001691"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005511"

//HILFIKERS CONCRETE TILE WKS	
preserve
keep if obs_id == "19351005000000005460"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001609"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002473"		

//IMPERIAL VALLEY CONCRETE CO.	
preserve
keep if obs_id == "19291005000000001611"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19331005000000004543"
replace firm_id = "`new_firmid'" if obs_id == "19291005000000001610"
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005462"

//IOWA CONCRETE PROD
preserve
keep if obs_id == "19331005000000004028"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311005000000002768"

//FERGUS CONCRETE PIPE CO	
preserve
keep if obs_id == "19311005000000003043"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291005000000000670"
replace firm_id = "`new_firmid'" if obs_id == "19331005000000004111"

//LANCASTER CONCRETE TILE CO.	
preserve
keep if obs_id == "19291005000000001454"
local new_firmid = firm_id in 1
restore	
replace firm_id = "`new_firmid'" if obs_id == "19351005000000005384"
replace firm_id = "`new_firmid'" if obs_id == "19311005000000003608"

save "./Stata Files/Extracts/`file_name_export'", replace
