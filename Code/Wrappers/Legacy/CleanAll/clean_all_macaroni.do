//NLZ: wrapper do file for cleaning macaroni data*Global variables referenced: rootDir_code, rootDir_dataLegacy*Preliminariesclearcapture log closeset more off//clean individual year filesforvalues year_val = 1929(2)1935{	di "`year_val'"	do "$rootDir_code/`year_val'/clean_macaroni_`year_val'"}//append individual year files togetherforvalues year_val = 1929(2)1933{	append using "$rootDir_dataLegacy/`year_val'/macaroni_`year_val'_clean"}//Finalize obs_idreplace obs_id = year+"121"+obs_idsave "$rootDir_dataLegacy/Complete/macaroni_all", replace