//Create extract of industry dataset, if extract then name variables
//Note 1: dropbox_path has to be an absolute path. 
//Note 2: output_name should just be the file name. The code writes to a particular directory.
//Note 3: core_yes_no is a binary for whether to include the core variables. 
//Note 4: varlist_extract is an additional list of variables to keep.
args dropbox_path output_name core_yes_no varlist_extract

clear
set more off
capture log close

//These shouldn't be touched
global rootDir = "`dropbox_path'"	//location of top folder for SES project
global rootDir_dataStata "$rootDir/Stata Files"	//location of complete newly collected data
global rootDir_dataLegacy "$rootDir_dataStata/Legacy"	//location of cleaned legacy files
global rootDir_dataBR "$rootDir_dataStata/BR"	//location of cleaned BR data
global rootDir_code "$rootDir/Cleaning Scripts/"	//location of cleaning scripts
global rootDir_write "$rootDir/Stata Files/Extracts"	//location to write final dataset to
global rootDir_team "$rootDir/SES1459263 Team Folder"	//Location of notes. probably a better place for this

//Collect variable list if collecting "core_variables"
if `core_yes_no' == 1{
	tempfile core_variables				//Spreadsheet listing what variables are "core" for each year
	import excel "$rootDir_team/variables_censusData.xls", sheet("Sheet1") cellrange(A4:G225) clear
	rename A ck_varname
	rename B var_description
	rename C present_1929
	rename D present_1931
	rename E present_1933
	rename F present_1935
	rename G notes
	save `core_variables', replace

	//Create list of core variables for each year as a local
	forvalues y = 1929(2)1935{
		use `core_variables', clear
		keep if present_`y' == "x" & ck_varname ~= ""	//Maybe we shouldn't have these non-"core" variables in the spreadsheet 
		levelsof ck_varname, local(keepvars_`y')		//Create list of variables to keep
		local keepvars_`y' "`keepvars_`y'' z_indCode obs_id establishment_id firm_id year"		//Could just add to the spreadsheet 
		local keepvars_`y' : list clean keepvars_`y'
	} 
	local keepvars "`keepvars_1929' `keepvars_1931' `keepvars_1933'  `keepvars_1935' `varlist_extract'" 
	local keepvars : list uniq keepvars
}

//Otherwise just use list of desired variables + a few key always collected variables
if `core_yes_no' == 0{
	local keepvars "z_indCode obs_id establishment_id firm_id year ag001 ag002 ag003 a003 `varlist_extract'" //Some key variables always extracted
	local keepvars : list uniq keepvars
}

//this grabs all cleaned BR and legacy files and appends them together (mostly copied over from create_extract)
//set up to go recursively through the the Stata Files directory
local dir_list ""$rootDir_dataLegacy" "$rootDir_dataBR" "$rootDir_dataStata""

tempfile full_results
local count = 1		//going to keep track of number of files we're merging in
foreach dir_temp in `dir_list'{
	di "Looking in `dir_temp'"
	qui cd "`dir_temp'/Complete"
	qui fs "*.dta"
	
	foreach i in `r(files)'{
		di "Current file is `i' in `dir_temp'"
        use `i', clear
		qui describe, varlist
		local varlist_ind `r(varlist)'
		
		local local_vars_to_keep = ""
		foreach var_temp in `keepvars'{
			capture unab temp_list: `var_temp'															//try to expand the variable. if has wildcard, then will get full list of variables. if not wildcard, will jsut return itself. if not there, then this will crash
			if _rc==0{
				local local_vars_to_keep = "`local_vars_to_keep' `temp_list'"							//add expanded set of variables to varibales to keep. 
				foreach temp_var in `temp_list'{														//now check if there are any flags associated with this variable. This should catch both x`i'_ and present_ flags.
					capture unab flags: *_`temp_var'													//add list of variable with suffix that is temp_var. this will identify flags if they exist
					if _rc==0{
						local local_vars_to_keep = "`local_vars_to_keep' `flags'"						//add these flag variables to the local
					}
				}
			}
		}
		
		local keeplist_ind : list varlist_ind & local_vars_to_keep										//Take intersection of variables in industry and overall list of variables (in case some are missing)
		keep `keeplist_ind'
		capture tempfile save`count'
		capture tostring *, replace force
        capture save "`save`count''"
		local count = `count'+1
	}
	cd "$rootDir"
}

//assemble all of the files
clear
local endloop = `count' - 1
forvalues i=1/`endloop'{
	qui append using "`save`i''"
}

merge m:1 z_indCode year using "$rootDir_code/Variable Checking/Industry Flags/industry_flags.dta", nogen keep(1 3)		//Add in the special flags for individual inustries 

qui do "$rootDir_code/General/recode_incorporated"								//Recode the incorporated variable if a003 was extracted
qui do "$rootDir_code/Label/label_indCodes"										//label industry codes (CZV currently commented out generation of SIC codes, durable and nondurable)
do "$rootDir_code/Regional/generate_region"										//Census region variable
qui do "$rootDir_code/Regional/trans_State_to_FIPS" ag001_fips ag001			//Generate state FIPS code
qui do "$rootDir_code/Regional/trans_County_to_FIPS" ag003_fips ag003 ag001		//Generate county FIPS code
qui do "$rootDir_code/Label/label_ck_vars"										//Somehow a few codes get messed up in the code above
qui do "$rootDir_code/Regional/recode_independent_cities"						//Recodes independent cities into surrounding counties	
qui do "$rootDir_code/General/fix_discovered_bugs"								//Last step fixing glitches in data construction (missing FIPS, say)		

aorder *
sort industry_code_num year ag001 ag003
compress
save "$rootDir_write/`output_name'.dta", replace
cd "$rootDir"
