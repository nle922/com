//regularizes firm names before merging with _clean file for industry 119

//ind_specific_switches - option list of industry specific word substitutions.
local ind_specific_switches = ""
//list of word substitutions for common to all industries. Words to add: MRS., MFG.
local general_switches = `""WM. WILLIAM" "JOE. JOSEPH" "JNO. JONATHAN" "JAS. JASON" "EDW. EDWARD" "GEO. GEORGE" "GEO " "GEORGE " "CHAS. CHARLES" "CO.$ COMPANY" "CO$ COMPANY" "& AND" "COOP. COOPERATIVE" "PROD.  PRODUCTS " "BROS. BROTHERS" "CO-OPERATIVE COOPERATIVE""'
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

//Specific changes
replace `owner_name' = `establishment_name_virtual' if `owner_name'==" BROS" & `establishment_name_virtual'=="FORT MILL ICE CO."
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="# 1 PLANTS" & `establishment_name_virtual'=="ESTENS SERVICE PUBLIC SERVICE COMPANY OF VIRGINIA"
replace `owner_name' = `establishment_name_virtual' if `owner_name'==". COMPANY" & `establishment_name_virtual'=="MERCHANTS ICE AND COAL COMPANY"
replace `owner_name' = `establishment_name_virtual' if `owner_name'==". COMPANY." & `establishment_name_virtual'=="PALMA ICE COMPANY"
replace `owner_name' = `establishment_name_virtual' if `owner_name'==".ORPORATED COMPANY" & `establishment_name_virtual'=="RUBSAM & HORRMAN BREWING CO"
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="10 PARTNERS" & `establishment_name_virtual'=="LEBMANNS INDEPENDENT ICE CO"
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="1929, F. W. HOAR" & `establishment_name_virtual'=="DEALERS ICE COMPANY"
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="26 MEMBERS" & `establishment_name_virtual'=="APPLE GROWERS ICE & COLD STORAGE CO."
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="6025 S. ASHLAND AVENUE, CHICAGO" & `establishment_name_virtual'=="ASHLAND PURE ICE COMPANY"
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="739 FIRST ST. WILLIAMSPORT PA" & `establishment_name_virtual'=="STEWART ARTIFICIAL ICE CO."
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="A COLD STORAGE COMPANY" & `establishment_name_virtual'=="THE MORRIS MARKET ICE MFG."
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="A COMPANY" & `establishment_name_virtual'=="SUPERIOR PURE ICE & MACHINE CO"
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="A CONY" & `establishment_name_virtual'=="GADSDEN ICE POWER CO. INC"
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="A CORPORATION - 30 STOCKHOLDERS" & `establishment_name_virtual'=="HIGHLAND PARK ICE CO. INC"
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="A CORPORATION." & `establishment_name_virtual'=="COLORADO COLD STORAGE & MARKET CO."
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="A. CORPORATION" & `establishment_name_virtual'=="PHILLIPSBURG ICE & COLD STORAGE CO."
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="A. PARTNERSHIP." & `establishment_name_virtual'=="AVONDALE ICE CO. (2) PLANTS"
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="A. PENNSYLVANIA" & `establishment_name_virtual'=="SOUTH HILLS ICE CO."
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="ACME ICE COMPANY" & `establishment_name_virtual'=="ACME ICE CO. INC."
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="AN OREGON" & `establishment_name_virtual'=="SMYTHE BARTHEL CO."
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="ARKANSAS CORPORATION" & `establishment_name_virtual'=="MARSHALL ICE & ELECTRIC CO."
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="AS A ABOVE" & `establishment_name_virtual'=="CONSUMERS QUALITY ICE CO INC."
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="AS ABOVE" & `establishment_name_virtual'=="THE KANSAS ELECTRIC POWER COMPANY"
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="AS AVOVE" & `establishment_name_virtual'=="MINERAL SPRING ICE CO."
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="B. C. C." & `establishment_name_virtual'=="M. & DIARIES"
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="CONSTABLE ICE AND FUEL COMPANY" & `establishment_name_virtual'=="CONSTABLE ICE & FUEL CO."
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="STOCK" & `establishment_name_virtual'=="WILLIAMSON STORAGE & ICE CO., INC."

