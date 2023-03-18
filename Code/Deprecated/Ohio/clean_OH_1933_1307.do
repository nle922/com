*NLZ: Program to create and clean the 1933 OH data for industry 1307

*Preliminaries
clear
capture log close
set more off
//cd "C:\Users\Nicolas\Dropbox\Depression Census\Datasets\Ohio\Original Data\1933_Foundries"
log using OH_dataset_1933_1307.txt, text replace
set mem 200m

insheet using ".\Original Data\1933_Foundries\FinaL_Ohio_1933_Industry_1307.csv", comma

drop if state~="Ohio"

label define yesno 0 "No" 1 "Yes"

replace isthisincorporated="1" if regexm(isthisincorporated,"Yes") | regexm(isthisincorporated,"Partnership") | regexm(isthisincorporated,"Incorporated") 
replace isthisincorporated="0" if regexm(isthisincorporated,"No") | regexm(isthisincorporated,"Owner") | regexm(isthisincorporated,"Not Incoporated")  
destring isthisincorporated, replace force
label values isthisincorporated yesno

replace subsidiaryofanother="1" if regexm(subsidiaryofanother,"Yes") 
replace subsidiaryofanother="0" if subsidiaryofanother~="1"
replace subsidiaryofanother="" if isthisincorporated==.

destring subsidiaryofanother, replace force
label values subsidiaryofanother yesno

/* Just leave the change name etc variables alone for now
//can probably clean up these few variables a bit more, but not really that important
rename changedlocation change_location
replace change_location = "1" if change_location == "Yes" | change_location == "420 Broadway"
replace change_location = "0" if change_location == "No" | change_location == "None"
destring change_location, replace force
label values change_location yesno
label var change_location "Changed location?"

rename changedname change_name
replace change_name = "1" if change_name == "Yes" | change_name == "Chinese Noodle Mfg Company" | change_name == "Oakland Noodle Factory"
replace change_name = "0" if change_name == "No" | change_name == "None"
destring change_name, replace force
label values change_name yesno
label var change_name "Changed name?"

rename changedownership change_ownership
replace change_ownership = "1" if substr(change_ownership,1,4) == "Indi" | change_ownership == "V. Iuliano" | change_ownership == "YES" | change_ownership == "Yes"
replace change_ownership = "1" if change_ownership == "Yes from Sosso to Sosso Jr" | change_ownership == "Yes from U.S. Macaroni Co." | change_ownership == "Yes, from Figler Saltzman and Co."
replace change_ownership = "0" if change_ownership == "No" | change_ownership == "No Changes" | change_ownership == "no"
destring change_ownership, replace force
label values change_ownership yesno
*/

replace began = "October 1, 1929" if began=="October, 1929"
replace began = "September 1, 1928" if began=="September, 1928"
replace began = "May 1, 1929" if began=="May, 1929"
replace began = "August 1, 1929" if began=="August, 1929"
replace began = "January 1, 1929" if began=="January, 1929"
replace began = "January 1, 1930" if began=="January, 1930"
replace began = "November 1, 1928" if began=="November, 1928"

replace end = "September 30, 1929" if end=="September, 1929"
replace end = "November 30, 1929" if end=="November, 1929"
replace end = "March 1, 1930" if end=="March, 1930"
replace end = "January 1, 1930" if end=="January, 1930"
replace end = "December 31, 1930" if end=="December, 1930"
replace end = "December 31, 1929" if end=="December, 1929"

replace end = "January 1, 1930" if end=="January 1," & began=="January 1, 1929"
replace end = "December 31, 1929" if end=="December" & began=="January 1, 1929"

destring numdaysplantinoperation, force replace
destring  numberofhoursplantwasoperated, force replace ignore("Hrs")

rename v23 hours_per_wage_earner
destring hours_per_wage_earner, force replace


foreach i in "jan" "feb" "march" "april" "may" "june" "july" "august" "september" "october" "november" "december" "total"{
tostring `i', replace force
replace `i' = "0" if `i'=="None"
destring `i', replace force
rename `i' wage_earners_`i'
label var wage_earners_`i' "Number of wage earners"
}

rename salariesforofficers salaries_officers
label var salaries_officers "Salaries for principal officers"

rename salariesformanagers salaries_managers
label var salaries_managers "Salaries for managers"

rename salariesforclerks salaries_clerks
label var salaries_clerks "Salaries for clerks"

rename wagespaid total_wages
label var total_wages "Total Wage Bill"

drop v45 v48

label var costofallmaterials "Cost of all materials"

rename costofcontractwork cost_contract_work
label var cost_contract_work "Cost of contract work"

rename costofallmaterials total_cost_materials
label variable total_cost_materials "Total cost of materials"
gen total_cost = total_cost_materials + total_wages 

label var total_cost "Total Cost (materials and labor)"

//still probably need to do some work on classifying output goods and input goods

rename quantity output_quantity_1
label var output_quantity_1 "Quantity of output 1"
destring value, replace force
rename value output_value_1
label var output_value_1 "Value of output 1"
rename specify output_specify_1
label var output_specify_1 "Type of output 1"

rename v52 output_quantity_2
label var output_quantity_2 "Quantity of output 2"
rename v53 output_value_2
label var output_value_2 "Value of output 2"
rename v54 output_specify_2
label var output_specify_2 "Type of output 2"

destring v55, replace force ignore("Tons")
rename v55 output_quantity_3
label var output_quantity_3 "Quantity of output 3"
rename v56 output_value_3
label var output_value_3 "Value of output 3"
rename v57 output_specify_3
label var output_specify_3 "Type of output 3"

replace  ifmorethanthreeporducts="1" if  ifmorethanthreeporducts=="Yes"
replace  ifmorethanthreeporducts="0" if  ifmorethanthreeporducts=="No" |  ifmorethanthreeporducts==""
destring  ifmorethanthreeporducts, replace force
label values  ifmorethanthreeporducts yesno

rename totalvalue total_output_value

rename v60 manhours_jan
replace v61 = "10432" if v61=="10432 1/2"
rename v61 manhours_feb
destring manhours_feb, replace force
rename v62 manhours_mar
replace v63 = "14441" if v63=="14441 1/2"
rename v63 manhours_apr
destring manhours_apr, replace force
rename v64 manhours_may
replace v65 = "16022" if v65=="16022 1/2"
rename v65 manhours_jun
destring manhours_jun, replace force
rename v66 manhours_jul
destring v67, replace force ignore(" ")
rename v67 manhours_aug
destring v68, replace force ignore(" ")
rename v68 manhours_sep
destring v69, replace force ignore(" ")
rename v69 manhours_oct
replace v70 = "7837" if v70=="7837 1/2"
destring v70, replace force ignore(" ")
rename v70 manhours_nov
rename v71 manhours_dec
drop v72-generalschedule

//need to add in some code to clean up the different types of products prdouced

gen censusyear=1933

//still thinks something is screwy with lumber output data
//should i code all of the different products?
//probably a few more units to fix if really want to

/*only need this for later when actually have other years
//this is merging in matched firmids
sort industrycode nameofplant county citytownorvillage  
gen firmid_1929 = _n
sort firmid_1929
merge firmid_1929 using  "/Users/nicolaslehmannziebarth/Dropbox/Depression Census/Datasets/Mississippi/matching_1929.dta", uniqusing

//this should be more or less redundant
keep if _merge==3
drop _merge firmid_1929
*/

tostring *, replace force

save "./Stata Data/OH_1933_1307", replace
log close
