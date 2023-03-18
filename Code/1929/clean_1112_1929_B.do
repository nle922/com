//Cleaning script for BR "B" spreadsheet: 1112_1929. Generated by write_renamingFiles_B.py and ind_cols_B.txt, which has NLZ's renaming of BR variables.
//Note that variable `home_dir' is set outside the script and setup to be run from build_BR_legacy.do.
//If you want to run this file directly, change data_dir and globals referenced.
//Globals referenced: $rootDir_sheets, $rootDir_dataBR

local data_dir = "$rootDir_sheets/1929/1112"
import excel "`data_dir'/111229B0.xls", allstring sheet("111229B0") clear

drop in 1 //this row has variable names

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"
replace obs_id = obs_id + "B"

capture drop A //Column name in spreadsheet: *start
capture rename B record
drop if record==""
capture drop C //Column name in spreadsheet: exclude
capture drop D //Column name in spreadsheet: bfid
capture drop E //Column name in spreadsheet: why
capture rename F plntname
capture rename G ownrname
capture rename H state
capture rename I county

//rename output variables
capture rename J gp_q_cons_ingots_basic
capture rename K gp_q_trans_ingots_basic
capture rename L gp_q_FS_ingots_basic
capture rename M gp_v_trans_ingots_basic
capture rename N gp_v_FS_ingots_basic
capture rename O gp_q_cons_ingots_acid
capture rename P gp_q_trans_ingots_acid
capture rename Q gp_q_FS_ingots_acid
capture rename R gp_v_trans_ingots_acid
capture rename S gp_v_FS_ingots_acid
capture rename T gp_q_cons_ingots_bessemer
capture rename U gp_q_trans_ingots_bessemer
capture rename V gp_q_FS_ingots_bessemer
capture rename W gp_v_trans_ingots_bessemer
capture rename X gp_v_FS_ingots_bessemer
capture rename Y gp_q_cons_ingots_electric
capture rename Z gp_q_trans_ingots_electric
capture rename AA gp_q_FS_ingots_electric
capture rename AB gp_v_trans_ingots_electric
capture rename AC gp_v_FS_ingots_electric
capture rename AD gp_q_cons_ingots_crucible
capture rename AE gp_q_trans_ingots_crucible
capture rename AF gp_q_FS_ingots_crucible
capture rename AG gp_v_trans_ingots_crucible
capture rename AH gp_v_FS_ingots_crucible
capture rename AI gp_q_cons_castings_basic
capture rename AJ gp_q_trans_castings_basic
capture rename AK gp_q_FS_castings_basic
capture rename AL gp_v_trans_castings_basic
capture rename AM gp_v_FS_castings_basic
capture rename AN gp_q_cons_castings_acid
capture rename AO gp_q_trans_castings_acid
capture rename AP gp_q_FS_castings_acid
capture rename AQ gp_v_trans_castings_acid
capture rename AR gp_v_FS_castings_acid
capture rename AS gp_q_cons_castings_bessemer
capture rename AT gp_q_trans_castings_bessemer
capture rename AU gp_q_FS_castings_bessemer
capture rename AV gp_v_cons_castings_bessemer
capture rename AW gp_v_FS_castings_bessemer
capture rename AX gp_q_cons_castings_electric
capture rename AY gp_q_trans_castings_electric
capture rename AZ gp_q_FS_castings_electric
capture rename BA gp_v_cons_castings_electric
capture rename BB gp_v_FS_castings_electric
capture rename BC gp_q_cons_castings_crucible
capture rename BD gp_q_trans_castings_crucible
capture rename BE gp_q_FS_castings_crucible
capture rename BF gp_v_cons_castings_crucible
capture rename BG gp_v_FS_castings_crucible
capture rename BH gp_q_cons_blooms
capture rename BI gp_q_trans_blooms
capture rename BJ gp_q_FS_blooms
capture rename BK gp_v_cons_blooms
capture rename BL gp_v_FS_blooms
capture rename BM gp_q_cons_rolled_blooms
capture rename BN gp_q_trans_rolled_blooms
capture rename BO gp_q_FS_rolled_blooms
capture rename BP gp_v_transed_rolled_blooms
capture rename BQ gp_v_FS_rolled_blooms
capture rename BR gp_q_cons_hammered_blooms
capture rename BS gp_q_trans_hammered_blooms
capture rename BT gp_q_FS_hammered_blooms
capture rename BU gp_v_cons_hammered_blooms
capture rename BV gp_v_FS_hammered_blooms
capture rename BW gp_q_cons_sheet_tp_bars
capture rename BX gp_q_trans_sheet_tp_bars
capture rename BY gp_q_FS_sheet_tp_bars
capture rename BZ gp_v_cons_sheet_tp_bars
capture rename CA gp_v_FS_sheet_tp_bars
capture rename CB gp_q_cons_muck_scrap
capture rename CC gp_q_trans_muck_scrap
capture rename CD gp_q_FS_muck_scrap
capture rename CE gp_v_cons_muck_scrap
capture rename CF gp_v_FS_muck_scrap
capture rename CG gp_q_cons_plates_thick_crucible
capture rename CH gp_q_trans_plates_thick_crucible
capture rename CI gp_q_FS_plates_thick_crucible
capture rename CJ gp_v_cons_plates_thick_crucible
capture rename CK gp_v_FS_plates_thick_crucible
capture rename CL gp_q_cons_plates_thick_saw
capture rename CM gp_q_trans_plates_thick_saw
capture rename CN gp_q_FS_plates_thick_saw
capture rename CO gp_v_cons_plates_thick_saw
capture rename CP gp_v_FS_plates_thick_saw
capture rename CQ gp_q_cons_plates_thick_boiler
capture rename CR gp_q_trans_plates_thick_boiler
capture rename CS gp_q_FS_plates_thick_boiler
capture rename CT gp_v_cons_plates_thick_boiler
capture rename CU gp_v_FS_plates_thick_boiler
capture rename CV gp_q_cons_plates_thin_autobody
capture rename CW gp_q_trans_plates_thin_autobody
capture rename CX gp_q_FS_plates_thin_autobody
capture rename CY gp_v_cons_plates_thin_autobody
capture rename CZ gp_v_FS_plates_thin_autobody
capture rename DA gp_q_cons_plates_thin_black
capture rename DB gp_q_trans_plates_thin_black
capture rename DC gp_q_FS_plates_thin_black
capture rename DD gp_v_cons_plates_thin_black
capture rename DE gp_v_FS_plates_thin_black
capture rename DF gp_q_cons_plates_thin_plain
capture rename DG gp_q_trans_plates_thin_plain
capture rename DH gp_q_FS_plates_thin_plain
capture rename DI gp_v_cons_plates_thin_plain
capture rename DJ gp_v_FS_plates_thin_plain
capture rename DK gp_q_cons_skelp
capture rename DL gp_q_trans_skelp
capture rename DM gp_q_FS_skelp
capture rename DN gp_v_cons_skelp
capture rename DO gp_v_FS_skelp
capture rename DP gp_q_cons_cotton_ties
capture rename DQ gp_q_trans_cotton_ties
capture rename DR gp_q_FS_cotton_ties
capture rename DS gp_v_cons_cotton_ties
capture rename DT gp_v_FS_cotton_ties
capture rename DU gp_q_cons_strips_black_hot_roll
capture rename DV gp_q_trans_strips_black_hot_roll
capture rename DW gp_q_FS_strips_black_hot_roll
capture rename DX gp_v_cons_strips_black_hot_roll
//missing some output variables in the original spreadsheet

save "$rootDir_dataBR/1929/1112/1112_1929_clean_B", replace