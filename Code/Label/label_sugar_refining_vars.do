//label sugar refining specific variables

//capital variable
capture label var z_value_processing_taxes  "Value of processing taxes"

//output variables
foreach i in refiner_sirup refiner_sirup_edible refiner_sirup_invert refiner_sirup_other refined_sugar_hard refined_sugar_soft sugar_sirup blackstrap{
	capture label var gp_v_`i' "Output: `i', value"
	capture label var gp_q_`i' "Output: `i', qt"
	capture label var gp_u_`i' "Output: `i', units"
}
 
foreach i in blackstrap refiner_sirup refined_sugar_hard refined_sugar_soft{
	capture label var gp_u_`i' "Output: `i', units"
}
 
//input variables
foreach i in PR US VI_1 VI_2 hawaii phil cuba{
	capture label var j_v_rawSugar_`i' "Input: Raw suguar from `i', value" 
	capture label var j_q_rawSugar_`i' "Input: Raw suguar from `i', qt" 
}

 forvalues i =1/4{
	capture label var j_u_otherRawSugar`i' "Input: Other raw sugar `i', units"
	capture label var j_q_otherRawSugar`i' "Input: Other raw sugar `i', quantity"
	capture label var j_v_otherRawSugar`i' "Input: Other raw sugar `i', value"
	capture label var j_n_otherRawSugar`i' "Input: Other raw sugar `i', specify"
 }
capture label var j_n_rawSugar_VI_2 "Input: Raw Sugar from VI_2, specify"
