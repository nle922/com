//Code to fix bad establishment matches in indnum==131
replace establishment_id = "" if obs_id == "1929131000000000013"
replace firm_id = "" if obs_id == "1929131000000000013"

//Fill in missing values
foreach type in firm establishment{
	do "./Cleaning Scripts/General/gen_id" "131" "`type'"
}
