//fix estabids for industry 1110 in 1935

replace id ="5002" if a001=="Buffalo Sintering Plant"
replace id = "32" if a001=="Chateaugay Ore and Iron Company" & bm001=="magnetic crude iron ore, anthrafine, fuel oil"
replace id = "32b" if a001=="Chateangay Ore and Iron Company" & bm001=="Sintered Ore, Coke, and Limestone"
replace id = "5003" if a001=="Hubbard Sintering Plant"

