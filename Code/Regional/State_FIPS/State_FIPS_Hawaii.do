	args countyfips clean_county clean_state


	replace `countyfips' ="001" if `clean_state'=="Hawaii" & `clean_county'=="Hawaii"
	replace `countyfips' ="003" if `clean_state'=="Hawaii" & `clean_county'=="Honolulu"
	replace `countyfips' ="007" if `clean_state'=="Hawaii" & `clean_county'=="Kauai"
	replace `countyfips' ="009" if `clean_state'=="Hawaii" & `clean_county'=="Maui"
	