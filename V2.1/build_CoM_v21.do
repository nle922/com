//CoM V2.1 - Revision of V2 data as posted to ICPSR

use "./SES1459263 Team Folder/V2/CoM_v2", replace
//Check data signature matches V2 dataset
datasignature confirm 

//Prepare CPP data for town merging. Only needs to be once. 
//do "./SES1459263 Team Folder/V2/Geography Updates/prepare_CPP_data.do"

//Fixes from Holt
do "./SES1459263 Team Folder/V2.1/holt_fixes" 

//Match to CPP V2
do "./SES1459263 Team Folder/V2/Geography Updates/match_CPP"

//Fixes based on Ice and Refrigeration
do "./SES1459263 Team Folder/V2.1/post_collapse_firmid_fixes_119_ice_and_refrigeration"

//Final cleanup
rename *, lower
compress
tostring *, replace force
aorder *
drop uag002 _merge matchscore
label var ag003_fips_cpp "County FIPS (CPP)"
label var establishment_id_v1 "Establishment ID (V1)"
label var place_cpp "Place (CPP)"

datasignature set, reset
save "./Stata Files/Extracts/CoM_v21", replace
