//merge in clean firmids file

//argument is industry number we are working with
args indnum

//generate firm file name
local firm_file = "$rootDir_matching/Firms/`indnum'/match_`indnum'_firm_clean.dta"

//generate the "match" version of a002
gen a002_match = a002
//regularize firm names to ensure matching to firmIDs is correct
do "$rootDir_code/Matching/Regularize/regularize_namesFirm_`indnum'" "a002_match" "a001"
capture drop _merge //this should be taken out once the establishment matching files have been cleaned up
//merge with single file for all owner names
merge m:1 a002_match using "`firm_file'", nogen
	
//these next few lines handles the issue with firmids == . that end up with same recoded value
drop a002_match
qui sum firmid_`indnum'
//make missing firmids unique
replace firmid_`indnum' = `r(max)'+_n if firmid_`indnum'==.
tempfile firmid_matching_interim
save "`firmid_matching_interim'", replace

//keep just the existing industry IDs
keep firmid_`indnum'
//drop down to unique values of firmid
duplicates drop firmid_`indnum', force
//recode the firmids
do "$rootDir_code/General/gen_ID" "firmid_`indnum'" "firm"
//trim some leading characters from firm_ID to get back to our idiom
replace firm_id = substr(firm_id, 8, .)
//merge back in the data
merge 1:m firmid_`indnum' using "`firmid_matching_interim'", nogen
