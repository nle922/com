//Post collapse fixes for industry 118
args file_name_export
use "./Stata Files/Extracts/`file_name_export'", clear

preserve
keep if obs_id == "1933118000000001194"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935118000000002255"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000002590"

preserve
keep if obs_id == "1931118000000002653"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935118000000002324"
replace firm_id = "" if obs_id == "1933118000000001248"
replace establishment_id = "" if obs_id == "1933118000000001248"

preserve
keep if obs_id == "1929118000000000431"
local new_firmid = firm_id in 1
local new_estabid = establishment_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000403"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000385"
replace establishment_id = "`new_estabid'" if obs_id == "1935118000000000385"

preserve
keep if obs_id == "1931118000000000136"
local new_firmid = firm_id in 1
local new_estabid = establishment_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000747"
replace establishment_id = "`new_estabid'" if obs_id == "1935118000000000747"
replace firm_id = "" if obs_id == "1933118000000000504"

//Borden
preserve
keep if obs_id == "1929118000000000669"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000146"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000002305"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000001851"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000002400"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000061"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000140"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000002379"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000003093"

//Borden Produce Co (New firm ID)
replace firm_id = "" if obs_id == "1935118000000002134"

//Foremost Dairies
preserve
keep if obs_id == "1931118000000000376"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000232"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000359"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000441"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000436"

//Golden State Co
preserve
keep if obs_id == "1935118000000000085"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000093"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000062"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000090"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000136"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000236"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000249"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000050"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000073"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000130"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000206"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000074"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000214"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000139"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000113"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000227"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000147"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000233"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000231"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000195"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000149"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000183"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000117"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000057"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000081"

//Hutchinson Ice Cream Co.
preserve
keep if obs_id == "1929118000000000814"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000662"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000684"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000730"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000455"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000648"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000656"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000693"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000675"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000660"

//Midwestern Dairy
preserve
keep if obs_id == "1931118000000002589"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000445"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000002928"
replace establishment_id = "" if obs_id == "1929118000000002928"

//POINSETTIA DAIRY PROD
preserve
keep if obs_id == "1933118000000000242"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000367"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000237"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000000420"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000000428"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000000435"

//Southern Dairies
preserve
keep if obs_id == "1931118000000000014"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000394"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000002767"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000372"

//Standard Creameries
preserve
keep if obs_id == "1929118000000000209"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929118000000000110"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000091"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000000099"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000073"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000000236"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000217"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000226"

//Arctic Dairy Products
preserve
keep if obs_id == "1933118000000000744"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000853"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000001282"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000001312"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000001305"

//BEATRICE CREAMERY COMPANY
preserve
keep if obs_id == "1931118000000000643"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929118000000000901"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000462"

//Beatrice Meadow Gold
replace firm_id = "" if obs_id == ""

//Telling Belle Vernon
preserve
keep if obs_id == "1929118000000002312"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001644"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000002017"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000002707"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000002351"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001706"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001728"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000001946"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000002044"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001658"

//Walgreen
preserve
keep if obs_id == "1929118000000001548"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000269"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000558"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000001309"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000001038"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001080"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000772"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000381"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000002407"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001660"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000423"

//American Ice Cream Col
preserve
keep if obs_id == "1929118000000002929"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "193311800000000081B"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000001529"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000628"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000000706"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000001141"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000001322"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000595"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000720"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000000478"

//Candyland
preserve
keep if obs_id == "1931118000000002422"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929118000000001794"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000001803"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000002755"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000002405"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000002299"
replace firm_id = "`new_firmid'" if obs_id == "193311800000000216B"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000001614"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000002516"
replace firm_id = "`new_firmid'" if obs_id == "193311800000000341B"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001447"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000001365"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000002339"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001893"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001349"
replace firm_id = "`new_firmid'" if obs_id == "193311800000000332B"
replace firm_id = "`new_firmid'" if obs_id == "193311800000000214B"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000001184"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000002325"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000002194"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000001137"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000002577"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000002082"

//Colonial Ice Cream
preserve
keep if obs_id == "1933118000000000803"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929118000000001272"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000001090"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000329"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001090"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000002529"
replace firm_id = "`new_firmid'" if obs_id == "193311800000000325B"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000002314"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000958"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000699"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000002253"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000347"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000001221"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000002360"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000000374"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001440"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000001105"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000002693"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000001894"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000001706"

//Good Humor Ice Cream
preserve
keep if obs_id == "1931118000000002100"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000140"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000134"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000001537"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000002131"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000223"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001774"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000346"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000001029"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000088"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000000147"

//Graham Ice Cream
preserve
keep if obs_id == "1929118000000000881"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931118000000001400"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000901"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000001586"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000001570"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001224"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001213"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000001384"

//Grisham
preserve
keep if obs_id == "1935118000000002180"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929118000000000058"

//Hey Brothers
preserve
keep if obs_id == "1929118000000000517"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929118000000000561"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000568"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000302"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000352"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000511"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000000626"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000318"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000524"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000479"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000485"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000458"

//Hutchinson Ice
preserve
keep if obs_id == "1929118000000000878"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000675"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000660"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000656"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000693"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000648"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000684"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000455"

//Imperial Ice Cream
preserve
keep if obs_id == "1931118000000001593"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000819"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000172"

//McCleran Ice Cream
preserve
keep if obs_id == "1929118000000001465"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931118000000001288"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000001264"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000836"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000001440"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001112"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000001457"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000001439"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001134"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000001476"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000001275"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000001471"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000841"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001124"

//Lyndonville Creamery Association
preserve
keep if obs_id == "1931118000000001041"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000977"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000002949"

//Poinsetta
preserve
keep if obs_id == "1935118000000000383"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000249"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000375"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000384"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000374"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000237"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000367"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000242"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000252"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000241"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000000413"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000383"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000338"

//Russell Creamery
preserve
keep if obs_id == "1935118000000002376"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931118000000001236"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001064"

//Swift & Co.
preserve
keep if obs_id == "1931118000000000898"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935118000000002105"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000983"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000773"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000654"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000002088"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000001140"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000417"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000885"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001649"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000677"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000469"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000001128"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001111"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000685"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000001950"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000517"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000491"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000815"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000002441"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000396"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000442"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000748"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000742"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000557"

replace establishment_id = "" if obs_id=="1935118000000000747"

//Fill in missing values
foreach type in firm establishment{
	do "./Cleaning Scripts/General/gen_id" "118" "`type'"
}

//Beatrice Meadow Gold
preserve
keep if obs_id == "1935118000000000474"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000502"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000487"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000467"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000475"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000443"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000517"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000525"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000570"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000512"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000563"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000498"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000348"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000463"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000464"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000309"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000292"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000468"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000539"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000344"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000332"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000535"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000557"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000499"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000353"

//Borden Produce Co
preserve
keep if obs_id == "1935118000000002134"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931118000000002519"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000002531"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000002544"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000002202"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000002159"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000001169"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000823"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000001402"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000001163"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000002192"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001226"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000002175"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000002468"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000002540"

preserve
keep if obs_id == "1933118000000000504"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000897"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000000976"

//Bender
preserve
keep if obs_id == "1935118000000000634"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000438"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000720"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000000696"

//Leader
preserve
keep if obs_id == "1935118000000000544"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1929118000000000651"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000371"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000594"

//Oleander
preserve
keep if obs_id == "1929118000000000440"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000254"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000389"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000408"

//Paradise
preserve
keep if obs_id == "1933118000000000375"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000550"
 
save "./Stata Files/Extracts/`file_name_export'", replace

//From ind118_fixes file
qui do "./SES1459263 Team Folder/V2/Firm Link Updates/Post Collapse Fixes/merge_fixes_final" "`file_name_export'" "118"

//Final fixes
qui do "./SES1459263 Team Folder/V2/Firm Link Updates/Post Collapse Fixes/merge_fixes_final" "`file_name_export'" "118" "ind118_final_fixes"

save "./Stata Files/Extracts/`file_name_export'", replace
