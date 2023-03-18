//Update Establishment Links for California
//Acknowledgments: Based on code generously shared by Sarah Quincy.
tempfile quincy_drops
save `quincy_drops'

//California
egen est_id =  concat(a001 ag002 ag003 industry_code_num), punct("-")
replace est_id = "" if ag001~="California"

*Union Ice Co locations in LA
replace est_id = est_id +"-" + "A" if  ag001=="California" & regexm(ag004, "Mesa") &  a002=="Union Ice" & ag002=="Los Angeles"
replace est_id = est_id +"-" + "A" if  ag001=="California" & regexm(ag004, "Miss") &  a002=="Union Ice" & ag002=="Los Angeles" //South Mesa location
replace est_id = est_id +"-" + "B" if  ag001=="California" & regexm(ag004, "Barrington") &  a002=="Union Ice" & ag002=="Los Angeles" //2141 Barrington
replace est_id = est_id +"-" + "C" if  ag001=="California" & regexm(ag004, "11th") &  a002=="Union Ice" & ag002=="Los Angeles" //11th ave
replace est_id = est_id +"-" + "C" if  ag001=="California" & regexm(ag004, "Eleventh") &  a002=="Union Ice" & ag002=="Los Angeles" //11th ave
replace est_id = est_id +"-" + "D" if  ag001=="California" & regexm(ag004, "Alameda") &  a002=="Union Ice" & ag002=="Los Angeles" //Alameda St
replace est_id = est_id +"-" + "E" if  ag001=="California" & regexm(ag004, "Santa Monica") &  a002=="Union Ice" & ag002=="Los Angeles" //Santa Monica Blvd
replace est_id = est_id +"-" + "F" if  ag001=="California" & regexm(ag004, "Bessemer") &  a002=="Union Ice" & ag002=="Los Angeles" //Tyronne and Bessemer St
replace est_id = est_id +"-" + "G" if  ag001=="California" & regexm(ag004, "Lagoon") &  a002=="Union Ice" & ag002=="Los Angeles" //217 North Lagoon
replace est_id = est_id +"-" + "H" if  ag001=="California" & regexm(ag004, "ries") &  a002=="Union Ice" & ag002=="Los Angeles" // Pries/Fries St
replace est_id = est_id +"-" + "I" if  ag001=="California" & regexm(ag004, "Guring") &  a002=="Union Ice" & ag002=="Los Angeles" //Guring St

*Union Ice Co locations in San Diego
replace est_id = est_id +"-" + "A" if  ag001=="California" & regexm(ag004, "Island") &  a002=="Union Ice" & ag002=="San Diego" //West Island Ave location
replace est_id = est_id +"-" + "B" if  ag001=="California" & regexm(ag004, "Fay") &  a002=="Union Ice" & ag002=="San Diego" //Fay/Jay location
replace est_id = est_id +"-" + "B" if  ag001=="California" & regexm(ag004, "Jay") &  a002=="Union Ice" & ag002=="San Diego" //Fay/Jay location
replace est_id = est_id +"-" + "C" if  ag001=="California" & regexm(ag004, "Jolla") &  a002=="Union Ice" & ag002=="San Diego" //La Jolla Ave
replace est_id = est_id +"-" + "D" if  ag001=="California" & regexm(ag004, "Various") &  a002=="Union Ice" & ag002=="San Diego" // the "Various" location is on its own

*Union Ice Co locations in San Jose
replace est_id = est_id +"-" + "A" if  ag001=="California" & regexm(ag004, "Juli") &  a002=="Union Ice" & ag002=="San Jose" // West San Fernando St
replace est_id = est_id +"-" + "B" if  ag001=="California" & regexm(ag004, "Fernando") &  a002=="Union Ice" & ag002=="San Jose" // West San Fernando St

*Arctic Ice
replace est_id = est_id +"-" + "A" if  ag001=="California" & regexm(ag004, "Cordova") &  a002=="Arctic Ice" & ag002=="Los Angeles" //main location
replace est_id = est_id +"-" + "A" if  ag001=="California" & year=="1931" &  a002=="Arctic Ice" & ag002=="Los Angeles" //main location
replace est_id = est_id +"-" + "B" if  ag001=="California" & regexm(ag004, "Same") &  a002=="Central Ice And C S" & ag002=="Los Angeles" //other location

*Bakersfield Refinery
replace est_id = est_id +"-" + "A" if  ag001=="California" & regexm(a002, "Standard") &  a001=="BAKERSFIELD REFINERY" //Standard Oil field
replace est_id = est_id +"-" + "B" if  ag001=="California" & regexm(a002, "Richfield") &  a001=="BAKERSFIELD REFINERY" //Richfield  Oil field

*Central Ice and Cold Storage LA
replace est_id = est_id +"-" + "A" if  ag001=="California" & regexm(ag004, "Soto") &  a001=="Central Ice & Cold Storage Co" & ag002=="Los Angeles" //Soto St
replace est_id = est_id +"-" + "B" if  ag001=="California" & regexm(ag004, "Compton") & a001=="Central Ice & Cold Storage Co"& ag002=="Los Angeles" //Compton Ave
replace est_id = est_id +"-" + "B" if  ag001=="California" & regexm(ag004, "Campton") &  a001=="Central Ice & Cold Storage Co" & ag002=="Los Angeles" //Compton Ave
replace est_id = est_id +"-" + "C" if  ag001=="California" & regexm(ag004, "36th") &  a001=="Central Ice & Cold Storage Co" & ag002=="Los Angeles" //W 36th St
replace est_id = est_id +"-" + "D" if  ag001=="California" & regexm(ag004, "Cudahy") & a001=="Central Ice & Cold Storage Co"& ag002=="Los Angeles" //Huntington Park

*Coca Cola in Santa Maria
replace est_id = est_id +"-" + "A" if  ag001=="California" & regexm(ag004, "Ortega") &  regexm(a001, "Cola") &  ag002=="Santa Maria" //E Ortega St
replace est_id = est_id +"-" + "B" if  ag001=="California" & regexm(ag004, "Main") &  regexm(a001, "Cola") & ag002=="Santa Maria" // W Main St location

*Eagle Standard Cement Laundry Tay
replace est_id = est_id +"-" + "A" if  ag001=="California" & regexm(a002, "Rodota") &  regexm(a001, "Eagle Standard Cement") & ag002=="San Bruno" //spell name the same
replace est_id = est_id +"-" + "B" if  ag001=="California" & regexm(a002, "Rodata") &  regexm(a001, "Eagle Standard Cement" ) & ag002=="San Bruno" //spell name differently (1933 both same address and industry so not sure what's up)

*Frank J Moran Concrete Pipe
replace est_id = est_id +"-" + "A" if  ag001=="California" & a001=="Frank J. Moran" & regexm(ag004, "Ontario") // same listed address	
replace est_id = est_id +"-" + "B" if  ag001=="California" & a001=="Frank J. Moran" & regexm(ag004, "9th") // different listed address

*Genes Food and Ice Cream LA
replace est_id = est_id +"-" + "A" if  ag001=="California" & regexm(ag004, "937") &   a001 == "Gene's Ice Cream and Lunch"  //937 W Santa Barbara St
replace est_id = est_id +"-" + "B" if  ag001=="California" & regexm(ag004, "5401") &  a001 == "Gene's Ice Cream and Lunch" //5401 So Central
replace est_id = est_id +"-" + "C" if  ag001=="California" & regexm(ag004, "4325") &  a001 == "Gene's Ice Cream and Lunch"  //4325 So Central

*Hammond Lumber
replace est_id = est_id +"-" + "A" if  ag001=="California" & regexm(ag004, "Alameda") &  regexm(a001, "Hammond") & ag002=="Los Angeles"  // 2010 S Alameda St
replace est_id = est_id +"-" + "B" if  ag001=="California" & regexm(ag004, "Alameda")==0 &  regexm(a001, "Hammond") & ag002=="Los Angeles"  // not 2010 S Alameda St
replace est_id = est_id +"-" + "C" if  ag001=="California" & regexm(ag004, "Terminal") &  regexm(a001, "Hammond") & ag002=="Los Angeles"  // Terminal Island

*Imperial Valley Concrete
replace est_id = est_id +"-" + "A" if  ag001=="California" & as001~="Yes" &  regexm(a001, "Imperial Valley Concrete")   // this notes having a branch, same address
replace est_id = est_id +"-" + "B" if  ag001=="California" & as001=="Yes" &  regexm(a001, "Imperial Valley Concrete")  // doesn't have same city limits coding

*Kerckhoff Cuzner Mill and Lumber
replace est_id = est_id +"-" + "A" if  ag001=="California" & (strpos(ag004, "Smith") > 0) &  regexm(a001, "Kerckhoff")   //Smith's Island
replace est_id = est_id +"-" + "B" if  ag001=="California" & regexm(ag004, "Alameda") &  regexm(a001, "Kerckhoff")   //902 N Alameda St

*Los Angeles Refinery
replace est_id = est_id +"-" + "A" if  ag001=="California" & regexm(a002, "Union") &  regexm(a001, "LOS ANGELES REFINERY")   //Union Oil Refinery
replace est_id = est_id +"-" + "B" if  ag001=="California" & regexm(a002, "Petrol") &  regexm(a001, "LOS ANGELES REFINERY")   // the petrol corporation

*National Ice and C S
replace est_id = est_id +"-" + "A" if (strpos(ag004, "Battery")>0) & (strpos(a001,"National Ice and Cold")>0)   & ag001 == "California"  //Battery and Union
replace est_id = est_id +"-" + "B" if (strpos(ag004, "Kansas")>0) & (strpos(a001,"National Ice and Cold")>0)   & ag001 == "California" //135 Kansas

*truly not sure which of these same location plants is the successor to earlier Santa Rosa ice plants
replace est_id = est_id +"-" + "A" if  ag001=="California" & establishment_id=="119LVPLBTUBHG" &  regexm(a001, "National Ice And") & ag002=="Santa Rosa"   //Battery and Union
replace est_id = est_id +"-" + "B" if  ag001=="California" & establishment_id~="119LVPLBTUBHG" &  regexm(a001, "National Ice And") & ag002=="Santa Rosa"   //135 Kansas

*Salinas Valley Ice
replace est_id = est_id +"-" + "A" if  ag001=="California" & regexm(a001, "Chualar")==0 &  regexm(a001, "Salinas Valley Ice")  //main Salinas plant
replace est_id = est_id +"-" + "B" if  ag001=="California" & regexm(a001, "Chualar") &  regexm(a001, "Salinas Valley Ice")  //non Salinas plant

*Vernon refinery (CZVadd)
replace est_id = est_id +"-" + "A" if  ag001=="California" & regexm(a001, "VERNON REFINERY") & regexm(a002, "General")  
replace est_id = est_id +"-" + "B" if  ag001=="California" & regexm(a001, "VERNON REFINERY") &  regexm(a002, "Wilshire") 

//Drops
*Mora Speciality Food
*this isn't fixed for B because there are two entries for 1929
*two 1929 locations at Bethel one has K004 and K005 answer and other doesn't
replace est_id = est_id +"-" + "A" if  ag001=="California" & regexm(a001, "Specialty") &  regexm(a001, "Mora Specialty")   //all the same original name
replace est_id = est_id +"-" + "B" if  ag001=="California" & regexm(a001, "Specialty")==0 &  regexm(a001, "Mora Specialty")   //not the same original name
drop if  ag001=="California" & regexm(a001, "Mora Specialty") & ag003=="Los Angeles"

*Lounsberry and Harris
*this is confusing, it definitely existed continuously but I don't see 1933/35 
*but there are 4 1929s
*therefore am dropping...something is wrong with these observations
drop if  ag001=="California" & regexm(a001, "Lounsberry")

*Miguel Gonzalez
drop if  ag001=="California" & a002=="Miguel Gonzalez" //empty data part, so dropping

*Pacific Brewing and Malting
*identical location information but no idea on how they're different
drop if  ag001=="California" &  regexm(a001, "Pacific Brewing")

*Velvet Ice Cream
*same industry codes and everything---is year right? could 1 be 1933?
*there's definitely only one business with that name and location in the Fresno city directory
drop if  ag001=="California" & regexm(a001, "Velvet Ice")  & ag003=="Fresno"

*LW Blinn Lumber
*same industry codes and everything but 2 LA 1929  same address
*can't be the 1933 observation because using old name (LW Blinn not Pattern Blinn)
*drop because not sure
drop if  ag001=="California" &  regexm(a001, "Blinn") & ag002=="Los Angeles"

//Save dropped observations for later
merge 1:1 obs_id using `quincy_drops'
//savesome industry_code_num year g000v if _merge==2 using "./SES1459263 Team Folder/V2/Compare Versions/dropped_quincy.dta", replace
drop if _merge==2
drop _merge

//Reset the establishment IDs
replace establishment_id = est_id if ag001=="California" 

drop est_id
do "./Cleaning Scripts/General/reset_ID" establishment_id
