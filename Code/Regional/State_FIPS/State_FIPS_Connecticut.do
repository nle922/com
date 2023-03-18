	args countyfips clean_county clean_state


	replace `countyfips' ="001" if `clean_state'=="Connecticut" & `clean_county'=="Fairfield"
	replace `countyfips' ="003" if `clean_state'=="Connecticut" & `clean_county'=="Hartford"
	replace `countyfips' ="005" if `clean_state'=="Connecticut" & `clean_county'=="Litchfield"
	replace `countyfips' ="007" if `clean_state'=="Connecticut" & `clean_county'=="Middlesex"
	replace `countyfips' ="009" if `clean_state'=="Connecticut" & `clean_county'=="New Haven"
	replace `countyfips' ="011" if `clean_state'=="Connecticut" & `clean_county'=="New London"
	replace `countyfips' ="013" if `clean_state'=="Connecticut" & `clean_county'=="Tolland"
	replace `countyfips' ="015" if `clean_state'=="Connecticut" & `clean_county'=="Windham"
	