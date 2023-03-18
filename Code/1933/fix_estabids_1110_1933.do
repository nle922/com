//fix estabids for industry 1110 in 1933

replace id = "32" if a001=="Chateaugay Ore and Iron Company" & ag002=="Lyon Mountain"
replace id = "32b"  if  ag002=="Standish" & id == "32"
replace id = "5004" if a001=="Duquesne Flue Dust Sintering Plant"
replace id = "5003" if a001=="Hubbard Sintering Plant"
replace id = "5002" if a001=="Buffalo Sintering Corp."
replace id = "17" if a001=="Joliet Works"
