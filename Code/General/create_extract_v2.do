//Create extract from V2 version of the data
local file_name = "CoM_workweek_v2"
local core_yes_no = 1
local varlist_extract = "e005s emh* ewemt* e004t"
local dropbox_path = "/Users/nlz/Dropbox/Grants/One Time/2015/NSF SES1459263"

//Create extract of V1 data
do "./Cleaning Scripts/General/create_extract" "`dropbox_path'" "`file_name'" `core_yes_no' "`varlist_extract'"

//Get list of variables in dataset to keep
local vars_to_keep = ""
foreach var of varlist *{
	local vars_to_keep = "`vars_to_keep' `var'"
}  
tostring *, force replace

//Merge with ICPSR version of V2 data to update variables 
merge 1:1 obs_id using "/Users/nlz/Dropbox/Grants/One Time/2015/NSF SES1459263/stata files/Extracts/CoM_v2", update replace  nogen
keep if _merge == 3
keep  `vars_to_keep' obs_id

save "`dropbox_path'/stata files/Extract/`file_name'", replace
