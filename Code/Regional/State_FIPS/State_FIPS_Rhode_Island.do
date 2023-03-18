	args countyfips clean_county clean_state


	replace `countyfips' ="001" if `clean_state'=="Rhode Island" & `clean_county'=="Bristol"
	replace `countyfips' ="003" if `clean_state'=="Rhode Island" & `clean_county'=="Kent"
	replace `countyfips' ="005" if `clean_state'=="Rhode Island" & `clean_county'=="Newport"
	replace `countyfips' ="007" if `clean_state'=="Rhode Island" & `clean_county'=="Providence"
	replace `countyfips' ="009" if `clean_state'=="Rhode Island" & `clean_county'=="Washington"
	