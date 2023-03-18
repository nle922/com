//this uses existing plantIDs to create consistent plant IDs based on newly generated IDs 
 
 //Args: name of existing, old ID variable
 args old_IDvar type
 
 capture destring year, replace force
 //sort data by ID and then year to be able to "look back" in setting consistent ID value
 sort `old_IDvar' year
  
  //fill in the value of `type'_ID from "before" if old_IDvar has same value
 replace `type'_id = `type'_id[_n-1] if `old_IDvar'[_n] == `old_IDvar'[_n-1] & `type'_id[_n-1]~=""
 capture tostring year, replace force
 
