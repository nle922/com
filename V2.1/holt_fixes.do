destring ag001_fips ag003_fips, replace		//To be consistent with the CPP code

//Geographic Fixes provided by Andrew Holt
replace ag003_fips = 59 if ag001=="ARKANSAS" & ag003=="HOT SPRINGS" & ag002=="MALVERN"             /* Malvern Hot Springs is in Hot Spring county, not Garland county*/ 
replace ag003_fips = 59 if ag001=="ARKANSAS" & ag003=="HOT SPRINGS" & ag002=="MILES SOUTHWEST OF"  /* Malvern Hot Springs is in Hot Spring county, not Garland county*/ 

replace ag003_fips=510 if obs_id=="1929314000000001703"  /* Brooklyn is a neighborhood in the City of Baltimore today. Though Brooklyn park is in Arundel County today. This observation is either in the city proper or in Arundel county.*/

replace ag003_fips=189 if obs_id=="19351401000000000030"  /* Lambert Airport is in St. Louis county, not St. Louis the city.*/
replace ag003_fips=189 if obs_id=="19331401000000000027"  /* Lambert Airport is in St. Louis county, not St. Louis the city.*/

replace ag003_fips=189 if obs_id=="19291401000000000075"  /* Hazelwood MO took over Robertson MO and both towns were located in St. Louis county near Lambert Aiirport.*/
replace ag003_fips=189 if obs_id=="19291401000000000073"  /* Hazelwood MO took over Robertson MO and both towns were located in St. Louis county near Lambert Aiirport.*/
replace ag003_fips=189 if obs_id=="19351401000000000032"  /* Hazelwood MO took over Robertson MO and both towns were located in St. Louis county near Lambert Aiirport.*/
replace ag003_fips=189 if obs_id=="19311401000000000047"  /* Hazelwood MO took over Robertson MO and both towns were located in St. Louis county near Lambert Aiirport.*/

replace ag003_fips=189 if obs_id=="19351401000000000032"  /* Webster Groves is a city in St. Louis County, not St. Louis the city. */
replace ag003_fips=189 if obs_id=="19351401000000000032"  /* Webster Groves is a city in St. Louis County, not St. Louis the city. */

replace ag003_fips=770 if obs_id=="1935101000000002426"  /* City of Roanoke is different than Roanoke County. */
replace ag003_fips=770 if obs_id=="1931314000000002863"  /* City of Roanoke is different than Roanoke County. */

replace ag003_fips=121 if ag001_fips==13 & ag003_fips==89 & ag003=="FULTON" & ag002=="ATLANTA"    /* Obversations in Atlanta that say they are in Fulton county should be placed in Fulton county */
replace ag003_fips=121 if ag001_fips==13 & ag003_fips==89 & ag003=="FULTON" & ag002=="ALTLANTA"   /* Obversations in Atlanta that say they are in Fulton county should be placed in Fulton county */
replace ag003_fips=121 if ag001_fips==13 & ag003_fips==89 & ag003=="ATLANTA" & ag002=="ATLANTA"   /* Obversations in Atlanta that say they are in Fulton county should be placed in Fulton county */

replace ag003_fips=17 if obs_id=="1935101000000000086"  /* Eudora is in Chicot county Arkansas and not in Desha. */

 replace ag003_fips = 59 if obs_id=="1933314000000000037"  /* Plant probably in Malvern Arkansas. Malvern Hot Springs is in Hot Spring county, not Garland county*/ 
 replace ag003_fips = 59 if obs_id=="1931314000000000100"  /* Plant probably in Malvern Arkansas. Malvern Hot Springs is in Hot Spring county, not Garland county*/ 

replace ag003_fips = 25 if ag003_fips==86 & ag003=="DADE" & ag001_fips==12 /* Miami-Dade county didn't exist in the 1930s. Can't merge with ag003_fips code equal to 86.*/
 
replace ag003_fips = 67 if obs_id=="1935314000000000496"  /* Plant in Roswell GA put in Cobb county to match other establishments that report being in Rosswell GA. County boundaries changed. */

replace ag003_fips = 133 if obs_id=="1929216000000000809"  /* Plant is actully located in Greene county. */

replace ag003_fips = 83 if obs_id=="1935101000000000553"  /* Town Falls is probably actually "Twin Falls" and there was a Western Bottling Works in Twin Falls. */

replace ag003_fips = 65 if ag003_fips==139 & ag001_fips==18 & ag003=="HENRY" /* Henry county Ilinios has a fips code of 65. */
 
 /* The next four observations are all the same establishement. They all report being located in Jefferson IA, but Jefferson is in Green county, not Jefferson county. 
	This establishment actually reports Greens county in 1929. If you check the street address, the plant is located on 111 south chestnut street, Jefferson IA which is 
	in Green county so I am changing the county to Green county.  */ 
replace ag003_fips = 73 if obs_id=="1931101000000000923"   
replace ag003_fips = 73 if obs_id=="1935101000000000837"   
replace ag003_fips = 73 if obs_id=="1933101000000000768"   
replace ag003_fips = 73 if obs_id=="1929101000000001143"   

 /* Seven observations report being in the city of Sedgwick and in the county of Wichita. This should be reversed. */ 
replace ag003_fips = 173 if obs_id=="19291401000000000042"   
replace ag003_fips = 173 if obs_id=="19351401000000000021"   
replace ag003_fips = 173 if obs_id=="19291401000000000050"   
replace ag003_fips = 173 if obs_id=="19291401000000000044"   
replace ag003_fips = 173 if obs_id=="19291401000000000049"   
replace ag003_fips = 173 if obs_id=="19291401000000000041"   
replace ag003_fips = 173 if obs_id=="19351401000000000020"   

 /* This is probably a typo but the county fips for Cloud county Kansas is 29.  */ 
replace ag003_fips = 29 if obs_id=="1933118000000000498"   
  
 /* Rayne, Lousiana is not in Arcadia county but in Acadia county which has a county fips code of 1. 
	There is an Arcadia Lousiana which is a city in a different county, but I think this is an example of 
	the county being misspelled and not an example of the city being reported in the county column. */ 
replace ag003_fips = 1 if obs_id=="1929101000000001312"   

/* The city of Lafayette is in Lafayette county, not St. Bernard. */ 
replace ag003_fips = 55 if obs_id=="1935314000000000891"   

/* 3501 BREHMS LANE is in the city of Baltimore and not Baltimore county. */ 
replace ag003_fips = 510 if obs_id=="1929101000000001428"

/* Doyle Aero was in the city of Baltimore and not Baltimore county. */ 
replace ag003_fips = 510 if obs_id=="19291401000000000055"

/* CARBON AVE. is in the Fairfield neighborhood of the city of Baltimore and not Baltimore county. */ 
replace ag003_fips = 510 if obs_id=="1929314000000001705"

/* The intersection of clipper and union is in the city of Baltimore and not Baltimore county.  */ 
replace ag003_fips = 510 if obs_id=="1931803000000000015"
replace ag003_fips = 510 if obs_id=="1933803000000000016"

/* Dundalk is in the county and not the city of Baltimore.  */ 
replace ag003_fips = 5 if obs_id=="19311401000000000034"
replace ag003_fips = 5 if obs_id=="19331401000000000021"

/* If you look up C. O. WURZBERGER & SONS you will find that the establishement was at 2601 ANNAPOLIS AVENUE BALTO. MD 21230.
   The street address reported by the establishement is ANNAPOLIS AVE. & W. W. R. R. which probably means 
   Annapolis Avenue and Waterway Road because 2601 Annapolis Ave is at the intersection of Annapolis Avenue and Waterway Road
   I do not know why the W and R are repeated though. */ 
replace ag003_fips = 510 if obs_id=="1929314000000001722"

/* 2406 Greenmount Ave is in the city of Baltimore. the -18 in the street address probably corresponds to the unit number or floor level. */ 
replace ag003_fips = 510 if obs_id=="1929314000000001717"

/* The intersection of Bush and Nanticoke Streets are in the city of Baltimore */ 
replace ag003_fips = 510 if obs_id=="1929314000000001717"

/* The city of Newton in Middlesex county is in Middlesex county and not Suffolk county*/ 
replace ag003_fips = 17 if obs_id=="1933RADIO000000000057"

/* The city of Attleboro in Bristol county is in Bristol county and not Suffolk county*/ 
replace ag003_fips = 17 if obs_id=="1929RADIO000000000122"

/* 2694 UNIVERSITY is technically in Mineappolis*/ 
replace ag003_fips = 123  if obs_id=="1929314000000002079"

/* 2233 UNIVERSITY AVE. is technically in St. Paul*/ 
replace ag003_fips = 53 if obs_id=="1933RADIO000000000063"

/* St. Louis city county fips is 510 */ 
replace ag003_fips = 510 if obs_id=="19311005000000003071"

/* 4100 FOREST PARK AVE is in the city of St. Louis. */ 
replace ag003_fips = 510 if obs_id=="1935AUTO000000000053"

/* 8000 NORTH BROADWAY is in the city of St. Louis. */ 
replace ag003_fips = 510 if obs_id=="19351401000000000031"

/* 6500 PAGE AVE. is NOT in the city of St. Louis. */ 
replace ag003_fips = 189 if obs_id=="19351401000000000031"

/* WEBSTER GROVES is NOT in the city of St. Louis. */ 
replace ag003_fips = 189 if obs_id=="1933314000000000831"

/* For some reason these observations have a ag002 of Bronx. I think the algorithm is probably putting them in the 
	Bronx for this reason. However, the street addresses only make sense for Albany New York. P.S. I didn't check 
	every street address. I just looked through like 6 different establishments and they were all in Albany county.*/ 
	replace ag003_fips = 1 if obs_id=="19311005000000003275"
	replace ag003_fips = 1 if obs_id=="19291005000000000910"
	replace ag003_fips = 1 if obs_id=="19331005000000004240"
	replace ag003_fips = 1 if obs_id=="19291005000000000912"
	replace ag003_fips = 1 if obs_id=="19311005000000003279"
	replace ag003_fips = 1 if obs_id=="19351005000000005119"
	replace ag003_fips = 1 if obs_id=="19311005000000003276"
	replace ag003_fips = 1 if obs_id=="19291005000000000911"
	replace ag003_fips = 1 if obs_id=="19311005000000003277"
	replace ag003_fips = 1 if obs_id=="19291005000000000914"
	replace ag003_fips = 1 if obs_id=="19331005000000004239"
	replace ag003_fips = 1 if obs_id=="19351005000000005116"
	replace ag003_fips = 1 if obs_id=="19291005000000000915"
	replace ag003_fips = 1 if obs_id=="19311005000000003278"
	replace ag003_fips = 1 if obs_id=="19291005000000000909"
	replace ag003_fips = 1 if obs_id=="19351005000000005115"
	replace ag003_fips = 1 if obs_id=="19311005000000003274"
	replace ag003_fips = 1 if obs_id=="19331005000000004579"
	replace ag003_fips = 1 if obs_id=="19291005000000000913"
	replace ag003_fips = 1 if obs_id=="19351005000000005118"
	replace ag003_fips = 1 if obs_id=="19291005000000000908"
	replace ag003_fips = 1 if obs_id=="19331005000000004238"
	replace ag003_fips = 1 if obs_id=="19351005000000005117"
	replace ag003_fips = 1 if obs_id=="1935101000000001182"
	replace ag003_fips = 1 if obs_id=="1929101000000003962"
	replace ag003_fips = 1 if obs_id=="1935101000000001179"
	replace ag003_fips = 1 if obs_id=="1929101000000003959"
	replace ag003_fips = 1 if obs_id=="1931101000000002828"
	replace ag003_fips = 1 if obs_id=="1933101000000001676"
	replace ag003_fips = 1 if obs_id=="1935101000000001183"
	replace ag003_fips = 1 if obs_id=="1931101000000002827"
	replace ag003_fips = 1 if obs_id=="1933101000000001675"
	replace ag003_fips = 1 if obs_id=="1935101000000001181"
	replace ag003_fips = 1 if obs_id=="1933101000000001673"
	replace ag003_fips = 1 if obs_id=="1931101000000002824"
	replace ag003_fips = 1 if obs_id=="1929101000000003955"
	replace ag003_fips = 1 if obs_id=="1935101000000001180"
	replace ag003_fips = 1 if obs_id=="1929101000000003957"
	replace ag003_fips = 1 if obs_id=="1933101000000001674"
	replace ag003_fips = 1 if obs_id=="1931101000000002826"
	replace ag003_fips = 1 if obs_id=="1929101000000003960"
	replace ag003_fips = 1 if obs_id=="1935101000000001185"
	replace ag003_fips = 1 if obs_id=="1935101000000001184"
	replace ag003_fips = 1 if obs_id=="1931101000000002829"
	replace ag003_fips = 1 if obs_id=="1933101000000001677"
	replace ag003_fips = 1 if obs_id=="1929101000000003961"
	replace ag003_fips = 1 if obs_id=="1929101000000003958"
	replace ag003_fips = 1 if obs_id=="1933101000000001678"
	replace ag003_fips = 1 if obs_id=="1935101000000001186"
	replace ag003_fips = 1 if obs_id=="1929101000000003963"
	replace ag003_fips = 1 if obs_id=="1931101000000002830"
	replace ag003_fips = 1 if obs_id=="1929101000000003956"
	replace ag003_fips = 1 if obs_id=="1931101000000002825"
	replace ag003_fips = 1 if obs_id=="19291112000000000163"
	replace ag003_fips = 1 if obs_id=="19311112000000000401"
	replace ag003_fips = 1 if obs_id=="19331112000000000307"
	replace ag003_fips = 1 if obs_id=="19291112000000000164"
	replace ag003_fips = 1 if obs_id=="19331112000000000309"
	replace ag003_fips = 1 if obs_id=="19311112000000000403"
	replace ag003_fips = 1 if obs_id=="19351112000000000099"
	replace ag003_fips = 1 if obs_id=="19331112000000000308"
	replace ag003_fips = 1 if obs_id=="19351112000000000098"
	replace ag003_fips = 1 if obs_id=="19291112000000000162"
	replace ag003_fips = 1 if obs_id=="19311112000000000402"
	replace ag003_fips = 1 if obs_id=="1929118000000001769"
	replace ag003_fips = 1 if obs_id=="1931118000000001593"
	replace ag003_fips = 1 if obs_id=="1929118000000001772"
	replace ag003_fips = 1 if obs_id=="1935118000000001333"
	replace ag003_fips = 1 if obs_id=="1929118000000001770"
	replace ag003_fips = 1 if obs_id=="1931118000000001591"
	replace ag003_fips = 1 if obs_id=="1935118000000001332"
	replace ag003_fips = 1 if obs_id=="1929118000000001767"
	replace ag003_fips = 1 if obs_id=="1931118000000001590"
	replace ag003_fips = 1 if obs_id=="1935118000000001334"
	replace ag003_fips = 1 if obs_id=="1929118000000001768"
	replace ag003_fips = 1 if obs_id=="1929118000000001771"
	replace ag003_fips = 1 if obs_id=="1931118000000001592"
	replace ag003_fips = 1 if obs_id=="193311800000000210B"
	replace ag003_fips = 1 if obs_id=="1935118000000001335"
	replace ag003_fips = 1 if obs_id=="1933119000000001875"
	replace ag003_fips = 1 if obs_id=="1935119000000001986"
	replace ag003_fips = 1 if obs_id=="1931119000000002069"
	replace ag003_fips = 1 if obs_id=="1929119000000002021"
	replace ag003_fips = 1 if obs_id=="1933119000000001877"
	replace ag003_fips = 1 if obs_id=="1931119000000002070"
	replace ag003_fips = 1 if obs_id=="1935119000000001987"
	replace ag003_fips = 1 if obs_id=="1929119000000002039"
 	replace ag003_fips = 1 if obs_id=="1929216000000003097"
 	replace ag003_fips = 1 if obs_id=="1929216000000003070"
 	replace ag003_fips = 1 if obs_id=="1931216000000003071"
 	replace ag003_fips = 1 if obs_id=="1929216000000003110"
 	replace ag003_fips = 1 if obs_id=="1929216000000003033"
 	replace ag003_fips = 1 if obs_id=="1935216000000003113"
 	replace ag003_fips = 1 if obs_id=="1929216000000003111"
 	replace ag003_fips = 1 if obs_id=="1931216000000003112"
 	replace ag003_fips = 1 if obs_id=="1931314000000002018"
 	replace ag003_fips = 1 if obs_id=="1929314000000002539"
 	replace ag003_fips = 1 if obs_id=="1931314000000002014"
 	replace ag003_fips = 1 if obs_id=="1933314000000001009"
 	replace ag003_fips = 1 if obs_id=="1935314000000001437"
 	replace ag003_fips = 1 if obs_id=="1929314000000002540"
 	replace ag003_fips = 1 if obs_id=="1931314000000002015"
 	replace ag003_fips = 1 if obs_id=="1931314000000002013"
 	replace ag003_fips = 1 if obs_id=="1929314000000002538"
 	replace ag003_fips = 1 if obs_id=="1933314000000001011"
 	replace ag003_fips = 1 if obs_id=="1931314000000002017"
 	replace ag003_fips = 1 if obs_id=="1935314000000001439"
 	replace ag003_fips = 1 if obs_id=="1929314000000002541"
 	replace ag003_fips = 1 if obs_id=="1931314000000002016"
 	replace ag003_fips = 1 if obs_id=="1935314000000001438"
 	replace ag003_fips = 1 if obs_id=="1933314000000001010"
 	replace ag003_fips = 1 if obs_id=="1935314000000001436"
 	replace ag003_fips = 1 if obs_id=="1935631000000000141"
 	replace ag003_fips = 1 if obs_id=="1931631000000000169"
 	replace ag003_fips = 1 if obs_id=="1933631000000000135"
 	replace ag003_fips = 1 if obs_id=="1929631000000000157B"
 	replace ag003_fips = 1 if obs_id=="1929631000000000156B"
 	replace ag003_fips = 1 if obs_id=="1935631000000000140"
 	replace ag003_fips = 1 if obs_id=="1931631000000000168"
 	replace ag003_fips = 1 if obs_id=="1933631000000000134"
  	replace ag003_fips = 1 if obs_id=="1929216000000003097"
 	replace ag003_fips = 1 if obs_id=="1929216000000003070"
 	replace ag003_fips = 1 if obs_id=="1931216000000003071"
 	replace ag003_fips = 1 if obs_id=="1929216000000003110"
 	replace ag003_fips = 1 if obs_id=="1929216000000003033"
 	replace ag003_fips = 1 if obs_id=="1935216000000003113"
 	replace ag003_fips = 1 if obs_id=="1929216000000003111"
 	replace ag003_fips = 1 if obs_id=="1931216000000003112"
 	replace ag003_fips = 1 if obs_id=="1931314000000002018"
 	replace ag003_fips = 1 if obs_id=="1929314000000002539"
 	replace ag003_fips = 1 if obs_id=="1931314000000002014"
 	replace ag003_fips = 1 if obs_id=="1933314000000001009"
 	replace ag003_fips = 1 if obs_id=="1935314000000001437"
	
/* Observations in Wellsville, Allegany, New York are not in the Bronx */ 
	replace ag003_fips = 3 if obs_id=="1935119000000001988"
	replace ag003_fips = 3 if obs_id=="1933119000000001961"

/* This next observation is weird af. It says that it is in the Bronx, Albany, New York. 
	However it has the same street address, plant name, and owner name as the two observations above. 
	Thus this observation probably is in Wellsville New York but this is just such an odd observation. */ 
	replace ag003_fips = 3 if obs_id=="1931119000000002071"

/* Queens county fips is 81, not 47 */ 
	replace ag003_fips = 81 if obs_id=="1929121000000000238"
 	
/* Queens county fips is 81, not 47 */ 
	replace ag003_fips = 81 if obs_id=="1929121000000000238"
 	
/* For some reason these observations have a ag002 of New York. I think the algorithm is probably putting them in the 
	New York county for this reason. However, the street addresses only make sense for the Bronx New York. P.S. I didn't check 
	every street address. I just looked through like 6 different establishments and they were all in the Bronx. */ 
	replace ag003_fips = 5 if obs_id=="19331005000000004295"	
	replace ag003_fips = 5 if obs_id=="19331005000000004295"	
	replace ag003_fips = 5 if obs_id=="19311005000000003258"	
	replace ag003_fips = 5 if obs_id=="19291005000000001056"	
	replace ag003_fips = 5 if obs_id=="19311005000000003265"	
	replace ag003_fips = 5 if obs_id=="19331005000000004294"	
	replace ag003_fips = 5 if obs_id=="19291005000000001058"	
	replace ag003_fips = 5 if obs_id=="19351005000000005198"	
	replace ag003_fips = 5 if obs_id=="19311008000000000073"	
	replace ag003_fips = 5 if obs_id=="1931101000000002790"	
	replace ag003_fips = 5 if obs_id=="1933101000000001580"	
	replace ag003_fips = 5 if obs_id=="1929101000000004190"	
	replace ag003_fips = 5 if obs_id=="1935101000000001327"	
	replace ag003_fips = 5 if obs_id=="1931101000000002795"	
	replace ag003_fips = 5 if obs_id=="1935101000000001323"	
	replace ag003_fips = 5 if obs_id=="1931101000000002786"	
	replace ag003_fips = 5 if obs_id=="1929101000000004201"	
	replace ag003_fips = 5 if obs_id=="1933101000000001577"	
	replace ag003_fips = 5 if obs_id=="1931101000000002787"	
	replace ag003_fips = 5 if obs_id=="1935101000000001320"	
	replace ag003_fips = 5 if obs_id=="1929101000000004194"	
	replace ag003_fips = 5 if obs_id=="1931101000000002791"	
	replace ag003_fips = 5 if obs_id=="1929101000000004198"	
	replace ag003_fips = 5 if obs_id=="1931101000000002796"	
	replace ag003_fips = 5 if obs_id=="1931101000000002793"	
	replace ag003_fips = 5 if obs_id=="1929101000000004196"	
	replace ag003_fips = 5 if obs_id=="1935101000000001326"	
	replace ag003_fips = 5 if obs_id=="1933101000000001582"	
	replace ag003_fips = 5 if obs_id=="1931101000000002800"	
	replace ag003_fips = 5 if obs_id=="1935101000000001325"	
	replace ag003_fips = 5 if obs_id=="1933101000000001581"	
	replace ag003_fips = 5 if obs_id=="1929101000000004195"	
	replace ag003_fips = 5 if obs_id=="1931101000000002792"	
	replace ag003_fips = 5 if obs_id=="192910100000000608B"	
	replace ag003_fips = 5 if obs_id=="1935101000000001324"	
	replace ag003_fips = 5 if obs_id=="1929101000000004187"	
	replace ag003_fips = 5 if obs_id=="1931101000000002783"	
	replace ag003_fips = 5 if obs_id=="1935101000000001318"	
	replace ag003_fips = 5 if obs_id=="192910100000000610B"	
	replace ag003_fips = 5 if obs_id=="1929101000000004188"	
	replace ag003_fips = 5 if obs_id=="1931101000000002784"	
	replace ag003_fips = 5 if obs_id=="192910100000000609B"	
	replace ag003_fips = 5 if obs_id=="1931101000000002799"	
	replace ag003_fips = 5 if obs_id=="1929101000000004200"	
	replace ag003_fips = 5 if obs_id=="1933101000000001588"	
	replace ag003_fips = 5 if obs_id=="1935101000000001334"	
	replace ag003_fips = 5 if obs_id=="1929101000000004199"	
	replace ag003_fips = 5 if obs_id=="1931118000000001764"	
	replace ag003_fips = 5 if obs_id=="1929118000000001956"	
	replace ag003_fips = 5 if obs_id=="1931118000000001757"	
	replace ag003_fips = 5 if obs_id=="1929118000000001936"	
	replace ag003_fips = 5 if obs_id=="1929118000000001957"	
	replace ag003_fips = 5 if obs_id=="1929118000000001927"
	replace ag003_fips = 5 if obs_id=="1931118000000001737"
	replace ag003_fips = 5 if obs_id=="1935118000000001477"
	replace ag003_fips = 5 if obs_id=="1929118000000001932"
	replace ag003_fips = 5 if obs_id=="1931118000000001747"
	replace ag003_fips = 5 if obs_id=="1935118000000001475"
	replace ag003_fips = 5 if obs_id=="1931118000000001770"
	replace ag003_fips = 5 if obs_id=="1929118000000001949"
	replace ag003_fips = 5 if obs_id=="1935118000000001460"
	replace ag003_fips = 5 if obs_id=="193311800000000235B"
	replace ag003_fips = 5 if obs_id=="1931118000000001741"
	replace ag003_fips = 5 if obs_id=="1929118000000001944"
	replace ag003_fips = 5 if obs_id=="1931118000000001768"
	replace ag003_fips = 5 if obs_id=="1931118000000001761"
	replace ag003_fips = 5 if obs_id=="1929118000000001931"
	replace ag003_fips = 5 if obs_id=="1931118000000001746"
	replace ag003_fips = 5 if obs_id=="1931118000000001738"
	replace ag003_fips = 5 if obs_id=="1929118000000001948"
	replace ag003_fips = 5 if obs_id=="1929118000000001930"
	replace ag003_fips = 5 if obs_id=="1931118000000001745"
	replace ag003_fips = 5 if obs_id=="1935118000000001474"
	replace ag003_fips = 5 if obs_id=="1931118000000001771"
	replace ag003_fips = 5 if obs_id=="193311800000000243B"
	replace ag003_fips = 5 if obs_id=="1929118000000001950"
	replace ag003_fips = 5 if obs_id=="1931118000000001742"
	replace ag003_fips = 5 if obs_id=="1929118000000001929"
	replace ag003_fips = 5 if obs_id=="1931118000000001744"
	replace ag003_fips = 5 if obs_id=="1931118000000001769"
	replace ag003_fips = 5 if obs_id=="1929118000000001925"
	replace ag003_fips = 5 if obs_id=="1931118000000001735"
	replace ag003_fips = 5 if obs_id=="1931118000000001740"
	replace ag003_fips = 5 if obs_id=="1929118000000001938"
	replace ag003_fips = 5 if obs_id=="1931118000000001758"
	replace ag003_fips = 5 if obs_id=="1931118000000001765"
	replace ag003_fips = 5 if obs_id=="1931118000000001775"
	replace ag003_fips = 5 if obs_id=="1929118000000001953"
	replace ag003_fips = 5 if obs_id=="1931118000000001749"
	replace ag003_fips = 5 if obs_id=="1929118000000001940"
	replace ag003_fips = 5 if obs_id=="1931118000000001750"
	replace ag003_fips = 5 if obs_id=="1935118000000001463"
	replace ag003_fips = 5 if obs_id=="1929118000000001935"
	replace ag003_fips = 5 if obs_id=="1931118000000001756"
	replace ag003_fips = 5 if obs_id=="1929118000000001937"
	replace ag003_fips = 5 if obs_id=="1929118000000001933"
	replace ag003_fips = 5 if obs_id=="1931118000000001752"
	replace ag003_fips = 5 if obs_id=="1931118000000001773"
	replace ag003_fips = 5 if obs_id=="1935118000000001476"
	replace ag003_fips = 5 if obs_id=="1931118000000001751"
	replace ag003_fips = 5 if obs_id=="1929118000000001954"
	replace ag003_fips = 5 if obs_id=="1929118000000001934"
	replace ag003_fips = 5 if obs_id=="1931118000000001753"
	replace ag003_fips = 5 if obs_id=="1931118000000001759"
	replace ag003_fips = 5 if obs_id=="1935118000000001470"
	replace ag003_fips = 5 if obs_id=="1929118000000001942"
	replace ag003_fips = 5 if obs_id=="1931118000000001766"
	replace ag003_fips = 5 if obs_id=="193311800000000242B"
	replace ag003_fips = 5 if obs_id=="1931118000000001754"
	replace ag003_fips = 5 if obs_id=="1929118000000001951"
	replace ag003_fips = 5 if obs_id=="1931118000000001743"
	replace ag003_fips = 5 if obs_id=="1935118000000001465"
	replace ag003_fips = 5 if obs_id=="1929119000000001935"
	replace ag003_fips = 5 if obs_id=="1933119000000001874"
	replace ag003_fips = 5 if obs_id=="1935119000000002101"
	replace ag003_fips = 5 if obs_id=="1933119000000001959"
	replace ag003_fips = 5 if obs_id=="1935119000000002100"
	replace ag003_fips = 5 if obs_id=="1931119000000002078"
	replace ag003_fips = 5 if obs_id=="1931119000000002073"
	replace ag003_fips = 5 if obs_id=="1929119000000001927"
	replace ag003_fips = 5 if obs_id=="1929119000000001931"
	replace ag003_fips = 5 if obs_id=="1933119000000001893"
	replace ag003_fips = 5 if obs_id=="1931119000000002077"
	replace ag003_fips = 5 if obs_id=="1933119000000001979"
	replace ag003_fips = 5 if obs_id=="1931119000000002076"
	replace ag003_fips = 5 if obs_id=="1929119000000001930"
	replace ag003_fips = 5 if obs_id=="1933119000000001882"
	replace ag003_fips = 5 if obs_id=="1929119000000001926"
	replace ag003_fips = 5 if obs_id=="1931119000000002072"
	replace ag003_fips = 5 if obs_id=="1931119000000002079"
	replace ag003_fips = 5 if obs_id=="1931121000000000164"
	replace ag003_fips = 5 if obs_id=="1935121000000000203"
	replace ag003_fips = 5 if obs_id=="1933121000000000200"
	replace ag003_fips = 5 if obs_id=="1929121000000000170"
	replace ag003_fips = 5 if obs_id=="1933121000000000183"
	replace ag003_fips = 5 if obs_id=="1931121000000000165"
	replace ag003_fips = 5 if obs_id=="1929121000000000165"
	replace ag003_fips = 5 if obs_id=="1929121000000000168"
	replace ag003_fips = 5 if obs_id=="1931121000000000163"
	replace ag003_fips = 5 if obs_id=="1929121000000000171"
	replace ag003_fips = 5 if obs_id=="1929121000000000166"
	replace ag003_fips = 5 if obs_id=="1935121000000000204"
	replace ag003_fips = 5 if obs_id=="1931121000000000166"
	replace ag003_fips = 5 if obs_id=="1933121000000000201"
	replace ag003_fips = 5 if obs_id=="1935121000000000202"
	replace ag003_fips = 5 if obs_id=="1933314000000001313"
	replace ag003_fips = 5 if obs_id=="1935314000000001570"
	replace ag003_fips = 5 if obs_id=="1929314000000002821"
	replace ag003_fips = 5 if obs_id=="1931314000000001878"
	replace ag003_fips = 5 if obs_id=="1935314000000001559"
	replace ag003_fips = 5 if obs_id=="1933314000000001308"
	replace ag003_fips = 5 if obs_id=="1933314000000001312"
	replace ag003_fips = 5 if obs_id=="1935314000000001566"
	replace ag003_fips = 5 if obs_id=="1935314000000001569"
	replace ag003_fips = 5 if obs_id=="1935314000000001554"
	replace ag003_fips = 5 if obs_id=="1933314000000001311"
	replace ag003_fips = 5 if obs_id=="1935314000000001568"
	replace ag003_fips = 5 if obs_id=="1929314000000002819"
	replace ag003_fips = 5 if obs_id=="1931314000000001882"
	replace ag003_fips = 5 if obs_id=="1931314000000001872"
	replace ag003_fips = 5 if obs_id=="1935314000000001555"
	replace ag003_fips = 5 if obs_id=="1933314000000001307"
	replace ag003_fips = 5 if obs_id=="1935314000000001561"
	replace ag003_fips = 5 if obs_id=="1935314000000001558"
	replace ag003_fips = 5 if obs_id=="1935314000000001567"
	replace ag003_fips = 5 if obs_id=="1935314000000001571"
	replace ag003_fips = 5 if obs_id=="1931631000000000164"
	replace ag003_fips = 5 if obs_id=="1929631000000000171B"
	replace ag003_fips = 5 if obs_id=="1929RADIO000000000211"
	replace ag003_fips = 5 if obs_id=="1929RADIO000000000212"
	replace ag003_fips = 5 if obs_id=="1929RADIO000000000208"
	replace ag003_fips = 5 if obs_id=="1929RADIO000000000210"
	replace ag003_fips = 5 if obs_id=="1931RADIO000000000132"
	replace ag003_fips = 5 if obs_id=="1929RADIO000000000209"

/* These observations are in Suffolk county, not Nassau county. */ 
	replace ag003_fips = 103 if obs_id=="19331401000000000043"
	replace ag003_fips = 103 if obs_id=="19351401000000000049"

/* These observations are in Ontario county, but because like 0.5% of Geneva New York is in Senca county the county fips for these observations are for Senca county.
	I'm putting them back in Ontario county. Also, the street addresses look to be in Ontario county. */
	replace ag003_fips = 69 if obs_id=="19311005000000003326"
	replace ag003_fips = 69 if obs_id=="19291005000000001010"
	replace ag003_fips = 69 if obs_id=="1931101000000002953"
	replace ag003_fips = 69 if obs_id=="1929101000000004091"
	replace ag003_fips = 69 if obs_id=="1935101000000001272"
	replace ag003_fips = 69 if obs_id=="1931101000000002955"
	replace ag003_fips = 69 if obs_id=="192910100000000595B"
	replace ag003_fips = 69 if obs_id=="1931101000000002954"
	replace ag003_fips = 69 if obs_id=="1929101000000004092"
	replace ag003_fips = 69 if obs_id=="1933101000000001754"
	replace ag003_fips = 69 if obs_id=="1935101000000001271"
 	replace ag003_fips = 69 if obs_id=="1935118000000001413"
	replace ag003_fips = 69 if obs_id=="1929118000000001870"
	replace ag003_fips = 69 if obs_id=="1931118000000001681"
	replace ag003_fips = 69 if obs_id=="1933119000000001970"
	replace ag003_fips = 69 if obs_id=="1935119000000002064"
	replace ag003_fips = 69 if obs_id=="1929119000000002075"
	replace ag003_fips = 69 if obs_id=="1931119000000002157"
	replace ag003_fips = 69 if obs_id=="1933119000000001930"
	replace ag003_fips = 69 if obs_id=="1931119000000002156"
	replace ag003_fips = 69 if obs_id=="1929119000000002074"
	replace ag003_fips = 69 if obs_id=="1935119000000002063"
	
/* The street address for the plant is the same as the general office. The general office is in Geneva NY. The 
		city name says that the plant is in Geneva. So I think the county name should be ignored and the plant 
		be put in Ontario county. */ 
	replace ag003_fips = 69 if obs_id=="1931101000000003016"	
	
/* This observation is in North Dakota.  */
	replace ag003_fips = 59 if obs_id=="1929118000000002146"	
	replace ag001_fips  = 38 if obs_id=="1929118000000002146"	
	
/* This observation is in North Dakota.  */
	replace ag003_fips = 93 if obs_id=="1929118000000002148"	
	replace ag001_fips  = 38 if obs_id=="1929118000000002148"	
	
/* This observation is in North Dakota.  */
	replace ag003_fips = 41 if obs_id=="1929118000000002145"	
	replace ag001_fips  = 38 if obs_id=="1929118000000002145"		
	
/* This establishment says it's in the city of Dayton in Montgomery county Ohio which makes sense.
	I'm changing the county fips to be Montgomery county instead of Hamilton county.*/
	replace ag003_fips  = 113 if obs_id=="1933631000000000183"		
	replace ag003_fips  = 113 if obs_id=="1935631000000000194"		

/* The street address says that the plant is located at 1450 SO MAHONING AVE. which is in the town 
	of Alliance and the observation states that the city is Alliance. 
	So I think the Mahoning in the county name is actually the street name and that the county
	is actually Stark county. */
	replace ag003_fips = 151 if obs_id=="19291112000000000250"		
	
/* Osage Oklahoma is in Osage county, not McClain county. */ 
	replace ag003_fips = 113 if obs_id=="19311401000000000087"		

/* County and City names are flipped. */ 
	replace ag003_fips = 147 if obs_id=="19311401000000000087"		

/* Typo put this in the wrong county. Should be in McCurtain county. */ 
	replace ag003_fips = 89 if obs_id=="1929314000000003471"		

/* Everett is in Bedford and Badford is a misspelling of Bedford and not a misspelling of Bradford. */ 
	replace ag003_fips = 9 if obs_id=="1929314000000003648"		
				
/* Frankford is a neighborhood in Philly and the ag002 is Philly. 
	I think the county fips should be in Philly and I don't think 
	Frankford is a misspelling of Franklin. */ 
	replace ag003_fips = 101 if obs_id=="1929314000000003978"		
				
/* Lewistown is a borough in Mifflin county PA. The reported county name is Mifflins 
	so I think the reported county name is just a misspelling of Mifflin. */ 
	replace ag003_fips = 87 if obs_id=="1929314000000003978"
	
/* Lockawanna is a mispelling of Lackawanna */ 
	replace ag003_fips = 69 if obs_id=="1933314000000001471"
		
/* Indiana county township is 63 */ 
	replace ag003_fips = 63 if obs_id=="19291008000000000175"
			
/* The city of Bethlehem PA is in both Lehigh county and Northampton county. 
	These observations state they were in Lehigh county, but they have been put into
	Northhampton county. I'm putting them back into Lehigh county. I checked one establishment's 
	street address and it was in Lehigh county. */
	replace ag003_fips = 77 if obs_id=="19291005000000001472"
	replace ag003_fips = 77 if obs_id=="19311005000000003619"
	replace ag003_fips = 77 if obs_id=="1933101000000002207"
	replace ag003_fips = 77 if obs_id=="1931101000000003302"
	replace ag003_fips = 77 if obs_id=="1935101000000001849"
	replace ag003_fips = 77 if obs_id=="1929101000000002914"
	replace ag003_fips = 77 if obs_id=="1931101000000003301"
	replace ag003_fips = 77 if obs_id=="1929101000000002913"
	replace ag003_fips = 77 if obs_id=="1933101000000002206"
	replace ag003_fips = 77 if obs_id=="1935118000000001911"
	replace ag003_fips = 77 if obs_id=="1929119000000002515"
	replace ag003_fips = 77 if obs_id=="1935119000000002608"
	replace ag003_fips = 77 if obs_id=="1933119000000002423"
	replace ag003_fips = 77 if obs_id=="1931119000000002639"
	
/* This observation bellongs in Allegheny county. */
	replace ag003_fips = 3 if obs_id=="1929RADIO000000000313"	
						
/* Armstrong county fips code is 5 */
	replace ag003_fips = 5 if obs_id=="19291112000000000324"	
	replace ag003_fips = 5 if obs_id=="19311112000000000107"	
	
/* Cheswick is in Alleghany county. The plant name is Cheswick so I think it's more likely to 
	be in Cheswick instead of Montgomery county.*/
	replace ag003_fips = 3 if obs_id=="1929RADIO000000000312"	
 		
/* 1179 SO. BROADWAY is a street in East Providence and not in Bristol so I beleive that  the 
	 city is in East Providence which would put this observation in Providence county. */
	replace ag003_fips = 7 if obs_id=="1929118000000002693"	
 		
/* Kent county fips is 3 */
	replace ag003_fips = 3 if obs_id=="1935631000000000222"	
	replace ag003_fips = 3 if obs_id=="1933631000000000214"	

/* A very tiny bit of the town of Greer is in Spartanburg county so I am inclined to 
	believe it is in Spartanburg county when it says that it is in Spartanburg county. */
	replace ag003_fips = 83 if obs_id=="1929216000000004122"	
 
/* Probably a typo in the algorithm. county fips should be 307, not 37. */ 
 	replace ag003_fips = 307 if obs_id=="1931101000000003774"	
 	replace ag003_fips = 307 if obs_id=="1929101000000003446"	

/* State fips should be changed to put this observation in West Virginia and not Wisconsin. */ 
 	replace ag003_fips = 39 if obs_id=="19351301000000000240"	
 	replace ag001_fips  = 54 if obs_id=="19351301000000000240"	

/* 98% of Farmville Virginia is in Prince Edward county; however, 2% of the town is in Cumberland county. These observations
	report being in Cumberland county but the county fips has placed them in Prince Edward county. I looked up the 
	plant name and found a street address for a company with the same name in 1945. That street address puts the plant 
	in Cumberland. So I'm changing the county fips to put the plant in the county it reported it was in. */
	replace ag003_fips = 49 if obs_id=="1931314000000002797"
	replace ag003_fips = 49 if obs_id=="1935314000000002446"
	
/* These observations are put in Chesapeak COUNTY Virginia which was formed in 1963. The problem is that 
	you will not be able to merge any of these observations with other historical datasets using the county fips code. 
	Maybe this county place dataset will make things better, but I just think it is sort of wrong to give observations
	a code for a county that did not exist at the time. The observations report being in Norfolk county which has a 
	county fips code of 129. */
	replace ag003_fips = 129 if obs_id=="19291002000000000163"
	replace ag003_fips = 129 if obs_id=="19351002000000000142"
	replace ag003_fips = 129 if obs_id=="19331002000000000067"
	replace ag003_fips = 129 if obs_id=="19311002000000000153"
	replace ag003_fips = 129 if obs_id=="19311005000000003767"
	replace ag003_fips = 129 if obs_id=="1935119000000003349"
	replace ag003_fips = 129 if obs_id=="1933119000000003080"
	replace ag003_fips = 129 if obs_id=="1929119000000003490"
	replace ag003_fips = 129 if obs_id=="1935314000000002517"
	replace ag003_fips = 129 if obs_id=="1929314000000004514"
	replace ag003_fips = 129 if obs_id=="1933705000000000364"
	replace ag003_fips = 129 if obs_id=="1931705000000000351"
	replace ag003_fips = 129 if obs_id=="1929705000000000365"
	replace ag003_fips = 129 if obs_id=="1935705000000000368"

/* These observations are put in Covington COUNTY Virginia which was formed in 1952. The problem is that 
	you will not be able to merge any of these observations with other historical datasets using the county fips code. 
	I think it is sort of wrong to give observations a code for a county that did not exist at the time. 
	The observations report being in Alleghany county which has a county fips code of 5. */
	replace ag003_fips = 5 if obs_id=="1933101000000002679"
	replace ag003_fips = 5 if obs_id=="1935101000000002348"
	replace ag003_fips = 5 if obs_id=="1935101000000002347"
	replace ag003_fips = 5 if obs_id=="1931101000000003898"
	replace ag003_fips = 5 if obs_id=="1929118000000002956"
	replace ag003_fips = 5 if obs_id=="1929119000000003393"
	replace ag003_fips = 5 if obs_id=="1935119000000003268"
	replace ag003_fips = 5 if obs_id=="1933119000000003042"
	replace ag003_fips = 5 if obs_id=="1931314000000002799"
	replace ag003_fips = 5 if obs_id=="1929314000000004404"
	replace ag003_fips = 5 if obs_id=="1935314000000002435"
	
/* These observations are put in Lexington COUNTY Virginia which was formed in 1966. The problem is that 
	you will not be able to merge any of these observations with other historical datasets using the county fips code. 
	I just think it is sort of wrong to give observations a code for a county that did not exist at the time. 
	The observations report being in Rockbridge county which has a county fips code of 163. */
	replace ag003_fips = 163 if obs_id=="1933101000000002743"
	replace ag003_fips = 163 if obs_id=="1935101000000002376"
	replace ag003_fips = 163 if obs_id=="1929101000000003597"
	replace ag003_fips = 163 if obs_id=="192910100000000529B"
	replace ag003_fips = 163 if obs_id=="1929118000000002966"
	replace ag003_fips = 163 if obs_id=="1929119000000003440"
	replace ag003_fips = 163 if obs_id=="1933119000000003089"
	replace ag003_fips = 163 if obs_id=="1931314000000002865"
	replace ag003_fips = 163 if obs_id=="1929314000000004451"
	replace ag003_fips = 163 if obs_id=="1929314000000004450"
	replace ag003_fips = 163 if obs_id=="1931314000000002864"
	replace ag003_fips = 163 if obs_id=="1935314000000002474"
	
/* These observations are put in Manassas COUNTY Virginia which was formed in 1975. The problem is that 
	you will not be able to merge any of these observations with other historical datasets using the county fips code. 
	The observations report being in Prince William county which has a county fips code of 153. */	
 	replace ag003_fips = 153 if obs_id=="1931118000000002627"
 	replace ag003_fips = 153 if obs_id=="1929118000000002964"
 	replace ag003_fips = 153 if obs_id=="1933119000000003121"
 	replace ag003_fips = 153 if obs_id=="1929119000000003437"
 	replace ag003_fips = 153 if obs_id=="1935119000000003304"
	
/* These observations are put in Norton COUNTY Virginia which was formed in 1954. The problem is that 
	you will not be able to merge any of these observations with other historical datasets using the county fips code. 
	The observations report being in Wise county which has a county fips code of 195. */	
	replace ag003_fips = 195 if obs_id=="1935101000000002384"
	replace ag003_fips = 195 if obs_id=="1931101000000003983"
	replace ag003_fips = 195 if obs_id=="1929101000000003606"
	replace ag003_fips = 195 if obs_id=="1933101000000002758"
	replace ag003_fips = 195 if obs_id=="1933101000000002759"
	replace ag003_fips = 195 if obs_id=="1931101000000003984"
	replace ag003_fips = 195 if obs_id=="1929101000000003607"
	replace ag003_fips = 195 if obs_id=="1935101000000002385"
	replace ag003_fips = 195 if obs_id=="1929118000000002969"
	
/* Virginia Beach didn't exist in the 1930s. Reclassified as being in Princess Anne county. */
	replace ag003_fips = 151 if obs_id=="1929119000000003438"
	replace ag003_fips = 151 if obs_id=="1935119000000003303"
 

tostring ag001_fips ag003_fips, replace