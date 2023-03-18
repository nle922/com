//regularizes firm names before running strgroup 

//Other possible fixes
//1. Replace Letters for Cardinal Directions
//2. Replace all \d{2}Th with String
//3. Allow for list of industry-specific substitutions

//Args: vars_to_match - list of fuzzy variables to match on, required_vars - list of variables to exactly match on
args owner_name establishment_name

//this is so we don't change the establishment name in this function
tempvar establishment_name_virtual
gen `establishment_name_virtual' = `establishment_name'

//if name is just CORPORATION, then make name blank. 
replace `owner_name' = "" if `owner_name' == "CORPORATION"

//if owner_name=="SAME", then this means it's actually the establishment_name
replace `owner_name' = `establishment_name_virtual' if `owner_name' == "SAME" | `owner_name'=="" | `owner_name'=="ABOVE"

//try filling in some more values of `owner_name'
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & (regexm(`establishment_name_virtual', "INCORPORATED") | regexm(`establishment_name_virtual', "CORPORATION"))

//trim spaces
replace `owner_name' = trim(`owner_name')

//words to strip at end
local words_to_strip_end `"OPERATOR INC. INCORPORATED CORP. PROP. PRES. MGR. TREAS. MANAGER PRESIDENT TREASURER "A CORPORATION" ", ""'
//words to strip at beginning
local words_to_strip_beginning "INC CORPORATION, CO PROP PRES TREAS"
tempvar var_to_check_replace 
gen `var_to_check_replace' = ""

//do some basic regularization of names
foreach regularize_var in owner_name establishment_name_virtual {
	replace ``regularize_var'' = upper(``regularize_var'')
	
	//end of string
	local keep_going = 1
	//keep going until all "filler" words have been stripped
	while `keep_going' {
		//trim spaces
		replace `owner_name' = trim(`owner_name')
		local keep_going = 0
		foreach word_to_strip in `words_to_strip_end' {
			replace `var_to_check_replace' = ``regularize_var''
			replace ``regularize_var'' = regexr(``regularize_var'', "`word_to_strip'$", "") 
			qui count if `var_to_check_replace' != ``regularize_var''
			if  `r(N)'> 0{
				local keep_going = 1
			}
		}
	}
	
	//beginning of string
	local keep_going = 1
	//keep going until all "filler" words have been stripped
	while `keep_going' {
		//trim spaces
		replace `owner_name' = trim(`owner_name')
		local keep_going = 0
		foreach word_to_strip in `words_to_strip_beginning' {
			replace `var_to_check_replace' = ``regularize_var''
			replace ``regularize_var'' = regexr(``regularize_var'', "^`word_to_strip' ", "") 
			qui count if `var_to_check_replace' != ``regularize_var''
			if  `r(N)'> 0{
				local keep_going = 1
			}
		}
	}
	
	//additional replacements
	replace ``regularize_var'' = regexr(``regularize_var'', "WM.", "WILLIAM")
	replace ``regularize_var'' = regexr(``regularize_var'', "^CHAS.", "CHARLES") 
	replace ``regularize_var'' = regexr(``regularize_var'', "CO.$", "COMPANY") 
	replace ``regularize_var'' = regexr(``regularize_var'', "CO$", "COMPANY") 
	replace ``regularize_var'' = subinstr(``regularize_var'', "&", "AND", .)
	replace ``regularize_var'' = subinstr(``regularize_var'', "COOP.", "COOPERATIVE", .)
	replace ``regularize_var'' = subinstr(``regularize_var'', "ASS'N.", "ASSOCIATION", .)
	replace ``regularize_var'' = subinstr(``regularize_var'', "PROD. ", "PRODUCTS ", .)
	replace ``regularize_var'' = subinstr(``regularize_var'', "BROS.", "BROTHERS", .)
	replace ``regularize_var'' = subinstr(``regularize_var'', "CO-OPERATIVE", "COOPERATIVE",  .)
	replace ``regularize_var'' = subinstr(``regularize_var'', "?", "", .)
	replace ``regularize_var'' = regexr(``regularize_var'', "-$", "")
}

//these are some additional fixes to make consistent with our firm matching file
local key_words = `""" "A CORPORATION OWNED BY STOCKHOLDERS" "A CORPORATION, OWNED BY STOCKHOLDERS" "A" "A. CORPORATION" "A. CORPORATION, OWNED BY STOCKHOLDERS" "COMPANY" "CORPORATION" "CORPN." "CREDITORS COMMITTEE" "INCORPORATED COMPANY" "INC. COMPANY" "INCORPORATION" "INC" "IN" "PARTNERSHIP" "SAME" "STOCK COMPANY" "STOCKHOLDERS" "STOCK HOLDERS""' //through C
foreach key_word in `key_words'{
	replace `owner_name' = `establishment_name_virtual' if `owner_name'=="`key_word'"
}	
