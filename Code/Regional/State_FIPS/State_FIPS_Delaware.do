	args countyfips clean_county clean_state


	replace `countyfips' ="001" if `clean_state'=="Delaware" & `clean_county'=="Kent"
	replace `countyfips' ="003" if `clean_state'=="Delaware" & `clean_county'=="New Castle"
	replace `countyfips' ="005" if `clean_state'=="Delaware" & `clean_county'=="Sussex"
	