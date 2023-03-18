//Clean town names before CPP matching
replace ag002 = lower(ag002)

//Regularize first words
replace ag002 = regexr(ag002, "^mt.", "mount")
replace ag002 = regexr(ag002, "^mt ", "mount")
replace ag002 = regexr(ag002, "^st.", "saint")
replace ag002 = regexr(ag002, "^ft.", "fort")
replace ag002 = regexr(ag002, "fort.", "fort")
replace ag002 = regexr(ag002, "^st ", "saint ")

replace ag002 = regexr(ag002,"^no. ", "north ")
replace ag002 = regexr(ag002,"^n. ", "north ")
replace ag002 = regexr(ag002,"^no ", "north ")
replace ag002 = regexr(ag002,"^so. ", "south ")
replace ag002 = regexr(ag002,"^s. ", "south ")
replace ag002 = regexr(ag002,"^so ", "south ")
replace ag002 = regexr(ag002,"^w. ", "west ")
replace ag002 = regexr(ag002,"^e. ", "east ")

replace ag002 = upper(ag002)
local states = `""AL" "AK" "AZ" "AR" "CA" "CO" "CT" "DE" "District of Columbia" "FL" "GA" "IL" "IN" "IA" "KS" "KY" "LA" "ME" "MD" "MA" "MI" "MN" "MS" "MO" "NE" "NH" "NJ" "NY" "NC" "OH" "PA" "RI" "SC" "TN" "VT" "VA" "WI" "OR" "NM"  "WA" "WV"  "TX" "OK"  "ID" "MT"  "WY" "NV"  "ND" "SD""'
foreach state in `states'{
	replace ag002 = regexr(ag002, " `state'$","")
	replace ag002 = regexr(ag002, " `state'\.$","")
}

//Strip state names at end
local states = `""ALA" "ARK" "ARKANSAS" "COLO" "COLORADO" "CONNECTICUT" "CONN" "DEL" "FLA" "FLORIDA" "GEORGIA" "ILLINOIS" "ILL" "INDIANA" "IND" "IOWA" "KANS" "KANSAS" "KENTUCKY" "LOUISIANA" "MASS" "MICH" "MICHIGAN" "MINN" "MISS" "MISSISSIPPI" "MISSOURI" "NEBR" "N. H." "N. M." "N. J." "N. C." "N. D." "OHIO" "OKLA" "OKLAHOMA" "OREGON" "OREG" "PENNA" "PENNSYLVANIA" "R. I." "S. C." "S. D." "S. DAK." "TENN" "TEXAS" "TEX" "UTAH" "VIRGINIA" "WIS" "'
foreach state in `states'{
	replace ag002 = regexr(ag002, " `state'$","")
	replace ag002 = regexr(ag002, ", `state'$","")
	replace ag002 = regexr(ag002, " `state'\.$","")
}
replace ag002 = lower(ag002)

//get rid of parentheticals
replace a002 = regexr(a002, "\([A-Z a-z \ \-]+\)","")  //Doesn't work for some reason
//substitute all the numbers, commas, ?, periods, (), / with an empty string
replace ag002 = regexr(ag002, "[0-9,\?\.\(\)/]", "")

local words_to_delete = `""police jury" "justice ward" "court house" "militia district" "civil district" "justice precinct" "election district" "undetermined" "not stated" " village" "tract" " ward" "assembly district" "district" "no\." "precinct" "subdivision" "beat" "plantation" "census designated place" "post office" "township of " "town of " "borough of " "city of ""'

foreach word in `words_to_delete'{
	replace ag002 = subinstr(ag002, "`word'","", 1)
}
      
//discard these words also if they are at the very beginning of the string followed by a space
// ag002 = re.sub('^ward\s" "', ag002)
// ag002 = re.sub('^township\s" "', ag002)
//
// # e.g., or east side, or eastern side followed by a space or at the end of the string
// cardinal_points = ['east" "west" "south" "north']
// for point in cardinal_points:	
// 	ag002 = re.sub(point + '(\sside|ern\sside)(\s|$)" "', ag002)

//substitute multiple spaces with just one, also get rid of spaces at the beginning and end of the string
replace ag002 = regexr(ag002,",$", "")
replace ag002 = regexr(ag002,"\.$", "")
replace ag002 = subinstr(ag002,"  ", " ", .)
replace ag002 = subinstr(ag002,"   ", " ", .)
replace ag002 = trim(ag002)
replace ag002 = ustrtrim(ag002)
replace ag002 = upper(ag002)

//Hardcode Dakota fix
gen flag = ag001 == "Dakota" & ag002 == "BISMARCK" & ag003=="North Dakota"
replace ag001 = "North Dakota" if flag==1
replace ag003 = "Burleigh" if flag==1
drop flag

//Recode State FIPS to fix some missing.
do "./Cleaning Scripts/Regional/trans_State_StateAbbrev" ag001 ag001_abrev
//now translate to FIPS codes
do "./Cleaning Scripts/Regional/trans_StateAbbrev_FIPS" ag001_abrev ag001_fips_new
replace ag001_fips = ag001_fips_new if ag001_fips == .
drop ag001_fips_new ag001_abrev
//Hardcode DC fix
replace ag001_fips = 11 if ag001=="District of Columbia"

//Recode County FIPS to fix some missing.
global rootDir_code = "./Cleaning Scripts"
qui do "./Cleaning Scripts/Regional/trans_County_to_FIPS" ag003_fips_new ag003 ag001 	
replace ag003_fips = ag003_fips_new if ag003_fips == ""
drop ag003_fips_new
