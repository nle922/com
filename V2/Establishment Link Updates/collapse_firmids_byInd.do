//Collapse firm_ids
args file_name_export

clear
tempfile all
save `all', emptyok

use "./Stata Files/Extracts/`file_name_export'", replace

//Identify firms in multiple industries
egen g_industry_code_num = group(industry_code_num)
foreach op in max min{
	bysort firm_id: egen `op'_ind = `op'(g_industry_code_num)
}
duplicates drop firm_id establishment_id, force
bysort firm_id: egen counter = seq()

//Save firms w/ estabs. in multiple industries 
tempfile mixed_firms
savesome firm_id establishment_id industry_code_num counter using `mixed_firms' if max_ind ~= min_ind

//Firms w/ estabs in single industries
keep if max_ind == min_ind
keep firm_id establishment_id industry_code_num counter

//collapse firm ids ind by ind for firms within a single industry
levelsof industry_code_num, local(industries)
foreach industry in `industries'{
	preserve
		di "Working on industry `industry'"	
		keep if industry_code_num == "`industry'" 
		qui do "./SES1459263 Team Folder/V2/Establishment Link Updates/collapse_firmids"	
		//Rerun to fix cases of incomplete firm combining
		if "`industry'"=="1002" | "`industry'"=="1005" | "`industry'"=="1008" | "`industry'"=="121" |  "`industry'"=="1408" | "`industry'"=="1608" |  "`industry'"=="312" | "`industry'"=="606" | "`industry'"=="99999" |  "`industry'"=="631" | "`industry'"=="705" | "`industry'"=="803" | "`industry'"=="216" | "`industry'"=="1401" | "`industry'"=="1112" {
			qui do "./SES1459263 Team Folder/V2/Establishment Link Updates/collapse_firmids" 2 1 1
		}
		//Run a 3rd time for industries with still over 5% wandering rate
		if "`industry'"=="216" |  "`industry'"=="119" | "`industry'"=="118" | "`industry'"=="631" | "`industry'"=="803" | {
			qui do "./SES1459263 Team Folder/V2/Establishment Link Updates/collapse_firmids" 2 1 1
		}
		drop establishment_id*
		tempfile `industry'
		qui save "``industry''", replace
	restore
}

//reassemble industry files
clear
foreach industry in `industries'{
	append using ``industry''
}

local num_firms = _N
local n = _N + 1

//Append ``mixed'' firm_ids
append using `mixed_firms'
keep firm_id establishment_id firm_matches estab_matches
bysort firm_id: egen counter = seq()

//collapse mixed firms with "pure" ones
qui do "./SES1459263 Team Folder/V2/Establishment Link Updates/collapse_firmids" `n' `num_firms' 0
drop establishment_id*

//Final preparation
replace firm_matches = trim(firm_matches)
split firm_matches, parse(" ") gen(firmid)
gen count = 0
foreach firmid of varlist firmid*{
	replace count = count + 1 if `firmid'~=""
}

//Reshape to long format with original firm_ids in firmid and "combined" firmid in firmd_id_update
sum count
local counts = `r(max)'
forvalues count = 1(1)`counts'{
	preserve
		keep if count == `count'
		if _N>0{
			missings dropvars firmid*, force
			reshape long firmid, i(firm_id) j(counter)
			append using `all'
			save `all', replace
		}
	restore
}

use `all', replace
keep firmid firm_id
rename firm_id firm_id_update //Updated firmids
rename firmid firm_id //Original firmids
merge 1:m firm_id using "./Stata Files/Extracts/`file_name_export'", nogen

//Fix (odd) cases where firm ID gets lost (only a problem with multiple runs)
replace firm_id_update = firm_id if firm_id_update == ""

drop firm_id 
rename firm_id_update firm_id
