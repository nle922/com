//rename other to otherProduct. Assumes that both other and otherProduct are not present in the same dataset for outputs
//Also assumes that both other and otherInput are not both present in the same dataaset for inputs.
//types of variables: specify, quantity, and value

//rename output variables
foreach type in s q v u {	
	local counter = 1
	local rename_these = "" //this makes sure that if unab fails, rename_these is empty
	capture unab rename_these: gp_`type'_other*
	foreach otherProduct_var in `rename_these'  {
		capture rename `otherProduct_var' gp_`type'_otherProduct`counter'
		local ++counter
	}
}

//rename input variables.
foreach type in s q v u {	
	local counter = 1
	local rename_these = "" //this makes sure that if unab fails, rename_these is empty
	capture unab rename_these: j_`type'_other*
	foreach otherProduct_var in `rename_these'  {
		capture rename `otherProduct_var' j_`type'_otherInput`counter'
		local ++counter
	}
}
