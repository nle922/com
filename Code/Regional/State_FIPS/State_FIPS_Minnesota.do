	args countyfips clean_county clean_state
	
	replace `countyfips' ="001" if `clean_state'=="Minnesota" & `clean_county'=="Aitkin"
	replace `countyfips' ="003" if `clean_state'=="Minnesota" & `clean_county'=="Anoka"
	replace `countyfips' ="005" if `clean_state'=="Minnesota" & `clean_county'=="Becker"
	replace `countyfips' ="007" if `clean_state'=="Minnesota" & `clean_county'=="Beltrami"
	replace `countyfips' ="009" if `clean_state'=="Minnesota" & `clean_county'=="Benton"
	replace `countyfips' ="011" if `clean_state'=="Minnesota" & `clean_county'=="Big Stone"
	replace `countyfips' ="013" if `clean_state'=="Minnesota" & `clean_county'=="Blue Earth"
	replace `countyfips' ="015" if `clean_state'=="Minnesota" & `clean_county'=="Brown"
	replace `countyfips' ="017" if `clean_state'=="Minnesota" & `clean_county'=="Carlton"
	replace `countyfips' ="019" if `clean_state'=="Minnesota" & `clean_county'=="Carver"
	replace `countyfips' ="021" if `clean_state'=="Minnesota" & `clean_county'=="Cass"
	replace `countyfips' ="023" if `clean_state'=="Minnesota" & `clean_county'=="Chippewa"
	replace `countyfips' ="025" if `clean_state'=="Minnesota" & `clean_county'=="Chisago"
	replace `countyfips' ="027" if `clean_state'=="Minnesota" & `clean_county'=="Clay"
	replace `countyfips' ="029" if `clean_state'=="Minnesota" & `clean_county'=="Clearwater"
	replace `countyfips' ="031" if `clean_state'=="Minnesota" & `clean_county'=="Cook"
	replace `countyfips' ="033" if `clean_state'=="Minnesota" & `clean_county'=="Cottonwood"
	replace `countyfips' ="035" if `clean_state'=="Minnesota" & `clean_county'=="Crow Wing"
	replace `countyfips' ="037" if `clean_state'=="Minnesota" & `clean_county'=="Dakota"
	replace `countyfips' ="039" if `clean_state'=="Minnesota" & `clean_county'=="Dodge"
	replace `countyfips' ="041" if `clean_state'=="Minnesota" & `clean_county'=="Douglas"
	replace `countyfips' ="043" if `clean_state'=="Minnesota" & `clean_county'=="Faribault"
	replace `countyfips' ="045" if `clean_state'=="Minnesota" & `clean_county'=="Fillmore"
	replace `countyfips' ="047" if `clean_state'=="Minnesota" & `clean_county'=="Freeborn"
	replace `countyfips' ="049" if `clean_state'=="Minnesota" & `clean_county'=="Goodhue"
	replace `countyfips' ="051" if `clean_state'=="Minnesota" & `clean_county'=="Grant"
	replace `countyfips' ="053" if `clean_state'=="Minnesota" & `clean_county'=="Hennepin"
	replace `countyfips' ="055" if `clean_state'=="Minnesota" & `clean_county'=="Houston"
	replace `countyfips' ="057" if `clean_state'=="Minnesota" & `clean_county'=="Hubbard"
	replace `countyfips' ="059" if `clean_state'=="Minnesota" & `clean_county'=="Isanti"
	replace `countyfips' ="061" if `clean_state'=="Minnesota" & `clean_county'=="Itasca"
	replace `countyfips' ="063" if `clean_state'=="Minnesota" & `clean_county'=="Jackson"
	replace `countyfips' ="065" if `clean_state'=="Minnesota" & `clean_county'=="Kanabec"
	replace `countyfips' ="067" if `clean_state'=="Minnesota" & `clean_county'=="Kandiyohi"
	replace `countyfips' ="069" if `clean_state'=="Minnesota" & `clean_county'=="Kittson"
	replace `countyfips' ="071" if `clean_state'=="Minnesota" & `clean_county'=="Koochiching"
	replace `countyfips' ="073" if `clean_state'=="Minnesota" & `clean_county'=="Lac Qui Parle"
	replace `countyfips' ="075" if `clean_state'=="Minnesota" & `clean_county'=="Lake"
	replace `countyfips' ="077" if `clean_state'=="Minnesota" & `clean_county'=="Lake of The Woods"
	replace `countyfips' ="079" if `clean_state'=="Minnesota" & `clean_county'=="Le Sueur"
	replace `countyfips' ="081" if `clean_state'=="Minnesota" & `clean_county'=="Lincoln"
	replace `countyfips' ="083" if `clean_state'=="Minnesota" & `clean_county'=="Lyon"
	replace `countyfips' ="085" if `clean_state'=="Minnesota" & `clean_county'=="McLeod"
	replace `countyfips' ="087" if `clean_state'=="Minnesota" & `clean_county'=="Mahnomen"
	replace `countyfips' ="089" if `clean_state'=="Minnesota" & `clean_county'=="Marshall"
	replace `countyfips' ="091" if `clean_state'=="Minnesota" & `clean_county'=="Martin"
	replace `countyfips' ="093" if `clean_state'=="Minnesota" & `clean_county'=="Meeker"
	replace `countyfips' ="095" if `clean_state'=="Minnesota" & `clean_county'=="Mille Lacs"
	replace `countyfips' ="097" if `clean_state'=="Minnesota" & `clean_county'=="Morrison"
	replace `countyfips' ="099" if `clean_state'=="Minnesota" & `clean_county'=="Mower"
	replace `countyfips' ="101" if `clean_state'=="Minnesota" & `clean_county'=="Murray"
	replace `countyfips' ="103" if `clean_state'=="Minnesota" & `clean_county'=="Nicollet"
	replace `countyfips' ="105" if `clean_state'=="Minnesota" & `clean_county'=="Nobles"
	replace `countyfips' ="107" if `clean_state'=="Minnesota" & `clean_county'=="Norman"
	replace `countyfips' ="109" if `clean_state'=="Minnesota" & `clean_county'=="Olmsted"
	replace `countyfips' ="111" if `clean_state'=="Minnesota" & `clean_county'=="Otter Tail"
	replace `countyfips' ="113" if `clean_state'=="Minnesota" & `clean_county'=="Pennington"
	replace `countyfips' ="115" if `clean_state'=="Minnesota" & `clean_county'=="Pine"
	replace `countyfips' ="117" if `clean_state'=="Minnesota" & `clean_county'=="Pipestone"
	replace `countyfips' ="119" if `clean_state'=="Minnesota" & `clean_county'=="Polk"
	replace `countyfips' ="121" if `clean_state'=="Minnesota" & `clean_county'=="Pope"
	replace `countyfips' ="123" if `clean_state'=="Minnesota" & `clean_county'=="Ramsey"
	replace `countyfips' ="125" if `clean_state'=="Minnesota" & `clean_county'=="Red Lake"
	replace `countyfips' ="127" if `clean_state'=="Minnesota" & `clean_county'=="Redwood"
	replace `countyfips' ="129" if `clean_state'=="Minnesota" & `clean_county'=="Renville"
	replace `countyfips' ="131" if `clean_state'=="Minnesota" & `clean_county'=="Rice"
	replace `countyfips' ="133" if `clean_state'=="Minnesota" & `clean_county'=="Rock"
	replace `countyfips' ="135" if `clean_state'=="Minnesota" & `clean_county'=="Roseau"
	replace `countyfips' ="137" if `clean_state'=="Minnesota" & `clean_county'=="St Louis"
	replace `countyfips' ="137" if `clean_state'=="Minnesota" & `clean_county'=="St. Louis"
	replace `countyfips' ="139" if `clean_state'=="Minnesota" & `clean_county'=="Scott"
	replace `countyfips' ="141" if `clean_state'=="Minnesota" & `clean_county'=="Sherburne"
	replace `countyfips' ="143" if `clean_state'=="Minnesota" & `clean_county'=="Sibley"
	replace `countyfips' ="145" if `clean_state'=="Minnesota" & `clean_county'=="Stearns"
	replace `countyfips' ="147" if `clean_state'=="Minnesota" & `clean_county'=="Steele"
	replace `countyfips' ="149" if `clean_state'=="Minnesota" & `clean_county'=="Stevens"
	replace `countyfips' ="151" if `clean_state'=="Minnesota" & `clean_county'=="Swift"
	replace `countyfips' ="153" if `clean_state'=="Minnesota" & `clean_county'=="Todd"
	replace `countyfips' ="155" if `clean_state'=="Minnesota" & `clean_county'=="Traverse"
	replace `countyfips' ="157" if `clean_state'=="Minnesota" & `clean_county'=="Wabasha"
	replace `countyfips' ="159" if `clean_state'=="Minnesota" & `clean_county'=="Wadena"
	replace `countyfips' ="161" if `clean_state'=="Minnesota" & `clean_county'=="Waseca"
	replace `countyfips' ="163" if `clean_state'=="Minnesota" & `clean_county'=="Washington"
	replace `countyfips' ="165" if `clean_state'=="Minnesota" & `clean_county'=="Watonwan"
	replace `countyfips' ="167" if `clean_state'=="Minnesota" & `clean_county'=="Wilkin"
	replace `countyfips' ="169" if `clean_state'=="Minnesota" & `clean_county'=="Winona"
	replace `countyfips' ="171" if `clean_state'=="Minnesota" & `clean_county'=="Wright"
	replace `countyfips' ="173" if `clean_state'=="Minnesota" & `clean_county'=="Yellow Medicine"
	
