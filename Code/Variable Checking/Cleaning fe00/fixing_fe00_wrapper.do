//this runs all the cleaning scripts for f* variables. 
//Uses globals that are used in the cleaning files. This should work for any industry to be cleaned.
//NLZ: Right now, the code is a bit crude in that it does not allow for the type of cleaning scripts to be run to depend on the industry
//It also does not allow for the list of variables with missing values to be filled in with 0s to depend on the industry. 

//list of directories where to look for files to clean up
//indnum argument allows you to select for only certian industries to fix up
args indnum type

//set variable stub to clean up
local base_var ="fe00"

//list of variables to fill in missing values with 0s.
//This is based on the missings_`base_var'_with_explanations dta file
//This can be changed depending on the set of variables to be fixed.
local missings_list = ""

//set default here. all variables with `base_var' prefix
if "`missings_list'"==""{
	local missings_list ="`base_var'*"
}

//list of cleaning scripts that are to be run
local types_of_cleaning = "fe002c_1929"

//set default. glob the fix_* files and then run them all. 
//Be careful with this if cleaning scripts need to be run in some particular order
if "`types_of_cleaning'"==""{
	cd "$rootDir_code/Variable Checking/Cleaning `base_var'"
	qui fs "fix_`base_var'*.do"
	local types_of_cleanings = "`f(files)'"
}

//file to adjust
local file_to_adjust = "$rootDir_dataStata/`type'/Complete/`indnum'_all"

//run cleaning scripts
foreach type_of_cleaning in `types_of_cleaning'{
	di "running cleaning script `type_of_cleaning'"
	do "$rootDir_code/Variable Checking/Cleaning `base_var'/fix_`type_of_cleaning'.do" "`file_to_adjust'"
}
	
//fill in missing values with 0s 
foreach var_loop of varlist `missings_list'{	
	di "fixing missings for variable `var_loop'"
	qui do "$rootDir_code/Variable Checking/fix_correct_missing.do" "`file_to_adjust'" `var_loop'
}

//relabel variables to make sure they are there
do "$rootDir_code/Label/label_ck_vars"
