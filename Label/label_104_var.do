//label variables for industry 104 (canned fish)

//label output variables
//smoked fish types
foreach type_fish of Finnan Herring Salmon Other {
    local squeeze = substr("`type_fish'", " ","")
    capture label var gp_s_smokedFish_`squeeze' "Output: Smoked fish `type_fish', specify"
    capture label var gp_q_smokedFish_`squeeze' "Output: Smoked fish `type_fish', qt."
    capture label var gp_v_smokedFish_`squeeze' "Output: Smoked fish `type_fish', value"
}

//dried fish types
foreach type_fish of Cod Herring Other {
    local squeeze = substr("`type_fish'", " ","")
    capture label var gp_s_driedFish_`squeeze' "Output: Dried fish `type_fish', specify"
    capture label var gp_q_driedFish_`squeeze' "Output: Dried fish `type_fish', qt."
    capture label var gp_v_driedFish_`squeeze' "Output: Dried fish `type_fish', value"
}

//salted fish types
foreach type_fish of Cod Haddock Herring Salmon Mackerel Other1 Other2 Other3 Other4 Other5 {
    local squeeze = substr("`type_fish'", " ","")
    capture label var gp_s_saltedFish_`squeeze' "Output: Salted and pickled fish `type_fish', specify"
    capture label var gp_q_saltedFish_`squeeze' "Output: Salted and pickled  fish `type_fish', qt."
    capture label var gp_v_saltedFish_`squeeze' "Output: Salted and pickled  fish `type_fish', value"
}

//boneless fish types
foreach type_fish of Cod Haddock Other1 Other2 Other3 Other4 Other5 Other6 {
    local squeeze = substr("`type_fish'", " ","")
    capture label var gp_s_bonelessFish_`squeeze' "Output: Boneless fish `type_fish', specify"
    capture label var gp_q_bonelessFish_`squeeze' "Output: Boneless fish `type_fish', qt."
    capture label var gp_v_bonelessFish_`squeeze' "Output: Boneless fish `type_fish', value"
}

capture label var gp_q_fishOil "Output: Fish oil, qt."
capture label var gp_v_fishOil "Output: Fish oil, value"
capture label var gp_q_fishScrap_dried "Output: Fish scrap dried, qt."
capture label var gp_v_fishScrap_dried "Output: Fish scrap dried, value"
capture label var gp_q_fishScrap_green "Output: Fish scrap dried, qt."
capture label var gp_v_fishScrap_green "Output: Fish scrap dried, value"
capture label var gp_q_fertilizer "Output: Fertilizer, qt."
capture label var gp_v_fertilizer "Output: Fertilizer, value"
capture label var gp_q_liquidGlue "Output: Liquid Glue, qt."
capture label var gp_v_liquidGlue "Output: Liquid Glue, value"
capture label var gp_q_crushedOysterShells "Output: Crushed Oyster Shells, qt."
capture label var gp_v_crushedOysterShells "Output: Crushed Oyster Shells, value"
capture label var gp_q_oysterShellLine "Output: Oyster Shell Line, qt."
capture label var gp_v_oysterShellLine "Output: Oyster Shell Line, value"
