//Code to fix bad establishment matches in indnum==1008
preserve
keep if obs_id == "19331008000000000063"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19351008000000000065"
replace firm_id = "`new_firmid'" if obs_id == "19351008000000000065"

preserve
keep if obs_id == "19331008000000000058"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000079"
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000068"

preserve
keep if obs_id == "19351008000000000190"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19311008000000000205"
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000205"

preserve
keep if obs_id == "19331008000000000140"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19351008000000000144"
replace firm_id = "`new_firmid'" if obs_id == "19351008000000000144"

preserve
keep if obs_id == "19331008000000000090"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19311008000000000109"
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000109"
replace establishment_id = "" if obs_id == "19311008000000000093"
replace firm_id = "" if obs_id == "19311008000000000093"

preserve
keep if obs_id == "19291008000000000040"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19331008000000000028"
replace firm_id = "`new_firmid'" if obs_id == "19331008000000000028"

preserve
keep if obs_id == "19351008000000000180"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19311008000000000196"
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000196"

preserve
keep if obs_id == "19331008000000000035"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19351008000000000046"
replace firm_id = "`new_firmid'" if obs_id == "19351008000000000046"

preserve
keep if obs_id == "19311008000000000225"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19291008000000000263"
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000263"
replace establishment_id = "" if obs_id == "19291008000000000233"
replace firm_id = "" if obs_id == "19291008000000000233"

preserve
keep if obs_id == "19291008000000000093"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19331008000000000069"
replace firm_id = "`new_firmid'" if obs_id == "19331008000000000069"

preserve
keep if obs_id == "19331008000000000152"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19291008000000000163"
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000163"

preserve
keep if obs_id == "19351008000000000026"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19351008000000000026"
replace firm_id = "`new_firmid'" if obs_id == "19351008000000000026"
replace establishment_id = "`new_estabid'" if obs_id == "19311008000000000025"
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000025"
replace establishment_id = "" if obs_id == "19291008000000000153"
replace firm_id = "" if obs_id == "19291008000000000153"

preserve
keep if obs_id == "19311008000000000022"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19331008000000000021"
replace firm_id = "`new_firmid'" if obs_id == "19331008000000000021"

preserve
keep if obs_id == "19351008000000000001"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19291008000000000260"
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000260"

preserve
keep if obs_id == "19331008000000000211"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19291008000000000253"
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000253"

preserve
keep if obs_id == "19351008000000000093"
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000103"

preserve
keep if obs_id == "19351008000000000092"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19291008000000000120"
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000120"

preserve
keep if obs_id == "19331008000000000057"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19291008000000000078"
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000078"
replace establishment_id = "" if obs_id == "19291008000000000083"
replace firm_id = "" if obs_id == "19291008000000000083"

preserve
keep if obs_id == "19331008000000000057"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19351008000000000180"
replace firm_id = "`new_firmid'" if obs_id == "19351008000000000180"

preserve
keep if obs_id == "19331008000000000206"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19351008000000000195"
replace firm_id = "`new_firmid'" if obs_id == "19351008000000000195"
replace establishment_id = "" if obs_id == "19311008000000000128"
replace firm_id = "" if obs_id == "19311008000000000128"

preserve
keep if obs_id == "19351008000000000149"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19331008000000000139"
replace firm_id = "`new_firmid'" if obs_id == "19331008000000000139"

preserve
keep if obs_id == "19291008000000000234"
local new_estabid = establishment_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == ""

preserve
keep if obs_id == "19311008000000000083"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19351008000000000069"
replace firm_id = "`new_firmid'" if obs_id == "19351008000000000069"
replace establishment_id = "`new_estabid'" if obs_id == "19331008000000000071"
replace firm_id = "`new_firmid'" if obs_id == "19331008000000000071"

preserve
keep if obs_id == "19311008000000000103"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19291008000000000123"
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000123"

preserve
keep if obs_id == "19351008000000000024"
local new_estabid = establishment_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19291008000000000029"
replace establishment_id = "`new_estabid'" if obs_id == "19311008000000000022"
replace establishment_id = "`new_estabid'" if obs_id == "19331008000000000021"

preserve
keep if obs_id == "19311008000000000093"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19291008000000000109"
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000109"

preserve
keep if obs_id == "19351008000000000075"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19331008000000000071"
replace firm_id = "`new_firmid'" if obs_id == "19331008000000000071"

preserve
keep if obs_id == "19331008000000000019"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19311008000000000018"
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000018"
replace establishment_id = "`new_estabid'" if obs_id == "19351008000000000020"
replace firm_id = "`new_firmid'" if obs_id == "19351008000000000020"
replace establishment_id = "`new_estabid'" if obs_id == "19291008000000000023"
replace firm_id = "`new_firmid'" if obs_id == "19291008000000000023"

//New firm and establishment IDs
replace establishment_id = "" if obs_id == "19291008000000000093"
replace firm_id = "" if obs_id == "19291008000000000093"
replace establishment_id = "" if obs_id == "19291008000000000166"
replace firm_id = "" if obs_id == "19291008000000000166"
replace establishment_id = "" if obs_id == "19291008000000000093"
replace establishment_id = "" if obs_id == "19331008000000000035"
replace establishment_id = "" if obs_id == "19291008000000000032"
replace firm_id = "" if obs_id == "19291008000000000032"

//Fill in missing values
foreach type in firm establishment{
	do "./Cleaning Scripts/General/gen_id" "1008" "`type'"
}

preserve
keep if obs_id == "19291008000000000093"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19311008000000000083"
replace firm_id = "`new_firmid'" if obs_id == "19311008000000000083"

preserve
keep if obs_id == "19331008000000000035"
local new_estabid = establishment_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "19351008000000000046"
