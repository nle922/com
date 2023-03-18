//Cleaning script for BR spreadsheet: 1008_1931. Generated by write_renamingFiles.py and ind_cols.txt, which has NLZ's renaming of BR variables.
//Note that variable `home_dir' is set outside the script and setup to be run from build_BR_legacy.do.
//If you want to run this file directly, change data_dir and globals referenced
//Globals referenced: $rootDir_sheets, $rootDir_dataBR, $rootDir_code

local data_dir = "$rootDir_sheets/1931/1008"
import excel "`data_dir'/100831A0.xls", allstring sheet("100831A0") clear

drop in 1 //this row has variable names in it
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename identifying information variables
capture rename A start
capture rename B record
capture drop if record==""
capture replace record=lower(record)
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
capture rename AG bgndt3
capture rename AH enddt3

//rename utilization variables
capture rename AI d001
capture rename AJ d005
capture rename AK d006
capture drop AL

//rename employment variables
capture rename AM wetotal
capture drop AN //column name: diff
capture rename AO wejanuary
capture rename AP wefebruary
capture rename AQ wemarch
capture rename AR weapril
capture rename AS wemay
capture rename AT wejune
capture rename AU wejuly
capture rename AV weaugust
capture rename AW weseptembe
capture rename AX weoctober
capture rename AY wenovember
capture rename AZ wedecember
capture drop BA
capture rename BB e005s
capture rename BC f009
capture rename BD f004
capture drop BE
capture rename BF f008
capture drop BG //column name: diff1

//rename output variables. Ones being dropped are temp sums created by BR
capture rename BH gp_q_plateglass
capture rename BI gp_q_plateglass_rough
capture rename BJ gp_v_plateglass_rough
capture drop BK
capture rename BL gp_q_plateglass_polished
capture rename BM gp_v_plateglass_polished
capture drop BN
capture rename BO gp_q_glass_laminated
capture rename BP gp_v_glass_laminated
capture drop BQ 
capture rename BR gp_q_glass_window
capture rename BS gp_v_glass_window
capture drop BT
capture rename BU gp_q_glass_obscured
capture rename BV gp_v_glass_obscured
capture drop BW 
capture rename BX gp_q_wireglass_rough
capture rename BY gp_v_wireglass_rough
capture drop BZ 
capture rename CA gp_q_wireglass_polished
capture rename CB gp_v_wireglass_polished
capture drop CC 
capture rename CD gp_v_buildingglass_other
capture rename CE gp_q_spectacleglass
capture rename CF gp_v_spectacleglass
capture drop CG 
capture rename CH gp_q_tablewareglass
capture rename CI gp_v_tablewareglass
capture drop CJ 
capture rename CK gp_q_ovenwareglass
capture rename CL gp_v_ovenwareglass
capture drop CM 
capture rename CN gp_q_pressedtumbler
capture rename CO gp_v_pressedtumbler
capture drop CP 
capture rename CQ gp_q_blowntumbler
capture rename CR gp_v_blowntumbler
capture drop CS 
capture rename CT gp_q_lenses_motor
capture rename CU gp_v_lenses_motor
capture drop CV 
capture rename CW gp_s_other_lens
capture rename CX gp_q_other_lens
capture rename CY gp_v_other_lens
capture drop CZ 
capture rename DA gp_q_lamp
capture rename DB gp_v_lamp
capture drop DC 
capture rename DD gp_q_lighting_chimney
capture rename DE gp_v_lighting_chimney
capture drop DF
capture rename DG gp_q_lantern_globe
capture rename DH gp_v_lantern_globe
capture drop DI p
capture rename DJ gp_q_lighting_bulb
capture rename DK gp_v_lighting_bulb
capture drop DL 
capture rename DM gp_v_technicalglass_insulator
capture rename DN gp_v_lighting_shade
capture rename DO gp_q_technicalglass_opal
capture rename DP gp_v_technicalglass_opal
capture drop DQ
capture rename DR gp_q_glass_cutware
capture rename DS gp_v_glass_cutware
capture drop DT
capture  rename DU gp_q_glass_decorated
capture rename DV gp_v_glass_decorated
capture drop DW
capture rename DX gp_q_technicalglass_tubing

capture drop year
gen year = 1931
//rename "common" set of variables for labeling 
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending later
tostring *, replace

save "$rootDir_dataBR/1931/1008/1008_1931", replace
