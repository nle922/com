//Cleaning script for BR spreadsheet: 312_1933. Generated by write_renamingFiles.py and ind_cols.txt, which has NLZ's renaming of BR variables.
//Note that variable `home_dir' is set outside the script and setup to be run from build_BR_legacy.do.
//If you want to run this file directly, change data_dir and globals referenced
//Globals referenced: $rootDir_sheets, $rootDir_dataBR, $rootDir_code

local data_dir = "$rootDir_sheets/1933/312"
import excel "`data_dir'/031233A0.xls", allstring sheet("031233A0") clear

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
capture rename Y as001
capture rename Z as002
capture rename AA as003
capture rename AB as004
capture rename AC as005
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
capture rename AR 
capture rename AS e004t
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
capture rename BI e004s
capture rename BJ e002s
capture rename BK e003tas
capture rename BL e003tcs
capture rename BM e005s
capture drop BN
capture rename BO e009s
capture drop BP //column name: diff1

//rename cost of inputs variables
capture rename BQ f009
capture rename BR f004
capture rename BS f007
capture drop BT
capture drop BU //column name: diff2

//rename output variables
capture rename BV gp_s_general1
capture rename BW gp_q_general1
capture rename BX gp_v_general1
capture rename BY gp_s_general2
capture rename BZ gp_q_general2
capture rename CA gp_v_general2
capture rename CB gp_s_general3
capture rename CC gp_q_general3
capture rename CD gp_v_general3
capture rename CE gp_s_general4
capture rename CF gp_q_general4
capture rename CG gp_v_general4
capture rename CH gp_s_general5
capture rename CI gp_q_general5
capture rename CJ gp_v_general5
capture rename CK gp_s_general6
capture rename CL gp_q_general6
capture rename CM gp_v_general6
capture drop CN 
capture drop CO 
capture drop CP 
capture drop CQ 
capture rename CR total_manufactured_output
capture rename CS total_output_value


//not clear why these are being dropped (CZV I think they are blank on the spreadsheets)
capture drop CT-DX

capture drop year
gen year =  1933
//rename "common" set of variables for labeling 
do "$rootDir_code/General/basic_rename"
//tostring all variables for consistency
tostring *, replace force 

save "$rootDir_dataBR/1933/312/312_1933", replace

