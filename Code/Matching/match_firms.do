//This code generates groups of establishments within an industry. It first appends all the years of data together. 
//It then uses the command strgroup, which scales in proportion to the number of obs squared. So be careful with large datasets. 
//Note that strgroup is transitive so if A matches to B and B matches to C, then A matches to C. This can tend to generate too large of groups so want to keep the treshold low.
//The file: match_`indnum'_firm will only have the a002_match and the firmid_`indnum'. A blank value of a002_match will get a missing value for the firmid_`idnum'

//arguments: indnum -industry, type - BR or Legacy
args indnum type

//set value for threshold to declare a match in strgroup
local threshold = 2/10

//now load and append all the years
//Note that this requires `indnum'_all to exixt
use "$rootDir_dataStata/`type'/Complete/`indnum'_all", clear

gen a002_match = a002
//regularize names to help with matching
do "$rootDir_code/Matching/Regularize/regularize_namesFirm_`indnum'" "a002_match" "a001"

duplicates drop a002_match, force
//group owner names to guess at "firms" within a year. 
//Could remove duplicates on `owner_name' to speed up. Then merge results back in with full dataset
strgroup a002_match, generate(firmid_`indnum') threshold(`threshold') force

keep a002_match firmid_`indnum'

//save and then merge in based on a002_match
capture mkdir "$rootDir_matching/Firms/`indnum'"
save "$rootDir_matching/Firms/`indnum'/match_`indnum'_firm.dta", replace
