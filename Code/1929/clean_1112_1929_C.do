//Cleaning script for BR "B" spreadsheet: 1112_1929. Generated by write_renamingFiles_B.py and ind_cols_B.txt, which has NLZ's renaming of BR variables.
//Note that variable `home_dir' is set outside the script and setup to be run from build_BR_legacy.do.
//If you want to run this file directly, change data_dir and globals $rootDir_sheetsLegacy, $dir_cleaning .
//Globals referenced: $rootDir_sheets, $rootDir_dataBR

local data_dir = "$rootDir_sheets/1929/1112"
import excel "`data_dir'/111229C0.xls", allstring sheet("111229C0") clear

drop in 1 //this row has variable names

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"
replace obs_id = obs_id + "C"

capture drop A //Column name in spreadsheet: start
capture rename B record
capture drop if record==""
//don't need these because will merge on record with A sheet
capture drop C //plntname
capture drop D //ownrname
capture drop E //state
capture drop F //county

//rename engine and turbine variables
capture rename G total_hp
capture rename H hp001n
capture rename I hp001h
capture rename J hp002n
capture rename K hp002h
capture rename L hp003n
capture rename M hp003h
capture rename N hp004n
capture rename O hp004h
capture rename P hp005n
capture rename Q hp005h

//NLZ: Not sure why these variables are being dropped
capture drop R //Column name in spreadsheet: diff1
capture drop S 
capture drop T 
capture drop U 
capture drop V 
capture rename W he001n
capture rename X he001h
capture rename Y he002n
capture rename Z he002h
capture rename AA he003n
capture rename AB he003h
capture drop AC

//rename fuel variables
capture rename AD ff001q
capture rename AE ff001v
capture rename AF ff002q
capture rename AG ff002v
capture rename AH ff003q
capture rename AI ff003v
capture rename AJ ff004q
capture rename AK ff004v
capture rename AL ff005q
capture rename AM ff005v
capture rename AN ff006q
capture rename AO ff006v
capture rename AP ff007q
capture rename AQ ff007v
capture drop AR 
capture rename AS ff000c
capture drop AT
capture rename AU fe001k
capture rename AV fe002k
capture rename AW fe002c
capture drop AX //seem like generated by BR for data checking purposes
capture drop AY //seem like generated by BR for data checking purposes
capture drop AZ //seem like generated by BR for data checking purposes
capture drop BA //seem like generated by BR for data checking purposes

//rename input variables
capture rename BB j_q_pig_iron 
capture rename BC j_v_pig_iron
capture rename BD j_q_scrap_iron
capture rename BE j_v_scrap_iron
capture rename BF j_q_steel_ingot
capture rename BG j_v_steel_ingot
capture rename BH j_q_zinc
capture rename BI j_v_zinc
capture rename BJ j_q_nickel
capture rename BK j_v_nickel
capture rename BL j_q_aluminum
capture rename BM j_v_aluminum
capture rename BN j_q_copper
capture rename BO j_v_copper
capture rename BP j_q_pig_tin
capture rename BQ j_v_pig_tin
capture rename BR j_q_ferroalloy
capture rename BS j_v_ferroalloy

//rename capital variables
capture rename BT z_manganeseContent
capture rename BU z_chromiumContent
capture rename BV z_tungstenContent
capture rename BW z_vanadiumContent
capture rename BX z_siliconContent
capture rename BY z_molybdenumContent
capture rename BZ z_production_basic_oh_ingot
capture rename CA z_production_basic_oh_casting
capture rename CB z_production_acid_oh_ingot
capture rename CC z_production_acid_casting
capture rename CD z_production_bessemer_ingot
capture rename CE z_production_bessemer_casting
capture rename CF z_production_crucible_ingot
capture rename CG z_production_crucible_casting
capture rename CH z_production_structural
capture rename CI z_production_plates
capture rename CJ z_production_bars
capture rename CK z_production_sheets
capture rename CL z_production_rails
capture rename CM z_production_armor_plating
capture rename CN z_production_rods
capture rename CO z_production_other
capture rename CP z_furnace_basic_number
capture rename CQ z_furnace_basic_capacity
capture drop CR //seem like generated by BR for data checking purposes
capture rename CS z_furnace_acid_number
capture rename CT z_furnace_acid_capacity
capture drop CU //seem like generated by BR for data checking purposes
capture rename CV z_converter_kind
capture rename CW z_converter_number 
capture rename CX z_converter_capacity
capture drop CY //seem like generated by BR for data checking purposes
capture rename CZ z_furnace_crucible_number
capture rename DA z_furnace_crucible_pots
capture rename DB z_furnace_crucible_capacity
capture drop DC  //seem like generated by BR for data checking purposes
capture rename DD z_furnace_eletric_kind
capture rename DE z_furnace_electric_number
capture rename DF z_furnace_electric_capacity
capture drop DG //seem like generated by BR for data checking purposes
capture rename DH z_furnace_metal_mixer_number
capture rename DI z_furnace_metal_mixer_capacity
capture drop DJ //seem like generated by BR for data checking purposes

//rename distribution variables
capture rename DK k001
capture rename DL k002
capture rename DM k003
capture rename DN k004
capture rename DO k005
capture rename DP k006
capture rename DQ k007
capture drop DR //seem like generated by BR for data checking purposes
capture drop DS //seem like generated by BR for data checking purposes
capture rename DT k008
capture drop DU //seem like generated by BR for data checking purposes
capture drop DV //seem like generated by BR for data checking purposes
capture drop DW //seem like generated by BR for data checking purposes
capture drop DX //seem like generated by BR for data checking purposes

save "$rootDir_dataBR/1929/1112/1112_1929_clean_C", replace
