*NLZ: Program to create and clean the 1933 timber data
//Globals referenced: rootDir_sheets, rootDir_dataLegacy

*Preliminaries
clear
capture log close
set more off

local states1 "CA ID OR SD"
local states2 "PA NY NH MI MN ME VT WI" //these states ones with Form B

foreach i in `states1'  `states2'{
	//read in the spreadsheet
	import excel "$rootDir_sheets/1933/311/1933_timber_`i'.xlsx", sheet("Sheet1") allstring clear
	forvalues j=1/3{
		drop in 1
	}
	//rename the variables
	qui do "$rootDir_code/1933/rename_timber_1933_vars.do"
	tempfile save`i'
	save "`save`i''"
}

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

clear
foreach i in `states1' `states2'{
	//append all the temp files together
	append using "`save`i''"
}
//save the result which should be all the A forms
save "$rootDir_dataLegacy/1933/timber_1933_clean", replace
 
clear
foreach i in `states2'{
	//now load in all the B sheet data
	import excel "$rootDir_sheets/1933/311/1933_timber_`i'.xlsx", sheet("1933_Form B") allstring clear 
	forvalues j=1/4{
		drop in 1
	}
	//rename the variables
	qui do "$rootDir_code/1933/rename_timber_1933_varsB.do"
	tempfile save`i'
    save "`save`i''", replace
}

use "$rootDir_dataLegacy/1933/timber_1933_clean", replace
//append B sheet data to existing dataset of timber data
foreach i in `states2'{
	append using "`save`i''"
}

capture drop year
capture gen year =  1933
//rename "common" set of variables for labeling 
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistency in appending later
tostring *, replace force

save "$rootDir_dataLegacy/1933/timber_1933_clean", replace
