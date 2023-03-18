//Cleaning script for BR spreadsheet: 1608_1931. Generated by write_renamingFiles.py and ind_cols.txt, which has NLZ's renaming of BR variables.
//Note that variable `home_dir' is set outside the script and setup to be run from build_BR_legacy.do.
//If you want to run this file directly, change data_dir and globals referenced.
//Globals referenced: $rootDir_sheets, $rootDir_dataLegacy, $rootDir_code

local data_dir = "$rootDir_sheets/1931/1608"
import excel "`data_dir'/160831A0.xls", allstring sheet("160831A0") clear

drop in 1 //this row has variable names
//Create obs_id
do "$rootDir_code/General/gen_obsID.do"

//rename identifying information variables
capture rename A start
capture rename B record
capture drop if record==""
capture replace record = lower(record)
capture rename C fileno1
capture rename D fileno2
capture rename E tempid
capture rename F comment
capture rename G statenm
capture rename H cntynm
capture rename I citynm
capture rename J big3
capture rename K nex2
capture rename L tencen
capture rename M indnm
capture rename N formnm
capture rename O plntname
capture rename P ownrname
capture rename Q incyn
capture rename R a004
capture rename S state
capture rename T city
capture rename U county
capture rename V street
capture rename W othraddr
capture rename X incityyn
capture rename Y othrcity
capture rename Z sbsdryyn
capture rename AA mthrinfo
capture rename AB nmchngyn
capture rename AC lnchngyn
capture rename AD owchngyn
capture rename AE as004
capture rename AF frmrinfo
capture rename AG products
capture rename AH mtlsusd1
capture rename AI mtlsusd2
capture rename AJ bgndt3
capture rename AK enddt3

//rename utilization variables
capture rename AL d001
capture rename AM d005
capture rename AN d006
capture drop AO

//rename employment variables
capture rename AP wetotal
capture drop AQ //column name: diff
capture rename AR wejanuary
capture rename AS wefebruary
capture rename AT wemarch
capture rename AU weapril
capture rename AV wemay
capture rename AW wejune
capture rename AX wejuly
capture rename AY weaugust
capture rename AZ weseptembe
capture rename BA weoctober
capture rename BB wenovember
capture rename BC wedecember
capture rename BD wages_paid

//rename some cost variables
capture rename BE f009
capture rename BF f005i
capture rename BG f004
capture drop BH
capture rename BI f008
capture drop BJ //column name: diff1

//rename output variables
capture rename BK gp_q_cigars
capture rename BL gp_v_cigars
capture rename BM gp_q_cigarettes
capture rename BN gp_v_cigarettes
capture rename BO gp_q_tobacco
capture rename BP gp_v_tobacco
capture rename BQ gp_q_snuff
capture rename BR gp_v_snuff
capture rename BS gp_s_general1
capture rename BT gp_q_general1
capture rename BU gp_v_general1
capture rename BV gp_s_general2
capture rename BW gp_q_general2
capture rename BX gp_v_general2
capture rename BY gp_s_general3
capture rename BZ gp_q_general3
capture rename CA gp_v_general3
capture rename CB gp_s_general4
capture rename CC gp_q_general4
capture rename CD gp_v_general4
capture rename CE ttlqty
capture rename CF total_output_value
//these are variables generated by BR 
capture drop CG-DX

capture drop year
capture gen year = 1931
//rename "common" set of variables for labeling
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistent appending
tostring *, replace force 

save "$rootDir_dataBR/1931/1608/1608_1931", replace
