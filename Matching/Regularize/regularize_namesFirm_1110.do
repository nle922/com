//regularizes firm names before running reclink. 

//Other possible fixes
//1. Replace Letters for Cardinal Directions
//2. Replace all \d{2}Th with String

//Args: vars_to_match - list of fuzzy variables to match on, required_vars - list of variables to exactly match on
args owner_name establishment_name

tempvar establishment_name_virtual
gen `establishment_name_virtual' = `establishment_name'

//do some basic regularization of names
foreach regularize_var in owner_name establishment_name_virtual {
	replace ``regularize_var'' = upper(``regularize_var'')
	replace ``regularize_var'' = regexr(``regularize_var'', "INC.$", "INCORPORATED")
	replace ``regularize_var'' = regexr(``regularize_var'', "CORP.$", "CORPORATION")
	replace ``regularize_var'' = regexr(``regularize_var'', "CO.$", "CORPORATION")
	replace ``regularize_var'' = regexr(``regularize_var'', "^THE", "")
	replace ``regularize_var'' = subinstr(``regularize_var'', "&", "AND", .)
}

//if name is just CORPORATION, then make name blank. 
replace `owner_name' = "" if `owner_name' == "CORPORATION"

//if owner_name=="SAME", then this means it's actually the establishment_name
replace `owner_name' = `establishment_name_virtual' if `owner_name' == "SAME"

//try filling in some more values of `owner_name'
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & (regexm(`establishment_name_virtual', "INCORPORATED") | regexm(`establishment_name_virtual', "CORPORATION"))

//final fixes
replace `establishment_name_virtual' = ustrtrim(`establishment_name_virtual')
replace `establishment_name_virtual' = trim(`establishment_name_virtual')

replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="COLONIAL IRON COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="PITTSBURGH CRUCIBLE STEEL COMPANY" & `owner_name'==""
