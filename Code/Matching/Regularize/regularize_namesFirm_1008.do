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

replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="LIBBEY-OWENS GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CO-OPERATIVE ENTERPRISE GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="DIAMOND GLASS-WARE COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CONSOLIDATED FACTORIES LTD." & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="LAMB GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CAPSTAN GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="QUERTINMONT GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="WESTMORELAND GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="HART GLASS MFG. COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="BARTLETT-COLLINS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="WHITALL TAUM COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="THREE RIVERS GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="WIGHTMAN'S BOTTLE AND GLASS MFG." & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="EDWARD FORD PLATE GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="VITROLITE COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="ROLLAND GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="SOUTHWESTERN SHEET GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="PRESSED PRISM PLATE GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="LIBBEY-OWENS-FORD GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="COLUMBIA GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="GAYNER GLASS WORKS" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CO-OPERATIVE FLINT GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="HARDING GLASS CO.," & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="WHITALL TATUM COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="PENNSYLVANIA WIRE GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CARR-LOWREY GLASS CO.," & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="SOUTHWESTERN SHEET GLASS CO.," & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="PIERCE GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="GILL GLASS AND FIXTURE COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="WESTON GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="D.O. CUNNINGHAM GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="L.J. HOUZR COUREX GLASS CO" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="PAIRPOINT CORP" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="AMERICAN GLASS WORKS, INC., PADEN CITY, WEST VIRGINIA" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="OIL CITY GLASS BOTTLE COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="MACBETH-EVANS GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CHATTANOOGA GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="JEANETTE GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="PEDERSEN GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="A.H. FORGAR AND COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="MORGANTOWN GLASS WORKS" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="JOHNSON GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="PERFECTION GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="BROCK GLASS COMPANY LTD." & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="PENNA. WIRE GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="PADEN CITY GLASS MFG. COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="ADVANCE GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="LANCASTER LENS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="LIBERTY GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="J.T. AND A. HAMILTON COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CUMBERLAND GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="L. F. ROONEY AND D.N. SKINNER" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="LAURENS GLASS WORKS" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="VICTORY GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="MEMPHIS GLASS MANUFACTURING" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="WEST VIRGINIA GLASS SPECIALTY COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CARR-LOWREY GLASS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="LAMB GLASS COMPANY" & `owner_name'==""

replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="ILLINOIS PACIFIC COAST COMPANY" & `owner_name'=="DO"
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="ILLINOIS PACIFIC COAST COMPANY" & `owner_name'=="DO."

