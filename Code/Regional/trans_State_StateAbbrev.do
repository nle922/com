//translate state names to state abbreviations

//var_to_read - variable name with state name
//var_to_gen - variable to generate with state abbrevs. will overwrite 
//variable if it exists
args var_to_read var_to_gen

tempvar clean_`var_to_read'
//make sure properly capitalized
gen `clean_`var_to_read'' = proper(`var_to_read')

capture gen `var_to_gen' = ""
//overwrite if variable already exsts
if _rc>0{
	replace `var_to_gen' = ""
}

quietly replace `var_to_gen' = "AL" if `clean_`var_to_read''=="Alabama"
quietly replace `var_to_gen' = "AZ" if `clean_`var_to_read''=="Arizona"
quietly replace `var_to_gen' = "AR" if `clean_`var_to_read''=="Arkansas"
quietly replace `var_to_gen' = "CA" if `clean_`var_to_read''=="California"
quietly replace `var_to_gen' = "CO" if `clean_`var_to_read''=="Colorado"
quietly replace `var_to_gen' = "CT" if `clean_`var_to_read''=="Connecticut"
quietly replace `var_to_gen' = "DE" if `clean_`var_to_read''=="Delaware"
quietly replace `var_to_gen' = "DC" if `clean_`var_to_read''=="District of Columbia"
quietly replace `var_to_gen' = "FL" if `clean_`var_to_read''=="Florida"
quietly replace `var_to_gen' = "GA" if `clean_`var_to_read''=="Georgia"
quietly replace `var_to_gen' = "IL" if `clean_`var_to_read''=="Illinois"
quietly replace `var_to_gen' = "IN" if `clean_`var_to_read''=="Indiana"
quietly replace `var_to_gen' = "IA" if `clean_`var_to_read''=="Iowa"
quietly replace `var_to_gen' = "KS" if `clean_`var_to_read''=="Kansas"
quietly replace `var_to_gen' = "KY" if `clean_`var_to_read''=="Kentucky"
quietly replace `var_to_gen' = "LA" if `clean_`var_to_read''=="Louisiana"
quietly replace `var_to_gen' = "ME" if `clean_`var_to_read''=="Maine"
quietly replace `var_to_gen' = "MD" if `clean_`var_to_read''=="Maryland"
quietly replace `var_to_gen' = "MA" if `clean_`var_to_read''=="Massachusetts"
quietly replace `var_to_gen' = "MI" if `clean_`var_to_read''=="Michigan"
quietly replace `var_to_gen' = "MN" if `clean_`var_to_read''=="Minnesota"
quietly replace `var_to_gen' = "MS" if `clean_`var_to_read''=="Mississippi"
quietly replace `var_to_gen' = "MO" if `clean_`var_to_read''=="Missouri"
quietly replace `var_to_gen' = "NE" if `clean_`var_to_read''=="Nebraska"
quietly replace `var_to_gen' = "NH" if `clean_`var_to_read''=="New Hampshire"
quietly replace `var_to_gen' = "NJ" if `clean_`var_to_read''=="New Jersey"
quietly replace `var_to_gen' = "NY" if `clean_`var_to_read''=="New York"
quietly replace `var_to_gen' = "NC" if `clean_`var_to_read''=="North Carolina"
quietly replace `var_to_gen' = "OH" if `clean_`var_to_read''=="Ohio"
quietly replace `var_to_gen' = "OR" if `clean_`var_to_read''=="Oregon"
quietly replace `var_to_gen' = "OK" if `clean_`var_to_read''=="Oklahoma"
quietly replace `var_to_gen' = "TX" if `clean_`var_to_read''=="Texas"
quietly replace `var_to_gen' = "UT" if `clean_`var_to_read''=="Utah"
quietly replace `var_to_gen' = "WA" if `clean_`var_to_read''=="Washington"
quietly replace `var_to_gen' = "WV" if `clean_`var_to_read''=="West Virginia"
quietly replace `var_to_gen' = "PA" if `clean_`var_to_read''=="Pennsylvania"
quietly replace `var_to_gen' = "RI" if `clean_`var_to_read''=="Rhode Island"
quietly replace `var_to_gen' = "SC" if `clean_`var_to_read''=="South Carolina"
quietly replace `var_to_gen' = "TN" if `clean_`var_to_read''=="Tennessee"
quietly replace `var_to_gen' = "VT" if `clean_`var_to_read''=="Vermont"
quietly replace `var_to_gen' = "VA" if `clean_`var_to_read''=="Virginia"
quietly replace `var_to_gen' = "WI" if `clean_`var_to_read''=="Wisconsin"
quietly replace `var_to_gen' = "WY" if `clean_`var_to_read''=="Wyoming"
quietly replace `var_to_gen' = "MT" if `clean_`var_to_read''=="Montana"
quietly replace `var_to_gen' = "ID" if `clean_`var_to_read''=="Idaho"
quietly replace `var_to_gen' = "NV" if `clean_`var_to_read''=="Nevada"
quietly replace `var_to_gen' = "NM" if `clean_`var_to_read''=="New Mexico"
quietly replace `var_to_gen' = "ND" if `clean_`var_to_read''=="North Dakota"
quietly replace `var_to_gen' = "SD" if `clean_`var_to_read''=="South Dakota"
