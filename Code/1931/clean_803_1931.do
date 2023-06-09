//Cleaning script for BR spreadsheet: 803_1931. Generated by write_renamingFiles.py and ind_cols.txt, which has NLZ's renaming of BR variables.
//Note that variable `home_dir' is set outside the script and setup to be run from build_BR_legacy.do.
//If you want to run this file directly, change data_dir and globals referenced
//Globals referenced: $rootDir_sheets, $rootDir_dataBR

local data_dir = "$rootDir_sheets/1931/803"
import excel "`data_dir'/080331A0.xls", allstring sheet("080331A0") clear

drop in 1 //this row has variable names
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename identifying information variables
capture rename A start
capture rename B record
capture drop if record==""
replace record=lower(record)
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
capture rename Z as002
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
capture rename BA e005s
capture rename BB f009
capture rename BC f004
capture drop BD
capture rename BE f008
capture drop BF //column name: diff1

//rename output (and input) variables
capture rename BG gp_q_pneumatic_mv_casing_balloon
capture rename BH gp_v_pneumatic_mv_casing_balloon
capture rename BI gp_q_pneumatic_mv_casing_HP
capture rename BJ gp_v_pneumatic_mv_casing_HP
capture rename BK j_q_rubber_pneumatic_mv_casing
capture rename BL gp_q_pneumatic_mv_innerTube_balloon
capture rename BM gp_v_pneumatic_mv_innerTube_balloon
capture rename BN gp_q_pneumatic_mv_innerTube_HP
capture rename BO gp_v_pneumatic_mv_innerTube_HP
capture rename BP j_q_rubber_pneumatic_mv_innerTube
capture rename BQ gp_q_pneumatic_motorCycle_casing
capture rename BR gp_v_pneumatic_motorCycle_casing
capture rename BS gp_q_pneumatic_motorCycle_innerTube
capture rename BT gp_v_pneumatic_motorCycle_innerTube
capture rename BU j_q_rubber_motorCycle
capture rename BV gp_q_bicycle_singleTube
capture rename BW gp_v_bicycle_singleTube
capture rename BX gp_q_bicycle_casing
capture rename BY gp_v_bicycle_casing
capture rename BZ gp_q_bicycle_innerTube
capture rename CA gp_v_bicycle_innerTube
capture rename CB j_q_rubber_bicycle
capture rename CC gp_v_rubber_otherCasing
capture rename CD rub4 //don't know what this is supposed to be
capture rename CE gp_q_solidRubber_truck
capture rename CF gp_v_solidRubber_truck
capture rename CG gp_q_solidRubber_tractor
capture rename CH gp_v_solidRubber_tractor
capture rename CI gp_v_solidRubber_other
capture rename CJ j_q_rubber_solid_cushion
capture rename CK gp_q_rubber_canvas
capture rename CL gp_v_rubber_canvas
capture rename CM gp_q_rubber_boot
capture rename CN gp_v_rubber_boot
capture rename CO gp_q_lumbermen_boot
capture rename CP gp_v_lumbermen_boot
capture rename CQ gp_q_artics_boot
capture rename CR gp_v_artics_boot
capture rename CS gp_q_gaiter
capture rename CT gp_v_gaiter
capture rename CU gp_q_other_shoe
capture rename CV gp_v_other_shoe
capture rename CW j_q_rubber_shoe
capture rename CX gp_q_heel
capture rename CY gp_v_heel
capture rename CZ gp_q_soles
capture rename DA gp_v_soles
capture rename DB gp_q_soling_strip
capture rename DC gp_v_soling_strip
capture rename DD j_q_rubber_soles
capture rename DE gp_q_rubber_auto
capture rename DF gp_v_rubber_auto
capture rename DG gp_q_rubber_raincoat
capture rename DH gp_v_rubber_raincoat
capture rename DI gp_q_rubber_hospital
capture rename DJ gp_v_rubber_hospital
capture rename DK gp_s_otherRubber1
capture rename DL gp_q_otherRubber1
capture rename DM gp_v_otherRubber1
capture rename DN gp_s_otherRubber2
capture rename DO gp_q_otherRubber2
capture rename DP gp_v_otherRubber2
capture rename DQ gp_q_rubber_raincoat_finished
capture rename DR gp_v_rubber_raincoat_finished
capture rename DS gp_q_rubber_aprons
capture rename DT gp_v_rubber_aprons
capture rename DU gp_q_belting_transmission
capture rename DV gp_v_belting_transmission
capture rename DW gp_q_belting_conveyor
capture rename DX gp_v_belting_conveyor

capture drop year
gen year = 1931
//rename "common" set of variables
do "$rootDir_code/General/basic_rename"

//tostring all variables for consistent appending later
tostring *, replace force

save "$rootDir_dataBR/1931/803/803_1931", replace
