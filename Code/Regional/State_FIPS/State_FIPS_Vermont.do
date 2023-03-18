	args countyfips clean_county clean_state


	replace `countyfips' ="001" if `clean_state'=="Vermont" & `clean_county'=="Addison"
	replace `countyfips' ="003" if `clean_state'=="Vermont" & `clean_county'=="Bennington"
	replace `countyfips' ="005" if `clean_state'=="Vermont" & `clean_county'=="Caledonia"
	replace `countyfips' ="007" if `clean_state'=="Vermont" & `clean_county'=="Chittenden"
	replace `countyfips' ="009" if `clean_state'=="Vermont" & `clean_county'=="Essex"
	replace `countyfips' ="011" if `clean_state'=="Vermont" & `clean_county'=="Franklin"
	replace `countyfips' ="013" if `clean_state'=="Vermont" & `clean_county'=="Grand Isle"
	replace `countyfips' ="015" if `clean_state'=="Vermont" & `clean_county'=="Lamoille"
	replace `countyfips' ="017" if `clean_state'=="Vermont" & `clean_county'=="Orange"
	replace `countyfips' ="019" if `clean_state'=="Vermont" & `clean_county'=="Orleans"
	replace `countyfips' ="021" if `clean_state'=="Vermont" & `clean_county'=="Rutland"
	replace `countyfips' ="023" if `clean_state'=="Vermont" & `clean_county'=="Washington"
	replace `countyfips' ="025" if `clean_state'=="Vermont" & `clean_county'=="Windham"
	replace `countyfips' ="027" if `clean_state'=="Vermont" & `clean_county'=="Windsor"
	