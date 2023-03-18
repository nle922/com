//Generate peristsent obs_id

//Drop all missings
missings dropobs *, force

//Drop pure duplicates
duplicates drop *, force

//Recast strL to str2045 for use in hashsort
foreach var of varlist *{
	capture confirm strL variable `var'
	if !_rc{
		recast str2045 `var', force 
	}
}


//Create persistent ID assuming spreadsheets are not changed
hashsort *, sortgen gen(ID_num) compress 
gen obs_id = string(ID_num, "%012.0f")
drop ID_num
