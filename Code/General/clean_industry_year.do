//This is template for cleaning up particular industry-year pair

//Global variables: rootDir_code, rootDir_data, rootDir_dataStata
//Local variables: indnum, year
args indnum year

local indnum_original = "`indnum'"
//This extracts the last two digits of the year, which we use in loading the Excel file
if strlen("`indnum'")==3{
	local indnum = "0`indnum'"
}
local subyear = substr("`year'", 3, 2)

//Spreadsheets should have following naming convention: `indnum'`yearA0.xls with sheet with data having the same name
import excel "$rootDir_data/`year'/`indnum_original'/`indnum'`subyear'A0.xlsx", allstring sheet("`indnum'`subyear'A0") cellrange(A4) clear

//Check data signatures
//This code does not work. There are strange Unicode Encoding Errors.
// local filename = "$rootDir_code/Datasignatures/`indnum'`year'.dtasig "
// capture confirm file "`filename'"
// if _rc>0{
// 	di "Did not find file"
// 	datasignature set, saving("`filename'")
// }
// datasignature confirm using "`filename'"

//drop first observation which is actually variable names and any observations that are all missing for some reason 
drop in 1

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//for each year-industry, should have rename file that does renaming of variables unique to that pair
do "$rootDir_code/`year'/rename_common_`year'"

//put renaming of specific variables for particular industry here
do "$rootDir_code/`year'/clean_`indnum_original'_`year'"

//rename other products consistently
do "$rootDir_code/General/rename_otherProducts"

//this will translate to CK variable naming convention if necessary
do "$rootDir_code/General/basic_rename.do"

//Add year and indcode variables
capture drop year
gen year = `year'

//make sure indCode is correct
capture drop z_indCode
capture gen z_indCode = "`indnum_original'"

//tostring all variables for consistent appending
tostring *, force replace

//check if proper subfolders exist, make if not, and then save
capture mkdir "$rootDir_dataStata/`year'"
capture mkdir "$rootDir_dataStata/`year'/`indnum_original'"
save "$rootDir_dataStata/`year'/`indnum_original'/`indnum_original'_`year'", replace

//Look for "B schedules" and load if present
capture import excel "$rootDir_data/`year'/`indnum_original'/`indnum'`subyear'B0.xlsx", allstring sheet("`indnum'`subyear'B0") cellrange(A4) clear

if _rc==0{
	drop in 1
	missings dropobs, force

	//Drop pure duplicates
	duplicates drop *, force
	foreach var of varlist *{
		capture confirm strL variable `var'
		if !_rc{
			recast str2045 `var', force 
		}
	}
	//Create persistent ID assuming spreadsheets are not changed
	hashsort *, sortgen gen(ID_num) compress 
	gen obs_id = string(ID_num, "%011.0f")
	replace obs_id = obs_id +"B"
	drop ID_num
	
	//for each year-indnustry, should have rename file that does renaming of variables unique to that pair
	do "$rootDir_code/`year'/rename_common_`year'_formB"
	capture gen year = `year'
	capture gen x4_form_B = 1
	label var x4_form_B "Flag for Form B (in 1929, this is Census of Mines schedule)?"
	
	//rename other products consistently
	do "$rootDir_code/General/rename_otherProducts"
	//this will translate to CK variable naming convention if necessary
	do "$rootDir_code/General/basic_rename.do"

	//tostring all variables for consistent appending
	tostring *, force replace	
	//make sure indCode is correct
	capture drop z_indCode
	capture gen z_indCode = "`indnum_original'"
	//append to data from A schedules
	append using "$rootDir_dataStata/`year'/`indnum_original'/`indnum_original'_`year'"
	//save the resulting file
	save "$rootDir_dataStata/`year'/`indnum_original'/`indnum_original'_`year'", replace
}

use "$rootDir_dataStata/`year'/`indnum_original'/`indnum_original'_`year'", clear

//label the CK variables
qui do "$rootDir_code/Label/label_ck_vars.do"

//label industry-specific but year common variables e.g., output variables
qui do "$rootDir_code/Label/label_`indnum_original'_vars"

//Clean up the state variable name
qui do "$rootDir_code/General/clean_state_name.do" "ag001" "ag001"

//Clean up the county variable name.
qui do "$rootDir_code/General/clean_county_name.do" "ag003" "ag003" "ag001" "ag002"

//check if there are counties that are not in full list of state-county pairs
qui do "$rootDir_code/Variable Checking/check_county_pairs"

//check for whether there are "Mines" schedules
qui do "$rootDir_code/Variable Checking/gen_mines_variable"

//order variable names
aorder *

save "$rootDir_dataStata/`year'/`indnum_original'/`indnum_original'_`year'", replace
