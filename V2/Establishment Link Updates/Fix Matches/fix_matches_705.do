//Code to fix bad establishment matches in indnum==705
preserve
keep if obs_id == "1929705000000000103"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1931705000000000095"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000095"

preserve
keep if obs_id == "1933705000000000095"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1935705000000000102"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000102"

preserve
keep if obs_id == "1931705000000000163"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1929705000000000164"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000164"

preserve
keep if obs_id == "1935705000000000232"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1929705000000000232"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000232"
replace establishment_id = "`new_estabid'" if obs_id == "1931705000000000229"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000229"
replace establishment_id = "`new_estabid'" if obs_id == "1933705000000000237"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000237"

preserve
keep if obs_id == "1929705000000000390"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1935705000000000236"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000236"

preserve
keep if obs_id == "1935705000000000330"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1933705000000000328"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000328"

preserve
keep if obs_id == "1929705000000000204"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1931705000000000199"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000199"

preserve
keep if obs_id == "1931705000000000091"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1929705000000000098"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000098"

preserve
keep if obs_id == "1929705000000000226"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1935705000000000228"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000228"

preserve
keep if obs_id == "1931705000000000194"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1929705000000000198"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000198"

preserve
keep if obs_id == "1929705000000000337"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1931705000000000327"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000327"

preserve
keep if obs_id == "1929705000000000340"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1931705000000000329"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000329"

preserve
keep if obs_id == "1931705000000000345"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1935705000000000361"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000361"

preserve
keep if obs_id == "1929705000000000363"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1933705000000000361"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000361"

preserve
keep if obs_id == "1931705000000000289"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1933705000000000299"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000299"

preserve
keep if obs_id == "1929705000000000292"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1935705000000000280"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000280"

preserve
keep if obs_id == "1935705000000000282"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1933705000000000291"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000291"

preserve
keep if obs_id == "1929705000000000281"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1935705000000000269"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000269"

preserve
keep if obs_id == "1935705000000000334"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1933705000000000331"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000331"

preserve
keep if obs_id == "1931705000000000238"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1929705000000000241"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000241"

preserve
keep if obs_id == "1935705000000000155"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1929705000000000145"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000145"
replace establishment_id = "`new_estabid'" if obs_id == "1931705000000000145"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000145"

preserve
keep if obs_id == "1929705000000000152"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1933705000000000156"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000156"
replace establishment_id = "`new_estabid'" if obs_id == "1935705000000000161"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000161"

preserve
keep if obs_id == "1931705000000000283"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1933705000000000293"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000293"

preserve
keep if obs_id == "1931705000000000126"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1929705000000000128"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000128"

preserve
keep if obs_id == "1929705000000000082"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1933705000000000077"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000077"
replace establishment_id = "`new_estabid'" if obs_id == "1935705000000000081"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000081"

preserve
keep if obs_id == "1933705000000000075"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1929705000000000080"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000080"
replace establishment_id = "`new_estabid'" if obs_id == "1931705000000000081"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000081"

preserve
keep if obs_id == "1929705000000000144"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1933705000000000146"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000146"

preserve
keep if obs_id == "1929705000000000151"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1935705000000000160"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000160"

preserve
keep if obs_id == "1929705000000000182"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1935705000000000198"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000198"

preserve
keep if obs_id == "1933705000000000201"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1931705000000000192"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000192"

preserve
keep if obs_id == "1931705000000000138"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1929705000000000138"
replace firm_id = "`new_firmid'" if obs_id == "1929705000000000138"

preserve
keep if obs_id == "1929705000000000152"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1931705000000000148"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000148"

preserve
keep if obs_id == "1931705000000000349"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1935705000000000365"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000365"

preserve
keep if obs_id == "1929705000000000309"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1935705000000000309"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000309"

preserve
keep if obs_id == "1931705000000000325"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1933705000000000343"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000343"

preserve
keep if obs_id == "1931705000000000095"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1935705000000000111"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000111"
replace establishment_id = "`new_estabid'" if obs_id == "1933705000000000104"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000104"

preserve
keep if obs_id == "1929705000000000096"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1933705000000000095"
replace firm_id = "`new_firmid'" if obs_id == "1933705000000000095"
replace establishment_id = "`new_estabid'" if obs_id == "1935705000000000102"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000102"

//New firm and establishment IDs
replace establishment_id = "" if obs_id == "1935705000000000278"
replace firm_id = "" if obs_id == "1935705000000000278"
replace establishment_id = "" if obs_id == "1929705000000000183"
replace firm_id = "" if obs_id == "1929705000000000183"
replace establishment_id = "" if obs_id == "1929705000000000096"
replace firm_id = "" if obs_id == "1929705000000000096"
replace establishment_id = "" if obs_id == "1933705000000000104"
replace firm_id = "" if obs_id == "1933705000000000104"
replace establishment_id = "" if obs_id == "1935705000000000159"
replace firm_id = "" if obs_id == "1935705000000000159"
replace establishment_id = "" if obs_id == "1933705000000000007"
replace firm_id = "" if obs_id == "1933705000000000007"
replace establishment_id = "" if obs_id == "1935705000000000002"
replace firm_id = "" if obs_id == "1935705000000000002"
replace establishment_id = "" if obs_id == "1935705000000000283"
replace firm_id = "" if obs_id == "1935705000000000283"
replace establishment_id = "" if obs_id == "1933705000000000337"
replace firm_id = "" if obs_id == "1933705000000000337"
replace establishment_id = "" if obs_id == "1933705000000000184"
replace firm_id = "" if obs_id == "1933705000000000184"
replace establishment_id = "" if obs_id == "1929705000000000215"
replace firm_id = "" if obs_id == "1929705000000000215"
replace establishment_id = "" if obs_id == "1931705000000000305"
replace firm_id = "" if obs_id == "1931705000000000305"
replace establishment_id = "" if obs_id == "1929705000000000357"
replace firm_id = "" if obs_id == "1929705000000000357"
replace establishment_id = "" if obs_id == "1935705000000000295"
replace firm_id = "" if obs_id == "1935705000000000295"
replace establishment_id = "" if obs_id == "1935705000000000211"
replace firm_id = "" if obs_id == "1935705000000000211"
replace establishment_id = "" if obs_id == "1935705000000000299"
replace firm_id = "" if obs_id == "1935705000000000299"
replace establishment_id = "" if obs_id == "1935705000000000297"
replace firm_id = "" if obs_id == "1935705000000000297"
replace establishment_id = "" if obs_id == "1933705000000000191"
replace firm_id = "" if obs_id == "1933705000000000191"
replace establishment_id = "" if obs_id == "1931705000000000358"
replace firm_id = "" if obs_id == "1931705000000000358"
replace establishment_id = "" if obs_id == "1933705000000000374"
replace firm_id = "" if obs_id == "1933705000000000374"
replace  establishment_id = "" if obs_id == "1929705000000000372"
replace firm_id = "" if obs_id == "1929705000000000372"
replace establishment_id = "" if obs_id == "1931705000000000360"
replace firm_id = "" if obs_id == "1931705000000000360"
replace establishment_id = "" if obs_id == "1929705000000000207"
replace firm_id = "" if obs_id == "1929705000000000207"
replace establishment_id = "" if obs_id == "1935705000000000307"
replace firm_id = "" if obs_id == "1935705000000000307"
replace establishment_id = "" if obs_id == "1929705000000000376"
replace firm_id = "" if obs_id == "1929705000000000376"
replace establishment_id = "" if obs_id == "1933705000000000371"
replace firm_id = "" if obs_id == "1933705000000000371"
replace establishment_id = "" if obs_id == "1933705000000000300"
replace firm_id = "" if obs_id == "1933705000000000300"
replace establishment_id = "" if obs_id == "1935705000000000345"
replace firm_id = "" if obs_id == "1935705000000000345"
replace establishment_id = "" if obs_id == "1929705000000000302"
replace firm_id = "" if obs_id == "1929705000000000302"
replace establishment_id = "" if obs_id == "1935705000000000153"
replace firm_id = "" if obs_id == "1935705000000000153"
replace establishment_id = "" if obs_id == "1933705000000000145"
replace firm_id = "" if obs_id == "1933705000000000145"
replace establishment_id = "" if obs_id == "1935705000000000156"
replace firm_id = "" if obs_id == "1935705000000000156"
replace establishment_id = "" if obs_id == "1935705000000000291"
replace firm_id = "" if obs_id == "1935705000000000291"
replace establishment_id = "" if obs_id == "1933705000000000294"
replace firm_id = "" if obs_id == "1933705000000000294"
replace establishment_id = "" if obs_id == "1935705000000000309"
replace firm_id = "" if obs_id == "1935705000000000309"
replace establishment_id = "" if obs_id == "1933705000000000340"
replace firm_id = "" if obs_id == "1933705000000000340"
replace establishment_id = "" if obs_id == "1931705000000000290"
replace firm_id = "" if obs_id == "1931705000000000290"
replace establishment_id = "" if obs_id == "1929705000000000312"
replace firm_id = "" if obs_id == "1929705000000000312"
replace establishment_id = "" if obs_id == "1929705000000000329"
replace firm_id = "" if obs_id == "1929705000000000329"

//Fill in missing values
foreach type in firm establishment{
	do "./Cleaning Scripts/General/gen_id" "705" "`type'"
}

preserve
keep if obs_id == "1929705000000000096"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1931705000000000103"
replace firm_id = "`new_firmid'" if obs_id == "1931705000000000103"

preserve
keep if obs_id == "1933705000000000104"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1935705000000000111"
replace firm_id = "`new_firmid'" if obs_id == "1935705000000000111"
