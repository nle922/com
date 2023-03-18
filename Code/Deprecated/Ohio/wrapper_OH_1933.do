//wrapper code for Ohio industries 

clear
capture log close
set more off
cd "C:\Users\Nicolas\Dropbox\Depression Census\Datasets\Ohio"
log using OH_dataset_1933.txt, text replace
set mem 200m

do "./Do Files/clean_OH_1933_1307"
do "./Do Files/clean_OH_1933_1309"
do "./Do Files/clean_OH_1933_1318"
do "./Do Files/clean_OH_1933_1319"

append using "./Stata Data/OH_1933_1307"
append using "./Stata Data/OH_1933_1309" 
append using "./Stata Data/OH_1933_1318"  

drop hours_per_wage_earner-generalschedule

//will leave this as all strings for now. 
save "./Stata Data/OH_1933", replace
log close