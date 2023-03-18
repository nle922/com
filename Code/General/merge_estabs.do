//this merges in establishment links 

//Requires matchResults_clean file which join on record
//extension: useful for BR case where files are not in ./`year'/`indnum'
args indnum_actual local_identifier extension

//if clean matched links exist, read in that file and use all variables minus establishment_ID to link to original file
//Note that industry file with _link has estab links 
tempfile estabIDs

forvalues year=1929(2)1935{
	//this handles issue with "alias" of industry name for 1608
	if `year'==1929 & "`indnum_actual'"=="1608"{
		local indnum="1656"
	}
	else {
		local indnum="`indnum_actual'"
	}
	local local_write_dir = "$rootDir_dataStata/`extension'/`year'/`indnum'"	
	//load dataset without links
	use "`local_write_dir'/`indnum'_`year'", clear
	
	if `year'>1929{
		//merge in identifier to link in previous census
		//this should be a bijective merge
		merge 1:1 `local_identifier' using  "$rootDir_matching/Establishments/`year'/`indnum'/match`year'_`indnum'_clean.dta", nogen
		
		//merge in establishment_IDs generated on the fly based on link to previous census
		//This code is dangerous because won't crash if have multiple non-blank values of record_back. 
		//The m:1 is used here to handle the multiple missing `local_identifier'_back values that come from establishments entering in a particular year
		merge m:1 `local_identifier'_back using "`estabIDs'", keep(match master) nogen
		
		//this catches a problem that will come from a missing value in `local_identifier'_back in the dataset `estabIDs' since this
		//is the special value we use to identify estabs that are entering
		replace establishment_id="" if `local_identifier'_back==""
	}
	
	//this generates establishment IDs 
	do "$rootDir_code/General/gen_ID" "`indnum'" "establishment"
	//identifier now becomes "back" version for the next census year. capture here is to handle 1929 case
	capture drop `local_identifier'_back
	rename `local_identifier' `local_identifier'_back
	//keep establishment IDs for linking into the next year based on local_identifier and save as tempfile
	savesome establishment_id `local_identifier'_back using "`estabIDs'", replace
	//drop match related variables. capture here is to handle 1929 case
	capture drop U*
	//rename to `local_identifier'. This will help for identifying matching errors later
	rename `local_identifier'_back `local_identifier'
	//save linked file
	save "`local_write_dir'/`indnum'_`year'_clean", replace	
}
