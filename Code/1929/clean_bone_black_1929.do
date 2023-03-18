*NLZ: Program to create and clean the 1929 bone black data 
*Globals referenced: $rootDir_sheets, $rootDir_dataLegacy

*Preliminaries
capture log close
set more off

import excel "$rootDir_sheets/1929/606/1929_bone_black_form.xls", sheet("Sheet1") cellrange(A4:CO69) firstrow allstring clear

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

rename NameofOwner a002
rename IfSoGive as005
rename Usedorpurchased f00up

//rename cost of inputs variables
capture rename  Costofallmaterials f001
capture rename Costoffuel f002
capture rename Costofpurchasedcurrent f003

//rename utilization variables
capture rename Numdaysplantinoperation d001
capture rename Hoursperday d002
capture rename Hoursperweek d003
capture rename Numberofshiftsperday d004
capture rename Normalnumberofhoursperweek d005
capture rename Doesthisnumberofhoursrefer d006

//rename identifying information variables
rename Changedlocation change_location
rename Changedname change_name
rename Changedownership change_ownership
rename IsthisIncorporated isthisincorporated
rename Isthisanewplantwhichstarte newplant
rename Branchofsubidiary branchofsubsidiary
rename branchofsubsidiary subsidiaryofanother

//rename employment variables
rename Male e001m
rename Female e001f
rename AA e002m
rename AB e002f 
rename AC e003m
rename AD e003f
rename aSalariestoprincipalofficie salaries_officers
rename bSalariestomanagers salaries_managers
rename cPaidtowageearners total_wages
rename Toal total_wages_salaries

//rename monthly employment variables
foreach i in "Jan" "Feb" "March" "April" "May" "June" "July" "August" "September" "October" "November" "December" "Total"{
	tostring `i', replace force
	rename `i' wage_earners_`i'
}

//rename output variables
rename TotalValue f009
rename Quantity bone_black_quantity
rename Value bone_black_value
rename BC carbon_black_quantity
rename BD carbon_black_value
rename BE lampblack_quantity
rename BF lampblack_value
rename BG other_specify
rename BH other_quantity
rename BI other_value 
rename Totalvalueofproductsmanufact total_output_value

//rename fuel variables
capture rename BW ff001q
capture rename Cost ff001v
capture rename BY ff002q
capture rename BZ ff002v
capture rename CA ff003q
capture rename CB ff003v
capture rename CC ff004q
capture rename CD ff004v
capture rename CE ff005q
capture rename CF ff005v
capture rename CG ff006q
capture rename CH ff006v
capture rename CI ff007q
capture rename CJ ff007v



//drop some homeless variables     
capture drop IfSog
capture drop Specify

rename Electricmotorsnumber he001n
rename Electricmotorsdrivenbypurcha he001h
rename Electricmotorsdrivenbycurren he002n
rename BV he002h  
capture rename Totalcost f000c

rename Kilowatthours fe001k
rename CM fe002k
rename CN fe002c


capture drop year
gen year = 1929
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all for consistency in appending later
tostring *, replace force

save "$rootDir_dataLegacy/1929/bone_black_1929_clean", replace
