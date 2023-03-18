
*NLZ: Program to create and clean the 1935 LA data, 9/23/11

*Preliminaries
clear
capture log close
set more off
//cd "/Users/nicolaslehmannziebarth/Dropbox/Depression Census/Datasets/Mississippi"
//cd "C:\Users\Nicolas\Dropbox\Depression Census\Datasets\Huey Data"
cd "C:\Users\nziebarth\Dropbox\Depression Census\Datasets\Huey Data"

clear

//insheet using ".\Original Data\1935_general_form_short_Luisiana-14-092011.csv"
insheet using ".\Original Data\1935_LA_corrected.csv"

gen state="Louisiana"

drop imagenumber

label define yesno 0 "No" 1 "Yes"

replace isthisincorporated="1" if regexm(isthisincorporated,"Inc.") | regexm(isthisincorporated,"Yes") | regexm(isthisincorporated,"Partnership") | regexm(isthisincorporated,"Incorporated") | regexm(isthisincorporated,"Cor") 
replace isthisincorporated="0" if regexm(isthisincorporated,"No")  
destring isthisincorporated, replace force
label values isthisincorporated yesno

rename subsidiaryofanother subsidiary
replace subsidiary="1" if regexm(subsidiary,"Yes") 
replace subsidiary="0" if subsidiary~="1"
replace subsidiary="" if isthisincorporated==.
destring subsidiary, replace force
label values subsidiary yesno

drop e-v13

rename jan wage_earners_jan
rename feb wage_earners_feb
rename march wage_earners_mar
rename april wage_earners_apr
rename may wage_earners_may
rename june wage_earners_jun
rename july wage_earners_jul
rename august wage_earners_aug
rename sept wage_earners_sep
rename oct wage_earners_oct
rename nov wage_earners_nov
rename dec wage_earners_dec

gen censusyear=1935
tostring wage_earners*, replace force
rename nameofowner nameofowner
rename nameofplant NameofPlant
rename citytownorvillage CityTownorVillage
rename county County
rename streetandnumber StreetandNumber

drop industryname v14
gen plantid_temp = _n

merge 1:1 plantid_temp using "./Stata Data/plantID_1935"
drop if _merge==1
drop _merge
//should be able to clean up industry 114 as well
//still probably some more cleaning necessary to make good names consistent across years
save "./Stata Data/LA_1935", replace

capture log close
