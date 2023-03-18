//Code to fix bad establishment matches in indnum==119
drop if obs_id == "1931119000000002799"

preserve
keep if obs_id == "1935119000000000147"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000000168"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000168"

replace establishment_id = "" if obs_id == "1929119000000003378"
replace firm_id = "" if obs_id == "1929119000000003378"

preserve
keep if obs_id == "1935119000000002808"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002878"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002878"

replace establishment_id = "" if obs_id == "19331008000000000178"

preserve
keep if obs_id == "1929119000000002237"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002249"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002249"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000002217"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002217"

replace establishment_id = "" if obs_id == "1929119000000003511"
replace firm_id = "" if obs_id == "1929119000000003511"

preserve
keep if obs_id == "1935119000000002249"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000002072"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002072"

preserve
keep if obs_id == "1935119000000001835"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001923"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001923"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000001730"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001730"

preserve
keep if obs_id == "1933119000000003217"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003610"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003610"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003450"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003450"

preserve
keep if obs_id == "1933119000000001826"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002013"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002013"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000001922"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001922"

preserve
keep if obs_id == "1935119000000003423"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003423"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003423"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000003183"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003183"

preserve
keep if obs_id == "1935119000000003293"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003426"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003426"

replace establishment_id = "" if obs_id == "1935119000000002292"
replace firm_id = "" if obs_id == "1935119000000002292"

preserve
keep if obs_id == "1933119000000001792"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001973"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001973"

preserve
keep if obs_id == "1933119000000001820"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002006"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002006"

replace establishment_id = "" if obs_id == "1929119000000003501"
replace firm_id = "" if obs_id == "1929119000000003501"

replace establishment_id = "" if obs_id == "1929119000000003445"
replace firm_id = "" if obs_id == "1929119000000003445"

replace establishment_id = "" if obs_id == "1929119000000003384"
replace firm_id = "" if obs_id == "1929119000000003384"

preserve
keep if obs_id == "1935119000000003279"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003405"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003405"

replace establishment_id = "" if obs_id == "1929119000000003553"
replace firm_id = "" if obs_id == "1929119000000003553"

preserve
keep if obs_id == "1935119000000003306"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003441"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003441"

preserve
keep if obs_id == "1933119000000003161"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003544"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003544"

preserve
keep if obs_id == "1933119000000001710"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001881"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001881"

replace establishment_id = "" if obs_id == "1931119000000001887"
replace firm_id = "" if obs_id == "1931119000000001887"

preserve
keep if obs_id == "1933119000000003103"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003401"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003401"

preserve
keep if obs_id == "1931119000000002222"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000002201"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002201"

replace establishment_id = "" if obs_id == "1931119000000001959"
replace firm_id = "" if obs_id == "1931119000000001959"

preserve
keep if obs_id == "1933119000000001777"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001954"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001954"

preserve
keep if obs_id == "1935119000000002259"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000002283"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002283"

replace establishment_id = "" if obs_id == "1929119000000003606"
replace firm_id = "" if obs_id == "1929119000000003606"

preserve
keep if obs_id == "1933119000000003061"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003485"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003485"

replace establishment_id = "" if obs_id == "1929119000000003524"
replace firm_id = "" if obs_id == "1929119000000003524"

replace establishment_id = "" if obs_id == "1929119000000003530"
replace firm_id = "" if obs_id == "1929119000000003530"

replace establishment_id = "" if obs_id == "1929119000000003471"
replace firm_id = "" if obs_id == "1929119000000003471"

preserve
keep if obs_id == "1933119000000002127"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002357"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002357"

replace establishment_id = "" if obs_id == "1931119000000001931"
replace firm_id = "" if obs_id == "1931119000000001931"

replace establishment_id = "" if obs_id == "1929119000000001651"
replace firm_id = "" if obs_id == "1929119000000001651"

preserve
keep if obs_id == "1935119000000003428"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003575"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003575"

preserve
keep if obs_id == "1933119000000000170"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000000127"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000127"

preserve
keep if obs_id == "1933119000000001366"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000001433"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001433"

preserve
keep if obs_id == "1929119000000002764"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002833"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002833"

preserve
keep if obs_id == "1933119000000003190"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003581"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003581"

replace establishment_id = "" if obs_id == "1929119000000003574"
replace firm_id = "" if obs_id == "1929119000000003574"

preserve
keep if obs_id == "1933119000000003033"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003380"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003380"

replace establishment_id = "" if obs_id == "1929119000000003430"
replace firm_id = "" if obs_id == "1929119000000003430"

replace establishment_id = "" if obs_id == "1929119000000003382"
replace firm_id = "" if obs_id == "1929119000000003382"

replace establishment_id = "" if obs_id == "1929119000000003593"
replace firm_id = "" if obs_id == "1929119000000003593"

preserve
keep if obs_id == "1933119000000001810"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001995"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001995"

replace establishment_id = "" if obs_id == "1933119000000003087"
replace firm_id = "" if obs_id == "1933119000000003087"

preserve
keep if obs_id == "1933119000000001765"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002015"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002015"

preserve
keep if obs_id == "1935119000000002734"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002809"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002809"

preserve
keep if obs_id == "1933119000000002626"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002967"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002967"

replace establishment_id = "" if obs_id == "1929119000000003572"
replace firm_id = "" if obs_id == "1929119000000003572"

preserve
keep if obs_id == "1935119000000003298"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003431"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003431"

replace establishment_id = "" if obs_id == "1931119000000001933"
replace firm_id = "" if obs_id == "1931119000000001933"

preserve
keep if obs_id == "1935119000000001977"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002067"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002067"

preserve
keep if obs_id == "1935119000000003287"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003415"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003415"

replace establishment_id = "" if obs_id == "1929119000000003597"
replace firm_id = "" if obs_id == "1929119000000003597"

preserve
keep if obs_id == "1933119000000002130"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002360"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002360"

replace establishment_id = "" if obs_id == "1931119000000001902"
replace firm_id = "" if obs_id == "1931119000000001902"

replace establishment_id = "" if obs_id == "1931119000000002018"
replace firm_id = "" if obs_id == "1931119000000002018"

replace establishment_id = "" if obs_id == "1929119000000003500"
replace firm_id = "" if obs_id == "1929119000000003500"

preserve
keep if obs_id == "1933119000000003095"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003447"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003447"

preserve
keep if obs_id == "1933119000000001794"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001976"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001976"

preserve
keep if obs_id == "1933119000000003090"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003463"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003463"

replace establishment_id = "" if obs_id == "1929119000000003557"
replace firm_id = "" if obs_id == "1929119000000003557"

preserve
keep if obs_id == "1935119000000001810"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001886"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001886"

replace establishment_id = "" if obs_id == "1929119000000003410"
replace firm_id = "" if obs_id == "1929119000000003410"

preserve
keep if obs_id == "1933119000000001755"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001939"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001939"

preserve
keep if obs_id == "1935119000000003332"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003473"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003473"

replace establishment_id = "" if obs_id == "1929119000000003489"
replace firm_id = "" if obs_id == "1929119000000003489"

replace establishment_id = "" if obs_id == "1931119000000001322"
replace firm_id = "" if obs_id == "1931119000000001322"

replace establishment_id = "" if obs_id == "1929119000000003570"
replace firm_id = "" if obs_id == "1929119000000003570"

preserve
keep if obs_id == "1933119000000001802"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001984"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001984"

preserve
keep if obs_id == "1933119000000001792"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000001882"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001882"

replace establishment_id = "" if obs_id == "1931119000000001974"

replace establishment_id = "" if obs_id == "1931119000000001918"
replace firm_id = "" if obs_id == "1931119000000001918"

preserve
keep if obs_id == "1935119000000001859"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001948"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001948"

replace establishment_id = "" if obs_id == "1935119000000002740"
replace firm_id = "" if obs_id == "1935119000000002740"

replace establishment_id = "" if obs_id == "1931119000000002790"
replace firm_id = "" if obs_id == "1931119000000002790"

preserve
keep if obs_id == "1935119000000003314"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003453"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003453"

replace establishment_id = "" if obs_id == "1931119000000001911"
replace firm_id = "" if obs_id == "1931119000000001911"

preserve
keep if obs_id == "1933119000000001785"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001965"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001965"

replace establishment_id = "" if obs_id == "1929119000000003459"
replace firm_id = "" if obs_id == "1929119000000003459"

preserve
keep if obs_id == "1933119000000003142"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003526"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003526"

preserve
keep if obs_id == "1929119000000002731"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002793"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002793"

replace establishment_id = "" if obs_id == "1929119000000003576"
replace firm_id = "" if obs_id == "1929119000000003576"

replace establishment_id = "" if obs_id == "1929119000000003555"
replace firm_id = "" if obs_id == "1929119000000003555"

replace establishment_id = "" if obs_id == "1929119000000003612"
replace firm_id = "" if obs_id == "1929119000000003612"

replace establishment_id = "" if obs_id == "1929119000000003392"
replace firm_id = "" if obs_id == "1929119000000003392"

preserve
keep if obs_id == "1933119000000003175"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003554"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003554"

replace establishment_id = "" if obs_id == "1929119000000003600"
replace firm_id = "" if obs_id == "1929119000000003600"

preserve
keep if obs_id == "1929119000000002844"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002931"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002931"

replace establishment_id = "" if obs_id == "1931119000000001955"
replace firm_id = "" if obs_id == "1931119000000001955"

replace establishment_id = "" if obs_id == "1929119000000003438"
replace firm_id = "" if obs_id == "1929119000000003438"

preserve
keep if obs_id == "1935119000000003302"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003436"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003436"

preserve
keep if obs_id == "1933119000000001872"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000002082"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002082"

replace establishment_id = "" if obs_id == "1931119000000001946"
replace firm_id = "" if obs_id == "1931119000000001946"

replace establishment_id = "" if obs_id == "1935119000000002509"
replace firm_id = "" if obs_id == "1935119000000002509"

replace establishment_id = "" if obs_id == "1929119000000003387"
replace firm_id = "" if obs_id == "1929119000000003387"

preserve
keep if obs_id == "1933119000000003066"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003418"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003418"

preserve
keep if obs_id == "1933119000000003075"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003474"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003474"

preserve
keep if obs_id == "1933119000000001870"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002063"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002063"

preserve
keep if obs_id == "1929119000000000524"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000000667"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000667"

replace establishment_id = "" if obs_id == "1931119000000002858"
replace firm_id = "" if obs_id == "1931119000000002858"

replace establishment_id = "" if obs_id == "1929119000000003516"
replace firm_id = "" if obs_id == "1929119000000003516"

replace establishment_id = "" if obs_id == "1929119000000003498"
replace firm_id = "" if obs_id == "1929119000000003498"

preserve
keep if obs_id == "1933119000000003062"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003486"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003486"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003344"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003344"

replace establishment_id = "" if obs_id == "1929119000000003503"
replace firm_id = "" if obs_id == "1929119000000003503"

replace establishment_id = "" if obs_id == "1931119000000002003"
replace firm_id = "" if obs_id == "1931119000000002003"

preserve
keep if obs_id == "1935119000000001924"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002017"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002017"

replace establishment_id = "" if obs_id == "1929119000000003517"
replace firm_id = "" if obs_id == "1929119000000003517"

preserve
keep if obs_id == "1933119000000003076"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003478"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003478"

preserve
keep if obs_id == "1929119000000002826"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002889"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002889"

preserve
keep if obs_id == "1931119000000002288"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000002256"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002256"

preserve
keep if obs_id == "1933119000000001829"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002021"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002021"

preserve
keep if obs_id == "1933119000000001833"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002029"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002029"

preserve
keep if obs_id == "1929119000000002811"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002867"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002867"

preserve
keep if obs_id == "1935119000000002187"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002226"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002226"

preserve
keep if obs_id == "1933119000000003124"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003444"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003444"

preserve
keep if obs_id == "1935119000000001827"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001919"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001919"

preserve
keep if obs_id == "1933119000000001849"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002045"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002045"

preserve
keep if obs_id == "1933119000000003143"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003527"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003527"

preserve
keep if obs_id == "1935119000000003445"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003602"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003602"

preserve
keep if obs_id == "1935119000000003377"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003520"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003520"

preserve
keep if obs_id == "1929119000000002769"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002837"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002837"

preserve
keep if obs_id == "1935119000000003275"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003402"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003402"

preserve
keep if obs_id == "1933119000000003080"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003490"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003490"

preserve
keep if obs_id == "1933119000000003097"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003449"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003449"

preserve
keep if obs_id == "1935119000000001902"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001992"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001992"

preserve
keep if obs_id == "1933119000000001797"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001979"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001979"

preserve
keep if obs_id == "1933119000000002113"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002334"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002334"

replace establishment_id = "" if obs_id == "1931119000000001924"
replace firm_id = "" if obs_id == "1931119000000001924"

preserve
keep if obs_id == "1933119000000003096"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003448"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003448"

replace establishment_id = "" if obs_id == "1929119000000003487"
replace firm_id = "" if obs_id == "1929119000000003487"

preserve
keep if obs_id == "1935119000000003383"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003525"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003525"

replace establishment_id = "" if obs_id == "1929119000000002727"
replace firm_id = "" if obs_id == "1929119000000002727"

preserve
keep if obs_id == "1933119000000000167"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000000136"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000136"

preserve
keep if obs_id == "1933119000000000177"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000000198"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000198"

preserve
keep if obs_id == "1933119000000001719"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001899"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001899"

preserve
keep if obs_id == "1933119000000003147"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003534"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003534"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003389"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003389"

preserve
keep if obs_id == "1935119000000002796"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002861"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002861"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000002572"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002572"

preserve
keep if obs_id == "1933119000000003059"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003413"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003413"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003285"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003285"

replace establishment_id = "" if obs_id == "1929119000000003406"
replace firm_id = "" if obs_id == "1929119000000003406"

preserve
keep if obs_id == "1933119000000003089"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003440"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003440"

replace establishment_id = "" if obs_id == "1931119000000000244"
replace firm_id = "" if obs_id == "1931119000000000244"

preserve
keep if obs_id == "1935119000000000546"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000000633"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000633"

replace establishment_id = "" if obs_id == "1931119000000002513"
replace firm_id = "" if obs_id == "1931119000000002513"

preserve
keep if obs_id == "1931119000000000177"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000000134"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000134"

replace establishment_id = "" if obs_id == "1929119000000003390"
replace firm_id = "" if obs_id == "1929119000000003390"

preserve
keep if obs_id == "1935119000000000168"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000000128"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000128"

replace establishment_id = "" if obs_id == "1929119000000003577"
replace firm_id = "" if obs_id == "1929119000000003577"

replace establishment_id = "" if obs_id == "1931119000000002847"
replace firm_id = "" if obs_id == "1931119000000002847"

replace establishment_id = "" if obs_id == "1929119000000003586"
replace firm_id = "" if obs_id == "1929119000000003586"

replace establishment_id = "" if obs_id == "1931119000000002047"
replace firm_id = "" if obs_id == "1931119000000002047"

preserve
keep if obs_id == "1933119000000000131"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000000175"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000175"

preserve
keep if obs_id == "1931119000000000188"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000000139"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000139"

preserve
keep if obs_id == "1929119000000000931"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000000789"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000789"

preserve
keep if obs_id == "1929119000000000135"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000000046"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000046"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000000075"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000075"

replace establishment_id = "" if obs_id == "1929119000000003443"
replace firm_id = "" if obs_id == "1929119000000003443"

replace establishment_id = "" if obs_id == "1931119000000002795"
replace firm_id = "" if obs_id == "1931119000000002795"

preserve
keep if obs_id == "1935119000000002729"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002799"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002799"

preserve
keep if obs_id == "1933119000000003104"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003403"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003403"

preserve
keep if obs_id == "1931119000000000260"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000000199"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000199"

replace establishment_id = "" if obs_id == "1931119000000001898"
replace firm_id = "" if obs_id == "1931119000000001898"

replace establishment_id = "" if obs_id == "1933119000000000201"
replace firm_id = "" if obs_id == "1933119000000000201"

preserve
keep if obs_id == "1935119000000000550"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000000637"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000637"

preserve
keep if obs_id == "1933119000000000116"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000000144"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000144"

preserve
keep if obs_id == "1933119000000000125"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000000143"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000143"

replace establishment_id = "" if obs_id == "1933119000000000135"
replace firm_id = "" if obs_id == "1933119000000000135"

preserve
keep if obs_id == "1935119000000000569"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000000660"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000660"

preserve
keep if obs_id == "1933119000000003197"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003594"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003594"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003439"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003439"

preserve
keep if obs_id == "1935119000000001933"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002031"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002031"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000001835"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001835"

replace establishment_id = "" if obs_id == "1929119000000003377"
replace firm_id = "" if obs_id == "1929119000000003377"

preserve
keep if obs_id == "1933119000000001782"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001962"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001962"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000001872"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001872"

preserve
keep if obs_id == "1935119000000003451"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003611"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003611"

preserve
keep if obs_id == "1935119000000003390"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003535"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003535"

replace establishment_id = "" if obs_id == "1929119000000003394"
replace firm_id = "" if obs_id == "1929119000000003394"

replace establishment_id = "" if obs_id == "1929119000000003568"
replace firm_id = "" if obs_id == "1929119000000003568"

replace establishment_id = "" if obs_id == "1929119000000003499"
replace firm_id = "" if obs_id == "1929119000000003499"

preserve
keep if obs_id == "1933119000000001815"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002000"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002000"

replace establishment_id = "" if obs_id == "1931119000000000223"
replace firm_id = "" if obs_id == "1931119000000000223"

replace establishment_id = "" if obs_id == "1935119000000000123"
replace firm_id = "" if obs_id == "1935119000000000123"

replace establishment_id = "" if obs_id == "1929119000000003472"
replace firm_id = "" if obs_id == "1929119000000003472"

preserve
keep if obs_id == "1933119000000003155"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003537"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003537"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003392"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003392"

preserve
keep if obs_id == "1935119000000001848"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001940"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001940"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000001756"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001756"

preserve
keep if obs_id == "1933119000000001823"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002008"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002008"

replace establishment_id = "" if obs_id == "1935119000000001917"
replace firm_id = "" if obs_id == "1935119000000001917"

preserve
keep if obs_id == "1929119000000003519"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000003138"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003138"

replace establishment_id = "" if obs_id == "1929119000000001682"
replace firm_id = "" if obs_id == "1929119000000001682"

preserve
keep if obs_id == "1935119000000003438"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003592"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003592"

preserve
keep if obs_id == "1935119000000003375"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003519"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003519"

replace establishment_id = "" if obs_id == "1929119000000003460"
replace firm_id = "" if obs_id == "1929119000000003460"

preserve
keep if obs_id == "1935119000000003308"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003446"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003446"

replace establishment_id = "" if obs_id == "1931119000000002359"
replace firm_id = "" if obs_id == "1931119000000002359"

preserve
keep if obs_id == "1933119000000003068"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003423"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003423"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003291"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003291"

preserve
keep if obs_id == "1935119000000002779"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002845"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002845"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000002589"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002589"

preserve
keep if obs_id == "1933119000000003069"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003427"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003427"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003294"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003294"

preserve
keep if obs_id == "1929119000000002269"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002268"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002268"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000002060"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002060"

preserve
keep if obs_id == "1933119000000000122"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000000157"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000157"

replace establishment_id = "" if obs_id == "1931119000000000178"
replace firm_id = "" if obs_id == "1931119000000000178"

preserve
keep if obs_id == "1933119000000002723"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000002974"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002974"

preserve
keep if obs_id == "1929119000000002129"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002313"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002313"

replace establishment_id = "" if obs_id == "1929119000000003588"
replace firm_id = "" if obs_id == "1929119000000003588"

preserve
keep if obs_id == "1933119000000003135"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003513"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003513"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003369"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003369"

preserve
keep if obs_id == "1933119000000003094"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003452"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003452"

preserve
keep if obs_id == "1933119000000003177"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003558"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003558"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003415"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003415"

preserve
keep if obs_id == "1935119000000002778"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002844"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002844"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000002562"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002562"

replace establishment_id = "" if obs_id == "1931119000000000564"
replace firm_id = "" if obs_id == "1931119000000000564"

replace establishment_id = "" if obs_id == "1933119000000000506"
replace firm_id = "" if obs_id == "1933119000000000506"

replace establishment_id = "" if obs_id == "1929119000000003482"
replace firm_id = "" if obs_id == "1929119000000003482"

preserve
keep if obs_id == "1935119000000001906"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001997"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001997"

preserve
keep if obs_id == "1935119000000000029"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000000045"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000045"

preserve
keep if obs_id == "1933119000000000169"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000000149"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000149"

preserve
keep if obs_id == "1933119000000001776"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001953"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001953"

replace establishment_id = "" if obs_id == "1929119000000003424"
replace firm_id = "" if obs_id == "1929119000000003424"

preserve
keep if obs_id == "1933119000000003149"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003505"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003505"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003360"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003360"

preserve
keep if obs_id == "1935119000000001836"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001925"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001925"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000001731"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001731"

preserve
keep if obs_id == "1933119000000003123"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003442"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003442"

preserve
keep if obs_id == "1935119000000003442"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003598"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003598"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000003199"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003199"

preserve
keep if obs_id == "1933119000000001840"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002036"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002036"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000001939"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001939"

preserve
keep if obs_id == "1935119000000003173"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000002969"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002969"

preserve
keep if obs_id == "1933119000000002968"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003172"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003172"

preserve
keep if obs_id == "1933119000000003216"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003609"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003609"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003449"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003449"

preserve
keep if obs_id == "1933119000000000187"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000000239"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000239"

preserve
keep if obs_id == "1931119000000000190"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000000141"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000141"

preserve
keep if obs_id == "1933119000000000170"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000000154"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000154"

preserve
keep if obs_id == "1935119000000003299"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003432"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003432"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000003117"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003117"

preserve
keep if obs_id == "1933119000000002533"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002783"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002783"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000002712"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002712"

replace establishment_id = "" if obs_id == "1929119000000000117"
replace firm_id = "" if obs_id == "1929119000000000117"

replace establishment_id = "" if obs_id == "1931119000000000006"
replace firm_id = "" if obs_id == "1931119000000000006"

preserve
keep if obs_id == "1929119000000002267"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002280"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002280"

preserve
keep if obs_id == "1935119000000003323"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003462"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003462"

preserve
keep if obs_id == "1935119000000000064"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000000009"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000009"

replace establishment_id = "" if obs_id == "1931119000000001938"
replace firm_id = "" if obs_id == "1931119000000001938"

preserve
keep if obs_id == "1933119000000001798"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001980"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001980"

preserve
keep if obs_id == "1933119000000003194"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003591"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003591"

preserve
keep if obs_id == "1935119000000003387"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003531"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003531"

preserve
keep if obs_id == "1933119000000003083"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003433"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003433"

replace establishment_id = "" if obs_id == "1931119000000002246"
replace firm_id = "" if obs_id == "1931119000000002246"

replace establishment_id = "" if obs_id == "1929119000000003419"
replace firm_id = "" if obs_id == "1929119000000003419"

preserve
keep if obs_id == "1935119000000002803"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002873"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002873"

preserve
keep if obs_id == "1935119000000000135"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000000158"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000158"

preserve
keep if obs_id == "1935119000000001898"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001988"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001988"

preserve
keep if obs_id == "1931119000000001048"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000000957"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000957"

preserve
keep if obs_id == "1931119000000001152"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000001065"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001065"

preserve
keep if obs_id == "1935119000000002317"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002356"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002356"

replace establishment_id = "" if obs_id == "1931119000000002810"
replace firm_id = "" if obs_id == "1931119000000002810"

preserve
keep if obs_id == "1933119000000003032"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003379"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003379"

preserve
keep if obs_id == "1933119000000002644"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002896"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002896"

replace establishment_id = "" if obs_id == "1933119000000002598"
replace firm_id = "" if obs_id == "1933119000000002598"

preserve
keep if obs_id == "1935119000000003420"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003563"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003563"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000003181"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003181"

preserve
keep if obs_id == "1933119000000001786"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001966"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001966"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000001879"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001879"

preserve
keep if obs_id == "1933119000000002662"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002876"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002876"

replace establishment_id = "" if obs_id == "1931119000000000528"
replace firm_id = "" if obs_id == "1931119000000000528"

preserve
keep if obs_id == "1935119000000003367"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003512"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003512"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000003134"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003134"

preserve
keep if obs_id == "1933119000000001831"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002025"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002025"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000001929"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001929"

preserve
keep if obs_id == "1933119000000000097"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000000129"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000129"

preserve
keep if obs_id == "1935119000000000457"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000000524"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000524"

preserve
keep if obs_id == "1935119000000001863"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001951"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001951"

preserve
keep if obs_id == "1933119000000003193"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003587"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003587"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003435"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003435"

preserve
keep if obs_id == "1933119000000001797"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001996"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001996"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000001811"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001811"

preserve
keep if obs_id == "1931119000000000037"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000000021"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000021"

preserve
keep if obs_id == "1933119000000000021"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000000020"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000020"

preserve
keep if obs_id == "1935119000000000022"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000000082"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000000082"

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000000039"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000039"

replace establishment_id = "" if obs_id == "1931119000000000169"
replace firm_id = "" if obs_id == "1931119000000000169"

preserve
keep if obs_id == "1935119000000003338"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003479"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003479"

preserve
keep if obs_id == "1933119000000000007"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000000088"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000088"

preserve
keep if obs_id == "1935119000000003416"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003559"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003559"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000003178"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003178"

preserve
keep if obs_id == "1933119000000001787"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001967"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001967"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000001875"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001875"

replace establishment_id = "" if obs_id == "1929119000000003409"
replace firm_id = "" if obs_id == "1929119000000003409"

preserve
keep if obs_id == "1933119000000001749"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001930"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001930"

replace establishment_id = "" if obs_id == "1931119000000001889"
replace firm_id = "" if obs_id == "1931119000000001889"

replace establishment_id = "" if obs_id == "1933119000000001488"
replace firm_id = "" if obs_id == "1933119000000001488"

preserve
keep if obs_id == "1933119000000001779"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001957"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001957"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000001869"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001869"

preserve
keep if obs_id == "1931119000000000139"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000000113"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000113"

replace establishment_id = "" if obs_id == "1931119000000000130"
replace firm_id = "" if obs_id == "1931119000000000130"

preserve
keep if obs_id == "1933119000000001806"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001989"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001989"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000001899"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001899"

preserve
keep if obs_id == "1935119000000003425"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003580"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003580"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000003185"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003185"

preserve
keep if obs_id == "1933119000000003113"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003421"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003421"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003290"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003290"

preserve
keep if obs_id == "1935119000000001880"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001971"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001971"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000001790"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001790"

replace establishment_id = "" if obs_id == "1929119000000003564"
replace firm_id = "" if obs_id == "1929119000000003564"

replace establishment_id = "" if obs_id == "1931119000000001909"
replace firm_id = "" if obs_id == "1931119000000001909"

replace establishment_id = "" if obs_id == "1931119000000000001"
replace firm_id = "" if obs_id == "1931119000000000001"

preserve
keep if obs_id == "1935119000000000188"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000000146"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000146"

preserve
keep if obs_id == "1933119000000003040"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003391"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003391"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003267"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003267"

preserve
keep if obs_id == "1935119000000001947"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002041"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002041"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000001845"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001845"

preserve
keep if obs_id == "1933119000000003187"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003573"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003573"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003427"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003427"

preserve
keep if obs_id == "1935119000000002184"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002224"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002224"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000002144"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002144"

preserve
keep if obs_id == "1933119000000003109"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003414"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003414"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003286"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003286"

replace establishment_id = "" if obs_id == "1931119000000001900"
replace firm_id = "" if obs_id == "1931119000000001900"

replace establishment_id = "" if obs_id == "1933119000000001720"
replace firm_id = "" if obs_id == "1933119000000001720"

replace establishment_id = "" if obs_id == "1929119000000003532"
replace firm_id = "" if obs_id == "1929119000000003532"

preserve
keep if obs_id == "1929119000000002206"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002227"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002227"

preserve
keep if obs_id == "1935119000000000840"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001038"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001038"

preserve
keep if obs_id == "1931119000000001037"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000000919"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000919"

preserve
keep if obs_id == "1935119000000003441"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003596"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003596"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000003213"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003213"

preserve
keep if obs_id == "1933119000000001867"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002064"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002064"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000001974"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001974"

preserve
keep if obs_id == "1933119000000003043"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003395"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003395"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003270"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003270"

preserve
keep if obs_id == "1935119000000001860"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001949"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001949"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000001774"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001774"

preserve
keep if obs_id == "1935119000000003281"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003408"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003408"

replace establishment_id = "" if obs_id == "1931119000000001904"
replace firm_id = "" if obs_id == "1931119000000001904"

preserve
keep if obs_id == "1929119000000001392"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001400"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001400"

preserve
keep if obs_id == "1929119000000001395"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000001213"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001213"

replace establishment_id = "" if obs_id == "1931119000000002022"
replace firm_id = "" if obs_id == "1931119000000002022"

preserve
keep if obs_id == "1935119000000001877"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001964"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001964"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000001760"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001760"

preserve
keep if obs_id == "1933119000000003041"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003456"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003456"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003319"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003319"

replace establishment_id = "" if obs_id == "1931119000000002898"
replace firm_id = "" if obs_id == "1931119000000002898"

replace establishment_id = "" if obs_id == "1931119000000002019"
replace firm_id = "" if obs_id == "1931119000000002019"

replace establishment_id = "" if obs_id == "1929119000000003608"
replace firm_id = "" if obs_id == "1929119000000003608"

replace establishment_id = "" if obs_id == "1931119000000001912"
replace firm_id = "" if obs_id == "1931119000000001912"

preserve
keep if obs_id == "1935119000000001840"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001932"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001932"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000001734"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001734"

preserve
keep if obs_id == "1933119000000003048"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003334"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003334"

replace establishment_id = "" if obs_id == "1929119000000003475"
replace firm_id = "" if obs_id == "1929119000000003475"

preserve
keep if obs_id == "1933119000000003102"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003400"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003400"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003273"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003273"

preserve
keep if obs_id == "1931119000000000656"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000000552"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000552"

preserve
keep if obs_id == "1935119000000000184"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000000194"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000194"

replace establishment_id = "" if obs_id == "1931119000000001903"
replace firm_id = "" if obs_id == "1931119000000001903"

preserve
keep if obs_id == "1933119000000003201"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003444"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003444"

preserve
keep if obs_id == "1935119000000002762"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000002556"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002556"

preserve
keep if obs_id == "1935119000000003295"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003428"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003428"

preserve
keep if obs_id == "1935119000000002775"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002841"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002841"

preserve
keep if obs_id == "1935119000000003408"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003549"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003549"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000003170"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003170"

preserve
keep if obs_id == "1933119000000002528"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002787"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002787"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000002705"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000002705"

replace establishment_id = "" if obs_id == "1929119000000003422"
replace firm_id = "" if obs_id == "1929119000000003422"

replace establishment_id = "" if obs_id == "1931119000000002829"
replace firm_id = "" if obs_id == "1931119000000002829"

replace establishment_id = "" if obs_id == "1931119000000000163"
replace firm_id = "" if obs_id == "1931119000000000163"

preserve
keep if obs_id == "1933119000000000168"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000000121"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000121"

replace establishment_id = "" if obs_id == "1929119000000003579"
replace firm_id = "" if obs_id == "1929119000000003579"

preserve
keep if obs_id == "1929119000000002881"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002964"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002964"

preserve
keep if obs_id == "1933119000000001463"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001665"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001665"

preserve
keep if obs_id == "1933119000000003067"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003420"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003420"

preserve
keep if obs_id == "1935119000000002783"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002849"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002849"

preserve
keep if obs_id == "1933119000000001763"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002011"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002011"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000001921"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001921"

replace establishment_id = "" if obs_id == "1933119000000003208"
replace firm_id = "" if obs_id == "1933119000000003208"

preserve
keep if obs_id == "1935119000000003424"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003569"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003569"

preserve
keep if obs_id == "1933119000000003108"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003412"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003412"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003284"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003284"

replace establishment_id = "" if obs_id == "1931119000000000204"
replace firm_id = "" if obs_id == "1931119000000000204"

replace establishment_id = "" if obs_id == "1935119000000000134"
replace firm_id = "" if obs_id == "1935119000000000134"

replace establishment_id = "" if obs_id == "1929119000000003389"
replace firm_id = "" if obs_id == "1929119000000003389"

preserve
keep if obs_id == "1929119000000002197"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002377"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002377"

preserve
keep if obs_id == "1933119000000003105"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003407"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003407"

preserve
keep if obs_id == "1935119000000002268"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002306"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002306"

preserve
keep if obs_id == "1933119000000003072"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003470"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003470"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003331"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003331"

preserve
keep if obs_id == "1935119000000002800"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002865"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002865"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000002592"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002592"

preserve
keep if obs_id == "1935119000000003301"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003435"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003435"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000003118"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003118"

preserve
keep if obs_id == "1933119000000001717"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001895"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001895"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000001815"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001815"

replace establishment_id = "" if obs_id == "1929119000000003589"
replace firm_id = "" if obs_id == "1929119000000003589"

preserve
keep if obs_id == "1929119000000002138"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002319"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002319"

replace establishment_id = "" if obs_id == "1935119000000000144"
replace firm_id = "" if obs_id == "1935119000000000144"

replace establishment_id = "" if obs_id == "1929119000000003450"
replace firm_id = "" if obs_id == "1929119000000003450"

preserve
keep if obs_id == "1935119000000002829"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002952"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002952"

preserve
keep if obs_id == "1935119000000003327"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003465"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003465"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000003052"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003052"

preserve
keep if obs_id == "1933119000000001868"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002066"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002066"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000001976"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001976"

preserve
keep if obs_id == "1933119000000001758"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001952"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001952"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000001864"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001864"

preserve
keep if obs_id == "1935119000000003352"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003493"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003493"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000003070"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003070"

preserve
keep if obs_id == "1933119000000001728"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001916"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001916"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000001831"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001831"

replace establishment_id = "" if obs_id == "1935119000000002318"
replace firm_id = "" if obs_id == "1935119000000002318"

preserve
keep if obs_id == "1935119000000003370"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003514"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003514"

replace establishment_id = "" if obs_id == "1931119000000000262"
replace firm_id = "" if obs_id == "1931119000000000262"

replace establishment_id = "" if obs_id == "1931119000000000245"
replace firm_id = "" if obs_id == "1931119000000000245"

replace establishment_id = "" if obs_id == "1929119000000003411"
replace firm_id = "" if obs_id == "1929119000000003411"

preserve
keep if obs_id == "1935119000000001903"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001993"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001993"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000001808"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001808"

preserve
keep if obs_id == "1933119000000003191"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003582"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003582"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003431"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003431"

preserve
keep if obs_id == "1935119000000002746"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002814"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002814"

preserve
keep if obs_id == "1935119000000003365"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003509"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003509"

preserve
keep if obs_id == "1935119000000003440"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003595"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003595"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000003198"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003198"

preserve
keep if obs_id == "1933119000000001752"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001936"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001936"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000001845"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001845"

preserve
keep if obs_id == "1935119000000001814"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001893"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000001893"

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000001715"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001715"

preserve
keep if obs_id == "1933119000000003172"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003551"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003551"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000003409"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000003409"

replace establishment_id = "" if obs_id == "1929119000000003561"
replace firm_id = "" if obs_id == "1929119000000003561"

replace establishment_id = "" if obs_id == "1931119000000001968"
replace firm_id = "" if obs_id == "1931119000000001968"

replace establishment_id = "" if obs_id == "1929119000000003461"
replace firm_id = "" if obs_id == "1929119000000003461"

preserve
keep if obs_id == "1933119000000002131"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002361"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002361"

replace establishment_id = "" if obs_id == "1931119000000002961"
replace firm_id = "" if obs_id == "1931119000000002961"

replace establishment_id = "" if obs_id == "1935119000000002835"
replace firm_id = "" if obs_id == "1935119000000002835"

preserve
keep if obs_id == "1931119000000001048"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000000973"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000973"

preserve
keep if obs_id == "1931119000000001152"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000001002"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001002"

preserve
keep if obs_id == "1933119000000002083"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000002114"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000002114"

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002299"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002299"

replace establishment_id = "" if obs_id == "1931119000000002363"
replace firm_id = "" if obs_id == "1931119000000002363"

replace establishment_id = "" if obs_id == "1929119000000003547"
replace firm_id = "" if obs_id == "1929119000000003547"

replace establishment_id = "" if obs_id == "1935119000000001885"
replace firm_id = "" if obs_id == "1935119000000001885"

replace establishment_id = "" if obs_id == "1931119000000002300"
replace firm_id = "" if obs_id == "1931119000000002300"

replace establishment_id = "" if obs_id == "1929119000000003439"
replace firm_id = "" if obs_id == "1929119000000003439"

replace establishment_id = "" if obs_id == "1933119000000002090"
replace firm_id = "" if obs_id == "1933119000000002090"

replace establishment_id = "" if obs_id == "1933119000000001114"
replace firm_id = "" if obs_id == "1933119000000001114"

preserve
keep if obs_id == "1933119000000001115"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000001122"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001122"

replace establishment_id = "" if obs_id == "1931119000000002068"
replace firm_id = "" if obs_id == "1931119000000002068"

preserve
keep if obs_id == "1935119000000002869"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000002895"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000002895"

preserve
keep if obs_id == "1935119000000002808"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000002599"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000002599"

preserve
keep if obs_id == "1933119000000003051"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1929119000000003467"
replace firm_id = "`new_firmid'" if obs_id == "1929119000000003467"

preserve
keep if obs_id == "1931119000000000143"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000000115"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000000115"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000000118"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000118"

replace establishment_id = "" if obs_id == "1933119000000001811"

replace establishment_id = "" if obs_id == "1929119000000003607"

replace establishment_id = "" if obs_id == "1931119000000001991"
replace firm_id = "" if obs_id == "1931119000000001991"

replace establishment_id = "" if obs_id == "1931119000000002014"

replace establishment_id = "" if obs_id == "1929119000000000021"
replace firm_id = "" if obs_id == "1929119000000000021"

replace establishment_id = "" if obs_id == "1933119000000000008"
replace firm_id = "" if obs_id == "1933119000000000008"

replace establishment_id = "" if obs_id == "1929119000000003603"
replace firm_id = "" if obs_id == "1929119000000003603"

replace establishment_id = "" if obs_id == "1929119000000002222"
replace firm_id = "" if obs_id == "1929119000000002222"

replace establishment_id = "" if obs_id == "1929119000000003578"
replace firm_id = "" if obs_id == "1929119000000003578"

replace establishment_id = "" if obs_id == "1933119000000003189"
replace firm_id = "" if obs_id == "1933119000000003189"

replace establishment_id = "" if obs_id == "1929119000000003439"
replace firm_id = "" if obs_id == "1929119000000003439"

//Fill in missing values
foreach type in firm establishment{
	do "./Cleaning Scripts/General/gen_id" "119" "`type'"
}

preserve
keep if obs_id == "1929119000000003578"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000003189"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003189"

preserve
keep if obs_id == "1933119000000001762"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000001901"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001901"

preserve
keep if obs_id == "1929119000000000021"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000000106"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000106"

preserve
keep if obs_id == "1933119000000000008"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000000086"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000086"

preserve
keep if obs_id == "1933119000000001811"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000001996"

preserve
keep if obs_id == "1933119000000000103"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1931119000000000165"
replace firm_id = "`new_firmid'" if obs_id == "1931119000000000165"

preserve
keep if obs_id == "1931119000000001991"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000001762"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000001762"

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000001901"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000001901"

preserve
keep if obs_id == "1933119000000000167"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1935119000000000176"
replace firm_id = "`new_firmid'" if obs_id == "1935119000000000176"

preserve
keep if obs_id == "1929119000000003488"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore

replace establishment_id = "`new_estabid'" if obs_id == "1933119000000003087"
replace firm_id = "`new_firmid'" if obs_id == "1933119000000003087"
