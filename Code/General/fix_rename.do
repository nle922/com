//this replaces `replace_var' with value from `target_var' in the case when `replace_var' is missing and then drops target var
args target_var replace_var

capture replace `replace_var' = `target_var' if `replace_var'=="" | `replace_var'=="."
capture drop `target_var'
