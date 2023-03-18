//This creates the MS dataset by running cleaning programs for all of the years and then appending them together.
//Things still to do:
*1. Match across years from 1929-1933, 1931-1935, 1929-1935
*2. More binning of output and input prodcuts as well as fixing units for these variables. Not really a whole lot to do here.
*5. Should clean up cost variables and figure out how they're all related. What is the difference between total_cost_inputs vs. total_cost_materials.
*7. Should read through notes and see what Indians couldn't read. 
*8. Check on missing printing for 1929 and bakery data for 1935. Missing all industrycodes in 200s for 1935
*9. More spot checking the quality of the data entry
*10. Fix up internalcombustion, waterwheels, diesel, and steamengines. Need some more parsing here. This will be a pain.
*11. For firms that dropout and then come back, see which year that concentrates in.
*12. D.L. Fair lumber companies ID. 
*13. More checking of firm matching

clear
set mem 400m
capture log close
log using generate_mississippi_data.txt, t replace
 cd "/Users/nicolaslehmannziebarth/Dropbox/Depression Census/Datasets/Mississippi"
do clean_1929
do clean_1931
do clean_1933
do clean_1935

use MS_1931
append using MS_1929
append using MS_1933
append using MS_1935

foreach i in "output_specify_1" "output_specify_2" "output_specify_3" "input_specify_1" "input_specify_2" "input_specify_3"{
replace `i' = proper(`i')
}

replace output_specify_1 = "Can Ice (Raw Water)" if output_specify_1 == "Can Ice(Raw Water)"
replace output_specify_2 = "Can Ice (Raw Water)" if output_specify_2 == "Can Ice(Raw Water)"
replace output_specify_3 = "Can Ice (Raw Water)" if output_specify_3 == "Can Ice(Raw Water)"

replace output_specify_1 = "Can Ice (Distilled Water)" if output_specify_1 == "Can Ice(Distilled Water)"
replace output_specify_2 = "Can Ice (Distilled Water)" if output_specify_2 == "Can Ice(Distilled Water)"
replace output_specify_3 = "Can Ice (Distilled Water)" if output_specify_3 == "Can Ice(Distilled Water)"

order notes firmid matching_note

destring output_quantity_* output_value_* input_quantity_* input_value_* numdaysplantinoperation hoursperweek wage_earners_jan wage_earners_feb wage_earners_march wage_earners_april wage_earners_may wage_earners_june wage_earners_july wage_earners_august wage_earners_september wage_earners_october wage_earners_november wage_earners_december wage_earners_total total_wages total_cost_materials total_cost_contract_work total_cost morethan3products total_output_value morethan3inputs censusyear total_wages_salaries salaries_managers salaries_officers managers_female managers_male officers_female officers_male proprietors_female proprietors_male hours_per_wage_earner shiftsperday hoursperday firmid isthisincorporated, replace force

aorder *
//now need to fix up the date variable

gen month_began = word(began,1)
gen month_end = word(end,1)

foreach i in "began" "end" {
replace month_`i' = "1" if month_`i'=="January"
replace month_`i' = "2" if month_`i'=="February"
replace month_`i' = "3" if month_`i'=="March"
replace month_`i' = "4" if month_`i'=="April"
replace month_`i' = "5" if month_`i'=="May"
replace month_`i' = "6" if month_`i'=="June"
replace month_`i' = "7" if month_`i'=="July"
replace month_`i' = "8" if month_`i'=="August"
replace month_`i' = "9" if month_`i'=="September"
replace month_`i' = "10" if month_`i'=="October"
replace month_`i' = "11" if month_`i'=="November"
replace month_`i' = "12" if month_`i'=="December"
destring month_`i', replace force
}

gen year_began = word(began,3)
gen year_end = word(end,3)
destring year_began, replace force
destring year_end, replace force
destring month_began, replace force
destring month_end, replace force

gen months_operation = 12*(year_end-year_began) + (month_end-month_began)

//generates indicator for what Fed district county is in
do fed_districts

//generates indicator for whether industry is local (in my view)
do local_indicator

//this should assign firmids to those that aren't matched in pairwise years. should probably try matching across more than 1 census
sort firmid
replace firmid = firmid[_n-1]+1 if firmid==.

//Hard code a few mistakes
sort firmid censusyear
 replace firmid = 3026 in 105
 replace firmid = 3024 in 1492
 replace firmid = 3024 in 1494
 replace firmid = 3025 in 1891


///* This is not working right now. When you change one ID, it messes up everything else. But this is something that shoudl be done
//fixing some firms that drop out and then reappear
//replace firmid = 2726 if nameofplant=="A. Tindall, Inc" & censusyear==1935
replace firmid = 18 if regexm(nameofplant,"Acma Building") & censusyear==1929
replace firmid = 25 if regexm(nameofplant,"Armory Cotton Oil Company") & censusyear==1929
drop if regexm(nameofplant,"Anderson Tully Co") & censusyear==1929
replace firmid = 40 if regexm(nameofplant,"Bellgrade") & censusyear==1929
replace firmid = 806 if regexm(nameofplant,"Arcadia Creamery Inc") & censusyear==1935
replace firmid = 42 if regexm(nameofplant,"Belmont") & censusyear==1929
replace firmid = 44 if regexm(nameofplant,"Belzone Coca Cola") & censusyear==1935
//replace firmid = 60 if firmid==2417
//replace firmid = 2638 if firmid==2640
//replace firmid = 985 if firmid==1138
//replace firmid = 2410 if firmid==2425
//replace firmid = 71 if firmid==1060
replace firmid = 83 if regexm(nameofplant, "Central Lumber Co.")
//replace firmid = 2388 if firmid==1971
replace firmid = 84 if firmid==1751
replace firmid = 85 if firmid==1966
//replace firmid = 110 if firmid==2721
//replace firmid = 112 if firmid==1445
//replace firmid = 834 if firmid==2224
replace firmid = 941 if firmid==3025
replace firmid = 141 if firmid==1824
replace firmid = 143 if firmid==2684
//replace firmid = 975 if firmid==1490
replace firmid = 160 if firmid==2480
replace firmid = 175 if firmid==1196
//replace firmid = 905 if firmid==2119
//replace firmid = 976 if firmid==1515
//replace firmid = 1291 if firmid==2088
//replace firmid = 190 if firmid==1589
replace firmid = 193 if firmid==672
//replace firmid = 197 if firmid==1930
//replace firmid = 199 if firmid==1830
replace firmid = 200 if firmid==2984
//replace firmid = 205 if firmid==2467
replace firmid = 208 if firmid==2670
replace firmid = 211 if firmid==1887
replace firmid = 214 if firmid==1950
//replace firmid = 232 if firmid==2149 | firmid==1134
//replace firmid = 233 if firmid==2868
//replace firmid = 246 if firmid==2678
//replace firmid = 252 if firmid==1554
//replace firmid = 1039 if firmid==2162
replace firmid = 701 if firmid==2158
//replace firmid = 264 if firmid==863
//replace firmid = 988 if firmid==1582
//replace firmid = 293 if firmid==1182
//replace firmid = 301 if firmid==1528
//replace firmid = 308 if firmid==1166 | firmid==1698
//replace firmid = 341 if firmid==2819
//replace firmid = 349 if firmid==1350
//replace firmid = 354 if firmid==2855
//replace firmid = 376 if firmid==1111
replace firmid = 378 if firmid==1197
replace firmid = 381 if firmid==1037
//replace firmid = 382 if firmid==2628
//replace firmid = 875 if firmid==2327
//replace firmid = 390 if firmid==1479
replace firmid = 776 if firmid==1104
replace firmid = 801 if firmid==2498
replace firmid = 408 if firmid==1938
replace firmid = 696 if firmid==401
//replace firmid = 421 if firmid==420
//replace firmid = 429 if firmid==1486
replace firmid = 440 if firmid==1753
replace firmid = 463 if firmid==1693
//replace firmid = 757 if firmid==1544
replace firmid = 728 if firmid==1451
//replace firmid = 470 if firmid==1217
replace firmid = 479 if firmid==2092
replace firmid = 870 if firmid==1125
//replace firmid = 496 if firmid==1171
//replace firmid = 500 if firmid==764
replace firmid = 1013 if firmid==2394
//replace firmid = 516 if firmid==2360
//replace firmid = 517 if firmid==2613
//replace firmid = 822 if firmid==2403
replace firmid = 529 if firmid==2442
//replace firmid = 775 if firmid==1488
replace firmid = 543 if firmid==1785
replace firmid = 550 if firmid==1351
replace firmid = 552 if firmid==879
//replace firmid = 922 if firmid==2903
replace firmid = 569 if firmid==1440
replace firmid = 743 if firmid==1375
//replace firmid = 970 if firmid==1684
replace firmid = 577 if firmid==1243
replace firmid = 579 if firmid==2534
replace firmid = 580 if firmid==2545
replace firmid = 585 if firmid==2493
replace firmid = 586 if firmid==2588
replace firmid = 596 if firmid==1803
replace firmid = 597 if firmid==2491
replace firmid = 603 if firmid==2998
replace firmid = 608 if firmid==2549
replace firmid = 611 if firmid==1946
//replace firmid = 613 if firmid==1991
//replace firmid = 796 if firmid==2355
replace firmid = 625 if firmid==2494
replace firmid = 631 if firmid==1304
//replace firmid = 1629 if firmid==2812
//replace firmid = 635 if firmid==2041
replace firmid = 639 if firmid==2844
replace firmid = 640 if firmid==2550
replace firmid = 642 if firmid==853
replace firmid = 647 if firmid==3024
//replace firmid = 876 if firmid==1641
//*/

save MS_data_all_years, replace

//do some entry and exit stuff now

gen dummy = 1 
keep dummy firmid censusyear
//need to change the name because Stata complains
reshape wide dummy, i(firmid) j(censusyear)

//number of firms in a given year
count if dummy1929~=.
count if  dummy1931~=.
count if  dummy1933~=.
count if  dummy1935~=.

//stayers from census to census
count if dummy1929~=. & dummy1931~=.
count if dummy1933~=. & dummy1931~=.
count if dummy1935~=. & dummy1933~=.

//exits
count if dummy1929~=. & dummy1931==.
count if dummy1933==. & dummy1931~=.
count if dummy1935==. & dummy1933~=.

//entrants
count if dummy1933~=. & dummy1931==.
count if dummy1935~=. & dummy1933==.
count if dummy1929==. & dummy1931~=.

//prepping things to create entry-exit indicators
replace dummy1929=0 if dummy1929==.
replace dummy1931=0 if dummy1931==.
replace dummy1933=0 if dummy1933==.
replace dummy1935=0 if dummy1935==.

reshape long dummy, i(firmid) j(censusyear)

//there are some obvious coverage issues:
*1. Wildly too many lumber firms in 1929 relative to all the rest of years.
*2. Missing bakery firms for 1929 and 1935 currently. 

*Basic industries for MS: Ice, bottling, lumber, bakeries, cottonseed oil, ice cream, and a few heavy industries.

//generate dummy variable = 1 if exit in that year, 0 if don't exit.
gen exit = 1 if firmid[_n] == firmid[_n-1] & dummy[_n]==0 & dummy[_n-1]==1
replace exit = exit[_n+1]
replace exit = 0 if dummy~=0 & exit~=1 & censusyear<1935

//generate dummy variable = 1 if enter in that year, 0 if don't enter but exist
gen enter = firmid[_n] == firmid[_n-1] & dummy[_n]==1 & dummy[_n-1]==0
replace enter = . if dummy==.

drop dummy

sort firmid censusyear
save wide_entry_exit, replace

use MS_data_all_years
sort firmid censusyear

merge firmid censusyear using wide_entry_exit, uniqusing
 keep if _merge==3
 drop _merge

//first attempt at calculating something like an average wage per hour
gen total_hours=0

rename hoursperweek hours_per_week
rename numdaysplantinoperation num_days_operation
replace hours_per_wage_earner = hours_per_week if censusyear>1929
drop hours_per_week
foreach variable in "jan" "feb" "mar" "apr" "may" "jun" "jul" "aug" "sep" "oct" "nov" "dec" {
//this generates total hours in a given month by multiplying number of wage earners times number of hours they work per week times "average" number of weeks in a monthh
gen total_hours_`variable' = wage_earners_`variable'*hours_per_wage_earner*4.5
replace total_hours_`variable' = 0 if total_hours_`variable'==.
replace total_hours=total_hours+total_hours_`variable'
}
drop total_hours_jan-total_hours_dec
gen average_wage_a = total_wages/total_hours
label variable average_wage_a "Average wage calculated using 1st method (see code)"

//method 2 for calculating average wage
//here we averagethe number of workers employed then multiply the number of days open and the number of hours in a day
gen average_num_wage_earners =0
gen num_labor_months =0

rename wage_earners_march wage_earners_mar
rename wage_earners_april wage_earners_apr
rename wage_earners_june wage_earners_jun
rename wage_earners_july wage_earners_jul
rename wage_earners_august wage_earners_aug
rename wage_earners_september wage_earners_sep
rename wage_earners_october wage_earners_oct
rename wage_earners_november wage_earners_nov
rename wage_earners_december wage_earners_dec

foreach variable in "jan" "feb" "mar" "apr" "may" "jun" "jul" "aug" "sep" "oct" "nov" "dec" {
gen temp_average_wage_earners = wage_earners_`variable'
gen indic_missing = temp_average_wage_earners~=.
replace temp_average_wage_earners = 0 if temp_average_wage_earners==.
replace num_labor_months =  num_labor_months + indic_missing
replace average_num_wage_earners = average_num_wage_earners + temp_average_wage_earners
drop temp_average_wage_earners indic_missing
}

replace average_num_wage_earners = average_num_wage_earners/num_labor_months
gen total_hours_b = average_num_wage_earners*num_days_operation*8
gen average_wage_b = total_wages/total_hours_b
drop total_hours_b total_hours num_labor_months
label variable average_wage_b "Average wage calculated using 2nd method (see code)"

//try more direct route for firms that list total manhours by month
gen total_hours_d = 0
gen temp_indic=0
destring manhours_*, force replace
foreach variable in "january" "february" "march" "april" "may" "june" "july" "august" "september" "october" "november" "december" {
replace manhours_`variable' = 0 if manhours_`variable'==.
replace temp_indic = 1 if manhours_`variable'==.
replace total_hours_d = total_hours_d + manhours_`variable'
}
gen average_wage_d = total_wages/total_hours_d if temp_indic==0


//these give relatively similar answers but the a method doesn't have as many missings
gen missing_labor_data = wage_earners_jan==. | wage_earners_feb==. | wage_earners_mar==. | wage_earners_apr==. | wage_earners_may==. | wage_earners_jun==. | wage_earners_jul==. | wage_earners_aug==. | wage_earners_sep==. | wage_earners_oct==. | wage_earners_nov==. | wage_earners_dec==.
label variable missing_labor_data "Indicator is missing any month of labor data"

//generate some deciles of various variables across the years
 foreach i of varlist average_wage_* total_output_value total_wages total_cost{
gen d_`i' = 0
}


 forvalues j = 1929(2)1935{ 
 foreach i of varlist average_wage_* total_output_value total_wages total_cost{
capture xtile d_`i'_`j' = `i' if censusyear==`j', nquantiles(10)
capture replace d_`i'_`j' = 0 if d_`i'_`j' ==.
capture replace d_`i' = d_`i'+d_`i'_`j'
 }
 }

//generate some percentiles of various variables across the years
 foreach i of varlist average_wage_* total_output_value total_wages total_cost{
gen p_`i' = 0
}
 
 forvalues j = 1929(2)1935{ 
 foreach i of varlist average_wage_* total_output_value total_wages total_cost{
capture xtile p_`i'_`j' = `i' if censusyear==`j', nquantiles(100)
capture replace p_`i'_`j' = 0 if p_`i'_`j' ==.
capture replace p_`i' = p_`i'+p_`i'_`j'
 }
 }

drop d_average_wage_a_1929-d_total_cost_1935
drop p_average_wage_a_1929-p_total_cost_1935

foreach i of varlist d_average_wage_a d_average_wage_b d_total_output_value d_total_wages d_total_cost p_average_wage_a p_average_wage_b p_total_output_value p_total_wages p_total_cost{

replace `i' = . if `i'==0
}

replace morethan3inputs = 0 if morethan3inputs==. & censusyear==1931


drop doesnumberofhours 
label variable average_num_wage_earners "Average number of wage earners per month"
label variable local_industry "Indicator for local industry (my coding)"
label variable d_average_wage_a "Deciles for average wage A by year"
label variable d_average_wage_b "Deciles for average wage B by year"
label variable d_average_wage_d "Deciles for average wage D by year"
label variable d_total_output_value "Deciles for total output by year"
label variable d_total_cost "Deciles for total cost"
label variable d_total_wages "Deciles for total wage bill"
duplicates drop *, force

label variable exit "Indicator if exited in given year"
label variable enter "Indicator if entered in given year"
label variable st_louis_fed "Indicator if in St. Louis Fed district"
label variable firmid "Unique firm identifier"
label variable censusyear "Census year for which the data refers"
drop in 1

destring subsidiary managers clerical_employees_december-cost_purchased_electricity delivery_electric_capacity-electricity_purchased manhours_*, force replace
destring motor_* officers proprietors salaries_clerks sales_* supervisory* technical*,  replace force

replace match_note = matching_note if match_note=="" & matching_note~=""
destring subsidiaryofanother total_cost-total_wages_salaries, force replace
replace subsidiary = subsidiaryofanother if censusyear==1935

drop subsidiaryofanother matching_note morethanthreemachines oneormoreother poaddressifdifferent waterwheels_horsepower waterwheels_number

replace industrycode = "136" if industrycode=="102b" & censusyear>1929
replace industrycode = "520" if industrycode=="508a" & censusyear>1929

destring motor_*, ignore("HP.") force replace

replace managers = supervisory_employees if censusyear==1935
replace salaries_managers = supervisory_employees_salary if censusyear==1935
drop supervisory_employees supervisory_employees_salary

replace proprietors = proprietors_male if proprietors_male ~=. & proprietors_female==. & censusyear==1929
replace proprietors = proprietors_female if proprietors_male ==. & proprietors_female~=. & censusyear==1929
replace proprietors = proprietors_female + proprietors_male if proprietors_male ~=. & proprietors_female~=. & censusyear==1929

rename clerical_employees_december clerks_december
rename clerical_employees_june clerks_june
rename clerical_employees_march clerks_march
rename clerical_employees_september clerks_september
replace salaries_clerks = clerical_employees_salary if censusyear==1935
drop clerical_employees_salary change_location change_name change_ownership ifsogive match_note notes natureofbusiness
 
aorder *
label var total_wages_1934 "Corresponding total wages for 1934"

replace input_unit_1 = "Tons" if input_unit_1 == "Ton"
replace input_unit_2 = "Tons" if input_unit_2 == "Ton"
replace input_unit_3 = "Tons" if input_unit_3 == "Ton"

replace output_unit_1 = "Tons" if output_unit_1 == "Ton"
replace output_unit_2 = "Tons" if output_unit_2 == "Ton"
replace output_unit_3 = "Tons" if output_unit_3 == "Ton"

replace input_unit_1 = "Pounds" if input_unit_1 == "Pound"
replace input_unit_2 = "Pounds" if input_unit_2 == "Pound"
replace input_unit_3 = "Pounds" if input_unit_3 == "Pound"

replace output_unit_1 = "Pounds" if output_unit_1 == "Pound"
replace output_unit_2 = "Pounds" if output_unit_2 == "Pound"
replace output_unit_3 = "Pounds" if output_unit_3 == "Pound"

label var p_average_wage_a "Percentiles for average wage A by year"
label var p_average_wage_b "Percentiles for average wage B by year"
label var p_average_wage_d "Percentiles for average wage D by year"
label var p_total_cost "Percentiles for total cost by year"
label var p_total_output_value "Percentiles for output_value by year"
label var p_total_wages "Percentiles for total wages"

drop temp_indic total_hours_d

save MS_data_all_years, replace


foreach i in "Montgomery" "Harrison" "Adams" "Jones" "Monroe" "Pike" "Berry"{
replace county = "`i'" if county=="`i',"

}
replace county = "Yalobusha" if county=="Yellabusha" | county=="Yalabusha"
replace county = "Jefferson Davis" if county =="Lefferson Davis" | county =="Jeff Davis" | county =="Jefferson Donis" | county =="Jefferson."
replace county = "Alcorn" if regexm(county, "Alcorn")
replace county = "Alcorn" if regexm(county, "Alcon")
replace county = "Greene" if regexm(county, "Green")
replace county = "De Soto" if regexm(county, "Desoto")
replace county = upper(county)

replace county = "BOLIVAR" if regexm(county,"BOLIVAR COUNTY") | county=="BOVINA"
replace county = "Calhoun" if county=="CALIN CALHOUN"
replace county = "CARROLL" if county=="CARROLLTON"
replace county = "CHOCTAW" if county=="CHOCTOW"
replace county = "CLAIBORNE" if regexm(county,"CLAIBORNE") | county=="CLAIRBORNE"
replace county = "CLARKE" if county=="CLARK" | county=="CLARKE BRAH 2-12-6"
replace county = "COPIAH" if county=="COPIAH COUNTY"
foreach i in "Franklin" "Copiah" "Panola" "Sunflower"{
replace county = "`i'" if county=="`i' County"
}

replace county = "Hancock" if county=="HANCOCK."
replace county = "Hinds"	if county=="HINDS PARAGULA ST"
replace county = "Humphreys"	if county=="HUMPHREY"
replace county = "Itawamba"	if county=="ITTAWAMBA"
replace county = "Jasper"	if county=="JESPER"
replace county = "LAUDERDALE"	if county=="LAUDERDALE 5TH ST., 30TH AVE"
replace county = "LEFLORE"	if county=="LE FLORE"
replace county = "LEFLORE"	if county=="LEFLARE"
replace county = "LEFLORE"	if county=="LEFLORES"
replace county = "LAWRENCE"	if county=="LOWRENCE"
replace county = "Monroe"	if county=="MOURAE"
replace county = "NOXUBEE"	if county=="NOXIOUS"
replace county = "PEARL RIVER"	if county=="PEAR RIVER"
replace county = "QUITMAN"	if county=="QUITMAN 11 SOUTH EAST LAMBERT"
replace county = "RANKIN"	if county=="RANKIN MISS."
replace county = "TALLAHATCHIE"	if county=="TALAHATCHIE"
replace county = "TATE"	if county=="TATE CO"
replace county = "WALTHALL"	if county=="WALTHALL TOWNSHIP 4"
replace county = "WILKINSON"	if county=="WILKINSON & AMITE"
replace county = "YAZOO"	if county=="YAZOO."
replace county = upper(county)
sort county
merge county using "/Users/nicolaslehmannziebarth/Dropbox/Depression Census/Datasets/Fishback Data/retail_sales_data_MS", uniqusing
drop _merge

save MS_data_all_years_retail, replace

capture log close
