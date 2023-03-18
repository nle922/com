
*NLZ: Program to create and clean the 1933 LA data, 9/23/11

*Preliminaries
clear
capture log close
set more off
//cd "/Users/nicolaslehmannziebarth/Dropbox/Depression Census/Datasets/Mississippi"
//cd "C:\Users\Nicolas\Dropbox\Depression Census\Datasets\Huey Data"
cd "C:\Users\nziebarth\Dropbox\Depression Census\Datasets\Huey Data"

clear

//insheet using ".\Original Data\1935_general_form_short_Luisiana-14-092011.csv"
//import excel "./Original Data/1933_General_form.xls", sheet("Sheet1") cellrange(A4:BF353) firstrow allstring clear
import excel "./Original Data/1933_general_form_short_part2.xlsx", sheet("Sheet1") cellrange(A4:U246) firstrow allstring clear

gen state="Louisiana"

drop if ImageNumber==""
drop ImageNumber

label define yesno 0 "No" 1 "Yes"

rename IsthisIncorporated isthisincorporated
replace isthisincorporated="1" if regexm(isthisincorporated,"Inc.") | regexm(isthisincorporated,"Yes") | regexm(isthisincorporated,"Partnership") | regexm(isthisincorporated,"Incorporated") | regexm(isthisincorporated,"Cor") 
replace isthisincorporated="0" if regexm(isthisincorporated,"No")  
destring isthisincorporated, replace force
label values isthisincorporated yesno

rename Subsidiaryofanother subsidiary
replace subsidiary="1" if regexm(subsidiary,"Yes") 
replace subsidiary="0" if subsidiary~="1"
replace subsidiary="" if isthisincorporated==.
destring subsidiary, replace force
label values subsidiary yesno

capture drop e-M

rename Jan wage_earners_jan
rename Feb wage_earners_feb
rename March wage_earners_mar
rename April wage_earners_apr
rename May wage_earners_may
rename June wage_earners_jun
rename July wage_earners_jul
rename August wage_earners_aug
rename Sept wage_earners_sep
rename Oct wage_earners_oct
rename Nov wage_earners_nov
rename Dec wage_earners_dec

gen censusyear=1933
tostring wage_earners*, replace force
rename IndustryNumber industrynumber
//merge 1:1 NameofPlant CityTownorVillage County StreetandNumber using "./Stata Data/matches_1933"
//drop _merge Notes AC-BF

//should be able to clean up industry 114 as well
//still probably some more cleaning necessary to make good names consistent across years
save "./Stata Data/LA_1933_part2", replace


/*
Comment: 5/20/15
Set of industries collected by Dan is non overlapping with that from Zeymo (though Dan has more). 
Neither agree with list of industries in this dataset and can't find at this point other images for LA 1933.
At this point, just append new set of data from Dan. Don't overwrite.
Need to figure this out eventually...

LA_1933_part2 does not have plant identifiers yet.
*/
