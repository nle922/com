//regularizes firm names before running reclink. 

//Other possible fixes
//1. Replace Letters for Cardinal Directions
//2. Replace all \d{2}Th with String

//Args: vars_to_match - list of fuzzy variables to match on, required_vars - list of variables to exactly match on
args owner_name establishment_name

tempvar establishment_name_virtual
gen `establishment_name_virtual' = `establishment_name'


//some additional fixes
replace `establishment_name_virtual' = ustrtrim(`establishment_name_virtual')
replace `owner_name' = ustrtrim(`owner_name')


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

//if owner_name=="SAME", then this means it's actually the establishment_name_virtual
replace `owner_name' = `establishment_name_virtual' if `owner_name' == "SAME"

replace `establishment_name_virtual' = ustrtrim(`establishment_name_virtual')
replace `owner_name' = ustrtrim(`owner_name')

//try filling in some more values of `owner_name'
replace `owner_name' = `establishment_name_virtual' if `owner_name'=="" & (regexm(`establishment_name_virtual', "INCORPORATED") | regexm(`establishment_name_virtual', "CORPORATION"))
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CHENANGO EQUIPMENT MANUFACTURING CO" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="MARMON MOTOR CAR COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="AHRENS-FOX FIRE ENGINE COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="HUG COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="J.G. BRILL COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="METEOR MOTOR CAR COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="METEOR MOTOR CAR COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="NASH MOTORS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="WILLYS-OVERLAND COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="WORLD MOTORS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="ATTERBURG MOTOR ??? ??" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="AUBURN AUTOMOBILE CO. (AUBURN BRANCH)" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="AUBURN AUTOMOBILE COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="BACKHUS MOTOR TRUCK CO INC" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="BEAVER TRANSIT EQUIPMENT CO" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="BOYER FIRE APPARATUS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CHRYSLER MOTORS OF CALIFORNIA" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CHRYSLER MOTORS OF CALIFORNIA" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CONTINENTAL AUTOMOBILE COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CONTINENTAL-DIVCO COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CONTINENTAL-DIVCO COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="DENBY MOTOR TRUCK CORP" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="DETROIT ELECTRIC CAR COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="DOUGLAS TRUCK MANUFACTURING COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="DOUGLAS TRUCK MANUFACTURING COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="DUPLEX TRUCK COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="DUPLEX TRUCK COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="DUPLEX TRUCK COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="ELGIN SWEEPER COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="FAGEOL MOTORS COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="FEDERAL MOTOR COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="FORD MOTOR COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="FORD MOTOR COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="FORD MOTOR COMPANY (DENVER BRANCH)" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="FORD MOTOR COMPANY (KANSAS BRANCH)" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="FRUEHAUF TRAILER CO" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="GRAMM-BERNSTEIN" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="H. H. FRANKLIN MANUFACTURING COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="HIGHWAY TRAILER COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="JOHN MCARDLE AND A.G. NEWCOMB" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="KEIBER MOTOR COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="KING ZEITLER COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="M.P. MOLLER MOTOR CAR COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="PATRIOT MANUFACTURING COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="REILAND AND BREE TRUCK MFG CO" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="SANFORD AUTOMOTIVE CORP" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="SANFORD MOTOR TRUCK COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="SANFORD MOTOR TRUCK COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="TWIN COACH COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="WILLYS-OVERLAND PACIFIC COMPANY" & `owner_name'==""

//Not sure these are necessary
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="METEOR MOTOR CAR COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="HUG COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="AHRENS-FOX FIRE ENGINE COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="WILLYS-OVERLAND COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="ELGIN SWEEPER COMPANY" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="J. G. BRILL CORPORATION" & `owner_name'==""
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="FAGEOL TRUCK AND COACH COMPANY" & `owner_name'==""


replace `establishment_name_virtual' = ustrtrim(`establishment_name_virtual')
replace `owner_name' = ustrtrim(`owner_name')

replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="NOBLE MOTOR TRUCK CORP" & `owner_name'=="STOCKHOLDERS"
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="CONTINENTAL-DIVCO COMPANY" & `owner_name'=="DO."
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="FAGEOL TRUCK AND COACH CORPORATION" & `owner_name'=="-"
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="J. G. BRILL CORPORATION" & `owner_name'=="-"
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="REO MOTOR CAR COMPANY" & `owner_name'=="DO"
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="HENNEY MOTOR COMPANY" & `owner_name'=="DO."
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="ELGIN SWEEPER COMPANY" & `owner_name'=="(CORPORATION)"
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="WITT-WILL COMPANY, INCORPORATED" & `owner_name'=="AS ABOVE"
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="SEAGRAVE CORPORATION" & `owner_name'=="STOCK COMPANY"
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="WITT-WILL COMPANY, INCORPORATED" & `owner_name'=="AS ABOVE"
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="TWIN COACH COMPANY" & `owner_name'=="CORPORTION"
replace `owner_name' = `establishment_name_virtual' if `establishment_name_virtual'=="DUPLEX TRUCK COMPANY" & `owner_name'=="CORPORATION-SAME NAME"

