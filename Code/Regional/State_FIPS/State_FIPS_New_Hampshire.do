	args countyfips clean_county clean_state


	replace `countyfips' ="001" if `clean_state'=="New Hampshire" & `clean_county'=="Belknap"
	replace `countyfips' ="003" if `clean_state'=="New Hampshire" & `clean_county'=="Carroll"
	replace `countyfips' ="005" if `clean_state'=="New Hampshire" & `clean_county'=="Cheshire"
	replace `countyfips' ="007" if `clean_state'=="New Hampshire" & `clean_county'=="Coos"
	replace `countyfips' ="009" if `clean_state'=="New Hampshire" & `clean_county'=="Grafton"
	replace `countyfips' ="011" if `clean_state'=="New Hampshire" & `clean_county'=="Hillsborough"
	replace `countyfips' ="013" if `clean_state'=="New Hampshire" & `clean_county'=="Merrimack"
	replace `countyfips' ="015" if `clean_state'=="New Hampshire" & `clean_county'=="Rockingham"
	replace `countyfips' ="017" if `clean_state'=="New Hampshire" & `clean_county'=="Strafford"
	replace `countyfips' ="019" if `clean_state'=="New Hampshire" & `clean_county'=="Sullivan"
	