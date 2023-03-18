//this builds the data and runs regressions for Huey Long paper
clear
capture log close

//set path
/*
NLZ 4/7/14: This is old code 
//clean up newspaper index data
import excel "./Huey Data/Newspaper Data/all_newspaper.xlsx", sheet("Commercial Newspaper Index") cellrange(A2:C266) firstrow allstring
rename Year censusyear
rename Month month
rename NumberofArticleHits articles_commerce

replace month = "1" if month=="January"
replace month = "2" if month=="February"
replace month = "3" if month=="March"
replace month = "4" if month=="April"
replace month = "5" if month=="May"
replace month = "6" if month=="June"
replace month = "7" if month=="July"
replace month = "8" if month=="August"
replace month = "9" if month=="September"
replace month = "10" if month=="October"
replace month = "11" if month=="November"
replace month = "12" if month=="December"

destring censusyear month, replace force
save "./Huey Data/Stata Data/sheet1.dta", replace



import excel "./Huey Data/Newspaper Data/all_newspaper.xlsx", sheet("PUI, all") cellrange(A2:C266) firstrow allstring clear
rename Year censusyear
rename Month month
rename NumberofArticleHits articles_PUbroad

replace month = "1" if month=="January"
replace month = "2" if month=="February"
replace month = "3" if month=="March"
replace month = "4" if month=="April"
replace month = "5" if month=="May"
replace month = "6" if month=="June"
replace month = "7" if month=="July"
replace month = "8" if month=="August"
replace month = "9" if month=="September"
replace month = "10" if month=="October"
replace month = "11" if month=="November"
replace month = "12" if month=="December"

destring censusyear month, replace force
save "./Huey Data/Stata Data/sheet2.dta", replace

import excel "./Huey Data/Newspaper Data/all_newspaper.xlsx", sheet("PUI,Huey") cellrange(A2:C266) firstrow allstring clear
rename Year censusyear
rename Month month
rename NumberofArticleHits articles_PUhuey

replace month = "1" if month=="January"
replace month = "2" if month=="February"
replace month = "3" if month=="March"
replace month = "4" if month=="April"
replace month = "5" if month=="May"
replace month = "6" if month=="June"
replace month = "7" if month=="July"
replace month = "8" if month=="August"
replace month = "9" if month=="September"
replace month = "10" if month=="October"
replace month = "11" if month=="November"
replace month = "12" if month=="December"

destring censusyear month, replace force
save "./Huey Data/Stata Data/sheet3.dta", replace

import excel "./Huey Data/Newspaper Data/all_newspaper.xlsx", sheet("PUI,commerce,huey") cellrange(A2:C266) firstrow allstring clear
rename Year censusyear
rename Month month
rename NumberofArticleHits articles_PUcommerce

replace month = "1" if month=="January"
replace month = "2" if month=="February"
replace month = "3" if month=="March"
replace month = "4" if month=="April"
replace month = "5" if month=="May"
replace month = "6" if month=="June"
replace month = "7" if month=="July"
replace month = "8" if month=="August"
replace month = "9" if month=="September"
replace month = "10" if month=="October"
replace month = "11" if month=="November"
replace month = "12" if month=="December"
destring censusyear month, replace force
save "./Huey Data/Stata Data/sheet4.dta", replace

import excel ".\Huey Data\Newspaper Data\all_newspaper.xlsx", sheet("Sheet1") cellrange(A1:D373) firstrow allstring clear
rename Year censusyear
rename Month month
rename NewspaperIndex articles_EU
drop Date
destring censusyear month, replace force

//now merge things together
merge 1:1 censusyear month using "./Huey Data/Stata Data/sheet4.dta"
drop if _merge==2
drop _merge

merge 1:1 censusyear month using "./Huey Data/Stata Data/sheet3.dta"
drop if _merge==2
drop _merge

merge 1:1 censusyear month using "./Huey Data/Stata Data/sheet2.dta"
drop if _merge==2
drop _merge

merge 1:1 censusyear month using "./Huey Data/Stata Data/sheet1.dta"
drop if _merge==2
drop _merge
gen state = "Louisiana"
save "./Huey Data/Stata Data/newspaper_data", replace

*/

//clean up the LA data

cd "C:\Users\nziebarth\Dropbox\Depression Census\Datasets"
use "./Huey Data/Stata Data/LA_1929" //from clean_1929_LA do file
append using "./Huey Data/Stata Data/LA_1935" //from clean_1935_LA do file
append using "./Huey Data/Stata Data/LA_1933" //from clean_1933_LA do file
append using "./Huey Data/Stata Data/LA_1931" //from clean_1931_LA do file
tostring plant_id industrynumber, replace force

append using "./Huey Data/Stata Data/LA_1933_part2" //from clean_1933_LA do file

replace plant_id = plant_id+"LA"
//this is to make IDs for 1931 LA unique. 
replace plant_id = plant_id + "_1931" if censusyear==1931
drop notes plantid_temp sum Notes NameofOwner nameofowner Totalvalueofproducts TotalOutputValue
rename industrynumber industrycode
rename plant_id plantid_ice
replace state = "LA"
rename NameofPlant nameofplant
rename CityTownorVillage citytownorvillage
rename County county

destring censusyear wage_earners*, replace force

//append the data together
//this should get ice data for LA for 1929 and 1935
append using "./Ice/Stata Data/ice_data_all_years.dta" //string
drop if state=="MS" & industrycode=="119"
drop firmid_ice
replace plantid_ice = plantid_ice+"OLD"

append using "./Mississippi/Stata Data/MS_data_all_years", force
//going to need to make sure plant_id variable has same name across datasets
//need to make sure aren't duplicating ice industry with appending Ice datasets and the state levels data
tostring firmid, replace force
replace firmid = "MS"+firmid
replace firmid = plantid_ice if firmid=="MS."
drop plantid_ice
rename firmid plant_id
replace state="MS" if state=="Mississippi"

keep if state=="MS"|state=="LA"
duplicates drop censusyear plant_id, force
keep wage_earners* state censusyear citytownorvillage county industrycode plant_id
//seems like LA has a lot more industries represented for what it's worth

//generate "fake" plant_id for reshaping
gen fake_id = _n

rename wage_earners_jan wage_earners1
rename wage_earners_feb wage_earners2
rename wage_earners_mar wage_earners3
rename wage_earners_apr wage_earners4
rename wage_earners_may wage_earners5
rename wage_earners_jun wage_earners6
rename wage_earners_jul wage_earners7
rename wage_earners_aug wage_earners8
rename wage_earners_sep wage_earners9
rename wage_earners_oct wage_earners10
rename wage_earners_nov wage_earners11
rename wage_earners_dec wage_earners12

//reshapes data long
reshape long wage_earners, i(fake_id) j(month)

gen log_wage_earners = log(wage_earners)

merge m:1 month censusyear using ".\Huey Data\Stata Data\stock_data_forMerging.dta"
drop if _merge==2
drop _merge

merge m:1 month censusyear using "./Huey Data/Stata Data/newspaper"
drop if _merge==2
drop _merge

//give all MS uncertainty observations a value of 0
replace meanreturn = 0 if state=="MS"
replace vol = 0 if state=="MS"
replace eui_baseline= 0 if state=="MS"
replace eui_commerce= 0 if state=="MS"
replace pui_broad= 0 if state=="MS"
replace pui_huey= 0 if state=="MS"
replace eui_huey_commerce= 0 if state=="MS"
replace nyt_eui= 0 if state=="MS"
drop wage_earners_total

save "./Huey Data/Stata Data/full_sample", replace

gen day =1
gen date = mdy(day, month, censusyear)
egen plantID_numeric = group(plant_id)
xtset plantID_numeric date
gen change_wage_earners = log_wage_earners - l.log_wage_earners

//Run some regressions
//pooled cross-sectiones

//for comparability sake, let's normalize the uncertainty measures by centering and scaling them

quietly sum vol
replace vol = (vol-r(mean))/r(sd)

quietly sum eui_commerce
replace eui_commerce = (eui_commerce-r(mean))/r(sd)

quietly sum eui_baseline
replace eui_baseline = (eui_baseline-r(mean))/r(sd)

gen lag_meanreturn = l.meanreturn
gen lag_lag_meanreturn = l.l.meanreturn
gen lag_vol = l.vol
gen lag_lag_vol = l.l.vol
gen lag_eui_baseline = l.eui_baseline
gen lag_lag_eui_baseline = l.l.eui_baseline
gen lag_eui_commerce = l.eui_commerce
gen lag_lag_eui_commerce = l.l.eui_commerce


eststo clear
eststo: xi: reg log_wage_earners meanreturn vol i.censusyear i.month*i.state i.industrycode, cluster(date)
eststo: xi: reg log_wage_earners meanreturn vol lag_meanreturn lag_vol i.censusyear i.month*i.state i.industrycode, cluster(date)
eststo: xi: reg log_wage_earners meanreturn  lag_meanreturn lag_lag_meanreturn vol lag_vol lag_lag_vol i.censusyear i.month*i.state i.industrycode, cluster(date)

eststo: xi: reg change_wage_earners meanreturn vol i.censusyear i.month*i.state i.industrycode, cluster(date)
eststo: xi: reg change_wage_earners meanreturn vol lag_meanreturn lag_vol i.censusyear i.month*i.state i.industrycode, cluster(date)
eststo: xi: reg change_wage_earners meanreturn lag_meanreturn lag_lag_meanreturn vol lag_vol lag_lag_vol i.censusyear i.month*i.state i.industrycode, cluster(date)

esttab using ../Manuscripts/Huey/baseline.tex, star(* 0.10 ** 0.05 *** 0.01) ar2 tex se label replace keep(meanreturn lag_meanreturn lag_lag_meanreturn vol lag_vol lag_lag_vol)

eststo clear
eststo: xi: reg log_wage_earners meanreturn vol i.censusyear i.month*i.state if industrycode=="119", cluster(date)
eststo: xi: reg log_wage_earners meanreturn vol lag_meanreturn lag_vol i.censusyear i.month*i.state if industrycode=="119", cluster(date)
eststo: xi: reg log_wage_earners meanreturn  lag_meanreturn lag_lag_meanreturn vol lag_vol lag_lag_vol i.censusyear i.month*i.state if industrycode=="119", cluster(date)

eststo: xi: reg change_wage_earners meanreturn vol i.censusyear i.month*i.state if industrycode=="119", cluster(date)
eststo: xi: reg change_wage_earners meanreturn vol lag_meanreturn lag_vol i.censusyear i.month*i.state if industrycode=="119", cluster(date)
eststo: xi: reg change_wage_earners meanreturn lag_meanreturn lag_lag_meanreturn vol lag_vol lag_lag_vol i.censusyear i.month*i.state if industrycode=="119", cluster(date)

esttab using ../Manuscripts/Huey/baseline_ice.tex, star(* 0.10 ** 0.05 *** 0.01) ar2 tex se label replace keep(meanreturn lag_meanreturn lag_lag_meanreturn vol lag_vol lag_lag_vol)


eststo clear

eststo: xi: reg log_wage_earners eui_baseline i.censusyear i.month*i.state i.industrycode, cluster(date)
eststo: xi: reg log_wage_earners eui_baseline lag_eui_baseline i.censusyear i.month*i.state i.industrycode, cluster(date)
eststo: xi: reg log_wage_earners eui_baseline lag_eui_baseline lag_lag_eui_baseline i.censusyear i.month*i.state i.industrycode, cluster(date)

eststo: xi: reg change_wage_earners eui_baseline i.censusyear i.month*i.state i.industrycode, cluster(date)
eststo: xi: reg change_wage_earners eui_baseline lag_eui_baseline i.censusyear i.month*i.state i.industrycode, cluster(date)
eststo: xi: reg change_wage_earners eui_baseline lag_eui_baseline lag_lag_eui_baseline i.censusyear i.month*i.state i.industrycode, cluster(date)

esttab using ../Manuscripts/Huey/baseline_2.tex, star(* 0.10 ** 0.05 *** 0.01) ar2 tex se label replace keep(eui_baseline lag_eui_baseline lag_lag_eui_baseline)

eststo clear

eststo: xi: reg log_wage_earners eui_baseline i.censusyear i.month*i.state if industrycode=="119", cluster(date)
eststo: xi: reg log_wage_earners eui_baseline lag_eui_baseline i.censusyear i.month*i.state if industrycode=="119", cluster(date)
eststo: xi: reg log_wage_earners eui_baseline lag_eui_baseline lag_lag_eui_baseline i.censusyear i.month*i.state if industrycode=="119", cluster(date)

eststo: xi: reg change_wage_earners eui_baseline i.censusyear i.month*i.state if industrycode=="119", cluster(date)
eststo: xi: reg change_wage_earners eui_baseline lag_eui_baseline i.censusyear i.month*i.state if industrycode=="119", cluster(date)
eststo: xi: reg change_wage_earners eui_baseline lag_eui_baseline lag_lag_eui_baseline i.censusyear i.month*i.state if industrycode=="119", cluster(date)

esttab using ../Manuscripts/Huey/baseline_2_ice.tex, star(* 0.10 ** 0.05 *** 0.01) ar2 tex se label replace keep(eui_baseline lag_eui_baseline lag_lag_eui_baseline)


eststo clear

eststo: xi: reg log_wage_earners eui_commerce i.censusyear i.month*i.state i.industrycode, cluster(date)
eststo: xi: reg log_wage_earners eui_commerce lag_eui_commerce i.censusyear i.month*i.state i.industrycode, cluster(date)
eststo: xi: reg log_wage_earners eui_commerce lag_eui_commerce lag_lag_eui_commerce i.censusyear i.month*i.state i.industrycode, cluster(date)

eststo: xi: reg change_wage_earners eui_commerce i.censusyear i.month*i.state i.industrycode, cluster(date)
eststo: xi: reg change_wage_earners eui_commerce lag_eui_commerce i.censusyear i.month*i.state i.industrycode, cluster(date)
eststo: xi: reg change_wage_earners eui_commerce lag_eui_commerce lag_lag_eui_commerce i.censusyear i.month*i.state i.industrycode, cluster(date)

esttab using ../Manuscripts/Huey/baseline_3.tex, star(* 0.10 ** 0.05 *** 0.01) ar2 tex se label replace keep(eui_commerce lag_eui_commerce lag_lag_eui_commerce)

eststo clear

eststo: xi: reg log_wage_earners eui_commerce i.censusyear i.month*i.state if industrycode=="119", cluster(date)
eststo: xi: reg log_wage_earners eui_commerce lag_eui_commerce i.censusyear i.month*i.state if industrycode=="119", cluster(date)
eststo: xi: reg log_wage_earners eui_commerce lag_eui_commerce lag_lag_eui_commerce i.censusyear i.month*i.state if industrycode=="119", cluster(date)

eststo: xi: reg change_wage_earners eui_commerce i.censusyear i.month*i.state if industrycode=="119", cluster(date)
eststo: xi: reg change_wage_earners eui_commerce lag_eui_commerce i.censusyear i.month*i.state if industrycode=="119", cluster(date)
eststo: xi: reg change_wage_earners eui_commerce lag_eui_commerce lag_lag_eui_commerce i.censusyear i.month*i.state if industrycode=="119", cluster(date)

esttab using ../Manuscripts/Huey/baseline_3_ice.tex, star(* 0.10 ** 0.05 *** 0.01) ar2 tex se label replace keep(eui_commerce lag_eui_commerce lag_lag_eui_commerce)


//border counties only
//MS: Issaquena, Warren, Claiborne, Jefferson, Adams, Wilkinson, Amite, Pike, Walthall, Marion, Pearl River, and Hancock
//LA: East Carroll, Madison, Tensas, Concordia, West Feliciana, East Feliciana, St. Helena, Tangipahoa, Washington, and St. Tammany

gen border = 1 if state=="MS" & (county=="Jefferson" |  county=="Jefferson." | county=="Wilkinson" | county=="Wilkinson & Amite" | county=="Marion Pike," | county=="Pike" | county=="Pearl River" | county=="Walthall" | county=="Walthall Township 4" |  county=="Claiborne 15 Miles East of Port Gibson" |  county=="Claiborne" | county=="Claiborne 18 Miles North of Port Gibson" | county=="Amite" | county=="Adams" | county=="Adams," | county=="Hancock")
replace border = 1 if state=="LA" & (county=="West Feliciana " | county=="West Feliciana" | county=="West Feliciana Parish" |  county=="Washinton" |  county=="Washington "| county=="Washington" | county=="Washington Parish" | county=="St. Tammany" |county=="St. Tammany Parish" | county=="Tangipa" |  county=="Tangipahoa" |  county=="Tangipahoa " | county=="Tensas" | county=="Tensas "  |county=="Tensas Parish" | county=="St. Temmany Parish" | county=="Parish East Carroll" |  county=="East Carroll Parish" |  county=="East Carroll, Parish" | county=="East Feliciana" |county=="Concordia " | county=="Concordia" |county=="Madison" |county=="Madison Parish"| county=="Saint Tammany"| county=="St Tammany" | county=="St. Tammany"| county=="St. Helena")

eststo clear
eststo: xi: reg log_wage_earners meanreturn vol i.censusyear i.month*i.state i.industrycode if border==1, cluster(date)
eststo: xi: reg log_wage_earners meanreturn vol lag_meanreturn lag_vol i.censusyear i.month*i.state i.industrycode if border==1, cluster(date)
eststo: xi: reg log_wage_earners meanreturn lag_meanreturn lag_lag_meanreturn vol lag_vol lag_lag_vol i.censusyear i.month*i.state i.industrycode if border==1, cluster(date)

eststo: xi: reg change_wage_earners meanreturn vol i.censusyear i.month*i.state i.industrycode if border==1, cluster(date)
eststo: xi: reg change_wage_earners meanreturn vol lag_meanreturn lag_vol i.censusyear i.month*i.state i.industrycode if border==1, cluster(date)
eststo: xi: reg change_wage_earners meanreturn lag_meanreturn lag_lag_meanreturn vol lag_vol lag_lag_vol i.censusyear i.month*i.state i.industrycode if border==1, cluster(date)

esttab using ../Manuscripts/Huey/baseline_border.tex, star(* 0.10 ** 0.05 *** 0.01) ar2 tex se label replace keep(meanreturn lag_meanreturn lag_lag_meanreturn vol lag_vol lag_lag_vol)

eststo clear

eststo: xi: reg log_wage_earners eui_baseline i.censusyear i.month*i.state i.industrycode if border==1, cluster(date)
eststo: xi: reg log_wage_earners eui_baseline lag_eui_baseline i.censusyear i.month*i.state i.industrycode if border==1, cluster(date)
eststo: xi: reg log_wage_earners eui_baseline lag_eui_baseline lag_lag_eui_baseline i.censusyear i.month*i.state i.industrycode if border==1, cluster(date)

eststo: xi: reg change_wage_earners eui_baseline i.censusyear i.month*i.state i.industrycode if border==1, cluster(date)
eststo: xi: reg change_wage_earners eui_baseline lag_eui_baseline i.censusyear i.month*i.state i.industrycode if border==1, cluster(date)
eststo: xi: reg change_wage_earners eui_baseline lag_eui_baseline lag_lag_eui_baseline i.censusyear i.month*i.state i.industrycode if border==1, cluster(date)

esttab using ../Manuscripts/Huey/baseline_2_border.tex, star(* 0.10 ** 0.05 *** 0.01) ar2 tex se label replace keep(eui_baseline lag_eui_baseline lag_lag_eui_baseline)

eststo clear

eststo: xi: reg log_wage_earners eui_commerce i.censusyear i.month*i.state i.industrycode if border==1, cluster(date)
eststo: xi: reg log_wage_earners eui_commerce lag_eui_commerce i.censusyear i.month*i.state i.industrycode if border==1, cluster(date)
eststo: xi: reg log_wage_earners eui_commerce lag_eui_commerce lag_lag_eui_commerce i.censusyear i.month*i.state i.industrycode if border==1, cluster(date)

eststo: xi: reg change_wage_earners eui_commerce i.censusyear i.month*i.state i.industrycode if border==1, cluster(date)
eststo: xi: reg change_wage_earners eui_commerce lag_eui_commerce i.censusyear i.month*i.state i.industrycode if border==1, cluster(date)
eststo: xi: reg change_wage_earners eui_commerce lag_eui_commerce lag_lag_eui_commerce i.censusyear i.month*i.state i.industrycode if border==1, cluster(date)

esttab using ../Manuscripts/Huey/baseline_3_border.tex, star(* 0.10 ** 0.05 *** 0.01) ar2 tex se label replace keep(eui_commerce lag_eui_commerce lag_lag_eui_commerce)

levelsof censusyear, local(years)
levelsof industrycode, local(industries)

gen p_wage = 0 
foreach j of local industries{
	foreach i of local years{
	capture xtile p_wage_`j'_`i' = log_wage_earners if censusyear==`i' & industrycode=="`j'", nquantiles(4)
	capture replace p_wage_`j'_`i' = 0 if p_wage_`j'_`i'==.
	capture replace p_wage = p_wage+p_wage_`j'_`i'
	capture drop p_wage_`j'_`i'
	}
}

eststo clear
eststo: xi: reg log_wage_earners meanreturn vol i.censusyear i.month*i.state i.industrycode if p_wage==1, cluster(date)
eststo: xi: reg log_wage_earners meanreturn vol i.censusyear i.month*i.state i.industrycode if p_wage==2, cluster(date)
eststo: xi: reg log_wage_earners meanreturn vol i.censusyear i.month*i.state i.industrycode if p_wage==3, cluster(date)
eststo: xi: reg log_wage_earners meanreturn vol i.censusyear i.month*i.state i.industrycode if p_wage==4, cluster(date)

eststo: xi: reg change_wage_earners meanreturn vol i.censusyear i.month*i.state i.industrycode if p_wage==1, cluster(date)
eststo: xi: reg change_wage_earners meanreturn vol i.censusyear i.month*i.state i.industrycode if p_wage==2, cluster(date)
eststo: xi: reg change_wage_earners meanreturn vol i.censusyear i.month*i.state i.industrycode if p_wage==3, cluster(date)
eststo: xi: reg change_wage_earners meanreturn vol i.censusyear i.month*i.state i.industrycode if p_wage==4, cluster(date)

esttab using ../Manuscripts/Huey/baseline_sizeLag0.tex, star(* 0.10 ** 0.05 *** 0.01) ar2 tex se label replace keep(meanreturn vol)

eststo clear

eststo: xi: reg log_wage_earners eui_baseline i.censusyear i.month*i.state i.industrycode if p_wage==1, cluster(date)
eststo: xi: reg log_wage_earners eui_baseline i.censusyear i.month*i.state i.industrycode if p_wage==2, cluster(date)
eststo: xi: reg log_wage_earners eui_baseline i.censusyear i.month*i.state i.industrycode if p_wage==3, cluster(date)
eststo: xi: reg log_wage_earners eui_baseline i.censusyear i.month*i.state i.industrycode if p_wage==4, cluster(date)

eststo: xi: reg change_wage_earners eui_baseline i.censusyear i.month*i.state i.industrycode if p_wage==1, cluster(date)
eststo: xi: reg change_wage_earners eui_baseline i.censusyear i.month*i.state i.industrycode if p_wage==2, cluster(date)
eststo: xi: reg change_wage_earners eui_baseline i.censusyear i.month*i.state i.industrycode if p_wage==3, cluster(date)
eststo: xi: reg change_wage_earners eui_baseline i.censusyear i.month*i.state i.industrycode if p_wage==4, cluster(date)

esttab using ../Manuscripts/Huey/baseline_size2Lag0.tex, star(* 0.10 ** 0.05 *** 0.01) ar2 tex se label replace keep(eui_baseline)

eststo clear

eststo: xi: reg log_wage_earners eui_commerce i.censusyear i.month*i.state i.industrycode if p_wage==1, cluster(date)
eststo: xi: reg log_wage_earners eui_commerce i.censusyear i.month*i.state i.industrycode if p_wage==2, cluster(date)
eststo: xi: reg log_wage_earners eui_commerce i.censusyear i.month*i.state i.industrycode if p_wage==3, cluster(date)
eststo: xi: reg log_wage_earners eui_commerce i.censusyear i.month*i.state i.industrycode if p_wage==4, cluster(date)

eststo: xi: reg change_wage_earners eui_commerce i.censusyear i.month*i.state i.industrycode if p_wage==1, cluster(date)
eststo: xi: reg change_wage_earners eui_commerce i.censusyear i.month*i.state i.industrycode if p_wage==2, cluster(date)
eststo: xi: reg change_wage_earners eui_commerce i.censusyear i.month*i.state i.industrycode if p_wage==3, cluster(date)
eststo: xi: reg change_wage_earners eui_commerce i.censusyear i.month*i.state i.industrycode if p_wage==4, cluster(date)

esttab using ../Manuscripts/Huey/baseline_size3Lag0.tex, star(* 0.10 ** 0.05 *** 0.01) ar2 tex se label replace keep(eui_commerce)

//try rerunning at the quarterly level
gen quarter = 1 if month==1 | month==2 | month==3
replace quarter = 2 if month==4 | month==5 | month==6
replace quarter = 3 if month==7 | month==8 | month==9
replace quarter = 4 if month==10 | month==11 | month==12

collapse (sum) wage_earners (mean) meanreturn (mean) vol (mean) eui_baseline (mean) eui_commerce (firstnm) industrycode (firstnm) state, by(plantID_numeric quarter censusyear)

xtset, clear
gen day = 1
gen date = mdy(day, quarter, censusyear)
xtset plantID_numeric date
gen log_wage_earners = log(wage_earners)
gen change_wage_earners = log_wage_earners - l.log_wage_earners
gen lag_meanreturn = l.meanreturn
gen lag_lag_meanreturn = l.lag_meanreturn
gen lag_vol = l.vol
gen lag_lag_vol = l.lag_vol
gen lag_eui_baseline = l.eui_baseline
gen lag_lag_eui_baseline = l.lag_eui_baseline
gen lag_eui_commerce = l.eui_commerce
gen lag_lag_eui_commerce = l.lag_eui_commerce

eststo clear
eststo: xi: reg log_wage_earners meanreturn vol i.censusyear i.quarter*i.state i.industrycode, cluster(date)
eststo: xi: reg log_wage_earners meanreturn vol lag_meanreturn lag_vol i.censusyear i.quarter*i.state i.industrycode, cluster(date)

eststo: xi: reg change_wage_earners meanreturn vol i.censusyear i.quarter*i.state i.industrycode, cluster(date)
eststo: xi: reg change_wage_earners meanreturn vol l.meanreturn l.vol i.censusyear i.quarter*i.state i.industrycode, cluster(date)

esttab using ../Manuscripts/Huey/baseline_quarter.tex, star(* 0.10 ** 0.05 *** 0.01) ar2 tex se label replace keep(meanreturn lag_meanreturn vol lag_vol)

eststo clear

eststo: xi: reg log_wage_earners eui_baseline i.censusyear i.quarter*i.state i.industrycode, cluster(date)
eststo: xi: reg log_wage_earners eui_baseline lag_eui_baseline i.censusyear i.quarter*i.state i.industrycode, cluster(date)

eststo: xi: reg change_wage_earners eui_baseline i.censusyear i.quarter*i.state i.industrycode, cluster(date)
eststo: xi: reg change_wage_earners eui_baseline lag_eui_baseline i.censusyear i.quarter*i.state i.industrycode, cluster(date)

esttab using ../Manuscripts/Huey/baseline_2_quarter.tex, star(* 0.10 ** 0.05 *** 0.01) ar2 tex se label replace keep(eui_baseline lag_eui_baseline)

eststo clear

eststo: xi: reg log_wage_earners eui_commerce i.censusyear i.quarter*i.state i.industrycode, cluster(date)
eststo: xi: reg log_wage_earners eui_commerce lag_eui_commerce i.censusyear i.quarter*i.state i.industrycode, cluster(date)

eststo: xi: reg change_wage_earners eui_commerce i.censusyear i.quarter*i.state i.industrycode, cluster(date)
eststo: xi: reg change_wage_earners eui_commerce lag_eui_commerce i.censusyear i.quarter*i.state i.industrycode, cluster(date)

esttab using ../Manuscripts/Huey/baseline_3_quarter.tex, star(* 0.10 ** 0.05 *** 0.01) ar2 tex se label replace keep(eui_commerce lag_eui_commerce)


log close
