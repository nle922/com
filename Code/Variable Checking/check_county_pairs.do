//this code checks whether county-state pairs are in master list
//requires variables ag003, ag001 in the dataset as well as the local $rootDir_code to be defined

tempvar county_var
gen `county_var' = ag003
//Attach county suffix for merging with full list of state-county pairs
replace ag003 = ag003+" County" if ag001~="Louisiana" & ag003~="" & ag001~="Virginia" & ag003~="Baltimore, City of" & ag003~="St. Louis, City of"
//handle parishes in LA
replace ag003 = ag003+" Parish" if ag001=="Louisiana" & ag003~=""
//handle cities that are their own counties in VA
local VA_towns =`"Alexandria Bedford Bristol "Buena Vista" Charlottesville Chesapeake "Colonial Heights" Covinton Danville Emporia Fairfax "Falls Church" Franklin Fredericksburg Galax Hampton Harrisonburg Hopewell Lexington Lynchburg Manassas "Manassas Park" Martinsville "Newport New" Norfolk Norton Petersburg Poquoson Portsmouth Redford Richmond Roanoke Salem Staunton Suffolk "Virginia Beach" Waynesboro Williamsburg Winchester"'
foreach VA_town in `VA_towns'{
	replace ag003 = ag003+", City of" if ag001=="Virginia" & ag003=="`VA_town'"
}
replace ag003 = ag003+" County" if ag001=="Virginia" & regexm(ag003, ", City of")==0

//Identify what our ``good" counties 
merge m:1 ag003 ag001 using "$rootDir_code/Variable Checking/list_counties", gen(good_county)
drop if good_county==2
replace good_county = good_county==3
//Small fix for DC
replace ag003 = "" if ag001=="District of Columbia"
replace good_county = 1 if ag001=="District of Columbia"
label var good_county "County-state pair matches to complete list of US State-County Pairs?"
replace ag003 = `county_var'
drop `county_var' 
