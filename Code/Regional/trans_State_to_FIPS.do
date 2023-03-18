//this generates state FIPS codes from full state names

//state_FIPS-variable to create, state-existing variable with names of variables
args state_FIPS state

//tempvar to hold the state name abbreviations
tempvar state_abbrev

//first translate to state abbrevs
do "$rootDir_code/Regional/trans_State_StateAbbrev" `state' `state_abbrev'

//now translate to FIPS codes
do "$rootDir_code/Regional/trans_StateAbbrev_FIPS" `state_abbrev' `state_FIPS' 

label var `state_FIPS' "State FIPS Code"
