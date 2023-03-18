//Fix geography variable issues

//These were cases of failure to match to Fed district records. 
//There are still about 50 establishments with no identifying informaiton at all.
replace ag003 = "Burleigh" if industry_code_num==101 & ag003=="Butleigh" & ag001=="Dakota" 
replace ag003 = "North Dakota" if industry_code_num==101 & ag003=="Burleigh" & ag001=="Dakota" 
replace ag003 = "Neshoba" if industry_code_num==101 & ag001=="Mississippi" & ag003=="Neshap"
replace ag001 = "California" if industry_code_num==101 & ag003=="Los Angeles" & ag001==""
replace ag001 ="Texas" if industry_code_num==101 & ag003=="Kleberg" & ag001==""
replace ag003 = "Humphreys" if industry_code_num==101 & ag003=="Hamphreys" & ag001=="Mississippi"
replace ag001 = "Mississippi" if ag003=="Mississippi"  &  industry_code_num==101 & ag001==""
replace ag001 = "Texas" if ag003=="Gray" &  industry_code_num==101 & ag001==""
replace ag003 = "Davidson" if ag003=="Downtown" &  industry_code_num==101 & ag001=="Tennessee"
replace ag001 = "Illinois" if ag003=="Lake" &  industry_code_num==101 & ag001==""
replace ag001 = "Missouri" if ag003=="Jackson" &  industry_code_num==101 & ag001==""
replace ag001 = "Mississippi" if industry_code_num==101 & ag001=="Mississipi"
replace ag001 = "New York" if ag003=="Bronx" &  industry_code_num==118 & ag001==""
replace ag001 = "Ohio" if ag003=="Noble" &  industry_code_num==118 & ag001==""
replace ag001 = "California" if ag003=="Sonoma" &  industry_code_num==118 & ag001==""
replace ag001 = "Connecticut" if ag003=="Fairfield" &  industry_code_num==118 & ag001==""
replace ag001 = "Indiana" if ag003=="Boone" &  industry_code_num==119 & ag001==""
replace ag001 = "New York" if ag003=="Queens" &  industry_code_num==119 & ag001==""
replace ag001 = "Washington" if ag003=="Grays Harbor" &  industry_code_num==119 & ag001==""
gen flag = ag003=="Tecumseh" &  industry_code_num==121 & ag001==""
replace ag001 = "Michigan"  if flag
replace ag002 = "Lenowee" if flag
replace ag004= "" if flag
drop flag
replace ag001 = "Wisconsin" if ag003=="Washington" &  industry_code_num==1301 & ag001==""
replace ag001 = "Pennsylvania" if ag003=="Jefferson" &  industry_code_num==314 & ag001==""
replace ag003 = "Attala" if ag003=="Atala" &  industry_code_num==314 & ag001=="Mississippi"
replace ag001 = "Kansas" if ag003=="Sedgwick" &  industry_code_num==314 & ag001==""
replace ag001 = "North Carolina" if ag003=="Buncombe" &  industry_code_num==314 & ag001==""
replace ag001 = "Connecticut" if ag003=="Montgomery" &  industry_code_num==314 & ag001==""
replace ag001 = "Connecticut" if ag003=="New London" &  industry_code_num==314 & ag001==""

//Fix some missing county cases
replace ag003 = "Newberry" if ag003=="Newburg" & ag001=="South Carolina"
replace ag003 = "Denver" if ag002=="Denver" & ag001=="Colorado"
replace ag003 = "Los Angeles" if ag002=="Santa Monica" & ag001=="California"
replace ag003 = "Emery" if ag002=="Orange" & ag001=="Utah"
replace ag002 = "Orangeville" if ag002=="Orange" & ag001=="Utah"
replace ag003 = "Henry" if ag003=="Harvey" & ag001=="Indiana"

//Replace question marks with missing
foreach var in ag002 ag003{
	replace `var' = "" if `var' == "?"
	replace `var' = "" if `var' == "??"
	replace `var' = "" if `var' == "???"
}
