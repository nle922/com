/*Code to automatically link establishments over time using reclink. This will generate a provisional set of links _matchResults. Those should be manually checked with results saved with _clean suffix. That dataset should only have `local_identifier' (The identifier for the current year)
and `local_identifier'_back (the ientifier from the preceding year). Right now, we force each plant at time t+1 to have at most one matching plant at time t by in certain cases, dropping "good" matches that aren't the best one. However, this does not 
ensure the reverse that each plant at time t only matches to at most $t+1$ plant. This will rquire simply hardcoding in some of these cases. 
*/

args indnum year write_dir local_identifier

//parameters for reclink
//minimum matchscore to keep
local good_match = .85
//variables to fuzzy match on: right now, block on state, then match on county town, name of plant, and address
local vars_to_match "a001 ag003 ag004"
//weights for these variables. Note that this needs to have the same length as `vars_to_match'
local weights_vars "10 7 5"
//require matching on this exactly
local required_vars "ag001"

//we match "forward" from year to year+2
local year_back = `year'-2

//make necessary directories if not present
capture mkdir "$rootDir_matching/Establishments/`year'/`indnum'"

//create small file of matching criteria for `year_back'
use "`write_dir'/`year_back'/`indnum'/`indnum'_`year_back'", clear

//regularize names to help with matching
capture do "$rootDir_code/General/regularize_names" "`vars_to_match'" "`required_vars'"

rename `local_identifier' `local_identifier'_back
keep  `vars_to_match' `required_vars' `local_identifier'_back
tostring *, replace force
gen dummy_ID_back = _n

tempfile matchCriteria
save "`matchCriteria'", replace 

//now create small matching dataset of current year
use "`write_dir'/`year'/`indnum'/`indnum'_`year'", clear

//regularize names to help with matching
capture do "$rootDir_code/General/regularize_names" "`vars_to_match'" "`required_vars'"

keep `vars_to_match' `required_vars' `local_identifier'
tostring `vars_to_match', replace force
gen dummy_ID = _n

//do the matching with reclink
reclink2 `vars_to_match' `required_vars' using  "`matchCriteria'", required(`required_vars') idu(dummy_ID_back) idm(dummy_ID) wmatch(`weight_vars')  minscore(`good_match') gen(matchscore) npairs(3) manytoone

//This will try to make matches unique 

//Deal with non-unique matches by just taking the one with the highest matchscore
bysort dummy_ID: egen max_score = max(matchscore)
local tol = 10^(-3)
keep if abs(matchscore-max_score)<`tol' | matchscore==.
//if more than two possible matches with same match score, just pick one
bysort dummy_ID: egen seq_ID = seq()
keep if seq_ID==1

//drop the observations from the using dataset that doesn't match
drop if _merge==2
drop dummy_ID dummy_ID_back seq_ID max_score matchscore _merge
//this is for checking that file is well formatted for merging back in.
duplicates tag `local_identifier', gen(dup_tag_`local_identifier')

order z_imagenumber_*
label data "Fuzzy Vars: `vars_to_match' with weights `weights_vars', Exact Vars: `required_vars'"

save "$rootDir_matching/Establishments/`year'/`indnum'/match`year'_`indnum'", replace

//export observations from `year_back' to aid in checking the matched results
keep `local_identifier'_back
merge m:1 `local_identifier'_back using "`matchCriteria'"
keep if _merge==2
export excel `vars_to_match' `required_vars' `local_identifier'_back using "$rootDir_matching/Establishments/`year'/`indnum'/unmatched_`year_back'", replace firstrow(variables)
