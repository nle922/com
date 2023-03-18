//Collapse firmids as function
args n num_firms
if "`n'" == ""{
	local n = 2
}
if "`num_firms'" == ""{
	local num_firms = 1
}

//Load list of primes 
import delimited "./SES1459263 Team Folder/V2/Establishment Link Updates/Extra/primes.txt", clear 
rename primo p
tempfile primes
save `primes'

local file_name_export = "CoM_v2"
use "./Stata Files/Extracts/`file_name_export'", replace
keep if industry_code_num == "1002"

//Attach primes to establishment_IDs
preserve
	duplicates drop establishment_id, force
	merge 1:1 _n using `primes', keep(3) nogen
	save `primes', replace
restore

//Data structure: establishment, firmid 
duplicates drop establishment_id firm_id, force
merge m:1 establishment_id using `primes'

//Construct firm product
gen double firm_matches = log(p)
gcollapse (sum) firm_matches, by(firm_id)
replace firm_matches = exp(firm_matches)

while `num_firms' < _N{	
	local match = 1
 	forvalues i = 1(1)`num_firms'{
		local curr_temp = firm_matches in `i'
		local curr_temp = round(`curr_temp')
		local other_temp = firm_matches in `n'
		local other_temp = round(`other_temp')
		gcd `curr_temp' `other_temp'
 		local match = `r(gcd)' //Check if gcd > 1. 
		if abs(`match'-1) > 10^(-6){	//If so, then firms share establishment. So combine with current firm & delete the row
			qui replace firm_matches =  `other_temp' *`curr_temp' / `match' in `i' //Replace with lcm
			qui drop in `n'
			continue, break
		}
 	}
	if abs(`match'- 1)<10^(-6){ //if no match, add firm to list of firms and increment row
		local ++num_firms
		local ++n
	}	
}

levelsof p, local(primes)
gen estab_matches = ""
foreach prime in `primes'{
	replace estab_matches = estab_matches + " `prime'"  if mod(firm_matches,`prime')==0
}

replace estab_matches = trim(estab_matches)
split estab_matches, parse(" ") gen(estabid)
reshape long estab_matches, i(firm_id) j(counter)
rename estab_matches p
merge m:1 p using `primes'
duplicates drop firm_id establishment_id, force
rename firm_id firm_id_update
