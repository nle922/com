//regularizes names before running reclink. 

//Other possible fixes
//1. Replace Letters for Cardinal Directions
//2. Replace all \d{2}Th with String

//Args: vars_to_match - list of fuzzy variables to match on, required_vars - list of variables to exactly match on
args vars_to_match required_vars

//Make upper case
foreach i in `vars_to_match'{
	replace `i' = upper(`i')
}
foreach i in `required_vars'{
	replace `i' = upper(`i')
}

//regularize establishment names
capture confirm variable a001
if _rc==0{
	replace a001 = regexr(a001, "CO.$", "COMPANY")
	replace a001 = regexr(a001, "INC.$", "INCORPORATED")
	replace a001 = regexr(a001, "CORP.$", "CORPORATION")
	replace a001 = regexr(a001, "^THE", "")
	replace a001 = subinstr(a001, "&", "AND", .)
}

//regularize addresses
capture confirm variable ag004
if _rc==0{
	replace ag004 = subinstr(ag004, "1ST", "FIRST", .)
	replace ag004 = subinstr(ag004, "2ND", "SECOND", .)
	replace ag004 = subinstr(ag004, "3RD", "THIRD", .)
	replace ag004 = subinstr(ag004, "4TH", "FOURTH", .)
	replace ag004 = subinstr(ag004, "4TH", "FIFTH", .)
	replace ag004 = subinstr(ag004, "6TH", "SIXTH", .)
	replace ag004 = subinstr(ag004, "7TH", "SEVENTH", .)
	replace ag004 = subinstr(ag004, "8TH", "EIGHTH", .)
	replace ag004 = subinstr(ag004, "9TH", "NINTH", .)
	replace ag004 = subinstr(ag004, "10TH", "TENTH", .)
	
	replace ag004 = regexr(ag004, "ST.$", "STREET")
	replace ag004 = regexr(ag004, "AVE.$", "AVENUE")
	replace ag004 = regexr(ag004, "BLVD.$", "BOULEVARD")
}

//check that county & state exist and then map all New York City counties to one name
capture confirm variable ag003
local ag003_rc = _rc
capture confirm variable ag001
if `ag003_rc'==0 & _rc==0{
	replace ag003="NEW YORK" if (ag003="BRONX" | ag003="KINGS" | ag003="QUEENS") & ag001=="NEW YORK"
}

//strip out "bad" characters that reclink will die on 
foreach i in `vars_to_match'{
	egen `i'_sieve = sieve(`i'), keep(a n)
	rename `i' `i'_original
	rename `i'_sieve `i'
}
