//Cleaning script for BR spreadsheet: 1008_1929. Generated by write_renamingFiles.py and ind_cols.txt, which has NLZ's renaming of BR variables.
//Note that variable `home_dir' is set outside the script and setup to be run from build_BR_legacy.do.
//If you want to run this file directly, change data_dir and globals $rootDir_sheetsLegacy, $rootDir_code .
//Globals referenced: $rootDir_sheets, $rootDir_dataBR

local data_dir = "$rootDir_sheets/1929/1008"
import excel "`data_dir'/100829A1_PDSPL.xls", allstring sheet("100829A1") clear

drop in 1/2 //first row is all blank and second row has variable names

//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename identifying information variables
capture rename A start
capture rename B record

//fix typo in estabIDs
replace record = lower(record)
replace record = "me0229_b" if K=="Pedersen Glass Company"
capture drop if record==""

capture rename C fileno1
capture rename D fileno2
capture rename E tempid
capture rename F comment
capture rename G statenm
capture rename H cntynm
capture rename I indnm
capture rename J formnm
capture rename K plntname
capture rename L ownrname
capture rename M incyn
capture rename N state
capture rename O city
capture rename P county
capture rename Q street
capture rename R ag008
capture rename S incityyn
capture rename T othrcity
capture rename U nwplntyn
capture rename V nmchngyn
capture rename W lnchngyn
capture rename X owchngyn
capture rename Y as004
capture rename Z frmrinfo
capture rename AA sbsdryyn
capture rename AB mthrinfo
capture rename AC products
capture rename AD mtlsusd1
capture rename AE mtlsusd2
capture rename AF bgndt3
capture rename AG enddt3

//rename utilization variables
capture rename AH d001
capture rename AI d002
capture rename AJ d003
capture rename AK d004
capture rename AL d005
capture rename AM d006
capture rename AN d007
capture rename AO pttminf2

//rename employment variables
capture rename AP empldate
capture rename AQ e001m
capture rename AR e001f
capture rename AS e002m
capture rename AT e002f
capture rename AU e003m
capture rename AV e003f
capture drop AW
capture drop AX
capture rename AY mnnwenm
capture rename AZ fnnwenm
capture drop BA //column name: diff
capture drop BB //column name: diff1
capture rename BC nonwenm
capture rename BD e005m
capture rename BE e005f
capture rename BF wage_earne
capture drop BG
capture rename BH wetotal
capture drop BI //column name: diff2
capture rename BJ wejannm
capture rename BK wefebnm
capture rename BL wemarnm
capture rename BM weaprnm
capture rename BN wemaynm
capture rename BO wejunnm
capture rename BP wejulnm
capture rename BQ weaugnm
capture rename BR wesepnm
capture rename BS weoctnm
capture rename BT wenovnm
capture rename BU wedecnm
capture rename BV total_sala
capture rename BW e002s
capture rename BX e003s
capture rename BY e005s
capture drop BZ
capture rename CA e009s
capture drop CB //column name: diff3
capture rename CC mtlusdyn
capture rename CD mtlpcdyn

//make the ff00up variable consistent with ours
gen f00up = ""
replace f00up = "Used" if mtlusdyn == "Yes"
replace f00up = "Purchased" if mtlpcdyn == "Yes"
drop mtlusdyn mtlpcdyn

//rename fuel variables
capture rename CE f001
capture rename CF f002
capture rename CG f003
capture drop CH
capture drop CI
capture rename CJ f009
capture drop CK //column name: diff4

//rename output variables
capture rename CL gp_q_plateglass
capture rename CM gp_q_plateglass_rough
capture rename CN gp_v_plateglass_rough
capture drop CO
capture rename CP gp_q_plateglass_polished
capture rename CQ gp_v_plateglass_polished
capture drop CR
capture rename CS gp_q_glass_window
capture rename CT gp_v_glass_window
capture drop CU
capture rename CV gp_q_glass_obscured
capture rename CW gp_v_glass_obscured
capture drop CX
capture rename CY gp_q_wireglass_rough
capture rename CZ gp_v_wireglass_rough
capture drop DA
capture rename DB gp_q_wireglass_polished
capture rename DC gp_v_wireglass_polished
capture drop DD
capture rename DE gp_v_buildingglass_other
capture rename DF gp_q_spectacleglass
capture rename DG gp_v_spectacleglass
capture drop DH
capture rename DI gp_q_tablewareglass
capture rename DJ gp_v_tablewareglass
capture drop DK
capture rename DL gp_q_ovenwareglass
capture rename DM gp_v_ovenwareglass
capture drop DN
capture rename DO gp_q_pressedtumbler
capture rename DP gp_v_pressedtumbler
capture drop DQ
capture rename DR gp_q_tumbler_handmade_blown
capture rename DS gp_v_tumbler_handmade_blown
capture drop DT
capture rename DU gp_q_lenses_motor
capture rename DV gp_v_lenses_motor
capture drop DW
capture drop DX
capture rename DY gp_q_other_lens
capture rename DZ gp_v_other_lens
capture rename EA gp_q_lamp
capture rename EB gp_v_lamp
capture rename EC gp_q_lighting_chimney
capture rename ED gp_v_lighting_chimney
capture rename EE gp_q_lantern_globe
capture rename EF gp_v_lantern_globe
capture rename EG gp_q_lighting_bulb
capture rename EH gp_v_lighting_bulb
capture rename EI gp_v_technicalglass_insulator
capture rename EJ gp_v_lighting_shade
capture rename EK gp_q_technicalglass_opal
capture rename EL gp_v_technicalglass_opal
capture rename EM gp_q_glass_cutware
capture rename EN gp_v_glass_cutware
capture rename EO gp_q_glass_decorated
capture rename EP gp_v_glass_decorated
capture rename EQ gp_q_technicalglass_tubing
capture rename ER gp_v_technicalglass_tubing
capture rename ES gp_q_technicalglass_other
capture rename ET gp_v_technicalglass_other
capture rename EU gp_q_milkbottles
capture rename EV gp_v_milkbottles
capture rename EW gp_q_container_narrowneck
capture rename EX gp_v_container_narrowneck
capture rename EY gp_q_container_widemouth
capture rename EZ gp_v_container_widemouth
capture rename FA gp_q_container_pressed
capture rename FB gp_v_container_pressed
capture rename FC gp_q_container_fruitjar
capture rename FD gp_v_container_fruitjar
capture rename FE gp_q_container_pressure
capture rename FF gp_v_container_pressure
capture rename FG gp_q_container_nonpressure
capture rename FH gp_v_container_nonpressure
capture rename FI gp_q_container_medicinal
capture rename FJ gp_v_container_medicinal
capture rename FK gp_q_container_generalpurpose
capture rename FL gp_v_container_generalpurpose
capture rename FM gp_v_allother

save "$rootDir_dataBR/1929/1008/1008_1929", replace

//now clean B spreadsheets
do "$rootDir_code/1929/clean_1008_1929_B"

//merge with existing dataset
use "$rootDir_dataBR/1929/1008/1008_1929", clear
merge 1:1 record using "$rootDir_dataBR/1929/1008/1008_1929_clean_B"
//this should really be a 1-1 mapping
drop _merge

capture drop year
gen year = 1929
//this will translate to CK convention if necessary
do "$rootDir_code/General/basic_rename.do"
//tostring all variables to make sure consistent appending later
tostring *, replace force

save "$rootDir_dataBR/1929/1008/1008_1929", replace
