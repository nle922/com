//Cleaning script for BR "B" spreadsheet: 705_1935. Generated by write_renamingFiles_B.py and ind_cols_B.txt, which has NLZ's renaming of BR variables.
//Note that variable `home_dir' is set outside the script and setup to be run from build_BR_legacy.do.
//If you want to run this file directly, change data_dir and globals referenced
//Globals referenced: rootDir_sheets, rootDir_dataBR

local data_dir = "$rootDir_sheets/1935/705"
import excel "`data_dir'/070535B0.xls", allstring sheet("070535B0") clear

drop in 1 //this row has variable names
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"
replace obs_id = obs_id+"B"

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

drop AF  //standby standby_
drop AG  //Column name in spreadsheet:kw5
drop AH  //Column name in spreadsheet:horse10

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
capture drop BA //Column name in spreadsheet: chk
capture rename BB total_fuel_cost
capture drop BC //Column name in spreadsheet: electric_e
capture drop BD //Column name in spreadsheet: electric_e
capture drop BE //Column name in spreadsheet: electric_e
capture drop BF //Column name in spreadsheet: chkcost8

//rename input variables
//i'm not sure about these
capture rename BG j_q_crude_petr
capture rename BH j_q_partly_ref
capture rename BI j_q_natural_gas
capture rename BJ j_v_natural_gas
capture rename BK j_v_soda_ash
capture rename BL j_q_caustic_soda
capture rename BM j_v_caustic_soda
capture rename BN j_q_purchased_sulphuric_acid
capture rename BO j_v_made_sulphuric_acid
capture drop BP //Column name in spreadsheet: )_........
capture rename BQ j_q_reclaimed_sulphuric_acid
capture drop BR //Column name in spreadsheet: )_........
capture rename BS j_v_reclaimed_sulphuric_acid
capture drop BT //Column name in spreadsheet: )_........
capture drop BU //Column name in spreadsheet: **_fnlbgnd
capture drop BV //Column name in spreadsheet: fnlenddt
capture drop BW //Column name in spreadsheet: remark01
capture drop BX //Column name in spreadsheet: remark02
capture drop BY //Column name in spreadsheet: remark03
capture drop BZ //Column name in spreadsheet: remark04
capture drop CA //Column name in spreadsheet: remark05
capture drop CB //Column name in spreadsheet: remark06
capture drop CC //Column name in spreadsheet: remark07
capture drop CD //Column name in spreadsheet: remark08
capture drop CE //Column name in spreadsheet: remark09
capture drop CF //Column name in spreadsheet: remark10
capture drop CG //Column name in spreadsheet: remark11
capture drop CH //Column name in spreadsheet: remark12
capture drop CI //Column name in spreadsheet: remark13
capture drop CJ //Column name in spreadsheet: remark14
capture drop CK //Column name in spreadsheet: remark15
capture drop CL //Column name in spreadsheet: remark16
capture drop CM //Column name in spreadsheet: remark17
capture drop CN //Column name in spreadsheet: remark18
capture drop CO //Column name in spreadsheet: ca01info
capture drop CP //Column name in spreadsheet: ca01
capture drop CQ //Column name in spreadsheet: ca02info
capture drop CR //Column name in spreadsheet: ca02
capture drop CS //Column name in spreadsheet: ca03info
capture drop CT //Column name in spreadsheet: ca03
capture drop CU //Column name in spreadsheet: ca04info
capture drop CV //Column name in spreadsheet: ca04
capture drop CW //Column name in spreadsheet: ca05info
capture drop CX //Column name in spreadsheet: ca05
capture drop CY //Column name in spreadsheet: ca06info
capture drop CZ //Column name in spreadsheet: ca06
capture drop DA //Column name in spreadsheet: ca07info
capture drop DB //Column name in spreadsheet: ca07
capture drop DC //Column name in spreadsheet: ca08info
capture drop DD //Column name in spreadsheet: ca08
capture drop DE //Column name in spreadsheet: ca09info
capture drop DF //Column name in spreadsheet: ca09
capture drop DG //Column name in spreadsheet: ca10info
capture drop DH //Column name in spreadsheet: ca10
capture drop DI //Column name in spreadsheet: ca11info
capture drop DJ //Column name in spreadsheet: ca11
capture drop DK //Column name in spreadsheet: ca12info
capture drop DL //Column name in spreadsheet: ca12
capture drop DM //Column name in spreadsheet: ca13info
capture drop DN //Column name in spreadsheet: ca13
capture drop DO //Column name in spreadsheet: ca14info
capture drop DP //Column name in spreadsheet: ca14
capture drop DQ //Column name in spreadsheet: ca15info
capture drop DR //Column name in spreadsheet: ca15
capture drop DS //Column name in spreadsheet: ca16info
capture drop DT //Column name in spreadsheet: ca16
capture drop DU //Column name in spreadsheet: ca17info
capture drop DV //Column name in spreadsheet: ca17
capture drop DW //Column name in spreadsheet: ca18info
capture drop DX //Column name in spreadsheet: ca18'

save "$rootDir_dataBR/1935/705/705_1935_clean_B", replace
