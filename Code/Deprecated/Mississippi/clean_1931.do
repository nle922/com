*NLZ: Program to create and clean the 1931 MS data, 10/9/10
*Preliminaries
clear
capture log close
set more off
cd "/Users/nicolaslehmannziebarth/Dropbox/Depression Census/Datasets/Mississippi"
log using missippi_dataset_1931.txt, text replace
clear
set mem 200m

insheet using MS_1931.csv

replace state="Mississippi" if state=="Cleveland Miss" | state=="Mississippi." | state==""
drop if state~="Mississippi"

label define yesno 0 "No" 1 "Yes"

//replace branch = "0" if branch == "NO" | branch == "No" | branch == "Same"
//replace branch = "1" if branch == "Subsidiary" | branch == "YES" | branch == "Yes"
//destring branch, replace force
//label values branch yesno

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

rename natureofbusiness change_nature_bus
replace change_nature_bus = "1" if change_nature_bus == "Yes" | change_nature_bus == "Mfg." | change_nature_bus == "Mfg"
replace change_nature_bus = "0" if change_nature_bus == "No" | change_nature_bus == "None"
destring change_nature_bus, ignore(" ") replace force
label values change_nature_bus yesno
label var change_nature_bus "Changed nature of business?"

rename changedownership change_ownership
replace change_ownership = "1" if substr(change_ownership,1,4) == "Indi" | change_ownership == "V. Iuliano" | change_ownership == "YES" | change_ownership == "Yes"
replace change_ownership = "1" if change_ownership == "Yes from Sosso to Sosso Jr" | change_ownership == "Yes from U.S. Macaroni Co." | change_ownership == "Yes, from Figler Saltzman and Co."
replace change_ownership = "0" if change_ownership == "No" | change_ownership == "No Changes" | change_ownership == "no"
destring change_ownership, replace force
label values change_ownership yesno

replace isthisincorporated="1" if regexm(isthisincorporated,"Yes") | regexm(isthisincorporated,"Partnership") | regexm(isthisincorporated,"Incorporated") 
replace isthisincorporated="0" if regexm(isthisincorporated,"No")  
destring isthisincorporated, replace force
label values isthisincorporated yesno

replace subsidiaryofanother="1" if regexm(subsidiaryofanother,"Yes") 
replace subsidiaryofanother="0" if subsidiaryofanother~="1"
replace subsidiaryofanother="" if isthisincorporated==.

destring subsidiaryofanother, replace force
label values subsidiaryofanother yesno

replace began = "January 1, 1931" if began=="January, 1931"
replace began = "August 1, 1930" if began=="August, 1930"
replace end = "December 31, 1931" if began=="December, 1931"
replace end = "July 31, 1931" if began=="July, 1931"

replace numdaysplantinoperation = "100" if regexm(numdaysplantinoperation, "100 Day")
replace numdaysplantinoperation = "310" if regexm(numdaysplantinoperation, "310")
replace numdaysplantinoperation = "150" if regexm(numdaysplantinoperation, "150")
replace numdaysplantinoperation = "365" if regexm(numdaysplantinoperation, "365")
replace numdaysplantinoperation = "200" if regexm(numdaysplantinoperation, "200")
replace numdaysplantinoperation = "250" if regexm(numdaysplantinoperation, "250")
replace numdaysplantinoperation = "225" if regexm(numdaysplantinoperation, "225")
replace numdaysplantinoperation = "300" if regexm(numdaysplantinoperation, "300")
replace numdaysplantinoperation = "305" if regexm(numdaysplantinoperation, "305")
replace numdaysplantinoperation = "306" if regexm(numdaysplantinoperation, "306")
replace numdaysplantinoperation = "160" if regexm(numdaysplantinoperation, "160")
replace numdaysplantinoperation = "120" if regexm(numdaysplantinoperation, "120")
replace numdaysplantinoperation = "100" if regexm(numdaysplantinoperation, "100")
replace numdaysplantinoperation = "191" if regexm(numdaysplantinoperation, "191")
replace numdaysplantinoperation = "119" if regexm(numdaysplantinoperation, "119")
replace numdaysplantinoperation = "84" if regexm(numdaysplantinoperation, "84")
replace numdaysplantinoperation = "70" if regexm(numdaysplantinoperation, "70")
replace numdaysplantinoperation = "60" if regexm(numdaysplantinoperation, "60")
replace numdaysplantinoperation = "305" if regexm(numdaysplantinoperation, "Approx 10 Months")
replace numdaysplantinoperation = "182" if regexm(numdaysplantinoperation, "About 3.5")
replace numdaysplantinoperation = "184" if regexm(numdaysplantinoperation, "184")
replace numdaysplantinoperation = "140" if regexm(numdaysplantinoperation, "3350") | regexm(numdaysplantinoperation, "140")
replace numdaysplantinoperation = "312" if regexm(numdaysplantinoperation, "6 Days Week")
replace numdaysplantinoperation = "344" if regexm(numdaysplantinoperation, "Every Day But 21")
replace numdaysplantinoperation = "365" if regexm(numdaysplantinoperation, "Every Day in Year") | regexm(numdaysplantinoperation,"1 Year") | regexm(numdaysplantinoperation, "365 Days") | regexm(numdaysplantinoperation, "12 Months")
destring numdaysplantinoperation, force replace
replace numdaysplantinoperation = . if numdaysplantinoperation>365

replace hoursperweek = "40" if regexm(hoursperweek,"40 Hours")
replace hoursperweek = "40" if regexm(hoursperweek,"40 Hrs")
replace hoursperweek = "76" if regexm(hoursperweek,"76 when")
replace hoursperweek = "48" if regexm(hoursperweek,"48 Hrs")
replace hoursperweek = "40" if regexm(hoursperweek,"40 (Estimated)")
replace hoursperweek = "30" if regexm(hoursperweek,"30 Hours")
replace hoursperweek = "24" if regexm(hoursperweek,"24 Hours")
replace hoursperweek = "30" if regexm(hoursperweek,"30 Hrs")
replace hoursperweek = "60" if regexm(hoursperweek,"60 Hours")
replace hoursperweek = "58" if regexm(hoursperweek,"58 Hours")
replace hoursperweek = "60" if regexm(hoursperweek,"60 Hrs")
replace hoursperweek = "10" if regexm(hoursperweek,"10 Hrs")
replace hoursperweek = "35" if regexm(hoursperweek,"35 Per")
replace hoursperweek = "6.5" if regexm(hoursperweek,"5 to 8")
replace hoursperweek = "48" if regexm(hoursperweek,"48 Hours")
replace hoursperweek = "50" if regexm(hoursperweek,"50 Hours")
replace hoursperweek = "51" if regexm(hoursperweek,"51 hrs")
replace hoursperweek = "65" if regexm(hoursperweek,"65 Hours")
replace hoursperweek = "50" if regexm(hoursperweek,"50 Hrs")
replace hoursperweek = "70" if regexm(hoursperweek,"70 Hrs") | regexm(hoursperweek,"70 Including")
replace hoursperweek = "55" if regexm(hoursperweek,"55 Hours")
replace hoursperweek = "84" if regexm(hoursperweek,"84 Hours")
replace hoursperweek = "29" if regexm(hoursperweek,"29 Hours")
replace hoursperweek = "55" if regexm(hoursperweek,"55 Hrs")
replace hoursperweek = "44" if regexm(hoursperweek,"44 Hrs")
replace hoursperweek = "49" if regexm(hoursperweek,"49 Hours")
replace hoursperweek = "54" if regexm(hoursperweek,"54")
replace hoursperweek = "40" if regexm(hoursperweek,"8 Hrs. Per")
replace hoursperweek = "7" if regexm(hoursperweek,"7 Per")
replace hoursperweek = "20" if regexm(hoursperweek,"Part Time")
replace hoursperweek = "52" if regexm(hoursperweek,"48 to 56")
replace hoursperweek = "25" if regexm(hoursperweek,"15 to 35")
replace hoursperweek = "59.5" if regexm(hoursperweek,"56 to 63")
replace hoursperweek = "62.5" if regexm(hoursperweek,"60 to 65")
replace hoursperweek = "54" if regexm(hoursperweek,"48-60")

replace hoursperweek = "70" if regexm(hoursperweek,"10 Hrs a Day")
destring hoursperweek, force replace ignore(" Hours")

foreach i in "jan" "feb" "march" "april" "may" "june" "july" "august" "september" "october" "november" "december" "total"{
replace `i' = "0" if `i'=="None"
destring `i', replace force
rename `i' wage_earners_`i'
label var wage_earners_`i' "Number of wage earners"
}

replace awages="0" if awages=="None"
destring awages, replace force
rename awages total_wages
label var total_wages "Total Wage Bill"

replace bcostofmaterials="0" if bcostofmaterials=="None"
destring bcostofmaterials, replace force
rename bcostofmaterials cost_materials_1
label var cost_materials_1 "Cost Materials 1"

//need to check if these are correct names
replace v39 = "0" if v39=="None"
destring v39, replace force
rename v39 cost_materials_2
label var cost_materials_2 "Cost Materials 2"

replace v40 = "0" if v40=="None"
destring v40, replace force
rename v40 cost_materials_3
label var cost_materials_3 "Cost Materials 3"

replace v41 = "0" if v41=="None"
destring v41, replace force
rename v41 cost_materials_4
label var cost_materials_4 "Cost Materials 4"

replace ccostofcontractwork="0" if ccostofcontractwork=="None" | ccostofcontractwork=="0"
destring ccostofcontractwork, replace force
rename ccostofcontractwork cost_contract_work
label var cost_contract_work "Cost of contract work"

replace cost_materials_1 = 0 if cost_materials_1==.
replace cost_materials_2 = 0 if cost_materials_2==.
replace cost_materials_3 = 0 if cost_materials_3==.
replace cost_materials_4 = 0 if cost_materials_4==.

//replace cost_materials_1 = cost_materials_1 + cost_materials_2 + cost_materials_3 + cost_materials_4
rename cost_materials_1 total_cost_materials
label variable total_cost_materials "Total cost of materials"
replace total_cost = total_cost_materials + total_wages if industrialcode=="311"
rename industrialcode industrycode
rename v43 total_cost
label var total_cost "Total Cost (materials and labor)"

//still probably need to do some work on classifying output goods and input goods

destring quantity, replace force ignore("Mftcases")
rename quantity output_quantity_1
label var output_quantity_1 "Quantity of output 1"
rename unit output_unit_1
label var output_unit_1 "Unit of output 1"
rename value output_value_1
label var output_value_1 "Value of output 1"
rename specify output_specify_1
label var output_specify_1 "Type of output 1"

destring v48, replace force ignore("Mftcases")
rename v48 output_quantity_2
label var output_quantity_2 "Quantity of output 2"
rename v49 output_unit_2
label var output_unit_2 "Unit of output 2"
rename v50 output_value_2
label var output_value_2 "Value of output 2"
rename v51 output_specify_2
label var output_specify_2 "Type of output 2"

destring v52, replace force ignore("Mftcases")
rename v52 output_quantity_3
label var output_quantity_3 "Quantity of output 3"
rename v53 output_unit_3
label var output_unit_3 "Unit of output 3"
rename v54 output_value_3
label var output_value_3 "Value of output 3"
rename v55 output_specify_3
label var output_specify_3 "Type of output 3"

replace morethan3products="1" if morethan3products=="Yes"
replace morethan3products="0" if morethan3products=="No" | morethan3products==""
destring morethan3products, replace force
label values morethan3products yesno

rename totalvalue total_output_value
destring total_output_value, force replace

destring v58, replace force ignore("Mftcases ")
rename v58 input_quantity_1
label var input_quantity_1 "Quantity of input 1"
rename v59 input_unit_1
label var input_unit_1 "Unit of input 1"
destring v60, replace force ignore("Mftcases ")
rename v60 input_value_1
label var input_value_1 "Value of input 1"
rename v61 input_specify_1
label var input_specify_1 "Type of input 1"

destring v62, replace force ignore("Mftcaseslb ")
rename v62 input_quantity_2
label var input_quantity_2 "Quantity of input 2"
rename v63 input_unit_2
label var input_unit_2 "Unit of input 2"
destring v64, replace force ignore("Mftcaseslb ")
rename v64 input_value_2
label var input_value_2 "Value of input 2"
rename v65 input_specify_2
label var input_specify_2 "Type of input 2"

destring v66, replace force ignore("gsl ")
rename v66 input_quantity_3
label var input_quantity_3 "Quantity of input 3"
rename v67 input_unit_3
label var input_unit_3 "Unit of input 3"
rename v68 input_value_3
label var input_value_3 "Value of input 3"
rename v69 input_specify_3
label var input_specify_3 "Type of input 3"

replace v70 = "1" if v70=="Yes"
replace v70 = "0" if v70=="No" | v70==""
rename v70 morethan3inputs

drop v88-v129

//we're not really going to use these variables now so we won't do anymore cleaning of the types, etc.
//there is nothing going on in the capacity variables
replace horsedrawnnumber = "0" if horsedrawnnumber=="None"
replace horsedrawnnumber = ".75" if horsedrawnnumber=="3/4"
destring horsedrawnnumber, force replace
rename horsedrawnnumber delivery_horsedrawn_number
label var delivery_horsedrawn_number "Number of hourse drawn delivery vehicles"
rename capacity delivery_horsedrawn_capacity
label var delivery_horsedrawn_capacity "Capacity of hourse drawn delivery vehicles"

replace gasolinenumber = "0" if gasolinenumber=="None"
replace gasolinenumber = ".75" if gasolinenumber=="3/4"
destring gasolinenumber, force replace
rename gasolinenumber delivery_gasoline_number
rename v74 delivery_gasoline_capacity
label var delivery_gasoline_number "Number of gasoline delivery vehicles"
label var delivery_gasoline_capacity "Capacity of gasoline delivery vehicles"

//these variables look basically blank (?)
replace electricnumber = "0" if electricnumber=="None"
replace electricnumber = ".75" if electricnumber=="3/4"
destring electricnumber, force replace
rename electricnumber delivery_electric_number
rename v76 delivery_electric_capacity
label var delivery_electric_number "Number of electric delivery vehicles"
label var delivery_electric_capacity "Capacity of electric delivery vehicles"


rename machine1 machine_1
rename number machine_number_1
rename v79 machine_capacity_1
label var machine_1 "Type of machine 1"
label var machine_number_1 "Number of machine 1"
label var machine_capacity_1 "Capacity of machine 1"

rename machine2 machine_2
rename v81 machine_number_2
rename v82 machine_capacity_2
label var machine_2 "Type of machine 2"
label var machine_number_2 "Number of machine 2"
label var machine_capacity_2 "Capacity of machine 2"

rename machine3 machine_3
rename v84 machine_number_3
rename v85 machine_capacity_3
label var machine_3 "Type of machine 3"
label var machine_number_3 "Number of machine 3"
label var machine_capacity_3 "Capacity of machine 3"

replace morethanthreemachines = "1" if morethanthreemachines=="Yes"
destring morethanthreemachines, force replace
label values morethanthreemachines yesno
rename morethanthreemachines morethan3machines

label var began "Begin Date"
label var end "End Date"

replace output_unit_1 = "Barrels (200 lbs.)" if output_unit_1=="Barrels"
replace output_unit_2 = "Barrels (200 lbs.)" if output_unit_2=="Barrels"
replace output_unit_3 = "Barrels (200 lbs.)" if output_unit_3=="Barrels"
replace output_unit_1 = "Tons" if output_unit_1=="Tons  2,000 lbs."
replace output_unit_2 = "Tons" if output_unit_2=="Tons  2,000 lbs."
replace output_unit_3 = "Tons" if output_unit_3=="Tons  2,000 lbs."

replace output_unit_1 = "Tons" if output_unit_1=="Tons of 2,000 lbs."
replace output_unit_2 = "Tons" if output_unit_2=="Tons of 2,000 lbs."
replace output_unit_3 = "Tons" if output_unit_3=="Tons of 2,000 lbs."

replace output_unit_1 = "Tons" if output_unit_1=="tons"
replace output_unit_2 = "Tons" if output_unit_2=="tons"
replace output_unit_3 = "Tons" if output_unit_3=="tons"

replace output_unit_1 = "Gallons" if output_unit_1=="Gals."
replace output_unit_2 = "Gallons" if output_unit_2=="Gals."
replace output_unit_3 = "Gallons" if output_unit_3=="Gals."

replace input_unit_1 = "Tons" if input_unit_1=="Short Tons"
replace input_unit_2 = "Tons" if input_unit_2=="Short Tons"
replace input_unit_3 = "Tons" if input_unit_3=="Short Tons"

//still thinks something is screwy with lumber output data
//should i code all of the different products?
//probably a few more units to fix if really want to

sort nameofplant  county  citytownorvillage  postofficeaddress  streetandnumber
gen firmid_1931 = _n
sort firmid_1931
merge firmid_1931 using  "/Users/nicolaslehmannziebarth/Dropbox/Depression Census/Datasets/Mississippi/matching_1931.dta", uniqusing

//this should be more or less redundant
keep if _merge==3
drop _merge firmid_1931

gen censusyear=1931
rename cost_contract_work total_cost_contract_work
label variable total_cost_contract_work "Total cost of contract work"
label variable total_output_value "Total value of output"

drop machine_1-morethan3machines cost_materials_2 cost_materials_3 cost_materials_4 change_name change_location change_ownership change_nature_bus ifsogive imagenumber
tostring *, replace force

save MS_1931, replace

log close
