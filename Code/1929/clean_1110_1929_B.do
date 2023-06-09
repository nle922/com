//Cleaning script for BR "B" spreadsheet: 1110_1929. Generated by write_renamingFiles_B.py and ind_cols_B.txt, which has NLZ's renaming of BR variables.
//Note that variable `home_dir' is set outside the script and setup to be run from build_BR_legacy.do.
//If you want to run this file directly, change data_dir and globals $rootDir_sheetsLegacy, $dir_cleaning .
//Globals referenced: $rootDir_sheets, $rootDir_dataBR

local data_dir = "$rootDir_sheets/1929/1110"
import excel "`data_dir'/111029B0.xls", allstring sheet("111029B0") clear

drop in 1 //this row has variable names

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"
replace obs_id = obs_id + "B"


capture drop A //Column name in spreadsheet: start
capture rename B record
capture drop if record==""
capture drop C //Column name in spreadsheet: id
capture drop D plntname
capture drop E ownrname
capture drop F state
capture rename G county

//rename engine and turbine variables
capture rename H tothp
capture rename I tothp2
capture rename J hp001n
capture rename K hp001h
capture rename L hp002n
capture rename M hp002h
capture rename N hp003n
capture rename O hp003h
capture rename P hp004n
capture rename Q hp004h
capture rename R totalnm
capture rename S totalhp
capture drop T //Column name in spreadsheet: checknm
capture drop U //Column name in spreadsheet: diff
capture drop V //Column name in spreadsheet: checkhp
capture drop W //Column name in spreadsheet: diff1

//rename fuel variables
capture rename X abovestndb
capture rename Y stndbyhp
capture rename Z he001n
capture rename AA he001h
capture rename AB he002n
capture rename AC he002h
capture rename AD he003h
capture rename AE he003n
capture rename AF stndbygen
capture rename AG stndbykw
capture rename AH ff001q
capture rename AI ff001v
capture rename AJ ff002q
capture rename AK ff002v
capture rename AL ff003q
capture rename AM ff003v
capture rename AN ff004q
capture rename AO ff004v
capture rename AP ff005q
capture rename AQ ff005v
capture rename AR ff006q
capture rename AS ff006v
capture rename AT ff007q
capture rename AU ff007v
capture drop AV 
capture rename AW ff000c
capture drop AX //Column name in spreadsheet: diff2
capture rename AY fe001k
capture rename AZ fe002k
capture rename BA fe002c

//rename input variables
capture rename BB j_q_iron_ore
capture drop BC
capture rename BD j_v_iron_ore
capture rename BE j_q_coke
capture drop BF
capture rename BG j_v_coke
capture rename BH j_q_limestone
capture drop BI
capture rename BJ j_v_limestone
capture rename BK j_q_dolomite
capture drop BL
capture rename BM j_v_dolomite
capture rename BN j_q_scrap_iron_steel
capture rename BP j_v_scrap_iron_steel
capture drop BQ 
capture drop BR //Column name in spreadsheet: check
capture drop BS //Column name in spreadsheet: diff3

//rename capital variables
capture rename BT z_furnace_completed
capture rename BU z_furnace_fuel1
capture rename BV z_furnace_fuel2
capture rename BW z_furnace_fuel3
capture rename BX z_furnace_fuel4
capture rename BY z_furnace_fuel_extra
capture rename BZ z_furnace_capacity1
capture rename CA z_furnace_capacity2
capture rename CB z_furnace_capacity3
capture rename CC z_furnace_capacity4
capture rename CD z_furnace_capacity5
capture rename CE z_furnace_capacity6
capture rename CF z_furnace_capacity7
capture rename CG z_furnace_capacity8
capture rename CH z_furnace_capacity9
capture rename CI z_furnace_capacity_extra
capture rename CJ z_furnace_volume1
capture rename CK z_furnace_volume2
capture rename CL z_furnace_volume3
capture rename CM z_furnace_volume4
capture rename CN z_furnace_volume5
capture rename CO z_furnace_volume6
capture rename CP z_furnace_volume7
capture rename CQ z_furnace_volume8
capture rename CR z_furnace_volume_extra
capture rename CS z_furnace_active_fuel1
capture rename CT z_furnace_active_number1
capture rename CU z_furnace_active_capacity1
capture drop CV //Column name in spreadsheet: totact
capture rename CW z_furnace_active_fuel2
capture rename CX z_furnace_active_number2
capture rename CY z_furnace_active_capacity2
capture drop CZ //Column name in spreadsheet: acact
capture rename DA z_furnace_active_fuel3
capture rename DB z_furnace_active_number3
capture rename DC DB z_furnace_active_capacity3
capture drop DD //Column name in spreadsheet:dce4
capture drop DE //Column name in spreadsheet:dce5
capture drop DF //Column name in spreadsheet:dce6
capture drop DG //Column name in spreadsheet: xtraact
capture rename DH z_furnace_idle_fuel
capture rename DI z_furnace_idle_number
capture rename DJ z_furnace_idle_capacity
capture drop DK//Column name in spreadsheet:  xtraidle
capture rename DL z_furnace_banked_fuel
capture rename DM z_furnace_banked_number
capture rename DN z_furnace_banked_capacity
capture drop DO //Column name in spreadsheet: xtrabnk
capture rename DP z_furnace_new_fuel
capture rename DQ z_furnace_new_number
capture rename DR z_furnace_new_capacity
capture drop DS //Column name in spreadsheet: xtranew
capture rename DT z_furnace_construction_fuel
capture rename DU z_furnace_construction_number
capture rename DV z_furnace_construction_capacity
capture rename DW xtracons
capture rename DX z_furnace_abandoned_fuel
//missing a few variables at the end here


save "$rootDir_dataBR/1929/1110/1110_1929_clean_B", replace
