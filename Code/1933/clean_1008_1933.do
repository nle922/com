//Cleaning script for BR spreadsheet: 1008_1933. Generated by write_renamingFiles.py and ind_cols.txt, which has NLZ's renaming of BR variables.
//Note that variable `home_dir' is set outside the script and setup to be run from build_BR_legacy.do.
//If you want to run this file directly, change data_dir and globals referenced
//Globals referenced: $rootDir_sheets, $rootDir_dataBR, $rootDir_code

local data_dir = "$rootDir_sheets/1933/1008"
import excel "`data_dir'/100833A0.xls", allstring sheet("100833A0") clear

drop in 1 //this row has variable names
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename identifying information variables
capture rename A start
capture rename B record
capture drop if record==""
capture rename C fileno1
capture rename D fileno2
capture rename E tempid
capture rename F comment
capture rename G statenm
capture rename H cntynm
capture rename I citynm
capture rename J indnm
capture rename K formnm
capture rename L plntname
capture rename M ownrname
capture rename N incyn
capture rename O a004
capture rename P state
capture rename Q city
capture rename R county
capture rename S street
capture rename T othraddr
capture rename U incityyn
capture rename V othrcity
capture rename W sbsdryyn
capture rename X mthrinfo
capture rename Y nmchngyn
capture rename Z lnchngyn
capture rename AA owchngyn
capture rename AB as004
capture rename AC frmrinfo
capture rename AD products
capture rename AE mtlsusd1
capture rename AF mtlsusd2

//rename utilization variables
capture rename AG d001
capture rename AH d008
capture rename AI xtraln1
capture rename AJ xtraln2
capture rename AK xtraln3
capture rename AL xtraln4

//rename employment variables
capture rename AM empldate
capture rename AN e001t
capture rename AO e002t
capture rename AP e003ta
capture rename AQ e003tc
capture rename AR wagenm
capture rename AS total_sala
capture drop AT
capture rename AU wetotal
capture drop AV //column name: diff
capture rename AW wejan
capture rename AX wefeb
capture rename AY wemar
capture rename AZ weapr
capture rename BA wemay
capture rename BB wejun
capture rename BC wejul
capture rename BD weaug
capture rename BE wesep
capture rename BF weoct
capture rename BG wenov
capture rename BH wedec
capture rename BI nonwenm
capture rename BJ e002s
capture rename BK e003tas
capture rename BL e003tcs
capture rename BM e005s
capture drop BN
capture rename BO e009s
capture drop BP //column name: diff1

//rename costs of inputs variables
capture rename BQ f009
capture rename BR f004
capture rename BS f007
capture drop BT
capture drop BU //column name: diff2

//rename output variables
capture rename BV gp_q_plateglass
capture rename BW gp_q_plateglass_polished
capture rename BX gp_v_plateglass_polished
capture drop BY 
capture rename BZ gp_q_glass_laminated
capture rename CA gp_v_glass_laminated
capture drop CB 
capture rename CC gp_q_windowglass
capture rename CD gp_v_windowglass
capture drop CE 
capture rename CF gp_q_glass_obscured
capture rename CG gp_v_glass_obscured
capture drop CH 
capture rename CI gp_q_wireglass
capture rename CJ gp_v_wireglass_rough
capture drop CK 
capture rename CL gp_q_tablewareglass
capture rename CM gp_v_tablewareglass
capture drop CN 
capture rename CO gp_q_ovenwareglass
capture rename CP gp_v_ovenwareglass
capture drop CQ 
capture rename CR gp_q_tumbler_handmade_pressed
capture rename CS gp_v_tumbler_handmade_pressed
capture drop CT
capture rename CU gp_q_tumbler_handmade_blown
capture rename CV gp_v_tumbler_handmade_blown
capture drop CW 
capture rename CX gp_q_lenses_motor
capture rename CY gp_v_lenses_motor
capture drop CZ 
capture rename DA gp_q_other_lens
capture rename DB gp_v_other_lens
capture drop DC 
capture rename DD gp_q_lamp
capture rename DE gp_v_lamp
capture drop DF 
capture rename DG gp_q_lighting_chimney
capture rename DH gp_v_lighting_chimney
capture drop DI 
capture rename DJ gp_q_lantern_globe
capture rename DK gp_v_lantern_globe
capture drop DL 
capture rename DM gp_q_lighting_bulb
capture rename DN gp_v_lighting_bulb
capture rename DO 
capture rename DP gp_v_technicalglass_insulator
capture rename DQ gp_v_lighting_shade
capture rename DR gp_q_technicalglass_opal
capture rename DS gp_v_technicalglass_opal
capture drop DT 
capture rename DU gp_q_technicalglass_tubing
capture rename DV gp_v_technicalglass_tubing
capture drop DW gp_v_otherglass_pressed
capture drop DX //column name: price16

capture drop year
gen year =  1933
//rename "common" set of variables for labeling 
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending
tostring *, replace force

save "$rootDir_dataBR/1933/1008/1008_1933", replace
