//Cleaning script for BR "B" spreadsheet: 1608_1935. Generated by write_renamingFiles_B.py and ind_cols_B.txt, which has NLZ's renaming of BR variables.
//Note that variable `home_dir' is set outside the script and setup to be run from build_BR_legacy.do.
//If you want to run this file directly, change data_dir and globals referenced
//Globals referenced: rootDir_sheets, rootDir_dataB

local data_dir = "$rootDir_sheets/1935/1608"
import excel "`data_dir'/160835B0.xls", allstring sheet("160835B0") clear

drop in 1 //this row is variable names
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

capture drop A //Column name in spreadsheet: start
capture rename  B record
capture drop if record==""
capture drop C //Column name in spreadsheet: id
capture drop D //Column name in spreadsheet: plntname
capture drop E //Column name in spreadsheet: ownrname
capture drop F //Column name in spreadsheet: tothp

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

capture drop  AF //Column name in spreadsheet:total
capture drop AG //Column name in spreadsheet: check
capture drop AH //Column name in spreadsheet: diff
capture drop  AI //Column name in spreadsheet:se1
capture drop  AJ //Column name in spreadsheet:se2
capture drop  AK //Column name in spreadsheet:se3
capture drop  AL //Column name in spreadsheet:sf1
capture drop  AM //Column name in spreadsheet:sf2

capture rename  AN he001n //Column name in spreadsheet:motors_dri
capture rename  AO he001h //Column name in spreadsheet:f12
capture rename  AP he002n //Column name in spreadsheet:motors_dri
capture rename  AQ he002h //Column name in spreadsheet:f14

capture drop  AR //Column name in spreadsheet:coal

save "$rootDir_dataBR/1935/1608/1608_1935_clean_B", replace
