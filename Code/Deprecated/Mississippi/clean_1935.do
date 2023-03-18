*NLZ: Program to create and clean the 1935 MS data, 10/9/10*Preliminariesclearcapture log closeset more offcd "/Users/nicolaslehmannziebarth/Dropbox/Depression Census/Datasets/Mississippi"log using missippi_dataset_1935.txt, text replaceclearset mem 200minsheet using MS_1935.csvlabel define yesno 0 "No" 1 "Yes"replace isthisincorporated="1" if regexm(isthisincorporated,"Inc.") | regexm(isthisincorporated,"Yes") | regexm(isthisincorporated,"Partnership") | regexm(isthisincorporated,"Incorporated") | regexm(isthisincorporated,"Cor") replace isthisincorporated="0" if regexm(isthisincorporated,"No")  destring isthisincorporated, replace forcelabel values isthisincorporated yesnoreplace state = "Mississippi" if regexm(state,"Columbia")replace state = "Mississippi" if regexm(state,"")replace oneormoreother = "1" if regexm(oneormoreother,"Yes")replace oneormoreother = "1" if regexm(oneormoreother,"No")destring oneormoreother, replace forcelabel values oneormoreother yesnorename subsidiaryofanother subsidiaryreplace subsidiary="1" if regexm(subsidiary,"Yes") replace subsidiary="0" if subsidiary~="1"replace subsidiary="" if isthisincorporated==.destring subsidiary, replace forcelabel values subsidiary yesnorename changedlocation change_locationreplace change_location = "1" if change_location == "Yes" | change_location == "420 Broadway"replace change_location = "0" if change_location == "No" | change_location == "None"destring change_location, replace forcelabel values change_location yesnolabel var change_location "Changed location?"rename changedname change_namereplace change_name = "1" if change_name == "Yes" | change_name == "Chinese Noodle Mfg Company" | change_name == "Oakland Noodle Factory"replace change_name = "0" if change_name == "No" | change_name == "None"destring change_name, replace forcelabel values change_name yesnolabel var change_name "Changed name?"rename changedownership change_ownershipreplace change_ownership = "1" if substr(change_ownership,1,4) == "Indi" | change_ownership == "V. Iuliano" | change_ownership == "YES" | change_ownership == "Yes"replace change_ownership = "1" if change_ownership == "Yes from Sosso to Sosso Jr" | change_ownership == "Yes from U.S. Macaroni Co." | change_ownership == "Yes, from Figler Saltzman and Co."replace change_ownership = "0" if change_ownership == "No" | change_ownership == "No Changes" | change_ownership == "no"destring change_ownership, replace forcelabel values change_ownership yesnoreplace began = "August 1, 1935" if began =="August, 1935"replace began = "February 1, 1935" if began =="February, 1935"replace began = "January 1, 1935" if began =="January 1,"replace began = "July 1, 1934" if began =="July, 1934"replace began = "March 31, 1935" if began =="March 31,"replace end = "October 31, 1935" if end =="October 31,"replace end = "December 31, 1935" if end =="December 31,"replace end = "April 1, 1935" if end =="April 1,"replace end = "June 1, 1935" if end =="June, 1935"replace end = "December 31, 1935" if end =="December, 1935"replace end = "December 31, 1935" if end =="January, 1936"label variable began "Date began"label variable end "Date end"replace numdaysplantinoperation = "300" if regexm(numdaysplantinoperation , "10 Months")replace numdaysplantinoperation = "330" if regexm(numdaysplantinoperation , "11 Months")replace numdaysplantinoperation = "94" if regexm(numdaysplantinoperation , "94 Days")replace numdaysplantinoperation = "114" if regexm(numdaysplantinoperation , "114-18/24")replace numdaysplantinoperation = "233" if regexm(numdaysplantinoperation , "233-21/64")replace numdaysplantinoperation = "93" if regexm(numdaysplantinoperation , "93-2/3")replace numdaysplantinoperation = "120" if regexm(numdaysplantinoperation , "4 Mo")replace numdaysplantinoperation = "53" if regexm(numdaysplantinoperation , "53 (12 Hr. Days)")replace numdaysplantinoperation = "186" if regexm(numdaysplantinoperation , "60%-186 Days")replace numdaysplantinoperation = "100" if regexm(numdaysplantinoperation , "About 100")destring numdaysplantinoperation, replace force ignore("Days")replace hoursperweek = "5.5" if regexm(hoursperweek,"5 to 6")replace hoursperweek = "51" if regexm(hoursperweek,"48 to 54")replace hoursperweek = "22.5" if regexm(hoursperweek,"5 to 40")replace hoursperweek = "55" if regexm(hoursperweek,"50-60")replace hoursperweek = "58" if regexm(hoursperweek,"56-60")replace hoursperweek = "55" if regexm(hoursperweek,"50/60")replace hoursperweek = "48" if regexm(hoursperweek,"56 Summer, 40 Winter")destring hoursperweek, replace force ignore("Hrs.")rename v1 industrycoderename a proprietorslabel var proprietors "Total number of proprietors"rename b salaried_officerslabel var salaried_officers "Total number of salaried officers"rename v34 salaried_officers_salarylabel var salaried_officers_salary "Total pay for salaried officers"rename c supervisory_employeeslabel var supervisory_employees "Total number of supervisory employees"rename v35 supervisory_employees_salarylabel var supervisory_employees_salary "Total pay for supervisory employees"rename d technical_employeeslabel var technical_employees "Total number of technical employees"rename v36 technical_employees_salarylabel var technical_employees_salary "Total pay for technical employees"rename e clerical_employees_marchlabel var clerical_employees_march "Total number of clerical employees for March"rename v30 clerical_employees_junelabel var clerical_employees_june "Total number of clerical employees for June"rename v31 clerical_employees_septemberlabel var clerical_employees_september "Total number of clerical employees for September"rename v32 clerical_employees_decemberlabel var clerical_employees_december "Total number of clerical employees for December"rename v37 clerical_employees_salarylabel var clerical_employees_salary "Total pay for clerical employees"rename v38 total_salaried_employees_salarylabel var total_salaried_employees_salary "Total pay for salaried employees"rename total total_salaried_employeeslabel var total_salaried_employees "Total number of salaried employees"foreach i in "jan" "feb" "march" "april" "may" "june" "july" "august" "sept" "oct" "nov" "dec" "v51"{tostring `i', replacereplace `i' = "0" if `i'=="None"destring `i', replace forcerename `i' wage_earners_`i'label var wage_earners_`i' "Number of wage earners"}rename wage_earners_v51 wage_earners_totalrename totalamountpaidtowageearners total_wagesrename correspondingtotalofwagesin1934 total_wages_1934label variable total_wages "Total wages"label variable total_wages_1934 "Total wages 1934"rename costofmaterials cost_materials_supplieslabel var cost_materials "Total cost of materials and supplies"rename costoffuel cost_fuellabel var cost_fuel "Total cost of fuel"rename costofpurchasedelectricityenergy cost_purchased_electricitylabel var cost_purchased_electricity "Total cost of purchased electricity"//Need to check on this here. What's going on with these variables?//seem to be only germane for lumber firmsreplace cost_materials_supplies = v61 if cost_materials_supplies==""destring v55, replace forcerename v55 cost_materials_1label var cost_materials_1 "Cost of materials 1"destring v56, replace forcerename v56 cost_materials_2label var cost_materials_2 "Cost of materials 2"destring v57, replace forcerename v57 cost_materials_3label var cost_materials_3 "Cost of materials 3"rename v58 cost_materials_4label var cost_materials_4 "Cost of materials 4"//think this might need to be changed for timber industriesrename v61 cost_inputslabel var cost_inputs "Total cost of materials, fuel, and purchased electricity"destring quantity, replace force ignore(" M#")rename quantity output_quantity_1rename unit output_unit_1rename value output_value_1rename specify output_specify_1label var output_quantity_1 "Quantity of output 1"label var output_unit_1 "Unit of output 1"label var output_value_1 "Value of output 1"label var output_specify_1 "Type of output 1"destring v67, replace force ignore(" M#Cases")rename v67 output_quantity_2rename v69 output_unit_2rename v68 output_value_2rename v70 output_specify_2label var output_quantity_2 "Quantity of output 2"label var output_unit_2 "Unit of output 2"label var output_value_2 "Value of output 2"label var output_specify_2 "Type of output 2"destring v71, replace force ignore(" M#Caselbs")destring v72, replace force ignore(" M#Caselbs")rename v71 output_quantity_3rename v73 output_unit_3rename v72 output_value_3rename v74 output_specify_3label var output_quantity_3 "Quantity of output 3"label var output_unit_3 "Unit of output 3"label var output_value_3 "Value of output 3"label var output_specify_3 "Type of output 3"drop morethan3productsreplace morethan3 = "1" if morethan3=="Yes"replace morethan3 = "0" if morethan3==""destring morethan3, replace forcelabel values morethan3 yesnorename morethan3 morethan3productslabel var morethan3products "More than 3 products?"rename totalvalue total_output_valuerename correspondingtotalvalueofproduct total_output_value_1934rename steamenginenumber steamengine_numberrename steamenginehorsepower steamengine_horsepower rename steamturbinesnumber steamturbines_numberrename steamturbineshorsepower steamturbines_horsepowerrename diesselandsemidieselenginesnumbe diessel_numberrename diesselandsemidieselengineshorse diessel_horsepowerrename internalcombustionenginesnumber internalcombustion_number rename internalcombustionengineshorsepo internalcombustion_horsepower rename waterwheelsnumber waterwheels_number rename waterwheelshorsepower waterwheels_horsepower rename electricmotorsnumber motor_purchased_number rename electricmotorsdrivenbypurchasedc motor_purchased_horsepowerrename electricmotorsdrivenbycurrentgen motor_generated_number rename v91 motor_generated_horsepowerrename generatedinplant electricity_generated_plantrename purchased electricity_purchasedrename v96 input_quantity_1rename v97 input_value_1rename v98 input_unit_1rename v99 input_specify_1label var input_quantity_1 "Quantity of input 1"label var input_unit_1 "Unit of input 1"label var input_value_1 "Value of input 1"label var input_specify_1 "Type of input 1"rename v100 input_quantity_2rename v101 input_value_2rename v102 input_unit_2rename v103 input_specify_2label var input_quantity_2 "Quantity of input 2"label var input_unit_2 "Unit of input 2"label var input_value_2 "Value of input 2"label var input_specify_2 "Type of input 2"rename v104 input_quantity_3rename v105 input_value_3rename v106 input_unit_3rename v107 input_specify_3label var input_quantity_3 "Quantity of input 3"label var input_unit_3 "Unit of input 3"label var input_value_3 "Value of input 3"label var input_specify_3 "Type of input 3"destring input_value_*, force replacereplace input_value_1 = 0 if input_value_1 ==.replace input_value_2 = 0 if input_value_2 ==.replace input_value_3 = 0 if input_value_3 ==.replace totalamount = input_value_1 + input_value_2 + input_value_3 if totalamount==.rename totalamount cost_materialslabel var cost_materials "Cost of materials (not exactly the same as cost_materials_supplies)"rename v110 manhours_januaryrename v111 manhours_februaryrename mar manhours_marchrename apr manhours_aprilrename v114 manhours_mayrename v115 manhours_junerename v116 manhours_julyrename aug manhours_augustrename sep manhours_septemberrename v119 manhours_octoberrename v120 manhours_novemberrename v121 manhours_decemberforeach i in "january" "february" "march" "april" "may" "june" "july" "august" "september" "october" "november" "december" {label var manhours_`i' "Manhours in `i'"}rename horsedrawnnumber delivery_horsedrawn_numberrename capacity capacity_horsedrawn_numberrename gasolinenumber delivery_gasoline_numberrename v125 capacity_gasoline_numberrename electricnumber delivery_electric_numberrename v127 capacity_electric_numberdrop notes v139replace output_unit_1 = "6 and 7 oz." if output_unit_1 == "7 oz."replace output_unit_1 = "6 and 7 oz." if output_unit_1 == "6 oz."replace output_unit_2 = "6 and 7 oz." if output_unit_2 == "7 oz."replace output_unit_2 = "6 and 7 oz." if output_unit_2 == "6 oz."replace output_unit_3 = "6 and 7 oz." if output_unit_3 == "7 oz."replace output_unit_3 = "6 and 7 oz." if output_unit_3 == "6 oz."replace output_unit_1 = "8, 9, and 10 oz." if output_unit_1 == "8, 9, oz."replace output_unit_1 = "8, 9, and 10 oz." if output_unit_1 == "9 oz."replace output_unit_2 = "8, 9, and 10 oz." if output_unit_2 == "8, 9, oz."replace output_unit_2 = "8, 9, and 10 oz." if output_unit_2 == "9 oz."replace output_unit_3 = "8, 9, and 10 oz." if output_unit_3 == "8, 9, oz."replace output_unit_3 = "8, 9, and 10 oz." if output_unit_3 == "9 oz."replace output_unit_1 = "Dozens" if output_unit_1 == "Doz"replace output_unit_2 = "Dozens" if output_unit_2 == "Doz"replace output_unit_3 = "Dozens" if output_unit_3 == "Doz"replace output_unit_1 = "Barrels" if output_unit_1 == "Barrels(200 lbs)"replace output_unit_2 = "Barrels" if output_unit_2 == "Barrels(200 lbs)"replace output_unit_3 = "Barrels" if output_unit_3 == "Barrels(200 lbs)"replace output_unit_1 = "Tons" if output_unit_1 == "Tons 2000 Lbs."replace output_unit_2 = "Tons" if output_unit_2 == "Tons 2000 Lbs."replace output_unit_3 = "Tons" if output_unit_3 == "Tons 2000 Lbs."replace output_unit_1 = "Tons" if output_unit_1 == "Tons 2000 Lbr"replace output_unit_2 = "Tons" if output_unit_2 == "Tons 2000 Lbr"replace output_unit_3 = "Tons" if output_unit_3 == "Tons 2000 Lbr"replace output_unit_1 = "Tons" if output_unit_1 == "Tons of 2000 Lbs"replace output_unit_2 = "Tons" if output_unit_2 == "Tons of 2000 Lbs"replace output_unit_3 = "Tons" if output_unit_3 == "Tons of 2000 Lbs"replace output_unit_1 = "Tons" if output_unit_1 == "Tons of 2000 Lbs."replace output_unit_2 = "Tons" if output_unit_2 == "Tons of 2000 Lbs."replace output_unit_3 = "Tons" if output_unit_3 == "Tons of 2000 Lbs."replace output_unit_1 = "M Feet B.M." if output_unit_1 == "M Feet, B.M."replace output_unit_2 = "M Feet B.M." if output_unit_2 == "M Feet, B.M."replace output_unit_3 = "M Feet B.M." if output_unit_3 == "M Feet, B.M."replace output_unit_1 = "Pounds" if output_unit_1 == "Lbs"replace output_unit_2 = "Pounds" if output_unit_2 == "Lbs"replace output_unit_3 = "Pounds" if output_unit_3 == "Lbs"replace output_unit_1 = "Pounds" if output_unit_1 == "Lb."replace output_unit_2 = "Pounds" if output_unit_2 == "Lb."replace output_unit_3 = "Pounds" if output_unit_3 == "Lb."replace output_unit_1 = "Thousands" if output_unit_1 == "Thousand"replace output_unit_2 = "Thousands" if output_unit_2 == "Thousand"replace output_unit_3 = "Thousands" if output_unit_3 == "Thousand"replace output_specify_1 = "Can Ice (Raw Water)" if output_specify_1 == "Ice"replace output_specify_2 = "Can Ice (Raw Water)" if output_specify_2 == "Ice"replace output_specify_3 = "Can Ice (Raw Water)" if output_specify_3 == "Ice"replace output_specify_1 = "Can Ice (Raw Water)" if output_specify_1 == "Ice Making"replace output_specify_2 = "Can Ice (Raw Water)" if output_specify_2 == "Ice Making"replace output_specify_3 = "Can Ice (Raw Water)" if output_specify_3 == "Ice Making"replace output_specify_1 = "Can Ice (Raw Water)" if output_specify_1 == "Artificial Ice"replace output_specify_2 = "Can Ice (Raw Water)" if output_specify_2 == "Artificial Ice"replace output_specify_3 = "Can Ice (Raw Water)" if output_specify_3 == "Artificial Ice"replace output_specify_1 = "Receipts from Cold Storage" if output_specify_1 == "Receipt from Cold Storage"replace output_specify_2 = "Receipts from Cold Storage" if output_specify_2 == "Receipt from Cold Storage"replace output_specify_3 = "Receipts from Cold Storage" if output_specify_3 == "Receipt from Cold Storage"replace output_specify_1 = "Cottonseed Oil" if output_specify_1 == "Cotton Seed Oil"replace output_specify_2 = "Cottonseed Oil" if output_specify_2 == "Cotton Seed Oil"replace output_specify_3 = "Cottonseed Oil" if output_specify_3 == "Cotton Seed Oil"replace output_specify_1 = "Cottonseed Oil" if output_specify_1 == "Oil-Cottonseed"replace output_specify_2 = "Cottonseed Oil" if output_specify_2 == "Oil-Cottonseed"replace output_specify_3 = "Cottonseed Oil" if output_specify_3 == "Oil-Cottonseed"replace output_specify_1 = "Cottonseed Oil" if output_specify_1 == "Crude Oil"replace output_specify_2 = "Cottonseed Oil" if output_specify_2 == "Crude Oil"replace output_specify_3 = "Cottonseed Oil" if output_specify_3 == "Crude Oil"replace output_specify_1 = "Cottonseed Oil" if output_specify_1 == "C.S. Oil"replace output_specify_2 = "Cottonseed Oil" if output_specify_2 == "C.S. Oil"replace output_specify_3 = "Cottonseed Oil" if output_specify_3 == "C.S. Oil"replace output_specify_1 = "Cottonseed Oil" if output_specify_1 == "Oil"replace output_specify_2 = "Cottonseed Oil" if output_specify_2 == "Oil"replace output_specify_3 = "Cottonseed Oil" if output_specify_3 == "Oil"replace output_specify_1 = "Cottonseed Oil" if output_specify_1 == "Crude Cotton Seed Oil"replace output_specify_2 = "Cottonseed Oil" if output_specify_2 == "Crude Cotton Seed Oil"replace output_specify_3 = "Cottonseed Oil" if output_specify_3 == "Crude Cotton Seed Oil"replace output_specify_1 = "Cottonseed Oil" if output_specify_1 == "Crude Cottonseed Oil"replace output_specify_2 = "Cottonseed Oil" if output_specify_2 == "Crude Cottonseed Oil"replace output_specify_3 = "Cottonseed Oil" if output_specify_3 == "Crude Cottonseed Oil"replace output_specify_1 = "Cottonseed Oil" if output_specify_1 == "Crude C/S Oil"replace output_specify_2 = "Cottonseed Oil" if output_specify_2 == "Crude C/S Oil"replace output_specify_3 = "Cottonseed Oil" if output_specify_3 == "Crude C/S Oil"replace output_specify_1 = "Cottonseed Cake & Meal" if output_specify_1 == "Meal"replace output_specify_2 = "Cottonseed Cake & Meal" if output_specify_2 == "Meal"replace output_specify_3 = "Cottonseed Cake & Meal" if output_specify_3 == "Meal"replace output_specify_1 = "Cottonseed Cake & Meal" if output_specify_1 == "Meal & Cake"replace output_specify_2 = "Cottonseed Cake & Meal" if output_specify_2 == "Meal & Cake"replace output_specify_3 = "Cottonseed Cake & Meal" if output_specify_3 == "Meal & Cake"replace output_specify_1 = "Cottonseed Cake & Meal" if output_specify_1 == "Cake"replace output_specify_2 = "Cottonseed Cake & Meal" if output_specify_2 == "Cake"replace output_specify_3 = "Cottonseed Cake & Meal" if output_specify_3 == "Cake"replace output_specify_1 = "Cottonseed Cake & Meal" if output_specify_1 == "Cake and Meal"replace output_specify_2 = "Cottonseed Cake & Meal" if output_specify_2 == "Cake and Meal"replace output_specify_3 = "Cottonseed Cake & Meal" if output_specify_3 == "Cake and Meal"replace output_specify_1 = "Cottonseed Cake & Meal" if output_specify_1 == "Cotton Seed Cake and Meal"replace output_specify_2 = "Cottonseed Cake & Meal" if output_specify_2 == "Cotton Seed Cake and Meal"replace output_specify_3 = "Cottonseed Cake & Meal" if output_specify_3 == "Cotton Seed Cake and Meal"replace output_specify_1 = "Cottonseed Cake & Meal" if output_specify_1 == "Meal-Cotton Seed"replace output_specify_2 = "Cottonseed Cake & Meal" if output_specify_2 == "Meal-Cotton Seed"replace output_specify_3 = "Cottonseed Cake & Meal" if output_specify_3 == "Meal-Cotton Seed"replace output_specify_1 = "Cottonseed Cake & Meal" if output_specify_1 == "Cottonseed Meal"replace output_specify_2 = "Cottonseed Cake & Meal" if output_specify_2 == "Cottonseed Meal"replace output_specify_3 = "Cottonseed Cake & Meal" if output_specify_3 == "Cottonseed Meal"foreach i in "Cotton Seed Meal" "C.S. Meal" "Cotton Seed Meal & Cake" "C/S Cake & Meal" "Cottonseed Cake- Meal" {replace output_specify_1 = "Cottonseed Cake & Meal" if output_specify_1 == "`i'"replace output_specify_2 = "Cottonseed Cake & Meal" if output_specify_2 == "`i'"replace output_specify_3 = "Cottonseed Cake & Meal" if output_specify_3 == "`i'"}foreach i in "Sacked Hulls" "Losee Hulls" "Loose Hulls"{replace output_specify_1 = "Hulls" if output_specify_1 == "`i'"replace output_specify_2 = "Hulls" if output_specify_2 == "`i'"replace output_specify_3 = "Hulls" if output_specify_3 == "`i'"}foreach i in "Cottonseed Linters" "Lint" "Lint Sales"{replace output_specify_1 = "Linters" if output_specify_1 == "`i'"replace output_specify_2 = "Linters" if output_specify_2 == "`i'"replace output_specify_3 = "Linters" if output_specify_3 == "`i'"}sort nameofplant citytownorvillage county, stablegen firmid_1935 = _nsort firmid_1935merge firmid_1935 using matching_1935.dta, uniqusing//should be redundant drop if _merge==2drop _merge firmid_1935rename salaried_officers officersrename salaried_officers_salary salaries_officersrename wage_earners_sept wage_earners_septemberrename wage_earners_oct wage_earners_octoberrename wage_earners_nov wage_earners_novemberrename wage_earners_dec wage_earners_decemberrename cost_materials_supplies total_cost_materialsrename costofcontractwork cost_contract_workrename electricity_generated_plant electricity_generatedrename cost cost_electricitydrop cost_materials_1-cost_materials_4 v95 machine1-v136gen total_cost = total_cost_materials+total_wageslabel var total_cost "Total cost (materials+wages)"gen censusyear=1935tostring *, replace force//should be able to clean up industry 114 as well//still probably some more cleaning necessary to make good names consistent across yearssave MS_1935, replacelog close