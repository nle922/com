	args countyfips clean_county clean_state


	replace `countyfips' ="001" if `clean_state'=="Arizona" & `clean_county'=="Apache"
	replace `countyfips' ="003" if `clean_state'=="Arizona" & `clean_county'=="Cochise"
	replace `countyfips' ="005" if `clean_state'=="Arizona" & `clean_county'=="Coconino"
	replace `countyfips' ="007" if `clean_state'=="Arizona" & `clean_county'=="Gila"
	replace `countyfips' ="009" if `clean_state'=="Arizona" & `clean_county'=="Graham"
	replace `countyfips' ="011" if `clean_state'=="Arizona" & `clean_county'=="Greenlee"
	replace `countyfips' ="012" if `clean_state'=="Arizona" & `clean_county'=="La Paz"
	replace `countyfips' ="013" if `clean_state'=="Arizona" & `clean_county'=="Maricopa"
	replace `countyfips' ="015" if `clean_state'=="Arizona" & `clean_county'=="Mohave"
	replace `countyfips' ="017" if `clean_state'=="Arizona" & `clean_county'=="Navajo"
	replace `countyfips' ="019" if `clean_state'=="Arizona" & `clean_county'=="Pima"
	replace `countyfips' ="021" if `clean_state'=="Arizona" & `clean_county'=="Pinal"
	replace `countyfips' ="023" if `clean_state'=="Arizona" & `clean_county'=="Santa Cruz"
	replace `countyfips' ="025" if `clean_state'=="Arizona" & `clean_county'=="Yavapai"
	replace `countyfips' ="027" if `clean_state'=="Arizona" & `clean_county'=="Yuma"
	