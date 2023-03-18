//Cleaning Firms in CA
//Based on code generously shared by Sarah Quincy

//Assume CoM data is already loaded
tempfile curr_data 
savesome if ag001~="California" using "`curr_data'" , replace
tempfile curr_data_CA
savesome  if ag001=="California" using "`curr_data_CA'", replace
tempfile merged_data_CA
preserve
	clear
	save `merged_data_CA', emptyok
restore

//Load CA fixes
import excel "./SES1459263 Team Folder/V2/Firm Link Updates/firm_CA_update.xlsx", firstrow clear
rename AG002 ag002
rename AG003 ag003
egen obsid=concat(ag002 ag003), punct("-")
reshape long note, i(obsid) j(firm)
drop if note==""
drop CL new_AG00* loctype firm obsid
gen a002_update = regexs(0) if regexm(note, "[a-z A-Y \ \' \. \-]+")
replace a002_update = regexs(0) if regexm(note, "\?+[a-z A-Y \ \' \. \-]+") 
gen drop = regexs(2) if regexm(note,"(drop )+([a-zA-Z ]+) (because[a-zA-z ]+)")

gen tst2 = regexs(0) if regexm(note, "from [a-zA-Z \ \' 0-9]+$")
gen tst1 = regexs(0) if regexm(note, "by [a-zA-Z \ \' 0-9]+$")
gen tst3 = regexs(0) if regexm(note, "for same [a-zA-z \ \' 0-9]+$")

gen loc = subinstr(note, tst2,"",1) if tst2~=""
replace loc  = subinstr(note, tst1,"",1) if tst1~="" & tst2==""
replace loc  = subinstr(note, tst3,"",1) if tst3~="" & tst2=="" & tst1==""
replace loc = subinstr(loc, a002_update, "",1)
replace loc = subinstr(loc, "Z ", "",1)
replace loc = trim(loc)
replace a002_update = drop if drop~=""
replace a002_update=trim(a002_update)

//This is somewhat clunky (and brutally slow) code, but will be difficult to rewrite in a cleaner way. 
gen ctr = _n
qui sum ctr, det
qui forvalues n=1(1)`r(max)' {
	preserve
		keep if ctr ==`n'
		merge 1:m ag003 ag002 using `curr_data_CA'
		replace ag002=loc if strpos(a001,a002_update)~=0 & _merge==3
		drop if drop~="" & strpos(a001,a002_update)~=0 & _merge==3
		drop if _merge~=3
		drop note-loc ctr _merge
		//CZV changed this to save in the new file
		append using  `merged_data_CA'
		save  `merged_data_CA', replace
		*save `curr_data_CA', replace
	restore
}

//Load cleaned CoM data
use `curr_data', replace
append using `curr_data_CA'

*clean firm names 
gen a002_update = a002
gen tmp1 = trim(regexs(1)) if regexm(a001, "([A-Za-z\ ]+)(Ice Plant)+$")==1 & ag001 == "California" //fix firm names that are LOC Ice plant of of larger company
replace a002_update = a002 if tmp1==ag002 & tmp1~="" & a002~="Same" & ag001 == "California" //fix firm names that are LOC plant of of larger company
gen tmp2 = trim(regexs(1)) if regexm(a001, "([A-Za-z\ ]+)(Cement Plant)+$")==1 & ag001 == "California" //fix firm names that are LOC Ice plant of of larger company
replace a002_update = a002 if tmp2==ag002 & tmp2~="" & a002~="Same" & ag001 == "California" //fix firm names that are LOC plant of of larger company
gen tmp3 = regexs(1) if regexm(a001, "([A-Za-z\ ]+)( Plant)+$")==1
replace a002_update = a002 if tmp3==ag002 & tmp3~="" & a002~="Same"
replace a002_update = a002 if ag002=="Los Angeles" & tmp3=="Hollywood" & a002~="Same" & ag001 == "California"
replace a002_update = a002 if ag002=="Crestmore Heights" & tmp3=="Crestmore" & a002~="Same" & ag001 == "California"
replace a002_update = a002 if ag002=="Vernon" & tmp3=="Los Angeles" & a002~="Same" & ag001 == "California"
replace a002_update = "Atchison Topeka and Santa Fe Railway" if regexm(a002, "Atchison") & ag001 == "California"
replace a002_update = "Highland Western Glass Company" if regexm(a002_update, "Highland") & regexm(a002_update, "Plant$")==1 & ag001 == "California"
replace a002_update = "Golden State Co" if regexm(a002, "Golden State Co") & ag001 == "California"
replace a002_update = "California Consumers Co" if regexm(a002_update, "Consumer") & regexm(a002_update, "Plant$")==1 & ag001 == "California"
replace a002_update = subinstr(a002_update, "Macmarr Stores Mutual Div Ice Cream Dept Now Dairyland Prod","Dairyland Prod",1)  if ag001 == "California" //name TMI
replace a002_update = subinstr(a002_update, "Colifornia","California",1) if ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "Calf","Calif",1) //typo
replace a002_update = "Burnett and Son" if regexm(a002_update, "Burnett and Son") & ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "Calif ", "California ",1) if ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "South San Joaquin Irrigation District Corp Yard","So San Joaquin Irrigation District",1) if ag001 == "California" //standardize basic structure
replace a002_update = subinstr(a002_update, "Betsy Rose","Betsy Ross",1) if ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "Hancy","Haney",1) if ag001 == "California"  //typo
replace a002_update = subinstr(a002_update, "Brown Certified Guernsey","Brown Guernsey",1) if ag001 == "California" //standardize basic structure
replace a002_update = subinstr(a002_update, "Browns Guernsey","Brown Guernsey",1) if ag001 == "California" //standardize basic structure
replace a002_update = subinstr(a002_update, "Whartons","Wharton",1) if ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "Of California","",1) if ag001 == "California" //standardize basic structure
replace a002_update = subinstr(a002_update, "Of Calif","",1) if ag001 == "California" //standardize basic structure
replace a002_update = subinstr(a002_update, "Of F A","",1) if ag001 == "California" //name TMI
replace a002_update = subinstr(a002_update, "Daffys Ice Cream","Duffys Ice Cream",1) if ag001 == "California" //looked at this set of obs when cleaning locations and same address etc
replace a002_update = "H J Hancy" if regexm(a002_update, "H J") & ag001 == "California" //typo
replace a002_update = "Colgate Palmolive Peet" if regexm(a002_update, "Colgate Palmolive") & ag001 == "California" //standardize basic structure
replace a002_update = "Aero Club Beverage" if regexm(a002_update, "Ae") & regexm(a002_update, "Clu")  & ag001 == "California" //standardize basic structure
replace a002_update = "Stroud Brothers" if regexm(a002_update, "Stroud") & ag003=="Bakersfield" & ag001 == "California" //standardize basic structure
replace a002_update = "Gibson Concrete Pipe" if regexm(a002_update, "Gibson") & ag003=="Delano" & ag001 == "California" //standardize basic structure
replace a002_update = "Norwalk Refinery" if regexm(a002_update, "Norwalk") & ag003=="Maricopa" & ag001 == "California" //standardize basic structure
replace a002_update = "Leos Ice Cream" if regexm(a002_update, "Leo") & ag003=="Alhambra" & ag001 == "California" //standardize basic structure
replace a002_update = "Thomas and Holleman" if regexm(a002_update, "Thomas") & ag003=="Artesia" & ag001 == "California" //standardize basic structure
replace a002_update = "Beverly Globe" if regexm(a002_update, "Beverly Globe") & ag003=="Beverly Hills" & ag001 == "California" //standardize basic structure
replace a002_update = "Meadow Brook Ice Cream" if regexm(a002_update, "Meadow") & ag003=="Beverly Hills" & ag001 == "California" //standardize basic structure
replace a002_update = "Lockheed Aircraft" if regexm(a002_update, "Lockheed") & ag003=="Burbank" & ag001 == "California" //standardize basic structure
replace a002_update = "Morris Conf" if regexm(a002_update, "Morris") & ag003=="Burbank" & ag001 == "California" //standardize basic structure
replace a002_update = "Pure Delite" if regexm(a002_update, "Pure Delite") & ag003=="Compton" & ag001 == "California" //standardize basic structure
replace a002_update = "Harry Hanson Cement" if regexm(a002_update, "Hans") & ag003=="Downey" & ag001 == "California" //standardize basic structure
replace a002_update = "Northrop" if regexm(a002_update, "North") & ag003=="El Segundo" & ag001 == "California" //standardize basic structure
replace a002_update = "El Monte Ice" if regexm(a002_update, "E L ") & ag003=="El Monte" & ag001 == "California" //standardize basic structure
replace a002_update = "Air Transport" if regexm(a002_update, "Air Transport") & ag003=="Glendale" & ag001 == "California" //standardize basic structure
replace a002_update = "Biltwell Concrete Prod" if regexm(a002_update, "Biltwe") & ag003=="Glendale" & ag001 == "California" //standardize basic structure
replace a002_update = "Crown Sash Door Lumber" if regexm(a002_update, "Crown Sash") & ag003=="Glendale" & ag001 == "California" //standardize basic structure
replace a002_update = "Nehi Bottling" if regexm(a002_update, "Nehi") & ag001 == "California" //standardize basic structure
replace a002_update = "Overhead Door Co" if regexm(a002_update, "Overhead Door") & ag003=="Glendale"  & ag001 == "California" //standardize basic structure
replace a002_update = "Overhead Door Co" if regexm(a002_update, "Overhead Door") & ag003=="Glendale"  & ag001 == "California" //standardize basic structure
replace a002_update = "Hawthorne Sash Door" if regexm(a002_update, "Sash") & ag003=="Hawthorne" & ag001 == "California" //standardize basic structure
replace a002_update = "Dyrr Mfg" if regexm(a002_update, "D") & ag003=="Huntington Park" & ag001 == "California" // same address Dunn v Dyrr look similar when written too
replace a002_update = "Erlen Soap" if regexm(a002_update, "E") & regexm(a002_update, "Soap") & ag003=="Huntington Park" & ag001 == "California" // same address 
replace a002_update = "California Ornamental Stone" if regexm(a002_update, "Ornamental")  & ag003=="Huntington Park" & ag001 == "California" // same address 
replace a002_update = "Columbia Glass" if regexm(a002_update, "Columbia Glass")  & ag003=="Huntington Park" & ag001 == "California" // same address 
replace a002_update = "Hughes Lumber and Mill" if regexm(a002_update, "Hughes Lumber")  & ag003=="Huntington Park" & ag001 == "California" // same address 
replace a002_update = "Haydon Ice Cream" if regexm(a002_update, "Hay")  & ag003=="Inglewood" & ag001 == "California" // same address 
replace a002_update = "Salisbury Brothers" if regexm(a002_update, "Salisbury")  & ag003=="Lancaster" & ag001 == "California" // same address 
replace a002_update = "Estado Petroleum" if regexm(a002_update, "Estado Petroleum")  & ag003=="Long Beach" & ag001 == "California"  // same address 
replace a002_update = "Howe George Sash and Doors" if regexm(a002_update, "Howe")  & ag003=="Long Beach" & ag001 == "California" // same address 
replace a002_update = "La Pura Ice Cream" if regexm(a002_update, "Pur")  & ag003=="Long Beach" & ag001 == "California" // same address 
replace a002_update = "Long Beach Glass" if regexm(a002_update, "Long Beach Glass")  & ag003=="Long Beach" & ag001 == "California" // same address 
replace a002_update = "W Jay Burgin" if regexm(a002_update, "W Jay Burgin")  & ag003=="Long Beach" & ag001 == "California" // same address 
replace a002_update = "Adophr Creamery" if regexm(a002_update, "Ad[op]+")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Adophr Creamery" if regexm(a002_update, "Ad[op]+")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Alloy Steel Metals" if regexm(a002_update, "Alloy Steel")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Ah Fargar" if regexm(a002_update, "Farg")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "American Refrigerating" if regexm(a002_update, "American Refrigerating")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Anthony Macaroni" if regexm(a002_update, "Anthony Macaroni")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Arctic Ice" if regexm(a002_update, "Arctic Ice")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Arrowhead Springs" if regexm(a002_update, "Arrowhead")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Associated Oil Refinery" if regexm(a002_update, "Associated Oil")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Betty Balton" if regexm(a002_update, "Betty B")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Battery Separator Mfg" if regexm(a002_update, "Batter[sy] Separator M")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "C E Loyd" if regexm(a002_update, "Loyd")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Beverly Dairies" if regexm(a002_update, "Beverly Da")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "California Cone and Ice Cream" if regexm(a002_update, "Calif")  & ag003=="Los Angeles" & regexm(a002_update, "C[oa]ne and Ice Cream") & ag001 == "California" // same address 
replace a002_update = "Chapmans Ice Cream" if regexm(a002_update, "Chapman")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Frank X Enderle" if regexm(a002_update, "Enderle")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Frank W Bireley" if regexm(a002_update, "Bireley")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Firestone Tire and Rubber" if regexm(a002_update, "Firestone")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "General Supply" if regexm(a002_update, "General")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "George J House and Sons" if regexm(a002_update, "George J H")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Icyclair" if regexm(a002_update, "Icy")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Frank Graves Sash Door Mill" if regexm(a002_update, "Graves")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Lansing Mfg" if regexm(a002_update, "Lan")  & regexm(a002_update, "Freeman")==0 &  ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Lounsberry and Harris" if regexm(a002_update, "Lou") & regexm(a002_update, "Harris")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Lozze Macaroni" if regexm(a002_update, "Loz")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Melbourne Radio Mfg" if regexm(a002_update, "Melb")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Millers Food Prod" if regexm(a002_update, "Mill[iesr]+ Food")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Mora Specialty Food" if regexm(a002_update, "Mora")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Mission Staff Stone" if regexm(a002_update, "Mission Staff and Stone")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Nassour Brothers Mfg" if regexm(a002_update, "Nass")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "O May Bottling" if regexm(a002_update, "O^")  & ag003=="Los Angeles" & regexm(a002_update, "y Bott") & ag001 == "California" // same address 
replace a002_update = "Peking Noodle" if regexm(a002_update, "Pekin")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Safety Concrete Incinerator" if regexm(a002_update, "Safety")  & ag003=="Los Angeles" & ag001 == "California" // same address 
replace a002_update = "Standard Sash and Door" if regexm(a002_update, "Standard")  & ag003=="Los Angeles" & regexm(a002_update, "Sash") & ag001 == "California" // same address 
replace a002_update = "Sunrise Soda Water" if regexm(a002_update, "Sun")  & ag003=="Los Angeles" & regexm(a002_update, "Water")  // same address 
replace a002_update = "Weber Egg Noodle" if regexm(a002_update, "Weber")  & ag003=="Los Angeles" & regexm(a002_update, "Egg Noodle") & ag001 == "California" // same address 
replace a002_update = "Willys Overland Pacific" if regexm(a002_update, "Willy")  & ag003=="Los Angeles"  & ag001 == "California" // same address 
replace a002_update = "Wilshire Oil Refinery" if regexm(a002_update, "Wilshire Oil")  & ag003=="Los Angeles"  & ag001 == "California" // same address 
replace a002_update = subinstr(a002_update, "L A ","La",1) if ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "Lindsey","Lindsay",1) if ag001 == "California" //typo
replace a002_update = "Lindsay Frame" if regexm(a002_update, "Lindsay Frame")  & ag003=="Long Beach" & ag001 == "California" // same address 
replace a002_update = subinstr(a002_update, "Berkly","Berkeley",1) if ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "Berkely","Berkeley",1) if ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "Berkley","Berkeley",1) if ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "Harriss","Harris",1) if ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "Los Nietos","Los Nieto",1) if ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "Goden State","Golden State",1) if ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "Woods Works","Wood Works",1) if ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "Hanfrod","Hanford",1) if ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "Hauford","Hanford",1) if ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "O B For 1933","",1) if ag001 == "California" //name TMI
replace a002_update = "Bottling Works Gordon Dry" if regexm(a002_update,"Successor To The Pister Sheael") & ag001 == "California" //name TMI
replace a002_update = "Mrs Bernitts Ice Cream Kitchen" if regexm(a002_update,"Bernitts Ice Cream Kitchen") & ag001 == "California"  //standardize basic structure
replace a002_update = "Mrs Leepers Egg Noodle Co" if regexm(a002_update,"Mrs Leepers Home Made Egg Noodles") & ag001 == "California" //standardize basic structure
replace a002_update = "Elmhurst Cement Laundry Tray" if regexm(a002_update,"Elmhurst Cement Laundry Tray") & ag001 == "California" //standardize basic structure
replace a002_update = "Dairyland Prod" if regexm(a002_update,"Dairyland Prod") & ag001 == "California" //standardize basic structure
replace a002_update = "Sunland Dairy" if regexm(a002_update,"Sunland Dairy") & ag002=="Calexico" & ag001 == "California"  //standardize basic structure
replace a002_update = "Frank J Moran" if regexm(a002_update,"Moran") & ag002=="Ontario"  & ag001 == "California" //standardize basic structure
replace a002_update = subinstr(a002_update, "Vallajo","Vallejo",1) if ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "Visalia","Visolia",1) if ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "Superme","Supreme",1) if ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "Morago","Moraga",1) if ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "Bakerafield","Bakersfield",1) if ag001 == "California" //typo
replace a002_update = regexr(a002_update, "Ferni+", "Forni") if ag001 == "California" //typo checked in state mfg report
replace a002_update = regexr(a002_update, "Ferni+", "Fomi") if ag001 == "California" //typo checked in state mfg report
replace a002_update = subinstr(a002_update, "Ceast","Coast",1) if ag001 == "California" //typo, same address  business and owners in other obs
replace a002_update = subinstr(a002_update, "Botting","Bottling",1)  if ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "Fraga And Ramos","Froga And Ramos",1)  if ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "Ravich","Ravioli",1)  if ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "Antrich","Antioch",1) if ag002=="Antioch" & ag001 == "California" //typo
replace a002_update = "Diamond Match" if regexm(a002_update,"Diamond Match")  & ag002=="Chico" & ag001 == "California" //standardize basic structure
replace a002_update = "Oakland Concrete And Terrazzo" if regexm(a002_update,"Concrete")  & ag002=="Oakland" & regexm(a002_update, "T[ea]+razzo") & ag001 == "California" //standardize basic structure
replace a002_update = "National Automotive Fibers Incorporated" if regexm(a002_update,"Automotive Fibers") & ag002=="Oakland" & regexm(a002_update, "Nation") & ag001 == "California" //standardize basic structure
replace a002_update = "Napa Rock Mineral Water" if regexm(a002_update,"Napa Rock") & ag002=="Oakland" & ag001 == "California" //standardize basic structure
replace a002_update = "Redwood Mfg" if regexm(a002_update,"Redwood") & ag002=="Pittsburg" & ag001 == "California" //standardize basic structure
replace a002_update = "Stelm Bros Ice Co" if regexm(a002_update,"Ice") & ag002=="Pittsburg" & regexm(a002_update, "[SH]e") & regexm(a002_update, "Bro") & ag001 == "California" //standardize basic structure
replace a002_update = "Pollard Brothers" if regexm(a002_update,"Pollard Brothers") & ag002=="Fresno" & ag001 == "California" //standardize basic structure
replace a002_update = "Fresno Madera Ice" if regexm(a002_update,"Fresno Madera Ice") & ag002=="Fresno"  & ag001 == "California" //standardize basic structure
replace a002_update = "Madary Planing Mill" if regexm(a002_update,"Madary") & ag002=="Fresno" & ag001 == "California" //standardize basic structure
replace a002_update = "S C Ramage" if regexm(a002_update,"S C Ramage") & ag002=="Fresno" & ag001 == "California" //standardize basic structure
replace a002_update = "Bon Boniere" if regexm(a002_update,"Bon") & ag002=="Eureka" & ag001 == "California" //standardize basic structure
replace a002_update = "Valley Ice" if regexm(a002,"Valley Ice") & ag002=="Fresno" & ag001 == "California" //typo
replace a002_update = "Fresno Ice" if regexm(a002,"Fresno California Ice") & ag002=="Fresno"  & ag001 == "California" //typo
replace a002_update = "National Ice And C S" if regexm(a001,"Santa Rosa Company") & ag002=="Santa Rosa"  & ag001 == "California" //typo
replace a002_update = "General Petroleum Vernon" if regexm(a002_update, "Vernon Refinery") & regexm(a002, "General") & ag002=="Vernon"  & ag001 == "California" //typo
replace a002_update = "Wilshire Oil Vernon" if regexm(a002_update, "Vernon Refinery") & regexm(a002, "Wilshire") & ag002=="Vernon" & ag001 == "California" //typo
replace a002_update = regexr(a002_update, "Pittsburgh","Pittsburg") if ag002=="Pittsburg" & ag001 == "California" //typo
replace a002_update = subinstr(a002_update, "Woodland Ice Bottling","Woodland Ice And Bottling",1) if ag001 == "California" //standardize basic structure
replace a002_update = subinstr(a002_update, "Pantages Candy Store","Pantages",1) if ag001 == "California" //looked at this set of obs when cleaning locations and same address etc
replace a002_update = subinstr(a002_update, "Maple Confectionery And Cafe","Maple Confectionery",1) if ag001 == "California" //looked at this set of obs when cleaning locations and same address etc
replace a002_update = subinstr(a002_update, "Pattern Blinn","Patten Blinn",1) if ag001 == "California" //this is a famous big lumber company so it's a typo
replace a002_update = regexr(a002_update, "Calif+$","") if ag001 == "California" //standardize basic structure
replace a002_update = regexr(a002_update, "California+$","") if ag001 == "California" //standardize basic structure
replace a002_update = regexr(a002_update, "Oakland+$","") if ag001 == "California" //standardize basic structure
replace a002_update = regexr(a002_update, "San Diego+$","") if ag001 == "California" //standardize basic structure
replace a002 = a002_update
egen firm_id_ca = group(a002 ag002 ag003)

///Regenerate firm IDs
tostring firm_id_ca, replace force
replace firm_id = firm_id_ca if ag001=="California" & ~(a002==""  | a002=="Same" | a002=="Do" | a002=="As Above" | a002=="Stockholders" | a002=="??" | a002=="Incorporation" | a002=="Incorporated" | a002=="Stock")
do "./Cleaning Scripts/General/reset_ID" firm_id

//Final cleanup
cap drop tmp* 
cap drop tst* 
drop a002_update firm_id_ca
