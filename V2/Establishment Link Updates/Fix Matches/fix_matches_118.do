//Code to fix bad establishment matches in indnum==118
preserve
keep if obs_id == "1929118000000000959"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1933118000000000498"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000498"
replace establishment_id = "`new_estabid'" if obs_id == "1935118000000000741"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000741"

preserve
keep if obs_id == "1931118000000000263"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1935118000000000258"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000258"

preserve
keep if obs_id == "1935118000000002078"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1929118000000002752"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000002752"
replace establishment_id = "`new_estabid'" if obs_id == "1931118000000002419"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000002419"

preserve
keep if obs_id == "1935118000000002271"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1931118000000002633"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000002633"
replace establishment_id = "`new_estabid'" if obs_id == "1933118000000001230"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000001230"
replace establishment_id = "`new_estabid'" if obs_id == "1929118000000002968"
replace firm_id = "`new_firmid'" if obs_id == "1929118000000002968"

preserve
keep if obs_id == "1935118000000002406"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1931118000000002749"
replace firm_id = "`new_firmid'" if obs_id == "1931118000000002749"

preserve
keep if obs_id == "1931118000000002755"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1933118000000001314"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000001314"
replace establishment_id = "`new_estabid'" if obs_id == "1935118000000002414"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000002414"

preserve
keep if obs_id == "1929118000000002993"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931118000000002607"

preserve
keep if obs_id == "1933118000000000001"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931118000000002586"

preserve
keep if obs_id == "1929118000000000941"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace firm_id = "`new_firmid'" if obs_id == "1931118000000000870"
replace establishment_id = "`new_estabid'" if obs_id == "1935118000000000724"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000000724"
replace establishment_id = "`new_estabid'" if obs_id == "1933118000000000488"
replace firm_id = "`new_firmid'" if obs_id == "1933118000000000488"

preserve
keep if obs_id == "1929118000000002377"
local new_estabid = establishment_id in 1
local new_firmid = firm_id in 1
restore
replace establishment_id = "`new_estabid'" if obs_id == "1935118000000001779"
replace firm_id = "`new_firmid'" if obs_id == "1935118000000001779"

//New firm and establishment IDs
replace establishment_id = "" if obs_id == "1929118000000002928"
replace firm_id = "" if obs_id == "1929118000000002928"

//Fill in missing values
foreach type in firm establishment{
	do "./Cleaning Scripts/General/gen_id" "118" "`type'"
}
