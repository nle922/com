//Cleaning script for BR "B" spreadsheet: 803_1929. Generated by write_renamingFiles_B.py and ind_cols_B.txt, which has NLZ's renaming of BR variables.
//Note that variable `home_dir' is set outside the script and setup to be run from build_BR_legacy.do.
//If you want to run this file directly, change data_dir and globals $rootDir_sheetsLegacy, $dir_cleaning .
//Globals referenced: $rootDir_sheets, $rootDir_dataBR
local data_dir = "$rootDir_sheets/1929/803"
import excel "`data_dir'/080329B0.xls", allstring sheet("080329B0") clear

drop in 1
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"
replace obs_id = obs_id + "B"

capture drop A //Column name in spreadsheet: start
capture rename B record
capture drop if record==""
//don't need these because will merge on record with A sheet
capture drop C //plntname
capture drop D //ownrname
capture drop E //state
capture drop F //county
capture rename G tothp
capture drop H 

//rename engine and turbine variables
capture rename I hp001n
capture rename J hp001h
capture rename K hp002n
capture rename L hp002h
capture rename M hp003n
capture rename N hp003h
capture rename O hp004n
capture rename P hp004h
capture rename Q totalnm
capture rename R totalhp
capture drop S //Column name in spreadsheet: checkn
capture drop T //Column name in spreadsheet: diffn
capture drop U //Column name in spreadsheet: checkh
capture drop V //Column name in spreadsheet: diffh
capture rename W abovestndb
capture rename X stndbyhp
capture rename Y he001n
capture rename Z he001h
capture rename AA he002n
capture rename AB he002h
capture rename AC he003n
capture rename AD he003h
capture rename AE stndbygen
capture rename AF stndbykw

//rename fuel variables
capture rename AG ff001q
capture rename AH ff001v
capture rename AI ff002q
capture rename AJ ff002v
capture rename AK ff003q
capture rename AL ff003v
capture rename AM ff004q
capture rename AN ff004v
capture rename AO ff005q
capture rename AP ff005v
capture rename AQ ff006q
capture rename AR ff006v
capture rename AS ff007q
capture rename AT ff007v
capture drop AU 
capture rename AV ff000c
capture drop AW //Column name in spreadsheet: diff
capture rename AX fe001k
capture rename AY fe002k
capture rename AZ fe002c

//rename input variables
capture rename BA j_q_crude
capture rename BB j_v_crude_conscost
capture rename BC j_v_crude_onhand
capture rename BD j_v_crude_afloat
capture rename BE j_q_reclmd
capture rename BF j_v_reclmd_conscost
capture rename BG j_v_reclmd_onhand
capture rename BH j_v_reclmd_afloat
capture rename BI j_q_carbon_black
capture rename BJ j_v_carbon_black
capture rename BK j_q_zinc_oxide
capture rename BL j_v_zinc_oxide
capture rename BM j_q_sulphur
capture rename BN j_v_sulphur
capture rename BO j_q_tire_fabri
capture rename BP j_v_tire_fabri
capture rename BQ j_q_hose_and_b
capture rename BR j_v_hose_and_b
capture rename BS j_s_otr_ctn_fa
capture rename BT j_q_otr_ctn_fa
capture rename BU j_v_otr_ctn_fa
capture rename BV j_s_otr_fab
capture rename BW j_q_otr_fab
capture rename BX j_v_otr_fab
capture drop BY //Column name in spreadsheet: check
capture rename BZ cost_materials
capture drop CA //Column name in spreadsheet: diff1

//rename distribution variables
capture rename CB k001
capture rename CC k002
capture rename CD k003
capture rename CE k004
capture rename CF k005
capture rename CG k006
capture rename CH k007
capture rename CK k008

//drop a number of useless variables
capture drop CI //Column name in spreadsheet: check1
capture drop CJ //Column name in spreadsheet: diff2
capture drop CL 
capture drop CM 
capture drop CN //Column name in spreadsheet: remark01
capture drop CO //Column name in spreadsheet: remark02
capture drop CP //Column name in spreadsheet: remark03
capture drop CQ //Column name in spreadsheet: remark04
capture drop CR //Column name in spreadsheet: remark05
capture drop CS //Column name in spreadsheet: remark06
capture drop CT //Column name in spreadsheet: remark07
capture drop CU //Column name in spreadsheet: remark08
capture drop CV //Column name in spreadsheet: remark09
capture drop CW //Column name in spreadsheet: remark10
capture drop CX //Column name in spreadsheet: remark11
capture drop CY //Column name in spreadsheet: remark12
capture drop CZ //Column name in spreadsheet: remark13
capture drop DA //Column name in spreadsheet: remark14
capture drop DB //Column name in spreadsheet: remark15
capture drop DC //Column name in spreadsheet: remark16
capture drop DD //Column name in spreadsheet: cc01info
capture drop DE //Column name in spreadsheet: cc01
capture drop DF //Column name in spreadsheet: cc02info
capture drop DG //Column name in spreadsheet: cc02
capture drop DH //Column name in spreadsheet: cc03info
capture drop DI //Column name in spreadsheet: cc03
capture drop DJ //Column name in spreadsheet: cc04info
capture drop DK //Column name in spreadsheet: cc04
capture drop DL //Column name in spreadsheet: cc05info
capture drop DM //Column name in spreadsheet: cc05
capture drop DN //Column name in spreadsheet: cc06info
capture drop DO //Column name in spreadsheet: cc06
capture drop DP //Column name in spreadsheet: cc07info
capture drop DQ //Column name in spreadsheet: cc07
capture drop DR //Column name in spreadsheet: cc08info
capture drop DS //Column name in spreadsheet: cc08
capture drop DT //Column name in spreadsheet: cc09info
capture drop DU //Column name in spreadsheet: cc09
capture drop DV //Column name in spreadsheet: cc10info
capture drop DW //Column name in spreadsheet: cc10
capture drop DX //Column name in spreadsheet: cc11info'

save "$rootDir_dataBR/1929/803/803_1929_clean_B", replace
