//Code to fix bad establishment matches in indnum==1608
replace establishment_id = "" if obs_id == "19351608000000000025"
replace firm_id = "" if obs_id == "19351608000000000025"

//Fill in missing values
foreach type in firm establishment{
	do "./Cleaning Scripts/General/gen_id" "1608" "`type'"
}
