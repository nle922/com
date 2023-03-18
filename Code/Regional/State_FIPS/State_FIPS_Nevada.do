	args countyfips clean_county clean_state


	replace `countyfips' ="001" if `clean_state'=="Nevada" & `clean_county'=="Churchill"
	replace `countyfips' ="003" if `clean_state'=="Nevada" & `clean_county'=="Clark"
	replace `countyfips' ="005" if `clean_state'=="Nevada" & `clean_county'=="Douglas"
	replace `countyfips' ="007" if `clean_state'=="Nevada" & `clean_county'=="Elko"
	replace `countyfips' ="009" if `clean_state'=="Nevada" & `clean_county'=="Esmeralda"
	replace `countyfips' ="011" if `clean_state'=="Nevada" & `clean_county'=="Eureka"
	replace `countyfips' ="013" if `clean_state'=="Nevada" & `clean_county'=="Humboldt"
	replace `countyfips' ="015" if `clean_state'=="Nevada" & `clean_county'=="Lander"
	replace `countyfips' ="017" if `clean_state'=="Nevada" & `clean_county'=="Lincoln"
	replace `countyfips' ="019" if `clean_state'=="Nevada" & `clean_county'=="Lyon"
	replace `countyfips' ="021" if `clean_state'=="Nevada" & `clean_county'=="Mineral"
	replace `countyfips' ="023" if `clean_state'=="Nevada" & `clean_county'=="Nye"
	replace `countyfips' ="027" if `clean_state'=="Nevada" & `clean_county'=="Pershing"
	replace `countyfips' ="029" if `clean_state'=="Nevada" & `clean_county'=="Storey"
	replace `countyfips' ="031" if `clean_state'=="Nevada" & `clean_county'=="Washoe"
	replace `countyfips' ="033" if `clean_state'=="Nevada" & `clean_county'=="White Pine"
	replace `countyfips' ="510" if `clean_state'=="Nevada" & `clean_county'=="Carson City"
	