//regularizes firm names before merging with _clean file and in preparation for running strgroup

//ind_specific_switches - option list of industry specific word substitutions.
local ind_specific_switches = ""
//list of word substitutions for common to all industries. Words to add: MRS., MFG.
local general_switches = `""WM. WILLIAM" "JOE. JOSEPH" "JNO. JONATHAN" "JAS. JASON" "EDW. EDWARD" "GEO. GEORGE" "GEORGE " "CHAS. CHARLES" "CO.$ COMPANY" "CO$ COMPANY" "& AND" "COOP. COOPERATIVE" "PROD.  PRODUCTS " "BROS. BROTHERS" "CO-OPERATIVE COOPERATIVE""'
//words to strip at end. You can add to this list.
local words_to_strip_end `"OPERATOR INC. INCORPORATED CORP. PROP. PRES. MGR. TREAS. MANAGER PRESIDENT TREASURER "A CORPORATION" ", " OWNER CO-PARTNERSHIP"'
//words to strip at beginning. You can add to this list.
local words_to_strip_beginning `""ESTATE OF" "BRANCH OF" INC INCORPORATED CORPORATION, PROP PRES TREAS CORPORATION- CORP. ,"'
//exact match these words and fill in with establishment name
local key_words_exact = `""SAME" "COOPERATIVE" "SAME AS ABOVE" "SEE A ABOVE" "SEE ABOVE" "YES" "STOCKHOLDERS" "STOCK COMPANY" "" "INC." "INC" "ABOVE" "." "PARTNERSHIP" "A CORPORATION" "CORPORATION" "COMPANY" "CORP" "CORP." "??" "OWNER" "INCORPORATE" "INCORPORATED" "INCORPORATION" "DITTO" "DO""'

//Args: owner_name - owner name variable, establishment_name - establishment name variable.
args owner_name establishment_name 

//generate virtual version of establishment_name to modify
tempvar establishment_name_virtual
gen `establishment_name_virtual' = upper(`establishment_name')

//trim spaces (both regular and unicode)
replace `owner_name' = trim(`owner_name')
replace `owner_name' = ustrtrim(`owner_name')
//do regularization of owner names
replace `owner_name' = upper(`owner_name')

foreach key_word in `key_words_exact' {
	replace `owner_name' = `establishment_name_virtual' if `owner_name' == "`key_word'" 
}

//trim leading "the"s
replace `owner_name' = regexr(`owner_name', "^THE ", "")

//this tempvar will be used to identify whether we need to keep stripping words at beginnng and end
tempvar var_to_check_replace 
gen `var_to_check_replace' = ""
		
//strip words at beginning and end of names
foreach part in beginning end {
	//set special characters for regexm
	if "`part'"== "beginning" {
		local suffix = ""
		local prefix = "^"
	}
	else {
		local suffix = "$"
		local prefix = ""
	}
	//keep going until all "filler" words have been stripped
	local keep_going = 1
	while `keep_going' {
		//trim spaces
		replace `owner_name' = trim(`owner_name')
		local keep_going = 0
		foreach word_to_strip in `words_to_strip_`part'' {
			replace `var_to_check_replace' = `owner_name'
			replace `owner_name' = regexr(`owner_name', "`prefix'`word_to_strip'`suffix'", "") 
			qui count if `var_to_check_replace' != `owner_name'
			//if some firm names have changed, then keep going
			if  `r(N)'> 0 {
				local keep_going = 1
			}
		}
	}
}
		
//industry specific and general word substitutions
foreach type in ind_specific general {
	foreach pair in ``type'_switches' {
		local word_to_sub: word 1 of `pair'
		local sub_this_word: word 2 of `pair'
		replace `owner_name' = regexr(`owner_name', "`word_to_sub'", "`sub_this_word'")
	}
}
	
//additional "odd" replacements
replace `owner_name' = subinstr(`owner_name', "ASS'N.", ":ASSOCIATION", .)
replace `owner_name' = subinstr(`owner_name', "?", "", .)
replace `owner_name' = regexr(`owner_name', "-$", "")
