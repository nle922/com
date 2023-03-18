	args countyfips clean_county clean_state


	replace `countyfips' ="001" if `clean_state'=="District Of Columbia" & `clean_county'=="District Of Columbia"
	replace `countyfips' ="031" if `clean_state'=="District Of Columbia" & `clean_county'=="Montgomery"
	