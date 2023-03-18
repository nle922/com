//Recodes independent cities into the surrounting counties
//ALmost all "city" esatablishments coded in counties

replace ag003_fips = "003" if ag001_fips == 51 & ag003_fips == "540"		//Charlottesville
replace ag003_fips = "005" if ag001_fips == 51 & ag003_fips == "560"		//Clifton Forge
replace ag003_fips = "013" if ag001_fips == 51 & ag003_fips == "510"		//Alexandria City
replace ag003_fips = "015" if ag001_fips == 51 & ag003_fips == "790"		//Staunton
replace ag003_fips = "031" if ag001_fips == 51 & ag003_fips == "680"		//Lynchburg
replace ag003_fips = "053" if ag001_fips == 51 & ag003_fips == "730"		//Petersburg
replace ag003_fips = "069" if ag001_fips == 51 & ag003_fips == "840"		//Winchester
replace ag003_fips = "087" if ag001_fips == 51 & ag003_fips == "760"		//Richmond
replace ag003_fips = "089" if ag001_fips == 51 & ag003_fips == "690"		//Martinsville
replace ag003_fips = "095" if ag001_fips == 51 & ag003_fips == "830"		//Williamsburg
replace ag003_fips = "121" if ag001_fips == 51 & ag003_fips == "750"		//Radford
replace ag003_fips = "800" if ag001_fips == 51 & ag003_fips == "123"		//Nansemond
replace ag003_fips = "143" if ag001_fips == 51 & ag003_fips == "590"		//Danville
replace ag003_fips = "149" if ag001_fips == 51 & ag003_fips == "670"		//Hopewell
replace ag003_fips = "161" if ag001_fips == 51 & ag003_fips == "770"		//Roanoke City
replace ag003_fips = "163" if ag001_fips == 51 & ag003_fips == "530"		//Buena Vista
replace ag003_fips = "165" if ag001_fips == 51 & ag003_fips == "660"		//Harrisonburg
replace ag003_fips = "177" if ag001_fips == 51 & ag003_fips == "630"		//Fredericksburg
replace ag003_fips = "189" if ag001_fips == 51 & ag003_fips == "700"		//Newport News
replace ag003_fips = "191" if ag001_fips == 51 & ag003_fips == "520"		//Bristol City

replace ag003_fips = "005" if ag001_fips == 24 & ag003_fips == "510"		//Code independent city of Baltimore establishments as in county
replace ag003_fips = "189" if ag001_fips == 29 & ag003_fips == "510"		//Code independent city of St. Louis establishments as in county

//These are a bit difference because there do not exist FIPS for some components of the combined area
replace ag003_fips = "800" if ag001_fips == 51 & ag003 == "Nansemond"			//Ceased to exist (use Suffolk instead)
replace ag003_fips = "650" if ag001_fips == 51 & ag003 == "Elizabeth City"		//Ceased to exist (use Hampton instead)
replace ag003_fips = "700" if ag001_fips == 51 & ag003 == "Warwick"				//Ceased to exist (use Newport News instead)
replace ag003_fips = "710" if ag001_fips == 51 & ag002 == "Norfolk"				//City of Norfolk
replace ag003_fips = "710" if ag001_fips == 51 & ag002 == "Norfolk City"		//City of Norfolk
replace ag003_fips = "710" if ag001_fips == 51 & ag002 == "Near Norfolk, Va."	//City of Norfolk
replace ag003_fips = "710" if ag001_fips == 51 & ag002 == "Norfolk Va."			//City of Norfolk
replace ag003_fips = "550" if ag001_fips == 51 & ag002 == "S. Norfolk"			//City absorbed by Chesapeake
replace ag003_fips = "550" if ag001_fips == 51 & ag002 == "South Norfolk"		//City absorbed by Chesapeake
replace ag003_fips = "550" if ag001_fips == 51 & ag002 == "South Norfolk, Va."	//City absorbed by Chesapeake
replace ag003_fips = "550" if ag001_fips == 51 & ag002 == "S. Norfolk"			//City absorbed by Chesapeake
replace ag003_fips = "550" if ag001_fips == 51 & ag002 == "Norfolk County"		//County absorbed absorbed by Chesapeake
replace ag003_fips = "550" if ag001_fips == 51 & ag002 == "Portsmouth"			//Independent city surrounded by Chesapeake, used Chesapeake to be consistent
                

replace ag003_fips = "189" if ag001_fips == 29 & ag003 == "St. Louis, City Of"		//Code independent city of St. Louis establishments as in county
replace ag003_fips = "189" if ag001_fips == 29 & ag003 == "St. Louis City"		//Code independent city of St. Louis establishments as in county
replace ag003_fips = "005" if ag001_fips == 24 & ag003 == "Baltimore, City Of"		//Code independent city of St. Louis establishments as in county
