//Export fixes
capture drop _merge
local ind = "119"
preserve 
import excel "/Users/nlz/Downloads/`ind'.xlsx", sheet("Sheet1") firstrow clear
tempfile fixes
save `fixes'
restore

merge m:1 firm_id using `fixes'
sort a002 a001
//export excel obs_id firm_id a001 a002 establishment_id if _merge == 3 & industry_code_num == "`ind'" using "/Users/nlz/Downloads/ind`ind'_final_fixes",  firstrow(variables) replace

edit obs_id firm_id a001 a002 if _merge ~= 3 & industry_code_num == "`ind'"
