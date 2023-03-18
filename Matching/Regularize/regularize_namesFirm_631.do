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
replace `owner_name' = `establishment_name' if `owner_name' == "SAME"

//try filling in some more values of `owner_name'
replace `owner_name' = `establishment_name' if `owner_name'=="" & (regexm(`establishment_name', "INCORPORATED") | regexm(`establishment_name', "CORPORATION"))

//final fixes
replace `establishment_name_virtual' = ustrtrim(`establishment_name_virtual')
replace `establishment_name_virtual' = trim(`establishment_name_virtual')

replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CLAIRE MANUFACTURING COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="TEXTILE SOAP COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="WALTER BASSET" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="SWIFT AND COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="WILLIAMS AND MOORE" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="AMERICAN SOAP AND WASHOLINE COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="IOWA SOAP COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="WEST COAS SOAP" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CENTRAL SOAP COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="SWIDLAND CHEMICAL LABORATORIES" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="BARBISOL COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="PACIFIC SOAP CO. LTD." & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="WIGGINS CHEMICAL COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="PERKINS SOAP COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="BEACH SOAP COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="WATSON-PARK COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="GORDON-ALLEN LTD." & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="RAYON CHEMICAL WORKS" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="SHUCKER AND SHUCKER" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="DUBOIS SOAP COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="ANTISEPTOL LIQUID SOAP COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CINCINNATI SOAP COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="FERGUSSON LABORATORIES - DIVISION OF ALEX C FERGUSSON CO" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="KEYSTONE ANILINE AND CHEMICAL COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CENTAL SOAP COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="AMERICAN SOAP AND WASHOLINE COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="SWIFT AND COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="THOMAS GILL SOAP COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="N.R.G. (ENERGY) CO" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="JAMES G SNORAN" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="SOLVENT PRODUCTS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="SOAP PRODUCTS, LTD." & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="J.B. WILLIAMS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CINCINNATI SOAP COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="IOWA SOAP COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="B.T. AND S.P. DAY COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="PERKIND SOAP COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="HARLEY SOAP COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="NORTH COAST SOAP COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="AMERICAN SOAP AND WASHOLINE COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="REXINE COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CENTRAL SOAP COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="SWIFT AND COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="INDIANAPOLIS SOAP COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="W. H. FALES COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CITRUS SOAP COMPANY OF CALIFORNIA" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="SKAT COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="IOWA SOAP COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="NEWELL GUTRADT COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="W.H. FALES COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CINCINNATI SOAP COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="NORTH COAST CHEMICAL SOAP WORKS" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="EATON-KLARK COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="GORDON-ALLEN LTD." & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="EAGLE SOAP COMPANY" & `owner_name'==""
