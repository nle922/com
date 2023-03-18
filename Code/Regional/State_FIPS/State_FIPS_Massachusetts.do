	args countyfips clean_county clean_state


	replace `countyfips' ="001" if `clean_state'=="Massachusetts" & `clean_county'=="Barnstable"
	replace `countyfips' ="003" if `clean_state'=="Massachusetts" & `clean_county'=="Berkshire"
	replace `countyfips' ="005" if `clean_state'=="Massachusetts" & `clean_county'=="Bristol"
	replace `countyfips' ="007" if `clean_state'=="Massachusetts" & `clean_county'=="Dukes"
	replace `countyfips' ="009" if `clean_state'=="Massachusetts" & `clean_county'=="Essex"
	replace `countyfips' ="011" if `clean_state'=="Massachusetts" & `clean_county'=="Franklin"
	replace `countyfips' ="013" if `clean_state'=="Massachusetts" & `clean_county'=="Hampden"
	replace `countyfips' ="015" if `clean_state'=="Massachusetts" & `clean_county'=="Hampshire"
	replace `countyfips' ="017" if `clean_state'=="Massachusetts" & `clean_county'=="Middlesex"
	replace `countyfips' ="019" if `clean_state'=="Massachusetts" & `clean_county'=="Nantucket"
	replace `countyfips' ="021" if `clean_state'=="Massachusetts" & `clean_county'=="Norfolk"
	replace `countyfips' ="023" if `clean_state'=="Massachusetts" & `clean_county'=="Plymouth"
	replace `countyfips' ="025" if `clean_state'=="Massachusetts" & `clean_county'=="Suffolk"
	replace `countyfips' ="027" if `clean_state'=="Massachusetts" & `clean_county'=="Worcester"
	
	