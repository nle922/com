//this translates from state abbreviations to fips codes. This will overwrite exists `state_fips' variable
	
//state_fips - variable to create, stateabv - variable of state abbrevs
args stateabv state_fips

//try dropping state_fips if already exists
capture confirm variable `state_fips', exact
if _rc==0{
	drop `state_fips'	
}
gen `state_fips' = .
	
quietly replace `state_fips' = 1 if `stateabv'=="AL"
quietly replace `state_fips' = 2 if `stateabv'=="AK"
quietly replace `state_fips' = 4 if `stateabv'=="AZ"
quietly replace `state_fips' = 5 if `stateabv'=="AR"
quietly replace `state_fips' = 6 if `stateabv'=="CA"
quietly replace `state_fips' = 8 if `stateabv'=="CO"
quietly replace `state_fips' = 9 if `stateabv'=="CT"
quietly replace `state_fips' = 10 if `stateabv'=="DE"
quietly replace `state_fips' = 11 if `stateabv'=="District of Columbia"
quietly replace `state_fips' = 12 if `stateabv'=="FL"
quietly replace `state_fips' = 13 if `stateabv'=="GA"
quietly replace `state_fips' = 17 if `stateabv'=="IL"
quietly replace `state_fips' = 18 if `stateabv'=="IN"
quietly replace `state_fips' = 19 if `stateabv'=="IA"
quietly replace `state_fips' = 20 if `stateabv'=="KS"
quietly replace `state_fips' = 21 if `stateabv'=="KY"
quietly replace `state_fips' = 22 if `stateabv'=="LA"
quietly replace `state_fips' = 23 if `stateabv'=="ME"
quietly replace `state_fips' = 24 if `stateabv'=="MD"
quietly replace `state_fips' = 25 if `stateabv'=="MA"
quietly replace `state_fips' = 26 if `stateabv'=="MI"
quietly replace `state_fips' = 27 if `stateabv'=="MN"
quietly replace `state_fips' = 28 if `stateabv'=="MS"
quietly replace `state_fips' = 29 if `stateabv'=="MO"
quietly replace `state_fips' = 31 if `stateabv'=="NE"
quietly replace `state_fips' = 33 if `stateabv'=="NH"
quietly replace `state_fips' = 34 if `stateabv'=="NJ"
quietly replace `state_fips' = 36 if `stateabv'=="NY"
quietly replace `state_fips' = 37 if `stateabv'=="NC"
quietly replace `state_fips' = 39 if `stateabv'=="OH"
quietly replace `state_fips' = 42 if `stateabv'=="PA"
quietly replace `state_fips' = 44 if `stateabv'=="RI"
quietly replace `state_fips' = 45 if `stateabv'=="SC"
quietly replace `state_fips' = 47 if `stateabv'=="TN"
quietly replace `state_fips' = 50 if `stateabv'=="VT"
quietly replace `state_fips' = 51 if `stateabv'=="VA"
quietly replace `state_fips' = 55 if `stateabv'=="WI"
quietly replace `state_fips' = 41 if `stateabv'=="OR" 
quietly replace `state_fips' = 35 if  `stateabv'=="NM"  
quietly replace `state_fips' = 53 if `stateabv'=="WA" 
quietly replace `state_fips' = 54 if `stateabv'=="WV"  
quietly replace `state_fips' = 48 if `stateabv'=="TX" 
quietly replace `state_fips' = 40 if `stateabv'=="OK"  
quietly replace `state_fips' = 16 if `stateabv'=="ID" 
quietly replace `state_fips' = 30 if `stateabv'=="MT"  
quietly replace `state_fips' = 16 if `stateabv'=="ID" 
quietly replace `state_fips' = 56 if `stateabv'=="WY"  
quietly replace `state_fips' = 32 if `stateabv'=="NV"  
quietly replace `state_fips' = 15 if `stateabv'=="HI"  
quietly replace `state_fips' = 38 if `stateabv'=="ND"  
quietly replace `state_fips' = 46 if `stateabv'=="SD"  
quietly replace `state_fips' = 49 if `stateabv'=="UT"    
