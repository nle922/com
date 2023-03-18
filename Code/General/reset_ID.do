//Reset var_ID variable to proper format
args var_ID
ralpha new_draw, upp length(10)
tostring industry_code_num, gen(industry_code_num_str)
bysort `var_ID': egen counter = seq()
gen `var_ID'_update = industry_code_num_str + new_draw  if counter==1
by `var_ID': carryforward `var_ID'_update, replace
replace `var_ID' = `var_ID'_update 
drop new_draw `var_ID'_update industry_code_num_str counter
