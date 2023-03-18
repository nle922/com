//update the FIPS codes for independent cities which had been classified into surrounding counties
replace ag003_fips_CPP = 790 if ag001_fips == 51 & ag003_fips_CPP == 15		& ag002  == "STAUNTON"	
replace ag003_fips_CPP = 680 if ag001_fips == 51 & ag003_fips_CPP == 31		& ag002  == "LYNCHBURG"	
replace ag003_fips_CPP = 730 if ag001_fips == 51 & ag003_fips_CPP == 53		& ag002  == "PETERSBURG"	
replace ag003_fips_CPP = 840 if ag001_fips == 51 & ag003_fips_CPP == 69		& ag002  == "WINCHESTER"	
replace ag003_fips_CPP = 760 if ag001_fips == 51 & ag003_fips_CPP == 87		& ag002  == "RICHMOND"	
replace ag003_fips_CPP = 830 if ag001_fips == 51 & ag003_fips_CPP == 95		& ag002  == "WILLIAMSBURG"	
replace ag003_fips_CPP = 750 if ag001_fips == 51 & ag003_fips_CPP == 121	& ag002  == "RADFORD"		
replace ag003_fips_CPP = 123 if ag001_fips == 51 & ag003_fips_CPP == 800	& ag002  == "NANSEMOND"		
replace ag003_fips_CPP = 590 if ag001_fips == 51 & ag003_fips_CPP == 143	& ag002  == "DANVILLE"		
replace ag003_fips_CPP = 670 if ag001_fips == 51 & ag003_fips_CPP == 149	& ag002  == "HOPEWELL"	
replace ag003_fips_CPP = 770 if ag001_fips == 51 & ag003_fips_CPP == 161	& ag002  == "ROANOKE"		
replace ag003_fips_CPP = 530 if ag001_fips == 51 & ag003_fips_CPP == 163	& ag002  == "BUENA VISTA"	
replace ag003_fips_CPP = 660 if ag001_fips == 51 & ag003_fips_CPP == 165	& ag002  == "HARRISONBURG"		
replace ag003_fips_CPP = 630 if ag001_fips == 51 & ag003_fips_CPP == 177	& ag002  == "FREDERICKSBURG"		
replace ag003_fips_CPP = 520 if ag001_fips == 51 & ag003_fips_CPP == 191	& ag002  == "BRISTOL"	
replace ag003_fips_CPP = 510 if ag002 == "SAINT LOUIS" & ag001_fips == 29		
replace ag003_fips_CPP = 510 if ag002 == "BALTIMORE" & ag001_fips == 24	
replace ag003_fips_CPP = 510 if ag002 == "SAINTLOUIS" & ag001_fips == 29
replace ag003_fips_CPP = 740 if ag002 == "PORTSMOUTH" & ag001_fips == 51
replace ag003_fips_CPP = 700 if ag002 == "NEWPORT NEWS" & ag001_fips == 51
replace ag003_fips_CPP = 800 if ag002 == "SUFFOLK" & ag001_fips == 51
replace ag003_fips_CPP = 690 if ag002 == "MARTINSVILLE" & ag001_fips == 51
replace ag003_fips_CPP = 510 if ag002 == "ALEXANDRIA" & ag001_fips == 51
replace ag003_fips_CPP = 678 if ag002 == "LEXINGTON" & ag001_fips == 51
replace ag003_fips_CPP = 580 if ag002 == "COVINGTON" & ag001_fips == 51
replace ag003_fips_CPP = 650 if ag002 == "HAMPTON" & ag001_fips == 51
replace ag003_fips_CPP = 720 if ag002 == "NORTON" & ag001_fips == 51
replace ag003_fips_CPP = 147 if ag002 == "FARMVILLE" & ag001_fips == 51
replace ag003_fips_CPP = 683 if ag002 == "MANASSAS" & ag001_fips == 51

//Just a typo from before?
replace ag003_fips_CPP = 1 if ag002 == "WASHINGTON" & ag001_fips == 11 

//Update NYC to have a town name if only county (county and town are coterminous) 
replace ag002 = "BRONX" if ag003_fips_CPP == 5 & ag001_fips == 36
replace ag002 = "BROOKLYN" if ag003_fips_CPP == 47 & ag001_fips == 36
replace ag002 = "MANHATTAN" if ag003_fips_CPP == 61 & ag001_fips == 36
replace ag002 = "QUEENS" if ag003_fips_CPP == 81 & ag001_fips == 36
replace ag002 = "RICHMOND" if ag003_fips_CPP == 85 & ag001_fips == 36		//Not sure why Staten Island is only Richmond in the CPP

//And vice versa
replace ag003_fips_CPP = 5 if ag002 == "BRONX" & ag001_fips == 36
replace ag003_fips_CPP = 47 if ag002 == "BROOKLYN"  & ag001_fips == 36
replace ag003_fips_CPP = 61 if ag002 == "MANHATTAN"  & ag001_fips == 36
replace ag003_fips_CPP = 81 if ag002 == "QUEENS" & ag001_fips == 36
replace ag003_fips_CPP = 85 if ag002 == "RICHMOND" & ag001_fips == 36		//Not sure why Staten Island is only Richmond in the CPP

//Not sure how to handle these exactly
replace ag003_fips_CPP = 61 if ag002 == "NEW YORK"  & ag001_fips == 36

//Inconsistent county geography	with CPP	
replace ag003_fips_CPP = 89 if ag002 == "ATLANTA" & ag001_fips == 13			//Coded as DeKalb in CPP
replace ag003_fips_CPP = 209 if ag002 == "KANSAS CITY" & ag001_fips == 20		//Kansas City, KS

//Not totally sure how these were messed up
replace ag003_fips_CPP = 105 if ag002 == "BLOOMINGTON" & ag001_fips == 18
replace ag003_fips_CPP = 3 if ag002 == "NEW CASTLE" & ag001_fips == 10
replace ag003_fips_CPP = 113 if ag002 == "BLOOMINGTON" & ag001_fips == 17
replace ag003_fips_CPP = 139 if ag002 == "NEW CASTLE" & ag001_fips == 18
replace ag003_fips_CPP = 99 if ag002 == "GENEVA" & ag001_fips == 36
replace ag003_fips_CPP = 95 if ag002 == "BETHLEHEM" & ag001_fips == 42
replace ag003_fips_CPP = 91 if ag002 == "LA PORTE" & ag001_fips == 18
replace ag003_fips_CPP = 33 if ag002 == "BATON ROUGE" & ag001_fips == 22
replace ag003_fips_CPP = 133 if ag002 == "HALEYVILLE" & ag001_fips == 1
replace ag003_fips_CPP = 79 if ag002 == "SEDGWICK" & ag001_fips == 20

//Handcode some place name changes
replace ag002 = "ST. PAUL" if ag002 == "SAINT PAUL" & ag001_fips == 27
replace ag002 = "ST. PAUL" if ag002 == "SAINTPAUL" & ag001_fips == 27
