	args countyfips clean_county clean_state


	replace `countyfips' ="001" if `clean_state'=="Colorado" & `clean_county'=="Adams"
	replace `countyfips' ="003" if `clean_state'=="Colorado" & `clean_county'=="Alamosa"
	replace `countyfips' ="005" if `clean_state'=="Colorado" & `clean_county'=="Arapahoe"
	replace `countyfips' ="007" if `clean_state'=="Colorado" & `clean_county'=="Archuleta"
	replace `countyfips' ="009" if `clean_state'=="Colorado" & `clean_county'=="Baca"
	replace `countyfips' ="011" if `clean_state'=="Colorado" & `clean_county'=="Bent"
	replace `countyfips' ="013" if `clean_state'=="Colorado" & `clean_county'=="Boulder"
	replace `countyfips' ="014" if `clean_state'=="Colorado" & `clean_county'=="Broomfield"
	replace `countyfips' ="015" if `clean_state'=="Colorado" & `clean_county'=="Chaffee"
	replace `countyfips' ="017" if `clean_state'=="Colorado" & `clean_county'=="Cheyenne"
	replace `countyfips' ="019" if `clean_state'=="Colorado" & `clean_county'=="Clear Creek"
	replace `countyfips' ="021" if `clean_state'=="Colorado" & `clean_county'=="Conejos"
	replace `countyfips' ="023" if `clean_state'=="Colorado" & `clean_county'=="Costilla"
	replace `countyfips' ="025" if `clean_state'=="Colorado" & `clean_county'=="Crowley"
	replace `countyfips' ="027" if `clean_state'=="Colorado" & `clean_county'=="Custer"
	replace `countyfips' ="029" if `clean_state'=="Colorado" & `clean_county'=="Delta"
	replace `countyfips' ="031" if `clean_state'=="Colorado" & `clean_county'=="Denver"
	replace `countyfips' ="033" if `clean_state'=="Colorado" & `clean_county'=="Dolores"
	replace `countyfips' ="035" if `clean_state'=="Colorado" & `clean_county'=="Douglas"
	replace `countyfips' ="037" if `clean_state'=="Colorado" & `clean_county'=="Eagle"
	replace `countyfips' ="039" if `clean_state'=="Colorado" & `clean_county'=="Elbert"
	replace `countyfips' ="041" if `clean_state'=="Colorado" & `clean_county'=="El Paso"
	replace `countyfips' ="043" if `clean_state'=="Colorado" & `clean_county'=="Fremont"
	replace `countyfips' ="045" if `clean_state'=="Colorado" & `clean_county'=="Garfield"
	replace `countyfips' ="047" if `clean_state'=="Colorado" & `clean_county'=="Gilpin"
	replace `countyfips' ="049" if `clean_state'=="Colorado" & `clean_county'=="Grand"
	replace `countyfips' ="051" if `clean_state'=="Colorado" & `clean_county'=="Gunnison"
	replace `countyfips' ="053" if `clean_state'=="Colorado" & `clean_county'=="Hinsdale"
	replace `countyfips' ="055" if `clean_state'=="Colorado" & `clean_county'=="Huerfano"
	replace `countyfips' ="057" if `clean_state'=="Colorado" & `clean_county'=="Jackson"
	replace `countyfips' ="059" if `clean_state'=="Colorado" & `clean_county'=="Jefferson"
	replace `countyfips' ="061" if `clean_state'=="Colorado" & `clean_county'=="Kiowa"
	replace `countyfips' ="063" if `clean_state'=="Colorado" & `clean_county'=="Kit Carson"
	replace `countyfips' ="065" if `clean_state'=="Colorado" & `clean_county'=="Lake"
	replace `countyfips' ="067" if `clean_state'=="Colorado" & `clean_county'=="La Plata"
	replace `countyfips' ="069" if `clean_state'=="Colorado" & `clean_county'=="Larimer"
	replace `countyfips' ="071" if `clean_state'=="Colorado" & `clean_county'=="Las Animas"
	replace `countyfips' ="073" if `clean_state'=="Colorado" & `clean_county'=="Lincoln"
	replace `countyfips' ="075" if `clean_state'=="Colorado" & `clean_county'=="Logan"
	replace `countyfips' ="077" if `clean_state'=="Colorado" & `clean_county'=="Mesa"
	replace `countyfips' ="079" if `clean_state'=="Colorado" & `clean_county'=="Mineral"
	replace `countyfips' ="081" if `clean_state'=="Colorado" & `clean_county'=="Moffat"
	replace `countyfips' ="083" if `clean_state'=="Colorado" & `clean_county'=="Montezuma"
	replace `countyfips' ="085" if `clean_state'=="Colorado" & `clean_county'=="Montrose"
	replace `countyfips' ="087" if `clean_state'=="Colorado" & `clean_county'=="Morgan"
	replace `countyfips' ="089" if `clean_state'=="Colorado" & `clean_county'=="Otero"
	replace `countyfips' ="091" if `clean_state'=="Colorado" & `clean_county'=="Ouray"
	replace `countyfips' ="093" if `clean_state'=="Colorado" & `clean_county'=="Park"
	replace `countyfips' ="095" if `clean_state'=="Colorado" & `clean_county'=="Phillips"
	replace `countyfips' ="097" if `clean_state'=="Colorado" & `clean_county'=="Pitkin"
	replace `countyfips' ="099" if `clean_state'=="Colorado" & `clean_county'=="Prowers"
	replace `countyfips' ="101" if `clean_state'=="Colorado" & `clean_county'=="Pueblo"
	replace `countyfips' ="103" if `clean_state'=="Colorado" & `clean_county'=="Rio Blanco"
	replace `countyfips' ="105" if `clean_state'=="Colorado" & `clean_county'=="Rio Grande"
	replace `countyfips' ="107" if `clean_state'=="Colorado" & `clean_county'=="Routt"
	replace `countyfips' ="109" if `clean_state'=="Colorado" & `clean_county'=="Saguache"
	replace `countyfips' ="111" if `clean_state'=="Colorado" & `clean_county'=="San Juan"
	replace `countyfips' ="113" if `clean_state'=="Colorado" & `clean_county'=="San Miguel"
	replace `countyfips' ="115" if `clean_state'=="Colorado" & `clean_county'=="Sedgwick"
	replace `countyfips' ="117" if `clean_state'=="Colorado" & `clean_county'=="Summit"
	replace `countyfips' ="119" if `clean_state'=="Colorado" & `clean_county'=="Teller"
	replace `countyfips' ="121" if `clean_state'=="Colorado" & `clean_county'=="Washington"
	replace `countyfips' ="123" if `clean_state'=="Colorado" & `clean_county'=="Weld"
	replace `countyfips' ="125" if `clean_state'=="Colorado" & `clean_county'=="Yuma"
	