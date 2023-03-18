//Identify "wandering" establishments that move between counties over time

//Using ag003_fips_cpp since presumably the most correct?
destring ag003_fips_cpp, replace force
foreach op in max min{
	bysort establishment_id: egen `op'_ag003_fips_cpp = `op'(ag003_fips_cpp)
}

count if max_ag003_fips_cpp ~= min_ag003_fips_cpp
bysort industry_code_num: count if max_ag003_fips_cpp ~= min_ag003_fips_cpp

foreach indnum in 119 1008 101 1112 118 121 1301 131 1401 1608 216 312 314 606 631 705 99999{	
	count if max_ag003_fips_cpp ~= min_ag003_fips_cpp & industry_code_num == "`indnum'"
	if `r(N)' > 0{
		export excel year obs_id establishment_id firm_id a001 a002 ag001_fips ag002 ag003_fips_cpp ag004 using "./SES1459263 Team Folder/V2/Establishment Link Updates/Bad Links/Geographies/bad_`indnum'" if max_ag003_fips_cpp ~= min_ag003_fips_cpp  & industry_code_num == "`indnum'", replace firstrow(variables)
	export excel  year obs_id  establishment_id firm_id a001 a002 ag001_fips ag002 ag003_fips_cpp ag004 using "./SES1459263 Team Folder/V2/Establishment Link Updates/Bad Links/Geographies/`indnum'_minus_badOnes"  if max_ag003_fips_cpp == min_ag003_fips_cpp  & industry_code_num == "`indnum'", firstrow(variables) replace
	}
}

//Wandering establishments within firms
egen firmid_g = group(firm_id)
foreach op in max min{
	bysort establishment_id: egen `op'_firmid = `op'(firmid_g)
}

count if max_firmid ~= min_firmid
bysort industry_code_num: count if max_firmid ~= min_firmid
sort establishment_id year 

foreach indnum in 119 1008 101 1112 118 121 1301 131 1401 1608 216 312 314 606 631 705 99999{	
	count if max_firmid ~= min_firmid & industry_code_num == "`indnum'"
	if `r(N)' > 0{
		export excel year obs_id establishment_id firm_id a001 a002 ag001_fips ag002 ag003_fips_cpp ag004 using "./SES1459263 Team Folder/V2/Establishment Link Updates/Bad Links/Firms/bad_`indnum'_firmid" if max_firmid ~= min_firmid  & industry_code_num == "`indnum'", replace firstrow(variables)
		export excel  year obs_id  establishment_id firm_id a001 a002 ag001_fips ag002 ag003_fips_cpp ag004 using "./SES1459263 Team Folder/V2/Establishment Link Updates/Bad Links/Firms/`indnum'_minus_badOnes_firmid"  if max_firmid == min_firmid  & industry_code_num == "`indnum'", firstrow(variables) replace
	}
}

drop *_ag003_fips_cpp
