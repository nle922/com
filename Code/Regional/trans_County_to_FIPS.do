//countyfips - variable to create with county fips code
//state - variable of state names
//county - variable of county names
args countyfips clean_county clean_state 	
		
//generate county variable
capture gen `countyfips' = ""
//if variable already exists, overwrite it
if _rc>0{
	replace `countyfips' = ""
}
		
//make sure properly capitalized
foreach var_to_read in `county' `state'{
	tempvar clean_`var_to_read'
	gen `clean_`var_to_read'' = proper(`var_to_read') 
}
		
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Alabama.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Alaska.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Arizona.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Arkansas.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_California.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Colorado.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Connecticut.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Delaware.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_District_of_Columbia.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Florida.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Georgia.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Hawaii.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Idaho.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Illinois.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Indiana.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Iowa.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Kansas.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Kentucky.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Louisiana.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Maine.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Maryland.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Massachusetts.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Michigan.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Minnesota.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Mississippi.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Missouri.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Montana.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Nebraska.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Nevada.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_New_Hampshire.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_New_Jersey.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_New_Mexico.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_New_York.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_North_Carolina.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_North_Dakota.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Ohio.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Oklahoma.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Oregon.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Pennsylvania.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Rhode_Island.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_South_Carolina.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_South_Dakota.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Tennessee.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Texas.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Utah.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Vermont.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Virginia.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Washington.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_West_Virginia.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Wisconsin.do" `countyfips' `clean_county' `clean_state'
do "$rootDir_code/Regional/State_FIPS/State_FIPS_Wyoming.do" `countyfips' `clean_county' `clean_state'

label var `countyfips' "County FIPS code"
