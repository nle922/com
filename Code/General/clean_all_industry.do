//this is template for building complete dataset for a particular industry including plant and firm links
clear

//set the path
*local dropbox_path = "C:/users/czv0008/Dropbox (Personal)/Great Depression/SES1459263"
//set industry number to clean
//local indnum = 101

args dropbox_path indnum

//set variable to uniquely identifier an observaiton wthin a year. This should be persistent so most likely z_imagenumber 
local local_identifier = "z_imagenumber"
//this is switch to force reclink to run links again even if match_clean results already exist
local redo_links = 0
//set list of variables to be cleaned up. Need to have cleaning script written in Variable Checking folder
local types_of_var_to_clean = "e00"

//global directories are $rootDir_code, $rootDir_dataStata, $data_dir
//Don't touch these
global rootDir_code = "`dropbox_path'/Cleaning Scripts"
global rootDir_dataStata = "`dropbox_path'/Stata Files"
global rootDir_data = "`dropbox_path'/Original Spreadsheets"
global rootDir_matching = "`dropbox_path'/Matching Files"
global rootDir_team = "`dropbox_path'/SES1459263 Team Folder"

//first clean industry-year Excel files
forvalues year = 1929(2)1935{
	di "working on `year'"
	//this is general cleaning script but will call an industry-specific do file if it exists
	do "$rootDir_code/General/clean_industry_year" "`indnum'" "`year'"
	//Append year and industry number to obs_id
	replace obs_id = year+"`indnum'"+obs_id
	save "$rootDir_dataStata/`year'/`indnum'/`indnum'_`year'", replace
}


//do establishment linking. 
local clean_links_exist = 1
forvalues year=1931(2)1935{
	//check if match _clean files already exist
	capture confirm file "$rootDir_matching/Establishments/`year'/`indnum'/match`year'_`indnum'_clean.dta"
	//if links don't exist, then run reclink and generate "plausible" matches. Will then need to recheck
	if (`redo_links' == 1 | _rc>0) {
		di "Clean match results do not exist for Industry `indnum' and Year `year'. Reclink will generate plausible links, but will need to clean these and rerun code to merge into dataset."
		qui do "$rootDir_code/Matching/match_establishments" "`indnum'" "`year'" "$rootDir_dataStata" "`local_identifier'"
		if _rc>0{
			di "Matching crashed on industry `indnum' and year `year'"
		}
		local clean_links_exist = 0
	}
}


//if clean matched links exist, read in that file and use all variables minus establishment_ID to link to original file
//Then append all the results together. Note will not create full dataset if don't have establishment links. This will just not run.
if `clean_links_exist' == 1{
	do "$rootDir_code/General/merge_estabs" "`indnum'" "`local_identifier'"
	
	clear
	forvalues year=1929(2)1935{
		append using "$rootDir_dataStata/`year'/`indnum'/`indnum'_`year'_clean"
	}
	
	//drop any observations with missing year
	drop if year==""
	//order the variables for ease of reading
	aorder *
	//only will save complete file if establishment links exist
	gen estabid_generated = "reclink"
	//Ensure establishment IDs are correctly formatted
	gen length_ind = length(z_indCode)
	replace establishment_id = z_indCode + establishment_id if substr(establishment_id,1,length_ind)~=z_indCode
	drop length_ind
	save "$rootDir_dataStata/Complete/`indnum'_all", replace
}

//merge in firm links if present. These will be hardcoded stata files with local_identifier a002_match and firmid_indnum
local firm_file = "$rootDir_matching/Firms/`indnum'/match_`indnum'_firm_clean.dta"
capture confirm file "`firm_file'"

//if the file does not exist, generate some plausible links
if _rc > 0 {
	do "$rootDir_code/Matching/match_firms" "`indnum'"
}
else {
	//merge in firmids
	do "$rootDir_code/General/merge_firms" "`indnum'"
	//note how firmids were created
	gen firmid_generated = "reclink"
	//order the variables
	aorder *
	//save the file
	save "$rootDir_dataStata/Complete/`indnum'_all", replace
}

//Final step: Check variables exist, impute values, and fix mistakes
use "$rootDir_dataStata/Complete/`indnum'_all", clear
di "Now checking and fixing variables"
do "$rootDir_code/Variable Checking/check_fix_variables" `indnum'

di "IF THE INDUSTRY IS FULLY CLEANED, ADD TO LIST IN BUILD_ALL.DO OF CLEANED INDUSTRIES!"
