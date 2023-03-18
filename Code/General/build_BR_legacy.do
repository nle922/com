//super script to combine legacy and BR inds
clear
 
//set name of dropbox (absolute) path here
*local dropbox_path = "C:/Users/czv0008/Dropbox (Personal)/Great Depression/SES1459263"

//this allows you to run this as a function
args dropbox_path

global rootDir = "`dropbox_path'"									//location of path to all SES files
global rootDir_code "$rootDir/Cleaning Scripts"						//location of cleaning scripts and matching code
global rootDir_dataStata "$rootDir/Stata Files"						//location of stata files
global rootDir_dataLegacy "$rootDir_dataStata/Legacy"				//location of cleaned legacy files
global rootDir_dataBR "$rootDir_dataStata/BR"						//location of cleaned BR data
global rootDir_sheets "$rootDir/Original Spreadsheets"				//location of original spreadsheets for legacy + BR
global rootDir_dataDeprecated "$rootDir_dataStata/Deprecated"		//Older data for ice industry and concrete
global rootDir_matching "$rootDir/Matching Files"					//location of matching files
global rootDir_team "$rootDir/SES1459263 Team Folder"

//Reconstruct legacy data from original spreadsheets. Right now this does not include timber and alcohol.
local Legacy_inds "ag_imps bone_black cane_sugar cement concrete ice macaroni malt radio sugar_refining 1401"		//double check 1401
local BR_inds "216 237 312 631 705 803 1008 1110 1112 1407_1408 1608"			

//local Legacy_inds "ice"
//local BR_inds ""	



//do some rebuilding and renaming of legacy industries
//estabIDs and firmIDs where available are pulled in. 
foreach ind in `Legacy_inds'{	
	di "Building Legacy Industry `ind'"
    qui do "$rootDir_code/Wrappers/Legacy/CleanAll/clean_all_`ind'"
	di "Renaming Legacy industry `ind'"
	qui do "$rootDir_code/Wrappers/Legacy/Rename/rename_`ind'" 	
}


//clean all BR datasets. Establishment matching is done within those wrapper scripts. See notes for how we generated those links.
//Firm matching is still a work in progress for these industries unless links already constructed by BR
cd "$rootDir_code/Wrappers/BR"
qui fs "*.do"
foreach i in `r(files)'{
	di "Running `i'"
	qui do "$rootDir_code/Wrappers/BR/`i'"
}


//read in the special codes for data (such as on schedule but not transcribed
qui do "$rootDir_code/Variable Checking/gen_ind_flags.do"


//check and fix all variables in these groups of industries
di "Now fixing and cleaning variables"
foreach type in Legacy BR{
	foreach indnum in ``type'_inds' {
		di "Checking industry `indnum'"
		qui do "$rootDir_code/Variable Checking/check_fix_variables" `indnum' `type'
	}
}