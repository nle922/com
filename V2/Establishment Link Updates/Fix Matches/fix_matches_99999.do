//Code to fix bad establishment matches in indnum==99999
preserve 
keep if obs_id == "1929RADIO000000000123"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1935RADIO000000000076"
replace firm_id = "`new_firmid'" if obs_id == "1935RADIO000000000076"
replace establishment_id = "" if obs_id == "1929RADIO000000000122"
replace firm_id = "" if obs_id == "1929RADIO000000000122"

preserve 
keep if obs_id == "1931RADIO000000000161"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1929RADIO000000000219"
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000219"
replace establishment_id = "`new_estabid'" if obs_id == "1933RADIO000000000100"
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000100"
replace establishment_id = "" if obs_id == "1929RADIO000000000314"
replace firm_id = "" if obs_id == "1929RADIO000000000314"
replace establishment_id = "" if obs_id == "1931RADIO000000000180"
replace firm_id = "" if obs_id == "1931RADIO000000000180"

preserve 
keep if obs_id == "1929RADIO000000000196"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1931RADIO000000000102"
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000102"

preserve 
keep if obs_id == "1931RADIO000000000113"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1933RADIO000000000067"
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000067"
replace establishment_id = "`new_estabid'" if obs_id == "1935RADIO000000000140"
replace firm_id = "`new_firmid'" if obs_id == "1935RADIO000000000140"

preserve 
keep if obs_id == "1933RADIO000000000113"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1931RADIO000000000181"
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000181"

preserve 
keep if obs_id == "1929RADIO000000000316"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1933RADIO000000000112"
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000112"

preserve 
keep if obs_id == "1929RADIO000000000302"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1931RADIO000000000182"
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000182"
replace establishment_id = "" if obs_id == "1931RADIO000000000183"
replace firm_id = "" if obs_id == "1931RADIO000000000183"
replace establishment_id = "" if obs_id == "1929RADIO000000000130"
replace firm_id = "" if obs_id == "1929RADIO000000000130"

preserve 
keep if obs_id == "1929RADIO000000000276"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1931RADIO000000000174"
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000174"
replace establishment_id = "`new_estabid'" if obs_id == "1935RADIO000000000135"
replace firm_id = "`new_firmid'" if obs_id == "1935RADIO000000000135"
replace establishment_id = "`new_estabid'" if obs_id == "1933RADIO000000000108"
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000108"

preserve 
keep if obs_id == "1929RADIO000000000310"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1931RADIO000000000184"
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000184"

preserve 
keep if obs_id == "1929RADIO000000000308"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1933RADIO000000000115"
replace firm_id = "`new_firmid'" if obs_id == "1933RADIO000000000115"

preserve 
keep if obs_id == "1931RADIO000000000177"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1929RADIO000000000304"
replace firm_id = "`new_firmid'" if obs_id == "1929RADIO000000000304"

preserve 
keep if obs_id == "1929RADIO000000000316"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1931RADIO000000000180"
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000180"
replace establishment_id = "" if obs_id == "1929RADIO000000000312"
replace firm_id = "" if obs_id == "1929RADIO000000000312"
replace establishment_id = "" if obs_id == "1929RADIO000000000302"
replace firm_id = "" if obs_id == "1929RADIO000000000302"

//Fill in missing values
foreach type in firm establishment{
	do "./Cleaning Scripts/General/gen_id" "99999" "`type'"
}

preserve 
keep if obs_id == "1929RADIO000000000302"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1931RADIO000000000182"
replace firm_id = "`new_firmid'" if obs_id == "1931RADIO000000000182"
