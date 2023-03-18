	args countyfips clean_county clean_state


	replace `countyfips' ="001" if `clean_state'=="Maine" & `clean_county'=="Androscoggin"
	replace `countyfips' ="003" if `clean_state'=="Maine" & `clean_county'=="Aroostook"
	replace `countyfips' ="005" if `clean_state'=="Maine" & `clean_county'=="Cumberland"
	replace `countyfips' ="007" if `clean_state'=="Maine" & `clean_county'=="Franklin"
	replace `countyfips' ="009" if `clean_state'=="Maine" & `clean_county'=="Hancock"
	replace `countyfips' ="011" if `clean_state'=="Maine" & `clean_county'=="Kennebec"
	replace `countyfips' ="013" if `clean_state'=="Maine" & `clean_county'=="Knox"
	replace `countyfips' ="015" if `clean_state'=="Maine" & `clean_county'=="Lincoln"
	replace `countyfips' ="017" if `clean_state'=="Maine" & `clean_county'=="Oxford"
	replace `countyfips' ="019" if `clean_state'=="Maine" & `clean_county'=="Penobscot"
	replace `countyfips' ="021" if `clean_state'=="Maine" & `clean_county'=="Piscataquis"
	replace `countyfips' ="023" if `clean_state'=="Maine" & `clean_county'=="Sagadahoc"
	replace `countyfips' ="025" if `clean_state'=="Maine" & `clean_county'=="Somerset"
	replace `countyfips' ="027" if `clean_state'=="Maine" & `clean_county'=="Waldo"
	replace `countyfips' ="029" if `clean_state'=="Maine" & `clean_county'=="Washington"
	replace `countyfips' ="031" if `clean_state'=="Maine" & `clean_county'=="York"
	