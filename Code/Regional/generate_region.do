//Generate Regional dummies

gen new_england = (ag001 == "Connecticut" | ag001 == "Maine" | ag001 == "Massachusetts" | ag001 == "New Hampshire" | ag001 == "Rhode Island" | ag001 == "Vermont")
gen mid_atlantic = (ag001 == "New Jersey" | ag001 == "New York" | ag001 == "Pennsylvania")
gen east_north_central = (ag001 == "Illinois" | ag001 == "Indiana" | ag001 == "Michigan" | ag001 == "Ohio" | ag001 == "Wisconsin")
gen west_north_central = (ag001 == "Iowa" | ag001 == "Kansas" | ag001 == "Minnesota" | ag001 == "Missouri" | ag001 == "Nebraska" | ag001 == "North Dakota" | ag001 == "South Dakota")
gen south_atlantic = (ag001 == "Delaware" | ag001 == "District of Columbia" | ag001 == "Florida" | ag001 == "Georgia" | ag001 == "Maryland" | ag001 == "North Carolina" | ag001 == "South Carolina" | ag001 == "Virginia" | ag001 == "West Virginia")
gen east_south_central = (ag001 == "Alabama" | ag001 == "Kentucky" | ag001 == "Mississippi" | ag001 == "Tennessee")
gen west_south_central = (ag001 == "Arkansas" | ag001 == "Louisiana" | ag001 == "Oklahoma" | ag001 == "Texas")
gen mountain = (ag001 == "Arizona" | ag001 == "Colorado" | ag001 == "Idaho" | ag001 == "Montana" | ag001 == "Nevada" | ag001 == "New Mexico" | ag001 == "Utah" | ag001 == "Wyoming") 
gen pacific = (ag001 == "Alaska" | ag001 == "California" | ag001 == "Hawaii" | ag001 == "Oregon" | ag001 == "Washington")

label var mid_atlantic "Mid-Atlantic" 
label var east_north_central "East North Central"
label var west_north_central "West North Central" 
label var south_atlantic "South Atlantic" 
label var east_south_central "East South Central" 
label var west_south_central "West South Central" 
label var mountain "Mountain" 
label var pacific "Pacific" 
label var new_england "New England"

//define region category variable
gen region = .
label var region "Census Region"
replace region = 1 if new_england == 1
replace region = 2 if mid_atlantic == 1
replace region = 3 if east_north_central == 1
replace region = 4 if west_north_central == 1
replace region = 5 if south_atlantic == 1
replace region = 6 if east_south_central == 1
replace region = 7 if west_south_central == 1
replace region = 8 if mountain == 1
replace region = 9 if pacific == 1
capture label define regions_label 1 "New England" 2 "Mid Atlantic" 3 "East North Central" 4 "West North Central" 5 "South Atlantic" 6 "East South Central" 7 "West South Central" 8 "Mountain" 9 "Pacific"
capture label values region regions_label
