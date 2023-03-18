//regularizes firm names before running strgroup 

//Other possible fixes
//1. Replace Letters for Cardinal Directions
//2. Replace all \d{2}Th with String
//3. Allow for list of industry-specific substitutions

//Args: vars_to_match - list of fuzzy variables to match on, required_vars - list of variables to exactly match on
args owner_name establishment_name

replace `owner_name' = upper(`owner_name')

tempvar establishment_name_virtual
gen `establishment_name_virtual' = `establishment_name'
replace `establishment_name_virtual' = upper(`establishment_name_virtual')

//if name is just CORPORATION, then make name blank. 
replace `owner_name' = "" if `owner_name' == "CORPORATION"

//if owner_name=="SAME", then this means it's actually the establishment_name
replace `owner_name' = `establishment_name' if `owner_name' == "SAME" | `owner_name'=="" | `owner_name'=="ABOVE"

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

//try filling in some more values of `owner_name'
*replace `owner_name' = "" if `owner_name'=="INCORPORATED" | `owner_name'=="CORPORATION"

//additional fixes for merging 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="`establishment_name_virtual'"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="ALBANY COCA-COLA BAT. CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="CHAUTAUQUA BEVERAGES"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COCA COLA BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="ST. PAUL BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="NEHI BOTG. CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'==""
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="UNITED STATES SOFT DRINK WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="??"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="SCHUELER BROS. INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="GOLDEN LION DISTRIBUTING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="DR. PEPPER BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="BIG BOY BOTTLING COMPANY OF ATLANTA"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="GREELEY COCA-COLA BOTTLING CO. INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="JACKSON BOT. WKS."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="NORFOLK ORANGE CRUSH BOTTLING CO. INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="SALT CITY BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="CHESTER BOTTLING WORKS INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="NEHI BEVERAGE CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="HALIFAX ORANGE CRUSH BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="CROCKETT BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="GLENGARRY SPRING"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="JACKSON BOTTLING WORK"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COCA COLA BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="YANKEE BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="NEHI BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COUNTRY CLUB SODA CO. INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="VALLEY DR. PEPPER BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="THE KOCH BEVERAGE & ICE CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COCA COLA BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="APOLLO BOTTLING INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COCA COLA BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="BERKELEY CLUB BOTG. MFG. CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="MANSFIELD BEVERAGE CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="RYAN BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="FALSTAFF CORPORATION"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="IMPERIAL BEVERAGES CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="WATSON BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COCA COLAS BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="CROMWELL BOTTLING CO. INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COCA COLA BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="DORCHESTER COCA COLA BOT. CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="GREAT LAKES COCA-COLA BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="BRUNSWICK COCA COLA CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="NATIONAL BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="CHERO-COLA BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="ORANGE CRUSH BEVERAGES, INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'==""
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'==""
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="ORANGE CRUSH BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="CARTERSVILLE NEHI BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="TAMPA COCA COLA BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="NEHI BOTTLING CO. OF PARIS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="AMERICAN SODA WATER CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="W. W. BOYNTON INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COCA COLA BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="WESTERN BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COCA COLA BOTTLING COMPANY"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="BLUE SEAL BOTTLING WORKS LTD."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="CHARLES CITY BOTTLING WORKS INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="ORANGE CRUSH BEVERAGES INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="WILMINGTON COCA-COLA BOTTLING WORKS INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="THE MOHR BROS. BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="SUPREME BOTTLING WORKS INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COCA COLA BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="MT. PLEASANT ICE COMPANY"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="TASKER BOTTLING CO., INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="DAVID BOYLE COMPANY"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="NEHI BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="TAYLOR BEVERAGES & CANDY CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="HUB CITY BOTT. WKS."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="CHICAGO DISTILLED WATER AND BEVERAGES CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="YOUNGSTOWN COCA-COLA BOTTLING COMPANY"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="SUNSET BOTTLING WORKS CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="WINDSOR ALE CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="DEE-LIGHT BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="PURDY PORT. BTTG CO. INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="BIG BOY BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="CERTIFIED BEVERAGES CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="AUSTIN BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="VIENNA-COCA COLA BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'==""
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="SO HAVEN BOTTLING WKS."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="TALL-ONE, BOTTLING & DISTRIBUTING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="THE STAR BEVERAGE COMPANY"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="AMERICAN BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="EUFAULA COCA COLA BOX CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="CROWN BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="UTICA BOTTLING WORKS INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="DR. PEPPER BOTTLING COMPANY OF MEMPHIS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="AMERICAN CLUB BEVERAGE CO., INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COCA COCA BOTTLING  WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="CANTON BEVERAGES INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="MADISON BOTTLING COMPANY (INC)"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="RIVERSIDE BEVERAGE CORP."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="NU GRAPE BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="BIG BILL BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="NU-GRAPE BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="P. SETZLER & SONS SODA WATER MFG CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="TAYLER BEV. AND CANDY CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="ARLINGTON COCA COLA BOT. CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="SOUTHLAND BEVERAGES CO. INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="ORANGE PEPSI COLA CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="WORLD BOTTLING CO. LTD."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="DR. PEPPER BOTTLING COMPANY OF DYERSBURG"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="MAJESTIC BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="LIVIT'S WATER CORP?"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COCA COLA BOTTLING CO. OF TULSA"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="IDEAL BEVERAGES CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="ROY FANCHER CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="WASHINGTON COUNTY BOTTLING CORPORATION"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="THE COCA-COLA BOTTLING CO, OF GUTHRIE, OKLA.,"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="FORT PITT BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="FRANZ BARTL BREWING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="M. & M. STAR BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="SOCIETY CLUB BEVERAGE CORPORATION"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COCA COLA BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="??"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="KOHLMAN'S INC"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="UP-TO-DATE SODA FOUNTAIN CO. INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COCA COLA BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COLUMBIA BEVERAGES WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="LIBERTY BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="WABENO BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="AMERICUS COCA COLA BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="WISCONSIN ORANGE CRUSH BOT. CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="LA CROSSE BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COCA COLA BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="CHERO COLA BOTTLING CO. INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="CLINTON BOTTLING CO. INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="NEHI BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="MIDDLESBORO NEHI BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="NU-ICY BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="?"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="SOMERSET COCA COLA BOTTLING COMPANY"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="INDEPENDENT BEVERAGES CO. INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="NATIONAL BOTTLING TORAH CO., INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="DR. PEPPER BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COCA COLA BOTG. WKS."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="TRY-ME BOTTLING CO. INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="UNITED STATES SOFT DRINKS WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COCA COLA BOTTLING COMPANY"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="BIG BILL BOTTLING CO. INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="JACOB SCHMIDT BREWING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="SELMA HAYE-KOLA BOTTLING CO., INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="MOUND CITY BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="CHARLES T. SMITH COMPANY INCORPORATED"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="TIERNEY BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="M. C. HEALD CO. INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="??"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="CONTINENTAL BEVERAGE CORPN."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="NEHI BOTT. CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="MADISON BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="MONTANA COCA COLA BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="?? ORANGE CRUSH BOT. WKS."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="ROY FANCHER CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COCA COLA BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="ORANGE CRUSH BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="TELL CITY COCA COLA BOTTLINGS CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="REGENFUSS BREWING CO"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="SAEGERTOWN MINERAL WATER CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="NEW BERN COCA COLA BOTTLING WORKS, INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="FAIRBURY BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="EAGLE BOTTLING CO. INC"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="BRAND BOTTLING WORKS, INC"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="MANHATTAN BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COCA COLA BOTTLG. WKS."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="PARKERSBURG TRIPURE WATER CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="KOMER CARBONIC CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="ARMALA BOTTLING CO.??"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="NEWBERRY CHERO COLA BOTG. CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="WHITE PINE SODA CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="IBERIA BEVERAGE CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="DORCHESTER COCA COLA BOTT. CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="PECKOFF BOTTLING COMPANY"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="KY. PARFAY CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="?? PRODUCT COMPANY"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="PURITAN ALL CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="MANHATTAN BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="??"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COCA COLA BOTTLING COMPANY OF LOS ANGELES"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="NU-ICY BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="DR. MAINES ORANGE KIST BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="PEPPERELL SPRING WATER CO., INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="NEHI BOTTLING CO. INC."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="SUNBEAM BEVERAGES COMPANY"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="HIGHLAND BEVERAGE CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="CLOVER LEAF PRODUCTS CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="CROWN COCA COLA BOTTLING CO."
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="INYO BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="COLUMBIA MINERAL WATER COMPANY"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="GREAT NORTHERN BOTTLING WORKS"
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="ORANGE CRUSH BOTTLING CO."
 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="CORPORATION" & `establishment_name_virtual'=="OKLAHOMA COCA COLA BOTTLING COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="CORPORATION" & `establishment_name_virtual'=="CUSHING COCA COLA BOTTLING COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="CORPORATION" & `establishment_name_virtual'=="JONESBORO COCO COLA BOTTLING COMPANY" 

 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="AMERICAN CLUB BEVERAGE COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="ARMALA BOTTLING CO." 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="BERKELEY CLUB BOTG. MFG. COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="BRUNSWICK COCA COLA COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="CERTIFIED BEVERAGES COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="CROWN BOTTLING COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="DR. MAINES ORANGE KIST BOTTLING COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="EUFAULA COCA COLA BOX COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="FRANZ BARTL BREWING COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="GOLDEN LION DISTRIBUTING COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="HALIFAX ORANGE CRUSH BOTTLING COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="HIGHLAND BEVERAGE COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="MANSFIELD BEVERAGE COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="M. AND M. STAR BOTTLING COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="NEW BERN COCA COLA BOTTLING WORKS" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="NU-ICY BOTTLING COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="ORANGE PEPSI COLA COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="PEPPERELL SPRING WATER COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="REGENFUSS BREWING COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="SUNSET BOTTLING WORKS COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="TELL CITY COCA COLA BOTTLINGS COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="WISCONSIN ORANGE CRUSH BOT. COMPANY" 
 replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & `establishment_name_virtual'=="YANKEE BOTTLING COMPANY" 












