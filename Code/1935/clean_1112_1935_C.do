//Cleaning script for BR "B" spreadsheet: 1112_1935. Generated by write_renamingFiles_B.py and ind_cols_B.txt, which has NLZ's renaming of BR variables.
//Note that variable `home_dir' is set outside the script and setup to be run from build_BR_legacy.do.
//no example images for this industry and year so not cleaned up
//Globals referenced: rootDir_sheets, rootDir_dataBR

local data_dir = "$rootDir_sheets/1935/1112"
import excel "`data_dir'/111235C0.xls", allstring sheet("111235C0") clear

drop in 1 //this row is variable names
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"
replace obs_id = obs_id + "C"

capture drop A //Column name in spreadsheet: *start
capture rename B record
capture drop if record==""
capture drop C //Column name in spreadsheet: a_plntname
capture drop D //Column name in spreadsheet: b_ownrname
capture drop E //Column name in spreadsheet: state
capture drop F //Column name in spreadsheet: county
//this is a guess from the early forms for 1929, 1931, 1933

//rename output variables
capture rename G hp001gn
capture rename H hp001gh
capture rename I hp001gk
capture rename J hp001on
capture rename K hp001oh

capture rename L hp002gn
capture rename M hp002gh
capture rename N hp002gk
capture rename O hp002on
capture rename P hp002oh

capture rename Q hp005gn
capture rename R hp005gh
capture rename S hp005gk
capture rename T hp005on
capture rename U hp005oh

capture rename V hp006gn
capture rename W hp006gh
capture rename X hp006gk
capture rename Y hp006on
capture rename Z hp006oh

capture rename AA hp004gn
capture rename AB hp004gh
capture rename AC hp004gk
capture rename AD hp004on
capture rename AE hp004oh

rename AL he001n
rename AM he001h
rename AN he002n
rename AO he002h

replace record = upper(record)

save "$rootDir_dataBR/1935/1112/1112_1935_clean_C", replace
