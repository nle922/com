*NLZ: Program to create and clean the 1929 macaroni
*Globals referenced: $rootDir_sheets, $rootDir_dataLegacy, $rootDir_code

*Preliminaries
capture log close
set more off

*Inputing and combining data
import delimited using "$rootDir_sheets/1929/121/1929_clean.csv", clear stringcols(_all) case(lower) delimiter(",")

missings dropvars, force

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename cost of inputs variables
capture rename costofallmaterials f001
capture rename costoffuel f002
capture rename costofpurchasedcurrent f003
capture rename totalvalue f009

//rename utilization variables
capture rename numdaysplantinoperation d001
capture rename hoursperday d002
capture rename hoursperweek d003
capture rename numberofshiftsperday d004
capture rename normalnumberofhoursperweekforthe d005
capture rename doesthisnumberofhoursreferto d006

//rename employmet variables
capture rename male e001m
capture rename female e001f
capture rename v28 e002m
capture rename v29 e002f
capture rename v30 e003m
capture rename v31 e003f
capture rename v48 e009s

capture rename totalvalue total_cost

//rename output variables
capture rename totalvalueofproductsmanufactured g00Mv
capture rename quantity gp_q_macaroni
capture rename value gp_v_macaroni 

local products "egg_noodles plain_noodles raviola"
local counter = 56
foreach product in `products'{
	capture rename v`counter' gp_q_`product'
	local counter = `counter'+1
	capture rename v`counter' gp_v_`product'
	local counter = `counter'+1
}
capture rename v62 gp_v_other1
capture rename v63 gp_s_other1
capture rename value1 gp_v_other2
capture rename specify1 gp_s_other2
capture rename v66 total_output_value

local counter=82
local inputs "flour flour_durem eggs"
foreach input in `inputs'{
	capture rename v`counter' j_v_`input'
	local counter = `counter'+1
	capture rename v`counter' j_q_`input'
	local counter = `counter'+1
}

//rename distribution variables
capture rename a k001
capture rename b k002
capture rename c k003
capture rename d k004
capture rename e k005
capture rename f k006
capture rename g k007
capture rename h k008

//reanem monthly employment variables
capture rename jan   ewemt01
capture rename feb   ewemt02
capture rename march  ewemt03
capture rename april  ewemt04
capture rename may  ewemt05
capture rename june  ewemt06
capture rename july  ewemt07
capture rename august  ewemt08
capture rename november ewemt11
capture rename october ewemt10
capture rename december ewemt12
capture rename september ewemt09
drop notes minesschedule

rename electricmotorsnumber he001n
rename electricmotorsdrivenbypurchasedc he001h
rename electricmotorsdrivenbycurrentgen he002n
rename v79 he002h


  

//fix a few typos in estabdIDs
do "$rootDir_code/1929/fix_estabids_macaroni_1929"

capture drop year
gen year = 1929
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistency
tostring *, replace force

save "$rootDir_dataLegacy/1929/macaroni_1929_clean", replace
