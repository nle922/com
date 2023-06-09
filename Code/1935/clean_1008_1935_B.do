//Cleaning script for BR "B" spreadsheet: 1008_1935. Generated by write_renamingFiles_B.py and ind_cols_B.txt, which has NLZ's renaming of BR variables.
//Note that variable `home_dir' is set outside the script and setup to be run from build_BR_legacy.do.
//If you want to run this file directly, change data_dir and globals referenced
//Globals referenced: rootDir_sheets, rootDir_dataBR

local data_dir = "$rootDir_sheets/1935/1008"
import excel "`data_dir'/100835B0.xls", allstring sheet("100835B0") clear

drop in 1 //this row is variable names
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

capture drop A //Column name in spreadsheet: start
capture rename B record
capture drop if record==""
capture drop C //Column name in spreadsheet: plntname
capture drop D //Column name in spreadsheet: ownrname
capture drop E //Column name in spreadsheet: state
capture drop F //Column name in spreadsheet: county


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

capture drop AF //Column name in spreadsheet:b_standby_
capture drop AG //Column name in spreadsheet:kw5
capture drop AH //Column name in spreadsheet:horse10

rename AI he001n //Column name in spreadsheet: a_driven_b
rename AJ he001h //Column name in spreadsheet:horse11
rename AK he002n //Column name in spreadsheet:b_driven_b
rename AL he002h //Column name in spreadsheet:horse12

//rename fuel variables
capture rename AM ff001q
capture rename AN ff001v
capture rename AO ff002q
capture rename AP ff002v
capture rename AQ ff003q
capture rename AR ff003v
capture rename AS ff004q
capture rename AT ff004v
capture rename AU ff005q
capture rename AV ff005v
capture rename AW ff006q
capture rename AX ff006v
capture rename AY ff007q
capture rename AZ ff007v
capture rename AY total_fuel_cost
capture drop AZ //Column name in spreadsheet: chk
capture drop BA //Column name in spreadsheet: diff
capture drop BB //Column name in spreadsheet:electric_e
capture drop BC //Column name in spreadsheet:electric_e
capture drop BD //Column name in spreadsheet:electric_e
capture drop BE //Column name in spreadsheet:cost6
capture drop BF //Column name in spreadsheet:fueleleccs

//rename input variables
capture rename BG j_v_silica_sand
capture rename BH j_v_soda_ash
capture rename BI j_v_salt_cake
capture rename BJ j_v_lime
capture rename BK j_v_limestone
capture rename BL j_v_grinding_stone
capture drop BM //Column name in spreadsheet:fnlbgndt
capture drop BN //Column name in spreadsheet:fnlenddt
capture drop BO //Column name in spreadsheet: ca01info
capture drop BP //Column name in spreadsheet: ca01
capture drop BQ //Column name in spreadsheet: ca02info
capture drop BR //Column name in spreadsheet: ca02
capture drop BS //Column name in spreadsheet: ca03info
capture drop BT //Column name in spreadsheet: ca03
capture drop BU //Column name in spreadsheet: ca04info
capture drop BV //Column name in spreadsheet: ca04
capture drop BW //Column name in spreadsheet: ca05info
capture drop BX //Column name in spreadsheet: ca05
capture drop BY //Column name in spreadsheet: ca06info
capture drop BZ //Column name in spreadsheet: ca06
capture drop CA //Column name in spreadsheet: ca07info
capture drop CB //Column name in spreadsheet: ca07
capture drop CC //Column name in spreadsheet: ca08info
capture drop CD //Column name in spreadsheet: ca08
capture drop CE //Column name in spreadsheet: ca09info
capture drop CF //Column name in spreadsheet: ca09
capture drop CG //Column name in spreadsheet: ca10info
capture drop CH //Column name in spreadsheet: ca10
capture drop CI //Column name in spreadsheet: ca11info
capture drop CJ //Column name in spreadsheet: ca11
capture drop CK //Column name in spreadsheet: ca12info
capture drop CL //Column name in spreadsheet: ca12
capture drop CM //Column name in spreadsheet: ca13info
capture drop CN //Column name in spreadsheet: ca13
capture drop CO //Column name in spreadsheet: ca14info
capture drop CP //Column name in spreadsheet: ca14
capture drop CQ //Column name in spreadsheet: ca15info
capture drop CR //Column name in spreadsheet: ca15
capture drop CS //Column name in spreadsheet: ca16info
capture drop CT //Column name in spreadsheet: ca16
capture drop CU //Column name in spreadsheet: ca17info
capture drop CV //Column name in spreadsheet: ca17
capture drop CW //Column name in spreadsheet: ca18info
capture drop CX //Column name in spreadsheet: ca18
capture drop CY //Column name in spreadsheet: ca19info
capture drop CZ //Column name in spreadsheet: ca19
capture drop DA //Column name in spreadsheet: ca20info
capture drop DB //Column name in spreadsheet: ca20
capture drop DC //Column name in spreadsheet: ca21info
capture drop DD //Column name in spreadsheet: ca21
capture drop DE //Column name in spreadsheet: ca22info
capture drop DF //Column name in spreadsheet: ca22
capture drop DG //Column name in spreadsheet: ca23info
capture drop DH //Column name in spreadsheet: ca23
capture drop DI //Column name in spreadsheet: ca24info
capture drop DJ //Column name in spreadsheet: ca24
capture drop DK //Column name in spreadsheet: ca25info
capture drop DL //Column name in spreadsheet: ca25

save "$rootDir_dataBR/1935/1008/1008_1935_clean_B", replace
